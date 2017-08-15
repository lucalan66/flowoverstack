class CommentsController < ApplicationController

	def create
		question = Question.find(params[:question_id])
		
 question.comments.create!(comment_params)
		debugger
		redirect_to question_path(question)
	end






	def comment_params
    params.require(:comment).permit(:content).merge(user_id: current_user.id)
  end
end
