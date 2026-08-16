import random


def get_choices():

    # player
    player_choice = input("Enter a choice (rock,paper,scissors): ").strip().lower()

    # computer
    options = ["rock", "paper", "scissors"]
    computer_choice = random.choice(options)

    # print output
    choices = {"player": player_choice, "computer": computer_choice}
    return choices


def check_win(player, computer):
    print(f"you chose {player}, computer chose {computer}")
    if player == computer:
        return "tie"

    elif player == "rock":
        if computer == "scissors":
            return "win"
        else:
            return "lose"

    elif player == "paper":
        if computer == "rock":
            return "win"
        else:
            return "lose"

    elif player == "scissors":
        if computer == "paper":
            return "win"
        else:
            return "lose"


choices = get_choices()
result = check_win(choices["player"], choices["computer"])
print(result)
