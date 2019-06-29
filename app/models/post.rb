class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :content, lenght: { minimum: 50 }
end
