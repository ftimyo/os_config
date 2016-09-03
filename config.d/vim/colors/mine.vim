" Use color syntax highlighting.
"color scheme wombat256
set t_Co=256
syntax on
set background=dark
" Color specifications. Change them as you would like.
"term--B&W terminal  cterm--color terminal
hi Normal										ctermfg=252     	ctermbg=232
hi SpecialKey 	term=bold 			cterm=bold 	ctermfg=darkred 
hi Nontext		term=bold 			cterm=bold	ctermfg=white	
hi Directory 	term=bold 			cterm=bold 	ctermfg=brown 
hi ErrorMsg 	term=standout 		cterm=bold 	ctermfg=grey 		ctermbg=blue
hi Search 		term=reverse 					ctermfg=white 		ctermbg=red	
hi MoreMsg 		term=bold 			cterm=bold 	ctermfg=darkgreen 
hi ModeMsg 		term=bold 			cterm=bold 
hi LineNr 		term=underline 		cterm=bold 	ctermfg=136
hi Question 	term=standout 		cterm=bold 	ctermfg=darkgreen
hi StatusLine 	term=bold,reverse 	cterm=bold 	ctermfg=lightblue 	ctermbg=white
hi StatusLineNC term=reverse 					ctermfg=lightblue 	ctermbg=lightblue 
hi Title 		term=bold 			cterm=bold 	ctermfg=darkmagenta 
hi Visual 		term=reverse 		cterm=reverse ctermbg=darkgrey
hi WarningMsg 	term=standout 		cterm=bold 	ctermfg=darkblue 
hi Comment		term=none 			cterm=bold	ctermfg=70 			ctermbg=234
hi Constant		term=underline 		cterm=bold	ctermfg=105
hi Special		term=bold 			cterm=none	ctermfg=203 		ctermbg=234
hi Identifier	term=underline  	cterm=none	ctermfg=brown	
hi Statement	term=bold			cterm=bold 	ctermfg=173
hi Type			term=underline		cterm=none 	ctermfg=169
"hi Statement	term=bold			cterm=bold 	ctermfg=126
hi PreProc		term=underline 					ctermfg=brown
hi Error 		term=reverse 					ctermfg=darkgrey   ctermbg=234
hi Todo 		term=standout 					ctermfg=234 	   ctermbg=darkcyan
hi String 		term=none 						ctermfg=161
hi Function 						cterm=none  ctermfg=38
hi Operator 									ctermfg=white
hi Structure ctermfg=105 ctermbg=NONE cterm=none
"hi Delimiter 									ctermfg=darkcyan
