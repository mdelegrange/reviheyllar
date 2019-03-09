class Answer < ApplicationRecord
  validates :enigma, uniqueness: true
end
