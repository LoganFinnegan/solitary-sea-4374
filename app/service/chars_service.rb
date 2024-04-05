class CharsService					
  def self.call_db(url, params = {})		
    response = connection.get(url) do |request| 		
      request.params = params	
    end		
    JSON.parse(response.body, symbolize_names: true)
  end		
      
  private		
      
  def self.connection	
    Faraday.new('https://last-airbender-api.fly.dev/')		
  end
end