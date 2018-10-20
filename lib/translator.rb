# require modules here
require "yaml"

def load_library(path)
  # code goes here
  hash = YAML.load_file(path)
  library = Hash.new()
  library["get_emoticon"] = {}
  library["get_meaning"] = {}
  hash.each do |meaning, emoticons|
    library["get_emoticon"].merge!({emoticons[0] => emoticons[1]})
    library["get_meaning"].merge!({emoticons[1] => meaning.to_s})
  end 
  return library
end

def get_japanese_emoticon(path, emoticon)
  # code goes here
  hash = load_library(path)
  if hash["get_emoticon"].has_key?(emoticon)
    hash["get_emoticon"][emoticon]
  else 
    puts "Sorry, that emoticon was not found"
  end 
end

def get_english_meaning
  # code goes here
end