class CreateAuthors < ActiveRecord::Migration[7.0]
  def change

    create_table :authors do |t|
      t.string :full_name
      t.date :date_of_birth

      t.timestamps
    end

    add_reference :books, :author, foreign_key: true

  end
end
