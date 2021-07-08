class CreateTableIps < Sequel::Migration
  def up
    create_table :ips do
      primary_key :id
      column :body, :text
      index :body
    end
  end

  def down
    drop_table :ips
  end
end