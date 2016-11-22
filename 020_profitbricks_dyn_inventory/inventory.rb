#!/usr/bin/env ruby

require 'json'
require 'net/http'
require 'io/console'

datacenter='dc_green'             # Name of the Datacenter
username="support@versioneye.com" # Profitbricks Username or Email
password=File.readlines("passwd").first.strip

def self.fetch_http(url, username = nil, password = nil)
  uri = URI( url )
  req = Net::HTTP::Get.new(uri)
  if username && password
    req.basic_auth username, password
  end
  Net::HTTP.start(uri.hostname, uri.port, :use_ssl => uri.scheme == 'https') {|http|
    http.request(req)
  }
end

hash = {
    :profitbricks => {
        :hosts => [],
        :vars => {}
    }
}

res = fetch_http 'https://api.profitbricks.com/rest/v2/datacenters', username, password
datacenters = JSON.parse res.body
datacenters['items'].each do |dc|
  res2 = fetch_http dc['href'], username, password
  dc_detail = JSON.parse res2.body
  next if !dc_detail['properties']['name'].to_s.eql?(datacenter)

  res3 = fetch_http dc_detail['entities']['servers']['href'], username, password
  servers = JSON.parse res3.body
  servers['items'].each do |server|
    res4 = fetch_http server['href'], username, password
    server_detail = JSON.parse res4.body
    nic_href = server_detail['entities']['nics']['href']

    res5 = fetch_http nic_href, username, password
    nic  = JSON.parse res5.body
    nic_item_href = nic['items'][0]['href']

    res6 = fetch_http nic_item_href, username, password
    nic_element = JSON.parse res6.body
    hash[:profitbricks][:hosts] << nic_element['properties']['ips'][0]
  end
end

puts hash.to_json
