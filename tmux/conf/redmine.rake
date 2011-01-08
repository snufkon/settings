
session :redmine do |s|
  s.commands << "cd ~/code/rails2/redmine-1.0.3"
  s.commands << "rvm ruby-1.8.7@rails2.3.5"

  s.window :root
  s.window :console do
    ["ruby script/console"]
  end

  s.window :log do
    ["tail -f log/development.log"]
  end

  s.window :server do
    ["ruby script/server"]
  end
end
