require "sinatra"
require "sinatra/reloader"
def view(template); erb template.to_sym; end
before { puts "Parameters: #{params}" }  

get "/" do
  @dice1 = rand(1..6)
  @dice2 = rand(1..6)
  view "dice"
end