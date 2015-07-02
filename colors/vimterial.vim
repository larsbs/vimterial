" Vim color file
" Maintainer:   Your name <youremail@something.com>
" Last Change:
" URL:

" cool help screens
" :he highlight-groups
" :he cterm-colors

set background=dark

hi clear

if exists("syntax_on")
    syntax reset
endif


let colors_name="vimterial"


hi Normal           guifg=#cdd3de guibg=#263238 gui=none ctermbg=none
hi Cursor           guifg=#c0c5ce guibg=#c0c5ce gui=none ctermbg=none
"hi CursorIM
"hi Directory
"hi DiffAdd
"hi DiffChange
"hi DiffDelete
"hi DiffText
"hi ErrorMsg
"hi VertSplit
"hi Folded
"hi FoldColumn
"hi IncSearch
hi LineNr           guifg=#37474f               gui=none ctermbg=none
"hi ModeMsg
"hi MoreMsg
"hi NonText
"hi Question
"hi Search
"hi SpecialKey
"hi StatusLine
"hi StatusLineNC
"hi Title
"hi Visual
"hi VisualNOS
"hi WarningMsg
"hi WildMenu
"hi Menu
"hi Scrollbar
"hi Tooltip

" Syntax Highlighting Groups (see :he group-name)

" ========
" COMMENTS
" ========

" Any comment
hi Comment          guifg=#546e7a               gui=none ctermbg=none


" =========
" CONSTANTS
" =========

" Any constant
"hi Constant         guifg=#c3e88d               gui=none ctermbg=none
" A string constant
hi String           guifg=#c3e88d               gui=none ctermbg=none


" ===========
" IDENTIFIERS
" ===========

" Any variable name
hi Identifier       guifg=#c792ea               gui=none ctermbg=none
" Function name (also: methods for classes)
hi Function         guifg=#c792ea               gui=none ctermbg=none


" ==========
" STATEMENTS
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
"hi Operator         guifg=#c792ea               gui=none ctermbg=none
" Any other keyword
"hi Keyword          guifg=#c792ea               gui=none ctermbg=none
" Try, catch, throw
"hi Exception        guifg=#c792ea               gui=none ctermbg=none


" ========
" PREPROCS
" ========

" Generic preprocessor
"hi PreProc          guifg=#c792ea               gui=none ctermbg=none
" Preprocessor #include
"hi Include          guifg=#c792ea               gui=none ctermbg=none
" Preprocessor #define
"hi Define           guifg=#c792ea               gui=none ctermbg=none
" Same as define
"hi Macro            guifg=#c792ea               gui=none ctermbg=none
" Preprocessor #if, #else, #endif, etc.
"hi PreCondit        guifg=#c792ea               gui=none ctermbg=none


" =====
" TYPES
" =====

" int, long, char, etc.
"hi Type             guifg=#c792ea               gui=none ctermbg=none
" static, register, volatile, etc.
"hi StorageClass     guifg=#c792ea               gui=none ctermbg=none
" struct, union, enum, etc.
"hi Structure        guifg=#c792ea               gui=none ctermbg=none
" a typedef
"hi Typedef          guifg=#c792ea               gui=none ctermbg=none


" ========
" SPECIALS
" ========

" Any special symbol
"hi Special          guifg=#c792ea               gui=none ctermbg=none
" Special character in a constant
"hi SpecialChar      guifg=#c792ea               gui=none ctermbg=none
" You can use CTRL-] on this
"hi Tag              guifg=#c792ea               gui=none ctermbg=none
" Character that needs attention
"hi Delimiter        guifg=#c792ea               gui=none ctermbg=none
" Special things inside a comment
"hi SpecialComment   guifg=#c792ea               gui=none ctermbg=none
" Debugging statements
"hi Debug            guifg=#c792ea               gui=none ctermbg=none


" ===========
" UNDERLINEDS
" ===========

" Text that stands out, HTML links
"hi Underlined       guifg=#c792ea               gui=none ctermbg=none


" =======
" IGNORES
" =======

" Left blank, hidden hl-Ignore
"hi Ignore           guifg=#c792ea               gui=none ctermbg=none


" ======
" ERRORS
" ======

" Any erroneous construct
"hi Error            guifg=#c792ea               gui=none ctermbg=none


" =====
" TODOS
" =====

" Anything that needs extra attention; mostly the kewords
" TODO FIXME and XXX
"hi Todo             guifg=#c792ea               gui=none ctermbg=none
