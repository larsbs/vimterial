" Vim color file
" Maintainer:   Lorenzo Ruiz <lars@sindrosoft.com>
" Last Change:
" URL: https://github.com/larsbs/vimterial


set background=dark


hi clear


if exists("syntax_on")
    syntax reset
endif


let colors_name="vimterial"


" GENERAL "{{{
" =======
hi Normal           guifg=#cdd3de guibg=#263238 gui=none ctermbg=none
hi Cursor           guifg=#263238 guibg=#c0c5ce gui=none ctermbg=none
"hi CursorIM         guifg=#263238 guibg=#ff0000 gui=none ctermbg=none
"hi CursorColumn     guifg=#263238 guibg=#ff0000 gui=none ctermbg=none
hi CursorLine                     guibg=#1e282d gui=none ctermbg=none
hi Directory        guifg=#80cbc4               gui=none ctermbg=none
"hi DiffAdd
"hi DiffChange
"hi DiffDelete
"hi DiffText
"hi ErrorMsg
hi VertSplit        guifg=#32444d guibg=#263238 gui=none ctermbg=none
hi Folded           guifg=#263238 guibg=#546e7a gui=none ctermbg=none
hi FoldColumn       guifg=#263238 guibg=#546e7a gui=none ctermbg=none
"hi IncSearch
hi LineNr           guifg=#37474f               gui=none ctermbg=none
hi MatchParen       guifg=#151b1e guibg=#707b8f gui=none ctermbg=none
"hi ModeMsg
"hi MoreMsg
hi NonText          guifg=#37474f               gui=none ctermbg=none
"hi Question
"hi Search
"hi SpecialKey
"hi StatusLine       guifg=#263238 guibg=#c0c5ce gui=none ctermbg=none
"hi StatusLineNC
hi Title            guifg=#82b1ff               gui=bold ctermbg=none
hi Visual           guifg=#263238 guibg=#c0c5ce gui=none ctermbg=none
"hi VisualNOS
hi WarningMsg       guifg=#f77669               gui=none ctermbg=none
"hi WildMenu
"hi Menu
"hi Scrollbar
"hi Tooltip
" }}}


" Syntax Highlighting Groups (see :he group-name)

" COMMENTS "{{{
" ========
" Any comment
hi Comment          guifg=#546e7a               gui=none ctermbg=none
" }}}

" CONSTANTS "{{{
" =========
" Any constant
hi Constant         guifg=#f77669               gui=none ctermbg=none
" A string constant
hi String           guifg=#c3e88d               gui=none ctermbg=none
" }}}

" IDENTIFIERS "{{{
" ===========
" Any variable name
hi Identifier       guifg=#c792ea               gui=none ctermbg=none
" Function name (also: methods for classes)
hi Function         guifg=#82b1ff               gui=none ctermbg=none
" }}}

" STATEMENTS "{{{
" ==========
" Any statement
hi Statement        guifg=#c792ea               gui=none ctermbg=none
" if, then, else, endif, switch, etc.
"hi Conditional      guifg=#c792ea               gui=none ctermbg=none
" for, do, while, etc.
"hi Repeat           guifg=#c792ea               gui=none ctermbg=none
" case, default, etc.
"hi Label            guifg=#c792ea               gui=none ctermbg=none
" sizeof, +, *, etc.
hi Operator         guifg=#d9f5dd               gui=none ctermbg=none
" Any other keyword
"hi Keyword          guifg=#ff0000               gui=none ctermbg=none
" Try, catch, throw
"hi Exception        guifg=#c792ea               gui=none ctermbg=none
" }}}

" PREPROCS "{{{
" ========
" Generic preprocessor
hi PreProc          guifg=#c792ea               gui=none ctermbg=none
" Preprocessor #include
"hi Include          guifg=#c792ea               gui=none ctermbg=none
" Preprocessor #define
"hi Define           guifg=#c792ea               gui=none ctermbg=none
" Same as define
"hi Macro            guifg=#c792ea               gui=none ctermbg=none
" Preprocessor #if, #else, #endif, etc.
"hi PreCondit        guifg=#c792ea               gui=none ctermbg=none
" }}}

" TYPES "{{{
" =====
" int, long, char, etc.
hi Type             guifg=#c792ea               gui=none ctermbg=none
" static, register, volatile, etc.
"hi StorageClass     guifg=#c792ea               gui=none ctermbg=none
" struct, union, enum, etc.
"hi Structure        guifg=#ff0000               gui=none ctermbg=none
" a typedef
"hi Typedef          guifg=#ff0000               gui=none ctermbg=none
" }}}

" SPECIALS "{{{
" ========
" Any special symbol
hi Special          guifg=#cdd3de               gui=none ctermbg=none
" Special character in a constant
hi SpecialChar      guifg=#80cbc4               gui=none ctermbg=none
" You can use CTRL-] on this
"hi Tag              guifg=#ff0000               gui=none ctermbg=none
" Character that needs attention
"hi Delimiter        guifg=#ff0000               gui=none ctermbg=none
" Special things inside a comment
"hi SpecialComment   guifg=#c792ea               gui=none ctermbg=none
" Debugging statements
"hi Debug            guifg=#c792ea               gui=none ctermbg=none
" }}}

" UNDERLINEDS "{{{
" ===========
" Text that stands out, HTML links
"hi Underlined       guifg=#c792ea               gui=none ctermbg=none
" }}}

" IGNORES "{{{
" =======
" Left blank, hidden hl-Ignore
"hi Ignore           guifg=#c792ea               gui=none ctermbg=none
" }}}

" ERRORS "{{{
" ======
" Any erroneous construct
"hi Error            guifg=#c792ea               gui=none ctermbg=none
" }}}

" TODOS "{{{
" =====
" Anything that needs extra attention; mostly the kewords
" TODO FIXME and XXX
"hi Todo             guifg=#c792ea               gui=none ctermbg=none
" }}}


" JavaScript Highlighting "{{{
" =======================
" Statement Keywords
hi javaScriptMessage       guifg=#80cbc4               gui=none ctermbg=none
hi javaScriptNull          guifg=#f77669               gui=none ctermbg=none
hi javaScriptEventListenerKeywords  guifg=#80cbc4      gui=none ctermbg=none
hi javaScriptGlobalObjects  guifg=#ffcb6b              gui=none ctermbg=none

" Function and arguments highlighting
hi javaScriptFuncKeyword   guifg=#c792ea               gui=none ctermbg=none
hi javaScriptFuncDef       guifg=#82b1ff               gui=none ctermbg=none
hi javaScriptFuncExp       guifg=#ff0000               gui=none ctermbg=none
hi javaScriptFunctionKey   guifg=#82b1ff               gui=none ctermbg=none

" Braces, Parens, symbols, colons
hi javaScriptBraces        guifg=#cdd3de               gui=none ctermbg=none
hi javaScriptParens        guifg=#cdd3de               gui=none ctermbg=none
hi javaScriptOpSymbols     guifg=#d9f5dd               gui=none ctermbg=none
hi javaScriptEndColons     guifg=#d9f5dd               gui=none ctermbg=none
hi javaScriptLogicSymbols  guifg=#d9f5dd               gui=none ctermbg=none
" }}}

" HTML Highlighting "{{{
" =================
" Tags
hi htmlTag              guifg=#80cbc4               gui=none ctermbg=none
hi htmlTagN             guifg=#ff0000               gui=none ctermbg=none
hi htmlEndTag           guifg=#80cbc4               gui=none ctermbg=none
hi htmlTagName          guifg=#ff5370               gui=none ctermbg=none
hi htmlSpecialTagName   guifg=#ff0000               gui=none ctermbg=none
" }}}

" Jinja Highlighting "{{{
" ==================
" Statements
hi jinjaStatement       guifg=#c792ea               gui=none ctermbg=none
hi jinjaVariable        guifg=#82b1ff               gui=none ctermbg=none
hi jinjaString          guifg=#c3e88d               gui=none ctermbg=none
" }}}

" CSS Highlighting "{{{
" ================
" Hail2u plugin
hi cssProp               guifg=#80cbc4               gui=none ctermbg=none
"hi cssAttr               guifg=#80cbc4               gui=none ctermbg=none
hi cssTagName            guifg=#c792ea               gui=none ctermbg=none
"hi cssIdentifier         guifg=#ff0000               gui=none ctermbg=none
"hi cssDefinition         guifg=#ff0000               gui=none ctermbg=none
"hi cssPseudoClass        guifg=#ff0000               gui=none ctermbg=none
hi cssPseudoClassId      guifg=#c3e88d               gui=none ctermbg=none
hi cssClassName          guifg=#c3e88d               gui=none ctermbg=none
hi cssUIAttr             guifg=#80cbc4               gui=none ctermbg=none
hi cssBoxProp            guifg=#80cbc4               gui=none ctermbg=none
hi cssNoise              guifg=#cdd3de               gui=none ctermbg=none
" JulesWang plugin
hi cssBraces             guifg=#cdd3de               gui=none ctermbg=none
" }}}

" LESS Highlighting "{{{
" =================
" Groenewege plugin
hi lessVariable            guifg=#ff5370               gui=none ctermbg=none
hi lessDefinition          guifg=#80cbc4               gui=none ctermbg=none
hi lessClass               guifg=#c3e88d               gui=none ctermbg=none
hi lessAmpersandChar       guifg=#d9f5dd               gui=none ctermbg=none
" Genoma plugin
hi lessAmpersand           guifg=#d9f5dd               gui=none ctermbg=none
hi lessClassChar           guifg=#c3e88d               gui=none ctermbg=none
hi lessFunction            guifg=#c3e88d               gui=none ctermbg=none
" }}}

" NERDTree Highlighting "{{{
" =====================
" Highlighting for directory nodes and file nodes
hi NERDTreeDirSlash        guifg=#afbdc4               gui=none ctermbg=none
hi NERDTreeDir             guifg=#afbdc4               gui=bold ctermbg=none
hi NERDTreeUp              guifg=#ff0000               gui=none ctermbg=none
hi NERDTreeFile            guifg=#607d8b               gui=none ctermbg=none
hi NERDTreeCWD             guifg=#80cbc4               gui=none ctermbg=none
hi NERDTreeOpenable        guifg=#80cbc4               gui=none ctermbg=none
hi NERDTreeClosable        guifg=#80cbc4               gui=none ctermbg=none
" }}}
