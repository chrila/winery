class Evaluation < ApplicationRecord
  belongs_to :wine
  has_and_belongs_to_many :sommeliers
end
