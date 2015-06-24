require 'spec_helper'

describe SampleModel do 
  let(:sample_instance) {SampleModel.new}
  describe "#test_model" do
    it "returns the value of the method" do
      expect(sample_instance.test_method).to eq("it works!")
    end
  end
end
