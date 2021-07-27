call pathogen#infect()
"call pathogen#helptags()
let mapleader=" "
let g:is_posix=1 "ensure shell scripts highlight using POSIX

"Default settings
" cd ~ " CD to home directory
"set nocompatible
set ffs=unix,dos
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set autoindent
set backspace=2
"set number "Line numbers are too great NOTE: disable these if performance bad
"set rnu    "Relative numbers are even greater NOTE: disable these if performance bad
set nuw=5  "Line number width
set nohlsearch "I like my search highlighting
set incsearch "Inc search is the nu
set t_md= " disable bold fonts
"set ignorecase "Tired of doing \c at the end of each search line
set guioptions-=m "Remove gvim menu
set guioptions-=T "Remove gvim toolbar
set backupdir=/tmp "Set swap file directory
set directory=/tmp "Set swap file directory
" set nobackup
set noswapfile
set pastetoggle=<F2>
set wrapmargin=0
set textwidth=0 " todo: set to 80/120 but don't auto wrap
set background=dark
set nowrap
set linebreak
" set scrolloff=10
" autocmd VimEnter * set vb t_vb= "Disable evil bell
"autocmd VimEnter * call RestoreSess()
scriptencoding utf-8
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=ucs-bom,utf8,prc
let g:tagbar_autoclose = 0
let g:tagbar_sort = 0
let g:phpcomplete_index_composer_command = "php ~/bin/composer.phar"
"set term=builtin_ansi " TODO fixes arrow keys and such in vim
set t_Co=256
set tags=tags,tags-vendor
set sessionoptions+=tabpages
set hidden
" set mouse=a " TODO breaks scrolling down with mousewheel
set ignorecase
set smartcase
set modeline
set modelines=5
set path=.,/usr/include,/usr/local/include/,web,app/config,src,/usr/include/webkitgtk-4.0,,
set sw=4 sts=4 ts=4 et ai
let g:source_dir = 'src'
let g:vendor_dir = 'vendor'
if has("patch-7.4.314")
  set shortmess+=c
endif

" colors
colorscheme solarized
" let g:solarized_termtrans = 1 " fixes background in wterm
filetype plugin indent on
syntax on
hi Search cterm=NONE ctermfg=3 ctermbg=0
hi IncSearch cterm=NONE ctermfg=3 ctermbg=0
hi StatusLine cterm=NONE ctermfg=4 ctermbg=NONE
hi StatusLineNC cterm=NONE ctermfg=grey ctermbg=NONE
hi Visual cterm=underline
hi VisualNOS cterm=underline
hi WildMenu cterm=NONE
hi Pmenu cterm=NONE
hi VertSplit cterm=NONE ctermbg=NONE ctermfg=8
hi TabLine cterm=NONE ctermbg=NONE ctermfg=grey
hi TabLineSel cterm=underline ctermbg=black ctermfg=grey
hi TabLineFill cterm=NONE ctermbg=NONE ctermfg=NONE
hi ErrorMsg cterm=NONE ctermfg=3 ctermbg=NONE
hi WarningMsg cterm=NONE ctermfg=3 ctermbg=NONE

" ergonomics
" map <C-g> <C-c>
inoremap jk <C-c>
cnoremap jk <C-c>
inoremap  <C-c>
cnoremap  <C-c>
"nnoremap  <C-c>

" Better command mode
set wildmenu "Cool menu
set wildmode=longest,full
" cnoremap <C-n> <C-i> " TODO <C-n> as tab completion
"cnoremap <C-w> <BS><C-w>

"Remaps
" nnoremap u <C-b>
nnoremap <C-s> :w<CR>
" Window/buffer management
nnoremap <Leader>w <C-w>
" nnoremap <C-h> <C-w>h
" nnoremap <C-h> <C-w>h
" nnoremap <C-j> <C-w>j
" nnoremap <C-k> <C-w>k
" nnoremap <C-l> <C-w>l
nnoremap <Leader>h :set hlsearch!<CR>
nnoremap <Leader>D :BFileDelete!<CR>
nnoremap ga :tabnew<CR>
nnoremap gp :tprev<CR>
nnoremap gn :tnext<CR>
nnoremap gd :tabclose<CR>
nnoremap g; G<CR>
nnoremap dg; dG
nnoremap cg; cG
nnoremap <Leader>ve  :e! ~/.vimrc<CR>
nnoremap <Leader>vv :source ~/.vimrc<CR>
nnoremap <Leader>vs  :w<CR>
" nnoremap <Leader>sw :FSHere<CR>
" nnoremap <Leader>se :UltiSnipsEdit!<CR>
" nnoremap <Leader>so :so ~/.vimrc<CR>
" nnoremap <Leader>st :call SetTabs(
" nnoremap <Leader>ss :exec "Unite -buffer-name=search grep:".g:source_dir."::"<CR>
" nnoremap <Leader>sv :exec "Unite -buffer-name=search grep:".g:vendor_dir."::"<CR>
" nnoremap <Leader>sw :Unite -buffer-name=search grep:web::<CR>
" nnoremap <Leader>sg :exec "Unite -buffer-name=search grep:.:-a:"<CR>
" nnoremap <Leader>sg :call fzf#vim#ag('', '--unrestricted --silent', { 'options': '--exact', 'down': '20%' })<CR>
nnoremap <Leader>ss :call PromptAg('./')<CR>
" nnoremap <Leader>ss :call PromptAg('src')<CR>
nnoremap <Leader>st :Tags ^<CR>
nnoremap <Leader>sl :BLines<CR>
nnoremap <Leader>sb :Lines<CR>
nnoremap <Leader>sv :call PromptAg('vendor')<CR>
nnoremap <Leader>sf :call PromptAg()<CR>
nnoremap <Leader>sa :call PromptAg()<CR>
nnoremap <Leader>so :call PromptAg(expand("%:h"))<CR>
"nnoremap <Leader>sc :call fzf#vim#service('')<CR>
nnoremap <Leader>sp :ToggleSpell<CR>
nnoremap <Leader>K :call phpmanual#online#open()<CR>
" TODO open quickfix item if in quickfix window
nnoremap <Leader>op :execute '!phpstorm --line ' . line('.') . ' ' . expand('%')<CR>

nnoremap <Leader>gg :Goyo<CR>
" nnoremap <Leader>gg :Goyo 120<CR>
" nnoremap <Leader>gc :Goyo!<CR>
" nnoremap <Leader>gb <C-b>
" nnoremap <Leader>gf <C-f>
" nnoremap <Leader>gd <C-d>
" nnoremap <Leader>gu <C-u>

" jump-to helpers
" nnoremap <C-]> :execute 'ltag '.expand("<cword>")<CR>
inoremap <C-]> <C-x><C-l>
" nnoremap <C-]> :call FzfGoToTag(expand("<cword>"))<CR>
"nnoremap g<C-]> :call FzfGoToTag(expand("<cword>"))<CR>
" nnoremap gf :call FzfGoToFile(expand("<cfile>"))<CR>
"nnoremap gf :OpenFile<CR>
"nnoremap gs :call fzf#vim#ag(expand("<cword>"), { 'options': '--exact' })<CR>
"nnoremap gv :call fzf#vim#ag(expand("<cword>"), { 'dir': 'vendor', 'options': '--exact' })<CR>

" trigger omni completion
inoremap <C-space> <C-x><C-o>
inoremap <C-@> <C-x><C-o>
" inoremap <silent> -> -><C-x><C-o>
" inoremap <C-n> <C-x><C-n>
inoremap <silent><expr> <C-n>
  \ pumvisible() ? "\<C-n>" :
  \ "\<C-x>\<C-n>"

nnoremap <Leader>pu :call PhpInsertUse()<CR>
nnoremap <Leader>pe :call PhpExpandClass()<CR>
nnoremap <silent><leader>pcd :call PhpCsFixerFixDirectory()<CR>
nnoremap <silent><leader>pcf :call PhpCsFixerFixFile()<CR>

" padawan
nnoremap <Leader>PG :Dispatch! padawan generate<CR>
" nnoremap <Leader>PGS :call padawan#SaveIndex()<CR>
nnoremap <Leader>PS :call padawan#StartServer()<CR>
nnoremap <Leader>PR :call padawan#RestartServer()<CR>
let g:padawan#composer_command = "php /usr/local/bin/composer"
" let g:padawan#timeout = 2

" fugitive
nnoremap <Leader>gs :Gstatus<CR>
nnoremap <Leader>gc :Gcommit<CR>
nnoremap <Leader>ga :Gwrite<CR>
nnoremap <Leader>gr :Gread<CR>
nnoremap <Leader>gp :Gpush<CR>
nnoremap <Leader>gb :Gblame<CR>
nnoremap <Leader>gd :Gdiff<CR>

" EasyMotion
nmap <Leader><Leader> <Plug>(easymotion-s)
map <Leader>, <C-b>
map <Leader>. <C-f>
map <Leader>< <C-u>
map <Leader>> <C-d>
map <Leader>e <Plug>(easymotion-prefix)
map <Leader>ew <Plug>(easymotion-w)
map <Leader>eb <Plug>(easymotion-b)
map <Leader>es <Plug>(easymotion-s)
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
" map f <Plug>(easymotion-fl)
" map F <Plug>(easymotion-Fl)
" map t <Plug>(easymotion-tl)
" map T <Plug>(easymotion-Tl)

" vim very magic default setting
" nnoremap / /\v
" vnoremap / /\v
" cnoremap %s/ %smagic/
" cnoremap \>s/ \>smagic/
" nnoremap :g/ :g/\v
" nnoremap :g// :g//

" paragraph motions with spaces
" nnoremap <silent> } :<C-U>call ParagraphMove( 1, 0, v:count)<CR>
" onoremap <silent> } :<C-U>call ParagraphMove( 1, 0, v:count)<CR>
" nnoremap <silent> { :<C-U>call ParagraphMove(-1, 0, v:count)<CR>
" onoremap <silent> { :<C-U>call ParagraphMove(-1, 0, v:count)<CR>
"vnoremap <silent> } :<C-U>call ParagraphMove( 1, 1, 0)<CR>
"vnoremap <silent> { :<C-U>call ParagraphMove(-1, 1, 0)<CR>

" Window/buffer/tab bindings
" nnoremap <Leader>bb :Unite buffer<CR>
nnoremap <Leader>b :buf 
nnoremap <Leader>bl :ls<CR>
nnoremap <Leader>bd :bdel!<CR>
nnoremap <Leader>bs :b#<CR>
nnoremap <Leader>bp :bp<CR>
nnoremap <Leader>bn :bn<CR>
nnoremap <Leader>br :BFileRename '
nnoremap <Leader>w <C-w>
nnoremap <Leader>wc :close!<CR>
nnoremap <Leader>w+ 5<C-w>+
nnoremap <Leader>w- 5<C-w>-
nnoremap <Leader>w< 5<C-w><
nnoremap <Leader>w> 5<C-w>>

"nnoremap <Leader>m :Unite file_mru<CR>
nnoremap <Leader>n :set nu! rnu!<CR>
"nnoremap <Leader>n :NERDTree<CR>
"nnoremap <Leader>N :NERDTreeFind<CR>

nnoremap <silent> <Leader>tt :NeoIncludeMakeCache<CR>
  \ :BTags<CR>
" nnoremap <silent> <Leader>tt :NeoIncludeMakeCache<CR>
"   \ :Unite -silent -start-insert tag/include<CR>
nnoremap <silent> <Leader>tn :tnext<CR>
nnoremap <silent> <Leader>tp :tprevious<CR>
nnoremap <silent> <Leader>tb :TagbarToggle<CR>
nnoremap <silent> <Leader>ts :ToggleSpell<CR>

nnoremap <Leader>C  :!phptags --with-vendor<CR>
"nnoremap <Leader>C  :Dispatch! phptags --with-vendor<CR>
"nnoremap <Leader>C  :Dispatch! phptags<CR>
nnoremap <Leader>ru :!
"nnoremap <Leader>ra :Dispatch! 
"nnoremap <Leader>rr :Dispatch <Up><CR>
nnoremap <Leader>rm :Make<CR>
nnoremap <Leader>c :copen<CR>
" nnoremap <Leader>ff :FZF! --tiebreak=end<CR>

" File keybinds
" nnoremap <Leader>ff :call FzfFiles()<CR>
"nnoremap <Leader>ff :Files<CR>
nnoremap <Leader>ff :call FzyCommand("ag -g '' --nogroup --nocolor .", ":e")<CR>
" nnoremap <Leader>fv :exec ":Files ".g:vendor_dir<CR>
"nnoremap <Leader>fv :call FzfAllFiles(g:vendor_dir)<CR>
nnoremap <Leader>fv :call FzyCommand("ag -g '' --nogroup --nocolor vendor", ":e")<CR>
"nnoremap <Leader>fg :call FzfAllFiles('./')<CR>
nnoremap <Leader>fg :call FzyCommand("ag -g '' -u", ":e")<CR>
nnoremap <Leader>fh :History<CR>
" nnoremap <Leader>fo :Unite -buffer-name=dir -resume file bookmark:_ file/new<CR>
" nnoremap <Leader>fo :UniteWithBufferDir file file/new<CR>
nnoremap <Leader>fo :edit <c-r>=expand("%:h")<cr>/
nnoremap <Leader>fe :edit 
nnoremap <Leader>fr :UniteResume<CR>

nnoremap <Leader>pp :set paste!<CR>
nnoremap <Leader>pd :call PhpDoc()<CR>
" nnoremap <Leader>S :call SaveSess()<CR>:qa<CR>
nnoremap <Leader>qq :qa!<CR>
nnoremap <Leader>qs :wq!<CR>
" nnoremap <Leader>s :w<CR>
nnoremap <Leader>! :execute ":!"g:symfony_enable_shell_cmd<CR>
nnoremap <F12> :call ToggleMouse()<CR>

" very magic setting
" nnoremap / /\v
" vnoremap / /\v
" cnoremap %s/ %smagic/
" cnoremap \>s/ \>smagic/
" nnoremap :g/ :g/\v
" nnoremap :g// :g//

" paragraph move with spaces
nnoremap <silent> } :<C-U>call ParagraphMove( 1, 0, v:count)<CR>
onoremap <silent> } :<C-U>call ParagraphMove( 1, 0, v:count)<CR>
nnoremap <silent> { :<C-U>call ParagraphMove(-1, 0, v:count)<CR>
onoremap <silent> { :<C-U>call ParagraphMove(-1, 0, v:count)<CR>
"vnoremap <silent> } :<C-U>call ParagraphMove( 1, 1, 0)<CR>
"vnoremap <silent> { :<C-U>call ParagraphMove(-1, 1, 0)<CR>

"set ofu=syntaxcomplete#Complete
"au! BufEnter * call DetectEnvironment()
au! BufNewFile,BufRead *.md set filetype=markdown
au! BufNewFile,BufRead *.vim* set ts=2 sw=2 sts=2 et ft=vim
au! BufNewFile,BufRead *.rb set ts=2 sw=2 sts=2 et
au! FileType php call SetPHP()
au! FileType twig call SetTwig()
au! FileType html.twig call SetTwig()
au! FileType gitcommit set tw=72
au! VimResized * call Resize()

" FIXME: Not using phpcomplete-extended, nor is it properly completing with dots
" au BufEnter *.twig   setlocal omnifunc=CompleteSymfony
" au BufEnter *.php    setlocal omnifunc=CompleteSymfony
" au BufEnter *.yml    setlocal omnifunc=CompleteSymfony
" au BufEnter *.xml    setlocal omnifunc=CompleteSymfony

"
"Plugins setup
"
"Airline
let g:airline_powerline_fonts = 1
let g:airline#extensions#branch#enabled = 0 "don't show git branch (want to see whole filename)
"au! VimEnter * AirlineRefresh " fix airline startup

"FZF
let g:fzf_layout = { 'down': '50%' }

"NERDTree
let NERDTreeWinSize=40

"vim-php-manual
let g:php_manual_online_search_shortcut = '<Leader>ph'

"CtrlP
"set runtimepath+=~/.vim/php
let g:ctrlp_use_caching = 1
let g:ctrlp_clear_cache_on_exit = 1
let g:ctrlp_cache_dir = $HOME.'/.cache/ctrlp'
set wildignore=*/.git/*,*/.hg/*,*/.svn/*
let g:ctrlp_lazy_update = 0
let g:ctrlp_working_path_mode = 0 " r = nearest REPO ancestor, a = use ancestor
let g:ctrlp_max_files = 0
" Use The Silver Searcher https://github.com/ggreer/the_silver_searcher
if executable('ag')
  " Use Ag over Grep
  set grepprg=ag\ --nogroup\ --nocolor
  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
endif
"Supertab
let g:SuperTabDefaultCompletionType = "context"
let g:SuperTabContextDefaultCompletionType = "<c-x><c-n>"
let g:SuperTabMappingForward = '<nul>'
let g:SuperTabMappingBackward = '<s-nul>'
let g:SuperTabLongestEnhanced = 1

"Distraction free editing
let g:goyo_width = 80
let g:goyo_height = '85%'
function! s:goyo_enter()
  set so=99
  " if winnr('$') > 1
  "   let g:goyo_width = 85%
  " else
  "   let g:goyo_width = 120
  " endif
endfunction

function! s:goyo_leave()
  set so=0
endfunction

autocmd! User GoyoEnter nested call <SID>goyo_enter()
autocmd! User GoyoLeave nested call <SID>goyo_leave()

" tagbar/nerdtree
" let NERDTreeWinSize = 25
let g:tagbar_width = 25

"YCM
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:ycm_min_num_of_chars_for_completion = 3
" let g:ycm_auto_trigger = 0
let g:ycm_semantic_triggers = {}
let g:ycm_semantic_triggers.php = ['->', '::', '(', 'use', 'namespace', '\']
" let g:ycm_collect_identifiers_from_tags_files = 1

" NeoComplete
" set completeopt=longest,menu,preview,noselect
" let g:acp_enableAtStartup = 0
" let g:neocomplete#enable_at_startup = 1
" " let g:neocomplete#disable_auto_complete = 1
" let g:neocomplete#enable_smart_case = 1
" let g:neocomplete#auto_completion_start_length = 3
" " let g:neocomplete#force_overwrite_completefunc = 1

" let g:neocomplete#fallback_mappings = ["\<C-x>\<C-n>"]

" let g:neocomplete#sources#dictionary#dictionaries = {}
" call neocomplete#disable_default_dictionary(
"       \ 'g:neocomplete#same_filetypes')

" if !exists('g:neocomplete#sources')
"   let g:neocomplete#sources = {}
" endif
" let g:neocomplete#sources._ = ['buffer', 'member', 'tag']
" let g:neocomplete#sources.php = ['buffer', 'member', 'tag']

" let g:neocomplete#force_omni_input_patterns = {}
" let g:neocomplete#force_omni_input_patterns.php = '$\h\w*\|[^- \t]->\|\h\w*::'
" " let g:neocomplete#enable_auto_select = 1 # todo update VIM to use with omni

" " <TAB>: completion.
" inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
" " inoremap <expr><Space> pumvisible() ? "\<C-y>" : "\<Space>"
" inoremap <expr><C-space>  neocomplete#start_manual_complete()
" inoremap <expr><C-@>      neocomplete#start_manual_complete()
" inoremap <expr><C-g>      neocomplete#undo_completion()
" inoremap <expr><C-l>      neocomplete#complete_common_string()

"deoplete
let g:deoplete#enable_at_startup = 0
let g:deoplete#disable_auto_complete = 1
let g:deoplete#auto_complete_delay = 100
let g:deoplete#omni_patterns = {}
let g:deoplete#omni_patterns.php = '\$\h\w*\|[^- \t]->\|\h\w*::\|\\'
" inoremap <silent><expr> <C-n>
"   \ pumvisible() ? "\<C-n>" :
"   \ deoplete#mappings#manual_complete()


" auto hide preview window
" autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif

"ZenCoding
let g:user_zen_expandabbr_key = '<c-e>'
let g:use_zen_complete_tag = 1
"UltiSnips
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
"PIV & phpcomplete-extended
let g:DisableAutoPHPFolding = 1
"Unite
if executable('ag')
  let g:unite_source_grep_command = 'ag'
  let g:unite_source_grep_default_opts = '--nogroup --nocolor --column -S'
  let g:unite_source_grep_recursive_opt = ''
  " FIXME these are borked
  let g:unite_source_rec_async_command = 'ag --nocolor --nogroup -g ""'
  " let g:unite_source_rec_async_command = ['ag --nocolor --nogroup -g ""']
endif
let g:unite_source_grep_max_candidates = 1000
let g:unite_source_find_max_candidates = 1000
"let g:unite_split_rule = "botright"
"call unite#custom#profile('default', 'context', {
"\   'start_insert': 1,
"\   'winheight': 20,
"\   'direction': 'botright',
"\ })
"call unite#filters#matcher_default#use(['matcher_fuzzy'])
"call unite#filters#sorter_default#use(['sorter_rank'])
"autocmd FileType unite call s:unite_settings()
"function! s:unite_settings()
"  let b:SuperTabDisabled=1
"  imap <buffer> <C-j>   <Plug>(unite_select_next_line)
"  imap <buffer> <C-k>   <Plug>(unite_select_previous_line)
"  imap <silent><buffer><expr> <C-x> unite#do_action('split')
"  imap <silent><buffer><expr> <C-v> unite#do_action('vsplit')
"  imap <silent><buffer><expr> <C-t> unite#do_action('tabopen')
"  imap <buffer> <F5>  <Plug>(unite_redraw)
"  map  <buffer> <C-g> <Plug>(unite_all_exit)
"  map  <buffer> jk    <Plug>(unite_all_exit)
"  imap <buffer> jk    <Esc><Plug>(unite_all_exit)
"  nmap <buffer> <ESC> <Plug>(unite_all_exit)
"  map  <buffer> <C-h> <Plug>(unite_delete_backward_path)
"  imap <buffer> <C-h> <Plug>(unite_delete_backward_path)
"  imap <buffer> <C-u> <Plug>(unite_input_directory)
"  imap <buffer> <BS>  X
"endfunction
" use unite-tag for <C-]>

"syntastic
let g:syntastic_check_on_open=1
let g:syntastic_enable_signs=1
let g:syntastic_cpp_include_dirs = ['/home/michael/play/oxygine-framework/oxygine/src', '/usr/local/include/SDL2']
let g:syntastic_cpp_check_header = 1
let g:syntastic_php_checkers = ['php']
let g:syntastic_ignore_files = ['\.pp$'] " ignore puppet files
"let g:syntastic_cpp_remove_include_errors = 1
"php-cs-fixer
let g:php_cs_fixer_path='/home/michael/bin/php-cs-fixer'
let g:php_cs_fixer_level='symfony --fixers=ordered_use'
let g:php_cs_fixer_fixers_list = 'phpdoc_order,ordered_use'
let g:phpspec_executable='/home/michael/.composer/vendor/bin/phpspec'
"vdebug
if !exists("g:vdebug_options")
  let g:vdebug_options = {}
endif
let g:vdebug_options['server'] = '0.0.0.0'
let g:vdebug_options['timeout'] = 60
let g:vdebug_options['ide_key'] = '1'
let g:vdebug_options['path_maps'] = {'/var/www': getcwd()}
let g:vdebug_options['break_on_open'] = 0
"behat
let g:feature_filetype='behat'
"delim
let delimitMate_expand_cr = 1
"phpdoc
let g:pdv_cfg_php4always = 1

"=========
"Functions
"=========

" Unicode
"au BufWritePre * setlocal nobomb " UTF 16 BOMB was EVIL
"if has("multi_byte")
"  if &termencoding == ""
"    let &termencoding = &encoding
"  endif
"  set encoding=utf-8
"  setglobal fileencoding=utf-8 bomb
"  set fileencodings=ucs-bom,utf-8,latin1
"endif

function! MyDiff()
  let opt = '-a --binary '
  if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
  if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
  let arg1 = v:fname_in
  if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
  let arg2 = v:fname_new
  if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
  let arg3 = v:fname_out
  if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
  let eq = ''
  if $VIMRUNTIME =~ ' '
    if &sh =~ '\<cmd'
      let cmd = '""' . $VIMRUNTIME . '\diff"'
      let eq = '"'
    else
      let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
    endif
  else
    let cmd = $VIMRUNTIME . '\diff'
  endif
  silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3 . eq
endfunction
" set diffexpr=MyDiff()

fu! Resize()
  " :Goyo 120<CR>
endfunction

function! DetectEnvironment()
  " FIXME: this isn't working since ":FZF src" changes cwd
  " if isdirectory(getcwd() . '/src')
  "   let g:source_dir = getcwd() . '/src'
  " else
  "   let g:source_dir = '.'
  " endif

  if &filetype == ""
    setlocal filetype=markdown
  endif

  if filereadable("app/console") " sf 2
    autocmd FileType yaml set ts=4 sw=4 sts=4 tw=120
    autocmd FileType markdown set ts=4 sw=4 sts=4 tw=120
    autocmd FileType behat set ts=2 sw=2 sts=2 tw=120
    autocmd FileType less set ts=4 sw=4 sts=4 tw=120
  elseif filereadable("symfony") " sf 1
    autocmd FileType php set ts=2 sw=2 sts=2
  elseif filereadable("app.js") || filereadable("app/js/app.js") || filereadable("index.js") " node.js
    autocmd FileType javascript set ts=2 sw=2 sts=2 et
    autocmd FileType less set ts=2 sw=2 sts=2 et
  endif
endfunction

fu! SetPHP()
  set ts=4 sw=4 sts=4 et tw=120
  let b:commentary_format = '// %s'
  " setlocal omnifunc=phpcd#CompletePHP
endfunction

fu! SetTwig()
  set ts=4 sw=4 sts=4 et tw=0
  let b:commentary_format = '{# %s #}'
endfunction

fu! SaveSess()
if v:this_session != ""
  execute ':mksession!' . v:this_session
  echo v:this_session
else
  mksession! .session.vim
endif
endfunction

fu! RestoreSess()
if filereadable(getcwd() . '/.session.vim') && argc() == 0
    execute 'so ' . getcwd() . '/.session.vim'
    if bufexists(1)
        for l in range(1, bufnr('$'))
            if bufwinnr(l) == -1
                exec 'sbuffer ' . l
            endif
        endfor
    endif
endif
if filereadable(getcwd() . '/.project.vim') && argc() == 0
    execute 'so ' . getcwd() . '/.project.vim'
    if bufexists(1)
        for l in range(1, bufnr('$'))
            if bufwinnr(l) == -1
                exec 'sbuffer ' . l
            endif
        endfor
    endif
endif
syntax on
endfunction

fu! ToggleMouse()
    if !exists("s:old_mouse")
        let s:old_mouse = "a"
    endif

    if &mouse == ""
        let &mouse = s:old_mouse
        echo "Mouse is for Vim (" . &mouse . ")"
    else
        let s:old_mouse = &mouse
        let &mouse=""
        echo "Mouse is for terminal"
    endif
endfunction

function! ParagraphMove(delta, visual, count)
    normal m'
    normal |
    if a:visual
        normal gv
    endif

    if a:count == 0
        let limit = 1
    else
        let limit = a:count
    endif

    let i = 0
    while i < limit
        if a:delta > 0
            " first whitespace-only line following a non-whitespace character
            let pos1 = search("\\S", "W")
            let pos2 = search("^\\s*$", "W")
            if pos1 == 0 || pos2 == 0
                let pos = search("\\%$", "W")
            endif
        elseif a:delta < 0
            " first whitespace-only line preceding a non-whitespace character
            let pos1 = search("\\S", "bW")
            let pos2 = search("^\\s*$", "bW")
            if pos1 == 0 || pos2 == 0
                let pos = search("\\%^", "bW")
            endif
        endif
        let i += 1
    endwhile
    normal |
endfunction

" Strip the newline from the end of a string
function! Chomp(str)
  return substitute(a:str, '\n$', '', '')
endfunction

" Find a file and pass it to cmd
function! DmenuOpen(cmd)
  let fname = Chomp(system("ag -g \"\" | dmenu -i -l 20 -p " . a:cmd))
  if empty(fname)
    return
  endif
  execute a:cmd . " " . fname
endfunction

" Prompt for fzf ag source
" TODO fix for goyo by using 50% height
function! PromptAg(...)
  if a:0 > 0
    let ag_subdir = a:1
  else
    let ag_subdir = input('Directory to search: ', '', 'dir')
  endif

  if a:0 > 1
    let ag_query = a:2
  else
    let ag_query = input('Query: ', '')
  endif

  return FzySearch(ag_query, ag_subdir, ":e")
endfunction

" Prompt for fzf file source
function! PromptFzf()
  let subdir = input('Directory: ', '', 'dir')
  return fzf#run(subdir)
endfunction

" Prompt for fzf file source
function! FzfFiles()
  return fzf#run()
endfunction

" Search tag stack with fzf
function! FzfGoToTag(tag)
  let curatedTag = substitute(a:tag, "\\$", "", "")
  return fzf#vim#tags(curatedTag, { 'options': '--nth=1,..', 'down': '50%' })
endfunction

" Search file with fzf
function! FzfGoToFile(file)
  return FzfAllFiles('./', { 'options': '-i -q '.a:file })
endfunction

" Search all fzf files
" TODO add option to convert @MySymfonyBundle to my/symfony-bundle, then we can remove case insensitivity
" TODO add option to convert "TestBundle::myTemplate.html.twig" to a path (don't use <cfile> for this)
function! FzfAllFiles(dir, ...)
  let args = {'options': '-m', 'down': '50%'}

  if !isdirectory(a:dir)
    return s:warn('Invalid directory')
  endif

  let args.dir = substitute(a:dir, '/*$', '', '')
  let args.options .= ' --prompt '.shellescape(args.dir).'/'
  " let args.source = 'ag --nogroup --column --silent --unrestricted -g ""'
  let args.source = 'ag --nogroup --column --silent -U -g ""'

  " merge options with passed options
  " if a:0 > 1
  "   let extra  = copy(get(a:2, 0, {}))
  "   let eopts  = has_key(extra, 'options') ? remove(extra, 'options') : ''
  "   let merged = extend(copy(fzf#vim#wrap(args)), a:2)
  "   let merged.options = join(filter([get(merged, 'options', ''), eopts], '!empty(v:val)'))

  "   return fzf#run(merged)
  " endif

  return s:fzf(fzf#vim#wrap(args), a:000)
endfunction

" local copy of s:fzf
function! s:fzf(opts, extra)
  let extra  = copy(get(a:extra, 0, {}))
  let eopts  = has_key(extra, 'options') ? remove(extra, 'options') : ''
  let merged = extend(copy(a:opts), extra)
  let merged.options = join(filter([get(merged, 'options', ''), eopts], '!empty(v:val)'))
  call fzf#run(merged)
  return 1
endfunction


" FIXME
function! MyCompleteFunc()
  call deoplete#mappings#manual_complete()
  exe "normal \<C-n>"
endfunction

" create file with subdirectories if needed
function! s:MKDir(...)
    if         !a:0
           \|| stridx('`+', a:1[0])!=-1
           \|| a:1=~#'\v\\@<![ *?[%#]'
           \|| isdirectory(a:1)
           \|| filereadable(a:1)
           \|| isdirectory(fnamemodify(a:1, ':p:h'))
        return
    endif
    return mkdir(fnamemodify(a:1, ':p:h'), 'p')
endfunction

" automatically mk dir on save for non-empty buffers
function! s:MkNonExDir(file, buf)
    if empty(getbufvar(a:buf, '&buftype')) && a:file!~#'\v^\w+\:\/'
        let dir=fnamemodify(a:file, ':h')
        if !isdirectory(dir)
            call mkdir(dir, 'p')
        endif
    endif
endfunction
augroup BWCCreateDir
    autocmd!
    autocmd BufWritePre * :call s:MkNonExDir(expand('<afile>'), +expand('<abuf>'))
augroup END

" delete buffer file
command! -bang BFileDelete call delete(expand('%')) <bar> bdelete!

" rename buffer file
command! -bang -nargs=1 BFileRename call s:BFileRename(<args>)
function! s:BFileRename(newname)
    let oldname = expand("%")

    " expand newname with curdir
    if !isdirectory(a:newname)
        let fullname = expand("%:h").'/'.a:newname
    else
        let fullname = a:newname
    endif

    execute "e ".fullname
    execute "r ".oldname
    normal kdd
    execute "w"
    execute "b#"
    execute "BFileDelete!"
    execute "e ".fullname
endfunction

" open file under cursor using gf, if quickfix open in new/other window
command! -bang OpenFile call s:OpenFile()
function! s:OpenFile()
  let file = expand("<cfile>")
  if &buftype == 'quickfix'
    execute "normal \<c-w>w"
  endif
  if file != expand("%")
    execute ":e! ".file
  endif
endfunction

" TODO implement C-] using :ts list
" TODO can use something like:
"
" :call fzf#run(fzf#vim#wrap({'source': ['TAG1', 'TAG2'], 'sink': function('s:mytag_sink')}))
"
" Where "s:mytag_sink" is a function that uses setqflist to set the quickfix
" list.
function! FzfTJump()
  return fzf#run(fzf#vim#wrap({'sink*': function('s:FzfTJumpSink')}))
  " return s:fzf(fzf#vim#wrap(args), a:000)
endfunction
function! s:FzfTJumpSink()
  setqflist(getloclist(0)) "TODO window #
endfunction

" FIXME before this can be implemented usefully, we need to figure out how
" FIXME PHPcomplete handles tagjumps where the full location isn't properly expanded
"
" pseudocode:
"
" 1)  input received
" 2) use native  functionality (i.e. jump to first matching tag)
" 3) if there are more tags available, and the target isn't the full expanded location:
"   1) :redir @Z
"   2) :ts
"   3) :redir END
"   4) process buffer "Z" into readable tag list for FZF
"   5) open up FZF prompt with the tag list

" toggle spell checking for en_us
command! ToggleSpell call s:ToggleSpell()
function! s:ToggleSpell()
  if getbufvar('%', '&spell') == 0
    execute ":setlocal spell spelllang=en_us"
  else
    execute ":setlocal spell nospell"
  endif
endfunction

" faster & better FZF
function! FzyCommand(choice_command, vim_command)
  try
    let results = systemlist(a:choice_command)
    let output = system("fzy", results)
  catch /Vim:Interrupt/
    " Swallow errors from ^C, allow redraw! below
  endtry
  redraw!
  if v:shell_error == 0 && !empty(output)
    exec a:vim_command . ' ' . output
  endif
endfunction

" faster & better FZF (search)
function! FzySearch(query, subdir, vim_command)
  try
    let command = 'ag -l -- "' . a:query . '" "' . a:subdir . '"'
    let results = systemlist(command)
    " populate clist with results
    let clist_results = map(copy(results), {key, val -> { 'filename': val, 'pattern': a:query }})
    call setqflist(clist_results, "r")
    " set search pattern to query
    let @/ = a:query
    " get selected file
    let output = system("fzy", results)
  catch /Vim:Interrupt/
    " Swallow errors from ^C, allow redraw! below
  endtry
  redraw!
  if v:shell_error == 0 && !empty(output)
    exec a:vim_command . ' ' . output
  endif
endfunction
