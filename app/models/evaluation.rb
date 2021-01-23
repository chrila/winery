class Evaluation < ApplicationRecord
  belongs_to :wine

  has_many :evaluation_sommeliers
  has_many :sommeliers, through: :evaluation_sommeliers

  accepts_nested_attributes_for :evaluation_sommeliers, allow_destroy: true
end
