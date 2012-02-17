module Permutor
  class Alphabet
    def initialize(ml = 1)
      raise "Max length capped at 5. 5 gives you 1,235,6630 combinations. Isn't that enough to start?" if ml > 5
      @ml = ml
    end

    def permutations(k = @ml)
      return [] if k < 1
      (set(k) + permutations(k-1)).sort
    end

    private

    def alphabet
      ('a'..'z').to_a
    end

    def set(k)
      ('a'*k..'z'*k).to_a
    end
  end
end