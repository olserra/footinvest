class ChangeStatusInTokens < ActiveRecord::Migration[5.2]
  def change
    change_column :tokens, :status, 'boolean USING CAST(status AS boolean)'
  end
end
