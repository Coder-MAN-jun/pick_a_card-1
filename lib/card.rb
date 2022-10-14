# Класс карты
# 
# Может сгенерить карту с заданными параметрами в т.ч джокера и показать 
# её в удобном виде.
class Card
	# Массивы с наборами мастей и достоинств
	VALUES = %w(2 3 4 5 6 7 8 9 10 J Q K A).freeze

	# Буби, Черви, Крести, Пики
	SUITS = %w(Diamonds Hearts Clubs Spaders).freeze

	# Создаём новую карту с заданными параматрами
	def initialize(value, suit, joker = false)
		@value = value
		@suit = suit
		@joker = joker
	end

	# Возвращаем информацию для печати карты
	# Этот метод вызывается  у объекта при передаче его в puts
	def to_s
		@joker ? 'joker' : "#{@value}#{@suit[0].downcase}"
	end
end
