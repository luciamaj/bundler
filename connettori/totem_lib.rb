#!/usr/bin/env ruby

require 'json'
require 'open-uri'

data = {
    "name" => "totem_lib",
    "layout" => "totem",
    "topic" => "docufilm"
}

# data: {
#     tematiche: [
#         { name: "ascari", foto: ["ascari_3.jpg", "ascari_2.jpg", "ascari_1.jpg", "repubblica_2.jpg", "repubblica.jpg"], didascalie: ["Ascari bla bla", "Aaascari 2"], },
#         { name: "garibaldi", foto: ["garibaldi_2.jpg", "garibaldi_3.jpg", "garibaldi_4.jpg"], didascalie: ["Ascari bla bla", "Aaascari 2"], },
#     ]
# }
open('http://localhost:8080/swi/service/rest/v1/app-totem') { |content| data["data"] = JSON.parse(content.read) }

puts JSON.generate(data)
