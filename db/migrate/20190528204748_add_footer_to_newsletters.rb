class AddFooterToNewsletters < ActiveRecord::Migration[5.0]
  def change
    add_column :newsletters, :footer, :text
  end
end
