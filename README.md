# quick.nvim (Atur's fork)

A very fast Lua based Neovim configuration that uses coc.nvim for intellisense

- [What is this?](#what-is-this)
- [Plugins](#plugins)
- [Prerequisites](#prerequisites)
- [Setup](#setup-quick.nvim)
  - [Download cofiguration](#1-download-configuration)
    - [Releases](#releases)
  - [Install plugins](#2-install-plugins)
    - [Install Packer](#install-packer)
- [coc.nvim](#cocnvim)
- [Bindings](#bindings)
- [Maintainers](#maintainers)

## What is this?

This is a configuration for Neovim. It's written in Lua, and uses modern
plugins like Treesitter, Telescope, and Lualine. It does however not implement
the native Neovim LSP. It's very fast, good looking, and has a lot of nice
features.

<img width="1280" alt="quick nvim" src="https://user-images.githubusercontent.com/19674362/139526562-a3a9f9f8-ada7-40d6-a2a8-2c534a97e0a5.png">

https://user-images.githubusercontent.com/19674362/139526856-bdd9023d-8780-4b0f-aa4b-4edb619e35fd.mp4

## Plugins

- [Lualine](https://github.com/nvim-lualine/lualine.nvim)
- [Packer](https://github.com/wbthomason/packer.nvim)
- [Plenary](https://github.com/nvim-lua/plenary.nvim)
- [Telescope](https://github.com/nvim-telescope/telescope.nvim)
- [Tokyo Night](https://github.com/folke/tokyonight.nvim)
- [Treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [coc](https://github.com/neoclide/coc.nvim)
- [git-worktree](https://github.com/ThePrimeagen/git-worktree.nvim)
- [nvim-ts-context-commentstring](https://github.com/JoosepAlviste/nvim-ts-context-commentstring)
- [nvim-web-devicons](https://github.com/kyazdani42/nvim-web-devicons)
- [vim-commentary](https://github.com/tpope/vim-commentary/)
- [vim-surround](https://github.com/tpope/vim-surround/)
- [vim-vinegar](https://github.com/tpope/vim-vinegar/)
- [vim-fugitive](https://github.com/tpope/vim-fugitive/)

## Prerequisites

- [Neovim 0.5 or above](https://neovim.io)
- [Node.js](https://nodejs.org)
- [ripgrep - for Telescope](https://github.com/BurntSushi/ripgrep)

## Setup quick.nvim

### 1. Download configuration

#### Clone repository

If you want to receive updates as this configuration gets patched, then clone
this repository into your `.config` directory, or wherever you keep your
current Neovim configuration.

```sh
git clone git@github.com:albingroen/quick.nvim.git ~/.config/nvim
```

#### Releases

On the other hand, if you want a raw folder with the configuration files,
without git connected to it, you can head over to the releases page, and
download a release from there.

https://github.com/albingroen/quick.nvim/releases

### 2. Install plugins

#### Install Packer

quick.nvim uses [Packer](https://github.com/wbthomason/packer.nvim) as its
Neovim plugin manager.

```
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```

To install the plugins used by quick.nvim, you need to do so using Packer.

```
nvim ~/.config/nvim/init.lua
```

```
:PackerInstall
```

If this command not work, comment the lines 1 to 18 in `init.lua`, reopen
neovim and run the install command. After the installation has completed,
uncomment these lines and source the `init.lua` file again.
Souce: [original repo issue #2](https://github.com/albingroen/quick.nvim/issues/2#issuecomment-993147934)

## coc.nvim

This configuration uses [coc.nvim](https://github.com/neoclide/coc.nvim) for
intellisense, instead of the built-in Neovim LSP. This is because I think it's
not quite mature yet, pretty tricky to configure, and doesn't have a quite as
many languages and frameworks supported.

quick.nvim doesn't ship with any default coc plugins though, so you have to
install the ones you want to use. For example if you want to use quick.nvim for
TypeScript programming, you'll have to install the coc-tsserver plugin like
this.

```
:CocInstall coc-tsserver
```

## Bindings

**\<leader\>** = "\<Space/\>"

| Plugin    | Mapping      | Action                         |
| --------- | ------------ | ------------------------------ |
|           | \<C-H\>      | Move one split left            |
|           | \<C-J\>      | Move one split down            |
|           | \<C-K\>      | Move one split up              |
|           | \<C-L\>      | Move one split right           |
|           | \<C-N\>      | Open file explorer             |
|           | \<C-S\>      | Open search & replace          |
|           | \<leader-t\> | Open a terminal buffer         |
|           | sp           | Split window horizontally      |
|           | tj           | Move one tab left              |
|           | tk           | Move one tab right             |
|           | tn           | Create a new tab               |
|           | to           | Close all other tabs           |
|           | vs           | Split window vertically        |
| coc       | K            | Hover over symbol              |
| coc       | \<C-Space\>  | Open autocompletion            |
| coc       | \<CR\>       | Select autocompletion          |
| coc       | \<S-TAB\>    | Browse previous autocompletion |
| coc       | \<TAB\>      | Browse next autocompletion     |
| coc       | \<leader\>.  | Open code actions              |
| coc       | \<leader\>f  | Format file with prettier      |
| coc       | \<leader\>l  | Execute code autofix           |
| coc       | \<leader\>rn | Rename symbol                  |
| coc       | gd           | Go to definition               |
| Telescope | \<C-B\>      | Open buffer picker             |
| Telescope | \<C-F\>      | Open project search            |
| Telescope | \<C-P\>      | Open file picker               |
| Telescope | \<C-T\>      | Open Git worktree picker       |

## Maintainers

This is a fork from the original quick.nvim to fit my bindings. Feel free to
test the original project from [albingroen](https://github.com/albingroen):

[quick.nvim](https://github.com/albingroen/quick.nvim)
