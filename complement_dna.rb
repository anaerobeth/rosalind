# In DNA strings, symbols 'A' and 'T' are complements of each other, as are 'C' and 'G'. Given a nucleotide p, we denote its complementary nucleotide as p. The reverse complement of a string Pattern = p1…pn is the string Pattern = pn … p1 formed by taking the complement of each nucleotide in Pattern, then reversing the resulting string.

# For example, the reverse complement of Pattern = "GTCA" is Pattern = "TGAC".

# Reverse Complement Problem

# Reverse complement a nucleotide pattern.

# Given: A DNA string Pattern.

# Return: Pattern, the reverse complement of Pattern.

# Sample Dataset

# AAAACCCGGT
# Sample Output

# ACCGGGTTTT

class Dna
  attr_reader :sequence

  def initialize(sequence)
    @sequence = sequence.upcase
  end

  def complement
    complement_sequence = []
    sequence.chars do |base|
      if base == 'T'
        base = 'A'
      elsif base == 'A'
        base = 'T'
      elsif base == 'G'
        base = 'C'
      elsif base == 'C'
        base = 'G'
      else
        puts 'Invalid input'
        break
      end
      complement_sequence << base
    end
    return complement_sequence
  end

  def reverse_complement
    complement.reverse
  end

  def display
    puts reverse_complement.join('')
  end
end

puts Dna.new('AAAACCCGGT').display
#=> ACCGGGTTTT
