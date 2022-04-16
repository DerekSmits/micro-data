class RenameJwtBlacklistToJwtDenylist < ActiveRecord::Migration[6.1]
  def change
    rename_table :jwt_blacklists, :jwt_denylist
  end
end
