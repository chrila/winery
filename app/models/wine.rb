class Wine < ApplicationRecord
  has_many :grape_wines, dependent: :destroy
  has_many :grapes, through: :grape_wines

  validates_presence_of :name

  accepts_nested_attributes_for :grape_wines, allow_destroy: true
end
