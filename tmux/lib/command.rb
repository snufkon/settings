
def session(name)
  @session = Session.new(name)
  yield @session
  create_task
end

def window(name)
  w = block_given? ? Window.new(name, yield) : Window.new(name, [])
  @session.windows << w
end

def create_task
  desc "#{@session.name} project"
  task "#{@session.name}_project" do
    sh "tmux new-session -d -s #{@session.name} -n root" unless has_session?(@session.name)
    @session.windows.each_with_index do |w, i|
      sh "tmux new-window -d -k -t #{@session.name}:#{i} -n #{w.name}"

      # 共通処理
      @session.commands.each do |cmd|
        sh "tmux send-keys -t #{@session.name}:#{i} '#{cmd}' C-m"
      end
      
      # 個別ウィンドウ処理
      w.commands.each do |cmd|
        sh "tmux send-keys -t #{@session.name}:#{i} '#{cmd}' C-m"
      end
    end
    
    # 接続
    sh "tmux select-window -t #{@session.name}:0"
    sh "tmux attach-session -t #{@session.name}"
  end
end

def has_session?(name)
  sh "tmux has-session -t #{name}" do |ok, res|
    return ok
  end
end
