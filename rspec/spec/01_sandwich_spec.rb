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

