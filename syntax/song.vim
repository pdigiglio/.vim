" Vim syntax file
" Language:   Music chords
" Maintainer: Paolo Di Giglio (p.digiglio91@gmail.com)
" Created:    Thu 04 Dec 2014 03:35:16 PM CET

" check if a syntax file already exists
if exists("b:current_syntax")
    finish
endif

" Enable folding of text blocks by :set foldmethod=syntax
syntax region song_block start="{{" end="}}" fold transparent

" Match the name definition of the blocks
syntax keyword song_parts          contained Bridge Refrain Intro Outro
syntax keyword song_part_modifiers contained pattern
syntax match   define_block_name "--\p\+--" contains=song_parts,song_part_modifiers

" Match the call of the blocks by their name.
syntax match   call_counter      "x\d\+"
syntax match   call_block_name   "{{\p\+}}" nextgroup=call_counter contains=song_parts,song_part_modifiers

" Match the chords
syntax match chord '\(\s*[/(]\=\s*[A-G][b#]\=\(m\|sus\|maj\|°\)\=\d*[/()]\=\s*\)\+$'

" Set the syntax of the current file
let b:current_syntax = "song"

" Define the color patterns
highlight link chord               Constant
highlight link song_parts          Type
highlight link song_part_modifiers Type
highlight link define_block_name   Statement
highlight link call_counter        Constant
highlight link call_block_name     Statement
