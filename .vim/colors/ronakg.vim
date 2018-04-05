" Vim color file
"
" Author: Ronak Gandhi <me@ronakg.com>
hi clear

if exists('syntax_on')
  syntax reset
endif

let g:colors_name='ronakg'

hi Normal       ctermfg = 252      ctermbg = none      cterm = none
hi LineNr       ctermfg = darkgrey ctermbg = 237
hi Cursor       ctermbg=NONE       ctermfg=NONE        cterm=NONE
hi CursorLineNr ctermfg = red      ctermbg = 236
hi CursorLine   ctermbg = 236      cterm = none
hi Conditional  ctermfg = 214
hi Statement    ctermfg = 214
hi Type         ctermfg = darkgreen
hi Storageclass ctermfg = 161
hi String       ctermfg = darkred
hi Number       ctermfg = 161
hi cTodo        ctermfg = darkred    cterm = italic ctermbg = yellow
hi Boolean      ctermfg = 161
hi Debug        ctermfg = yellow     cterm = none
hi Identifier   ctermfg = darkblue
hi Label        ctermfg = darkblue
hi Directory    ctermfg = cyan
hi Comment      ctermfg = 245        cterm = none
hi Function     ctermfg = 152
hi Operator     ctermfg = grey
hi Keyword      ctermfg = darkblue
hi Constant     ctermfg = 161
hi Macro        ctermfg = darkyellow
hi Tag          ctermfg = black
hi PreCondit    ctermfg = darkyellow
hi Character    ctermfg = 222
hi SpecialChar  ctermfg = magenta
hi SpecialKey   ctermfg = 237        cterm = none
hi PreProc      ctermfg = green
hi Delimiter    ctermfg = 241
hi Visual       ctermfg = brown    ctermbg = grey
hi IncSearch    ctermbg=darkred     ctermfg=black       cterm=NONE
hi Search       ctermbg=yellow      ctermfg=black       cterm=NONE
hi NonText      ctermfg = 237      ctermbg = none
hi MatchParen   ctermfg=red    ctermbg=235  cterm= underline
hi SignColumn   ctermfg = none     ctermbg = 237
hi StatusLine       ctermbg=101  ctermfg=235 cterm=NONE
hi StatusLineNC     ctermbg=238  ctermfg=101 cterm=NONE

hi StatusLineTerm   ctermbg=101  ctermfg=235 cterm=NONE
hi StatusLineTermNC ctermbg=238  ctermfg=101 cterm=NONE

hi DiffAdd      ctermfg = black    ctermbg = 114
hi DiffChange   ctermfg = black    ctermbg = cyan
hi DiffText     ctermfg = white    ctermbg = darkred
hi DiffDelete   ctermfg = black    ctermbg = 145

hi Pmenu        ctermfg = red      ctermbg = black
hi PmenuSel     ctermfg = black    ctermbg = lightblue

hi Folded       ctermfg = black
hi MatchParen   ctermfg = black    ctermbg = yellow
hi VertSplit    ctermfg = darkgrey

hi StartifyFile ctermfg = red
hi Startifypath ctermfg = grey
hi ColorColumn  ctermbg = 236

hi link yamlConstant Keyword
hi link yamlIndicator PreCondit
hi link yamlAnchor  Function
hi link yamlAlias Function
hi link yamlKey   Identifier
hi link yamlType  Type

hi link yamlComment Comment
hi link yamlBlock Operator
hi link yamlString  String
hi link yamlEscape  Special

set background=dark
