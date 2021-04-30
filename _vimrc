" .vimrc 
set nocompatible
filetype indent on
command LSPVpcaptxt :0,$s/.*0x//g | 0,$s/\$//g | 0,$s/://g
nnoremap <C-h>          :<C-u>help<Space>
nnoremap <C-h><C-h>	:<C-u>help<Space><C-r><C-w><Enter>
"map <C-h> :Gtags -f %<CR>
"map <C-j> :GtagsCursor<CR>
"map <C-n> :cn<CR>
"map <C-p> :cp<CR>
