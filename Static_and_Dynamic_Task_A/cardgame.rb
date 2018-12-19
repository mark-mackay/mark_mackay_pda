require_relative('card.rb')
class CardGame


  def self.check_for_ace(card)
    if card.value == 1
      return true
    else
      return false
    end
  end

  def self.highest_card(card1, card2)
    if card1.value == card2.value
      return "Cards are equal"
    elsif card1.value > card2.value  
      return card1.name
    else
      return card2.name
    end
  end

  def self.cards_total(cards)
    total = 0
    for card in cards
      total += card.value
    end
    return "You have a total of " + total.to_s
  end
end
