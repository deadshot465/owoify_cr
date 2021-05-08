# An utility module which only contains a single utility function.
module Utility(T)
  # Helper function to interleave and combine a sequence of strings and a sequence of spaces.
  # Returns an interleaved array.
  def self.interleave_arrays(a : Array(T), b : Array(T))
    arr = [] of T
    observed = a
    other = b
    temp = [] of T

    while observed.size > 0
      arr.push(observed.delete_at(0))
      temp = observed
      observed = other
      other = temp
    end

    arr += other.size > 0 ? other : [] of T
    arr
  end
end
