class Api::V1::QuestionnairesController < Api::V1::BaseController

  before_action :authorize_request

  def index
    @questionnaires = Questionnaire.all
    render json: @questionnaires, status: :ok
  end

  def show
    @questionnaire = Questionnaire.find_by_id(params[:id])
    render json: @questionnaire, status: :ok
  end

  def create
    @questionnaire = Questionnaire.new(questionnaire_params)
    if @questionnaire.save
      render json: @questionnaire, status: :created
    else
      render json: {errors: @questionnaire.errors.full_messages },
                    status: :unprocessable_entity
    end
  end

  def update
    unless @questionnaire.update(questionnaire_params)
      render json: { errors: @questionnaire.errors.full_messages},
             status: :unprocessable_entity
    end
  end

  private

  def questionnaire_params
    params.permit(
      :name, :subject, :first_name, :last_name
    )
  end

end