#!/bin/zsh

typeset -A emotes
emotes=(
  "shrug" "¯\\_(ツ)_/¯"
  "tableflip" "(╯°□°)╯︵ ┻━┻"
  "unflip" "┬─┬ ノ( ゜-゜ノ)"
  "lenny" "( ͡° ͜ʖ ͡°)"
)

function emote() {
  local emote_name="$1"

  if [[ "$emote_name" == "--list" ]]; then
    printf "%-10s : %s\n" "Command" "Emoticon"
    printf "%-10s : %s\n" "-------" "--------"
    for cmd in "${(@k)emotes}"; do
      printf "%-10s : %s\n" "$cmd" "${emotes[$cmd]}"
    done
    return 0
  fi

  if [[ -n "${emotes[$emote_name]}" ]]; then
    local found_emote="${emotes[$emote_name]}"
    echo "$found_emote"

    if command -v pbcopy &> /dev/null; then
      echo -n "$found_emote" | pbcopy
    elif command -v xclip &> /dev/null; then
      echo -n "$found_emote" | xclip -selection clipboard
    elif command -v xsel &> /dev/null; then
      echo -n "$found_emote" | xsel --clipboard --input
    else
      echo "No clipboard utility found. Install pbcopy, xclip, or xsel."
    fi

    return 0
  else
    echo "Emote not found. Use 'emote --list' to see available emoticons."
    return 1
  fi
}

emote "$@"
