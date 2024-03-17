" Vim syntax file
" Language: GBAFE Event Assembler files
" Maintainer: CT075 (Camdar)

if exists("b:current_syntax")
  finish
endif

syn keyword evPush PUSH
syn keyword evPop POP

syn match evNumber '\$[a-fA-F0-9]\+'
syn match evNumber '\<\(0x[a-fA-F0-9]\+\|\d\+\)\>'
syn match evNumber '\<[01]\+b\>'

syn region evString start='"' skip='\\$' end='"\|$'
syn region evComment start="/\*" end="\*/"
syn region evComment start="//" skip='\\$' end="$"

syn region evDefine start="^\s*#\(define\|undef\)" skip="\\$" end="$"
syn region evCondition start="^\s*#\(ifdef\|ifndef\|else\|endif\)" skip="\\$" end="$"
syn region evInclude start="^\s*#\(include\|incbin\)" skip="\\$" end="$"

syn match evLabel '^\s*[A-Za-z_][A-Za-z0-9_]*:'
syn match evRaw '^\s*[A-Z_][A-Z0-9_]*\>'

hi def link evNumber Number
hi def link evString String
hi def link evComment Comment
hi def link evDefine Macro
hi def link evCondition Conditional
hi def link evInclude Macro
hi def link evLabel Function
hi def link evRaw StorageClass
hi def link evPush Tag
hi def link evPop Tag
