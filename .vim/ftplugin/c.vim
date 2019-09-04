" clang settings
autocmd BufWritePre *.c 1,$!clang-format -style="{BasedOnStyle: llvm, IndentWidth: 4}"
