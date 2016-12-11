class CreateQueries < ActiveRecord::Migration[5.0]
  def change
    create_table :queries do |t|
      t.string :password
      t.float :result

      t.timestamps
    end
  end
end
