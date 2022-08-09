 pow:
    cmpq $0, %RSI
    je return_1 # if p is 0 return 1
    cmpq $0, %RDI
    je return_0 # if x is 0 return 0

    movq %RDI, %RAX
    jmp pow_cycle

pow_cycle:
    cmpq $1, %RSI
    je exit # if p is 1 return x
    mulq %RDI
    decq %RSI
    jmp pow_cycle

exit:
    retq

return_1:
    movq $1, %RAX
    retq

return_0:
    movq $0, %RAX
    retq
