class Author < ApplicationRecord

  #author has one or more instances of books related to it:
  has_many :books

end
