class Comments < ActiveRecord::Base
  validates :title, :body, :posts_id, presence: true
  belongs_to :post
end
