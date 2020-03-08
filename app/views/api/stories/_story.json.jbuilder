json.extract! @story, :id, :title, :body, :image, :created_at, :updated_at
json.authorId @story.author.id