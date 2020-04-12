class AddAppliedToApplication < ActiveRecord::Migration[6.0]
  def change
    add_column :applications, :applied, :string
  end
end
