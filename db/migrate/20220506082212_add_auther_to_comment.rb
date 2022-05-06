class AddAutherToComment < ActiveRecord::Migration[6.1]
  def change
    add_column :comments, :auther, :string
  end
end
