# My Personal NVIM Configuration

Initially created following along with [ThePrimeagen](https://www.youtube.com/watch?v=w7i4amO_zaE)

## Notes

- Any directory within the `/lua` directory is *requireable* by lua.
    - `init.lua` in the topmost directory is like `index.html` (it's the one nvim goes to)
- Using `:so` *sources* the current file, which tells nvim to read the instructions in it and load it into the current session
    - requiring files in the `/nvim/lua/ilathem/init.lua` file tells nvim to source those files every time nvim opens
- [Packer](https://github.com/wbthomason/packer.nvim) is the plugin manager, located in `lua/ilathem/packer.lua`
    - to install plugins, put them inside the startup function, source the file (`:so`), then sync the packages with `:PackerSync`
- The fuzzy finder is [Telescope](https://github.com/nvim-telescope/telescope.nvim), located in `packer.lua`
- The `/after` directory is utilized to add to an existing plugin or make a few changes to [it](https://vi.stackexchange.com/questions/12731/when-to-use-the-after-directory)
- [Harpoon](https://github.com/ThePrimeagen/harpoon) is used to quickly swith between various files that you might be editing concurrently.
- [Fugitive](https://github.com/tpope/vim-fugitive) is used for git

## Custom Remaps (Keybinds)
- ` pv` "project view" open netrw
- ` pf` "project files" open telescope
- `Ctrl+p` open telescope with git files
- ` ps` "project search", will search for a string in the current working directory and get resutls live as you type, respects .gitignore
- ` a` add current file to harpoon
- `Ctrl+e` toggle harpoon UI
- `D-j` go to file 1 in harpoon
- `D-k` go to file 2 in harpoon
- `D-l` go to file 3 in harpoon
- `D-;` go to file 4 in harpoon
- ` u` toggle undo tree
- ` gs` open fugitive (git integation)
- ` p` paste over selection, selection moved to void register
- `  y`, ` Y` yank to system clipboard
- ` f` format file
- ` s` replace the word the cursor is on throughout the file
- ` x` make current file executable
- `  ` source the current file
- ` b` open current file in the brave browser

## Other 
- `Ctrl+Shift+u` will open a unicode input window to search and select symbols 
(like the degree symbol)
