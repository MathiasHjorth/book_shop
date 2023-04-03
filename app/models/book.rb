class Book < ApplicationRecord

  # book has one author connected to it
  belongs_to :author

  has_and_belongs_to_many :categories

  validates :title, presence: true, length: {minimum: 1}
  validates :author_id, presence: true


end
