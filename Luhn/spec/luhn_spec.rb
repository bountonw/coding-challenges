require 'spec_helper'

RSpec.describe Luhn, type: :model do
  describe 'is_valid? should work' do
    it 'should return true if the number is valid' do
      expect(Luhn.is_valid?(4194560385008504)).to be true
    end

    it 'should return false if the number is not valid' do
      expect(Luhn.is_valid?(4194560385008505)).to be false
    end

    it 'should give the wrong answer if the number is not 16 digits' do
      expect(Luhn.is_valid?(377681478627337)).to be false # 15 digits
    end

    it 'should return true for larger digits' do
      expect(Luhn.is_valid?(4012888888881881)).to be true
    end
  end
end