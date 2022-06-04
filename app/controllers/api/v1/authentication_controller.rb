class Api::V1::AuthenticationController < ApplicationController

  def not_found
    render json: { error: 'not_found' }
  end

  def authorize_request
    header = request.headers['Authoriation']
    header = header.split(' ').last if header
    begin
      @decoded = JsonWebToken.decode(header)
      @current_user = User.find(@decoded)
    rescue ActiveRecord::RecordNotFound => e
      render json: { errors: e.message }, status: :unauthorized
    rescue JWT::DecodeError => e
      render json: { errors: e.message }, status: :unauthorized
    end
  end
end