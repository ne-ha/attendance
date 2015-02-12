class MakeUserConfirmable < ActiveRecord::Migration
  
  def change
    change_table(:users) do |t|
      t.boolean :confirmable, :default => false
    end
  end
  
end
