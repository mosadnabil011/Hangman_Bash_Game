# Terminal Hangman: An Interactive Bash Game

A classic implementation of the Hangman word-guessing game, built entirely using **Bash Scripting**. This project demonstrates proficiency in Linux shell scripting, file handling, and game logic implementation.

## 📖 Overview

Terminal Hangman is an interactive CLI (Command Line Interface) game where players attempt to guess a hidden word one letter at a time.  
The game features a dynamic ASCII art display that updates with every incorrect guess, simulating the traditional pen-and-paper experience directly in your terminal.

## ✨ Features

- **Interactive Gameplay:** Real-time input validation and feedback.
- **Dynamic ASCII Art:** Reads and parses visual stages from an external `graphics.txt` file.
- **Tech-Themed Wordbank:** Guess words related to Operating Systems and Linux (e.g., KERNEL, UBUNTU, FIREWALL).
- **Win Rate Tracking:** Calculates and displays your success percentage at the end of the session.
- **Replay Mechanism:** Allows continuous play without restarting the script.

## 📂 Project Structure

The project consists of two main files:

1. **`Hangman_Bash_Game.sh`**: The main executable script containing the game loop, logic, and input handling.
2. **`graphics.txt`**: A resource file containing 7 stages of ASCII art (70 lines total).  
   The script uses `head` and `tail` commands to extract the specific frame based on the player's remaining lives.

## 🚀 How to Run

### Prerequisites
- A Linux/Unix-based terminal (Bash shell).

### Installation & Execution
1. Clone this repository or download the files.
2. Ensure both `Hangman_Bash_Game.sh` and `graphics.txt` are in the same directory.
3. Give execution permission to the script:
    ```bash
    chmod +x Hangman_Bash_Game.sh
    ```
4. Run the game:
    ```bash
    ./Hangman_Bash_Game.sh
    ```

> ⚠️ **Note for Windows users:** You might see a Git warning about LF ↔ CRLF. This is normal and does not affect the game. You can safely ignore it or convert line endings using `dos2unix`.

## 🎮 Game Rules

1. The game selects a random word (represented by underscores `_`).
2. You start with **6 attempts**.
3. Type a letter and press Enter to guess:
    - **Correct Guess:** The letter is revealed in the word.
    - **Incorrect Guess:** You lose an attempt, and a part of the hangman is drawn.
4. **Win:** Guess the entire word before the drawing is complete.
5. **Lose:** Run out of attempts (the stickman is fully drawn).

### Example Gameplay
```bash
$ ./Hangman_Bash_Game.sh
Welcome to Terminal Hangman!

_ _ _ _ _  # Hidden word example
Guess a letter: a
Incorrect! Lives left: 5
  +---+
  |   |
  O   |
      |
      |
      |
=========
_ e _ _ _
Letters Not in The Word: A 
Guess a letter:

...
```
## 👥 Authors

[cite_start]Prepared by[cite: 3]:

* **Ahmed Hamada Atef Sayed Sheta**
* **Ahmed Reda Badrakhan Badrakhan**
* **Ahmed Sayed Ibrahim El-Yamany**
* **Ahmed Shreif Mahmoud AbdAlAty**
* **Ayman Mohamed El-Said Awad**
* **Khaled Ahmed Alsayed El-Basionny**
* **Mosaad Nabil Mosaad Abokammer**

---
[cite_start]*Project submitted for Operating Systems Course - Dec 2025* [cite: 4]
