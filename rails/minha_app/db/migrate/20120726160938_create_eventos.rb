class CreateEventos < ActiveRecord::Migration
  def self.up
    create_table :eventos do |t|
      t.string :titulo
      t.datetime :data
      t.text :descricao
      t.integer :categoria_id
      t.timestamps
    end
  end
end
