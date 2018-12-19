require('minitest/autorun')
require('minitest/rg')

require_relative('../card.rb')
require_relative('../cardgame.rb')

class CardTest < MiniTest::Test
   def setup
     @card1 =  Card.new("Hearts", 4)
     @card2 =  Card.new("Diamonds", 11)
     @card3 =  Card.new("Clubs", 1)
     @card4 =  Card.new("Spades", 13)
     @card5 =  Card.new("Hearts", 7)
     @card6 =  Card.new("Clubs", 9)
     @card7 =  Card.new("Clubs", 11)
     @cards_array = [@card1, @card2, @card3, @card4, @card5, @card6]

   end

   def test_checkforAce__fail
       assert_equal(false, CardGame.check_for_ace(@card1))
   end

   def test_checkforAce__pass
       assert_equal(true, CardGame.check_for_ace(@card3))
   end

   def test_highest_card__card4_wins
       assert_equal("13 of Spades", CardGame.highest_card(@card1,@card4))
   end

   def test_highest_card__card6_wins
       assert_equal("9 of Clubs", CardGame.highest_card(@card1,@card6))
   end

   def test_cards_total
     assert_equal("You have a total of 45", CardGame.cards_total(@cards_array))
   end


   def test_highest_card__cards_are_equal
       assert_equal("Cards are equal", CardGame.highest_card(@card2,@card7))
   end


end
