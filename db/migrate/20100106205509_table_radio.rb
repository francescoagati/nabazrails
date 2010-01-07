class TableRadio < ActiveRecord::Migration
  def self.up
    change_table :nabaztags do |t|
      t.string :description
    end
  end

  def self.down
    change_table :nabaztags do |t|
    end
  end
end
