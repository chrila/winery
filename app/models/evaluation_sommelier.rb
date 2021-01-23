class EvaluationSommelier < ApplicationRecord
  belongs_to :evaluation
  belongs_to :sommelier

  accepts_nested_attributes_for :sommelier, allow_destroy: true
end
