require 'rspec'
require './day_one.rb'

puts 'Hello'

RSpec.describe DayOne do
  it "Returns whether or not an element is contained within an array" do
    day_one = DayOne.new

    expect(day_one.chop(3, [])).to eql(-1)
    expect(day_one.chop(3, [1])).to eql(-1)
    expect(day_one.chop(1, [1])).to eql(0)
    #
    expect(day_one.chop(1, [1, 3, 5])).to eql(0)
    expect(day_one.chop(3, [1, 3, 5])).to eql(1)
    expect(day_one.chop(5, [1, 3, 5])).to eql(2)
    expect(day_one.chop(0, [1, 3, 5])).to eql(-1)
    expect(day_one.chop(2, [1, 3, 5])).to eql(-1)
    expect(day_one.chop(4, [1, 3, 5])).to eql(-1)
    expect(day_one.chop(6, [1, 3, 5])).to eql(-1)
    expect(day_one.chop(1, [1, 3, 5, 7])).to eql(0)
    #
    expect(day_one.chop(3, [1, 3, 5, 7])).to eql(1)
    expect(day_one.chop(5, [1, 3, 5, 7])).to eql(2)
    expect(day_one.chop(7, [1, 3, 5, 7])).to eql(3)
    expect(day_one.chop(0, [1, 3, 5, 7])).to eql(-1)
    expect(day_one.chop(2, [1, 3, 5, 7])).to eql(-1)
    expect(day_one.chop(4, [1, 3, 5, 7])).to eql(-1)
    expect(day_one.chop(6, [1, 3, 5, 7])).to eql(-1)
    expect(day_one.chop(8, [1, 3, 5, 7])).to eql(-1)
  end
end
