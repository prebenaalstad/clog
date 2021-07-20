class AddLicensekeyToLicenses < ActiveRecord::Migration[6.1]
  def change
    add_column :licenses, :license_key, :string
  end
end
