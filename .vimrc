let Tlist_Auto_Highlight_Tag=1  
let Tlist_Auto_Open=0
let Tlist_Auto_Update=1  
let Tlist_Display_Tag_Scope=1  
let Tlist_Exit_OnlyWindow=1  
let Tlist_Enable_Dold_Column=1
let Tlist_File_Fold_Auto_Close=1 
let Tlist_Show_One_File=1  
let Tlist_Use_Right_Window=1
let Tlist_Use_SingleClick=1
let g:neocomplcache_enable_at_startup=1

" Disable AutoComplPop.
let g:acp_enableAtStartup=0
" Use neocomplete.
let g:neocomplete#enable_at_startup=0
" Use smartcase.
let g:neocomplete#enable_smart_case=1
" Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length=3

set t_Co=256
colorscheme molokai
let g:molokai_original = 1

map <F8> :TlistToggle <CR>
map <F2> :NERDTreeToggle<CR>

map <C-a> <Esc>ggVG
map <C-l> <C-w>l
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k

map <C-y> :bp<CR>
map <C-n> :bn<CR>

map <F5> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR><CR> :TlistUpdate<CR>
imap <F5> <ESC>:!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR><CR> :TlistUpdate<CR>

inoremap ( ()<ESC>i
inoremap [ []<ESC>i
inoremap { {}<ESC>i
inoremap " ""<ESC>i
inoremap ' ''<ESC>i

set tags+=~/.vim/tags/stdcpp.tags
set tags+=./tags

filetype plugin on   
autocmd FileType python set omnifunc=pythoncomplete#Complete   
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS   
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags   
autocmd FileType css set omnifunc=csscomplete#CompleteCSS   
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags   
autocmd FileType php set omnifunc=phpcomplete#CompletePHP   
autocmd FileType c set omnifunc=ccomplete#Complete       
let g:pydiction_location='~/.vim/complete-dict'  
set autoindent 
set tabstop=4  
set shiftwidth=4  
set expandtab   
set number
set cindent
set cursorline
set mouse=a
syntax on

autocmd VimEnter * Tlist
"autocmd VimEnter * NERDTree
"let NERDTreeWinPos="right"

set fencs=utf-8,gbk

let mapleader=","
"let g:mwHistAdd = '/@'
"let g:mwAutoSaveMarks = 0

let OmniCpp_MayCompleteDot = 1    "autocomplete with .
let OmniCpp_MayCompleteArrow = 1  "autocomplete with ->
let OmniCpp_MayCompleteScope = 1  "autocomplete with ::
let OmniCpp_SelectFirstItem = 2
let OmniCpp_NamespaceSearch = 2
let OmniCpp_ShowPrototypeInAddr = 1
let OmniCpp_GlobalScopeSearch = 1
let OmniCpp_DisplayMode = 1
let OmniCpp_DefaultNamespaces = ["std"]

"map <F4> <leader>ci <CR>

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
