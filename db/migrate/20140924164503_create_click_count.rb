class CreateClickCount < ActiveRecord::Migration
  def change
  	add_column :locations, :click_count, :integer, default: 0
  end
end
