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

def get_japanese_emoticon(path, emoticon)
  emoticon_lib = load_library(path)
  emoticon_lib.keys.each do |key| # .keys = iterate over .each key 
    binding.pry
  end 

  #   jap_emoticon = emoticon_lib[key][:japanese]
  #   #eng_emoticon = emoticon_lib[key][:english]
  #   if jap_emoticon == emoticon
  #     eng_emoticon
  #   end
  # end
  #   if english_emoticon
  #     english_emoticon
  #   else 
  #     "Sorry, that emoticon was not found"
  #   end
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





# def get_japanese_emoticon(file_path, emoticon)
#   library = load_library(file_path)
#   library["get_emoticon"].each do |key, value|
#     if key == emoticon
#       puts value
#     end
#   end
# end



