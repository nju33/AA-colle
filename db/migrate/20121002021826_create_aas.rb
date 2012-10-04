class CreateAas < ActiveRecord::Migration
  def change
    create_table :aas do |t|
      t.string:name
      t.text :body, :limit => nil

      t.timestamps
    end
  end
end
