
class Post < ActiveRecord::Base
  validates :title, presence: true
<<<<<<< HEAD
  validates :content, length: { minimum: 100 }
  validates :category, inclusion: { in: %w(Fiction Non-Fiction) }
=======
  validates :category, inclusion: { in: %w(Fiction Non-Fiction) }
  validate :is_clickbait?

>>>>>>> 71191312b12e267be912ecacb14993b19f4a4d38
end
