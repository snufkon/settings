
session :blog2 do |s|
  s.commands << "cd ~/code/rails3/blog_app"
    
  window :root do
  end

  window :console do
    ["rails console"]
  end

  window :log do
    ["tail -f log/development.log"]
  end

  window :server do
    ["rails server"]
  end
end

