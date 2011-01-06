#encoding: utf-8

CURRENT_DIR = File.dirname(__FILE__)
HOME_DIR = File.expand_path("~/")

namespace "symlink" do
  desc '.tmux.confへのシンボリックリンク作成'
  task :tmux do 
    do_symlink(".tmux.conf")
  end

  desc '.zshrcへのシンボリックリンク作成'
  task :zshrc do
    do_symlink(".zshrc")
  end

  desc '.irbrcへのシンボリックリンク作成'
  task :irbrc do
    do_symlink(".irbrc")
  end

  desc '全てのシンボリックリンクを作成'
  task :all => [:zshrc, :irbrc, :tmux]

  def do_symlink(file)
    if File.exist?("#{HOME_DIR}/#{file}")
      puts "#{HOME_DIR}/#{file} file exist."
    else
      sh "ln -s #{CURRENT_DIR}/#{file} #{HOME_DIR}/#{file}"
    end
  end
end

#desc "defaultタスクは'rake hello'"
#task :default => :hello
