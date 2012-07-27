class CreateCategoria < ActiveRecord::Migration
 def self.up
    create_table :categoria do |t|
      t.string :nome_categoria
      t.timestamps
    end
  end
  def self.down
    drop_table :categoria
  end
end
