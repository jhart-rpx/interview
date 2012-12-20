class NumberFinder
  def initialize(source_text)
    @source_text = source_text
  end

  def self.execute(source_text)
    numbers_as_strings = source_text.scan(/\d+/)
    numbers_as_strings.map {|element| element.to_i }
  end
end

describe "The Interview" do
  it "should transform one array into another array" do
    transform([1, 2, 3, 4]).should eq([2, 3, 4, 5])
  end

  it "should square one arary into another array" do
    square([1, 2, 3]).should eq([1, 4, 9])
  end
end

describe NumberFinder do
  context "valid instance" do
    xit "should take a string parameter" do
      expect {
        NumberFinder.new("hello world")
      }.to_not raise_error
    end

    describe "#find_numbers" do
      xit "should be able to find numbers within the source text" do
        number_finder = NumberFinder.new("There was 1 kitty who had 4 kittens and they all had 10 milks.")
        number_finder.find_numbers.should eq([1,4,10])
      end
    end
  end

  context "invalid instance" do
    xit "should be raise an error" do
      expect {
        NumberFinder.new
      }.to raise_error
    end
  end

  it "should be able to execute in one line of code" do
    NumberFinder.execute("100 planes and 4 birds and 3 monkeys").should eq([100,4,3])
  end
end

def transform(array)
  array.map { |element| element += 1 }
end

def square(array)
  array.map { |element| element ** 2 }
end

