class AddUserIdToAa < ActiveRecord::Migration
  def change
    add_column :aas, :user_id, :integer
  end
end
