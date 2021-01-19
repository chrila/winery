class GrapeWine < ApplicationRecord
  belongs_to :wine
  belongs_to :grape
end
