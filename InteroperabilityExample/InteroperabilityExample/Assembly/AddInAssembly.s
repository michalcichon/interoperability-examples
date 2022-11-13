//
//  myOperation.s
//  InteroperabilityExample
//
//  Created by Michał Cichoń on 08/11/2022.
//

.text
.globl _addInAssembly
_addInAssembly:
    add %esi, %edi  // add x and y
    mov %edi, %eax  // move result to correct register for return value
    ret
