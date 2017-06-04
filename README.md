# Instructions
```
git clone https://github.com/akhildave/hacker_rank_exercise.git
cd hacker_rank_exercise/

Run:
ruby bot_save_princess.rb 
ruby bot_save_princess_2.rb

Testing:
rspec spec/bot_save_princess_spec.rb
rspec spec/bot_save_princess_2_spec.rb 

Rubocop:
rubocop bot_save_princess.rb 
rubocop bot_save_princess_2.rb
```

# Bot saves princess
Princess Peach is trapped in one of the four corners of a square grid. You are in the center of the grid and can move one step at a time in any of the four directions. Can you rescue the princess?

### Input format

The first line contains an odd integer N (3 <= N < 100) denoting the size of the grid. This is followed by an NxN grid. Each cell is denoted by '-' (ascii value: 45). The bot position is denoted by 'm' and the princess position is denoted by 'p'.Grid is indexed using Matrix Convention

### Output format

Print out the moves you will take to rescue the princess in one go. The moves must be separated by '\n', a newline. The valid moves are LEFT or RIGHT or UP or DOWN.

### Sample input
```
3
--- 
-m- 
p--
```
  
### Sample output
```
DOWN
LEFT
```

# Bot saves princess - 2
Task

Complete the function nextMove which takes in 4 parameters - an integer N, integers r and c indicating the row & column position of the bot and the character array grid - and outputs the next move the bot makes to rescue the princess.

### Input Format

The first line of the input is N (<100), the size of the board (NxN). The second line of the input contains two space separated integers, which is the position of the bot.Grid is indexed using Matrix Convention

The position of the princess is indicated by the character 'p' and the position of the bot is indicated by the character 'm' and each cell is denoted by '-' (ascii value: 45).

### Output Format

Output only the next move you take to rescue the princess. Valid moves are LEFT, RIGHT, UP or DOWN

### Sample Input
```
5
2 3
-----
-----
p--m-
-----
-----
```
### Sample Output
```
LEFT
```
