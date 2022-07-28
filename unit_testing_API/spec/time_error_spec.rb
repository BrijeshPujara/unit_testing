require 'net/http'
require "time_error"

RSpec.describe TimeError do
#   it "returns the difference time between the server and local time" do
#     request_time = TimeError.new
#     expect(request_time.error).to eq "???"  
#   end

    it "returns the difference time between the server and local time" do
        fake_request = double(:requester)
        expect(fake_request).to receive(:get).with(URI("https://worldtimeapi.org/api/ip")).and_return('{"abbreviation":"BST","client_ip":"2a00:23c8:7285:cb01:c8c3:d2ec:a429:fe77","datetime":"2022-07-28T19:47:55.116852+01:00","day_of_week":4,"day_of_year":209,"dst":true,"dst_from":"2022-03-27T01:00:00+00:00","dst_offset":3600,"dst_until":"2022-10-30T01:00:00+00:00","raw_offset":0,"timezone":"Europe/London","unixtime":1659034075,"utc_datetime":"2022-07-28T18:47:55.116852+00:00","utc_offset":"+01:00","week_number":30}')
        request_time = TimeError.new(fake_request)
        current_time = DateTime.parse("2022-07-28 19:49:20.968925 +0100").to_time
        expect(request_time.error(current_time)).to eq -85.852073
    end

end
