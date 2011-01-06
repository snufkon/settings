
session :redmine do |s|
  s.commands << "cd ~/code/rails2/redmine-1.0.3"
  s.commands << "rvm ruby-1.8.7@rails2.3.5"

  window :root
  window :console do
    ["ruby script/console"]
  end

  window :log do
    ["tail -f log/development.log"]
  end

  window :server do
    ["ruby script/server"]
  end
end
