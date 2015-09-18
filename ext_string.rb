class String
	def count_word
		ary = self.split(/\s+/)	#用空格分割接收者
		ary.size
	end
end
