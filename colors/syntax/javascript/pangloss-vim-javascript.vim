" Vim color file
"
" This file is part of the vimterial colorscheme by
" Lorenzo Ruiz <lars@sindrosoft.com>.
"
" Maintainer: Lorenzo Ruiz <lars@sindrosoft.com>
" URL: https://github.com/larsbs/vimterial


" JavaScript Highlighting "{{{
" =======================
hi link jsSpecial               Statement

hi link jsFuncArgRest           jsSpecial
hi link jsDocTags               jsSpecial
hi link jsStatic                jsSpecial
hi link jsSuper                 jsSpecial
hi link jsPrototype             jsSpecial
hi link jsArgsObj               jsSpecial
"hi link jsTemplateVar         jsSpecial
hi link jsExceptions            jsSpecial
hi link jsFutureKeys            jsSpecial
hi link jsBuiltins              jsSpecial
hi link jsDecorator             jsSpecial
hi link jsHtmlEvents            jsSpecial

hi link jsNull                  Constant
hi link jsUndefined             Constant

hi link jsFunctionKey           Function

hi link jsFuncAssignExpr        Function
hi link jsFuncAssignIdent       Function

Hi jsGlobalObjects              s:soft_orange       s:ignore
Hi jsThis                       s:soft_orange       s:ignore
" }}}
