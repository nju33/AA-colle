class CreateAas < ActiveRecord::Migration
  def change
    create_table :aas do |t|
      t.text:name, limit: nil
      t.string :body

      t.timestamps
    end
  end
end
