require 'httparty'
require '../http_status_codes'
require '../api_exceptions'
class Client
  include HTTParty
  include ApiExceptions
  include HttpStatusCodes
  base_uri 'api.itunes.apple.com'.freeze

  def search(name)
    response = self.class.get("/search?term=#{name}")
    status(response)
  end

  def lookup(idType, id)
    response = self.class.get("/lookup?#{idType}=#{id}")
    status(response)

  end



  def status(response)
    data = response.body
    puts data

    case response.code
    when HTTP_BAD_REQUEST_CODE
      puts BadRequestError
    when HTTP_NOT_FOUND_CODE
      puts NotFoundError
    when HTTP_OK_CODE
      puts "OK"
    else
      puts ApiError
    end

  end
end

iTunes_api = Client.new
iTunes_api.search('travolta')



