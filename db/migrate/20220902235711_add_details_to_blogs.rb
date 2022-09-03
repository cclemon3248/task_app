class AddDetailsToBlogs < ActiveRecord::Migration[6.0]
  def change
    add_column :blogs, :all_day, :boolean, null: false, default: false
  end
end
