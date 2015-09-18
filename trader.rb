class Trader
	attr_accessor :name

	def initialize(name, total_money)
		@name = name
		@total_money = total_money
	end

	def buy_stock_with_full_money(money_per_stock)
		@num = (@total_money / money_per_stock).to_i
		puts "#{@name} buy #{@num} stocks"
	end

	def sell_stock_with_full_num(money_per_stock)
		current_money = money_per_stock * @num
		earn_money = current_money - @total_money 
		@total_money = current_money

		puts "#{@name} sell #{@num} stocks"
		puts "#{@name} has #{@total_money} after he sells all stocks"

		puts "#{@name} earned #{earn_money} money. Can you give me a half of money? You are so rich. I will bless you will earn much money in next deal if you do." if earn_money > 0
		puts "#{@name} loss #{-earn_money} money. This guy is so stupid" if earn_money < 0 
		puts "#{@name} doesn't earned #{earn_money} money, What are you doing, man?" if earn_money == 0
	end
end


if __FILE__ == $0
	rich_bang = Trader.new "帮豪", 1000000		##give you 1000000. I'm so generous, isn't it?

	puts "#{rich_bang.name} first deal:"
	rich_bang.buy_stock_with_full_money 10
	rich_bang.sell_stock_with_full_num 10
	puts "#{rich_bang.name} is not happy, because this time he didn't earn money, so he believes he will earn much money next time\n"

	puts "\n#{rich_bang.name} second deal:"
	rich_bang.buy_stock_with_full_money 7.5
	rich_bang.sell_stock_with_full_num 35.2
	puts "In this time, god help him. #{rich_bang.name} has earned much money. So he tell himself: Earning money is so easy, you see."

	puts "\nMONOLOGUE：But this time， he doesn't realise something happend. The stock is not good then before."
	puts "\n#{rich_bang.name} third deal:"
	rich_bang.buy_stock_with_full_money 35.4
	rich_bang.sell_stock_with_full_num 0.1
	puts "Oh, my god. What you have done? You just kill me."
end
