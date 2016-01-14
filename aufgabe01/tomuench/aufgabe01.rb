require_relative 'modules/encrypt'
require_relative 'modules/decrypt'
class Aufgabe01
  include Encrypt
  include Decrypt
end

#Annahme von Eingaben
if ARGV[0] == 'ENC'
  puts Aufgabe01.new.encrypt(ARGV[1])
elsif ARGV[0] == 'DEC'
  puts Aufgabe01.new.decrypt(ARGV[1])
else
  puts "EIngabe mit <ENC/DEC> <text>"
end