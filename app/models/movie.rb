class Movie < ApplicationRecord
  has_many :bookmarks
  has_many :lists, through: :bookmark
  validates :title, uniqueness: true, presence: true
  validates :overview, presence: true
end
