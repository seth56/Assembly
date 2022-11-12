 # OPERATION CODES REFERENCE
 
 1. **AAA** - Ascii Adjust for Additio 
 2. **AAD** - Ascii Adjust for Divisio 
 3. **AAM** - Ascii Adjust for Multiplicatio 
 4. **AAS** - Ascii Adjust for Subtractio 
 5. **ADC** - Add With Carr 
 6. **ADD** - Arithmetic Additio 
 7. **AND** - Logical An 
 8. **ARPL** - Adjusted Requested Privilege Level of Selecto 
 9. **BOUND** - Array Index Bound Chec 
 10. **BSF** - Bit Scan Forwar 
 11. **BSR** - Bit Scan Revers 
 12. **BSWAP** - Byte Swap 
 13. **BT** - Bit Test 
 14. **BTC** - Bit Test with Compliment  
 15. **BTR** - Bit Test with Reset  
 16. **BTS** - Bit Test and Set  
 17. **CALL** - Procedure Cal 
 18. **CBW** - Convert Byte to Wor 
 19. **CDQ** - Convert Double to Qua 
 20. **CLC** - Clear Carr 
 21. **CLD** - Clear Direction Fla 
 22. **CLI** - Clear Interrupt Fla 
 23. **CLTS** - Clear Task Switched Fla 
 24. **CMC** - Complement Carry Fla 
 25. **CMP** - Compar 
 26. **CMPS** - Compare String 
 27. **CMPXCHG** - Compare and Exchang 
 28. **CWD** - Convert Word to Doublewor 
 29. **CWDE** - Convert Word to Extended Doublewor 
 30. **DAA** - Decimal Adjust for Additio 
 31. **DAS** - Decimal Adjust for Subtractio 
 32. **DEC** - Decremen 
 33. **DIV** - Divid 
 34. **ENTER** - Make Stack Fram 
 35. **ESC** - Escap 
 36. **Floating point instuctions** - no description 
 37. **HLT** - Halt CP 
 38. **IDIV** - Signed Integer Divisio 
 39. **IMUL** - Signed Multipl 
 40. **IN** - Input Byte or Word From Por 
 41. **INC** - Incremen 
 42. **INS** - Input String from Por 
 43. **INT** - Interrup 
 44. **INTO** - Interrupt on Overflo 
 45. **INVD** - Invalidate Cache  
 46. **INVLPG** - Invalidate Translation Look-Aside Buffer Entr 
 47. **IRET/IRETD** - Interrupt Retur 
 48. **JA/JNBE** - Jump Above / Jump Not Below or Equa 
 49. **JAE/JNB** - Jump Above or Equal / Jump on Not Belo 
 50. **JB/JNAE** - Jump Below / Jump Not Above or Equa 
 51. **JBE/JNA** - Jump Below or Equal / Jump Not Abov 
 52. **JC** - Jump on Carr 
 53. **JCXZ/JECXZ** - Jump if Register (E)CX is Zer 
 54. **JE/JZ** - Jump Equal / Jump Zer 
 55. **JG/JNLE** - Jump Greater / Jump Not Less or Equa 
 56. **JGE/JNL** - Jump Greater or Equal / Jump Not Les 
 57. **JL/JNGE** - Jump Less / Jump Not Greater or Equa 
 58. **JLE/JNG** - Jump Less or Equal / Jump Not Greate 
 59. **JMP** - Unconditional Jum 
 60. **JNC** - Jump Not Carr 
 61. **JNE/JNZ** - Jump Not Equal / Jump Not Zer 
 62. **JNO** - Jump Not Overflo 
 63. **JNS** - Jump Not Signe 
 64. **JNP/JPO** - Jump Not Parity / Jump Parity Od 
 65. **JO** - Jump on Overflo 
 66. **JP/JPE** - Jump on Parity / Jump on Parity Eve 
 67. **JS** - Jump Signe 
 68. **LAHF** - Load Register AH From Flag 
 69. **LAR** - Load Access Right 
 70. **LDS** - Load Pointer Using D 
 71. **LEA** - Load Effective Addres 
 72. **LEAVE** - Restore Stack for Procedure Exi 
 73. **LES** - Load Pointer Using E 
 74. **LFS** - Load Pointer Using F 
 75. **LGDT** - Load Global Descriptor Tabl 
 76. **LIDT** - Load Interrupt Descriptor Table 
 77. **LGS** - Load Pointer Using GS 
 78. **LLDT** - Load Local Descriptor Tabl 
 79. **LMSW** - Load Machine Status Word 
 80. **LOCK** - Lock Bu 
 81. **LODS** - Load Strin 
 82. **LOOP** - Decrement CX and Loop if CX Not Zer 
 83. **LOOPE/LOOPZ** - Loop While Equal / Loop While Zer 
 84. **LOOPNZ/LOOPNE** - Loop While Not Zero / Loop While Not Equa 
 85. **LSL** - Load Segment Limit 
 86. **LSS** - Load Pointer Using S 
 87. **LTR** - Load Task Register  
 88. **MOV** - Move Byte or Wor 
 89. **MOVS** - Move String 
 90. **MOVSX** - Move with Sign Extend 
 91. **MOVZX** - Move with Zero Exten 
 92. **MUL** - Unsigned Multipl 
 93. **NEG** - Two's Complement Negatio 
 94. **NOP** - No Operation 
 95. **NOT** - One's Compliment Negatio 
 96. **OR** - Inclusive Logical O 
 97. **OUT** - Output Data to Por 
 98. **OUTS** - Output String to Por 
 99. **POP** - Pop Word off Stac 
 100. **POPA/POPAD** - Pop All Registers onto Stac 
 101. **POPF/POPFD** - Pop Flags off Stac 
 102. **PUSH** - Push Word onto Stac 
 103. **PUSHA/PUSHAD** - Push All Registers onto Stac 
 104. **PUSHF/PUSHFD** - Push Flags onto Stac 
 105. **RCL** - Rotate Through Carry Lef 
 106. **RCR** - Rotate Through Carry Righ 
 107. **REP** - Repeat String Operatio 
 108. **REPE/REPZ** - Repeat Equal / Repeat Zer 
 109. **REPNE/REPNZ** - Repeat Not Equal / Repeat Not Zer 
 110. **RET/RETF** - Return From Procedur 
 111. **ROL** - Rotate Lef 
 112. **ROR** - Rotate Righ 
 113. **SAHF** - Store AH Register into FLAG 
 114. **SAL/SHL** - Shift Arithmetic Left / Shift Logical Lef 
 115. **SAR** - Shift Arithmetic Righ 
 116. **SBB** - Subtract with Borro 
 117. **SCAS** - Scan String 
 118. **SETAE/SETNB** - Set if Above or Equal / Set if Not Belo 
 119. **SETB/SETNAE** - Set if Below / Set if Not Above or Equa 
 120. **SETBE/SETNA** - Set if Below or Equal / Set if Not Abov 
 121. **SETE/SETZ** - Set if Equal / Set if Zer 
 122. **SETNE/SETNZ** - Set if Not Equal / Set if Not Zer 
 123. **SETL/SETNGE** - Set if Less / Set if Not Greater or Equa 
 124. **SETGE/SETNL** - Set if Greater or Equal / Set if Not Les 
 125. **SETLE/SETNG** - Set if Less or Equal / Set if Not greater or Equa 
 126. **SETG/SETNLE** - Set if Greater / Set if Not Less or Equa 
 127. **SETS** - Set if Signe 
 128. **SETNS** - Set if Not Signe 
 129. **SETC** - Set if Carr 
 130. **SETNC** - Set if Not Carr 
 131. **SETO** - Set if Overflo 
 132. **SETNO** - Set if Not Overflo 
 133. **SETP/SETPE** - Set if Parity / Set if Parity Eve 
 134. **SETNP/SETPO** - Set if No Parity / Set if Parity Od 
 135. **SGDT** - Store Global Descriptor Tabl 
 136. **SIDT** - Store Interrupt Descriptor Tabl 
 137. **SHR** - Shift Logical Righ 
 138. **SHLD/SHRD** - Double Precision Shif 
 139. **SLDT** - Store Local Descriptor Tabl 
 140. **SMSW** - Store Machine Status Wor 
 141. **STC** - Set Carr 
 142. **STD** - Set Direction Fla 
 143. **STI** - Set Interrupt Fla 
 144. **STOS** - Store String 
 145. **STR** - Store Task Registe 
 146. **SUB** - Subtrac 
 147. **TEST** - Test For Bit Patter 
 148. **VERR** - Verify Rea 
 149. **VERW** - Verify Writ 
 150. **WAIT/FWAIT** - Event Wai 
 151. **WBINVD** - Write-Back and Invalidate Cach 
 152. **XCHG** - Exchang 
 153. **XLAT/XLATB** - Translat 
