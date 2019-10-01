class Micropost < ApplicationRecord
    belongs_to :user
    has_many :seen_posts, dependent: :destroy
    before_save :set_expiration_date

    
    validates :content, length: { maximum: 140, too_long: "%{count} characters is the maximum allowed. "}
    validates :time_posted, numericality: { only_integer: true }

    def self.feed_posts(user)
        self.where("id NOT IN (SELECT micropost_id FROM seen_posts WHERE user_id = ?)", user)
    end
    
    def set_expiration_date
        self.expiration_date = Time.zone.now + self.time_posted.minutes
    end
end
