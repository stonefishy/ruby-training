ary = ["ruby", "pathon", "c#", "javascript"]

sorted_ary = ary.sort
print sorted_ary

sorted_ary = ary.sort { |a, b| a.length <=> b.length }
print sorted_ary

sorted_ary = ary.sort { |a, b| a.reverse <=> b.reverse}
print sorted_ary
