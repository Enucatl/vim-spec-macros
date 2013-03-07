" Vim syntax file
" Language:     SPEC
" Maintainer:	Matteo Abis
" URL:		    https://bitbucket.org/Enucatl/vim-spec-macros/overview
" Filenames:	*.mac
"

if exists("b:current_syntax")
  finish
endif

syn keyword specStatement def rdef nextgroup=specMacro skipwhite
syn region specMacro start=/'/ end=/'/ transparent
syn region specString start=/"/ end=/"/
syn keyword specStatement if else nextgroup=specBlock
syn region specBlock start=/{/ end=/}/ transparent
syn keyword specStatement global local
syn keyword specRepeat for while
syn match specComment "#.*$" display 
syn match specOperator display "[-+\*/%=]"

" Numbers (ints, longs, floats, complex)
syn match   specHexNumber	"\<0[xX]\x\+[lL]\=\>" display
syn match   specOctNumber "\<0[oO]\o\+[lL]\=\>" display
syn match   specBinNumber "\<0[bB][01]\+[lL]\=\>" display

syn match   specNumber	"\<\d\+[lLjJ]\=\>" display

syn match   specFloat		"\.\d\+\([eE][+-]\=\d\+\)\=[jJ]\=\>" display
syn match   specFloat		"\<\d\+[eE][+-]\=\d\+[jJ]\=\>" display
syn match   specFloat		"\<\d\+\.\d*\([eE][+-]\=\d\+\)\=[jJ]\=" display

syn keyword specBuiltinFunc qdo
syn keyword specBuiltinObj _m A

hi link specStatement	Statement
hi link specPreCondit	Statement
hi link specFunction		Function
hi link specConditional	Conditional
hi link specRepeat		Repeat
hi link specException	Exception
hi link specOperator		Operator

hi link specDecorator	Define
hi link specDottedName	Function
hi link specDot          Normal

hi link specComment		Comment
hi link specCoding		Special
hi link specRun		Special
hi link specTodo		Todo

hi link specError		Error
hi link specIndentError	Error
hi link specSpaceError	Error

hi link specString		String
hi link specUniString	String
hi link specRawString	String
hi link specUniRawString	String

hi link specEscape			Special
hi link specEscapeError		Error
hi link specUniEscape		Special
hi link specUniEscapeError		Error
hi link specUniRawEscape		Special
hi link specUniRawEscapeError	Error

hi link specStrFormatting	Special
hi link specStrFormat    	Special
hi link specStrTemplate	    Special

hi link specDocTest		Special
hi link specDocTest2		Special

hi link specNumber		Number
hi link specHexNumber	Number
hi link specOctNumber	Number
hi link specBinNumber	Number
hi link specFloat		Float
hi link specOctError	    Error
hi link specHexError		Error
hi link specBinError		Error

hi link specBuiltinObj	Structure
hi link specBuiltinFunc	Function

hi link specExClass	Structure

let b:current_syntax = "specmacro"
