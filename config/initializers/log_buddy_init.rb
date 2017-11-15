require 'log_buddy'

log_dir = File.expand_path('../../../log', __FILE__)
puts "log direc: #{log_dir}"
FileUtils.mkdir_p(log_dir) unless File.exist?(log_dir)
logger = Logger.new(File.join(log_dir, "#{ENV}.log"))
LogBuddy.init(:logger => logger)