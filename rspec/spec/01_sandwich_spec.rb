Sandwich = Struct.new(:taste, :toppings)
# NOTE: (alopez) Defining the structure is usually done in another
# directory (e.g. /lib)
# https://ruby-doc.org/core-3.1.1/Struct.html

RSpec.describe 'An ideal sandwich' do
    it 'is delicious' do
        # Arrange
        sandwich = Sandwich.new('delicious',[])

        # Act
        taste = sandwich.taste

        # Assert
        expect(taste).to eq('delicious')
    end
end

