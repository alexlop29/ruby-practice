
Rspec.describe 'A cup of coffeee' do
    let(:coffee) { Coffee.new }

    it 'costs $1' do
        expect(cofeee.price).to eq(1.00)
    end

    context 'with milk' do
        before { cofeee.add :milk }

        it 'costs $1.25' do
            expect(coffee.price).to eq(1.25)
        end
    end
end