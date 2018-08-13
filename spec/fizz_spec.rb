require_relative "../fizz"

RSpec.describe "fizz" do
  context "Fizz checks" do
    it "returns 'Fizz' for numbers divisible by 3 or with a 3 in them" do
      expect(fizz(9)).to eq "Fizz"
      expect(fizz(13)).to eq "Fizz"
      expect(fizz(33)).to eq "Fizz"
    end
    
    it "returns 'Buzz' for numbers divisible by 5 or with a 5 in them" do
      expect(fizz(10)).to eq "Buzz"
      expect(fizz(200)).to eq "Buzz"
      expect(fizz(25)).to eq "Buzz"
    end

    it "returns 'Fizzbuzz' for combinations" do
      expect(fizz(30)).to eq "FizzBuzz"
      expect(fizz(35)).to eq "FizzBuzz"
      expect(fizz(53)).to eq "FizzBuzz"
    end

    it "returns n when no checks match" do
      expect(fizz(97)).to eq 97
      expect(fizz(2)).to eq 2
    end
  end
end
