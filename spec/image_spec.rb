describe 'Image' do
	 it '#compile_coordinates for one_pixel' do
	 	image = Image.new([
	    [0, 0, 0, 0],
	    [0, 0, 0, 0],
	    [0, 0, 0, 0],
	    [0, 1, 0, 0],
	    [0, 0, 0, 0],
	    [0, 0, 0, 0]
		])

		image.compile_coordinates
		expect(image.coordinates).to eq([{row: 3, column: 1}])
	end

	it '#compile_coordinates for two_pixels' do
		image = Image.new([
	    [0, 0, 0, 0],
	    [0, 0, 1, 0],
	    [0, 0, 0, 0],
	    [0, 1, 0, 0],
	    [0, 0, 0, 0],
	    [0, 0, 0, 0]
		])

		image.compile_coordinates
		expect(image.coordinates).to eq([{row: 1, column: 2}, {row: 3, column: 1}])
	end

	it '#compile_coordinates for top_single_pixel' do
	  image = Image.new([
	    [0, 0, 1, 0],
	    [0, 0, 0, 0],
	    [0, 0, 0, 0],
	    [0, 0, 0, 0],
	    [0, 0, 0, 0],
	    [0, 0, 0, 0]
		])

		image.compile_coordinates
		expect(image.coordinates).to eq([{row: 0, column: 2}])
	end

	it '#compile_coordinates for top_middle_pixels' do
		image = Image.new([
	    [0, 1, 1, 0],
	    [0, 0, 0, 0],
	    [0, 0, 0, 0],
	    [0, 0, 0, 0],
	    [0, 0, 0, 0],
	    [0, 0, 0, 0]
		])

		image.compile_coordinates
		expect(image.coordinates).to eq([{row: 0, column: 1}, {row: 0, column: 2}])
	end

	it '#compile_coordinates for top_corners' do
		image = Image.new([
	    [1, 0, 0, 1],
	    [0, 0, 0, 0],
	    [0, 0, 0, 0],
	    [0, 0, 0, 0],
	    [0, 0, 0, 0],
	    [0, 0, 0, 0]
		])

		image.compile_coordinates
		expect(image.coordinates).to eq([{row: 0, column: 0}, {row: 0, column: 3}])
	end

	it '#compile_coordinates for top_all' do
		image = Image.new([
	    [1, 1, 1, 1],
	    [0, 0, 0, 0],
	    [0, 0, 0, 0],
	    [0, 0, 0, 0],
	    [0, 0, 0, 0],
	    [0, 0, 0, 0]
		])		

		image.compile_coordinates
		expect(image.coordinates).to eq([{row: 0, column: 0}, {row: 0, column: 1}, {row: 0, column: 2}, {row: 0, column: 3}])
	end

	it '#compile_coordinates for inner_edge' do
		image = Image.new([
	    [0, 0, 0, 0],
	    [0, 0, 0, 0],
	    [0, 0, 0, 0],
	    [0, 0, 0, 0],
	    [1, 0, 0, 0],
	    [0, 0, 0, 0]
		])

		image.compile_coordinates		
		expect(image.coordinates).to eq([{row: 4, column: 0}])
	end

	it '#compile_coordinates for outer_edge' do
		image = Image.new([
	    [0, 0, 0, 0],
	    [0, 0, 0, 0],
	    [0, 0, 0, 1],
	    [0, 0, 0, 0],
	    [0, 0, 0, 0],
	    [0, 0, 0, 0]
		])

		image.compile_coordinates
		expect(image.coordinates).to eq([{row: 2, column: 3}])
	end

	it '#compile_coordinates for bottom' do
		image = Image.new([
	    [0, 0, 0, 0],
	    [0, 0, 0, 0],
	    [0, 0, 0, 0],
	    [0, 0, 0, 0],
	    [0, 0, 0, 0],
	    [0, 0, 1, 0]
		])

		image.compile_coordinates
		expect(image.coordinates).to eq([{row: 5, column: 2}])
	end

	it '#compile_coordinates for corners' do
		image = Image.new([
	    [1, 0, 0, 1],
	    [0, 0, 0, 0],
	    [0, 0, 0, 0],
	    [0, 0, 0, 0],
	    [0, 0, 0, 0],
	    [1, 0, 0, 1]
	  ])

		image.compile_coordinates
		expect(image.coordinates).to eq([{row: 0, column: 0}, {row: 0, column: 3}, {row: 5, column: 0}, {row: 5, column: 3}])
	end

	it '#blur for corners' do
		image = Image.new([
	    [1, 0, 0, 1],
	    [0, 0, 0, 0],
	    [0, 0, 0, 0],
	    [0, 0, 0, 0],
	    [0, 0, 0, 0],
	    [1, 0, 0, 1]
	  ])

		expected = [
	    [1, 1, 1, 1],
	    [1, 0, 0, 1],
	    [0, 0, 0, 0],
	    [0, 0, 0, 0],
	    [1, 0, 0, 1],
	    [1, 1, 1, 1]
	  ]

		image.blur
		expect(image.data).to eq(expected)
	end

 	 it '#blur for one_pixel' do
	 	image = Image.new([
	    [0, 0, 0, 0],
	    [0, 0, 0, 0],
	    [0, 0, 0, 0],
	    [0, 1, 0, 0],
	    [0, 0, 0, 0],
	    [0, 0, 0, 0]
		])

		expected = [
	    [0, 0, 0, 0],
	    [0, 0, 0, 0],
	    [0, 1, 0, 0],
	    [1, 1, 1, 0],
	    [0, 1, 0, 0],
	    [0, 0, 0, 0]
		]

		image.blur
		expect(image.data).to eq(expected)
	end

	it '#blur for two_pixels' do
		image = Image.new([
	    [0, 0, 0, 0],
	    [0, 0, 1, 0],
	    [0, 0, 0, 0],
	    [0, 1, 0, 0],
	    [0, 0, 0, 0],
	    [0, 0, 0, 0]
		])

		expected = [
	    [0, 0, 1, 0],
	    [0, 1, 1, 1],
	    [0, 1, 1, 0],
	    [1, 1, 1, 0],
	    [0, 1, 0, 0],
	    [0, 0, 0, 0]
		]

		image.blur
		expect(image.data).to eq(expected)
	end


	it '#blur for top_single_pixel' do
	  image = Image.new([
	    [0, 0, 1, 0],
	    [0, 0, 0, 0],
	    [0, 0, 0, 0],
	    [0, 0, 0, 0],
	    [0, 0, 0, 0],
	    [0, 0, 0, 0]
		])

		expected = [
	    [0, 1, 1, 1],
	    [0, 0, 1, 0],
	    [0, 0, 0, 0],
	    [0, 0, 0, 0],
	    [0, 0, 0, 0],
	    [0, 0, 0, 0]
		]

		image.blur
		expect(image.data).to eq(expected)
	end

	it '#blur for top_middle_pixels' do
		image = Image.new([
	    [0, 1, 1, 0],
	    [0, 0, 0, 0],
	    [0, 0, 0, 0],
	    [0, 0, 0, 0],
	    [0, 0, 0, 0],
	    [0, 0, 0, 0]
		])

		expected = [
	    [1, 1, 1, 1],
	    [0, 1, 1, 0],
	    [0, 0, 0, 0],
	    [0, 0, 0, 0],
	    [0, 0, 0, 0],
	    [0, 0, 0, 0]
		]

		image.blur
		expect(image.data).to eq(expected)
	end

	it '#blur for top_corners' do
		image = Image.new([
	    [1, 0, 0, 1],
	    [0, 0, 0, 0],
	    [0, 0, 0, 0],
	    [0, 0, 0, 0],
	    [0, 0, 0, 0],
	    [0, 0, 0, 0]
		])

		expected = [
	    [1, 1, 1, 1],
	    [1, 0, 0, 1],
	    [0, 0, 0, 0],
	    [0, 0, 0, 0],
	    [0, 0, 0, 0],
	    [0, 0, 0, 0]
		]

		image.blur
		expect(image.data).to eq(expected)
	end

	it '#blur for top_all' do
		image = Image.new([
	    [1, 1, 1, 1],
	    [0, 0, 0, 0],
	    [0, 0, 0, 0],
	    [0, 0, 0, 0],
	    [0, 0, 0, 0],
	    [0, 0, 0, 0]
		])		

		expected = [
	    [1, 1, 1, 1],
	    [1, 1, 1, 1],
	    [0, 0, 0, 0],
	    [0, 0, 0, 0],
	    [0, 0, 0, 0],
	    [0, 0, 0, 0]
		]

		image.blur
		expect(image.data).to eq(expected)
	end

	it '#blur for inner_edge' do
		image = Image.new([
	    [0, 0, 0, 0],
	    [0, 0, 0, 0],
	    [0, 0, 0, 0],
	    [0, 0, 0, 0],
	    [1, 0, 0, 0],
	    [0, 0, 0, 0]
		])

		expected = [
	    [0, 0, 0, 0],
	    [0, 0, 0, 0],
	    [0, 0, 0, 0],
	    [1, 0, 0, 0],
	    [1, 1, 0, 0],
	    [1, 0, 0, 0]
		]

		image.blur		
		expect(image.data).to eq(expected)
	end

	it '#blur for outer_edge' do
		image = Image.new([
	    [0, 0, 0, 0],
	    [0, 0, 0, 0],
	    [0, 0, 0, 1],
	    [0, 0, 0, 0],
	    [0, 0, 0, 0],
	    [0, 0, 0, 0]
		])

		expected = [
	    [0, 0, 0, 0],
	    [0, 0, 0, 1],
	    [0, 0, 1, 1],
	    [0, 0, 0, 1],
	    [0, 0, 0, 0],
	    [0, 0, 0, 0]
		]

		image.blur
		expect(image.data).to eq(expected)
	end

	it '#blur for bottom' do
		image = Image.new([
	    [0, 0, 0, 0],
	    [0, 0, 0, 0],
	    [0, 0, 0, 0],
	    [0, 0, 0, 0],
	    [0, 0, 0, 0],
	    [0, 0, 1, 0]
		])

		expected = [
	    [0, 0, 0, 0],
	    [0, 0, 0, 0],
	    [0, 0, 0, 0],
	    [0, 0, 0, 0],
	    [0, 0, 1, 0],
	    [0, 1, 1, 1]
		]

		image.blur
		expect(image.data).to eq(expected)
	end
end
