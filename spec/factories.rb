Factory.define :grammar_category do |g|
  g.sequence(:name) { |n| "grammar_category_#{n}"}
end

Factory.define :language do |l|
  l.sequence(:name) { |n| "language#{n}"}
  l.sequence(:google_name) { |n| "google_language#{n}"}
  l.sequence(:iso_2_name) { |n| "iso_2_language#{n}"}
end

Factory.define :grammar_item do |gi|
  gi.sequence(:source_description) {|n| "source_description#{n}"}
  gi.association :target_language_id, :factory => :language
  gi.association :source_language_id, :factory => :language
  gi.association :grammar_category
end