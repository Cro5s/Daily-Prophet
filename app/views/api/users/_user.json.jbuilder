json.extract! @user, :id, :username, :name
json.storyIds @user.stories.ids
# json.storyIds do
#   json.array! @user.stories.id
# end
