# Problem

# An RNA string is a string formed from the alphabet containing 'A', 'C', 'G', and 'U'.

# Given a DNA string t corresponding to a coding strand, its transcribed RNA string u is formed by replacing all occurrences of 'T' in t with 'U' in u.

# Given: A DNA string t having length at most 1000 nt.

# Return: The transcribed RNA string of t.

# Sample Dataset

# GATGGAACTTGACTACGTAAATT

# Sample Output

# GAUGGAACUUGACUACGUAAAUU

class Dna
  attr_reader :sequence

  def initialize(sequence)
    @sequence = sequence.upcase
  end

  def transcribe
    transcribed_sequence = []
    sequence.chars do |base|
      if base == 'T'
        base = 'U'
      end
      transcribed_sequence << base
    end
    return transcribed_sequence
  end

  def display
    puts transcribe.join('')
  end

end

puts Dna.new('GATGGAACTTGACTACGTAAATT').display
#=> GAUGGAACUUGACUACGUAAAUU
