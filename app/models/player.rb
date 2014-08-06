class Player < ActiveRecord::Base
  has_many :decks

  validates :name, presence: true, uniqueness: true
end
