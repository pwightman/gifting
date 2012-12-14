class EnvConfig
  def self.load_config
    vars = YAML.load(File.open(File.join(Rails.root, "config", "initializers", "secret_sauce.yml")))
    config_vars = {}
    vars.each do |k, v|
      config_vars[k.upcase] = load_config_var k, v
    end
    config_vars
  end

  def self.load_config_var var, value
    ENV[var.upcase] || value
  end
end

CONFIG = EnvConfig.load_config
