# require modules here
require "yaml"
require "pry"

def load_library(path)
  emoticons = YAML.load_file(path)
  emoticon_lib = {}
  emoticons.each do |key, value|
    emoticon_lib[key] = {}
    emoticon_lib[key][:english] = value[0]
    emoticon_lib[key][:japanese] = value[1]
  end 
  emoticon_lib
end


def get_english_meaning(path, japanese_emoticon)
  emoticon_lib = load_library(path)
  found = emoticon_lib.keys.find do |key| 
    innerHash = emoticon_lib[key][:japanese]
    if innerHash == japanese_emoticon
      key
    end
  end
  if found 
    found
  else
    "Sorry, that emoticon was not found" 
  end
  # binding.pry 
end

# will take a traditional Western emoticon (e.g. :)) 
# and translate it to its Japanese version ((＾ｖ＾)

def get_japanese_emoticon(path, japanese_emoticon)
  emoticon_lib = load_library(path)
  translation = emoticon_lib.each do |key, english_emoticon|
    japanese_emoticon = emoticon_lib[key][:japanese]
    english_emoticon = emoticon_lib[key][:english]
    if japanese_emoticon
      english_emoticon
    end
    translation
    binding.pry
  end 
end

  # translation = emoticon_lib.each do |eng_emoticon, jap_emoticon|
  #   jap_emoticon == emoticon_lib[:japanese]
  #   eng_emoticon == emoticon_lib[:english]

# def get_japanese_emoticon(file_path, emoticon)
#   library = load_library(file_path)
#   library["get_emoticon"].each do |key, value|
#     if key == emoticon
#       puts value
#     end
#   end
# end



