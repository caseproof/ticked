class CreateConversationsUsers < ActiveRecord::Migration
  def self.up
    create_table :conversations_users, :id => false do |t|
      t.integer :user_id, :null => false
      t.integer :conversation_id, :null => false

      t.timestamps
    end
  end

  def self.down
    drop_table :conversations_users
  end
end
