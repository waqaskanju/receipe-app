# helper method
 require 'rails_helper'
# require 'spec_helper'

# Assert that user is a model
RSpec.describe User, type: :model do
  subject { User.create(name: 'Waqas', email: 'abc@gmail.com', password: '123456') }

  # test 1 name shold not be empty.
  it 'The name should not be empty' do
    subject.name = nil
    expect(subject).to_not be_valid
  end
end