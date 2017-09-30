" Vim syntax file
" Language:   Music chords
" Maintainer: Paolo Di Giglio (p.digiglio91@gmail.com)
" Created:    Thu 04 Dec 2014 03:35:16 PM CET

" check if a syntax file already exists
if exists("b:current_syntax")
    finish
endif

"" TODO this also matches at the end of any word, not only chords.
"syntax match chord_mod '\(m\|+\|-\)\=\(sus\d\)\=\d\{,2\}[+-]\=\>'
"
"syntax match note '\<Do[b#]\='  nextgroup=chord_mod
"syntax match note '\<Re[b#]\='  nextgroup=chord_mod
"syntax match note '\<Mi[b#]\='  nextgroup=chord_mod
"syntax match note '\<Fa[b#]\='  nextgroup=chord_mod
"syntax match note '\<Sol[b#]\=' nextgroup=chord_mod
"syntax match note '\<La[b#]\='  nextgroup=chord_mod
"syntax match note '\<Si[b#]\='  nextgroup=chord_mod
"
"syntax match note '\<C[b#]\='  nextgroup=chord_mod
"syntax match note '\<D[b#]\='  nextgroup=chord_mod
"syntax match note '\<E[b#]\='  nextgroup=chord_mod
"syntax match note '\<F[b#]\='  nextgroup=chord_mod
"syntax match note '\<G[b#]\='  nextgroup=chord_mod
"syntax match note '\<A[b#]\='  nextgroup=chord_mod
"syntax match note '\<B[b#]\='  nextgroup=chord_mod

" Enable folding of text blocks by :set foldmethod=syntax
syntax region song_block start="{{" end="}}" fold transparent

" Match the name definition of the blocks
syntax keyword song_parts          contained Bridge Refrain
syntax keyword song_part_modifiers contained pattern
syntax match   define_block_name "--\p\+--" contains=song_parts,song_part_modifiers

" Match the call of the blocks by their name.
syntax match   call_counter      "x\d\+"
syntax match   call_block_name   "{{\p\+}}" nextgroup=call_counter contains=song_parts,song_part_modifiers

" Set the syntax of the current file
let b:current_syntax = "song"

"highlight link note      Todo
"highlight link note      Keyword
"highlight link chord_mod Keyword
"highlight link chord_mod Constant

highlight link song_parts          Type
highlight link song_part_modifiers Type
highlight link define_block_name   Statement
highlight link call_counter        Constant
highlight link call_block_name     Statement
