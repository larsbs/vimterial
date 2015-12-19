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
    let command = 'hi! ' . a:name
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
let s:search_yellow     = '#f8e71c'

let s:light_blue        = '#82b1ff'
let s:soft_red          = '#f77669'
let s:dark_soft_red     = '#802920'
let s:soft_green        = '#c3e88d'
let s:soft_violet       = '#c792ea'
let s:soft_lime_green   = '#d9f5dd'
let s:soft_orange       = '#ffcb6b'
let s:light_red         = '#ff5370'
" }}}

" GENERAL "{{{
" =======
Hi Normal               s:lighter_grey_blue  s:darker_grey_blue
"Hi ColorColumn          s:testing            s:testing
Hi Cursor               s:darker_grey_blue   s:light_grey_blue
"hi CursorIM
Hi CursorColumn         s:ignore             s:darkest_grey_blue
Hi CursorLine           s:ignore             s:darkest_grey_blue
Hi Directory            s:accent_teal        s:ignore
Hi DiffAdd              s:soft_green         s:darkest_grey_blue
hi DiffAdd              gui=bold
Hi DiffChange           s:soft_orange        s:darkest_grey_blue
hi DiffChange           gui=bold
Hi DiffDelete           s:soft_red           s:darkest_grey_blue
Hi DiffText             s:light_blue         s:darkest_grey_blue
Hi ErrorMsg             s:darker_grey_blue   s:soft_red
hi ErrorMsg             gui=none
Hi VertSplit            s:darker_grey_blue   s:dark_grey_blue
Hi Folded               s:darker_grey_blue   s:grey_blue
Hi FoldedColumn         s:darker_grey_blue   s:grey_blue
Hi SignColumn           s:dark_grey_blue     s:ignore
Hi IncSearch            s:search_yellow      s:darkest_grey_blue
Hi LineNr               s:dark_grey_blue     s:ignore
Hi MatchParen           s:darkest_grey_blue  s:grey_blue
Hi ModeMsg              s:light_grey_blue    s:none
"Hi MoreMsg              s:testing            s:testing
Hi NonText              s:dark_grey_blue     s:ignore
Hi Question             s:light_grey_blue    s:none
hi Question             gui=none
Hi Search               s:darkest_grey_blue  s:search_yellow
"Hi SpecialKey           s:testing            s:testing
"Hi StatusLine           s:testing            s:testing
"Hi StatusLineNC         s:testing            s:testing
Hi Title                s:light_blue         s:ignore
Hi Visual               s:darker_grey_blue   s:light_grey_blue
"Hi VisualNOS            s:testing            s:testing
Hi WarningMsg           s:soft_red           s:ignore
Hi WildMenu             s:testing            s:testing
Hi Menu                 s:testing            s:testing
Hi Scrollbar            s:testing            s:testing
Hi Tooltip              s:testing            s:testing
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
hi Identifier           gui=none
" Function name (also: methods for classes)
Hi Function             s:light_blue         s:ignore
" }}}

" STATEMENTS "{{{
" ==========
" Any statement
Hi Statement            s:soft_violet        s:ignore
hi Statement            gui=none
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
hi Type                 gui=none
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
Hi Todo                 s:accent_teal    s:none
hi Todo                 gui=bold
" }}}


" JavaScript Highlighting "{{{
" =======================
"execute 'source ' . expand("<sfile>:p:h") . "/syntax/javascript/vim-javascript-syntax.vim"
execute 'source ' . expand("<sfile>:p:h") . "/syntax/javascript/pangloss-vim-javascript.vim"
" }}}
" HTML Highlighting "{{{
" =================
execute 'source ' . expand("<sfile>:p:h") . "/syntax/html/html5.vim"
" }}}
" Jinja Highlighting "{{{
" ==================
execute 'source ' . expand("<sfile>:p:h") . "/syntax/jinja/vim-jinja2-syntax.vim"
" }}}
" CSS Highlighting "{{{
" ================
execute 'source ' . expand("<sfile>:p:h") . "/syntax/css/juleswang-css.vim"
" }}}
" LESS Highlighting "{{{
" =================
execute 'source ' . expand("<sfile>:p:h") . "/syntax/less/genoma-vim-less.vim"
" }}}
" SH Highlighting "{{{
" ===============
execute 'source ' . expand("<sfile>:p:h") . "/syntax/bash/bash.vim"
" }}}
" NERDTree Highlighting "{{{
" =====================
execute 'source ' . expand("<sfile>:p:h") . "/syntax/nerdtree/nerdtree.vim"
" }}}
