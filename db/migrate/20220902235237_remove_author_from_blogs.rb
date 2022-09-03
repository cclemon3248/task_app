class RemoveAuthorFromBlogs < ActiveRecord::Migration[6.0]
  def change
    remove_column :blogs, :all_day, :boolean
  end
end
