class Grape < ApplicationRecord
  has_many :grape_wines, dependent: :destroy
  has_many :wines, through: :grape_wines

  validates_presence_of :name

  scope :ordered, -> { order(:name) }

  def to_s
    name
  end
end
