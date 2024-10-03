<div align="center">

<h1>
<picture>
  <source media="(prefers-color-scheme: dark)" srcset="logo_dark.png">
  <source media="(prefers-color-scheme: light)" srcset="logo_light.png">
  <img alt="Helix.vim" height="128" src="logo_light.png">
</picture>
</h1>

</div>

A set of unholy Vim keybindings to make it behave like [Helix](https://github.com/helix-editor/helix).
Useful for IDEs with a Vim emulator but no Helix emulator.

# Usage

Download or clone the Vim files from this repository.
Cloning is probably easier for keeping up-to-date.

```
git clone https://github.com/chtenb/helix.vim ~/helix.vim/
```

Then source the relevant `.vim` files in your `.vimrc`.

### For generic Vim

```
source ~/helix.vim/helix.vim
```

### For Visual Studio/VsVim

Make sure [VsVim](https://github.com/VsVim/VsVim) is installed. Then

```
source ~/helix.vim/helix.vs.vim
```

When [PeasyMotion](https://github.com/msomeone/PeasyMotion) is installed, `gw` will behave similarly as in helix.

### For JetBrains IDE's with IdeaVim

```
source ~/helix.vim/helix.idea.vim
```

#### Additional plugins used in the mappings

- [KJump](https://plugins.jetbrains.com/plugin/10149-kjump) for `gw`
- [String manipulation](https://plugins.jetbrains.com/plugin/2162-string-manipulation) for `&`
- [Tab Shifter](https://plugins.jetbrains.com/plugin/7475-tab-shifter) for directional window navigation 

### For other Vim emulators

Your best bet is to source `helix.vim`, but you will probably run into emulator-specific bugs or quirks.
If you manage to develop a working set of mappings for an IDE that is not included here yet, feel free to open a pull request for it.

Also have a look at `apocryphal.vim` and `apocryphal.vs.vim` for mappings that are not canonical for Helix, but you may find useful nonetheless.

# Limitations

Vim has no builtin LSP, Treesitter or multiple selection support, so the generic mapping set lacks bindings that rely on these features.
Depending on the IDE some functionality can be emulated in IDE-specific mappings.
See [src/helix.vs.vim](https://github.com/chtenb/helix.vim/blob/main/src/helix.vs.vim) for examples.

# Documentation

The documentation consists of the scripts themselves, in `src/`, 
most notably [src/helix.vim](https://github.com/chtenb/helix.vim/blob/main/src/helix.vim) and [src/helix.vs.vim](https://github.com/chtenb/helix.vim/blob/main/src/helix.vs.vim).

# Development

The source files are in `src/` and are compiled into top-level scripts with the `compile.sh` script.
For convenient development it is recommended that you source the files directly from `src/` and add the following mapping for reloading the keymap.

```
noremap <F4> <Esc><Esc>:mapclear<CR>:source ~/.vimrc<CR>:echo "reloaded!"<CR>
```

Pull requests for fixes and additional emulator support are welcome.
