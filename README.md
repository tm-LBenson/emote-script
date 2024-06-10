# Emote Script

This script allows you to display and copy emoticons to your clipboard using simple commands.

## Installation

1. Clone the repository:

```sh
cd ~
git clone https://github.com/tm-LBenson/emote-script
cd emote-script

```

2. Make the script executable:

```sh
chmod +x emote.sh
```

3. Add an alias to your shell configuration file (e.g., `~/.zshrc` or `~/.bashrc`):

```sh
nano ~/.zshrc
```

OR

```sh
nano ~/.bashrc
```

Add this to the bottom of the file:

```sh
alias emote='~/emote-script/emote.sh'
```

4. Reload your shell configuration:

```sh
source ~/.zshrc  # or source ~/.bashrc

```

## Usage

- List available emoticons:
  `emote --list`

- Display and copy an emoticon to the clipboard:
  `emote shrug`

## Dependencies

- `pbcopy` (macOS)
- `xclip` or `xsel` (Linux)

## License

This project is licensed under the MIT License.
