class AddUseIdToComment < ActiveRecord::Migration
  def change
    add_column :comments, :use_id, :integer
  end
end
