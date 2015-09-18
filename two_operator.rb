class Point
	attr_reader :x, :y

	def initialize(x, y)
		@x, @y = x, y
	end

	def +(other)
		self.class.new(x + other.x, y + other.y)
	end

	def -(other)
		self.class.new(x - other.x, y - other.y)
	end

	def +@
		dup
	end

	def -@
		self.class.new(-x ,-y)
	end

	def ~@
		self.class.new(-y, x)
	end

	def [](index)
		case index
		when 0
			x
		when 1
			y
		else
			raise ArgumentError, "out of range (#{index})"
		end
	end

	def []=(index, val)
		case index
		when 0
			self.x = val
		when 1
			self.y = val
		else
			raise ArgumentError, "out of range (#{index})"
		end
	end


	def display
		"(#{x}, #{y})"
	end
end

if __FILE__ == $0
	p1 = Point.new(1, 2)
	p2 = Point.new(3, 4)
	p = p1 + p2
	puts p.display

	p = p2 - p1
	puts p.display

	puts (-p1).display
	puts (+p1).display

	puts ("(#{p1[0]}, #{p1[1]})")
	p1[0]= 10
	puts p1.display
end


