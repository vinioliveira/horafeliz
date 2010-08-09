class CreateHoras < ActiveRecord::Migration
  def self.up
    create_table :horas do |t|
      t.string :type
      t.references :user
      t.datetime :date
      t.timestamps
    end
  end

  def self.down
    drop_table :horas
  end
end

