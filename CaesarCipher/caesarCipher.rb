 def caesar_cipher(string, key)
  alphabet = Array('a'..'z')
  h1 = Hash[alphabet.zip(alphabet.rotate(key))]
  # We create a hash in which the elements of the initial "alphabet" array points to its replacement.
  # For ex if key = 2 then "a"=>"c" i.e. a points to c and so on
  # h = Hash[alphabet.zip(alphabet.rotate(key))]

  alphabet = Array('A'..'Z')
  h2 = Hash[alphabet.zip(alphabet.rotate(key))]

  final = h1.merge(h2)

  encrypted = string.chars.map {|i| final.fetch(i, i)}
  return encrypted.join
end

##############################################
######             TESTS                ######
##############################################

def test_caesar_cipher(plain, encrypted, key)
  if encrypted == caesar_cipher(plain, key)
    puts plain + " was encrypted successfully"
  else
    puts "Problem with encryption"
  end
end

test_caesar_cipher("hello", "jgnnq", 2)
test_caesar_cipher("Hell0", "Jgnn0", 2)
test_caesar_cipher("another-Versi0n", "zmnsgdq-Udqrh0m", -1)
test_caesar_cipher("t     h%s", "v     j%u", 2)