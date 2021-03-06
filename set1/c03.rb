# The hex encoded string:
#
# 1b37373331363f78151b7f2b783431333d78397828372d363c78373e783a393b3736
# ... has been XOR'd against a single character. Find the key, decrypt the message.

require_relative '../ciphers/character_xor'

INPUT_C3 = '1b37373331363f78151b7f2b783431333d78397828372d363c78373e783a393b3736'

def test
  input = Hex.to_ascii(INPUT_C3)
  decoded_input(input, best_key(input)) == "Cooking MC's like a pound of bacon"
end
