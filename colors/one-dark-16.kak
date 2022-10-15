# CODE

set-face global value yellow
set-face global type yellow
set-face global variable red
set-face global module yellow
set-face global function blue
set-face global string green
set-face global keyword magenta
set-face global operator white
set-face global attribute cyan
set-face global comment white+d
set-face global documentation white+d
set-face global meta cyan
set-face global builtin yellow

# MARKUP

set-face global title yellow
set-face global header green
set-face global mono cyan
set-face global block magenta
set-face global link blue
set-face global bullet yellow
set-face global list white

# BUILTIN

set-face global Default white
set-face global PrimarySelection black,blue
set-face global SecondarySelection black,green
set-face global PrimaryCursor black,white
set-face global SecondaryCursor black,cyan
set-face global PrimaryCursorEol black,red
set-face global SecondaryCursorEol black,red
set-face global LineNumbers white
set-face global LineNumberCursor yellow
set-face global LineNumbersWrapped black
set-face global MenuForeground blue
set-face global MenuBackground default
set-face global MenuInfo green
set-face global Information default
set-face global Error red
set-face global StatusLine default
set-face global StatusLineMode yellow
set-face global StatusLineInfo blue
set-face global StatusLineValue white
set-face global StatusCursor black,blue
set-face global Prompt blue
set-face global MatchingChar +bu
set-face global BufferPadding black
set-face global Whitespace white+d

# PLUGINS

# kak-lsp
set-face global InlayHint +d@type
set-face global parameter +i@variable
set-face global enum cyan
set-face global InlayDiagnosticError red
set-face global InlayDiagnosticWarning yellow
set-face global InlayDiagnosticInfo blue
set-face global InlayDiagnosticHint white
set-face global LineFlagError red
set-face global LineFlagWarning yellow
set-face global LineFlagInfo blue
set-face global LineFlagHint white
set-face global DiagnosticError +u
set-face global DiagnosticWarning +u
set-face global DiagnosticInfo +u
set-face global DiagnosticHint +u
# Infobox faces
set-face global InfoDefault Information
set-face global InfoBlock block
set-face global InfoBlockQuote block
set-face global InfoBullet bullet
set-face global InfoHeader header
set-face global InfoLink link
set-face global InfoLinkMono header
set-face global InfoMono mono
set-face global InfoRule comment
set-face global InfoDiagnosticError InlayDiagnosticError
set-face global InfoDiagnosticHint InlayDiagnosticHint
set-face global InfoDiagnosticInformation InlayDiagnosticInfo
set-face global InfoDiagnosticWarning InlayDiagnosticWarning

# kak-rainbower
try %{ set-option global rainbow_colors yellow magenta blue }

# For backwards compatibility
define-command -override -hidden one-enable-fancy-underlines %{
    echo -debug "one-enable-fancy-underlines is deprecated - curly underlines are enabled by default"
}
