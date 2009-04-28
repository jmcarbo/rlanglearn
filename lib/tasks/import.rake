require 'pp'
namespace :import do
  desc "Import Campayo vocabulary"
  task :import_campayo => [:environment] do
    line = 0
    @head = nil
    @category = nil
    @source_language = Language.find_or_create_by_name(:name=>"Español",:iso_2_name=>'es')
    @target_language = Language.find_or_create_by_name(:name=>"Francaise",:iso_2_name=>'fr')
    File.read(RAILS_ROOT + "/db/campayo.txt").each do |l|
      l.chop!
      if l.match(/^\@/)
        @category = GrammarCategory.find_or_create_by_name(:name=>l.gsub(/^\@/,""))
        @head = nil
      else
        importance = 1 if l.match(/\*$/)
        l.gsub!(/\*$/,"")
        grammar_item = GrammarItem.new 
        grammar_item.source_description=l
        grammar_item.source_language = @source_language
        grammar_item.target_language = @target_language
        grammar_item.grammar_category = @category
        grammar_item.importance = importance
        if @head
          grammar_item.parent_id = @head.id
        end
        if grammar_item.save
          puts "Saved"
        else
          pp grammar_item.errors
        end
        if l.match(/^[A-Z][A-Z]/)
          @head = grammar_item
        end
      end
      
      line = line + 1
    end
  end  
end
