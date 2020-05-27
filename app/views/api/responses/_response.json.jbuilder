json.extract! response, :id, :body, :author_id
json.responseAuthor response.author.name

# json.responses do
#   @story.responses.each do |response|
#     json.set! response.id do
#       json.partial! "api/responses/", response: response
#     end
#   end
# end