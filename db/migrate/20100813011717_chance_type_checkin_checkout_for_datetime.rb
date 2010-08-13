class ChanceTypeCheckinCheckoutForDatetime < ActiveRecord::Migration
  def self.up
    change_column :periodos, :checkin, :datetime
    change_column :periodos, :checkout, :datetime
  end

  def self.down 
    change_column :periodos, :checkin, :date
    change_column :periodos, :checkout, :date
  end
end
