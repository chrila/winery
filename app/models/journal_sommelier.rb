class JournalSommelier < ApplicationRecord
  enum role: [ :editor, :writer, :reviewer ]
  
  belongs_to :sommelier
end
