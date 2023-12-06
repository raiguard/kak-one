# One Dark

declare-option str fg "abb2bf"
declare-option str bg "282c34"
declare-option str subbg "373c47"

declare-option str lightred "e06c75"
declare-option str darkred "be5046"
declare-option str green "98c379"
declare-option str lightorange "e5c07b"
declare-option str darkorange "d19a66"
declare-option str blue "61afef"
declare-option str magenta "c678dd"
declare-option str cyan "56b6c2"

declare-option str comment "5c6370"

declare-option str selectionalpha "35"

# Menus do not support transparency, so we must hardcode the selection + sub bg colors
declare-option str menuselection "3f5369"

# CODE

set-face global value "rgb:%opt{darkorange}"
set-face global type "rgb:%opt{lightorange}"
set-face global variable "rgb:%opt{lightred}"
set-face global module "rgb:%opt{lightorange}"
set-face global function "rgb:%opt{blue}"
set-face global string "rgb:%opt{green}"
set-face global keyword "rgb:%opt{magenta}"
set-face global operator "rgb:%opt{fg}"
set-face global attribute "rgb:%opt{cyan}"
set-face global comment "rgb:%opt{comment}"
set-face global documentation "rgb:%opt{comment}"
set-face global meta "rgb:%opt{cyan}"
set-face global builtin "rgb:%opt{lightorange}"

# MARKUP

set-face global title "rgb:%opt{darkorange}"
set-face global header "rgb:%opt{green}"
set-face global mono "rgb:%opt{cyan}"
set-face global block "rgb:%opt{magenta}"
set-face global link "rgb:%opt{blue}"
set-face global bullet "rgb:%opt{lightorange}"
set-face global list "rgb:%opt{fg}"

# BUILTIN

set-face global Default "rgb:%opt{fg},rgb:%opt{bg}"
set-face global PrimarySelection "default,rgba:%opt{blue}%opt{selectionalpha}"
set-face global SecondarySelection "default,rgba:%opt{green}%opt{selectionalpha}"
set-face global PrimaryCursor "rgb:%opt{bg},rgb:%opt{blue}"
set-face global SecondaryCursor "rgb:%opt{bg},rgb:%opt{green}"
set-face global PrimaryCursorEol "rgb:%opt{bg},rgb:%opt{lightred}"
set-face global SecondaryCursorEol "rgb:%opt{bg},rgb:%opt{cyan}"
set-face global LineNumbers "rgb:%opt{comment}"
set-face global LineNumberCursor "rgb:%opt{darkorange}"
set-face global LineNumbersWrapped "rgb:%opt{bg},rgb:%opt{bg}"
set-face global MenuForeground "rgb:%opt{fg},rgb:%opt{menuselection}"
set-face global MenuBackground "rgb:%opt{fg},rgb:%opt{subbg}"
set-face global MenuInfo "rgb:%opt{green}"
set-face global Information "rgb:%opt{fg},rgb:%opt{subbg}"
set-face global Error "rgb:%opt{lightred}"
set-face global StatusLine "rgb:%opt{fg},rgb:%opt{subbg}"
set-face global StatusLineMode "rgb:%opt{darkorange}"
set-face global StatusLineInfo "rgb:%opt{blue}"
set-face global StatusLineValue "rgb:%opt{fg}"
set-face global StatusCursor "rgb:%opt{bg},rgb:%opt{blue}"
set-face global Prompt "rgb:%opt{blue}"
set-face global MatchingChar +bu
set-face global BufferPadding "rgb:%opt{bg},rgb:%opt{bg}"
set-face global Whitespace "rgb:%opt{comment}"

# PLUGINS

# kak-lsp
set-face global InlayHint "+d@type"
set-face global parameter "+i@variable"
set-face global enum "rgb:%opt{cyan}"
set-face global InlayDiagnosticError "rgb:%opt{lightred}"
set-face global InlayDiagnosticWarning "rgb:%opt{lightorange}"
set-face global InlayDiagnosticInfo "rgb:%opt{blue}"
set-face global InlayDiagnosticHint "rgb:%opt{green}"
set-face global LineFlagError "rgb:%opt{lightred}"
set-face global LineFlagWarning "rgb:%opt{lightorange}"
set-face global LineFlagInfo "rgb:%opt{blue}"
set-face global LineFlagHint "rgb:%opt{green}"
set-face global DiagnosticError ",,rgb:%opt{lightred}+c"
set-face global DiagnosticWarning ",,rgb:%opt{lightorange}+c"
set-face global DiagnosticInfo ",,rgb:%opt{blue}+c"
set-face global DiagnosticHint ",,rgb:%opt{green}+c"
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
try %{ set-option global rainbow_colors "rgb:%opt{lightorange}" "rgb:%opt{magenta}" "rgb:%opt{blue}" }

# For backwards compatibility
define-command -override -hidden one-enable-fancy-underlines %{
    echo -debug "one-enable-fancy-underlines is deprecated - curly underlines are enabled by default"
}
