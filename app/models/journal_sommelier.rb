class JournalSommelier < ApplicationRecord
  enum role: [:editor, :writer, :reviewer]
  
  belongs_to :sommelier

  def to_s
    "#{role.humanize} at #{journal}"
  end
end
