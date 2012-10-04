class CreateAas < ActiveRecord::Migration
  def change
    create_table :aas do |t|
      t.text:name
      t.string :body

      t.timestamps
    end
  end
end
