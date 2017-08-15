class RenameVotesToCountInVotes < ActiveRecord::Migration[5.1]
  def change
  	rename_column :votes, :votes, :count
  end
end
