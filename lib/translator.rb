# require modules here
require "yaml"

def load_library(path)
  # code goes here
  hash = YAML.load_file(path)
  library = Hash.new()
  library["get_emoticon"] = {}
  hash.each do |meaning, emoticons|
    library["get_emoticon"].merge!({emoticons[0] => emoticons[1]})
  end 
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end