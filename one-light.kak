# One light

evaluate-commands %sh{
    fg="4b4c54"
    bg="fafafa"
    subbg="e6e6e6"

    lightred="e45649"
    darkred="ca1243"
    green="50a14f"
    lightorange="c18401"
    darkorange="986801"
    blue="4078f2"
    magenta="a626a4"
    cyan="0184bc"

    gutter="9e9e9e"
    comment="a0a1a7"

    cursoralpha="80"
    selectionalpha="40"

    # Menus do not support transparency, so we must hardcode the selection + sub bg colors
    menuselection="bbc9e8"

    echo "
        # Code highlighting
        face global value rgb:$darkorange
        face global type rgb:$lightorange
        face global variable rgb:$lightred
        face global module rgb:$lightorange
        face global function rgb:$blue
        face global string rgb:$green
        face global keyword rgb:$magenta
        face global operator rgb:$fg
        face global attribute rgb:$magenta
        face global comment rgb:$comment
        face global documentation rgb:$comment
        face global meta rgb:$lightred
        face global builtin rgb:$lightorange

        # Markdown highlighting
        face global title rgb:$darkorange
        face global header rgb:$green
        face global mono rgb:$cyan
        face global block rgb:$magenta
        face global link rgb:$blue
        face global bullet rgb:$lightorange
        face global list rgb:$fg

        # Builtin
        face global Default rgb:$fg,rgb:$bg
        face global PrimarySelection default,rgba:$blue$selectionalpha
        face global SecondarySelection default,rgba:$green$selectionalpha
        face global PrimaryCursor default,rgba:$blue$cursoralpha
        face global SecondaryCursor default,rgba:$green$cursoralpha
        face global PrimaryCursorEol default,rgba:$lightred$cursoralpha
        face global SecondaryCursorEol default,rgba:$darkorange$cursoralpha
        face global LineNumbers rgb:$gutter
        face global LineNumberCursor rgb:$darkorange
        face global LineNumbersWrapped rgb:$bg,rgb:$bg
        face global MenuForeground rgb:$fg,rgb:$menuselection
        face global MenuBackground rgb:$fg,rgb:$subbg
        face global MenuInfo rgb:$green
        face global Information rgb:$fg,rgb:$subbg
        face global Error rgb:$darkred
        face global StatusLine rgb:$fg,rgb:$subbg
        face global StatusLineMode rgb:$darkorange
        face global StatusLineInfo rgb:$blue
        face global StatusLineValue rgb:$fg
        face global StatusCursor default,rgba:$blue$cursoralpha
        face global Prompt rgb:$blue
        face global MatchingChar default+bu
        face global BufferPadding rgb:$fg,rgb:$bg
        face global Whitespace rgb:$comment

        # Custom
        face global Ruler default,rgb:$subbg

        # Plugins

        # kak-lsp
        face global InlayHint rgb:$comment
        face global parameter rgb:$lightred+i
        face global enum rgb:$cyan
        face global DiagnosticError default,rgba:$darkred$selectionalpha
        face global DiagnosticWarning default,rgba:$darkorange$selectionalpha
        face global InlayDiagnosticError rgb:$darkred
        face global InlayDiagnosticWarning rgb:$darkorange
        face global LineFlagErrors rgb:$darkred
        face global LineFlagWarnings rgb:$darkorange
        # kakoune-phantom-selection
        face global PhantomSelection default,rgba:$magenta$selectionalpha+i
    "
}
