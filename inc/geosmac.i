;GEOS macros
;reassembled for 6502TASM/MMS by Maciej 'YTM/Alliance' Witkowiak

.macro LoadB dest, value
	lda #value
	sta dest
.endmacro

.macro LoadW dest, value
	LoadB dest+1, >(value)
	.if (.not .const(value)) .or (>(value))<>(<(value))
	lda #<(value)
	.endif
	sta dest+0
.endmacro

.macro MoveB source, dest
	lda source
	sta dest
.endmacro

.macro MoveW source, dest
	MoveB source+1, dest+1
	MoveB source+0, dest+0
.endmacro

.macro add source
	clc
	adc source
.endmacro

.macro AddB source, dest
	lda source
	add dest
	sta dest
.endmacro

.macro AddW source, dest
	AddB source+0, dest+0
	lda source+1
	adc dest+1
	sta dest+1
.endmacro

.macro AddVB value, dest
	lda dest
	clc
	adc #value
	sta dest
.endmacro

.macro AddVW value, dest
	.local j
	AddVB <(value), dest+0
	.if (>(value))=0
	bcc j
	inc dest+1
	j:
	.else
	lda #>(value)
	adc dest + 1
	sta dest + 1
	.endif
.endmacro

.macro sub source
	sec
	sbc source
.endmacro

.macro SubB source, dest
	lda dest
	sub source
	sta dest
.endmacro

.macro SubW source, dest
	SubB source+0, dest+0
	lda dest+1
	sbc source+1
	sta dest+1
.endmacro

.macro SubVW value, dest
	sec
	lda dest+0
	sbc #<(value)
	sta dest+0
	lda dest+1
	sbc #>(value)
	sta dest+1
.endmacro

.macro CmpB source, dest
	lda source
	cmp dest
.endmacro

.macro CmpBI source, immed
	lda source
	cmp #immed
.endmacro

.macro CmpW source, dest
	.local j
	CmpB source+1, dest+1
	bne j
	CmpB source+0, dest+0
j:
.endmacro
	
.macro CmpWI source, immed
	.local j
	CmpBI source+1, >(immed)
	bne j
	CmpBI source+0, <(immed)
j:
.endmacro

.macro PushB source
	lda source
	pha
.endmacro

.macro PushW source
	PushB source+1
	PushB source+0
.endmacro

.macro PopB dest
	pla
	sta dest
.endmacro

.macro PopW dest
	PopB dest+0
	PopB dest+1
.endmacro

.macro bra addr
	clv
	bvc addr
.endmacro

.macro smb bitN, dest
	pha
	lda #1 << bitN
	ora dest
	sta dest
	pla
.endmacro

.macro smbf bitN, dest
	lda #1 << bitN
	ora dest
	sta dest
.endmacro

.macro rmb bitN, dest
	pha
	lda #(1 << bitN) ^ $ff
	and dest
	sta dest
	pla
.endmacro

.macro rmbf bitN, dest
	lda #(1 << bitN) ^ $ff
	and dest
	sta dest
.endmacro

.macro bbs bitN, source, addr
	.local j
	php
	pha
	lda source
	and #1 << bitN
	beq j
	pla
	plp
	bra addr
j:	
	pla
	plp
.endmacro

.macro bbsf bitN, source, addr
	.if (bitN = 7)
	bit source
	bmi addr 
	.else
	.if (bitN = 6)
			bit source
		bvs addr
	.else
		lda source
		and #1 << bitN
		bne addr
	.endif
	.endif
.endmacro

.macro bbr bitN, source, addr
	.local j
	php
	pha
	lda source
	and #1 << bitN
	bne j
	pla
	plp
	bra addr
j:	
	pla
	plp
.endmacro

.macro bbrf bitN, source, addr
	.if (bitN = 7)
	bit source
	bpl addr
	.else
	.if (bitN = 6)
		bit source
		bvc addr
	.else
			lda source
		and #1 << bitN
		beq addr
	.endif
	.endif
.endmacro

;not part of original macro set
;03.03.1999 by Maciej Witkowiak

.macro addv value
	clc
	adc #value
.endmacro

.macro subv value
	sec
	sbc #value
.endmacro

.macro bnex addr
	txa
		bne addr
.endmacro

.macro beqx addr
	txa
	beq addr
.endmacro
