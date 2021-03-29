# One Darker
# This theme is a personalized implementation of One Dark.
# Changes include:
# - Darker background color
# - Variables are white instead of red
# - Operators are red instead of white
# - Comments are more visible
# - Semantic parameters are a unique orange color instead of being underlined

evaluate-commands %sh{
    fg="rgb:abb2bf"
    bg="rgb:181a1f"
    subbg="rgb:272b33"

    lightred="rgb:e06c75"
    darkred="rgb:be5046"
    green="rgb:98c379"
    lightorange="rgb:e5c07b"
    darkorange="rgb:d19a66"
    blue="rgb:61afef"
    magenta="rgb:c678dd"
    cyan="rgb:56b6c2"

    gutter="rgb:636d83"
    comment="rgb:70798a"

    selection="rgba:61afef" # Blue
    secondaryselection="rgba:98c379" # Green
    eolselection="rgba:e06c75" # Light red

    selectionbg=${selection}40
    secondaryselectionbg=${secondaryselection}40
    # Menus do not support transparency, so we must hardcode the selection + sub bg colors
    menuselectionbg="rgb:344b61"

    cursorbg=${selection}80
    secondarycursorbg=${secondaryselection}80
    eolcursorbg=${eolselection}80
    secondaryeolcursorbg=${eolselection}60

    echo "
        # Code highlighting
        face global value $darkorange
        face global type $lightorange
        face global variable $fg
        face global module $lightorange
        face global function $blue
        face global string $green
        face global keyword $magenta
        face global operator $lightred
        face global attribute $magenta
        face global comment $comment
        face global documentation $comment
        face global meta $fg
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
        face global MatchingChar default+bu
        face global BufferPadding $fg,$bg
        face global Whitespace $comment

        #Custom
        face global Ruler default,$subbg

        # Plugins

        # kak-lsp
        face global InlayHint $comment
        face global parameter 'rgb:d48d5b'
        face global enum $cyan
        # kakoune-phantom-selection
        face global PhantomSelection default,$secondaryselectionbg+u
    "
}
