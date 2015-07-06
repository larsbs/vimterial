" Vim color file
" Maintainer:   Lorenzo Ruiz <lars@sindrosoft.com>
" Last Change:
" URL: https://github.com/larsbs/vimterial


" CONFIGURATION "{{{
" =============
set background=dark

hi clear

if exists("syntax_on")
    syntax reset
endif

let colors_name="vimterial"
" }}}

" UTILS "{{{
" =============
function! RemoveNewlines(string)
    return substitute(a:string, '\n', '', 'g')
endfunction

" Custom Hi command that accepts colors as variables.
" Usage -> Hi [group] [guifg_color] [guibg_colors]
command! -nargs=+ Hi call CustomHighlighter(<f-args>)
function! CustomHighlighter(name, ...)
    let colour_order = ['guifg', 'guibg']
    let command = 'hi ' . a:name
    if (len(a:000) < 1) || (len(a:000) > (len(colour_order)))
        echoerr "No colour or too many colours specified"
    else
        for i in range(0, len(a:000) - 1)
            " Extract the color from the variable. If we don't do
            " this, then, the variable is parsed as a string and
            " we get a color asignation error.
            redir => s:color
            silent exe 'echo '.a:000[i]
            redir END
            let s:color = RemoveNewlines(s:color)
            if s:color != 'ignore'
                let command .= ' ' . colour_order[i] . '=' . s:color
            endif
        endfor
        exe command
    endif
endfunc
" }}}

" COLORS "{{{
" =======
let s:none              = 'NONE'
let s:ignore            = 'ignore'
let s:testing           = '#CDFF00'

let s:darkest_grey_blue = '#1e282d'
let s:darker_grey_blue  = '#263238'
let s:dark_grey_blue    = '#37474f'
let s:grey_blue         = '#546e7a'
let s:light_grey_blue   = '#c0c5ce'
let s:lighter_grey_blue = '#cdd3de'

let s:accent_teal       = '#80cbc4'

let s:light_blue        = '#82b1ff'
let s:soft_red          = '#f77669'
let s:soft_green        = '#c3e88d'
let s:soft_violet       = '#c792ea'
let s:soft_lime_green   = '#d9f5dd'
let s:soft_orange       = '#ffcb6b'
let s:light_red         = '#ff5370'
" }}}

" GENERAL "{{{
" =======
Hi Normal               s:lighter_grey_blue  s:darker_grey_blue
Hi Cursor               s:darker_grey_blue   s:light_grey_blue
"hi CursorIM
"hi CursorColumn
Hi CursorLine           s:ignore             s:darkest_grey_blue
Hi Directory            s:accent_teal        s:ignore
"hi DiffAdd
"hi DiffChange
"hi DiffDelete
"hi DiffText
"hi ErrorMsg
Hi VertSplit            s:darker_grey_blue   s:dark_grey_blue
Hi Folded               s:darker_grey_blue   s:grey_blue
Hi FoldedColumn         s:darker_grey_blue   s:grey_blue
"hi IncSearch
Hi LineNr               s:dark_grey_blue     s:ignore
Hi MatchParen           s:darkest_grey_blue  s:grey_blue
"hi ModeMsg
"hi MoreMsg
Hi NonText              s:dark_grey_blue     s:ignore
"hi Question
"hi Search
"hi SpecialKey
"hi StatusLine
"hi StatusLineNC
Hi Title                s:light_blue         s:ignore
Hi Visual               s:darker_grey_blue   s:light_grey_blue
"hi VisualNOS
Hi WarningMsg           s:soft_red           s:ignore
"hi WildMenu
"hi Menu
"hi Scrollbar
"hi Tooltip
" }}}


" Syntax Highlighting Groups (see :he group-name)

" COMMENTS "{{{
" ========
" Any comment
Hi Comment              s:grey_blue          s:ignore
" }}}

" CONSTANTS "{{{
" =========
" Any constant
Hi Constant             s:soft_red           s:ignore
" A string constant
Hi String               s:soft_green         s:ignore
" }}}

" IDENTIFIERS "{{{
" ===========
" Any variable name
Hi Identifier           s:soft_violet        s:ignore
" Function name (also: methods for classes)
Hi Function             s:light_blue         s:ignore
" }}}

" STATEMENTS "{{{
" ==========
" Any statement
Hi Statement            s:soft_violet        s:ignore
" if, then, else, endif, switch, etc.
"hi Conditional
" for, do, while, etc.
"hi Repeat
" case, default, etc.
"hi Label
" sizeof, +, *, etc.
Hi Operator             s:soft_lime_green    s:ignore
" Any other keyword
"hi Keyword
" Try, catch, throw
"hi Exception
" }}}

" PREPROCS "{{{
" ========
" Generic preprocessor
Hi PreProc              s:soft_violet        s:ignore
" Preprocessor #include
"hi Include
" Preprocessor #define
"hi Define
" Same as define
"hi Macro
" Preprocessor #if, #else, #endif, etc.
"hi PreCondit
" }}}

" TYPES "{{{
" =====
" int, long, char, etc.
Hi Type                 s:soft_violet        s:ignore
" static, register, volatile, etc.
"hi StorageClass
" struct, union, enum, etc.
"hi Structure
" a typedef
"hi Typedef
" }}}

" SPECIALS "{{{
" ========
" Any special symbol (ex: [, ], (, ), etc.)
Hi Special              s:lighter_grey_blue  s:ignore
" Special character in a constant (ex: \n, %s, etc.)
Hi SpecialChar          s:accent_teal        s:ignore
" You can use CTRL-] on this
"hi Tag
" Character that needs attention
"hi Delimiter
" Special things inside a comment
"hi SpecialComment
" Debugging statements
"hi Debug
" }}}

" UNDERLINEDS "{{{
" ===========
" Text that stands out, HTML links
"hi Underlined
" }}}

" IGNORES "{{{
" =======
" Left blank, hidden hl-Ignore
"hi Ignore
" }}}

" ERRORS "{{{
" ======
" Any erroneous construct
"hi Error
" }}}

" TODOS "{{{
" =====
" Anything that needs extra attention; mostly the kewords
" TODO FIXME and XXX
"hi Todo
" }}}


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
Hi javaScriptFuncExp                      s:testing           s:ignore
hi link javaScriptFunctionKey             javaScriptFuncDef
" Braces, Parens, symbols, colons
hi link javaScriptBraces                  Normal
hi link javaScriptParens                  Normal
hi link javaScriptOpSymbols               Operator
hi link javaScriptEndColons               Normal
hi link javaScriptLogicSymbols            Operator
" }}}

" HTML Highlighting "{{{
" =================
" Tags
Hi htmlTag                   s:accent_teal       s:ignore
Hi htmlTagN                  s:testing           s:ignore
hi link htmlEndTag           htmlTag
hi link htmlArg              Normal
Hi htmlTagName               s:light_red         s:ignore
Hi htmlSpecialTagName        s:testing           s:ignore
" }}}

" Jinja Highlighting "{{{
" ==================
" Statements
hi link jinjaStatement       Statement
Hi jinjaVariable             s:light_blue        s:ignore
hi link jinjaString          String
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

" SH Highlighting "{{{
" ===============
" Statements
hi shStatement            guifg=#c792ea               gui=none ctermbg=none
hi shTestOpr              guifg=#d9f5dd               gui=none ctermbg=none
hi link shVariable Function
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
