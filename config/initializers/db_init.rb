require 'mongo'
require 'yaml'

# Else read the local configuration
db_config = YAML.load_file('config/database.yml')

db_host = db_config[ENV]['host']
db_port = db_config[ENV]['port']
db_name = db_config[ENV]['database']

db = Mongo::Client.new([ "#{db_host}:#{db_port}" ], database: db_name)
set :mongo_db, db[db_name.to_sym]