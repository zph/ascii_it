require "ascii_it/version"

module AsciiIt
  def ascii_it
    self.encode('ASCII', invalid: :replace, undef: :replace, replace: ' ')
  end

  def to_ascii
    ascii_it
  end
end

class String
  include AsciiIt
end
