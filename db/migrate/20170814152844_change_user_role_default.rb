class ChangeUserRoleDefault < ActiveRecord::Migration
  def change
  	change_column :users , :user_role_id , :integer , :default => "3"
  end
end
