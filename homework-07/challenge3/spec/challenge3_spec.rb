require 'spec_helper'
require_relative '../lib/challenge3'

describe Challenge3 do
  it '.rewrite verification 1' do
    result = Challenge3.rewrite('aaabbbccaadd', Writable.formatter)

    expect(result).to eq('3a3b2c2a2d')
  end

  it '.rewrite verification 2' do
    subject = %w(a z a z a z a z a z).inject('') do |result, string|
      result + string * string.ord
    end

    result = Challenge3.rewrite(subject, Writable.formatter)

    expect(result).to eq('97a122z97a122z97a122z97a122z97a122z')
  end
end
