class CreateGrammarCategories < ActiveRecord::Migration
  def self.up
    create_table :grammar_categories do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :grammar_categories
  end
end
