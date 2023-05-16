# hangman

Classes to implement:
  - player
  - game

  Pseudocode:
    - Game class pulls a word from the list and assigns it to instance variable code. 
      - Create a method that converts the list to an array
      - Create a method that selects a word based on the index [0..however many words there are]
      - If that word is between 5 and 12 characters assign that word to code
    - Game class sets the amount of turns a player has to guess the word on initialization (look up how many this is, i think 6)
    - Display the blank code as underscores noting each letter of the word (create_hangman_array method)
      - until code_array_blank = code_array.length do code_array_blank[-1 + 1] = '_'
    - Player class with instance variable guess makes a guess using `make_guess` method. Basic gets.chomp. Need to make sure to validate that only one letter, no numbers, is input. 
    - Players guess is compared to code using include?
      - if the letter is in the word, update the display to show that the letter(s) are part of the solution (reveal_solution method?)(maybe convert the code to an array and then we can reference the index using the guess and update that in a loop)
      - for i in code.length do if code[i].include?/match?(guess) then puts #{guess} in hangman_array (similar to ttt array update)