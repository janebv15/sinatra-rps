require "sinatra"
require "sinatra/reloader"

get("/") do
 erb(:homepage)

end

get("/rock") do
moves = ["Rock", "Paper", "Scissors"]
@comp_move = moves.sample

if @comp_move == "rock"
  @outcome = "tied"
elsif @comp_move == "paper"
  @outcome = "lost"
else
  @outcome = "won"
end
erb(:zebra)
end

get("/paper") do
  if @comp_move == "paper"
    @outcome = "tied"
  elsif @comp_move == "scissors"
    @outcome = "lost"
  else
    @outcome = "won"
  end
  erb(:poppy)
  end

  get("/scissors") do
    if @comp_move == "scissors"
      @outcome = "tied"
    elsif @comp_move == "rock"
      @outcome = "lost"
    else
      @outcome = "won"
    end
    erb(:shine)
    end
