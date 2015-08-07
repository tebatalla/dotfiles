Pry.config.exception_handler = proc do |output, exception, _|
  output.puts "#{exception.class}: #{exception.message}"
  exception.backtrace.each do |bt|
    puts "\tfrom: #{bt}"
    break if bt =~ /^\(pry\)/
  end
end

require 'irb/completion'
   require 'irb/ext/save-history'
   IRB.conf[:SAVE_HISTORY] = 10000
   IRB.conf[:HISTORY_FILE] = "#{ENV['HOME']}/.irb-history"