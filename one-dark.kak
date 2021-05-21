# One Dark

decl -hidden str fg "abb2bf"
decl -hidden str bg "282c34"
decl -hidden str subbg "373c47"

decl -hidden str lightred "e06c75"
decl -hidden str darkred "be5046"
decl -hidden str green "98c379"
decl -hidden str lightorange "e5c07b"
decl -hidden str darkorange "d19a66"
decl -hidden str blue "61afef"
decl -hidden str magenta "c678dd"
decl -hidden str cyan "56b6c2"

decl -hidden str gutter "636d83"
decl -hidden str comment "5c6370"

decl -hidden str cursoralpha "80"
decl -hidden str selectionalpha "40"

# Menus do not support transparency, so we must hardcode the selection + sub bg colors
decl -hidden str menuselection "405770"

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
face global meta "rgb:%opt{fg}"
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
face global LineNumbers "rgb:%opt{gutter}"
face global LineNumberCursor "rgb:%opt{darkorange}"
face global LineNumbersWrapped "rgb:%opt{bg},rgb:%opt{bg}"
face global MenuForeground "rgb:%opt{fg},rgb:%opt{menuselection}"
face global MenuBackground "rgb:%opt{fg},rgb:%opt{subbg}"
face global MenuInfo "rgb:%opt{green}"
face global Information "rgb:%opt{fg},rgb:%opt{subbg}"
face global Error "rgb:%opt{darkred}"
face global StatusLine "rgb:%opt{fg},rgb:%opt{subbg}"
face global StatusLineMode "rgb:%opt{darkorange}"
face global StatusLineInfo "rgb:%opt{blue}"
face global StatusLineValue "rgb:%opt{fg}"
face global StatusCursor "default,rgba:%opt{blue}%opt{cursoralpha}"
face global Prompt "rgb:%opt{blue}"
face global MatchingChar "default+bu"
face global BufferPadding "rgb:%opt{bg},rgb:%opt{bg}"
face global Whitespace "rgb:%opt{gutter}"

# CUSTOM

face global Ruler "default,rgb:%opt{subbg}"

# PLUGINS

# kak-lsp
face global InlayHint "rgb:%opt{comment}"
face global parameter "rgb:%opt{lightred}+i"
face global enum "rgb:%opt{cyan}"
face global DiagnosticError "default,rgba:%opt{darkred}%opt{selectionalpha}"
face global DiagnosticWarning "default,rgba:%opt{darkorange}%opt{selectionalpha}"
face global InlayDiagnosticError "rgb:%opt{darkred}"
face global InlayDiagnosticWarning "rgb:%opt{darkorange}"
face global LineFlagErrors "rgb:%opt{darkred}"
face global LineFlagWarnings "rgb:%opt{darkorange}"
# kakoune-phantom-selection
face global PhantomSelection "default,rgba:%opt{magenta}%opt{selectionalpha}"
# phantom.kak
face global Phantom "default,rgba:%opt{magenta}%opt{selectionalpha}"
