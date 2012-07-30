class CreateEventos < ActiveRecord::Migration
  def change
    create_table :eventos do |t|

      t.timestamps
    end
  end
end
