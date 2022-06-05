class Api::V1::UsersController < Api::V1::BaseController

  before_action :authorize_request
  before_action :role_authorization
  before_action :find_user, except: %i[create index]

  def index
    @users = User.test_taker
    render json: @users, status: :ok
  end

  def show
    render json: @user, status: :ok
  end

  def create
    @user = User.new(user_params)
    if @user.save
      render json: @user, status: :created
    else
      render json: {errors: @user.errors.full_messages },
             status: :unprocessable_entity
    end
  end

  def update
    unless @user.update(user_params)
      render json: {errors: @user.errors.full_messages },
             status: :unprocessable_entity
    end
  end



  private

  def role_authorization
    if @user.present?
      render json: { errors: 'not authorized'}, status: :unauthorized unless @user.admin?
    end
  end

  def find_user
    @user = User.find_by_id(params[:id])
  rescue ActiveRecord::RecordNotFound
    render json: { errors: 'User not found' }, status: :not_found
  end

  def user_params
    params.permit(
       :email, :password, :first_name, :last_name
    )
  end

end