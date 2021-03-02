class AddSpreeFieldsToCustomUserTable < ActiveRecord::Migration[4.2]
  def up
    # add_column "spree_users", :spree_api_key, :string, :limit => 48
    # add_column "spree_users", :ship_address_id, :integer
    # add_column "spree_users", :bill_address_id, :integer
  end
end
