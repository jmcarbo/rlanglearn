class AddGoogleNameToLanguage < ActiveRecord::Migration
  def self.up
    add_column :languages, :google_name, :string
    add_column :languages, :iso_2_name, :string
  end

  def self.down
    remove_column :languages, :iso_2_name
    remove_column :languages, :google_name
  end
end
