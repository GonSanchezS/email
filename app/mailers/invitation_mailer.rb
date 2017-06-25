class InvitationMailer < ActionMailer::Base
  default from: "Minimize Email <no-reply@minimize.email>"

  def invitation_sent(invitation)
    @email = invitation.recipient_email
    mail(to: @email,
         subject: "Your colleague tagged you as someone who sends too many emails ✉️🔥")
  end
end
