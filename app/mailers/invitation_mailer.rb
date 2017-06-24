class InvitationMailer < ActionMailer::Base
  default from: "gonzalo@evelo.com"

  def invitation_sent(invitation)
    @email = invitation.recipient_email
    mail(to: @email,
         subject: "You are an asshole!")
  end
end
