# Problem

# A string is simply an ordered collection of symbols selected from some alphabet and formed into a word; the length of a string is the number of symbols that it contains.

# An example of a length 21 DNA string (whose alphabet contains the symbols 'A', 'C', 'G', and 'T') is "ATGCTTCAGAAAGGTCTTACG."

# Given: A DNA string s of length at most 1000 nt.

# Return: Four integers (separated by spaces) counting the respective number of times that the symbols 'A', 'C', 'G', and 'T' occur in s.

# Sample Dataset

# AGCTTTTCATTCTGACTGCAACGGGCAATATGTCTCTGTGTGGATTAAAAAAAGAGTGTCTGATAGCAGC

# Sample Output

# 20 12 17 21H

class Dna
  attr_reader :sequence

  def initialize(sequence)
    @sequence = sequence.upcase
  end

  def count_char
    hash = {'A' => '', 'C' => '', 'G' => '', 'T' => '' }
    sequence.each_char do | char |
      if char == 'A'
        hash['A'] << char
      elsif char == 'C'
        hash['C'] << char
      elsif char == 'G'
        hash['G'] << char
      elsif char == 'T'
        hash['T'] << char
      else
        puts "Invalid DNA sequence"
      end
    end

    hash.each do | key, value |
      hash[key] = value.size.to_i
    end
  end


  def display
    output = ''

    count_char.each do | key, value |
      output << "#{value} "
    end
    output
  end
end


puts Dna.new('AGCTTTTCATTCTGACTGCAACGGGCAATATGTCTCTGTGTGGATTAAAAAAAGAGTGTCTGATAGCAGC').display

#=> 20 12 17 21