class Quote < ApplicationRecord
  #must have name in order to be valid
  validates :name, presence: true
end
