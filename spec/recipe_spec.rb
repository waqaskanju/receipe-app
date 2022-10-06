# frozen_string_literal: true

# helper method
require 'rails_helper'
# require 'spec_helper'

# Assert that receipe is a model
RSpec.describe User, type: :model do
  subject
  user1 = User.create(id: 3, name: 'Waqar', email: 'abc@gmail.com', password: '123456')
  Recipe.create(name: 'Waqas', preparation_time: '2', description: 'Pakistani food', public: 'yes',
                user_id: user1.id)

  # test 1 name shold not be empty.
  it 'The name should not be empty' do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  # test 2 desc shold not be empty.
  it 'The description should not be empty' do
    subject.description = nil
    expect(subject).to_not be_valid
  end

  # tes 3 preparatoin_time should be integer
  it 'preparation time an integer' do
    expect(subject.preparation_time).to be_an_integer
  end
end
