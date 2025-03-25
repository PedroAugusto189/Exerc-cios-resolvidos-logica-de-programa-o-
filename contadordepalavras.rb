class WordCounter
  def initialize(text)
    @text = text.to_s # Garante que mesmo nil vire string vazia
  end

  def analyze
    words = process_text
    return { unique_words: 0, top_words: {} } if words.empty? # Edge case

    frequency = calculate_frequency(words)
    unique_count = frequency.size
    top_words = frequency.sort_by { |_, count| -count }.first(5).to_h

    { unique_words: unique_count, top_words: top_words }
  end

  private

  def process_text
    @text.downcase
         .gsub(/[^\w\sáéíóúãõâêôçÀ-ÿ]/, '') # Mantém acentos
         .split
         .reject(&:empty?)
  end

  def calculate_frequency(words)
    words.each_with_object(Hash.new(0)) { |word, hash| hash[word] += 1 }
  end
end


texto = <<~TEXT
  Num ninho de mafagafos há 
sete mafagafinhos. Quando a 
mafagafa gafa, gafam os 
sete mafagafinhos.
TEXT

counter = WordCounter.new(texto)
resultado = counter.analyze

puts "Palavras únicas: #{resultado[:unique_words]}"
puts "Top 5 palavras:"
resultado[:top_words].each { |word, count| puts "#{word}: #{count}x" }