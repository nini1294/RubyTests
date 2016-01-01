require 'rspec/given'
require './day_one.rb'
require './day_two.rb'
require './day_three.rb'

RSpec::Given.use_natural_assertions

klasses = [DayOne, DayTwo, DayThree]

klasses.each do |klass|
  RSpec.describe klass do
    Given(:klass) {klass.new}

    Then {klass != nil}
    Then { expect(klass).to respond_to(:chop) }
    Then { expect(klass.chop(3, [])).to eql(-1) }
    Then { expect(klass.chop(3, [1])).to eql(-1) }
    Then { expect(klass.chop(1, [1])).to eql(0) }
    #
    Then { expect(klass.chop(1, [1, 3, 5])).to eql(0) }
    Then { expect(klass.chop(3, [1, 3, 5])).to eql(1) }
    Then { expect(klass.chop(5, [1, 3, 5])).to eql(2) }
    Then { expect(klass.chop(0, [1, 3, 5])).to eql(-1) }
    Then { expect(klass.chop(2, [1, 3, 5])).to eql(-1) }
    Then { expect(klass.chop(4, [1, 3, 5])).to eql(-1) }
    Then { expect(klass.chop(6, [1, 3, 5])).to eql(-1) }
    Then { expect(klass.chop(1, [1, 3, 5, 7])).to eql(0) }
    # #
    Then { expect(klass.chop(3, [1, 3, 5, 7])).to eql(1) }
    Then { expect(klass.chop(5, [1, 3, 5, 7])).to eql(2) }
    Then { expect(klass.chop(7, [1, 3, 5, 7])).to eql(3) }
    Then { expect(klass.chop(0, [1, 3, 5, 7])).to eql(-1) }
    Then { expect(klass.chop(2, [1, 3, 5, 7])).to eql(-1) }
    Then { expect(klass.chop(4, [1, 3, 5, 7])).to eql(-1) }
    Then { expect(klass.chop(6, [1, 3, 5, 7])).to eql(-1) }
    Then { expect(klass.chop(8, [1, 3, 5, 7])).to eql(-1) }

  end
end
# RSpec.describe DayOne do

#   Given(:day_one) {DayOne.new}

#   Then {day_one != nil}

#   Then { expect(DayOne.chop(3, [])).to eql(-1) }
#   Then { expect(DayOne.chop(3, [1])).to eql(-1) }
#   Then { expect(DayOne.chop(1, [1])).to eql(0) }
#   #
#   Then { expect(DayOne.chop(1, [1, 3, 5])).to eql(0) }
#   Then { expect(DayOne.chop(3, [1, 3, 5])).to eql(1) }
#   Then { expect(DayOne.chop(5, [1, 3, 5])).to eql(2) }
#   Then { expect(DayOne.chop(0, [1, 3, 5])).to eql(-1) }
#   Then { expect(DayOne.chop(2, [1, 3, 5])).to eql(-1) }
#   Then { expect(DayOne.chop(4, [1, 3, 5])).to eql(-1) }
#   Then { expect(DayOne.chop(6, [1, 3, 5])).to eql(-1) }
#   Then { expect(DayOne.chop(1, [1, 3, 5, 7])).to eql(0) }
#   # #
#   Then { expect(DayOne.chop(3, [1, 3, 5, 7])).to eql(1) }
#   Then { expect(DayOne.chop(5, [1, 3, 5, 7])).to eql(2) }
#   Then { expect(DayOne.chop(7, [1, 3, 5, 7])).to eql(3) }
#   Then { expect(DayOne.chop(0, [1, 3, 5, 7])).to eql(-1) }
#   Then { expect(DayOne.chop(2, [1, 3, 5, 7])).to eql(-1) }
#   Then { expect(DayOne.chop(4, [1, 3, 5, 7])).to eql(-1) }
#   Then { expect(DayOne.chop(6, [1, 3, 5, 7])).to eql(-1) }
#   Then { expect(DayOne.chop(8, [1, 3, 5, 7])).to eql(-1) }

# end

# RSpec.describe DayTwo do

#   Given(:day_two) {DayTwo.new}

#   Then {day_two != nil}

#   Then { expect(DayTwo.chop(3, [])).to eql(-1) }
#   Then { expect(DayTwo.chop(3, [1])).to eql(-1) }
#   Then { expect(DayTwo.chop(1, [1])).to eql(0) }
#   #
#   Then { expect(DayTwo.chop(1, [1, 3, 5])).to eql(0) }
#   Then { expect(DayTwo.chop(3, [1, 3, 5])).to eql(1) }
#   Then { expect(DayTwo.chop(5, [1, 3, 5])).to eql(2) }
#   Then { expect(DayTwo.chop(0, [1, 3, 5])).to eql(-1) }
#   Then { expect(DayTwo.chop(2, [1, 3, 5])).to eql(-1) }
#   Then { expect(DayTwo.chop(4, [1, 3, 5])).to eql(-1) }
#   Then { expect(DayTwo.chop(6, [1, 3, 5])).to eql(-1) }
#   Then { expect(DayTwo.chop(1, [1, 3, 5, 7])).to eql(0) }
#   # #
#   Then { expect(DayTwo.chop(3, [1, 3, 5, 7])).to eql(1) }
#   Then { expect(DayTwo.chop(5, [1, 3, 5, 7])).to eql(2) }
#   Then { expect(DayTwo.chop(7, [1, 3, 5, 7])).to eql(3) }
#   Then { expect(DayTwo.chop(0, [1, 3, 5, 7])).to eql(-1) }
#   Then { expect(DayTwo.chop(2, [1, 3, 5, 7])).to eql(-1) }
#   Then { expect(DayTwo.chop(4, [1, 3, 5, 7])).to eql(-1) }
#   Then { expect(DayTwo.chop(6, [1, 3, 5, 7])).to eql(-1) }
#   Then { expect(DayTwo.chop(8, [1, 3, 5, 7])).to eql(-1) }

# end
