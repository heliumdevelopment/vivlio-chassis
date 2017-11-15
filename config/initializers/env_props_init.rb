# Makes environment properties available in ENV_PROPS hash globally
env_hash = YAML.load_file('config/env-props.yml')#YAML.load(env_yaml) # Parse the resulting YAML
puts env_hash
ENV_PROPS = env_hash[ENV]