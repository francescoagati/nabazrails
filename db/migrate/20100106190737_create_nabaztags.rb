class CreateNabaztags < ActiveRecord::Migration
  def self.up
    create_table :nabaztags do |t|
      t.string :name
      t.string :serial_number
      t.string :token

      t.timestamps
    end
  end

  def self.down
    drop_table :nabaztags
  end
end
