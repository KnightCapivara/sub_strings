def substrings(text, dictionary)
    result = Hash.new(0)
    lowered_text = text.downcase
  
    dictionary.each do |word|
      matches = lowered_text.scan(word).length
      result[word] = matches unless matches == 0
    end
  
    return result
  end
  
  dictionary = ["abaixo","-se","ir","indo","chifre","como","ola","esta","eu","baixo","ter","papel","parceiro","sente"]
  
  substrings("Olá parceiro, sente-se! Como tá indo?", dictionary)
