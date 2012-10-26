class CreateFestivals < ActiveRecord::Migration
  def change
    create_table :festivals do |t|
      t.string :name
      t.datetime :date
      t.string :city
      t.string :state

      t.timestamps
    end
  end
end
