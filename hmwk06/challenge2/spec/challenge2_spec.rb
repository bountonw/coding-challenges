require 'spec_helper'
require_relative '../lib/challenge2'

describe Challenge2 do
  it '.sum_to_0 verification 1' do
    results = Challenge2.sum_to_0([])

    results.each do |result|
      expect(result).to include([])
    end
  end

  it '.sum_to_0 verification 2' do
    results = Challenge2.sum_to_0([1, 2, 3, -4])

    results.each do |result|
      expect([[1, 3, -4]]).to include(result)
    end
  end

  it '.sum_to_0 verification 3' do
    results = Challenge2.sum_to_0([1, 2, 3, -2, -4, 6])

    results.each do |result|
      expect([[1, 3, -4], [-2, -4, 6]]).to include(result)
    end
  end

  it '.sum_to_0 verification 4' do
    results = Challenge2.sum_to_0([1, 2, 3, -2, -4, 6, 7, -8, 10, 0, 3, 4])

    results.each do |result|
      expect([[1, 3, -4], [1, -4, 3], [1, 7, -8], [2, -2, 0], [2, 6, -8], [-2, -4, 6], [-2, -8, 10], [-4, 0, 4]]).to include(result)
    end
  end
end
