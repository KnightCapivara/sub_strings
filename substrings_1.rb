def substrings(string, dict)
    hash = {}
  
    dict.each do |key|
      count = string.downcase.scan(key).count  # .count pode ser substituido por .length ou .size
      hash[key] = count unless count == 0
    end
  
    # dict.each do |key|
    #   string.split(" ").each do |word|
    #     if word.downcase.include?(key)
    #       hash.key?(key) ? hash[key] += 1 : hash[key] = 1
    #     end
    #   end
    # end
    
    hash
  end
  
  dictionary = ["abaixo","-se","ir","indo","chifre","como","ola","esta","eu","baixo","ter","papel","parceiro","sente"]
  string = "Olá parceiro, sente-se! Como tá indo?"
  
  puts substrings(string, dictionary)
  
  # output: {"-se"=>1, "ir"=>1, "indo"=>1, "como"=>2, "ola"=>1, 
  # 	"ta"=>2, "eu"=>3, "ter"=>1, "papel"=>1, "parceiro"=>1, "sente"=>1}
