#using // create regexp
reg = /Ruby/
puts reg.class       #=> Regexp

#using Regexp.new method create regexp
reg = Regexp.new("Ruby")
puts reg.class       #=> Regexp

#using % symbol to create regexp
reg = %r(Ruby)
puts reg.class       #=> Regexp

reg = %r<Ruby>
puts reg.class       #=> Regexp

reg = %r|Ruby|
puts reg.class       #=> Regexp

reg = %r!Ruby!
puts reg.class        #=> Regexp
