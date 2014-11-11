class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.string :from
      t.string :to
      t.string :sid
      t.string :body
      t.string :question
      t.string :answer
      t.timestamps
    end
  end
end
