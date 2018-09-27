# Massive seed

1000000.times do |i|
  user = User.new(name: i.humanize)
  1.times do |j|
    post = user.posts.build(title: "#{i.humanize}/#{j.humanize}")
    2.times do |k|
      post.comments.build(content: k.humanize)
    end
  end
  user.save!
  puts "Finish #{i}"
end
