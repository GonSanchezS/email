class InvitationsController < ApplicationController
  def index
  end

  def new
    @invitation = Invitation.new
  end

  def create
    @invitation = Invitation.create(invitation_params)
    if @invitation.save
      #reuquest html -> look for crate.html.erb
      #request js -> create.js.erb
      #return render text: 'Works!'
    else
      return render text: 'Error!', status: :forbidden
    end
  end

  private

  def invitation_params
    params.require(:invitation).permit(:recipient_email)
  end
end
