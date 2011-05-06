require 'spec_helper'

describe User do
   subject { User.new(:email => "pepe@example.com", :password => "pepepe", :password_confirmation => "pepepe") }
   describe 'validations' do
	it 'should validates the presence of first_name' do
	   subject.should_not be_valid
	   subject.errors.should include(:first_name)
	end
   end
end
