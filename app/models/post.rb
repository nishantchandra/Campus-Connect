class Post < ActiveRecord::Base
   validates :title, :university, presence: true
   validates :body, presence: true, length: { maximum: 200 }
   has_many :comments
end
