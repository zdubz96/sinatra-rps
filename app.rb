require "sinatra"
require "sinatra/reloader"

key={1=>"rock",2=>"paper",3=>"scissors"}
outcome=""
get("/") do
  erb(:home)
end

get("/rock") do
  @our_play="rock"
  @their_play=key[rand(1..3)]
  if @our_play==@their_play
    @outcome="tied"
  elsif @their_play=="paper"
    @outcome="lost"
  else
    @outcome="won"
  end
  erb(:outcome)
end

get("/paper") do
  @our_play="paper"
  @their_play=key[rand(1..3)]
  if @our_play==@their_play
    @outcome="tied"
  elsif @their_play=="scissors"
    @outcome="lost"
  else
    @outcome="won"
  end
  erb(:outcome)
end

get("/scissors") do
  @our_play="scissors"
  @their_play=key[rand(1..3)]
  if @our_play==@their_play
    @outcome="tied"
  elsif @their_play=="rock"
    @outcome="lost"
  else
    @outcome="won"
  end
  erb(:outcome)
end
