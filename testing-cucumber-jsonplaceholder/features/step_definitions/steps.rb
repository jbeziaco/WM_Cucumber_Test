#DELETE - Deleting a Post
Given(/^that i send a delete request with the post id "([^"]*)"$/) do |id|
	@response = HTTParty.delete("http://jsonplaceholder.typicode.com/posts/" + id)
end

#GET - Getting Single Post
Given(/^that i send a get request that returns a post with the id "([^"]*)"$/) do |id|
   @response = HTTParty.get("http://jsonplaceholder.typicode.com/posts/" + id)
	puts "Get Finished"
end

#GET - Getting All Posts
Given(/^that i send a successfull post that returns a list of all the posts$/) do
 @response = HTTParty.get("http://jsonplaceholder.typicode.com/posts")
 puts "Get Finished"
end


#PUT - Updating Post
Given(/^that i send a successfull put updating the post id "([^"]*)" with the title "([^"]*)"$/) do |id, title|
  	@response = HTTParty.put('http://jsonplaceholder.typicode.com/posts/' + id, 
    :body => { :title => title, }.to_json,
    :headers => { 'Content-Type' => 'application/json' } )
	puts "Put Finished"
end

#POST - Creating Post
Given(/^that i send a successfull post containing the title "([^"]*)", the body "([^"]*)" and the id "([^"]*)"$/) do |title, body, id|
  	@response = HTTParty.post('http://jsonplaceholder.typicode.com/posts', 
    :body => { :title => title, 
               :body => body, 
               :id => id, 
             }.to_json,
    :headers => { 'Content-Type' => 'application/json' } )
	puts "Post Finished"
end

#Response Code Checking
Then(/^the response code of the request should be (\d+)$/) do |responseCode|
  @response.code.should == responseCode.to_i #Deprecated
  #expect(@response.code).to be == responseCode.to_i
  puts "Response Code is Correct " + responseCode
end

#Response Body Printing
Then(/^I want to print the response body$/) do
     puts @response.body
end









