#!/usr/bin/env ruby

# WANT_JSON

require "json"

hash = {"changed": false, "Hallo": "Welt"}

if ARGV[0]
  file = File.read ARGV[0]
  json = JSON.parse file
  hash["msg"] = json["msg"]
end

# File.open('/test.txt', 'w') { |file| file.write("your text") }

puts hash.to_json
