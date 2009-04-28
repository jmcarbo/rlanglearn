class AddImportanceToGrammarItem < ActiveRecord::Migration
  def self.up
    add_column :grammar_items, :importance, :integer, :default=>0
  end

  def self.down
    remove_column :grammar_items, :importance
  end
end
