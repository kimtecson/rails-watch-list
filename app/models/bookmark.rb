class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list
  validates :movie, uniqueness: { scope: :list }
  validates :comment, length: { minimum: 7 }

  # comment cannot be shorter than 6 characters (FAILED - 1)
  # belongs to a movie (FAILED - 2)
  # belongs to an list (FAILED - 3)
  # movie cannot be blank (FAILED - 4)
  # list cannot be blank (FAILED - 5)
  # is unique for a given movie/list couple (FAILED - 6)
end
