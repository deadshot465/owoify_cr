require "set"

# The basic unit of the owoify function.
class Word
  def initialize(@word : String)
    @replaced_words = Set(String).new
  end

  # Replace all matched items with a string.
  def replace(search_value : Regex, replace_value : String, replace_replaced_words : Bool = false)
    return self if !replace_replaced_words && search_value_contains_replaced_words(search_value, replace_value)

    replacing_word = @word
    replacing_word = @word.gsub(search_value, replace_value) if search_value.matches?(@word)
    collection = @word.scan(search_value).flat_map { |x| x.to_a }
    replaced_words = [] of String
    if collection.size > 1
      replaced_words = collection.map { |x| x.not_nil!.gsub(x.not_nil!, replace_value) }
    end

    if replacing_word != @word
      replaced_words.each do |word|
        @replaced_words.add(word)
      end
      @word = replacing_word
    end
    self
  end

  # Replace all matched items by repeatedly calling a proc that doesn't accept any parameter and returns a string.
  def replace_with_func_single(search_value : Regex, func : Proc(String), replace_replaced_words : Bool = false)
    replace_value = func.call

    return self if !replace_replaced_words && search_value_contains_replaced_words(search_value, replace_value)

    replacing_word = @word
    if search_value.matches?(@word)
      match = @word.match(search_value).not_nil![0]
      replacing_word = @word.gsub(match, replace_value)
    end
    collection = @word.scan(search_value).flat_map { |x| x.to_a }
    replaced_words = [] of String
    if collection.size > 1
      replaced_words = collection.map { |x| x.not_nil!.gsub(x.not_nil!, replace_value) }
    end

    if replacing_word != @word
      replaced_words.each do |word|
        @replaced_words.add(word)
      end
      @word = replacing_word
    end
    self
  end

  # Replace all matched items by repeated calling a proc that accepts two strings and returns a string.
  def replace_with_func_multiple(search_value : Regex, func : Proc(String, String, String), replace_replaced_words : Bool = false)
    return self unless search_value.matches?(@word)

    word = @word
    captures = search_value.match(word)
    replace_value = func.call(captures.not_nil![1], captures.not_nil![2])

    return self if !replace_replaced_words && search_value_contains_replaced_words(search_value, replace_value)

    replacing_word = @word.gsub(captures.not_nil![0], replace_value)
    collection = @word.scan(search_value).flat_map { |x| x.to_a }
    replaced_words = [] of String
    if collection.size > 1
      replaced_words = collection.map { |x| x.not_nil!.gsub(x.not_nil!, replace_value) }
    end

    if replacing_word != @word
      replaced_words.each do |w|
        @replaced_words.add(w)
      end
      @word = replacing_word
    end
    self
  end

  def to_s(io)
    io << @word
  end

  private def search_value_contains_replaced_words(search_value : Regex, replace_value : String)
    @replaced_words.any? do |word|
      if search_value.matches?(word)
        match_result = search_value.match(word).try &.[0]
        return word.gsub(match_result.not_nil!, replace_value) == replace_value
      end
      false
    end
  end
end
