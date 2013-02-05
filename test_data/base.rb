# encoding: utf-8
require "open-uri"
require "nokogiri"
require "excon"
require "pp"

# http://ru.wiktionary.org/wiki/%D0%9A%D0%B0%D1%82%D0%B5%D0%B3%D0%BE%D1%80%D0%B8%D1%8F:%D0%A0%D1%83%D1%81%D1%81%D0%BA%D0%B8%D0%B5_%D1%81%D1%83%D1%89%D0%B5%D1%81%D1%82%D0%B2%D0%B8%D1%82%D0%B5%D0%BB%D1%8C%D0%BD%D1%8B%D0%B5

class Unicode
  LOWER_CHARS = Hash[*(?а..?я).to_a.zip((?А..?Я).to_a).flatten]
  UPPER_CHARS = Hash[*(?А..?Я).to_a.zip((?а..?я).to_a).flatten]

  def self.downcase(string)
    low_string = ""
    string.downcase.chars do |c|
      low_string += UPPER_CHARS[c] || c
    end
    low_string
  end

  def self.upcase(string)
    up_string = ""
    string.upcase.chars do |c|
      up_string += LOWER_CHARS[c] || c
    end
    up_string
  end
end

require "./hash"

words = File.open("words.txt", 'r:utf-8', &:read).split("\n").map(&:strip)
words = words.map {|w| Unicode.downcase(w) }#.sort
hash = KNOWN.dup

at_exit { pp hash.delete_if {|k, v| KNOWN[k] }; '' }

(words - hash.keys).each do |word|
  tries = 0
  begin
    tries += 1
    print "#{word} => "
    url = "http://ru.wiktionary.org/wiki/#{URI.encode(word)}"
    options = {
      :connect_timeout => 9,
      :headers => {'User-Agent' => 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_4) AppleWebKit/537.11 (KHTML, like Gecko) Chrome/23.0.1271.101 Safari/537.11'}
    }
    content = Excon.get(url, options).body
    doc = Nokogiri::HTML(content)
    doc.css('#mw-content-text > table').to_a.each do |table|
      next if hash[word]
      tds = table.css('td')
      if tds[1] && tds[0].content == 'Им.' && [word, '-'].include?(tds[1].content.gsub('́', ''))
        plural = tds[2].content.gsub('́', '').gsub('*', '')
        hash[word] = plural
        print plural
      end
    end

    if !hash[word]
      print "missing  --- #{url}"
      hash[word] = ""
    end
    puts
  rescue Excon::Errors::Timeout => e
    retry if tries <= 3
  rescue => e
    puts
    p [word, url]
    p e
    p e.backtrace
  end
end