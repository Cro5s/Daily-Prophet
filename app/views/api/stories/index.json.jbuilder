@stories.each do |story|
  json.set! story.id do
    json.authorId story.author.username
    json.partial! "api/stories/story", story: story
  end
end