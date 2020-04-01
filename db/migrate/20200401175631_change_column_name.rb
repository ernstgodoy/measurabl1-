class ChangeColumnName < ActiveRecord::Migration[6.0]
  def change
    rename_column :ages, :nameId, :name_id
  end
end
