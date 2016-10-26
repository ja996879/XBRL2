class CreateBetweens < ActiveRecord::Migration
  def change
    create_table :betweens do |t|
      t.string :datename
      t.string :datetag

      t.timestamps null: false
    end
  end
end
