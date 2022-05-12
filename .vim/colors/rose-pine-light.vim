hi clear
if exists("syntax_on")
    syntax reset
endif
let g:colors_name = "rose-pine-light"
set background=light
hi Normal guifg=#faf4ed ctermbg=NONE guibg=NONE gui=NONE


dawn = {
		base = '#faf4ed',
		surface = '#fffaf3',
		overlay = '#f2e9e1',
		muted = '#9893a5',
		subtle = '#797593',
		text = '#575279',
		love = '#b4637a',
		gold = '#ea9d34',
		rose = '#d7827e',
		pine = '#286983',
		foam = '#56949f',
		iris = '#907aa9',
		highlight_low = '#f4ede8',
		highlight_med = '#dfdad9',
		highlight_high = '#cecacd',
		opacity = 0.05,
		none = 'NONE',
}

hi ErrorMsg guifg=dawn.love guibg=NONE gui=bold cterm=bold
hi WarningMsg guifg=#eb6f92 guibg=NONE
hi DiffText guifg=#eb6f92 guibg=NONE
hi PreProc guifg=#eb6f92 guibg=NONE
hi Exception guifg=#eb6f92 guibg=NONE
hi Error guifg=#eb6f92 guibg=NONE
hi DiffDelete guifg=#eb6f92 guibg=NONE
hi GitGutterDelete guifg=#eb6f92 guibg=NONE
hi GitGutterChangeDelete guifg=#eb6f92 guibg=NONE
hi cssIdentifier guifg=#eb6f92 guibg=NONE
hi cssImportant guifg=#eb6f92 guibg=NONE
hi Function guifg=#eb6f92 guibg=NONE
hi Type guifg=#9ccfd8 guibg=NONE
hi Identifier guifg=#ebbcba guibg=NONE
hi PMenuSel guifg=#9ccfd8 guibg=NONE
hi Constant guifg=#31748f guibg=NONE
hi Repeat guifg=#9ccfd8 guibg=NONE
hi DiffAdd guifg=#9ccfd8 guibg=NONE
hi GitGutterAdd guifg=#9ccfd8 guibg=NONE
hi cssIncludeKeyword guifg=#9ccfd8 guibg=NONE
hi Keyword guifg=#31748f guibg=NONE
hi Number guifg=#31748f guibg=NONE
hi IncSearch guifg=#f6c177 guibg=NONE
hi Title guifg=#f6c177 guibg=NONE
hi PreCondit guifg=#f6c177 guibg=NONE
hi Debug guifg=#f6c177 guibg=NONE
hi SpecialChar guifg=#f6c177 guibg=NONE
hi Conditional guifg=#f6c177 guibg=NONE gui=italic cterm=italic
hi Todo guifg=#f6c177 guibg=NONE
hi Special guifg=#f6c177 guibg=NONE
hi CursorLineNR guifg=#f6c177 guibg=NONE
hi LineNR guifg=#f6c177 guibg=NONE
hi Label guifg=#f6c177 guibg=NONE
hi Delimiter guifg=#f6c177 guibg=NONE
hi Define guifg=#f6c177 guibg=NONE
hi MoreMsg guifg=#f6c177 guibg=NONE
hi Tag guifg=#f6c177 guibg=NONE
hi MatchParen guifg=#f6c177 guibg=NONE
hi DiffChange guifg=#f6c177 guibg=NONE
hi GitGutterChange guifg=#f6c177 guibg=NONE
hi cssColor guifg=#f6c177 guibg=NONE
hi Folded guibg=#706e86 guifg=#f6c177
hi FoldColumn guibg=NONE ctermbg=NONE guifg=#f6c177
hi Macro guifg=#c4a7e7 guibg=NONE
hi Directory guifg=#c4a7e7 guibg=NONE
hi markdownLinkText guifg=#c4a7e7 guibg=NONE
hi javaScriptBoolean guifg=#c4a7e7 guibg=NONE
hi Include guifg=#c4a7e7 guibg=NONE
hi Storage guifg=#c4a7e7 guibg=NONE
hi cssClassName guifg=#c4a7e7 guibg=NONE
hi cssClassNameDot guifg=#c4a7e7 guibg=NONE
hi Function guifg=#eb6f92 guibg=NONE
hi String guifg=#f6c177 guibg=NONE
hi Statement guifg=#d7827e guibg=NONE gui=italic cterm=italic
hi Operator guifg=#d7827e guibg=NONE
hi cssAttr guifg=#d7827e guibg=NONE

hi SignColumn guibg=NONE
hi NonText guifg=#26233a guibg=NONE
hi Whitespace gui=NONE guifg=#e0def4 guibg=NONE
hi SpecialComment guifg=#26233a gui=italic guibg=#e0def4
hi StatusLineNC gui=NONE guibg=#31748f guifg=#191724
hi Search guibg=#31748f guifg=NONE
hi Title guifg=#191724
hi Pmenu guifg=#191724 guibg=#706e86
hi StatusLine gui=bold guifg=#191724 guibg=#706e86
hi Comment guifg=#6e6a86 gui=italic
hi CursorLine guibg=#706e86
hi TabLineFill gui=NONE guibg=#706e86
hi VertSplit gui=NONE guifg=#706e86 guibg=NONE
hi Visual gui=NONE guibg=#f4ede8
hi TabLine guifg=#5045c1 guibg=#706e86 gui=NONE
hi LineNr guifg=#5045c1 guibg=NONE
