require 'spec_helper'

RSpec.describe Trigram, type: :model do
  describe 'attributes' do
    let(:trigram) { Trigram.find(1) }

    it 'has an id' do
      expect(trigram.id).to eq(1)
    end

    it 'has a trigram symbol' do
      expect(trigram.trigram).to eq('☰')
    end

    it 'has a binary' do
      expect(trigram.binary).to eq('111')
    end
    
    it 'has an element' do
      expect(trigram.element).to eq('Heaven/Firmament')
    end
  end
end