class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :content, lenght: { minimum: 100 }
end
