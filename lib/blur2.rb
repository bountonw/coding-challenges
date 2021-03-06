# Given a black and white image, implement a blur method to run a transformation
# on the image. Running the blur transformation causes any 1 in the image to
# cause the pixel to the left, right, above and below to become a 1.

# This is part two of a three part blur challenge.

class Image
  attr_accessor :data
  attr_reader :coordinates
  
  def initialize(data)   
   @data = data
   @coordinates = []
	end

  def output_data
    @data.each_index { |row| puts @data[row].join }
  end

  def compile_coordinates
    for row in 0..(@data.length - 1) do
      for column in 0..(@data[row].length - 1) do 
        @coordinates << { row: row, column: column } if @data[row][column] == 1
      end
    end
  end

  def blur
    compile_coordinates
    @coordinates.each do |coordinate|
      row = coordinate[:row]
      column = coordinate[:column]
      @data[row-1][column] = 1 if row - 1 >= 0  # top
      @data[row+1][column] = 1 if row + 1 <= @data.length - 1 # bottom
      @data[row][column-1] = 1 if column - 1 >= 0  # left
      @data[row][column+1] = 1 if column + 1 <= @data[0].length - 1  # right
    end
  end
end
