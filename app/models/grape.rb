class Grape < ApplicationRecord
  has_many :grape_wines, dependent: :destroy
  has_many :wines, through: :grape_wines
end
