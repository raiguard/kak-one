# One Dark

evaluate-commands %sh{
    fg="abb2bf"
    bg="282c34"
    subbg="373c47"

    lightred="e06c75"
    darkred="be5046"
    green="98c379"
    lightorange="e5c07b"
    darkorange="d19a66"
    blue="61afef"
    magenta="c678dd"
    cyan="56b6c2"

    gutter="636d83"
    comment="5c6370"

    cursoralpha="80"
    selectionalpha="40"

    # Menus do not support transparency, so we must hardcode the selection + sub bg colors
    menuselection="405770"

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
