 
 def da_boas_vindas #definindo função
    puts "Bem vindo ao jogo da adivinhação"
    puts "Qual é o seu nome?"
    nome = gets.strip
    puts "\n\n\n"
    puts "Começaremos o jogo para você, #{nome}"
 end
 
 def sorteia_numero_secreto
    puts "Escolhendo um número secreto entre 0 e 200..."
    sorteado =175
    puts "Escolhido... que tal adivinhar hoje nosso número secreto?"
    sorteado
 end

 def pede_numero(chutes, tentativa, limite_tentativas)
     puts "\n\n\n"    
     puts "Tentativa #{tentativa} de #{limite_tentativas}"    
     puts "Tentatita com os numero até agora #{chutes}"
     puts "Entre com o numero"    
     chute = gets.strip    
     puts "Será que acertou? Você chutou #{chute}"  
     chute.to_i   
 end

 def verifica_se_acertou(numero_secreto, chute)
    acertou = numero_secreto == chute   
    if acertou         
        puts "Acertou!"
        #break
        return true
    end    
        maior = numero_secreto > chute
        if maior            
            puts "O número secreto é maior!"
        else
            puts "O número secreto é menor!"
        end
        false
 end

 da_boas_vindas
 numero_secreto = sorteia_numero_secreto
 
 limite_tentativas = 5 
 chutes = []
  
 for tentativa in 1..limite_tentativas    
     
    chute = pede_numero chutes, tentativa, limite_tentativas      
    chutes << chute
     
    if verifica_se_acertou numero_secreto, chute
     break
     end
 end

#  def da_boas_vindas #definindo função
#     puts "Bem vindo ao jogo da adivinhação"
#     puts "Qual é o seu nome?"
#     nome = gets.strip
#     puts "\n\n\n"
#     puts "Começaremos o jogo para você, "+ nome
#  end

# def pede_numero(chutes, tentativa, limite_tentativas)
#     puts "\n\n\n"    
#     puts "Tentativa "+ tentativa.to_s + " de "+  limite_tentativas.to_s    
#     puts "Tentatita com os numero até agora"+ chutes.to_s
#     puts "Entre com o numero"    
#     chute = gets.strip    
#     puts "Será que acertou? Você chutou "+ chute  
#     chute.to_i   
# end

 # for tentativa in1..3    
 #     puts "\n\n\n\n"    
 #     puts "Tentativa 1"    
 #     puts "Entre com o numero"    
 #     chute = gets    puts "Será que acertou? Você chutou "+ chute    
 #     acertou = numero_secreto == chute.to_iif acertou        
 #     puts "Acertou!"
 #     else        
 #     maior = numero_secreto > chute.to_iif maior            
 #     puts "O número secreto é maior!"
 #         else            
 #         puts "O número secreto é menor!"
 #endendendAgora nosso programa roda três vezes. 
 #Mas sempre imprime Tentativa 1. 
 #Corrigimos para mostrar atentativa certa junto com o total de tentativas:
 # ...

#  def verifica_se_acertou(numero_secreto, chute)
#     acertou = numero_secreto == chute   
#     if acertou         
#         puts "Acertou!"
#         #break
#         return true
#     else        
#         maior = numero_secreto > chute
#         if maior            
#             puts "O número secreto é maior!"
#             return false
#         else
#             puts "O número secreto é menor!"
#             return false
#         end
#     end
#  end

# for tentativa in 1..limite_tentativas    
#     chute = pede_numero tentativa, limite_tentativas      
#     if verifica_se_acertou numero_secreto, chute
#        break
#     end
  
# end

# total_de_chutes = 0
 
# for tentativa in 1..limite_tentativas    
    
#    chute = pede_numero chutes, tentativa, limite_tentativas      
#    chutes[total_de_chutes] = chute
#    total_de_chutes = total_de_chutes + 1
   
#    if verifica_se_acertou numero_secreto, chute
#     break
#     end
# end