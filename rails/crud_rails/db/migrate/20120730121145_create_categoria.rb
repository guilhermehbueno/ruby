class CreateCategoria < ActiveRecord::Migration
  def change
    create_table :categoria do |t|
      t.string :titulo
      t.string :descricao
      t.timestamps
    end
  end
end
