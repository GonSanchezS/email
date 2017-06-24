class InvitationMailer < ActionMailer::Base
  default from: "no-reply@evelo.com"

  def invitation_sent(invitation)
    @email = invitation.recipient_email
    mail(to: @email,
         subject: "You are an asshole!")
  end
end
