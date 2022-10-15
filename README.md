# kak-one

![](screenshots/one-darker.png)
![](screenshots/one-dark.png)
![](screenshots/one-light.png)

`One Light` and `One Dark` colorschemes for [Kakoune](https://kakoune.org). Based on [vim-one](https://github.com/rakr/vim-one).

Includes an additional `One Darker` colorscheme, which is a personalized flavor of `One Dark` with readability improvements and some syntax changes.

## Installation

With [plug.kak](https://github.com/andreyorst/plug.kak):

```kak
plug "https://git.sr.ht/~raiguard/kak-one" theme
```

You can also manually put the colorscheme file(s) in your `.config/kak/colors` directory.

## Usage

Enable the desired colorscheme using the `colorscheme` command in your `kakrc`:

```kak
colorscheme one-darker
```

Provided are `one-light`, `one-dark`, and `one-darker` colorschemes.

Changes in `One Darker` over `One Dark` are:

- Darker background color
- Variables are white instead of red
- Operators are red instead of white
- Comments are more visible

## 16-color variants

There is a 16-color variant of each theme available, for use in a TTY. Note that you will need to set your terminal colors accordingly.

Color option expansions are not available in 16-color variants - use the ANSI color names instead.

`one-light-16`, `one-dark-16`, `one-darker-16`

## Plugin support

`kak-one` includes colors for the following plugins:

- [kak-lsp](https://github.com/kak-lsp/kak-lsp)
    - LSP info boxes are syntax highlighted
    - Inlay hints inherit from the `type` face, with a dim modifier
    - Special `enum` and `parameter` faces are provided for semantic highlighting (requires configuration in `kak-lsp.toml`)
        - `enum` is cyan
        - `parameter` is italicized and uses the `variable` color
    - LSP diagnostics are colored as:
        - Error: red
        - Warning: yellow
        - Info: blue
        - Hint: bright white / dark black (in dark and light themes respectively)
    - Inline diagnostics are represented with colored curly underlines - this feature may not work on all terminal emulators
    - Other references to the current symbol are highlighted in a slightly lighter background color
- [kak-rainbower](https://github.com/crizan/kak-rainbower)
    - Brackets are colored yellow, magenta, and blue

## Using scheme constructs in your own scripts

You can use the scheme colors and other properties in your own scripts by using the following options in expansions:

```kak
add-highlighter global/trailing-whitespaces regex "(\h+)$" "1:default,rgba:%opt{darkred}%opt{selectionalpha}"
```

### Colors

- `fg`
- `bg`
- `subbg`

- `lightred`
- `darkred`
- `green`
- `lightorange`
- `darkorange`
- `blue`
- `magenta`
- `cyan`

- `comment`

### Transparencies

- `cursoralpha`
- `selectionalpha`

### Other

- `menuselection` (cursor color adjusted for ths `subbg` background, since menus do not support transparency)

## Feature screenshots

### Alpha-blended selections

![](screenshots/alpha-blended-selections.png)

### Obvious secondary selections

![](screenshots/secondary-selections.png)

### kak-lsp diagnostics

![](screenshots/kak-lsp.png)

Curly and/or colored underlines may not display on all terminal emulators.
