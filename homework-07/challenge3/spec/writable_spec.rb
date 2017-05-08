require 'spec_helper'
require_relative '../lib/writable'

describe Writable do
  it '.formatter verification 1' do
    subject = [%w(a), %w(b b), %w(c c c), %w(a a a), %w(b b), %w(c)]

    result = Writable.formatter.call(subject)

    expect(result).to eq('1a2b3c3a2b1c')
  end
end
