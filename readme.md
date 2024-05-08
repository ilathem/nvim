<!-- cspell: disable -->
# My Personal NVIM Configuration

<!--toc:start-->
- [My Personal NVIM Configuration](#my-personal-nvim-configuration)
  - [Notes](#notes)
  - [Custom Remaps (Keybinds)](#custom-remaps-keybinds)
  - [Other](#other)
<!--toc:end-->

Initially created following along with [ThePrimeagen](https://www.youtube.com/watch?v=w7i4amO_zaE)

## Initial setup:

- [install packer](https://github.com/wbthomason/packer.nvim?tab=readme-ov-file#quickstart)
- go to packer.lua, run `:so` to source it, then `:PackerSync` twice to install packages
- also install a C compiler (maybe `gcc`) for treesitter to work

## Notes

- Any directory within the `/lua` directory is *requireable* by lua.
    - `init.lua` in the topmost directory is like `index.html` (it's the one nvim goes to)
- Using `:so` *sources* the current file, which tells nvim to read the instructions in it and load it into the current session
    - requiring files in the `/nvim/lua/ilathem/init.lua` file tells nvim to source those files every time nvim opens
- [Packer](https://github.com/wbthomason/packer.nvim) is the plugin manager, located in `lua/ilathem/packer.lua`
    - to install plugins, put them inside the startup function, source the file (`:so`), then sync the packages with `:PackerSync`
- The fuzzy finder is [Telescope](https://github.com/nvim-telescope/telescope.nvim), located in `packer.lua`
- The `/after` directory is utilized to add to an existing plugin or make a few changes to [it](https://vi.stackexchange.com/questions/12731/when-to-use-the-after-directory)
- [Harpoon](https://github.com/ThePrimeagen/harpoon) is used to quickly switch between various files that you might be editing concurrently.
- [Fugitive](https://github.com/tpope/vim-fugitive) is used for git
- [Vim-Gitguttter](https://github.com/airblade/vim-gitgutter) is used for viewing which lines have been changed since the last commit (also for jumping between hunks (changes))
    - `]c` jump to next hunk
    - `[c` jump to previous hunk
- [Vim-Matchup](https://github.com/andymass/vim-matchup) "vim match-up: even better % 👊 navigate and highlight matching words modern matchit and matchparen. Supports both vim and neovim + tree-sitter."
- [Comment.nvim](https://github.com/numToStr/Comment.nvim) plugin for adding comments
- `vim.opt` is for things you'd `set` in vimscript, whereas `vim.g` is for things you'd `let` ([credit](https://www.reddit.com/r/neovim/comments/p6dhrk/set_space_to_leader_key_with_lua/))
- [Emmet for vim](https://github.com/mattn/emmet-vim) is for html/css code completion

## Custom Remaps (Keybinds)

Custom remaps that I have either found online or made my own to streamline 
my workflow.

- ` pv` "project view" open netrw
- ` pf` "project files" open telescope
- `Ctrl+p` open telescope with git files
- ` ps` "project search", will search for a string in the current working 
directory and get results live as you type, respects .gitignore
- ` a` add current file to harpoon
- `Ctrl+e` toggle harpoon UI
- `D-j` go to file 1 in harpoon
- `D-k` go to file 2 in harpoon
- `D-l` go to file 3 in harpoon
- `D-;` go to file 4 in harpoon
- ` u` toggle undo tree
- ` gs` open fugitive (git integration)
- ` p` paste over selection, selection moved to void register
- `  y`, ` Y` yank to system clipboard
- ` f` format file
- ` s` replace the word the cursor is on throughout the file
- ` x` make current file executable
- `  ` source the current file
- ` b` open current file in the brave browser
- ` gg` prompt for git message, commit all changes with that 
message, then push those changes to remote
- `gcc` in normal mode: toggle current line using linewise comment (comment.nvim)
- `gc` in visual mode: toggle selection using linewise comment (comment.nvim)
- `gb` in visual mode: toggle selection using blockwise comment (comment.nvim)
- `C-z' is the emmet remap so as to not interfere with autocomplete (`C-y`)

## Other 

A collection of other useful information that has to do with textual input.

- `Ctrl+Shift+u` will open a unicode input window to search and select symbols 
(like the degree symbol)

- `d` in zsh will show you the recently opened directories, allowing you to easily switch to a recent directory without explicitly navigating to it.
- `C-l` will redraw the screen, getting rid of visual stuff you might want gone. (EX: you searched something with `/` and don't want to see all the highlights anymore)
- `z` is a zsh plugin that will remember the most recently used directories and will let you navigate to one by only using a few characters in that directory name.
- `gg=G` to indent entire file (go to beginning, use auto indent command `=` with motion `G` to specify to go to end of file
- https://nosarthur.github.io/productivity/2021/08/27/ex-vim.html contains a lot
    of info about colon (:) commands in vim
- `:r` reads the file into buffer
- `:r! command [Enter]` copies the output of a shell command into the current buffer
- `:! command [Enter]` will execute 'command' in a bash shell 
