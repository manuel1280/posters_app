class Micropost < ApplicationRecord
    belongs_to :user
    has_many :post_whatcheds

    validates :content, length: { maximum: 140, too_long: "%{count} characters is the maximum allowed. "}
end
