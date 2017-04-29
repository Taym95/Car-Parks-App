class ChangeDistrictFormatInMyTable < ActiveRecord::Migration[5.0]
  def up
    change_column :parks, :district, :string
  end

  def down
    change_column :parks, :district, :integer
  end
end
