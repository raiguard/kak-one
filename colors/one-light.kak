# One Light

decl str fg "4b4c54"
decl str bg "fafafa"
decl str subbg "e6e6e6"

decl str lightred "e45649"
decl str darkred "ca1243"
decl str green "50a14f"
decl str lightorange "c18401"
decl str darkorange "986801"
decl str blue "4078f2"
decl str magenta "a626a4"
decl str cyan "0184bc"

decl str comment "a0a1a7"
decl str hint "000000"

decl str cursoralpha "80"
decl str selectionalpha "40"

# Menus do not support transparency, so we must hardcode the selection + sub bg colors
decl str menuselection "bbc9e8"

# CODE

face global value "rgb:%opt{darkorange}"
face global type "rgb:%opt{lightorange}"
face global variable "rgb:%opt{lightred}"
face global module "rgb:%opt{lightorange}"
face global function "rgb:%opt{blue}"
face global string "rgb:%opt{green}"
face global keyword "rgb:%opt{magenta}"
face global operator "rgb:%opt{fg}"
face global attribute "rgb:%opt{magenta}"
face global comment "rgb:%opt{comment}"
face global documentation "rgb:%opt{comment}"
face global meta "rgb:%opt{lightred}"
face global builtin "rgb:%opt{lightorange}"

# MARKUP

face global title "rgb:%opt{darkorange}"
face global header "rgb:%opt{green}"
face global mono "rgb:%opt{cyan}"
face global block "rgb:%opt{magenta}"
face global link "rgb:%opt{blue}"
face global bullet "rgb:%opt{lightorange}"
face global list "rgb:%opt{fg}"

# BUILTIN

face global Default "rgb:%opt{fg},rgb:%opt{bg}"
face global PrimarySelection "default,rgba:%opt{blue}%opt{selectionalpha}"
face global SecondarySelection "default,rgba:%opt{green}%opt{selectionalpha}"
face global PrimaryCursor "default,rgba:%opt{blue}%opt{cursoralpha}"
face global SecondaryCursor "default,rgba:%opt{green}%opt{cursoralpha}"
face global PrimaryCursorEol "default,rgba:%opt{lightred}%opt{cursoralpha}"
face global SecondaryCursorEol "default,rgba:%opt{darkorange}%opt{cursoralpha}"
face global LineNumbers "rgb:%opt{comment}"
face global LineNumberCursor "rgb:%opt{darkorange}"
face global LineNumbersWrapped "rgb:%opt{bg},rgb:%opt{bg}"
face global MenuForeground "rgb:%opt{fg},rgb:%opt{menuselection}"
face global MenuBackground "rgb:%opt{fg},rgb:%opt{subbg}"
face global MenuInfo "rgb:%opt{green}"
face global Information "rgb:%opt{fg},rgb:%opt{subbg}"
face global Error "rgb:%opt{lightred}"
face global StatusLine "rgb:%opt{fg},rgb:%opt{subbg}"
face global StatusLineMode "rgb:%opt{darkorange}"
face global StatusLineInfo "rgb:%opt{blue}"
face global StatusLineValue "rgb:%opt{fg}"
face global StatusCursor "default,rgba:%opt{blue}%opt{cursoralpha}"
face global Prompt "rgb:%opt{blue}"
face global MatchingChar "default,rgb:%opt{subbg}"
face global BufferPadding "rgb:%opt{bg},rgb:%opt{bg}"
face global Whitespace "rgb:%opt{comment}"

# PLUGINS

# kak-lsp
face global InlayHint "rgb:%opt{comment}"
face global parameter "rgb:%opt{lightred}+i"
face global enum "rgb:%opt{cyan}"
face global InlayDiagnosticError "rgb:%opt{lightred}"
face global InlayDiagnosticWarning "rgb:%opt{lightorange}"
face global InlayDiagnosticInfo "rgb:%opt{blue}"
face global InlayDiagnosticHint "rgb:%opt{hint}"
face global LineFlagError "rgb:%opt{lightred}"
face global LineFlagWarning "rgb:%opt{lightorange}"
face global LineFlagInfo "rgb:%opt{blue}"
face global LineFlagHint "rgb:%opt{hint}"
# Not all terminals support curly underlines, so use regular ones by default
face global DiagnosticError "default+u"
face global DiagnosticWarning "default+u"
face global DiagnosticInfo "default+u"
face global DiagnosticHint "default+u"
def -override one-enable-fancy-underlines %{
    face global DiagnosticError ",,rgb:%opt{lightred}+c"
    face global DiagnosticWarning ",,rgb:%opt{lightorange}+c"
    face global DiagnosticInfo ",,rgb:%opt{blue}+c"
    face global DiagnosticHint ",,rgb:%opt{hint}+u"
}
# Infobox faces
face global InfoDefault Information
face global InfoBlock block
face global InfoBlockQuote block
face global InfoBullet bullet
face global InfoHeader header
face global InfoLink link
face global InfoLinkMono header
face global InfoMono mono
face global InfoRule comment
face global InfoDiagnosticError InlayDiagnosticError
face global InfoDiagnosticHint InlayDiagnosticHint
face global InfoDiagnosticInformation InlayDiagnosticInfo
face global InfoDiagnosticWarning InlayDiagnosticWarning

# kak-rainbower
try %{ set global rainbow_colors "rgb:daa520" "rgb:9932cc" "rgb:00bfff" }
