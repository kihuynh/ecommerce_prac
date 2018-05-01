class Bestseller
  def self.get_bestseller_list
    response = RestClient::Request.execute(method: :get, url: 'https://api.nytimes.com/svc/books/v3/lists/combined-print-and-e-book-fiction.json', headers: {api_key: ['NYT_API_KEY']})
    JSON.parse(response)["results"]["books"]
  end
end
