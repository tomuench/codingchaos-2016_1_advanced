require_relative 'key_module'

module Decrypt
  include KeyModule

  def decrypt(value)
    encrypted = ''
    value = value.downcase
    key = KEY * value.length

    (0..value.length).each do |position|
      encrypted += CHARACTERS[dec_position(value[position], key[position])]
    end
    encrypted
  end


end