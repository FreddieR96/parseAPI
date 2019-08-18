require 'httparty'

url = 'https://api.nhs.uk/search/?query=richmond+dentist'

response = HTTParty.get(
	url,
	headers: { "subscription-key": [ENTER_SUBSCRIPTION_KEY] }
	)

response.parsed_response
puts response
response["results"].each do |f|
puts f["title"]
end