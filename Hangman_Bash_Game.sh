#!/bin/bash
# storing the diffrent stages for the game to visualize no. of attempts left
state=()
for((i=10;i<=70;i=i+10)); do
    state+=("$(head -$i graphics.txt | tail -7)")
done

words=("TERMINAL" "COMMAND" "DIRECTORY" "PROCESS" "KERNEL" "UBUNTU" "FIREWALL" "PASSWORD" "NETWORK" "SCRIPT")
levels_played=0
levels_won=0
# start the game loop until the user wants to quit
until [[ "$again" == "n" ]]; do
    # initialize each level with a random word of the array
    ran_index=$(( RANDOM % ${#words[@]} ))
    word=${words[$ran_index]}
    # initialize an empty array to show letter count and to be updated by the user input
    guess=()
    # number of attempts for each level
    attempts=6
    # initialize an empty array to show incorrect letters that the user guessed
    wrong_letters=()
    # show how many letters are in the word for each level
    for (( i=0; i<${#word}; i++ )); do
        guess+=("_")
    done
    
    # start the level
    while [[ $attempts -gt 0 ]] ; do
        # clear the previous attempts and show the user current progression
        clear
        echo "${state[$((6 - attempts))]}"
        echo "${guess[*]}"
        echo ""
        echo -e "Letters Not in The Word:\e[31m "${wrong_letters[*]}" \e[0m "
        
        # read the user's input and make sure it's capitalized and only one character
        read -p "Guess a letter: " input
        input=${input^^}
        if [[ ! "$input" =~ ^[A-Z]$ ]]; then
            continue
        fi
        
        # check if the input is a part of the word and update the guess to show correct letters
        for(( i=0; i<"${#word}"; i++ )); do
            if [[ "$input" == "${word:$i:1}" ]]; then
                guess[$i]="$input"
            fi
        done
        
        # check if the input is incorrect and hasn't been already added to the wrong letters array to avoid duplicate input
        if [[ ! "$word" =~ "$input" ]] && [[ ! "${wrong_letters[*]}" =~ "$input" ]]; then
            wrong_letters+=("$input")
            ((attempts--))
        fi
        
        # check if all letters of the world have been guessed (doesn't have any underscores left)
        if [[ ! "${guess[*]}" =~ "_" ]]; then
            echo "==============="
            echo -e "\e[32mGreat Work! You Guessed The Word\e[0m"
            echo "==============="
            ((levels_won++))
            break
        fi
        
    done
    
    # if the user failed to guess the word and exhausted all the attempts, tell them the correct word
    if [[ $attempts -eq 0 ]]; then
        clear
        echo "${state[6]}"
        echo "${guess[*]}"
        echo "==============="
        echo -e "The Word Was \e[31m $word \e[0m"
        echo "==============="
    fi
    
    # remove the word from the word list after each level
    unset "words[$ran_index]"
    words=( "${words[@]}" )
    ((levels_played++))
    
    # end the game of all the words have been guessed
    if [[ ${#words[@]} -eq 0 ]]; then
        echo "That Was It"
        break
    fi
    
    # check if the user wants to continue the game
    while true; do
        read -p "Want to Play Again [y/n] " again
        if [[ "$again" = "y" || "$again" = "n" ]]; then
            break
        else
            continue
        fi
    done
done

echo "==============="
echo "You Achieved a Win Rate of $((100*levels_won/levels_played))% !"
echo ""
echo "Hope You Had Fun!"

