" Vim color file
"
" This file is part of the vimterial colorscheme by
" Lorenzo Ruiz <lars@sindrosoft.com>.
"
" Maintainer: Lorenzo Ruiz <lars@sindrosoft.com>
" URL: https://github.com/larsbs/vimterial


" JavaScript Highlighting "{{{
" =======================
" Statement Keywords
Hi javaScriptMessage                      s:accent_teal       s:ignore
hi link javaScriptNull                    Constant
hi link javaScriptEventListenerKeywords   javaScriptMessage
Hi javaScriptGlobalObjects                s:soft_orange       s:ignore
" Function and arguments highlighting
hi link javaScriptFuncKeyword             Identifier
hi link javaScriptFuncDef                 Function
hi link javaScriptFuncExp                 javaScriptFuncDef
hi link javaScriptFunctionKey             javaScriptFuncDef
" Braces, Parens, symbols, colons
hi link javaScriptBraces                  Normal
hi link javaScriptParens                  Normal
hi link javaScriptOpSymbols               Operator
hi link javaScriptEndColons               Normal
hi link javaScriptLogicSymbols            Operator
" }}}
