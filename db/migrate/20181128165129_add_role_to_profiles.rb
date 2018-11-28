class AddRoleToProfiles < ActiveRecord::Migration[5.0]
  def change
    add_column :profiles, :role, :string, null: false, default: 'user' # profile 에 column 추가 
  end
end
