require 'pry'


def reformat_languages(languages)
  # your code here
  new_hash ={}
  # new_hash[:language]={}
  # binding.pry
  # languages.each { |k,v| puts new_hash[:language][k][v]}

  #   # new_hash[:language]
  # new_hash[:ruby]= {type: "interpreted", :style => [:oo]}
  # new_hash[:javascript]= {type: "interpreted", :style => [:oo, :functional]}
  # new_hash[:python]= {type: "interpreted", :style => [:oo]}
  # new_hash[:java]= {type: "compiled", :style => [:oo]}
  # new_hash[:clojure]= {type: "compiled", :style => [:functional]}
  # new_hash[:erlang]= {type: "compiled", :style => [:functional]}
  # new_hash[:scala]= {type: "compiled", :style => [:functional]}
  #
   # new_hash

   lang_names= {}
   for element in languages.keys()
     for lang in languages[element].keys()
       if !lang_names.keys().include?(lang)
         lang_names[lang] = languages[element][lang]
         lang_names[lang][:style] = [element]
       else
         lang_names[lang][:style].push(element)
       end
     end
   end
   # binding.pry
     lang_names
end
