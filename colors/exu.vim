" Maintainer:   Lars H. Nielsen (dengmao@gmail.com)
" Maintainer:   Jacek Wysocki (jacek.wysocki@gmail.com) after 2011
" Last Change:  2011-05-25 10:39:11

set background=dark

hi clear

if exists("syntax_on")
  syntax reset
endif

let colors_name = "exu"


" Vim >= 7.0 specific colors
if version >= 700
     hi     CursorLine              guibg=#1a1a1a     guibg=NONE           gui=NONE       ctermfg=white         ctermbg=NONE         cterm=NONE
     hi     CursorColumn            guibg=#2d2d2d     guibg=NONE           gui=NONE       ctermfg=white         ctermbg=NONE         cterm=NONE
     hi     MatchParen              guifg=#00ff30     guibg=#003300        gui=bold       ctermfg=white         ctermbg=darkgray     cterm=NONE
     hi     Pmenu                   guifg=#f6f3e8     guibg=#444444        gui=NONE       ctermfg=white         ctermbg=darkgray     cterm=NONE
     hi     PmenuSel                guifg=#000000     guibg=#cae682        gui=NONE       ctermfg=white         ctermbg=darkgray     cterm=NONE
endif
" General colors
hi   Cursor         guifg=#000000   guibg=#FFA500   gui=NONE         ctermfg=black       ctermbg=yellow      cterm=NONE
hi   Normal         guifg=#f6f3e8   guibg=#090909   gui=NONE         ctermfg=white       ctermbg=NONE      cterm=NONE
hi   NonText        guifg=#303030   guibg=#090909   gui=italic       ctermfg=white       ctermbg=NONE      cterm=NONE
hi   LineNr         guifg=#666666   guibg=#10101f   gui=NONE         ctermfg=white       ctermbg=NONE      cterm=NONE
hi   StatusLine     guifg=#f6f3e8   guibg=#333333   gui=italic       ctermfg=white       ctermbg=darkgray  cterm=NONE
hi   StatusLineNC   guifg=#857b6f   guibg=#333333   gui=NONE         ctermfg=white       ctermbg=darkgray  cterm=NONE
hi   VertSplit      guifg=#444444   guibg=#333333   gui=NONE         ctermfg=white       ctermbg=darkgray  cterm=NONE
hi   Folded         guibg=#182018   guifg=#a0a8b0   gui=NONE         ctermfg=white       ctermbg=NONE      cterm=NONE
hi   Title          guifg=#f6f3e8   guibg=NONE      gui=bold         ctermfg=white       ctermbg=NONE      cterm=NONE
hi   Visual         guifg=NONE      guibg=#444444   gui=NONE         ctermfg=NONE        ctermbg=darkgray  cterm=NONE
hi   SpecialKey     guifg=#aa0000   guibg=#111111   gui=NONE         ctermfg=red         ctermbg=NONE      cterm=NONE
hi   Search         guifg=#c759ff   guibg=#110000   gui=NONE         ctermfg=black       ctermbg=yellow    cterm=NONE
hi   IncSearch      guifg=#ff00ff   guibg=#000011   gui=underline    ctermfg=black       ctermbg=green     cterm=NONE

" Syntax highlighting
hi   Comment       guifg=#6b6b6b   guibg=NONE   gui=NONE     ctermfg=darkgray    ctermbg=NONE   cterm=NONE
hi   String        guifg=#91F8BC   guibg=NONE   gui=italic   ctermfg=green       ctermbg=NONE   cterm=NONE
hi   Number        guifg=#F891E0   guibg=NONE   gui=italic   ctermfg=magenta     ctermbg=NONE   cterm=NONE

hi   Keyword       guifg=#96CBFE   guibg=NONE   gui=NONE     ctermfg=blue        ctermbg=NONE   cterm=NONE
hi   PreProc       guifg=#96CBFE   guibg=NONE   gui=NONE     ctermfg=blue        ctermbg=NONE   cterm=NONE
hi   Conditional   guifg=#9F5CFF   guibg=NONE   gui=bold     ctermfg=blue        ctermbg=NONE   cterm=NONE   "   if   else   end

hi   Todo          guifg=#8f8f8f   guibg=NONE   gui=NONE     ctermfg=red         ctermbg=NONE   cterm=NONE
hi   Constant      guifg=#99CC99   guibg=NONE   gui=NONE     ctermfg=cyan        ctermbg=NONE   cterm=NONE

hi   Identifier    guifg=#C6C5FE   guibg=NONE   gui=NONE     ctermfg=cyan        ctermbg=NONE   cterm=NONE
hi   Function      guifg=#EED2A7   guibg=NONE   gui=NONE     ctermfg=brown       ctermbg=NONE   cterm=NONE
hi   Type          guifg=#FFFFB6   guibg=NONE   gui=NONE     ctermfg=yellow      ctermbg=NONE   cterm=NONE
hi   Statement     guifg=#FFFF75   guibg=NONE   gui=NONE     ctermfg=lightblue   ctermbg=NONE   cterm=NONE

hi   Special       guifg=#E18964   guibg=NONE   gui=NONE     ctermfg=white       ctermbg=NONE   cterm=NONE
hi   Delimiter     guifg=#F4F495   guibg=NONE   gui=NONE     ctermfg=cyan        ctermbg=NONE   cterm=NONE
hi   Operator      guifg=white     guibg=NONE   gui=NONE     ctermfg=white       ctermbg=NONE   cterm=NONE

hi link Character       Constant
hi link Boolean         Constant
hi link Float           Number
hi link Repeat          Statement
hi link Label           Statement
hi link Exception       Statement
hi link Include         PreProc
hi link Define          PreProc
hi link Macro           PreProc
hi link PreCondit       PreProc
hi link StorageClass    Type
hi link Structure       Type
hi link Typedef         Type
hi link Tag             Special
hi link SpecialChar     Special
hi link SpecialComment  Special
hi link Debug           Special


" Special for Ruby
hi rubyRegexp                  guifg=#B18A3D      guibg=NONE      gui=NONE      ctermfg=brown          ctermbg=NONE      cterm=NONE
hi rubyRegexpDelimiter         guifg=#FF8000      guibg=NONE      gui=NONE      ctermfg=brown          ctermbg=NONE      cterm=NONE
hi rubyEscape                  guifg=white        guibg=NONE      gui=NONE      ctermfg=cyan           ctermbg=NONE      cterm=NONE
hi rubyInterpolationDelimiter  guifg=#00A0A0      guibg=NONE      gui=NONE      ctermfg=blue           ctermbg=NONE      cterm=NONE
hi rubyControl                 guifg=#6699CC      guibg=NONE      gui=NONE      ctermfg=blue           ctermbg=NONE      cterm=NONE  "and break, etc
"hi rubyGlobalVariable          guifg=#FFCCFF      guibg=NONE      gui=NONE      ctermfg=lightblue      ctermbg=NONE      cterm=NONE  "yield
hi rubyStringDelimiter         guifg=#336633      guibg=NONE      gui=NONE      ctermfg=lightgreen     ctermbg=NONE      cterm=NONE
"rubyInclude
"rubySharpBang
"rubyAccess
"rubyPredefinedVariable
"rubyBoolean
"rubyClassVariable
"rubyBeginEnd
"rubyRepeatModifier
"hi link rubyArrayDelimiter    Special  " [ , , ]
"rubyCurlyBlock  { , , }

hi link rubyClass             Keyword
hi link rubyModule            Keyword
hi link rubyKeyword           Keyword
hi link rubyOperator          Operator
hi link rubyIdentifier        Identifier
hi link rubyInstanceVariable  Identifier
hi link rubyGlobalVariable    Identifier
hi link rubyClassVariable     Identifier
hi link rubyConstant          Type


" Special for Java
" hi link javaClassDecl    Type
hi link javaScopeDecl         Identifier
hi link javaCommentTitle      javaDocSeeTag
hi link javaDocTags           javaDocSeeTag
hi link javaDocParam          javaDocSeeTag
hi link javaDocSeeTagParam    javaDocSeeTag

hi javaDocSeeTag              guifg=#CCCCCC     guibg=NONE        gui=NONE      ctermfg=darkgray    ctermbg=NONE        cterm=NONE
hi javaDocSeeTag              guifg=#CCCCCC     guibg=NONE        gui=NONE      ctermfg=darkgray    ctermbg=NONE        cterm=NONE
"hi javaClassDecl              guifg=#CCFFCC     guibg=NONE        gui=NONE      ctermfg=white       ctermbg=NONE        cterm=NONE


" Special for XML
hi link xmlTag          Keyword
hi link xmlTagName      Conditional
hi link xmlEndTag       Identifier


" Special for HTML
hi link htmlTag         Keyword
hi link htmlTagName     Conditional
hi link htmlEndTag      Identifier


" Special for Javascript
hi link javaScriptNumber      Number


" Special for Python
"hi  link pythonEscape         Keyword


" Special for CSharp
hi  link csXmlTag             Keyword


" Special for PHP
"phpNumber
"phpFloat
"phpHereDoc
hi   phpComment                  guifg=#777777       guibg=NONE       gui=NONE     ctermfg=darkgray      ctermbg=NONE    cterm=NONE
hi   phpOperator                 guifg=#F0F000       guibg=NONE       gui=NONE     ctermfg=darkgray      ctermbg=NONE    cterm=NONE
hi   phpVarSelector              guifg=#96CBFE       guibg=NONE       gui=italic   ctermfg=darkgray      ctermbg=NONE    cterm=NONE
hi   phpIdentifier               guifg=#96CBFE       guibg=NONE       gui=bold     ctermfg=darkgray      ctermbg=NONE    cterm=NONE
hi   phpSuperglobal              guifg=#96CBFE       guibg=NONE       gui=bold     ctermfg=darkgray      ctermbg=NONE    cterm=NONE

hi   phpConstructRegion          guifg=#FF00FF       guibg=#ffffff    gui=bold     ctermfg=darkgray      ctermbg=NONE    cterm=NONE
hi   phpSwitchConstructRegion    guifg=#FF00FF       guibg=#ffffff    gui=bold     ctermfg=darkgray      ctermbg=NONE    cterm=NONE
hi   phpDoWhileConstructRegion   guifg=#FF00FF       guibg=#ffffff    gui=bold     ctermfg=darkgray      ctermbg=NONE    cterm=NONE

hi   phpStructure                guifg=#FFFFFF       guibg=NONE       gui=bold     ctermfg=darkgray      ctermbg=NONE    cterm=NONE
hi   phpDefine                   guifg=#96CBFE       guibg=NONE       gui=bold     ctermfg=darkgray      ctermbg=NONE    cterm=NONE

"Custom highlighting for statusline
hi StatusSeparator guifg=black     guibg=#333333   gui=bold         ctermfg=black        ctermbg=darkgray  cterm=NONE
hi StatusFilename  guifg=#aa77ff   guibg=#333333   gui=bold,italic  ctermfg=lightblue    ctermbg=darkgray  cterm=NONE
hi StatusEncoding  guifg=#88ff88   guibg=#333333   gui=italic       ctermfg=green        ctermbg=darkgray  cterm=NONE
hi StatusError     guifg=#ff0000   guibg=#333333   gui=italic       ctermfg=red          ctermbg=darkgray  cterm=NONE

hi StatusL1        guifg=#ffffff   guibg=#333333   gui=italic       ctermfg=lightgray      ctermbg=darkgray  cterm=NONE
hi StatusL2        guifg=#cccccc   guibg=#333333   gui=italic       ctermfg=lightgray      ctermbg=darkgray  cterm=NONE
hi StatusL3        guifg=#aaaaaa   guibg=#333333   gui=italic       ctermfg=lightgray      ctermbg=darkgray  cterm=NONE
hi StatusL4        guifg=#999999   guibg=#333333   gui=italic       ctermfg=lightgray      ctermbg=darkgray  cterm=NONE
hi StatusL5        guifg=#777777   guibg=#333333   gui=italic       ctermfg=lightgray      ctermbg=darkgray  cterm=NONE
