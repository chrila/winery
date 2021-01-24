class Wine < ApplicationRecord
  has_many :grape_wines, dependent: :destroy
  has_many :grapes, through: :grape_wines
  has_many :evaluations

  validates_presence_of :name

  accepts_nested_attributes_for :grape_wines, allow_destroy: true
  accepts_nested_attributes_for :evaluations, allow_destroy: true

  before_save :check_percentages

  def check_percentages
    if grape_wines.count > 0
      if grape_wines.map(&:percentage).sum != 100
        errors.add(:base, "sum of percentages has to be 100")
        throw :abort
      end
    end
  end
end
