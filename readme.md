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

### Important Remaps (Keybinds)

- ` pv` open netrw
- ` pf` "project files" open telescope
- `Ctrl+p` open telescope with git files
- ` ps` "project search"
