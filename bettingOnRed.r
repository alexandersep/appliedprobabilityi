wallet = rep(0, 10000)
total_wins = rep(0, 10000)

red <- c(32, 19, 21, 25, 34, 27, 36, 30, 23, 5, 16, 1, 14, 9, 18, 7, 12 ,3)

for (i in 1:10000) {
  if (is.element(sample(0:36, 1), red)){
    wallet[i] = wallet[i] + 1
    total_wins[i] = total_wins[i] + 1
  }
  else {
    wallet[i] = wallet[i] - 1
  }
}

mean(wallet)
mean(total_wins)

var(wallet)
var(total_wins)

hist(wallet)
hist(total_wins)
