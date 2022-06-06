class Api::V1::ResultsController < Api::V1::BaseController

  before_action :authorize_request
  SUBJECT = ["math_answers", "filipino_answers", "english_answers", "science_answers", "abstract_answers"]

  def submit
    @result = answer_params
    column_name = SUBJECT[params[:current_exam].to_i].to_sym
    @current_user[column_name] = @result.to_h[:answers]
    if @current_user.save
      render json: {message: 'success'}, status: :ok
    else
      render json: {message: 'failed'}, status: :bad_request
    end

  end

  private

  def answer_params
    params.permit(:answers, answers: [:question_id, :answer])
  end
end