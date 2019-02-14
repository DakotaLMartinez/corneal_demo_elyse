class Book < ActiveRecord::Base
  validates :title, :author_name, presence: true
end
