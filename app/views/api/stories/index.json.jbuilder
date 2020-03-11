@stories.each do |story|
  json.stories do 
    json.set! story.id do
      json.partial! "api/stories/story", story: story
    end

  end

  json.users do 
    json.set! story.author.id do
      json.partial! "api/users/user", user: story.author
    end
  end

end