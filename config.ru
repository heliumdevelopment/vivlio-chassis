# Load path and gems/bundler
$LOAD_PATH << File.expand_path(File.dirname(__FILE__))

# Run all initialization
require File.expand_path('config/init', File.dirname(__FILE__))

require 'vivlio'
run Vivlio
