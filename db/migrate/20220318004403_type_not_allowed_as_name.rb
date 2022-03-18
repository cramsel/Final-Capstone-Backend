class TypeNotAllowedAsName < ActiveRecord::Migration[7.0]
  def change
    rename_column :posts, :type, :audio_type
  end
end
