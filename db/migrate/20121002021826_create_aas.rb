class CreateAas < ActiveRecord::Migration
  def change
    create_table :aas do |t|
      t.string :name
      t.string :body

      t.timestamps
    end
  end
end
