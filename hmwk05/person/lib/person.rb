require_relative 'person/version'

module Person
  class Person
    attr_accessor :history
    attr_reader :name

    def initialize(value)
      @name = value
      @history = [@name]
      self
    end

    def to_s
      history.last
    end

    def titleize 
      history << @name.capitalize 
      self
    end

    def upcase
      history << @name.upcase
      self
    end

    def downcase
      history << @name.downcase
      self
    end

    def reverse
      history << @name.reverse
      self
    end

    def hyphenize
      history << @name.split(//).join('-')
      self
    end

    def undo
      history.pop
      self
    end
  end
end
