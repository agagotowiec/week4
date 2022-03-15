require 'time_error'

RSpec.describe TimeError do
  it "returns difference between local time and server time" do
  fake_requester = double :fake_requester
  allow(fake_requester).to receive(:get).with(URI("https://worldtimeapi.org/api/ip")).and_return('{"abbreviation":"GMT","client_ip":"2a00:23c8:8702:3000:3d0a:96b9:86d:517a","datetime":"2022-03-15T09:23:52.872438+00:00","day_of_week":2,"day_of_year":74,"dst":false,"dst_from":null,"dst_offset":0,"dst_until":null,"raw_offset":0,"timezone":"Europe/London","unixtime":1647336232,"utc_datetime":"2022-03-15T09:23:52.872438+00:00","utc_offset":"+00:00","week_number":11}')
  current_time = Time.new(2022, 3, 15, 9, 23, 52)
  time_error = TimeError.new(fake_requester)
 expect(time_error.error(current_time)).to eq 0.872438
end
end
# to make this testable, you will need 
# to create a double for Net:HTTP 
# #and also deal with the behaviour 
# of Time.now which is also non-deterministic.