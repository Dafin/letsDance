class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :forename
      t.string :surname
      t.boolean :is_leader
      t.string :email
      t.string :tag_line
      t.string :you_should_know

      t.timestamps
    end
  end
end
