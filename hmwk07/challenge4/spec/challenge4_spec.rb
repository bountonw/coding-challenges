## Code Challenge 4:  Factorial

# - Writing a function that computes the factorial of a positive integer greater than
#   or equal to zero using recursion.  A recursive function is a function which calls
#   itself.  Furthermore, a recursive function is one which has two cases:

#   - a base case which should terminate execution and return a result

#   - a recursive case which should call itself with a different set of
#     arguments

#   ```
#   >> Challenge4.factorial(0)
#   => 1

#   >> Challenge4.factorial(1)
#   => 1

#   >> Challenge4.factorial(50)
#   => 30414093201713378043612608166064768844377641568960512000000000000
#   ```

#   In order to complete this challenge, all specs must pass and you can run them
#   by doing the following:

#   ```
#   $ cp /path/to/homework-07/challenge4
#   $ rspec
#   ```

#   The expected output is as follows:

#   ```
#   ...

#   Finished in 0.00144 seconds (files took 0.12384 seconds to load)
#   3 examples, 0 failures
#   ```

#   Note:  You are not to use any loop structures which include each, for, while,
#          and so on.


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
