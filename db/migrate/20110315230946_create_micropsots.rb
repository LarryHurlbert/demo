class CreateMicropsots < ActiveRecord::Migration
  def self.up
    create_table :micropsots do |t|
      t.string :content
      t.string :user_id

      t.timestamps
    end
  end

  def self.down
    drop_table :micropsots
  end
end
