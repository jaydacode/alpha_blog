#creating this model, rails automatically gives us getters and setters for each attr in the table.
class Article < ActiveRecord::Base
  
  validates :title, presence: true, length: { minimum: 3, maximum: 50 }
  validates :description, presence: true, length: { minimum: 10, maximum: 300 }
  
end