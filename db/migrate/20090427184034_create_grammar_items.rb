class CreateGrammarItems < ActiveRecord::Migration
  def self.up
    create_table :grammar_items do |t|
      t.string :source_description
      t.string :target_description
      t.string :target_phonetics
      t.integer :target_language_id
      t.integer :source_language_id
      t.text :odd_association
      t.integer :grammar_category_id
      t.integer :parent_id

      t.timestamps
    end
  end

  def self.down
    drop_table :grammar_items
  end
end
