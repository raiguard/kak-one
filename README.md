# one.kak

`One Light` and `One Dark` colorschemes for [Kakoune](https://kakoune.org). Based on [vim-one](https://github.com/rakr/vim-one).

Includes an additional `One Darker` colorscheme, which is a personalized flavor of `One Dark` with readability improvements and some syntax changes.

## Installation

With [plug.kak](https://github.com/andreyorst/plug.kak):

```
plug "raiguard/one.kak" theme
```

You can also manually put the colorscheme file(s) in your `.config/kak/colors` directory.

Provided are `one-light`, `one-dark`, and `one-darker` colorschemes.

## Plugin support

`one.kak` includes colors for the following plugins:

- [kak-lsp](https://github.com/kak-lsp/kak-lsp)
    - Parameters are underlined
    - Inlay hints are colored as comments
    - Enums are cyan
    - These features require configuring your `kak-lsp.toml` to display semantic tokens
- [kakoune-phantom-selection](https://github.com/occivink/kakoune-phantom-selection)
    - Phantom selections use the secondary selection color, and add an underline

## Scheme screenshots

### One Light

![](screenshots/one-light.png)

### One Dark

![](screenshots/one-dark.png)

### One Darker

![](screenshots/one-darker.png)

Changes in `One Darker` over `One Dark` are:

- Darker background color
- Variables are white instead of red
- Operators are red instead of white
- Comments are more visible
- Semantic parameters are a unique orange color instead of being underlined

## Feature screenshots

### Alpha-blended selections

![](screenshots/alpha-blended-selections.png)

### Obvious secondary selections

![](screenshots/secondary-selections.png)

### Phantom selections plugin

![](screenshots/phantom-selections.png)
