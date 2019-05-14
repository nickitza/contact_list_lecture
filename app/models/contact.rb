class Contact < ApplicationRecord
  # manually added:
  has_many :notes, dependent: :destroy
  has_one :address, dependent: :destroy
  # rails doesn't assume that Contact can have multiple notes
end
