class Invitation < ActiveRecord::Base
  validates_presence_of :recipient_email
  after_create :send_invitation_email

    def send_invitation_email
      InvitationMailer.invitation_sent(self).deliver
  end
end
