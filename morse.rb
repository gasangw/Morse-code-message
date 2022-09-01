def decod_char(char)
  morse_codes = {
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
    '--..': 'Z'
  }

  morse_codes.each do |key, value|
    return value if key == char
  end
end

def decod_word(character)
  word = ''
  character.chars.each do |char|
    word += decod_char(char)
  end
end

def decoding(character)
  sentence = ''
  character.split('   ').each do |word|
    sentence += decod_word(word).to_s
  end
  puts sentence
end

decod_char('.-')
decod_word('-- -.--')
decoding('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
