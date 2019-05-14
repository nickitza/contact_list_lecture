class Note < ApplicationRecord
  #this line is what signifies that it is child to contact via:
  # $ rails g model Note body:text contact:belongs_to
  # ^ that code is what told this file to know this
  belongs_to :contact
end
