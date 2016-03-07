require 'spec_helper'

describe Mower do
	let(:mower) { FactoryGirl.create(:mower) }
	before do
    	@mower = Mower.new(x: 1, y: 2, headings: "N", commands: "MMMMM")
	end

  subject { @mower }
	it { should respond_to(:x) }
	it { should respond_to(:y) }
	it { should respond_to(:headings) }
	it { should respond_to(:commands) }

	it { should be_valid }

	describe "when is invalid" do
  	before { @mower.x = "aaa" }
  	it { should_not be_valid }
  	before { @mower.x = nil }
  	it { should_not be_valid }

  	before { @mower.y = "aaa" }
  	it { should_not be_valid }
  	before { @mower.y = nil }
  	it { should_not be_valid }

  	before { @mower.headings = "aaa" }
  	it { should_not be_valid }
  	before { @mower.headings = nil }
  	it { should_not be_valid }

  	before { @mower.commands = "aaa" }
  	it { should_not be_valid }
  	before { @mower.commands = nil }
  	it { should_not be_valid }
	end
end