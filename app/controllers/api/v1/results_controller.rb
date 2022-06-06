class Api::V1::ResultsController < Api::V1::BaseController

  before_action :authorize_request

  before_action :set_result
  SUBJECTS = ["math_score", "filipino_score", "english_score", "science_score", "abstract_score"]

  def submit
    score = 0
    @answers = answer_params
    subject_score = SUBJECTS[params[:current_exam].to_i].to_sym
    @answers.to_h[:answers].each do |answer|
      question = Question.find_by_id(answer["question_id"])
      score+=1 if question.present? && answer["answer"].to_s.eql?(question.correct_answer.to_s)
    end
    @exam_result[subject_score] = score
    if @exam_result.save && @current_user.update(current_exam: params[:current_exam].to_i + 1)
      render json: @exam_result, status: :ok
    else
      render json: {message: 'failed'}, status: :bad_request
    end
  end

  private

  def answer_params
    params.permit(:answers, answers: [:question_id, :answer])
  end

  def set_result
    @exam_result = ExamResult.find_by_user_id(@current_user)
    @exam_result = ExamResult.create(user: @current_user) if @exam_result.blank?
  end

end