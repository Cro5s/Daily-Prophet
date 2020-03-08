json.story do
  json.partial! "api/sotries/story", story: @story
end

json.author do 
  json.partial! "api/user/user", user: @story.author
end