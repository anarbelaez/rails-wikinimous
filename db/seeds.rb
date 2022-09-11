require 'faker'

puts 'Creating 100 fake restaurants'
10.times do
  article = Article.new(
    title: Faker::Lorem.sentence,
    content: Faker::Lorem.paragraph(sentence_count: 2, supplemental: false, random_sentences_to_add: 4)
  )
  article.save!
end
puts 'Finished!'
