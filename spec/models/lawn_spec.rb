require 'spec_helper'

describe Lawn do
	let(:lawn) { FactoryGirl.create(:lawn) }
	before do
    	@lawn = Lawn.new(width: 5, height: 5)
	end

  subject { @lawn }
	it { should respond_to(:width) }
	it { should respond_to(:height) }

	it { should be_valid }

	describe "when is invalid" do
    	it { 
    		@lawn.width = nil
    		should_not be_valid 
    	}
    	before { @lawn.width = "aaa" }
    	it { should_not be_valid }
	end
end
