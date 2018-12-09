require "pry"

def reformat_languages(languages)
  new_hash = {}

  languages.each do |style, language_data|
    language_data.each do |prog_language, type|
      if new_hash[prog_language] == nil
        new_hash[prog_language] = type
        new_hash[prog_language][:style] = []
      end
      new_hash[prog_language][:style] << style
    end
  end
  return new_hash
end
