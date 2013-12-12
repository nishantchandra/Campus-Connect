class Post < ActiveRecord::Base
   validates :title, :email, presence: true
   validates :body, presence: true, length: { maximum: 200 }
   has_many :comments
end
