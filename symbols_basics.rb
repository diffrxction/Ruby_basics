strings = ["HTML", "CSS", "JavaScript", "Python", "Ruby"]

# Changing each string in an array to a symbol.
symbols = []
strings.each do |s|
  symbols.push(s.to_sym) #symbols.push(s.intern) also works fine.
end
print symbols
