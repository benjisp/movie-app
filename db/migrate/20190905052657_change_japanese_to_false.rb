class ChangeJapaneseToFalse < ActiveRecord::Migration[6.0]
  def change
    change_column :movies, :japanese, :boolean, default: false
  end
end