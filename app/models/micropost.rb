class Micropost < ApplicationRecord
    belongs_to :user

    validates :content, length: { maximum: 1000, too_long: "%{count} characters is the maximum aloud. "}
end
