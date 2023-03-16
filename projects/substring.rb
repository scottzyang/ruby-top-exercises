class Substring
  attr_reader :result
  def initialize(string, dictionary)
    @string = string.downcase
    @dictionary = dictionary
    @result = Hash.new
  end

  def counter
    # loop through dictionary and verify that substring exists within string
    @dictionary.each do |substring|
      if @string.include?(substring)
        @result["#{substring}"] = @string.scan(substring).length
      end
    end
  end
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
substring = Substring.new("Howdy partner, sit down! How's it going?", dictionary)
substring.counter
puts substring.result
