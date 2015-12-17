" Vim color file
"
" This file is part of the vimterial colorscheme by
" Lorenzo Ruiz <lars@sindrosoft.com>.
"
" Maintainer: Lorenzo Ruiz <lars@sindrosoft.com>
" URL: https://github.com/larsbs/vimterial


" CSS Highlighting "{{{
" ================
" Common
Hi cssProp                  s:accent_teal       s:ignore
"hi cssAttr
hi link cssTagName          Statement
"hi cssIdentifier
"hi cssDefinition
Hi cssClassName             s:soft_green        s:ignore
hi link cssPseudoClass      cssClassName
hi link cssPseudoClassId    cssClassName
hi link cssNoise            Normal
" Hail2u Plugin
"hi cssUIAttr
"hi cssBoxProp
" }}}
