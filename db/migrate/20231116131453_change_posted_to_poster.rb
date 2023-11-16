class ChangePostedToPoster < ActiveRecord::Migration[7.1]
  def change
    rename_column :movies, :posted_url, :poster_url
  end
end
