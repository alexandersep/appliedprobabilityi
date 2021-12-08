# creating a vector of length 100 for the deck of cards
card <- c(1,  2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20,
          21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 
          38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 
          55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 
          72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 
          89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100)
total_hit_counter <- rep(0, 10000)
prob_of_draw <- rep(1/100, 100)
for(i in 1:10000) {
  card_rand <- sample(card)
  for(j in 1:100) {
    if (j == card_rand[j]) {
      total_hit_counter[i] = total_hit_counter[i]+1
    }
  }
}
total_hit_counter
mean(total_hit_counter)
var(total_hit_counter)
table(total_hit_counter)
