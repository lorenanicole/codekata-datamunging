require './datamunging.rb'

describe SmallestDiff do

  describe "#initalize" do

    context "when provided a valid filename input" do
      it "creates a new SmallestDiff object with a filename" do
        w = SmallestDiff.new(filename: "weather.dat")
        expect(w.class).to eq SmallestDiff
      end

      it "creates an array of data" do
        w = SmallestDiff.new(filename: "weather.dat")
        w.data.class.should eq(Array)
      end
    end

    context "when missing a valid filename input" do
      it "raises an argument error when no filename is specified" do
        expect{ SmallestDiff.new }.to raise_error
      end
    end

  end

  describe "#smallest_diff" do
    context "when provided valid integer inputs" do
      it "finds a integer as the smallest difference between a first and last value" do
        w = SmallestDiff.new(filename: "weather.dat")
        w.smallest_diff(0,1,2)
        expect(w.smallest.class).to eq Fixnum
      end

      it "finds a positive integer as the smallest difference" do
        w = SmallestDiff.new(filename: "weather.dat")
        w.smallest_diff(0,1,2)
        expect(w.smallest).to be > 0
      end
    end

  end

end
