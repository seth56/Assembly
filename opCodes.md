# OPERATION CODES REFERENCE

| OpCode      | Description |
| ----------- | ----------- |
|**AAA**|Ascii Adjust for Addition| 
|**AAD**|Ascii Adjust for Division| 
|**AAM**|Ascii Adjust for Multiplication| 
|**AAS**|Ascii Adjust for Subtraction| 
|**ADC**|Add With Carry| 
|**ADD**|Arithmetic Addition| 
|**AND**|Logical And| 
|**ARPL**|Adjusted Requested Privilege Level of Selector| 
|**BOUND**|Array Index Bound Check| 
|**BSF**|Bit Scan Forward| 
|**BSR**|Bit Scan Reverse| 
|**BSWAP**|Byte Swap | 
|**BT**|Bit Test | 
|**BTC**|Bit Test with Compliment  | 
|**BTR**|Bit Test with Reset  | 
|**BTS**|Bit Test and Set  | 
|**CALL**|Procedure Call| 
|**CBW**|Convert Byte to Word| 
|**CDQ**|Convert Double to Quad| 
|**CLC**|Clear Carry| 
|**CLD**|Clear Direction Flag| 
|**CLI**|Clear Interrupt Flag| 
|**CLTS**|Clear Task Switched Flag| 
|**CMC**|Complement Carry Flag| 
|**CMP**|Compare| 
|**CMPS**|Compare String | 
|**CMPXCHG**|Compare and Exchange| 
|**CWD**|Convert Word to Doubleword| 
|**CWDE**|Convert Word to Extended Doubleword| 
|**DAA**|Decimal Adjust for Addition| 
|**DAS**|Decimal Adjust for Subtraction| 
|**DEC**|Decrement| 
|**DIV**|Divide| 
|**ENTER**|Make Stack Frame| 
|**ESC**|Escape| 
|**Floating point instuctions**|no descriptions| 
|**HLT**|Halt CPU| 
|**IDIV**|Signed Integer Division| 
|**IMUL**|Signed Multiply| 
|**IN**|Input Byte or Word From Port| 
|**INC**|Increment| 
|**INS**|Input String from Port| 
|**INT**|Interrupt| 
|**INTO**|Interrupt on Overflow| 
|**INVD**|Invalidate Cache  | 
|**INVLPG**|Invalidate Translation Look-Aside Buffer Entry| 
|**IRET/IRETD**|Interrupt Return| 
|**JA/JNBE**|Jump Above / Jump Not Below or Equal| 
|**JAE/JNB**|Jump Above or Equal / Jump on Not Below| 
|**JB/JNAE**|Jump Below / Jump Not Above or Equal| 
|**JBE/JNA**|Jump Below or Equal / Jump Not Above| 
|**JC**|Jump on Carry| 
|**JCXZ/JECXZ**|Jump if Register (E)CX is Zero| 
|**JE/JZ**|Jump Equal / Jump Zero| 
|**JG/JNLE**|Jump Greater / Jump Not Less or Equal| 
|**JGE/JNL**|Jump Greater or Equal / Jump Not Less| 
|**JL/JNGE**|Jump Less / Jump Not Greater or Equal| 
|**JLE/JNG**|Jump Less or Equal / Jump Not Greater| 
|**JMP**|Unconditional Jump| 
|**JNC**|Jump Not Carry| 
|**JNE/JNZ**|Jump Not Equal / Jump Not Zero| 
|**JNO**|Jump Not Overflow| 
|**JNS**|Jump Not Signed| 
|**JNP/JPO**|Jump Not Parity / Jump Parity Odd| 
|**JO**|Jump on Overflow| 
|**JP/JPE**|Jump on Parity / Jump on Parity Even| 
|**JS**|Jump Signed| 
|**LAHF**|Load Register AH From Flags| 
|**LAR**|Load Access Rights| 
|**LDS**|Load Pointer Using DS| 
|**LEA**|Load Effective Address| 
|**LEAVE**|Restore Stack for Procedure Exit| 
|**LES**|Load Pointer Using ES| 
|**LFS**|Load Pointer Using FS| 
|**LGDT**|Load Global Descriptor Table| 
|**LIDT**|Load Interrupt Descriptor Table | 
|**LGS**|Load Pointer Using GS | 
|**LLDT**|Load Local Descriptor Table| 
|**LMSW**|Load Machine Status Word | 
|**LOCK**|Lock Bus| 
|**LODS**|Load String| 
|**LOOP**|Decrement CX and Loop if CX Not Zero| 
|**LOOPE/LOOPZ**|Loop While Equal / Loop While Zero| 
|**LOOPNZ/LOOPNE**|Loop While Not Zero / Loop While Not Equal| 
|**LSL**|Load Segment Limit | 
|**LSS**|Load Pointer Using SS| 
|**LTR**|Load Task Register  | 
|**MOV**|Move Byte or Word| 
|**MOVS**|Move String | 
|**MOVSX**|Move with Sign Extend | 
|**MOVZX**|Move with Zero Extend| 
|**MUL**|Unsigned Multiply| 
|**NEG**|Two's Complement Negation| 
|**NOP**|No Operation | 
|**NOT**|One's Compliment Negation| 
|**OR**|Inclusive Logical OR| 
|**OUT**|Output Data to Port| 
|**OUTS**|Output String to Port| 
|**POP**|Pop Word off Stack| 
|**POPA/POPAD**|Pop All Registers onto Stack| 
|**POPF/POPFD**|Pop Flags off Stack| 
|**PUSH**|Push Word onto Stack| 
|**PUSHA/PUSHAD**|Push All Registers onto Stack| 
|**PUSHF/PUSHFD**|Push Flags onto Stack| 
|**RCL**|Rotate Through Carry Left| 
|**RCR**|Rotate Through Carry Right| 
|**REP**|Repeat String Operation| 
|**REPE/REPZ**|Repeat Equal / Repeat Zero| 
|**REPNE/REPNZ**|Repeat Not Equal / Repeat Not Zero| 
|**RET/RETF**|Return From Procedure| 
|**ROL**|Rotate Left| 
|**ROR**|Rotate Right| 
|**SAHF**|Store AH Register into FLAGS| 
|**SAL/SHL**|Shift Arithmetic Left / Shift Logical Left| 
|**SAR**|Shift Arithmetic Right| 
|**SBB**|Subtract with Borrow| 
|**SCAS**|Scan String | 
|**SETAE/SETNB**|Set if Above or Equal / Set if Not Below| 
|**SETB/SETNAE**|Set if Below / Set if Not Above or Equal| 
|**SETBE/SETNA**|Set if Below or Equal / Set if Not Above| 
|**SETE/SETZ**|Set if Equal / Set if Zero| 
|**SETNE/SETNZ**|Set if Not Equal / Set if Not Zero| 
|**SETL/SETNGE**|Set if Less / Set if Not Greater or Equal| 
|**SETGE/SETNL**|Set if Greater or Equal / Set if Not Less| 
|**SETLE/SETNG**|Set if Less or Equal / Set if Not greater or Equal| 
|**SETG/SETNLE**|Set if Greater / Set if Not Less or Equal| 
|**SETS**|Set if Signed| 
|**SETNS**|Set if Not Signed| 
|**SETC**|Set if Carry| 
|**SETNC**|Set if Not Carry| 
|**SETO**|Set if Overflow| 
|**SETNO**|Set if Not Overflow| 
|**SETP/SETPE**|Set if Parity / Set if Parity Even| 
|**SETNP/SETPO**|Set if No Parity / Set if Parity Odd| 
|**SGDT**|Store Global Descriptor Table| 
|**SIDT**|Store Interrupt Descriptor Table| 
|**SHR**|Shift Logical Right| 
|**SHLD/SHRD**|Double Precision Shift| 
|**SLDT**|Store Local Descriptor Table| 
|**SMSW**|Store Machine Status Word| 
|**STC**|Set Carry| 
|**STD**|Set Direction Flag| 
|**STI**|Set Interrupt Flag| 
|**STOS**|Store String | 
|**STR**|Store Task Register| 
|**SUB**|Subtract| 
|**TEST**|Test For Bit Pattern| 
|**VERR**|Verify Read| 
|**VERW**|Verify Write| 
|**WAIT/FWAIT**|Event Wait| 
|**WBINVD**|Write-Back and Invalidate Cache| 
|**XCHG**|Exchange| 
|**XLAT/XLATB**|Translate| 