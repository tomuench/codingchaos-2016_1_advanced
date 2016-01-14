require 'net/http'
require 'json'
class Aufgabe02
  GITHUB = 'https://api.github.com/repos'

  USER = 'user'
  API_KEY= 'key'

  def pulls(user, repo)
    url = URI.parse("#{GITHUB}/#{user}/#{repo}/pulls")
    req = Net::HTTP::Get.new(url.to_s)
    req.basic_auth USER, API_KEY
    http = Net::HTTP.new(url.host, url.port)
    http.use_ssl = (url.scheme == "https")

    parse(http.request(req).body)
  end

  def parse(body)
    ret_string = ''
    json_object = JSON.parse(body)
    json_object.each do |object|
      ret_string += "#{object['user']['login']}\t#{object['number']}\t#{object['title']}\r\n"
    end
    ret_string
  end
end

if ARGV.length == 2
  Aufgabe02.new.pulls(ARGV[0], ARGV[1])
end