json.array! @posts do |post|
  json.id post.id
  json.title post.title
  json.place post.place
  json.genre post.genre
  json.review post.review
  json.image post.image
  json.user_id post.user_id
  json.nickname post.user.nickname
  json.user_sign_in current_user
end