" MADE-UP NAME    XTERM  ANSI
" ========================================================================
" almost black    234    0
" darker grey     235    background color
" dark grey       236    8
" grey            238    8
" medium grey     240    8
" light grey      242    7
" lighter grey    250    foreground color
" white           231    15
" purple          60     5
" light purple    103    13
" green           65     2
" light green     108    10
" aqua            66     6
" light aqua      73     14
" blue            67     4
" light blue      110    12
" red             131    1
" orange          208    9
" ocre            101    3
" yellow          229    11

hi clear

if exists('syntax_on')
  syntax reset
endif

let g:colors_name = 'apprentice'

if ($TERM =~# '256' || &t_Co >= 256) || has('gui_running')
  hi Normal           ctermbg=NONE ctermfg=250  cterm=NONE
  hi LineNr           ctermbg=235  ctermfg=240   cterm=NONE
  hi FoldColumn       ctermbg=234  ctermfg=242   cterm=NONE
  hi Folded           ctermbg=234  ctermfg=242   cterm=NONE
  hi MatchParen       ctermbg=NONE ctermfg=229   cterm=underline
  hi signColumn       ctermbg=234  ctermfg=242   cterm=NONE

  set background=dark

  hi Comment          ctermbg=NONE ctermfg=240   cterm=NONE
  hi Conceal          ctermbg=NONE ctermfg=250   cterm=NONE
  hi Constant         ctermbg=NONE ctermfg=208   cterm=NONE
  hi Error            ctermbg=NONE ctermfg=131   cterm=reverse
  hi Identifier       ctermbg=NONE ctermfg=67    cterm=NONE
  hi Ignore           ctermbg=NONE ctermfg=NONE  cterm=NONE
  hi PreProc          ctermbg=NONE ctermfg=66    cterm=NONE
  hi Special          ctermbg=NONE ctermfg=65    cterm=NONE
  hi Statement        ctermbg=NONE ctermfg=110   cterm=NONE
  hi String           ctermbg=NONE ctermfg=108   cterm=NONE
  hi Todo             ctermbg=NONE ctermfg=NONE  cterm=reverse
  hi Type             ctermbg=NONE ctermfg=103   cterm=NONE
  hi Underlined       ctermbg=NONE ctermfg=66    cterm=underline

  hi NonText          ctermbg=NONE ctermfg=240   cterm=NONE

  hi Pmenu            ctermbg=238  ctermfg=250   cterm=NONE
  hi PmenuSbar        ctermbg=240  ctermfg=NONE  cterm=NONE
  hi PmenuSel         ctermbg=66   ctermfg=235   cterm=NONE
  hi PmenuThumb       ctermbg=66   ctermfg=66    cterm=NONE

  hi ErrorMsg         ctermbg=131  ctermfg=235   cterm=NONE
  hi ModeMsg          ctermbg=108  ctermfg=235   cterm=NONE
  hi MoreMsg          ctermbg=NONE ctermfg=66    cterm=NONE
  hi Question         ctermbg=NONE ctermfg=108   cterm=NONE
  hi WarningMsg       ctermbg=NONE ctermfg=131   cterm=NONE

  hi TabLine          ctermbg=238  ctermfg=101   cterm=NONE
  hi TabLineFill      ctermbg=238  ctermfg=238   cterm=NONE
  hi TabLineSel       ctermbg=101  ctermfg=235   cterm=NONE

  hi Cursor           ctermbg=242  ctermfg=NONE  cterm=NONE
  hi CursorColumn     ctermbg=236  ctermfg=NONE  cterm=NONE
  hi CursorLineNr     ctermbg=236  ctermfg=73    cterm=NONE
  hi CursorLine       ctermbg=234  ctermfg=NONE  cterm=NONE

  hi helpLeadBlank    ctermbg=NONE ctermfg=NONE  cterm=NONE
  hi helpNormal       ctermbg=NONE ctermfg=NONE  cterm=NONE

  hi StatusLine       ctermbg=101  ctermfg=235   cterm=NONE
  hi StatusLineNC     ctermbg=238  ctermfg=101   cterm=NONE

  hi StatusLineTerm   ctermbg=101  ctermfg=235   cterm=NONE
  hi StatusLineTermNC ctermbg=238  ctermfg=101   cterm=NONE

  hi Visual           ctermbg=NONE ctermfg=110   cterm=reverse
  hi VisualNOS        ctermbg=NONE ctermfg=NONE  cterm=underline

  hi VertSplit        ctermbg=238  ctermfg=238   cterm=NONE
  hi WildMenu         ctermbg=110  ctermfg=235   cterm=NONE

  hi Function         ctermbg=NONE ctermfg=229   cterm=NONE
  hi SpecialKey       ctermbg=NONE ctermfg=237   cterm=NONE
  hi Title            ctermbg=NONE ctermfg=231   cterm=NONE

  hi DiffAdd          ctermbg=235  ctermfg=108   cterm=reverse
  hi DiffChange       ctermbg=235  ctermfg=103   cterm=reverse
  hi DiffDelete       ctermbg=235  ctermfg=131   cterm=reverse
  hi DiffText         ctermbg=235  ctermfg=208   cterm=reverse

  hi IncSearch        ctermbg=131  ctermfg=235   cterm=NONE
  hi Search           ctermbg=235  ctermfg=32   cterm=NONE

  hi Directory        ctermbg=NONE ctermfg=73    cterm=NONE

  hi debugPC          ctermbg=67
  hi debugBreakpoint  ctermbg=131

  hi SpellBad       ctermbg=NONE ctermfg=131   cterm=undercurl
  hi SpellCap       ctermbg=NONE ctermfg=73    cterm=undercurl
  hi SpellLocal     ctermbg=NONE ctermfg=65    cterm=undercurl
  hi SpellRare      ctermbg=NONE ctermfg=208   cterm=undercurl

  hi ColorColumn    ctermbg=234  ctermfg=NONE cterm=NONE
endif

hi link Boolean                  Constant
hi link Character                Constant
hi link Conceal                  Normal
hi link Conditional              Statement
hi link Debug                    Special
hi link Define                   PreProc
hi link Delimiter                Special
hi link Exception                Statement
hi link Float                    Number
hi link HelpCommand              Statement
hi link HelpExample              Statement
hi link Include                  PreProc
hi link Keyword                  Statement
hi link Label                    Statement
hi link Macro                    PreProc
hi link Number                   Constant
hi link Operator                 Statement
hi link PreCondit                PreProc
hi link Repeat                   Statement
hi link SpecialChar              Special
hi link SpecialComment           Special
hi link StorageClass             Type
hi link Structure                Type
hi link Tag                      Special
hi link Typedef                  Type

hi link htmlEndTag               htmlTagName
hi link htmlLink                 Function
hi link htmlSpecialTagName       htmlTagName
hi link htmlTag                  htmlTagName
hi link htmlBold                 Normal
hi link htmlItalic               Normal
hi link xmlTag                   Statement
hi link xmlTagName               Statement
hi link xmlEndTag                Statement

hi link markdownItalic           Preproc
hi link asciidocQuotedEmphasized Preproc

hi link diffBDiffer              WarningMsg
hi link diffCommon               WarningMsg
hi link diffDiffer               WarningMsg
hi link diffIdentical            WarningMsg
hi link diffIsA                  WarningMsg
hi link diffNoEOL                WarningMsg
hi link diffOnly                 WarningMsg
hi link diffRemoved              WarningMsg
hi link diffAdded String
