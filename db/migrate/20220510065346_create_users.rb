class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :title
      t.date :start
      t.date :endday
      t.boolean :allday
      t.text :coment

      t.timestamps
    end
  end
end
