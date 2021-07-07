scriptencoding utf-8
if exists('g:loaded_onigunsou')
    finish
endif

let g:loaded_onigunsou = 1

"誰が矢印キーを使って良いと言った？(キビしすぎるのでコメントアウト)
" nnoremap <LEFT> <Cmd>quit!<CR>
" nnoremap <RIGHT> <Cmd>quit!<CR>
" nnoremap <UP> <Cmd>quit!<CR>
" nnoremap <DOWN> <Cmd>quit!<CR>

" モタモタするな腹から声を出せ
augroup ONIGUNSOU_VIM
    autocmd!

    "間違えたな！お前なんて駆け出しエンジニア以下だ!!(ミスに対して苦言)
    autocmd FuncUndefined * echo "クソガキが！"
    autocmd CmdUndefined * echo "tabで補完しろと言っただろ、このクソガキが！"

    "マウスなんぞ放り投げてしまえ!!
    autocmd BufWrite * echo "a"
    autocmd BufRead * echo "a"
augroup END

let s:save_cpo = &cpo
set cpo&vim

let &cpo = s:save_cpo
unlet s:save_cpo
