# Archivation
Moving all dotfiles, configs to [here](https://github.com/calisfed/config) with respective branch
# Setup new Windows <!-- omit in toc -->

Following the order

- [Install clean Windows 10 ISO file](#install-clean-windows-10-iso-file)
- [Windows Debloater](#windows-debloater)
- [Windows Terminal](#windows-terminal)
- [TranslucentTB](#translucenttb)
- [Brave [Browser]](#brave-browser)
- [7zip](#7zip)
- [Explorer Patcher](#explorer-patcher)
- [Unikey](#unikey)
- [Included Folders](#included-folders)
  - [Background_Images folder](#background_images-folder)
  - [Cheatsheets folder](#cheatsheets-folder)
  - [Scrips folder](#scrips-folder)
  - [Regfiles folder](#regfiles-folder)
  - [Others folder](#others-folder)
- [Optional](#optional)
  - [Clink](#clink)
  - [Equalizer APO and HeSuVi](#equalizer-apo-and-hesuvi)
  - [Shell menu view](#shell-menu-view)

## Install clean Windows 10 ISO file

1. Go to
[Windows 10 ISO](https://www.microsoft.com/en-us/software-download/windows10ISO)

2. Then press `F12`, change device to a mobile device.

3. Then download clean, fresh ISO file.

4. After install, update all updates before use debloater.

## Windows Debloater

1. Get this from this repo [Window Debloater](https://github.com/Sycnex/Windows10Debloater) or use the version in the [Script Folder](https://github.com/calisfed/winsetup/blob/master/Scipts/)

2. Run the `GUI` powershell file

3. White list these

```md
Store
Paint
Notepad
```

After debloated, update `Microsoft Store`

## Windows Terminal

Install from `Microsoft Store`
Some code to run 

```md 
# Update
wsl --update
# Set default version
wsl --set-default-version 2
```

## TranslucentTB

Download from `Microsoft Store`

## Brave [Browser]

Download [Brave](https://brave.com/)

In order to use Brave rewards, use [Tunnel Bear](https://www.tunnelbear.com/) and change to [supported regions](https://brave.com/transparency/). One way to have data is to share about Tunnel Bear on Twitter for 1Gb each. An other way is to ask [Giang Trung](https://www.facebook.com/giangnguyen.thanhtrung) for Tunnel Bear account.

## 7zip

Download and install [7zip](https://www.7-zip.org/)

## Explorer Patcher

Download and install[Explorer Patcher](https://github.com/valinet/ExplorerPatcher)

## Unikey

Download and run [Unikey](https://www.unikey.org/)

## Vsial Studio Code

Download and install [Visual Studio Code](https://code.visualstudio.com/download)

## WSL env variable

In Windows you need to update the `WSLENV` environment variable to include the value `GIT_EXEC_PATH/wp`. From an Administrator Command Prompt run the following:

```cmd
SETX WSLENV %WSLENV%:GIT_EXEC_PATH/wp
```

After updating the `WSLENV` environment variable, restart your WSL installation.

>**Note**: ssh link look like this git@github.com:USERNAME/REPOSITORY.git

Change remote url if needed

```sh
git remote set-url origin git@github.com:USERNAME/REPOSITORY.git
```

---
---

## Included Folders

### Background_Images folder

Set them as background.
>_The formula is the sound intensity_

![Sound intensity](https://github.com/calisfed/winsetup/blob/main/Background_Images/bg1.jpg)

>_Peaceful Staircase in the wood_

![Peaceful Staircase in the wood](https://github.com/calisfed/winsetup/blob/main/Background_Images/bg2.jpg)

### Cheatsheets folder

The name says it all
Included

```md
Git 
Rust
Linux
Ubuntu
```

### Scrips folder

Install version 365 with the script

Then convert into Mondo with Active AIO, and activate it

### Regfiles folder

1. Intelppm: Change Start to one of these values

    - `3` for **variable** max cpu speed
    - `4` for **constant** max cpu speed

2. Windef: Turn off Windows Defender, should turn off on `Start up` in `Task Manager` too

3. Others does what its name said

### Others folder

#### Draw <!-- omit in toc -->

This zip file contains manythings, i.e. drivers for tablet, some basic tutorials

#### numix_cursor <!-- omit in toc -->

This cursor style is nice, remember to set size to `2` and scroll `6` lines a time

##### Godmode <!-- omit in toc -->

This folder can access all windows features

#### WSL VSCode shortcut <!-- omit in toc -->

A Windows shortcut to start VSCode in $HOME

#### Fonts <!-- omit in toc -->

Install for All users
>**Note**: These fonts used for coding and Dota2

Included:

```md
Fira Nerd Fonts
Fira Mono Nerd Fonts
Arial Unicode Font
Handwritten
```

---
---

## Optional

### Clink

Download [Clink](https://github.com/chrisant996/clink)

Download [Clink complettion](https://github.com/vladimir-kotikov/clink-completions), extract to a folder, should put it inside clink folder C:\Program Files(x86)\clink

Download [clink fzf](https://github.com/chrisant996/clink-fzf) and [fzf](https://github.com/junegunn/fzf)

Download [Clink Flexprompt](https://github.com/chrisant996/clink-flex-prompt) and extract it in the Completion folder above



Clink setting

```sh
clink set clink.logo none
clink install scripts <put_dir_name_here>
clink set fzf.exe_location <put_dir_name_here>
clink set fzf.default_bindings true
flexprompt configure
```


### Equalizer APO and HeSuVi

[Equalizer APO](https://sourceforge.net/projects/equalizerapo/)

[HeSuVi](https://sourceforge.net/projects/hesuvi/)

### Shell menu view

[Shell menu view](http://www.nirsoft.net/utils/shell_menu_view.html)
