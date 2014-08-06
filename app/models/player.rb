class Player < ActiveRecord::Base
  has_many :decks

  validates :name, presence: true, uniqueness: true, length: { minimum: 3 }
  validates :email, presence: true, uniqueness: true
  validates_format_of :email, :with => /\A[^@]+@([^@\.]+\.)+[^@\.]+\z/
end
