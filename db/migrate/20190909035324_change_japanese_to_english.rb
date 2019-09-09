class ChangeJapaneseToEnglish < ActiveRecord::Migration[6.0]
  def change
    rename_column :movies, :japanese, :english
  end
end