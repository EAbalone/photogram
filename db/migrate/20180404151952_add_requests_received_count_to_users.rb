class AddRequestsReceivedCountToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :requests_received_count, :integer
  end
end
