class GrapeWine < ApplicationRecord
  belongs_to :wine
  belongs_to :grape
  accepts_nested_attributes_for :grape

  validates_presence_of :percentage

  scope :ordered, -> { joins(:grape).order('grapes.name') }

  def to_s
    "#{grape} (#{percentage}%)"
  end
end
