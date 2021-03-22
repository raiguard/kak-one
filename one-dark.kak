# One Dark

evaluate-commands %sh{
    fg="rgb:abb2bf"
    bg="rgb:282c34"
    subbg="rgb:373c47"

    lightred="rgb:e06c75"
    darkred="rgb:be5046"
    green="rgb:98c379"
    lightorange="rgb:e5c07b"
    darkorange="rgb:d19a66"
    blue="rgb:61afef"
    magenta="rgb:c678dd"
    cyan="rgb:56b6c2"

    gutter="rgb:636d83"
    comment="rgb:5c6370"

    selection="rgba:5c8ec7"
    secondaryselection="rgba:5bc764"
    eolselection="rgba:ff8ec7"
    matchingselection="rgba:d9b077"

    selectionbg=${selection}50
    secondaryselectionbg=${secondaryselection}50
    matchingselectionbg=${matchingselection}50
    # Menus do not support transparency, so we must hardcode the selection + sub bg colors
    menuselectionbg="rgb:41546e"

    cursorbg=${selection}a0
    secondarycursorbg=${secondaryselection}a0
    eolcursorbg=${eolselection}a0
    secondaryeolcursorbg=${eolselection}80

    echo "
        # Code highlighting
        face global value $darkorange
        face global type  $lightorange
        face global variable $lightred
        face global module $lightorange
        face global function $blue
        face global string $green
        face global keyword $magenta
        face global operator $fg
        face global attribute $magenta
        face global comment $comment
        face global documentation $comment
        face global meta $lightred
        face global builtin $lightorange

        # Markdown highlighting
        face global title $darkorange
        face global header $green
        face global mono $cyan
        face global block $magenta
        face global link $blue
        face global bullet $lightorange
        face global list $fg

        # Builtin
        face global Default $fg,$bg
        face global PrimarySelection default,$selectionbg
        face global SecondarySelection default,$secondaryselectionbg
        face global PrimaryCursor default,$cursorbg
        face global SecondaryCursor default,$secondarycursorbg
        face global PrimaryCursorEol default,$eolcursorbg
        face global SecondaryCursorEol default,$secondaryeolcursorbg
        face global LineNumbers $gutter
        face global LineNumberCursor $darkorange
        face global LineNumbersWrapped $bg,$bg
        face global MenuForeground $fg,$menuselectionbg
        face global MenuBackground $fg,$subbg
        face global MenuInfo $green
        face global Information $fg,$subbg
        face global Error $darkred
        face global StatusLine $fg,$subbg
        face global StatusLineMode $darkorange
        face global StatusLineInfo $blue
        face global StatusLineValue $fg
        face global StatusCursor default,$cursorbg
        face global Prompt $blue
        face global MatchingChar default,$matchingselectionbg
        face global BufferPadding $fg,$bg
        face global Whitespace $comment

        # Plugins

        # kak-lsp
        face global InlayHint $comment
        face global parameter $lightred+u
        face global enum $cyan
        # kakoune-phantom-selection
        face global PhantomSelection default,$secondaryselectionbg+u
    "
}
