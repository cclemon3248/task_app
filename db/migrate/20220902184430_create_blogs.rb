class CreateBlogs < ActiveRecord::Migration[6.0]
  def change
    create_table :blogs do |t|
      t.string :title
      t.datetime :start_date
      t.datetime :end_date
      t.boolean :all_day
      t.text :memo

      t.timestamps
    end
  end
end
