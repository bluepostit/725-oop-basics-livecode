require_relative '../slot_machine'

def test_scenario(reels, expected_result)
  it "should return #{expected_result} when given #{reels[0]}, #{reels[1]}, #{reels[2]}" do
    slot_machine = SlotMachine.new
    actual = slot_machine.score(reels)
    expect(actual).to eq(expected_result)
  end
end

describe SlotMachine do
  describe '#score' do
    it 'returns 0 when given 3 different items' do
      slot_machine = SlotMachine.new
      actual = slot_machine.score(%w[star bell seven])
      expected = 0
      expect(actual).to eq(expected)
    end

    test_scenario(%w[joker joker joker], 50)
    test_scenario(%w[star star star], 40)
    test_scenario(%w[bell bell bell], 30)
    test_scenario(%w[seven seven seven], 20)
    test_scenario(%w[cherry cherry cherry], 10)

    test_scenario(%w[star star joker], 20)
    test_scenario(%w[bell joker bell], 15)
    test_scenario(%w[joker seven seven], 10)
    test_scenario(%w[cherry cherry joker], 5)
    test_scenario(%w[joker cherry joker], 25)
  end
end
