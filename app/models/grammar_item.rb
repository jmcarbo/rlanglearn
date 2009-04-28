class GrammarItem < ActiveRecord::Base
  validates_presence_of :grammar_category_id
  validates_presence_of :source_language_id
  validates_presence_of :target_language_id
  validates_presence_of :source_description
  validates_uniqueness_of :source_description, :scope => [:source_language_id, :target_language_id, :grammar_category_id]
  
  belongs_to :grammar_category, :class_name => "GrammarCategory", :foreign_key => "grammar_category_id"
  belongs_to :source_language, :class_name => "Language", :foreign_key => "source_language_id"
  belongs_to :target_language, :class_name => "Language", :foreign_key => "target_language_id"

  def translate
    tr = Google::Translate.new

    # from English to German
    self.target_description  = tr.translate :from => self.source_language.iso_2_name, 
      :to => self.target_language.iso_2_name, :text => self.source_description.downcase
  end
end
