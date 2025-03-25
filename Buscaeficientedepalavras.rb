class TrieNode
  attr_accessor :children, :is_word

  def initialize
    @children = {}
    @is_word = false
  end
end

class Trie
  def initialize
    @root = TrieNode.new
  end

  def insert(word)
    node = @root
    word.each_char do |char|
      node.children[char] ||= TrieNode.new
      node = node.children[char]
    end
    node.is_word = true
  end

  def search(word)
    node = @root
    word.each_char do |char|
      return false unless node.children[char]
      node = node.children[char]
    end
    node.is_word
  end
end

# Uso:
trie = Trie.new
trie.insert("ruby")
trie.insert("rails")
puts trie.search("ruby") # true
puts trie.search("rust") # false