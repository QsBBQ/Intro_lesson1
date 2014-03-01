#
#
#
a = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

a.each {|e| puts e}

a.each {|e| puts e if e > 5}


a.select{|e| true }

a.select{|e| e % 2 == 1}

a.select{|e| e.odd?}

a << 11

a.push(11)
puts a

a.unshift(0)

a.pop

a << 3

a.uniq

a.uniq!

#Hashes have key value pairs arrays are index based.
#

h = {a: 1, b: 2, c: 3}
h[:b]


h = {a: 1, b: 2, c: 3, d: 4, e: 5}
h.each {|k,v| h.delete(k) if v < 3.5}



