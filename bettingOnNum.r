wallet = rep(0, 10000)
total_wins = rep(0, 10000)

for (i in 1:10000){
  wallet[i] = wallet[i] - 1
  if (sample(0:36, 1)== 1){
    wallet[i] = wallet[i] + 36
    total_wins[i] = total_wins[i] + 1
  }
}

mean(wallet)
mean(total_wins)

var(wallet)
var(total_wins)

hist(wallet)
hist(total_wins)
