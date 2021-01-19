class Wine < ApplicationRecord
  has_many :grape_wines, dependent: :destroy
  has_many :grapes, through: :grape_wines
end
