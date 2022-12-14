def decode_char(code)
  characters = {
    '.-': 'A',
    '-...': 'B',
    '-.-.': 'C',
    '-..': 'D',
    '.': 'E',
    '..-.': 'F',
    '--.': 'G',
    '....': 'H',
    '..': 'I',
    '.---': 'J',
    '-.-': 'K',
    '.-..': 'L',
    '--': 'M',
    '-.': 'N',
    '---': 'O',
    '.--.': 'P',
    '--.-': 'Q',
    '.-.': 'R',
    '...': 'S',
    '-': 'T',
    '..-': 'U',
    '...-': 'V',
    '.--': 'W',
    '-..-': 'X',
    '-.--': 'Y',
    '--..': 'Z',
    '.----': '1',
    '..---': '2',
    '...--': '3',
    '....-': '4',
    '.....': '5',
    '-....': '6',
    '--...': '7',
    '---..': '8',
    '----.': '9',
    '-----': '0'
  }

  characters[code.to_sym]
end

def decode_letter(code, dict: decode_char(code))
  dict[code] ? dict[code].upcase : ''
end

def decode_word(ciphered)
  word = ''
  ciphered.split.each do |code|
    word += decode_char(code)
  end
  word
end

def decrypt(ciphered)
  sentence = ''
  ciphered.split('  ').each do |word|
    sentence += "#{decode_word(word)} "
  end
  puts sentence
end

decrypt('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
