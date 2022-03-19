# frozen_string_literal: true

# NOTE: (alopez) Defining the structure is usually done in another
# directory (e.g. /lib)
# https://ruby-doc.org/core-3.1.1/Struct.html
Sandwich = Struct.new(:taste, :toppings)

RSpec.describe 'An ideal sandwich' do
  before { @sandwich = Sandwich.new('delicious', []) }
  it 'is delicious' do
    # Arrange
    sandwich = Sandwich.new('delicious', [])

    # Act
    taste = sandwich.taste

    # Assert
    expect(taste).to eq('delicious')
  end

  it 'lets me add toppings' do
    sandwich = Sandwich.new('delicious', [])

    sandwich.toppings << 'cheese'
    toppings = sandwich.toppings

    expect(toppings).not_to be_empty
  end
end
