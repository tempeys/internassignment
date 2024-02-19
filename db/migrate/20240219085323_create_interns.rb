class CreateInterns < ActiveRecord::Migration[7.1]
  def change
    create_table :interns do |t|
      t.string :index
      t.integer :value

      t.timestamps
    end
  end
end
