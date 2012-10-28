class AddCountToAas < ActiveRecord::Migration
  def change
    add_column :aas, :count, :integer
  end
end
