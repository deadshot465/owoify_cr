require "./structures/word"
require "./utility/interleave_arrays"
require "./utility/presets"

# Owoify module is the main module where owoify function lies in.
# Since owoify is literally just a function, users are expected to invoke owoify by calling Owoify.owoify().
module Owoify
  VERSION = "1.0.1"

  # The main entry point of the owoify function.
  # Pass in the source string and the desired owoify level.
  # Currently, there are three levels available (from soft to hard): owo, uwu, uvu
  # Passing an unsupported owoness level will result in an exception.
  def self.owoify(source : String, level : String = "owo")
    words = (source.scan(/[^\s]+/).flat_map { |x| x.to_a }).map { |x| Word.new(x.not_nil!) }
    spaces = (source.scan(/\s+/).flat_map { |x| x.to_a }).map { |x| Word.new(x.not_nil!) }
    actual_level = level.downcase

    words.map! do |w|
      Presets::SPECIFIC_WORD_MAPPING_LIST.each do |f|
        w = f.call(w)
      end
      case actual_level
      when "owo"
        Presets::OWO_MAPPING_LIST.each do |f|
          w = f.call(w)
        end
      when "uwu"
        Presets::UWU_MAPPING_LIST.each do |f|
          w = f.call(w)
        end
        Presets::OWO_MAPPING_LIST.each do |f|
          w = f.call(w)
        end
      when "uvu"
        Presets::UVU_MAPPING_LIST.each do |f|
          w = f.call(w)
        end
        Presets::UWU_MAPPING_LIST.each do |f|
          w = f.call(w)
        end
        Presets::OWO_MAPPING_LIST.each do |f|
          w = f.call(w)
        end
      else
        raise "The specified owoify level is not supported."
      end
      w
    end

    result_strings = Utility.interleave_arrays(words, spaces).map { |x| x.to_s }
    result_strings.join
  end
end
