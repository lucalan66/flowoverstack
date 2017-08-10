class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.text :content
      #t.integer :commentable_id
      #t.string :commentable_type
      t.references :commentable, polymorphic: true, index: true
      t.belongs_to :user

      t.timestamps
    end

    #add_index :comments, [:commentable_type, :commentable_id]
  end
end
