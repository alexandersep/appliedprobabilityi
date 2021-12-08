wallet <- rep(0, 10000)
betlist = rep(1:4)
bet = as.integer(0)
total_rounds <- rep(0, 10000)
total_wins <- rep(0, 10000)

red <-
  c(32, 19, 21, 25, 34, 27, 36, 30, 23, 5, 16, 1, 14, 9, 18, 7, 12 , 3)

for (i in 1:10000) {
  betlist = rep(1:4)
  bet = as.integer(0)
  while (length(betlist) > 0 && bet <= 100) {
    
    
    if (length(betlist) > 1) {
      bet = betlist[1] + betlist[length(betlist)]
    }
    else {
      bet = betlist[1]
    }
  
    
    if (is.element(sample(0:36, 1), red)) {
      
      wallet[i] = wallet[i] + bet
      if (length(betlist) > 1) {
        betlist <-
          betlist[!betlist %in% c(betlist[1], betlist[length(betlist)])]
      }
      else {
        betlist <- betlist[!betlist %in% c(betlist[1])]
      }
    }
    else {
      wallet[i] = wallet[i] - bet
      betlist <- c(betlist, bet)
    }
    total_rounds[i] = total_rounds[i] + 1
  }
  if(length(betlist) == 0 ){
    total_wins[i] = total_wins[i] + 1
  }
}
mean(wallet)
mean(total_rounds)
mean(total_wins)

var(wallet)
var(total_rounds)
var(total_wins)

hist(wallet)
hist(total_wins)
hist(total_rounds)
