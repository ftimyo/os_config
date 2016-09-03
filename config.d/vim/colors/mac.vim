"	Use	color	syntax	highlighting.
"color	scheme	wombat256
set	t_Co=256
syntax	on

"	Color	specifications.	Change	them	as	you	would	like.
"term--B&W	terminal	cterm--color	terminal
hi	Normal																				ctermfg=251					ctermbg=232
hi	SpecialKey		term=bold					cterm=bold		ctermfg=darkred
hi	Nontext				term=bold					cterm=bold		ctermfg=white
hi	Directory			term=bold					cterm=bold		ctermfg=brown
hi	ErrorMsg			term=standout			cterm=bold		ctermfg=grey					ctermbg=blue
hi	Search				term=reverse										ctermfg=white					ctermbg=red
hi	MoreMsg				term=bold					cterm=bold		ctermfg=darkgreen
hi	ModeMsg				term=bold					cterm=bold
hi	LineNr				term=underline		cterm=bold		ctermfg=brown
hi	Question			term=standout			cterm=bold		ctermfg=darkgreen
hi	StatusLine		term=bold,reverse	cterm=bold		ctermfg=lightblue			ctermbg=white
hi	StatusLineNC	term=reverse										ctermfg=white					ctermbg=lightblue
hi	Title					term=bold					cterm=bold		ctermfg=darkmagenta
hi	Visual				term=reverse			cterm=reverse ctermbg=darkgrey
hi	WarningMsg		term=standout			cterm=bold		ctermfg=darkblue

hi	Comment				term=none					cterm=bold		ctermfg=70						ctermbg=black
hi	Constant			term=underline		cterm=bold		ctermfg=62
hi	Special				term=bold					cterm=bold		ctermfg=red						ctermbg=black
hi	Identifier		term=underline		cterm=none		ctermfg=brown
hi	Statement			term=bold					cterm=bold		ctermfg=126
hi	PreProc				term=underline									ctermfg=136
hi	Type					term=underline		cterm=bold		ctermfg=126
hi	Error					term=reverse										ctermfg=darkcyan			ctermbg=black
hi	Todo					term=standout										ctermfg=black					ctermbg=darkcyan

"hi	link	IncSearch			Visual
"hi	link	String				Constant
"hi	link	Character			Constant
"hi	link	Number				Constant
"hi	link	Boolean			Constant
"hi	link	Float				Number
"hi	link	Function			Identifier
"hi	link	Conditional		Statement
"hi	link	Repeat				Statement
"hi	link	Label				Statement
"hi	link	Operator			Statement
"hi	link	Keyword			Statement
"hi	link	Exception			Statement
"hi	link	Include			Preproc
"hi	link	Define				Preproc
"hi	link	Macro				Preproc
"hi	link	PreCondit			Preproc
"hi	link	StorageClass		Type
"hi	link	Structure			Type
"hi	link	Typedef			Type
"hi	link	Tag				Special
"hi	link	SpecialChar		Special
"hi	link	Delimiter			Special
"hi	link	SpecialComment		Special
"hi	link	Debug				Special
