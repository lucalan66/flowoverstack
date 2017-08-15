class QuestionsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :edit, :destroy]

  def index
  	@questions = Question.all
  end

  def show
 
  	@question = Question.find(params[:id])
  	@answers = @question.answers
  end

  def new
  	@question = Question.new
  end

  def create
  	@question = current_user.questions.create(question_params)
  	redirect_to action: "index"
  end

  def edit
  	@question = Question.find(params[:id])
  end

  def destroy
  	@question = Question.find(params[:id])
  end

  def question_params
    params.require(:question).permit(:title, :content)
  end

  
end
