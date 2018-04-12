class Micropost < ApplicationRecord
  belongs_to :t_user
  validates :content, length: { maximum: 140 },
            presence: true
end
