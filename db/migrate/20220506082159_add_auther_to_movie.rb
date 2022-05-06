class AddAutherToMovie < ActiveRecord::Migration[6.1]
  def change
    add_column :movies, :auther, :string
  end
end
