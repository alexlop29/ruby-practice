# frozen_string_literal: true

class Coffee
  def ingredients
    @ingredients ||= []
  end

  def add(ingredient)
    ingredients << ingredient
  end

  def price
    1.00 + ingredients.size * 0.25
  end

  def color
    ingredients.include?(:milk) ? :light : :dark
  end

  def temperatue
    ingredients.include?(:milk) ? 190.0 : 205.0
  end
end

RSpec.configure do |config|
  config.filter_run_when_matching(focus: true)
  config.example_status_persistence_file_path = 'spec/examples.txt'
end

RSpec.describe 'A cup of coffeee' do
  let(:coffee) { Coffee.new }

  it 'costs $1' do
    expect(coffee.price).to eq(1.00)
  end

  context 'with milk' do
    before { coffee.add :milk }

    it 'costs $1.25' do
      expect(coffee.price).to eq(1.25)
    end
  end

  it 'is light in color' do
    pending 'Color not implemented yet'
    expect(coffee.color).to be(:light)
  end

  it 'is cooler than 200 degress Farenheit' do
    pending 'Temperatue not implemented yet'
    expect(coffee.temperatue).to be < 200.0
  end
end
