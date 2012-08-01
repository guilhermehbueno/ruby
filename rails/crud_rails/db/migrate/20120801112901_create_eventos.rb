class CreateEventos < ActiveRecord::Migration
  def up
    change_table :eventos do |t|
      t.string :titulo
      t.string :descricao
      t.integer :categoria_id
      t.datetime :data
      t.timestamps
    end
  end
end
