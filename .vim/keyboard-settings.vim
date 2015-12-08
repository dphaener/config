" Change the leader to the spacebar
let mapleader = "\<Space>"

" Split the current line at the cursor
nnoremap <Leader>k i<CR><Esc>

" Replace hash rockets with new syntax
nmap <leader>rh :%s/\v:(\w+) \=\>/\1:/g<cr>

" Map s to source the vimrc file
map <Leader>s :source ~/.vimrc<CR>

" Run the mutation tests for the current file
map <Leader>mt :call RunMutationTest()<CR>
map <Leader>nt :call RunNearestMutationTest()<CR>

" Run rubocop
map <Leader>c :! rubocop<CR>

" Run the entire test suite
map <Leader>ta :! rake test:all<CR>

" Refresh file
map <Leader>f :edit<CR>

" Easily open the .vimrc file in a vertical split
map <Leader>v :vsplit ~/.vimrc<CR>

" Copy selection to system clipboard
map <Leader>cs "+y

" Paste from system clipboard
map <Leader>ps "+p

" Remove all trailing whitespace from the file
map <Leader>ts :%s/\s\+$//<CR>
