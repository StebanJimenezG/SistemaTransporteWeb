class CreateRecorridos < ActiveRecord::Migration[5.1]
  def change
    create_table :recorridos do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
