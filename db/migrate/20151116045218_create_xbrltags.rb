class CreateXbrltags < ActiveRecord::Migration
  def change
    create_table :xbrltags do |t|
      t.string :tagname
      t.string :tagmean

      t.timestamps null: false
    end
  end
end
