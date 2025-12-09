# Terminal Hangman: An Interactive Bash Game

A classic implementation of the Hangman word-guessing game, built entirely using **Bash Scripting**. This project demonstrates proficiency in Linux shell scripting, file handling, and game logic implementation.

## 📖 Overview

Terminal Hangman is an interactive CLI (Command Line Interface) game where players attempt to guess a hidden word one letter at a time. [cite_start]The game features a dynamic ASCII art display that updates with every incorrect guess, simulating the traditional pen-and-paper experience directly in your terminal[cite: 1, 10].

## ✨ Features

- [cite_start]**Interactive Gameplay:** Real-time input validation and feedback[cite: 117].
- [cite_start]**Dynamic ASCII Art:** Reads and parses visual stages from an external `graphics.txt` file[cite: 45].
- [cite_start]**Tech-Themed Wordbank:** Guess words related to Operating Systems and Linux (e.g., KERNEL, UBUNTU, FIREWALL)[cite: 223].
- [cite_start]**Win Rate Tracking:** Calculates and displays your success percentage at the end of the session[cite: 187].
- [cite_start]**Replay Mechanism:** Allows continuous play without restarting the script[cite: 80].

## 📂 Project Structure

[cite_start]The project consists of two main files[cite: 45]:

1.  **`hangman.sh`**: The main executable script containing the game loop, logic, and input handling.
2.  **`graphics.txt`**: A resource file containing 7 stages of ASCII art (70 lines total). [cite_start]The script uses `head` and `tail` commands to extract the specific frame based on the player's remaining lives [cite: 72-74].

## 🚀 How to Run

### Prerequisites
- A Linux/Unix-based terminal (Bash shell).

### Installation & Execution
1.  Clone this repository or download the files.
2.  Ensure both `hangman.sh` and `graphics.txt` are in the same directory.
3.  Give execution permission to the script:
    ```bash
    chmod +x hangman.sh
    ```
4.  Run the game:
    ```bash
    ./hangman.sh
    ```

## 🎮 Game Rules

1.  The game selects a random word (represented by underscores `_`).
2.  [cite_start]You start with **6 attempts**[cite: 90].
3.  Type a letter and press Enter to guess.
    - **Correct Guess:** The letter is revealed in the word.
    - **Incorrect Guess:** You lose an attempt, and a part of the hangman is drawn.
4.  [cite_start]**Win:** Guess the entire word before the drawing is complete[cite: 17].
5.  [cite_start]**Lose:** run out of attempts (the stickman is fully drawn)[cite: 16].

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
