class ChangeTypeFieldHora < ActiveRecord::Migration
  def self.up
    change_table :horas do |t|
      add_column :horas, :tipo, :string
      remove_column :horas, :type
    end
  end

  def self.down
     change_table :horas do |t|
      add_column :horas, :type, :string
    end
  end
end

