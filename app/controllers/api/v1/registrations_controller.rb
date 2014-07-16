class Api::RegistrationsController < Api::BaseController

  respond_to :json
  def create

    user = User.new(params[:user])
    if user.save
      render json: user.as_json(auth_token: user.authentication_token, email: user.email), status: 201 #Created
      return
    else
      render json: user.errors, status: 422 #unprocessable Entity
    end
  end
end