@stories.each do |story|
  json.set! story.id do
    json.author story.author.name
    json.partial! "api/stories/story", story: story
  end
end