require 'nmax/version'

# :nodoc:
module Nmax
  def self.call(count)
    STDIN.map { |line| line.scan(/\d+/) }
         .flatten
         .map(&:to_i)
         .sort
         .last(count)
  end
end
