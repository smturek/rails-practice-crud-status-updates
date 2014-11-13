class CreateStatus < ActiveRecord::Migration
  def change
    create_table :statuses do |t|
      t.string :status
      t.string :name
      t.integer :likes
      t.timestamps
    end
  end
end
