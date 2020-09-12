class CreateFaveVids < ActiveRecord::Migration[6.0]
  def change
    create_table :fave_vids do |t|
      t.string :url
      t.string :title

      t.timestamps
    end
  end
end
