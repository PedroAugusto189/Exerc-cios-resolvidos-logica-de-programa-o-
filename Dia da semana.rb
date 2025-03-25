dias = ["Domingo", "Segunda", "Terça", "Quarta", "Quinta", "Sexta", "Sábado"]

puts "Digite um número de 1 a 7:"
numero = gets.chomp.to_i

if numero.between?(1, 7)
  puts "Dia da semana: #{dias[numero - 1]}"
else
  puts "Número inválido!"
end