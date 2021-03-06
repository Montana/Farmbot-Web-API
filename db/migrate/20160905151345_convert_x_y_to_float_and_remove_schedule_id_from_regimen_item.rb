class ConvertXYToFloatAndRemoveScheduleIdFromRegimenItem < ActiveRecord::Migration
  def change
   # Make Plant x/y a float
   [:x,:y].each do |coord|
     remove_column :plants, coord
     add_column :plants, coord, :float, default: 0
   end
  end
end
