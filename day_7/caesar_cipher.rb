=begin
## Ceasar Cipher

Also known as a shift cipher, the Ceasar Cipher is one of the oldest and
simplest encoding techniques.  A Ceasar Cipher works by shifting the alphabet
by a set number of letters down the alphabet.  For example, with a left shift
of 3, 'D' would be replaced by 'A', 'E' would be replaced by 'B', and so on.
See below for a full alphabet example with a left shift of 3:

```
plain:  ABCDEFGHIJKLMNOPQRSTUVWXYZ
cipher: XYZABCDEFGHIJKLMNOPQRSTUVW
```

Create a file named caesar_cipher.rb and within that file, write a program that
 will take any string, and encode it based on a shift value provided by the user.
   The interaction pattern for this program might look something like this:

```
cipher = CeasarCipher.new
cipher.encode("Hello World", 5)
=> "CZGGJ RJMGY"
```
=end

def cipher

  puts "What string would you like to encrypt?"
  string = gets.chomp

  puts "Please enter your encryption shift value"
  shift = gets.chomp.to_i



  arr = ("a".."z").to_a

  new_string =
  string.downcase.split("").each do |letter|
    if ' !"#$%&\'()*+,-./:;<=>?@[\]^_`{|}~'.include? letter
      letter = letter
    else
      letter.replace(arr[(arr.index(letter).to_i + shift)])
    end

  end


p new_string.join.strip



end

cipher
