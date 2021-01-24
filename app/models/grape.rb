class Grape < ApplicationRecord
  has_many :grape_wines, dependent: :destroy
  has_many :wines, through: :grape_wines

  validates :name, presence: true, uniqueness: true

  scope :ordered, -> { order(:name) }

  def to_s
    name
  end
end
