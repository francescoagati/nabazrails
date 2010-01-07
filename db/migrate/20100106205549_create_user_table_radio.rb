class CreateUserTableRadio < ActiveRecord::Migration
  def self.up
    change_table :radios do |t|
      t.string :description
    end
  end

  def self.down
    change_table :radios do |t|
    end
  end
end
