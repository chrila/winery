class Sommelier < ApplicationRecord
  has_and_belongs_to_many :evaluations
  has_many :journal_sommeliers
end
