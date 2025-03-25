puts "Digite as 3 notas do aluno separadas por espaço:"
notas = gets.chomp.split.map(&:to_f)

media = notas.sum / notas.size
puts "Média: #{media.round(2)}"

if media >= 7
  puts "Aprovado!"
else
  puts "Reprovado."
end
