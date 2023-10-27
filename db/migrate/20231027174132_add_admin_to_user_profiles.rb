class AddAdminToUserProfiles < ActiveRecord::Migration[7.0]
  def change
    add_column :user_profiles, :admin, :boolean
  end
end
