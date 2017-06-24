class InvitationsController < ApplicationController
  def new
    @invitation = Invitation.new
  end

  def create
    @invitation = Invitation.create(invitation_params)
    if @invitation.save
      return render text: 'Works!'
    else
      return render text: 'Error!', status: :forbidden
    end
  end

  private

  def invitation_params
    params.require(:invitation).permit(:recipient_email)
  end

end
