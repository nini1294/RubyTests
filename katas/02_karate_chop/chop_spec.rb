require 'rspec/given'
require_relative 'day_one.rb'
require_relative 'day_two.rb'
require_relative 'day_three.rb'

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
