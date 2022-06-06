class Api::V1::QuestionsController < Api::V1::BaseController

  before_action :authorize_request
  before_action :set_questions, only: [:index]

  def index
    render json: @questions, status: :ok
  end


  def show
    @question = Question.find_by(id: params[:id])
    render json: @question, status: :ok
  end

  def create
    @question = Question.new(question_params)
    @question.questionnaire = Questionnaire.find_by_id(params[:questionnaire_id])

    if @question.save
      render json: @question, status: :created
    else
      render json: {errors: @question.errors.full_messages },
             status: :unprocessable_entity
    end
  end

  private

  def set_questions
    @questions = Question.where(nil)
    @questions = @questions.where(questionnaire_id: params[:questionnaire_id]) if params[:questionnaire_id]
  end

  def question_params
    params.permit(
      :subcategory, :difficulty, :text
    )
  end

end