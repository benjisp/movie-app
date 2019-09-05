class ChangeEnglishToJapanese < ActiveRecord::Migration[6.0]
  def change
    rename_column :movies, :english, :japanese
  end
end
