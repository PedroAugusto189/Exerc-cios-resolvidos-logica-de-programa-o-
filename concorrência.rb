require 'net/http'

urls = [
  'https://ruby-lang.org',
  'https://github.com',
  'https://stackoverflow.com'
]

threads = urls.map do |url|
  Thread.new(url) do |u|
    response = Net::HTTP.get_response(URI(u))
    puts "#{u} => #{response.code}"
  end
end

threads.each(&:join)