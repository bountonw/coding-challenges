require 'spec_helper'
require_relative '../lib/person2.rb'

describe Person do
  it '#new' do
    person = Person::Person.new('giovanni')

    expect(person).to_not be_nil
  end

  it '#to_s' do
    person = Person::Person.new('giovanni')

    result = person.to_s
    expect(result).to eq('giovanni')
  end

  it '#titleize' do
    person = Person::Person.new('giovanni')

    result = person.titleize.to_s

    expect(result).to eq('Giovanni')
    expect(person.name).to eq('giovanni')
  end

  it '#upcase' do
    person = Person::Person.new('giovanni')

    result = person.upcase.to_s

    expect(result).to eq('GIOVANNI')
    expect(person.name).to eq('giovanni')
  end

  it '#downcase' do
    person = Person::Person.new('giovanni')

    result = person.downcase.to_s

    expect(result).to eq('giovanni')
    expect(person.name).to eq('giovanni')
  end

  it '#reverse' do
    person = Person::Person.new('giovanni')

    result = person.reverse.to_s

    expect(result).to eq('innavoig')
    expect(person.name).to eq('giovanni')
  end

  it '#hyphenize' do
    person = Person::Person.new('giovanni')

    result = person.hyphenize.to_s

    expect(result).to eq('g-i-o-v-a-n-n-i')
    expect(person.name).to eq('giovanni')
  end

  it '#undo' do
    person = Person::Person.new('giovanni')

    result = person.titleize.upcase.reverse.downcase.undo.undo.undo.undo.to_s

    expect(result).to eq('giovanni')
    expect(person.name).to eq('giovanni')
  end
end
