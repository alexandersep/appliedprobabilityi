wallet <- rep(1, 10000) # change this since every while we decrement the bet and at the start we have 1 dollar
bet = as.integer(1)
total_rounds <- rep(0, 10000)
total_wins <- rep(0, 10000)
wins = as.integer(0)

red <- c(32, 19, 21, 25, 34, 27, 36, 30, 23, 5, 16, 1, 14, 9, 18, 7, 12 ,3)

for (i in 1:10000) {
  bet = as.integer(1)
  while (wallet[i] < 10 && !(bet > 100)) {
    wallet[i] = wallet[i] - bet
    total_rounds[i] = total_rounds[i] + 1
    if (is.element(sample(0:36, 1), red)){
      wallet[i] = wallet[i] + (bet*2)
      bet = 1
      total_wins[i] = total_wins[i] + 1
    }
    else {
      bet = bet * 2
    }
  }
  if(wallet[i] == 10) {
    wins = wins + 1
  }
}

mean(wallet)
mean(total_rounds)
mean(total_wins) # added for checking wins

hist(wallet)
hist(total_wins)
hist(total_rounds)
sum(total_wins)
wins
