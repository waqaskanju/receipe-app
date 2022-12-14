# helper method
require 'rails_helper'
# require 'spec_helper'

# Assert that food is a model
RSpec.describe Food, type: :model do
  subject do
    user1 = User.create(id: 2, name: 'Waqar', email: 'abc@gmail.com', password: '123456')

    Food.create(name: 'Waqas', measurement_unit: 'abc@gmail.com', price: '123456', quanity: '123456', id: user1.id)
  end

  # test 1 name shold not be empty.
  it 'The name should not be empty' do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  # test 2 price should be integer
  it 'preparation time an integer' do
    expect(subject.price).to be_an_integer
  end

  # test 3 price should be integer
  it 'preparation time an integer' do
    expect(subject.quanity).to be_an_integer
  end
end
