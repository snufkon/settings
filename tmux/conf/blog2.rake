
session :blog2 do |s|
  s.commands << "cd ~/code/rails3/blog_app"
    
  s.window :root do
  end

  s.window :console do
    ["rails console"]
  end
  
  s.window :log do
    ["tail -f log/development.log"]
  end

  s.window :server do
    ["rails server"]
  end
end

