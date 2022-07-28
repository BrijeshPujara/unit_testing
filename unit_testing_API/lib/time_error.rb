require 'date'
require 'json'
require 'net/http'

class TimeError
  # Returns difference in seconds between server time
  # and the time on this computer

  def initialize(requester)
    @requester = requester
  end

  def error(time) # to allow testing current time without values changing (Time.now - will update)
    
    return get_server_time - time
  end

  private

  def get_server_time
    text_response = @requester.get(URI("https://worldtimeapi.org/api/ip"))
    json = JSON.parse(text_response)
    return DateTime.parse(json["utc_datetime"]).to_time
  end
end

# request_time = TimeError.new(Net::HTTP)
# p request_time.error