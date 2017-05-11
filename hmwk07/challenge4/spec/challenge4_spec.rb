
require 'spec_helper'
require_relative '../lib/challenge4'

describe Challenge4 do
  it '.factorial verification 1' do
    subject = 0

    result = Challenge4.factorial(subject)

    expect(result).to eq(1)
  end

  it '.factorial verification 2' do
    subject = 1

    result = Challenge4.factorial(subject)

    expect(result).to eq(1)
  end

  it '.factorial versification 3' do
    subject = 50

    result = Challenge4.factorial(subject)

    expect(result).to eq(30_414_093_201_713_378_043_612_608_166_064_768_844_377_641_568_960_512_000_000_000_000)
  end
end
