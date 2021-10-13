require_relative '../citizen'

describe Citizen do
  describe '#can_vote?' do
    it 'returns true if the citizen is 18 or older' do
      pablo = Citizen.new('Pablo','Queen', 46)
      expected = true
      actual = pablo.can_vote?
      expect(actual).to eq(expected)
    end

    it 'returns false if the citizen is younger than 18' do
      pablo = Citizen.new('Pablo','Queen', 16)
      expected = false
      actual = pablo.can_vote?
      expect(actual).to eq(expected)
    end
  end
  describe '#full_name' do
    it 'returns full name of the citizen' do
      stevie = Citizen.new('Stevie','nicks', 25)
      expected = 'Stevie Nicks'
      actual = stevie.full_name
      expect(actual).to eq(expected)
    end
  end
end
