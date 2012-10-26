class AddMoreStuffToFestivals < ActiveRecord::Migration
  def change
    add_column :festivals, :ticket_cost, :integer
    add_column :festivals, :country, :string
    
    
    
  end
end
