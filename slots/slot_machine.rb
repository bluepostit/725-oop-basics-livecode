class SlotMachine
  def score(reels)
    score = 0
    score = 50 if reels.uniq.count == 1 && reels.include?('joker')
    score = 40 if reels.uniq.count == 1 && reels.include?('star')
    score = 30 if reels.uniq.count == 1 && reels.include?('bell')
    score = 20 if reels.uniq.count == 1 && reels.include?('seven')
    score = 10 if reels.uniq.count == 1 && reels.include?('cherry')

    score = 25 if reels.count('joker') == 2
    score = 20 if reels.count('star') == 2 && reels.include?('joker')
    score = 15 if reels.count('bell') == 2 && reels.include?('joker')
    score = 10 if reels.count('seven') == 2 && reels.include?('joker')
    score = 5 if reels.count('cherry') == 2 && reels.include?('joker')
    return score
  end
end
