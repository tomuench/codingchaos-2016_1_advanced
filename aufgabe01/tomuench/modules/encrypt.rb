require_relative 'key_module'

module Encrypt
  include KeyModule

  def encrypt(value)
    encrypted = ''
    value = value.downcase
    a = Array.new
    key = KEY * value.length
    a.index
    (0..value.length).each do |position|
      encrypted += CHARACTERS[add_position(value[position], key[position])]
    end
    encrypted
  end

end