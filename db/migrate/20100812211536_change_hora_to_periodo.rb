class ChangeHoraToPeriodo < ActiveRecord::Migration
  def self.up
    add_column :horas, :checkin, :date
    add_column :horas, :checkout, :date    
    rename_table :horas, :periodos
  end

  def self.down
    rename_table :periodos, :horas
    remove_column :horas, :checkin
    remove_column :horas, :checkout
  end
end
