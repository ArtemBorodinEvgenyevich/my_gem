require_relative "my_gem/version"
require_relative "my_gem/my_gem"  # Загружает .so

module MyGem
  class Error < StandardError; end
end
