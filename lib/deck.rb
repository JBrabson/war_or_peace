class Deck
  attr_reader :cards

  def initialize(cards)
    @cards = cards
  end

  def rank_of_card_at(index)

    #return 0 if ...#
    if cards[index].nil?
      0
    else
      cards[index].rank
    end
  end

  def high_ranking_cards
    face_cards = []
    cards.each do |card|
      if card.rank > 10
      face_cards << card
      end
    end
    face_cards
  end

  def percent_high_ranking
    (((high_ranking_cards.count.to_f) / (cards.count.to_f)) * 100).round(2)
  end

  def remove_card
    @cards.shift
  end

  def add_card(card)
    @cards.push(card)
  end

  def empty
    cards.count == 0
  end
end
