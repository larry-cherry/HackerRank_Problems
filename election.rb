require "pry"

votes = ["Alex", "Michael", "Harry", "Dave", "Michael", "Victor", "Harry", "Alex", "Mary", "Mary"]

def electionWinner(votes)
  hash = {}
  vote_string = votes.join(" ")
  votes.each do |x|
    total = vote_string.scan(x).count
    hash[x] = total
  end
  highest_vote = hash.values.max
  election_result = hash.select {|k,v| v == highest_vote}
  election_result.keys.sort[-1]
end

electionWinner(votes)