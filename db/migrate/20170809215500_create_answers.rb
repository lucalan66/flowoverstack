class CreateAnswers < ActiveRecord::Migration[5.1]
  def change
    create_table :answers do |t|
      t.text :content
      t.belongs_to :user
      t.belongs_to :question	

      t.timestamps
    end
  end
end


# def answer_params
# 	params.require(:anser).permit().merge(user_id: curre)
	
# end