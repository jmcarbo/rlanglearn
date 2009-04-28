class GrammarCategory < ActiveRecord::Base
  validates_presence_of :name
  validates_uniqueness_of :name
  
  has_many :grammar_items, :class_name => "grammar_item", :foreign_key => "grammar_category_id"
end
