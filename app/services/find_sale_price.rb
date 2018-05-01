# class Walmart
#   def initialize(item)
#     @item = item
#   end
#
#   # def get_item_price
#   #   response = HTTParty.get(`http://api.walmartlabs.com/v1/search?query=` + @item + `&format=json&apiKey=` + WALMART_API_KEY)
#   #   response["items"]["salePrice"]
#   # end
#
#   def self.get_item_price
#     response = RestClient::Request.execute(method: :get, url: 'http://api.walmartlabs.com/v1/trends?format=json', headers: {api_key: [WALMART_API_KEY])
# ')
# end
