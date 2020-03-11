json.story do
  json.partial! "api/stories/story", story: @story
end

json.author do 
  json.partial! "api/user/user", user: @story.author
end