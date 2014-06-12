ranks = []
ranks << CardRank.find_or_create_by(id: 1, name: 'Two', strength: 2)
ranks << CardRank.find_or_create_by(id: 2, name: 'Three', strength: 3)
ranks << CardRank.find_or_create_by(id: 3, name: 'Four', strength: 4)
ranks << CardRank.find_or_create_by(id: 4, name: 'Five', strength: 5)
ranks << CardRank.find_or_create_by(id: 5, name: 'Six', strength: 6)
ranks << CardRank.find_or_create_by(id: 6, name: 'Seven', strength: 7)
ranks << CardRank.find_or_create_by(id: 7, name: 'Eight', strength: 8)
ranks << CardRank.find_or_create_by(id: 8, name: 'Nine', strength: 9)
ranks << CardRank.find_or_create_by(id: 9, name: 'Ten', strength: 10)
ranks << CardRank.find_or_create_by(id: 10, name: 'Jack', strength: 11)
ranks << CardRank.find_or_create_by(id: 11, name: 'Queen', strength: 12)
ranks << CardRank.find_or_create_by(id: 12, name: 'King', strength: 13)
ranks << CardRank.find_or_create_by(id: 13, name: 'Ace', strength: 14)
jocker = CardRank.find_or_create_by(id: 14, name: 'Jocker', strength: 15)

suits = []
suits << CardSuite.find_or_create_by(id: 1, name: 'Spades', strength: 4)
suits << CardSuite.find_or_create_by(id: 2, name: 'Hearts', strength: 3)
suits << CardSuite.find_or_create_by(id: 3, name: 'Diamonds', strength: 2)
suits << CardSuite.find_or_create_by(id: 4, name: 'Clubs', strength: 1)
black = CardSuite.find_or_create_by(id: 5, name: 'Black', strength: 5)
red = CardSuite.find_or_create_by(id: 6, name: 'Red', strength: 6)

id = 1
ranks.each do |rank|
  suits.each do |suite|
    Card.find_or_create_by(id: id, card_rank: rank, card_suite: suite)
    id += 1
  end
end
Card.find_or_create_by(id: 53, card_rank: jocker, card_suite: black)
Card.find_or_create_by(id: 54, card_rank: jocker, card_suite: red)