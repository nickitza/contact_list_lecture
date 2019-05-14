class Note < ApplicationRecord
  #this line is what signifies that it is child to contact via:
  # $ rails g model Note body:text contact:belongs_to
  belongs_to :contact
end
