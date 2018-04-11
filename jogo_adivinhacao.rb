 
 def da_boas_vindas #definindo função
    puts "Bem vindo ao jogo da adivinhação"
    puts "Qual é o seu nome?"
    nome = gets
    puts "\n\n\n"
    puts "Começaremos o jogo para você, "+ nome
 end
 
 def sorteia_numero_secreto
    puts "Escolhendo um número secreto entre 0 e 200..."
    sorteado =175
    puts "Escolhido... que tal adivinhar hoje nosso número secreto?"
    sorteado
 end

 da_boas_vindas
 numero_secreto = sorteia_numero_secreto
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
 limite_tentativas = 5 
 for tentativa in 1..limite_tentativas    
     puts "\n\n\n"    
     puts "Tentativa "+ tentativa.to_s + " de "+  limite_tentativas.to_s    
     puts "Entre com o numero"    
     chute = gets    
     puts "Será que acertou? Você chutou "+ chute    
   
     acertou = numero_secreto == chute.to_i
   
     if acertou         
         puts "Acertou!"
         break
     else        
         maior = numero_secreto > 
         chute.to_i
         if maior            
             puts "O número secreto é maior!"
         else
             puts "O número secreto é menor!"
         end
     end
 end