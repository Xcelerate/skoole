class AddBloomToUsers < ActiveRecord::Migration

    def up
        add_column :users, :nums, :string, :default => '0000000000'
    end
    
    def down
        remove_column :users, :string
    end

end
