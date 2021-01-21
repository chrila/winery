class Wine < ApplicationRecord
  has_many :grape_wines, dependent: :destroy
  has_many :grapes, through: :grape_wines

  validates_presence_of :name

  accepts_nested_attributes_for :grape_wines, allow_destroy: true

  before_save :check_percentages

  def check_percentages
    if grape_wines.map(&:percentage).sum != 100
      errors.add("sum of percentages has to be 100")
      throw :abort
    end
  end
end
