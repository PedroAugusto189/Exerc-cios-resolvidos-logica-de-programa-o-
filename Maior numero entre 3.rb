puts "Digite três números separados por espaço:"
numeros = gets.chomp.split.map(&:to_i)

maior = numeros.max
puts "O maior número é: #{maior}"

