class Sommelier < ApplicationRecord
  has_many :evaluation_sommeliers
  has_many :evaluations, through: :evaluation_sommeliers
  has_many :journal_sommeliers

  validates_presence_of :name, :age, :nationality

  accepts_nested_attributes_for :journal_sommeliers, allow_destroy: true

  scope :ordered, -> { order(:age) }

  def to_s
    name
  end
end
