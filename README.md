# Segmentation Fault in Assembly due to Unbounded ECX Register

This repository demonstrates a common error in assembly programming: accessing memory outside the allowed address space. The error occurs when the `ecx` register, used in address calculation, holds a value that leads to an out-of-bounds memory access.

## The Bug

The `bug.asm` file contains the faulty code. The instruction `mov eax, [ebx + ecx*4]` attempts to read a value from memory.  If `ecx` is too large, this will lead to a segmentation fault.

## The Solution

The `bugSolution.asm` file provides a corrected version.  Before accessing memory, it adds a check to ensure that the calculated address falls within the permissible bounds. This prevents the segmentation fault.