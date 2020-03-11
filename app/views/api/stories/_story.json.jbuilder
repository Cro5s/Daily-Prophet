json.extract! story, :id, :title, :body, :created_at, :updated_at, :author_id

if story.image.attached? 
  json.imageUrl url_for(story.image)
end
