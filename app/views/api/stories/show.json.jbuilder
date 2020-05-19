json.story do
  json.partial! "api/stories/story", story: @story
end

json.author do 
  json.partial! "api/users/user", user: @story.author
end

json.responses do
  @story.responses.each do |response|
    debugger
    json.set! response.id do
      json.partial! "api/responses/response", response: response
    end
  end
end