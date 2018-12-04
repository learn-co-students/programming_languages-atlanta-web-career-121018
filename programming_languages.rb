require 'pry'
def languages_array(languages)
  languages.map do |style, language_names|
    language_names.keys
  end.flatten.uniq
end

def language_info(languages, language)
  language_info = {}
  language_info[:style] = []
  languages.each do |style,language_names|
    if language_names.key?(language)
      language_info[:type] = language_names[language][:type]
      language_info[:style] << style
    end
  end
  language_info
end

def reformat_languages(languages)
  new_hash = {}
  languages_array(languages).each do |language|
    new_hash[language] = language_info(languages, language)
  end
  new_hash
end
