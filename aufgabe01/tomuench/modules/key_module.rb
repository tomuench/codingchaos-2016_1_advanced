module KeyModule
  KEY = 'chaostreffosnabrueck'
  CHARACTERS = ("a".."z").to_a + [' ','']
  POSITIONS = (0..25).to_a

  def add_position(char_a, char_b)
    return 26 if char_a == ' '
    return 27 if char_a == nil
    (CHARACTERS.index(char_a) + CHARACTERS.index(char_b)) % 26
  end

  def dec_position(char_a,char_b)
    return 26 if char_a == ' '
    return 27 if char_a == nil
    (CHARACTERS.index(char_a) - CHARACTERS.index(char_b)) % 26
  end
end