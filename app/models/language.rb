class Language < ActiveRecord::Base
  validates_presence_of :name
  validates_presence_of :iso_2_name
  validates_uniqueness_of :name
  validates_uniqueness_of :iso_2_name
  
  has_many :source_grammar_items, :class_name => "grammar_item", :foreign_key => "source_language_id"
  has_many :target_grammar_items, :class_name => "grammar_item", :foreign_key => "target_language_id"
end
