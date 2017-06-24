class Invitation < ActiveRecord::Base
  validates_presence_of :recipient_email
end
