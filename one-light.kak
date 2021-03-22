# One light

evaluate-commands %sh{
    fg="rgb:4b4c54"
    bg="rgb:fafafa"
    subbg="rgb:e6e6e6"

    lightred="rgb:e45649"
    darkred="rgb:ca1243"
    green="rgb:50a14f"
    lightorange="rgb:986801"
    darkorange="rgb:c18401"
    blue="rgb:4078f2"
    magenta="rgb:a626a4"
    cyan="rgb:0184bc"

    gutter="rgb:9e9e9e"
    comment="rgb:a0a1a7"

    selection="rgba:77a5d9"
    secondaryselection="rgba:77d97f"
    eolselection="rgba:ff8ec7"
    matchingselection="rgba:d9b077"

    selectionbg=${selection}50
    secondaryselectionbg=${secondaryselection}50
    matchingselectionbg=${matchingselection}50
    # Menus do not support transparency, so we must hardcode the selection + sub bg colors
    menuselectionbg="rgb:c2d0e0"

    cursorbg=${selection}80
    secondarycursorbg=${secondaryselection}80
    eolcursorbg=${eolselection}80
    secondaryeolcursorbg=${eolselection}30

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
