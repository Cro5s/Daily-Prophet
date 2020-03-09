@stories.each do |story|
  json.set! story.id do
    json.author story.author.name
    json.imageUrl url_for(story.image)
    json.partial! "api/stories/story", story: story
  end
end