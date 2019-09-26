class Micropost < ApplicationRecord
    belongs_to :user
    has_many :seen_posts, dependent: :destroy
    
    validates :content, length: { maximum: 140, too_long: "%{count} characters is the maximum allowed. "}
    validates :time_posted, numericality: { only_integer: true }

end
