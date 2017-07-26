class CreateNombres < ActiveRecord::Migration[5.1]
  def change
    create_table :nombres do |t|
      t.string :apellido
      t.string :telefono

      t.timestamps
    end
  end
end
