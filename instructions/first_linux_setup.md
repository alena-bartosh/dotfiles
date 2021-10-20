# New work laptop with Linux

### 🐧 Install a system

For installation F12, F8 or F10 are used.  
The settings are roughly as follows

```
system image for amd64 == x64 == x86_64
english -> english us
normal installation + updates + 3rd parties
erase disk & installation
ext4 file system in the main partition
```

### ⚙️ Install software

```sh
sudo apt install git mc gnome-tweaks chrome-gnome-shell network-manager-openvpn-gnome -y
```

Install from snap (Ubuntu Software):

- Sublime Text
- Postman
- Telegram
- Slack
- remove snap Firefox and install it from sources

### 🖼 Desktop environment 

1) *Appearance -> Dark theme*
2) Gnome Tweaks: *TopBar -> add seconds to time, enable hot corner; Fonts -> 1,5 scale*
3) Set the size of folders, wallpaper, etc.

### 🐙 Install dotfiles

```
cd ~ && mkdir -p src && cd src git clone https://github.com/alena-bartosh/dotfiles.git
cd ./dotfiles/ ./scripts/setup_git.sh ./scripts/install_zsh.sh ./scripts/setup_ohmyzsh.sh
```

### 💻 GitHub setup

1) Choose work email

```
git config --global user.email "NEW_EMAIL"
```

2) Generate ssh keys to work from console

```
echo "REMINDER: SET PASSWORD! Enter to continue..." && read && ssh-keygen -t ed25519 -C "NEW_EMAIL"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519 echo "Copy to clipboard. Enter to continue..." && read && cat ~/.ssh/id_ed25519.pub
echo "Add a SSH key to GitHub account. Enter to continue..." && read && xdg-open "https://github.com/settings/ssh/new"
```

3) Generate token to work from IDE: *Developer settings -> Personal access token*

### 📦 Install IDE

1) Load [JetBrains Toolbox App](https://www.jetbrains.com/ru-ru/toolbox-app/)
2) *Setting -> login ...*
3) Install all needed environments
4) Load plugins + *Darcula Darker Theme*
5) Add GitHub acc with token

### 🔑 Create VPN profile if needed

1) Get credentials
2) *Network -> "+" -> "import from file..."*
