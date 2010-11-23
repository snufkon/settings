require 'rubygems' if RUBY_VERSION < '1.9'
#require 'irbtools'
require "irbtools/configure"
Irbtools.libraries -= %w(fancy_irb)
Irbtools.start

require "fancy_irb"
FancyIrb.start(
#               :rocket_prompt   => '><<<<@> ',
               # :result_prompt   => '=> ',
               :colorize => {             
 #                :rocket_prompt => :yellow,
                 #   :result_prompt => :blue,
                 #   :input_prompt  => nil,
                 #   :irb_errors    => :red,
                 #   :stderr        => :light_red,
                 :stdout        => :cyan,
                 #   :input         => nil,
                 #   :output        => true,
               }
               )

# Sketches.config :editor => 'emacs', :background => true

# タブ補完設定
require "irb/completion"

# 入力コマンドの履歴を保持
require "irb/ext/save-history"
IRB.conf[:SAVE_HISTORY] = 1000

# 実行結果の履歴を100件保存
IRB.conf[:EVAL_HISTORY] = 100

# 構文による自動インデントを可能にする
IRB.conf[:AUTO_INDENT] = true

# irbrcへの記述はトップレベルのメソッドとして使える
def hello
  puts "hello world!"
end
