class AnswersController < ApplicationController
	# def create
	# 	book = Book.find(params[:book_id])
	# 	@chapter = book.chapters.new(chapter_params)
	# 	if @chapter.save
	# 		respond_to do |format|
	# 			format.html {redirect_to book }
	# 			format.js
	# 		end
	# 	else
	# 		render book_path(book)
	# 	end
	# end

	# private

	# def chapter_params
	# 	params.require(:chapter).permit(:name, sentences_attributes: [:word_count])
	# end

	def create
		question = Question.find(params[:question_id])
		@answer = question.answers.create(answer_params)
		redirect_to question_path(question)

		# p '*******************'
		# p question	
		# p '--------------------'
	end




	def answer_params
		params.require(:answer).permit(:content).merge(user_id: current_user.id)
	end

end
