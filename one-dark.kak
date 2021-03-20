# One Dark

evaluate-commands %sh{
    black="rgb:282c34"
    grey="rgb:373d48"
    white="rgb:abb2bf"
    lightred="rgb:e06c75"
    darkred="rgb:be5046"
    green="rgb:98c379"
    lightyellow="rgb:e5c07b"
    darkyellow="rgb:d19a66"
    blue="rgb:61afef"
    magenta="rgb:c678dd"
    cyan="rgb:56b6c2"
    guttergrey="rgb:4b5263"
    commentgrey="rgb:70798a"
    selection="rgba:5c8ec7"
    eolselection="rgba:ff8ec7"
    matchingselection="rgba:d8e06c40"

    echo "
        # Code highlighting
        face global value $darkyellow
        face global type  $lightyellow
        face global variable $lightred
        face global module $lightyellow
        face global function $blue
        face global string $green
        face global keyword $magenta
        face global operator $white
        face global attribute $magenta
        face global comment $commentgrey
        face global documentation comment
        face global meta $lightred
        face global builtin $lightyellow

        # Markdown highlighting
        face global title $darkyellow
        face global header $green
        face global mono $cyan
        face global block $magenta
        face global link $blue
        face global bullet $lightyellow
        face global list $white

        # Builtin
        face global Default $white,$black
        face global PrimarySelection default,${selection}80
        face global SecondarySelection default,${selection}40
        face global PrimaryCursor default,${selection}c0
        face global SecondaryCursor default,${selection}a0
        face global PrimaryCursorEol default,${eolselection}c0
        face global SecondaryCursorEol default,${eolselection}a0
        face global LineNumbers $guttergrey
        face global LineNumberCursor $darkyellow
        face global LineNumbersWrapped $black,$black
        face global MenuForeground $cyan,$grey
        face global MenuBackground $white,$grey
        face global MenuInfo $green
        face global Information $white,$grey
        face global Error $lightred
        face global StatusLine $white,$grey
        face global StatusLineMode $darkyellow
        face global StatusLineInfo $blue
        face global StatusLineValue $white
        face global StatusCursor default,${selection}c0
        face global Prompt $blue
        face global MatchingChar default,${matchingselection}
        face global BufferPadding $grey
        face global Whitespace $commentgrey


        # kak-lsp
        face global InlayHint $commentgrey
        face global parameter $lightred+u
        face global enum $cyan
    "
}
