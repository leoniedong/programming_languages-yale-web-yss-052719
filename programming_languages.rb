require "pry"
def reformat_languages(languages)
  # your code here
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
  new_hash = {}
  languages.each do |style, language|
    language.each do |name, type|
        if new_hash[name] == nil
          new_hash[name] = type
          new_hash[name][:style]= [style]
        else
          new_hash[name][:style] << style
      end
    end
  end

  new_hash



end
