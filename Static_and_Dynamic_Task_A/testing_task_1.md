### Testing task 1:

# Carry out static testing on the code below.
# Comment on any errors that you see below.
```ruby
### Testing task 2 code:

# Carry out dynamic testing on the code below.
# Correct the errors below that you spotted in task 1.

require_relative('card.rb')
class CardGame


  def checkforAce(card)  # should have self.checkforAce to be accessible
                         # seem to be using wrong camel case instead of snake, should be check_for_ace
    if card.value = 1    # Should be == for comparison, = assigns.
      return true
    else
      return false
    end
  end

  dif highest_card(card1 card2)  # should be def, should have self.highest_card to be accessible from the class,
                                #  also card1 & card2 should have a comma between
  if card1.value > card2.value   # Is ace higher despite only having a value of one?
    return card.name  # should be card1.name
                      # need to add the @name attribute to the Card class for this to work,
                      # returning the suit seems pointless as they could both have the same suit.
  else
    card2 # presume this should be card2.name, also better to explicit return than implicit.
          # what if the cards are equal, this will always return card2.name when they are?
  end
end
end    # Too many 'end's

def self.cards_total(cards)
  total    # should set total to a default value of 0.
  for card in cards
    total += card.value
    return "You have a total of" + total  # will return after the 1st iteration, should be outside the for loop
  end                                     # there will be no space between the return string and the total
end                                       # total is an integer, it would be clearer to run the method .to_s on
                                          # it to convert it to a string.


```
