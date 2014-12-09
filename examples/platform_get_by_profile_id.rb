require 'nextcaller_client'

username = 'XXXXX'
password = 'XXXXX'
sandbox = false
platform_username = 'user12345'
profile_id = '97d949a413f4ea8b85e9586e1f2d9a'

client = NextcallerClient::NextCallerPlatformClient.new(username, password, sandbox)

begin
  response_content = client.get_by_profile_id(profile_id, platform_username)
  puts response_content
rescue ArgumentError => error
  puts error.message
rescue NextcallerClient::HttpException => error
  puts error.message
  puts error.content
end
# Response example:
# {
#   {
#     "id"=>"97d949a413f4ea8b85e9586e1f2d9a", 
#     "first_name"=>"Jerry", 
#     "middle_name"=>"", 
#     "last_name"=>"Seinfeld", 
#     "name"=>"Jerry Seinfeld", 
#     "language"=>"English", 
#     "phone"=>[
#       {
#         "number"=>"2125558383", 
#         "resource_uri"=>"/v2/records/2125558383/"
#       }
#     ], 
#     "carrier"=>"Verizon Wireless", 
#     "address"=>[
#       {
#         "city"=>"New York", 
#         "extended_zip"=>"", 
#         "country"=>"USA", 
#         "line1"=>"129 West 81st Street", 
#         "line2"=>"Apt 5a", 
#         "state"=>"NY", 
#         "zip_code"=>"10024"
#       }
#     ], 
#     "line_type"=>"", 
#     "department"=>"not specified", 
#     "resource_uri"=>"/v2/users/97d949a413f4ea8b85e9586e1f2d9a/"
#   }
# }