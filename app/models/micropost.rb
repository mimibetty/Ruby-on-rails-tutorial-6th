class Micropost < ApplicationRecord
  belongs_to :user
  has_one_attached :image

  default_scope -> { order(created_at: :desc) }
  validates :user_id, presence: true
  validates :content, presence: true, length: {maximum: 140}
  validates :image,
            content_type: { in: %w[image/jpeg image/gif image/png],
                            message: 'must be a valid image format' },
            size: { less_than: 5.megabytes,
                    message: 'should be less than 5MB' }

  scope :can_view, ->(user_id) {
    following_ids = "SELECT followed_id FROM relationships
                      WHERE follower_id = :user_id"
    where("user_id IN (#{following_ids})
            OR user_id = :user_id", user_id: user_id)
  }
end
