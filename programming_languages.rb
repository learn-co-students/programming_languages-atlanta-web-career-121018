require'pry'

languages = {
    :oo => {
        :ruby => {
            :type => "interpreted"
        },
        :javascript => {
            :type => "interpreted"
        },
        :python => {
            :type => "interpreted"
        },
        :java => {
            :type => "compiled"
        }
    },
    :functional => {
        :clojure => {
            :type => "compiled"
        },
        :erlang => {
            :type => "compiled"
        },
        :scala => {
            :type => "compiled"
        },
        :javascript => {
            :type => "interpreted"
        }

    }
}


def reformat_languages(languages)
    reformated = {}
    languages.map do |style, language|
        language.map do |name, attribute|
            reformated[name] = attribute
            reformated[name][:style] = []
            if name == :javascript
                reformated[name][:style] = [:oo, :functional]
            else
                reformated[name][:style] << style
            end
        end
    end
    reformated
end
