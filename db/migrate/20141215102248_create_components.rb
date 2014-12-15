class CreateComponents < ActiveRecord::Migration
  def change
    create_table :components do |t|
      t.string :name
      t.text :text

      t.timestamps
    end
  end
end
