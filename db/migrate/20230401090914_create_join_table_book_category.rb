class CreateJoinTableBookCategory < ActiveRecord::Migration[7.0]
  def change
    create_join_table :books, :categories do |t|
    end
  end
end
