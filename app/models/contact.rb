class Contact < ApplicationRecord
  # dependent: :destroy added manually to allow deletion of children
  has_many :notes, dependent: :destroy
  has_one :address, dependent: :destroy
  # manually added: has_many and has_one
  # rails doesn't assume that Contact can have multiple notes

  #Validations go here:
  validates :email, :first_name, :last_name, presence: true
  validates :email, uniqueness: true

  # Callbacks would go here.

  # Class method
  def self.by_first_name
    order(:first_name)
  end

  #Instance method
  def full_name
    "#{self.first_name} #{self.last_name"}"
  end

  # <% @contacts.each do |contact| %>
  #   <%= contact.first_name %> <%= contact.last_name %>
  # <% end %>
end
