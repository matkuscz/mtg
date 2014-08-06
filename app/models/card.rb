class Card < ActiveRecord::Base
  has_many :players
  has_many :decks
end
