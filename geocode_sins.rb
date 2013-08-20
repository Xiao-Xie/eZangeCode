#!/usr/bin/ruby
require 'net/http' 
require File.join(File.dirname(__FILE__), '/config/environment')

require 'sin'

sins = Sin.find(:all)
print sins.size.to_s + " sins found.\n"

sins.each do |v|
  parameters = '&sensor=false'
  uri = 'http://maps.googleapis.com/maps/api/geocode/json?address=' + v.address.gsub(' ', '+') + parameters
         

  res = Net::HTTP.get_response(URI.parse(uri))
  # print res.body
  hash = ActiveSupport::JSON.decode(res.body)
  print 'address: ' + v.address + "\n"
  print 'latitue: ' + hash['results'][0]['geometry']['location']['lat'].to_s + "\n"
  print 'longitude: ' + hash['results'][0]['geometry']['location']['lng'].to_s + "\n"

  v.lat  =  hash['results'][0]['geometry']['location']['lat'];
  v.lon =  hash['results'][0]['geometry']['location']['lng'];

  if v.save
    print "Sin was saved successfully.\n"
  else
    print "Sin was not saved!\n"
  end

end
