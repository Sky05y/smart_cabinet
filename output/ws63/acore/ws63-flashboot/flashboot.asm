
flashboot.elf:     file format elf32-littleriscv


Disassembly of section .text.entry:

00a28300 <_start>:
  a28300:	0040006f          	j	a28304 <Reset_Handler>

00a28304 <Reset_Handler>:
  a28304:	00000293          	li	t0,0
  a28308:	3a029073          	csrw	pmpcfg0,t0
  a2830c:	00000293          	li	t0,0
  a28310:	3a129073          	csrw	pmpcfg1,t0
  a28314:	00000293          	li	t0,0
  a28318:	3a229073          	csrw	pmpcfg2,t0
  a2831c:	00000293          	li	t0,0
  a28320:	3a329073          	csrw	pmpcfg3,t0
  a28324:	00000293          	li	t0,0
  a28328:	7d929073          	csrw	0x7d9,t0
  a2832c:	fffdd297          	auipc	t0,0xfffdd
  a28330:	7dc28293          	addi	t0,t0,2012 # a05b08 <__bss_end__>
  a28334:	00050313          	mv	t1,a0
  a28338:	00032e03          	lw	t3,0(t1)
  a2833c:	01c2a023          	sw	t3,0(t0)
  a28340:	00009297          	auipc	t0,0x9
  a28344:	20c28293          	addi	t0,t0,524 # a3154c <trap_vector>
  a28348:	00128293          	addi	t0,t0,1
  a2834c:	30529073          	csrw	mtvec,t0
  a28350:	30005073          	csrwi	mstatus,0
  a28354:	30405073          	csrwi	mie,0
  a28358:	0000c197          	auipc	gp,0xc
  a2835c:	53018193          	addi	gp,gp,1328 # a34888 <_gp_>
  a28360:	fffdd117          	auipc	sp,0xfffdd
  a28364:	9a010113          	addi	sp,sp,-1632 # a04d00 <__stack_top__>
  a28368:	fffdb297          	auipc	t0,0xfffdb
  a2836c:	d9828293          	addi	t0,t0,-616 # a03100 <g_system_stack_begin>
  a28370:	fffdd317          	auipc	t1,0xfffdd
  a28374:	19030313          	addi	t1,t1,400 # a05500 <g_flash_cmd_funcs>
  a28378:	00628c63          	beq	t0,t1,a28390 <end_set_stack_loop>
  a2837c:	efbeb3b7          	lui	t2,0xefbeb
  a28380:	dde38393          	addi	t2,t2,-546 # efbeadde <_gp_+0xef1b6556>

00a28384 <set_stack_loop>:
  a28384:	0072a023          	sw	t2,0(t0)
  a28388:	00428293          	addi	t0,t0,4
  a2838c:	fe62cce3          	blt	t0,t1,a28384 <set_stack_loop>

00a28390 <end_set_stack_loop>:
  a28390:	00000093          	li	ra,0
  a28394:	00000213          	li	tp,0
  a28398:	00000413          	li	s0,0
  a2839c:	00000493          	li	s1,0
  a283a0:	00000513          	li	a0,0
  a283a4:	00000593          	li	a1,0
  a283a8:	00000613          	li	a2,0
  a283ac:	00000693          	li	a3,0
  a283b0:	00000713          	li	a4,0
  a283b4:	00000793          	li	a5,0
  a283b8:	00000813          	li	a6,0
  a283bc:	00000893          	li	a7,0
  a283c0:	00000913          	li	s2,0
  a283c4:	00000993          	li	s3,0
  a283c8:	00000a13          	li	s4,0
  a283cc:	00000a93          	li	s5,0
  a283d0:	00000b13          	li	s6,0
  a283d4:	00000b93          	li	s7,0
  a283d8:	00000c13          	li	s8,0
  a283dc:	00000c93          	li	s9,0
  a283e0:	00000d13          	li	s10,0
  a283e4:	00000d93          	li	s11,0
  a283e8:	00000e13          	li	t3,0
  a283ec:	00000e93          	li	t4,0
  a283f0:	00000f13          	li	t5,0
  a283f4:	00000f93          	li	t6,0
  a283f8:	fffdd297          	auipc	t0,0xfffdd
  a283fc:	10828293          	addi	t0,t0,264 # a05500 <g_flash_cmd_funcs>
  a28400:	fffdd317          	auipc	t1,0xfffdd
  a28404:	70830313          	addi	t1,t1,1800 # a05b08 <__bss_end__>
  a28408:	00628a63          	beq	t0,t1,a2841c <end_clear_bss_loop>
  a2840c:	00000393          	li	t2,0

00a28410 <clear_bss_loop>:
  a28410:	0072a023          	sw	t2,0(t0)
  a28414:	00428293          	addi	t0,t0,4
  a28418:	fe62cce3          	blt	t0,t1,a28410 <clear_bss_loop>

00a2841c <end_clear_bss_loop>:
  a2841c:	25d0006f          	j	a28e78 <start_fastboot>

00a28420 <g_ram_exception_table>:
  a28420:	00a31450 00a2d27a 00a2d27a 00a2d27a     P...z...z...z...
  a28430:	00a2d27a 00a2d27a 00a2d27a 00a2d27a     z...z...z...z...
  a28440:	00a2d27a 00a2d27a 00a2d27a 00a2d27a     z...z...z...z...
  a28450:	00a2d28e 00a2d27a 00a2d27a 00a2d27a     ....z...z...z...
  a28460:	00a2d27a 00a2d27a 00a2d27a 00a2d27a     z...z...z...z...
  a28470:	00a2d27a 00a2d27a 00a2d27a 00a2d27a     z...z...z...z...
  a28480:	00a2d27a 00a2d27a 00a2ce56 00a2ce56     z...z...V...V...
  a28490:	00a2ce56 00a2ce56 00a2ce56 00a2ce56     V...V...V...V...
  a284a0:	00a2ce56 00a2ce56 00a2ce56 00a2ce56     V...V...V...V...
  a284b0:	00a2ce56 00a2ce56 00a2ce56 00a2ce56     V...V...V...V...
  a284c0:	00a2ce56 00a2ce56 00a2ce56 00a2ce56     V...V...V...V...
  a284d0:	00a2ce56 00a2ce56 00a2ce56 00a2ce56     V...V...V...V...
  a284e0:	00a2ce56 00a2ce56 00a2ce56 00a2ce56     V...V...V...V...
  a284f0:	00a2ce56 00a2ce56 00a2ce56 00a2ce56     V...V...V...V...
  a28500:	00a2ce56 00a2ce56 00a2ce56 00a2ce56     V...V...V...V...
  a28510:	00a2ce56 00a2ce56 00a2ce56 00a2ce56     V...V...V...V...
  a28520:	00a2ce56 00a2ce56 00a2ce56 00a2ce56     V...V...V...V...
  a28530:	00a2ce56 00a2ce56 00a2ce56 00a2ce56     V...V...V...V...
  a28540:	00a2ce56 00a2ce56                       V...V...

Disassembly of section .text:

00a28550 <exc_syscall>:
  a28550:	8082                	ret

00a28552 <handle_syscall>:
  a28552:	0411                	addi	s0,s0,4
  a28554:	c022                	sw	s0,0(sp)
  a28556:	3fed                	jal	ra,a28550 <exc_syscall>
  a28558:	42d2                	lw	t0,20(sp)
  a2855a:	34129073          	csrw	mepc,t0
  a2855e:	5d82                	lw	s11,32(sp)
  a28560:	5d12                	lw	s10,36(sp)
  a28562:	5ca2                	lw	s9,40(sp)
  a28564:	5c32                	lw	s8,44(sp)
  a28566:	5bc2                	lw	s7,48(sp)
  a28568:	5b52                	lw	s6,52(sp)
  a2856a:	5ae2                	lw	s5,56(sp)
  a2856c:	5a72                	lw	s4,60(sp)
  a2856e:	4986                	lw	s3,64(sp)
  a28570:	4916                	lw	s2,68(sp)
  a28572:	44a6                	lw	s1,72(sp)
  a28574:	4436                	lw	s0,76(sp)
  a28576:	4fc6                	lw	t6,80(sp)
  a28578:	4f56                	lw	t5,84(sp)
  a2857a:	4ee6                	lw	t4,88(sp)
  a2857c:	4e76                	lw	t3,92(sp)
  a2857e:	5886                	lw	a7,96(sp)
  a28580:	5816                	lw	a6,100(sp)
  a28582:	57a6                	lw	a5,104(sp)
  a28584:	5736                	lw	a4,108(sp)
  a28586:	56c6                	lw	a3,112(sp)
  a28588:	5656                	lw	a2,116(sp)
  a2858a:	55e6                	lw	a1,120(sp)
  a2858c:	5576                	lw	a0,124(sp)
  a2858e:	438a                	lw	t2,128(sp)
  a28590:	431a                	lw	t1,132(sp)
  a28592:	42aa                	lw	t0,136(sp)
  a28594:	40ba                	lw	ra,140(sp)
  a28596:	6149                	addi	sp,sp,144
  a28598:	30200073          	mret

00a2859c <__udivdi3>:
  a2859c:	4701                	li	a4,0
  a2859e:	a039                	j	a285ac <__udivmoddi4>

00a285a0 <__umoddi3>:
  a285a0:	8118                	push	{ra},-32
  a285a2:	0038                	addi	a4,sp,8
  a285a4:	2021                	jal	ra,a285ac <__udivmoddi4>
  a285a6:	4522                	lw	a0,8(sp)
  a285a8:	45b2                	lw	a1,12(sp)
  a285aa:	8114                	popret	{ra},32

00a285ac <__udivmoddi4>:
  a285ac:	88b6                	mv	a7,a3
  a285ae:	8832                	mv	a6,a2
  a285b0:	87aa                	mv	a5,a0
  a285b2:	8e2e                	mv	t3,a1
  a285b4:	eedd                	bnez	a3,a28672 <__udivmoddi4+0xc6>
  a285b6:	12c5f163          	bgeu	a1,a2,a286d8 <__udivmoddi4+0x12c>
  a285ba:	66c1                	lui	a3,0x10
  a285bc:	1cd66a63          	bltu	a2,a3,a28790 <__udivmoddi4+0x1e4>
  a285c0:	010006b7          	lui	a3,0x1000
  a285c4:	3ad66563          	bltu	a2,a3,a2896e <__udivmoddi4+0x3c2>
  a285c8:	01865313          	srli	t1,a2,0x18
  a285cc:	48e1                	li	a7,24
  a285ce:	0000c697          	auipc	a3,0xc
  a285d2:	aae6a683          	lw	a3,-1362(a3) # a3407c <_GLOBAL_OFFSET_TABLE_+0x4>
  a285d6:	969a                	add	a3,a3,t1
  a285d8:	2294                	lbu	a3,0(a3)
  a285da:	02000313          	li	t1,32
  a285de:	98b6                	add	a7,a7,a3
  a285e0:	41130333          	sub	t1,t1,a7
  a285e4:	00030c63          	beqz	t1,a285fc <__udivmoddi4+0x50>
  a285e8:	006595b3          	sll	a1,a1,t1
  a285ec:	011558b3          	srl	a7,a0,a7
  a285f0:	00661833          	sll	a6,a2,t1
  a285f4:	00b8ee33          	or	t3,a7,a1
  a285f8:	006517b3          	sll	a5,a0,t1
  a285fc:	01085e93          	srli	t4,a6,0x10
  a28600:	03de5f33          	divu	t5,t3,t4
  a28604:	01081613          	slli	a2,a6,0x10
  a28608:	8241                	srli	a2,a2,0x10
  a2860a:	0107d693          	srli	a3,a5,0x10
  a2860e:	03de75b3          	remu	a1,t3,t4
  a28612:	03e60fb3          	mul	t6,a2,t5
  a28616:	20b6a69b          	orshf	a3,a3,a1,sll,16
  a2861a:	01f6fa63          	bgeu	a3,t6,a2862e <__udivmoddi4+0x82>
  a2861e:	96c2                	add	a3,a3,a6
  a28620:	ffff0593          	addi	a1,t5,-1
  a28624:	0106e463          	bltu	a3,a6,a2862c <__udivmoddi4+0x80>
  a28628:	37f6e563          	bltu	a3,t6,a28992 <__udivmoddi4+0x3e6>
  a2862c:	8f2e                	mv	t5,a1
  a2862e:	41f685b3          	sub	a1,a3,t6
  a28632:	03d5d533          	divu	a0,a1,t4
  a28636:	01079693          	slli	a3,a5,0x10
  a2863a:	82c1                	srli	a3,a3,0x10
  a2863c:	03d5f5b3          	remu	a1,a1,t4
  a28640:	02a60633          	mul	a2,a2,a0
  a28644:	20b6a79b          	orshf	a5,a3,a1,sll,16
  a28648:	00c7fa63          	bgeu	a5,a2,a2865c <__udivmoddi4+0xb0>
  a2864c:	97c2                	add	a5,a5,a6
  a2864e:	fff50693          	addi	a3,a0,-1
  a28652:	0107e463          	bltu	a5,a6,a2865a <__udivmoddi4+0xae>
  a28656:	32c7eb63          	bltu	a5,a2,a2898c <__udivmoddi4+0x3e0>
  a2865a:	8536                	mv	a0,a3
  a2865c:	8f91                	sub	a5,a5,a2
  a2865e:	21e5251b          	orshf	a0,a0,t5,sll,16
  a28662:	4581                	li	a1,0
  a28664:	c711                	beqz	a4,a28670 <__udivmoddi4+0xc4>
  a28666:	0067d7b3          	srl	a5,a5,t1
  a2866a:	c31c                	sw	a5,0(a4)
  a2866c:	00072223          	sw	zero,4(a4)
  a28670:	8082                	ret
  a28672:	00d5f963          	bgeu	a1,a3,a28684 <__udivmoddi4+0xd8>
  a28676:	12070f63          	beqz	a4,a287b4 <__udivmoddi4+0x208>
  a2867a:	c308                	sw	a0,0(a4)
  a2867c:	c34c                	sw	a1,4(a4)
  a2867e:	4501                	li	a0,0
  a28680:	4581                	li	a1,0
  a28682:	8082                	ret
  a28684:	67c1                	lui	a5,0x10
  a28686:	0ef6ed63          	bltu	a3,a5,a28780 <__udivmoddi4+0x1d4>
  a2868a:	010007b7          	lui	a5,0x1000
  a2868e:	2cf6ea63          	bltu	a3,a5,a28962 <__udivmoddi4+0x3b6>
  a28692:	0186d893          	srli	a7,a3,0x18
  a28696:	4861                	li	a6,24
  a28698:	0000c797          	auipc	a5,0xc
  a2869c:	9e47a783          	lw	a5,-1564(a5) # a3407c <_GLOBAL_OFFSET_TABLE_+0x4>
  a286a0:	97c6                	add	a5,a5,a7
  a286a2:	0007c303          	lbu	t1,0(a5)
  a286a6:	02000e93          	li	t4,32
  a286aa:	9342                	add	t1,t1,a6
  a286ac:	406e8eb3          	sub	t4,t4,t1
  a286b0:	180e9563          	bnez	t4,a2883a <__udivmoddi4+0x28e>
  a286b4:	00b6e463          	bltu	a3,a1,a286bc <__udivmoddi4+0x110>
  a286b8:	2ec56363          	bltu	a0,a2,a2899e <__udivmoddi4+0x3f2>
  a286bc:	40c50633          	sub	a2,a0,a2
  a286c0:	00c53533          	sltu	a0,a0,a2
  a286c4:	8d95                	sub	a1,a1,a3
  a286c6:	40a58e33          	sub	t3,a1,a0
  a286ca:	4505                	li	a0,1
  a286cc:	4581                	li	a1,0
  a286ce:	d34d                	beqz	a4,a28670 <__udivmoddi4+0xc4>
  a286d0:	c310                	sw	a2,0(a4)
  a286d2:	01c72223          	sw	t3,4(a4)
  a286d6:	8082                	ret
  a286d8:	e601                	bnez	a2,a286e0 <__udivmoddi4+0x134>
  a286da:	4685                	li	a3,1
  a286dc:	02c6d833          	divu	a6,a3,a2
  a286e0:	66c1                	lui	a3,0x10
  a286e2:	0cd86063          	bltu	a6,a3,a287a2 <__udivmoddi4+0x1f6>
  a286e6:	010006b7          	lui	a3,0x1000
  a286ea:	26d86863          	bltu	a6,a3,a2895a <__udivmoddi4+0x3ae>
  a286ee:	01885613          	srli	a2,a6,0x18
  a286f2:	48e1                	li	a7,24
  a286f4:	0000c697          	auipc	a3,0xc
  a286f8:	9886a683          	lw	a3,-1656(a3) # a3407c <_GLOBAL_OFFSET_TABLE_+0x4>
  a286fc:	96b2                	add	a3,a3,a2
  a286fe:	2290                	lbu	a2,0(a3)
  a28700:	02000313          	li	t1,32
  a28704:	9646                	add	a2,a2,a7
  a28706:	40c30333          	sub	t1,t1,a2
  a2870a:	0a031863          	bnez	t1,a287ba <__udivmoddi4+0x20e>
  a2870e:	01081e93          	slli	t4,a6,0x10
  a28712:	410586b3          	sub	a3,a1,a6
  a28716:	01085f13          	srli	t5,a6,0x10
  a2871a:	010ede93          	srli	t4,t4,0x10
  a2871e:	4585                	li	a1,1
  a28720:	0107d893          	srli	a7,a5,0x10
  a28724:	03e6de33          	divu	t3,a3,t5
  a28728:	03e6f6b3          	remu	a3,a3,t5
  a2872c:	03de0633          	mul	a2,t3,t4
  a28730:	20d8a69b          	orshf	a3,a7,a3,sll,16
  a28734:	00c6fa63          	bgeu	a3,a2,a28748 <__udivmoddi4+0x19c>
  a28738:	96c2                	add	a3,a3,a6
  a2873a:	fffe0513          	addi	a0,t3,-1
  a2873e:	0106e463          	bltu	a3,a6,a28746 <__udivmoddi4+0x19a>
  a28742:	24c6eb63          	bltu	a3,a2,a28998 <__udivmoddi4+0x3ec>
  a28746:	8e2a                	mv	t3,a0
  a28748:	40c68633          	sub	a2,a3,a2
  a2874c:	03e65533          	divu	a0,a2,t5
  a28750:	01079693          	slli	a3,a5,0x10
  a28754:	82c1                	srli	a3,a3,0x10
  a28756:	03e67633          	remu	a2,a2,t5
  a2875a:	03d508b3          	mul	a7,a0,t4
  a2875e:	20c6a79b          	orshf	a5,a3,a2,sll,16
  a28762:	0117fa63          	bgeu	a5,a7,a28776 <__udivmoddi4+0x1ca>
  a28766:	97c2                	add	a5,a5,a6
  a28768:	fff50693          	addi	a3,a0,-1
  a2876c:	0107e463          	bltu	a5,a6,a28774 <__udivmoddi4+0x1c8>
  a28770:	2117eb63          	bltu	a5,a7,a28986 <__udivmoddi4+0x3da>
  a28774:	8536                	mv	a0,a3
  a28776:	411787b3          	sub	a5,a5,a7
  a2877a:	21c5251b          	orshf	a0,a0,t3,sll,16
  a2877e:	b5dd                	j	a28664 <__udivmoddi4+0xb8>
  a28780:	0ff00793          	li	a5,255
  a28784:	1ed7f363          	bgeu	a5,a3,a2896a <__udivmoddi4+0x3be>
  a28788:	0086d893          	srli	a7,a3,0x8
  a2878c:	4821                	li	a6,8
  a2878e:	b729                	j	a28698 <__udivmoddi4+0xec>
  a28790:	8332                	mv	t1,a2
  a28792:	0ff00693          	li	a3,255
  a28796:	e2c6fce3          	bgeu	a3,a2,a285ce <__udivmoddi4+0x22>
  a2879a:	00865313          	srli	t1,a2,0x8
  a2879e:	48a1                	li	a7,8
  a287a0:	b53d                	j	a285ce <__udivmoddi4+0x22>
  a287a2:	8642                	mv	a2,a6
  a287a4:	0ff00693          	li	a3,255
  a287a8:	f506f6e3          	bgeu	a3,a6,a286f4 <__udivmoddi4+0x148>
  a287ac:	00885613          	srli	a2,a6,0x8
  a287b0:	48a1                	li	a7,8
  a287b2:	b789                	j	a286f4 <__udivmoddi4+0x148>
  a287b4:	4581                	li	a1,0
  a287b6:	4501                	li	a0,0
  a287b8:	8082                	ret
  a287ba:	00681833          	sll	a6,a6,t1
  a287be:	00c5d8b3          	srl	a7,a1,a2
  a287c2:	01085f13          	srli	t5,a6,0x10
  a287c6:	03e8dfb3          	divu	t6,a7,t5
  a287ca:	01081e93          	slli	t4,a6,0x10
  a287ce:	006595b3          	sll	a1,a1,t1
  a287d2:	00c55633          	srl	a2,a0,a2
  a287d6:	010ede93          	srli	t4,t4,0x10
  a287da:	8e4d                	or	a2,a2,a1
  a287dc:	01065e13          	srli	t3,a2,0x10
  a287e0:	006517b3          	sll	a5,a0,t1
  a287e4:	03e8f8b3          	remu	a7,a7,t5
  a287e8:	03fe85b3          	mul	a1,t4,t6
  a287ec:	211e251b          	orshf	a0,t3,a7,sll,16
  a287f0:	00b57b63          	bgeu	a0,a1,a28806 <__udivmoddi4+0x25a>
  a287f4:	9542                	add	a0,a0,a6
  a287f6:	ffff8693          	addi	a3,t6,-1
  a287fa:	19056463          	bltu	a0,a6,a28982 <__udivmoddi4+0x3d6>
  a287fe:	18b57263          	bgeu	a0,a1,a28982 <__udivmoddi4+0x3d6>
  a28802:	1ff9                	addi	t6,t6,-2
  a28804:	9542                	add	a0,a0,a6
  a28806:	8d0d                	sub	a0,a0,a1
  a28808:	03e558b3          	divu	a7,a0,t5
  a2880c:	9e21                	uxth	a2
  a2880e:	03e57533          	remu	a0,a0,t5
  a28812:	031e86b3          	mul	a3,t4,a7
  a28816:	20a6259b          	orshf	a1,a2,a0,sll,16
  a2881a:	00d5fb63          	bgeu	a1,a3,a28830 <__udivmoddi4+0x284>
  a2881e:	95c2                	add	a1,a1,a6
  a28820:	fff88613          	addi	a2,a7,-1
  a28824:	1505eb63          	bltu	a1,a6,a2897a <__udivmoddi4+0x3ce>
  a28828:	14d5f963          	bgeu	a1,a3,a2897a <__udivmoddi4+0x3ce>
  a2882c:	18f9                	addi	a7,a7,-2
  a2882e:	95c2                	add	a1,a1,a6
  a28830:	40d586b3          	sub	a3,a1,a3
  a28834:	21f8a59b          	orshf	a1,a7,t6,sll,16
  a28838:	b5e5                	j	a28720 <__udivmoddi4+0x174>
  a2883a:	00665833          	srl	a6,a2,t1
  a2883e:	01d696b3          	sll	a3,a3,t4
  a28842:	00d866b3          	or	a3,a6,a3
  a28846:	0065d7b3          	srl	a5,a1,t1
  a2884a:	0106de13          	srli	t3,a3,0x10
  a2884e:	03c7dfb3          	divu	t6,a5,t3
  a28852:	01069893          	slli	a7,a3,0x10
  a28856:	0108d893          	srli	a7,a7,0x10
  a2885a:	00655833          	srl	a6,a0,t1
  a2885e:	01d51f33          	sll	t5,a0,t4
  a28862:	01d595b3          	sll	a1,a1,t4
  a28866:	00b865b3          	or	a1,a6,a1
  a2886a:	0105d813          	srli	a6,a1,0x10
  a2886e:	01d61633          	sll	a2,a2,t4
  a28872:	03c7f7b3          	remu	a5,a5,t3
  a28876:	03f88533          	mul	a0,a7,t6
  a2887a:	20f8279b          	orshf	a5,a6,a5,sll,16
  a2887e:	00a7fb63          	bgeu	a5,a0,a28894 <__udivmoddi4+0x2e8>
  a28882:	97b6                	add	a5,a5,a3
  a28884:	ffff8813          	addi	a6,t6,-1
  a28888:	0ed7eb63          	bltu	a5,a3,a2897e <__udivmoddi4+0x3d2>
  a2888c:	0ea7f963          	bgeu	a5,a0,a2897e <__udivmoddi4+0x3d2>
  a28890:	1ff9                	addi	t6,t6,-2
  a28892:	97b6                	add	a5,a5,a3
  a28894:	8f89                	sub	a5,a5,a0
  a28896:	03c7d533          	divu	a0,a5,t3
  a2889a:	9da1                	uxth	a1
  a2889c:	03c7f7b3          	remu	a5,a5,t3
  a288a0:	02a888b3          	mul	a7,a7,a0
  a288a4:	20f5a59b          	orshf	a1,a1,a5,sll,16
  a288a8:	0115fb63          	bgeu	a1,a7,a288be <__udivmoddi4+0x312>
  a288ac:	95b6                	add	a1,a1,a3
  a288ae:	fff50793          	addi	a5,a0,-1
  a288b2:	0cd5e263          	bltu	a1,a3,a28976 <__udivmoddi4+0x3ca>
  a288b6:	0d15f063          	bgeu	a1,a7,a28976 <__udivmoddi4+0x3ca>
  a288ba:	1579                	addi	a0,a0,-2
  a288bc:	95b6                	add	a1,a1,a3
  a288be:	63c1                	lui	t2,0x10
  a288c0:	21f5251b          	orshf	a0,a0,t6,sll,16
  a288c4:	fff38793          	addi	a5,t2,-1 # ffff <ccause+0xf03d>
  a288c8:	00f57833          	and	a6,a0,a5
  a288cc:	01055e13          	srli	t3,a0,0x10
  a288d0:	8ff1                	and	a5,a5,a2
  a288d2:	01065f93          	srli	t6,a2,0x10
  a288d6:	02fe02b3          	mul	t0,t3,a5
  a288da:	411588b3          	sub	a7,a1,a7
  a288de:	03f805b3          	mul	a1,a6,t6
  a288e2:	02f80833          	mul	a6,a6,a5
  a288e6:	9596                	add	a1,a1,t0
  a288e8:	6105859b          	addshf	a1,a1,a6,srl,16
  a288ec:	03fe0e33          	mul	t3,t3,t6
  a288f0:	0055f363          	bgeu	a1,t0,a288f6 <__udivmoddi4+0x34a>
  a288f4:	9e1e                	add	t3,t3,t2
  a288f6:	67c1                	lui	a5,0x10
  a288f8:	17fd                	addi	a5,a5,-1 # ffff <ccause+0xf03d>
  a288fa:	00f5ffb3          	and	t6,a1,a5
  a288fe:	00f877b3          	and	a5,a6,a5
  a28902:	60be081b          	addshf	a6,t3,a1,srl,16
  a28906:	21f7879b          	addshf	a5,a5,t6,sll,16
  a2890a:	0308ed63          	bltu	a7,a6,a28944 <__udivmoddi4+0x398>
  a2890e:	03088963          	beq	a7,a6,a28940 <__udivmoddi4+0x394>
  a28912:	4581                	li	a1,0
  a28914:	d4070ee3          	beqz	a4,a28670 <__udivmoddi4+0xc4>
  a28918:	40ff07b3          	sub	a5,t5,a5
  a2891c:	00ff3f33          	sltu	t5,t5,a5
  a28920:	410888b3          	sub	a7,a7,a6
  a28924:	41e888b3          	sub	a7,a7,t5
  a28928:	00689333          	sll	t1,a7,t1
  a2892c:	01d7d7b3          	srl	a5,a5,t4
  a28930:	00f367b3          	or	a5,t1,a5
  a28934:	01d8d8b3          	srl	a7,a7,t4
  a28938:	c31c                	sw	a5,0(a4)
  a2893a:	01172223          	sw	a7,4(a4)
  a2893e:	8082                	ret
  a28940:	fcff79e3          	bgeu	t5,a5,a28912 <__udivmoddi4+0x366>
  a28944:	40c78633          	sub	a2,a5,a2
  a28948:	00c7b7b3          	sltu	a5,a5,a2
  a2894c:	40d80833          	sub	a6,a6,a3
  a28950:	40f80833          	sub	a6,a6,a5
  a28954:	157d                	addi	a0,a0,-1
  a28956:	87b2                	mv	a5,a2
  a28958:	bf6d                	j	a28912 <__udivmoddi4+0x366>
  a2895a:	01085613          	srli	a2,a6,0x10
  a2895e:	48c1                	li	a7,16
  a28960:	bb51                	j	a286f4 <__udivmoddi4+0x148>
  a28962:	0106d893          	srli	a7,a3,0x10
  a28966:	4841                	li	a6,16
  a28968:	bb05                	j	a28698 <__udivmoddi4+0xec>
  a2896a:	4801                	li	a6,0
  a2896c:	b335                	j	a28698 <__udivmoddi4+0xec>
  a2896e:	01065313          	srli	t1,a2,0x10
  a28972:	48c1                	li	a7,16
  a28974:	b9a9                	j	a285ce <__udivmoddi4+0x22>
  a28976:	853e                	mv	a0,a5
  a28978:	b799                	j	a288be <__udivmoddi4+0x312>
  a2897a:	88b2                	mv	a7,a2
  a2897c:	bd55                	j	a28830 <__udivmoddi4+0x284>
  a2897e:	8fc2                	mv	t6,a6
  a28980:	bf11                	j	a28894 <__udivmoddi4+0x2e8>
  a28982:	8fb6                	mv	t6,a3
  a28984:	b549                	j	a28806 <__udivmoddi4+0x25a>
  a28986:	1579                	addi	a0,a0,-2
  a28988:	97c2                	add	a5,a5,a6
  a2898a:	b3f5                	j	a28776 <__udivmoddi4+0x1ca>
  a2898c:	1579                	addi	a0,a0,-2
  a2898e:	97c2                	add	a5,a5,a6
  a28990:	b1f1                	j	a2865c <__udivmoddi4+0xb0>
  a28992:	1f79                	addi	t5,t5,-2
  a28994:	96c2                	add	a3,a3,a6
  a28996:	b961                	j	a2862e <__udivmoddi4+0x82>
  a28998:	1e79                	addi	t3,t3,-2
  a2899a:	96c2                	add	a3,a3,a6
  a2899c:	b375                	j	a28748 <__udivmoddi4+0x19c>
  a2899e:	862a                	mv	a2,a0
  a289a0:	4501                	li	a0,0
  a289a2:	b32d                	j	a286cc <__udivmoddi4+0x120>

00a289a4 <memset>:
  a289a4:	ca59                	beqz	a2,a28a3a <memset+0x96>
  a289a6:	0ff5f793          	andi	a5,a1,255
  a289aa:	a11c                	sb	a5,0(a0)
  a289ac:	00c50733          	add	a4,a0,a2
  a289b0:	fef70fa3          	sb	a5,-1(a4)
  a289b4:	032661bb          	bltui	a2,3,a28a3a <memset+0x96>
  a289b8:	b11c                	sb	a5,1(a0)
  a289ba:	a13c                	sb	a5,2(a0)
  a289bc:	fef70f23          	sb	a5,-2(a4)
  a289c0:	fef70ea3          	sb	a5,-3(a4)
  a289c4:	07166dbb          	bltui	a2,7,a28a3a <memset+0x96>
  a289c8:	b13c                	sb	a5,3(a0)
  a289ca:	fef70e23          	sb	a5,-4(a4)
  a289ce:	46a1                	li	a3,8
  a289d0:	06c6f563          	bgeu	a3,a2,a28a3a <memset+0x96>
  a289d4:	40a007b3          	neg	a5,a0
  a289d8:	8b8d                	andi	a5,a5,3
  a289da:	00f50733          	add	a4,a0,a5
  a289de:	8e1d                	sub	a2,a2,a5
  a289e0:	0ff5f593          	andi	a1,a1,255
  a289e4:	0101 0101 079f      	l.li	a5,0x1010101
  a289ea:	02f585b3          	mul	a1,a1,a5
  a289ee:	9a71                	andi	a2,a2,-4
  a289f0:	00c707b3          	add	a5,a4,a2
  a289f4:	c30c                	sw	a1,0(a4)
  a289f6:	feb7ae23          	sw	a1,-4(a5)
  a289fa:	04c6f063          	bgeu	a3,a2,a28a3a <memset+0x96>
  a289fe:	c34c                	sw	a1,4(a4)
  a28a00:	c70c                	sw	a1,8(a4)
  a28a02:	feb7aa23          	sw	a1,-12(a5)
  a28a06:	feb7ac23          	sw	a1,-8(a5)
  a28a0a:	19066c3b          	bltui	a2,25,a28a3a <memset+0x96>
  a28a0e:	c74c                	sw	a1,12(a4)
  a28a10:	cb0c                	sw	a1,16(a4)
  a28a12:	cb4c                	sw	a1,20(a4)
  a28a14:	cf0c                	sw	a1,24(a4)
  a28a16:	feb7a223          	sw	a1,-28(a5)
  a28a1a:	feb7a423          	sw	a1,-24(a5)
  a28a1e:	feb7a623          	sw	a1,-20(a5)
  a28a22:	feb7a823          	sw	a1,-16(a5)
  a28a26:	00477793          	andi	a5,a4,4
  a28a2a:	07e1                	addi	a5,a5,24
  a28a2c:	97ba                	add	a5,a5,a4
  a28a2e:	46fd                	li	a3,31
  a28a30:	9732                	add	a4,a4,a2
  a28a32:	40f70633          	sub	a2,a4,a5
  a28a36:	00c6e363          	bltu	a3,a2,a28a3c <memset+0x98>
  a28a3a:	8082                	ret
  a28a3c:	c38c                	sw	a1,0(a5)
  a28a3e:	c3cc                	sw	a1,4(a5)
  a28a40:	c78c                	sw	a1,8(a5)
  a28a42:	c7cc                	sw	a1,12(a5)
  a28a44:	cb8c                	sw	a1,16(a5)
  a28a46:	cbcc                	sw	a1,20(a5)
  a28a48:	cf8c                	sw	a1,24(a5)
  a28a4a:	cfcc                	sw	a1,28(a5)
  a28a4c:	02078793          	addi	a5,a5,32
  a28a50:	b7cd                	j	a28a32 <memset+0x8e>

00a28a52 <memcpy>:
  a28a52:	87aa                	mv	a5,a0
  a28a54:	0035f713          	andi	a4,a1,3
  a28a58:	c319                	beqz	a4,a28a5e <memcpy+0xc>
  a28a5a:	16061963          	bnez	a2,a28bcc <memcpy+0x17a>
  a28a5e:	0037f813          	andi	a6,a5,3
  a28a62:	473d                	li	a4,15
  a28a64:	18080e63          	beqz	a6,a28c00 <memcpy+0x1ae>
  a28a68:	20166abb          	bltui	a2,32,a28ad2 <memcpy+0x80>
  a28a6c:	2194                	lbu	a3,0(a1)
  a28a6e:	4198                	lw	a4,0(a1)
  a28a70:	027807bb          	beqi	a6,2,a28c4e <memcpy+0x1fc>
  a28a74:	488d                	li	a7,3
  a28a76:	23180563          	beq	a6,a7,a28ca0 <memcpy+0x24e>
  a28a7a:	a394                	sb	a3,0(a5)
  a28a7c:	3194                	lbu	a3,1(a1)
  a28a7e:	1675                	addi	a2,a2,-3
  a28a80:	058d                	addi	a1,a1,3
  a28a82:	b394                	sb	a3,1(a5)
  a28a84:	fff5c683          	lbu	a3,-1(a1)
  a28a88:	078d                	addi	a5,a5,3
  a28a8a:	4e41                	li	t3,16
  a28a8c:	fed78fa3          	sb	a3,-1(a5)
  a28a90:	0015a303          	lw	t1,1(a1)
  a28a94:	0055a883          	lw	a7,5(a1)
  a28a98:	1641                	addi	a2,a2,-16
  a28a9a:	00831813          	slli	a6,t1,0x8
  a28a9e:	70e8271b          	orshf	a4,a6,a4,srl,24
  a28aa2:	0095a803          	lw	a6,9(a1)
  a28aa6:	c398                	sw	a4,0(a5)
  a28aa8:	00889693          	slli	a3,a7,0x8
  a28aac:	00881713          	slli	a4,a6,0x8
  a28ab0:	7117271b          	orshf	a4,a4,a7,srl,24
  a28ab4:	c798                	sw	a4,8(a5)
  a28ab6:	00d5a703          	lw	a4,13(a1)
  a28aba:	7066a69b          	orshf	a3,a3,t1,srl,24
  a28abe:	c3d4                	sw	a3,4(a5)
  a28ac0:	00871693          	slli	a3,a4,0x8
  a28ac4:	7106a69b          	orshf	a3,a3,a6,srl,24
  a28ac8:	c7d4                	sw	a3,12(a5)
  a28aca:	05c1                	addi	a1,a1,16
  a28acc:	07c1                	addi	a5,a5,16
  a28ace:	fcce61e3          	bltu	t3,a2,a28a90 <memcpy+0x3e>
  a28ad2:	01067713          	andi	a4,a2,16
  a28ad6:	c351                	beqz	a4,a28b5a <memcpy+0x108>
  a28ad8:	2198                	lbu	a4,0(a1)
  a28ada:	07c1                	addi	a5,a5,16
  a28adc:	05c1                	addi	a1,a1,16
  a28ade:	fee78823          	sb	a4,-16(a5)
  a28ae2:	ff15c703          	lbu	a4,-15(a1)
  a28ae6:	fee788a3          	sb	a4,-15(a5)
  a28aea:	ff25c703          	lbu	a4,-14(a1)
  a28aee:	fee78923          	sb	a4,-14(a5)
  a28af2:	ff35c703          	lbu	a4,-13(a1)
  a28af6:	fee789a3          	sb	a4,-13(a5)
  a28afa:	ff45c703          	lbu	a4,-12(a1)
  a28afe:	fee78a23          	sb	a4,-12(a5)
  a28b02:	ff55c703          	lbu	a4,-11(a1)
  a28b06:	fee78aa3          	sb	a4,-11(a5)
  a28b0a:	ff65c703          	lbu	a4,-10(a1)
  a28b0e:	fee78b23          	sb	a4,-10(a5)
  a28b12:	ff75c703          	lbu	a4,-9(a1)
  a28b16:	fee78ba3          	sb	a4,-9(a5)
  a28b1a:	ff85c703          	lbu	a4,-8(a1)
  a28b1e:	fee78c23          	sb	a4,-8(a5)
  a28b22:	ff95c703          	lbu	a4,-7(a1)
  a28b26:	fee78ca3          	sb	a4,-7(a5)
  a28b2a:	ffa5c703          	lbu	a4,-6(a1)
  a28b2e:	fee78d23          	sb	a4,-6(a5)
  a28b32:	ffb5c703          	lbu	a4,-5(a1)
  a28b36:	fee78da3          	sb	a4,-5(a5)
  a28b3a:	ffc5c703          	lbu	a4,-4(a1)
  a28b3e:	fee78e23          	sb	a4,-4(a5)
  a28b42:	ffd5c703          	lbu	a4,-3(a1)
  a28b46:	fee78ea3          	sb	a4,-3(a5)
  a28b4a:	ffe5c703          	lbu	a4,-2(a1)
  a28b4e:	fee78f23          	sb	a4,-2(a5)
  a28b52:	fff5c703          	lbu	a4,-1(a1)
  a28b56:	fee78fa3          	sb	a4,-1(a5)
  a28b5a:	00867713          	andi	a4,a2,8
  a28b5e:	c331                	beqz	a4,a28ba2 <memcpy+0x150>
  a28b60:	2198                	lbu	a4,0(a1)
  a28b62:	07a1                	addi	a5,a5,8
  a28b64:	05a1                	addi	a1,a1,8
  a28b66:	fee78c23          	sb	a4,-8(a5)
  a28b6a:	ff95c703          	lbu	a4,-7(a1)
  a28b6e:	fee78ca3          	sb	a4,-7(a5)
  a28b72:	ffa5c703          	lbu	a4,-6(a1)
  a28b76:	fee78d23          	sb	a4,-6(a5)
  a28b7a:	ffb5c703          	lbu	a4,-5(a1)
  a28b7e:	fee78da3          	sb	a4,-5(a5)
  a28b82:	ffc5c703          	lbu	a4,-4(a1)
  a28b86:	fee78e23          	sb	a4,-4(a5)
  a28b8a:	ffd5c703          	lbu	a4,-3(a1)
  a28b8e:	fee78ea3          	sb	a4,-3(a5)
  a28b92:	ffe5c703          	lbu	a4,-2(a1)
  a28b96:	fee78f23          	sb	a4,-2(a5)
  a28b9a:	fff5c703          	lbu	a4,-1(a1)
  a28b9e:	fee78fa3          	sb	a4,-1(a5)
  a28ba2:	00467713          	andi	a4,a2,4
  a28ba6:	c359                	beqz	a4,a28c2c <memcpy+0x1da>
  a28ba8:	2198                	lbu	a4,0(a1)
  a28baa:	0791                	addi	a5,a5,4
  a28bac:	0591                	addi	a1,a1,4
  a28bae:	fee78e23          	sb	a4,-4(a5)
  a28bb2:	ffd5c703          	lbu	a4,-3(a1)
  a28bb6:	fee78ea3          	sb	a4,-3(a5)
  a28bba:	ffe5c703          	lbu	a4,-2(a1)
  a28bbe:	fee78f23          	sb	a4,-2(a5)
  a28bc2:	fff5c703          	lbu	a4,-1(a1)
  a28bc6:	fee78fa3          	sb	a4,-1(a5)
  a28bca:	a08d                	j	a28c2c <memcpy+0x1da>
  a28bcc:	0585                	addi	a1,a1,1
  a28bce:	fff5c703          	lbu	a4,-1(a1)
  a28bd2:	0785                	addi	a5,a5,1
  a28bd4:	167d                	addi	a2,a2,-1
  a28bd6:	fee78fa3          	sb	a4,-1(a5)
  a28bda:	bdad                	j	a28a54 <memcpy+0x2>
  a28bdc:	4194                	lw	a3,0(a1)
  a28bde:	07c1                	addi	a5,a5,16
  a28be0:	05c1                	addi	a1,a1,16
  a28be2:	fed7a823          	sw	a3,-16(a5)
  a28be6:	ff45a683          	lw	a3,-12(a1)
  a28bea:	1641                	addi	a2,a2,-16
  a28bec:	fed7aa23          	sw	a3,-12(a5)
  a28bf0:	ff85a683          	lw	a3,-8(a1)
  a28bf4:	fed7ac23          	sw	a3,-8(a5)
  a28bf8:	ffc5a683          	lw	a3,-4(a1)
  a28bfc:	fed7ae23          	sw	a3,-4(a5)
  a28c00:	fcc76ee3          	bltu	a4,a2,a28bdc <memcpy+0x18a>
  a28c04:	00867713          	andi	a4,a2,8
  a28c08:	cb11                	beqz	a4,a28c1c <memcpy+0x1ca>
  a28c0a:	4198                	lw	a4,0(a1)
  a28c0c:	07a1                	addi	a5,a5,8
  a28c0e:	05a1                	addi	a1,a1,8
  a28c10:	fee7ac23          	sw	a4,-8(a5)
  a28c14:	ffc5a703          	lw	a4,-4(a1)
  a28c18:	fee7ae23          	sw	a4,-4(a5)
  a28c1c:	00467713          	andi	a4,a2,4
  a28c20:	c711                	beqz	a4,a28c2c <memcpy+0x1da>
  a28c22:	4198                	lw	a4,0(a1)
  a28c24:	0791                	addi	a5,a5,4
  a28c26:	0591                	addi	a1,a1,4
  a28c28:	fee7ae23          	sw	a4,-4(a5)
  a28c2c:	00267713          	andi	a4,a2,2
  a28c30:	cb11                	beqz	a4,a28c44 <memcpy+0x1f2>
  a28c32:	2198                	lbu	a4,0(a1)
  a28c34:	0789                	addi	a5,a5,2
  a28c36:	0589                	addi	a1,a1,2
  a28c38:	fee78f23          	sb	a4,-2(a5)
  a28c3c:	fff5c703          	lbu	a4,-1(a1)
  a28c40:	fee78fa3          	sb	a4,-1(a5)
  a28c44:	8a05                	andi	a2,a2,1
  a28c46:	c219                	beqz	a2,a28c4c <memcpy+0x1fa>
  a28c48:	2198                	lbu	a4,0(a1)
  a28c4a:	a398                	sb	a4,0(a5)
  a28c4c:	8082                	ret
  a28c4e:	a394                	sb	a3,0(a5)
  a28c50:	3194                	lbu	a3,1(a1)
  a28c52:	1679                	addi	a2,a2,-2
  a28c54:	0589                	addi	a1,a1,2
  a28c56:	b394                	sb	a3,1(a5)
  a28c58:	4e45                	li	t3,17
  a28c5a:	0789                	addi	a5,a5,2
  a28c5c:	0025a303          	lw	t1,2(a1)
  a28c60:	0065a883          	lw	a7,6(a1)
  a28c64:	1641                	addi	a2,a2,-16
  a28c66:	01031813          	slli	a6,t1,0x10
  a28c6a:	60e8271b          	orshf	a4,a6,a4,srl,16
  a28c6e:	00a5a803          	lw	a6,10(a1)
  a28c72:	c398                	sw	a4,0(a5)
  a28c74:	01089693          	slli	a3,a7,0x10
  a28c78:	01081713          	slli	a4,a6,0x10
  a28c7c:	6117271b          	orshf	a4,a4,a7,srl,16
  a28c80:	c798                	sw	a4,8(a5)
  a28c82:	00e5a703          	lw	a4,14(a1)
  a28c86:	6066a69b          	orshf	a3,a3,t1,srl,16
  a28c8a:	c3d4                	sw	a3,4(a5)
  a28c8c:	01071693          	slli	a3,a4,0x10
  a28c90:	6106a69b          	orshf	a3,a3,a6,srl,16
  a28c94:	c7d4                	sw	a3,12(a5)
  a28c96:	05c1                	addi	a1,a1,16
  a28c98:	07c1                	addi	a5,a5,16
  a28c9a:	fcce61e3          	bltu	t3,a2,a28c5c <memcpy+0x20a>
  a28c9e:	bd15                	j	a28ad2 <memcpy+0x80>
  a28ca0:	a394                	sb	a3,0(a5)
  a28ca2:	0585                	addi	a1,a1,1
  a28ca4:	167d                	addi	a2,a2,-1
  a28ca6:	0785                	addi	a5,a5,1
  a28ca8:	4e49                	li	t3,18
  a28caa:	0035a303          	lw	t1,3(a1)
  a28cae:	0075a883          	lw	a7,7(a1)
  a28cb2:	1641                	addi	a2,a2,-16
  a28cb4:	01831813          	slli	a6,t1,0x18
  a28cb8:	50e8271b          	orshf	a4,a6,a4,srl,8
  a28cbc:	00b5a803          	lw	a6,11(a1)
  a28cc0:	c398                	sw	a4,0(a5)
  a28cc2:	01889693          	slli	a3,a7,0x18
  a28cc6:	01881713          	slli	a4,a6,0x18
  a28cca:	5117271b          	orshf	a4,a4,a7,srl,8
  a28cce:	c798                	sw	a4,8(a5)
  a28cd0:	00f5a703          	lw	a4,15(a1)
  a28cd4:	5066a69b          	orshf	a3,a3,t1,srl,8
  a28cd8:	c3d4                	sw	a3,4(a5)
  a28cda:	01871693          	slli	a3,a4,0x18
  a28cde:	5106a69b          	orshf	a3,a3,a6,srl,8
  a28ce2:	c7d4                	sw	a3,12(a5)
  a28ce4:	05c1                	addi	a1,a1,16
  a28ce6:	07c1                	addi	a5,a5,16
  a28ce8:	fcce61e3          	bltu	t3,a2,a28caa <memcpy+0x258>
  a28cec:	b3dd                	j	a28ad2 <memcpy+0x80>

00a28cee <memcmp>:
  a28cee:	962a                	add	a2,a2,a0
  a28cf0:	00c50c63          	beq	a0,a2,a28d08 <memcmp+0x1a>
  a28cf4:	211c                	lbu	a5,0(a0)
  a28cf6:	2198                	lbu	a4,0(a1)
  a28cf8:	00e78563          	beq	a5,a4,a28d02 <memcmp+0x14>
  a28cfc:	40e78533          	sub	a0,a5,a4
  a28d00:	8082                	ret
  a28d02:	0505                	addi	a0,a0,1
  a28d04:	0585                	addi	a1,a1,1
  a28d06:	b7ed                	j	a28cf0 <memcmp+0x2>
  a28d08:	4501                	li	a0,0
  a28d0a:	8082                	ret

00a28d0c <strlen>:
  a28d0c:	87aa                	mv	a5,a0
  a28d0e:	0037f713          	andi	a4,a5,3
  a28d12:	e31d                	bnez	a4,a28d38 <strlen+0x2c>
  a28d14:	fefe feff 059f      	l.li	a1,0xfefefeff
  a28d1a:	8080 8080 061f      	l.li	a2,0x80808080
  a28d20:	4394                	lw	a3,0(a5)
  a28d22:	00b68733          	add	a4,a3,a1
  a28d26:	fff6c693          	not	a3,a3
  a28d2a:	8f75                	and	a4,a4,a3
  a28d2c:	8f71                	and	a4,a4,a2
  a28d2e:	cf01                	beqz	a4,a28d46 <strlen+0x3a>
  a28d30:	2398                	lbu	a4,0(a5)
  a28d32:	c709                	beqz	a4,a28d3c <strlen+0x30>
  a28d34:	0785                	addi	a5,a5,1
  a28d36:	bfed                	j	a28d30 <strlen+0x24>
  a28d38:	2398                	lbu	a4,0(a5)
  a28d3a:	e701                	bnez	a4,a28d42 <strlen+0x36>
  a28d3c:	40a78533          	sub	a0,a5,a0
  a28d40:	8082                	ret
  a28d42:	0785                	addi	a5,a5,1
  a28d44:	b7e9                	j	a28d0e <strlen+0x2>
  a28d46:	0791                	addi	a5,a5,4
  a28d48:	bfe1                	j	a28d20 <strlen+0x14>

00a28d4a <memmove>:
  a28d4a:	882a                	mv	a6,a0
  a28d4c:	872e                	mv	a4,a1
  a28d4e:	87b2                	mv	a5,a2
  a28d50:	02b50f63          	beq	a0,a1,a28d8e <memmove+0x44>
  a28d54:	56f9                	li	a3,-2
  a28d56:	02d606b3          	mul	a3,a2,a3
  a28d5a:	40a588b3          	sub	a7,a1,a0
  a28d5e:	40c888b3          	sub	a7,a7,a2
  a28d62:	0116e363          	bltu	a3,a7,a28d68 <memmove+0x1e>
  a28d66:	b1f5                	j	a28a52 <memcpy>
  a28d68:	00a5c6b3          	xor	a3,a1,a0
  a28d6c:	8a8d                	andi	a3,a3,3
  a28d6e:	04b57863          	bgeu	a0,a1,a28dbe <memmove+0x74>
  a28d72:	c6a1                	beqz	a3,a28dba <memmove+0x70>
  a28d74:	86aa                	mv	a3,a0
  a28d76:	97b6                	add	a5,a5,a3
  a28d78:	00f68a63          	beq	a3,a5,a28d8c <memmove+0x42>
  a28d7c:	0705                	addi	a4,a4,1
  a28d7e:	fff74603          	lbu	a2,-1(a4)
  a28d82:	0685                	addi	a3,a3,1
  a28d84:	fec68fa3          	sb	a2,-1(a3)
  a28d88:	bfc5                	j	a28d78 <memmove+0x2e>
  a28d8a:	e781                	bnez	a5,a28d92 <memmove+0x48>
  a28d8c:	8742                	mv	a4,a6
  a28d8e:	853a                	mv	a0,a4
  a28d90:	8082                	ret
  a28d92:	0705                	addi	a4,a4,1
  a28d94:	fff74603          	lbu	a2,-1(a4)
  a28d98:	0685                	addi	a3,a3,1
  a28d9a:	17fd                	addi	a5,a5,-1
  a28d9c:	fec68fa3          	sb	a2,-1(a3)
  a28da0:	0036f613          	andi	a2,a3,3
  a28da4:	f27d                	bnez	a2,a28d8a <memmove+0x40>
  a28da6:	460d                	li	a2,3
  a28da8:	fcf677e3          	bgeu	a2,a5,a28d76 <memmove+0x2c>
  a28dac:	430c                	lw	a1,0(a4)
  a28dae:	17f1                	addi	a5,a5,-4
  a28db0:	0691                	addi	a3,a3,4
  a28db2:	feb6ae23          	sw	a1,-4(a3)
  a28db6:	0711                	addi	a4,a4,4
  a28db8:	bfc5                	j	a28da8 <memmove+0x5e>
  a28dba:	86aa                	mv	a3,a0
  a28dbc:	b7d5                	j	a28da0 <memmove+0x56>
  a28dbe:	ee81                	bnez	a3,a28dd6 <memmove+0x8c>
  a28dc0:	962a                	add	a2,a2,a0
  a28dc2:	00f586b3          	add	a3,a1,a5
  a28dc6:	00367593          	andi	a1,a2,3
  a28dca:	40e687b3          	sub	a5,a3,a4
  a28dce:	ed89                	bnez	a1,a28de8 <memmove+0x9e>
  a28dd0:	468d                	li	a3,3
  a28dd2:	02f6e363          	bltu	a3,a5,a28df8 <memmove+0xae>
  a28dd6:	dbdd                	beqz	a5,a28d8c <memmove+0x42>
  a28dd8:	17fd                	addi	a5,a5,-1
  a28dda:	00f706b3          	add	a3,a4,a5
  a28dde:	2290                	lbu	a2,0(a3)
  a28de0:	00f806b3          	add	a3,a6,a5
  a28de4:	a290                	sb	a2,0(a3)
  a28de6:	bfc5                	j	a28dd6 <memmove+0x8c>
  a28de8:	167d                	addi	a2,a2,-1
  a28dea:	fad701e3          	beq	a4,a3,a28d8c <memmove+0x42>
  a28dee:	fff6c783          	lbu	a5,-1(a3)
  a28df2:	16fd                	addi	a3,a3,-1
  a28df4:	a21c                	sb	a5,0(a2)
  a28df6:	bfc1                	j	a28dc6 <memmove+0x7c>
  a28df8:	17f1                	addi	a5,a5,-4
  a28dfa:	00f70633          	add	a2,a4,a5
  a28dfe:	420c                	lw	a1,0(a2)
  a28e00:	00f80633          	add	a2,a6,a5
  a28e04:	c20c                	sw	a1,0(a2)
  a28e06:	b7f1                	j	a28dd2 <memmove+0x88>

00a28e08 <reset>:
  a28e08:	8018                	push	{ra},-16
  a28e0a:	637030ef          	jal	ra,a2cc40 <update_reset_count>
  a28e0e:	400027b7          	lui	a5,0x40002
  a28e12:	4711                	li	a4,4
  a28e14:	10e79823          	sh	a4,272(a5) # 40002110 <_gp_+0x3f5cd888>
  a28e18:	a001                	j	a28e18 <reset+0x10>

00a28e1a <boot_fail>:
  a28e1a:	a001                	j	a28e1a <boot_fail>

00a28e1c <boot_regist_flash_cmd>:
  a28e1c:	8018                	push	{ra},-16
  a28e1e:	862a                	mv	a2,a0
  a28e20:	46d1                	li	a3,20
  a28e22:	45d1                	li	a1,20
  a28e24:	00a0 5500 051f      	l.li	a0,0xa05500
  a28e2a:	3bd070ef          	jal	ra,a309e6 <memcpy_s>
  a28e2e:	c501                	beqz	a0,a28e36 <boot_regist_flash_cmd+0x1a>
  a28e30:	80000537          	lui	a0,0x80000
  a28e34:	0511                	addi	a0,a0,4 # 80000004 <_gp_+0x7f5cb77c>
  a28e36:	8014                	popret	{ra},16

00a28e38 <jump_to_execute_addr>:
  a28e38:	8018                	push	{ra},-16
  a28e3a:	9502                	jalr	a0
  a28e3c:	8010                	pop	{ra},16
  a28e3e:	bff1                	j	a28e1a <boot_fail>

00a28e40 <ws63_set_try_fix_cnt>:
  a28e40:	40000737          	lui	a4,0x40000
  a28e44:	471c                	lw	a5,8(a4)
  a28e46:	893d                	andi	a0,a0,15
  a28e48:	9bc1                	andi	a5,a5,-16
  a28e4a:	8fc9                	or	a5,a5,a0
  a28e4c:	c71c                	sw	a5,8(a4)
  a28e4e:	8082                	ret

00a28e50 <sfc_flash_erase>:
  a28e50:	ffe007b7          	lui	a5,0xffe00
  a28e54:	953e                	add	a0,a0,a5
  a28e56:	1830306f          	j	a2c7d8 <uapi_sfc_reg_erase>

00a28e5a <sfc_flash_write>:
  a28e5a:	87b2                	mv	a5,a2
  a28e5c:	862e                	mv	a2,a1
  a28e5e:	85be                	mv	a1,a5
  a28e60:	07b0306f          	j	a2c6da <uapi_sfc_reg_write>

00a28e64 <sfc_flash_read>:
  a28e64:	87b2                	mv	a5,a2
  a28e66:	862e                	mv	a2,a1
  a28e68:	85be                	mv	a1,a5
  a28e6a:	79c0306f          	j	a2c606 <uapi_sfc_reg_read>

00a28e6e <sfc_flash_init>:
  a28e6e:	00a3 1d90 051f      	l.li	a0,0xa31d90
  a28e74:	6e80306f          	j	a2c55c <uapi_sfc_init>

00a28e78 <start_fastboot>:
  a28e78:	8a58                	push	{ra,s0-s3},-192
  a28e7a:	ce02                	sw	zero,28(sp)
  a28e7c:	d002                	sw	zero,32(sp)
  a28e7e:	d202                	sw	zero,36(sp)
  a28e80:	40003637          	lui	a2,0x40003
  a28e84:	23862783          	lw	a5,568(a2) # 40003238 <_gp_+0x3f5ce9b0>
  a28e88:	0037d693          	srli	a3,a5,0x3
  a28e8c:	0027d713          	srli	a4,a5,0x2
  a28e90:	8a85                	andi	a3,a3,1
  a28e92:	8b05                	andi	a4,a4,1
  a28e94:	00e68a63          	beq	a3,a4,a28ea8 <start_fastboot+0x30>
  a28e98:	0047f713          	andi	a4,a5,4
  a28e9c:	e711                	bnez	a4,a28ea8 <start_fastboot+0x30>
  a28e9e:	9bf9                	andi	a5,a5,-2
  a28ea0:	0027e793          	ori	a5,a5,2
  a28ea4:	22f62c23          	sw	a5,568(a2)
  a28ea8:	40003737          	lui	a4,0x40003
  a28eac:	40872783          	lw	a5,1032(a4) # 40003408 <_gp_+0x3f5ceb80>
  a28eb0:	0387e793          	ori	a5,a5,56
  a28eb4:	40f72423          	sw	a5,1032(a4)
  a28eb8:	31b030ef          	jal	ra,a2c9d2 <boot_clock_adapt>
  a28ebc:	451d                	li	a0,7
  a28ebe:	08f010ef          	jal	ra,a2a74c <uapi_watchdog_init>
  a28ec2:	4501                	li	a0,0
  a28ec4:	0db010ef          	jal	ra,a2a79e <uapi_watchdog_enable>
  a28ec8:	0001 c200 079f      	l.li	a5,0x1c200
  a28ece:	d43e                	sw	a5,40(sp)
  a28ed0:	10800793          	li	a5,264
  a28ed4:	d63e                	sw	a5,44(sp)
  a28ed6:	0004 0102 079f      	l.li	a5,0x40102
  a28edc:	d83e                	sw	a5,48(sp)
  a28ede:	36c010ef          	jal	ra,a2a24a <uapi_tcxo_init>
  a28ee2:	4631                	li	a2,12
  a28ee4:	102c                	addi	a1,sp,40
  a28ee6:	850a                	mv	a0,sp
  a28ee8:	36ad                	jal	ra,a28a52 <memcpy>
  a28eea:	4581                	li	a1,0
  a28eec:	850a                	mv	a0,sp
  a28eee:	4c3030ef          	jal	ra,a2cbb0 <hiburn_uart_init>
  a28ef2:	00a3 1d9c 051f      	l.li	a0,0xa31d9c
  a28ef8:	459030ef          	jal	ra,a2cb50 <boot_msg0>
  a28efc:	4b1040ef          	jal	ra,a2dbac <uapi_partition_init>
  a28f00:	156030ef          	jal	ra,a2c056 <pmp_enable>
  a28f04:	269030ef          	jal	ra,a2c96c <malloc_port_init>
  a28f08:	00a3 1db8 051f      	l.li	a0,0xa31db8
  a28f0e:	443030ef          	jal	ra,a2cb50 <boot_msg0>
  a28f12:	00a2 8e6e 079f      	l.li	a5,0xa28e6e
  a28f18:	da3e                	sw	a5,52(sp)
  a28f1a:	00a2 8e64 079f      	l.li	a5,0xa28e64
  a28f20:	dc3e                	sw	a5,56(sp)
  a28f22:	00a2 8e5a 079f      	l.li	a5,0xa28e5a
  a28f28:	de3e                	sw	a5,60(sp)
  a28f2a:	1848                	addi	a0,sp,52
  a28f2c:	00a2 8e50 079f      	l.li	a5,0xa28e50
  a28f32:	c0be                	sw	a5,64(sp)
  a28f34:	c282                	sw	zero,68(sp)
  a28f36:	35dd                	jal	ra,a28e1c <boot_regist_flash_cmd>
  a28f38:	3f1d                	jal	ra,a28e6e <sfc_flash_init>
  a28f3a:	85aa                	mv	a1,a0
  a28f3c:	1a050f63          	beqz	a0,a290fa <start_fastboot+0x282>
  a28f40:	00a3 1dd4 051f      	l.li	a0,0xa31dd4
  a28f46:	41d030ef          	jal	ra,a2cb62 <boot_msg1>
  a28f4a:	2cd030ef          	jal	ra,a2ca16 <switch_flash_clock_to_pll>
  a28f4e:	2f5030ef          	jal	ra,a2ca42 <config_sfc_ctrl_ds>
  a28f52:	418030ef          	jal	ra,a2c36a <sfc_port_fix_sr>
  a28f56:	85aa                	mv	a1,a0
  a28f58:	c511                	beqz	a0,a28f64 <start_fastboot+0xec>
  a28f5a:	00a3 1e00 051f      	l.li	a0,0xa31e00
  a28f60:	403030ef          	jal	ra,a2cb62 <boot_msg1>
  a28f64:	400037b7          	lui	a5,0x40003
  a28f68:	2387a783          	lw	a5,568(a5) # 40003238 <_gp_+0x3f5ce9b0>
  a28f6c:	0027f693          	andi	a3,a5,2
  a28f70:	0087f713          	andi	a4,a5,8
  a28f74:	18068963          	beqz	a3,a29106 <start_fastboot+0x28e>
  a28f78:	8b85                	andi	a5,a5,1
  a28f7a:	03300593          	li	a1,51
  a28f7e:	c391                	beqz	a5,a28f82 <start_fastboot+0x10a>
  a28f80:	45e1                	li	a1,24
  a28f82:	03300613          	li	a2,51
  a28f86:	c311                	beqz	a4,a28f8a <start_fastboot+0x112>
  a28f88:	4661                	li	a2,24
  a28f8a:	00a3 1e14 051f      	l.li	a0,0xa31e14
  a28f90:	3ef030ef          	jal	ra,a2cb7e <boot_msg2>
  a28f94:	00a3 1e68 059f      	l.li	a1,0xa31e68
  a28f9a:	00a3 1e74 051f      	l.li	a0,0xa31e74
  a28fa0:	130030ef          	jal	ra,a2c0d0 <print_str>
  a28fa4:	1af030ef          	jal	ra,a2c952 <set_efuse_period>
  a28fa8:	0d7010ef          	jal	ra,a2a87e <uapi_efuse_init>
  a28fac:	5d4040ef          	jal	ra,a2d580 <ws63_upg_init>
  a28fb0:	102c                	addi	a1,sp,40
  a28fb2:	02100513          	li	a0,33
  a28fb6:	cc02                	sw	zero,24(sp)
  a28fb8:	473040ef          	jal	ra,a2dc2a <uapi_partition_get_info>
  a28fbc:	e509                	bnez	a0,a28fc6 <start_fastboot+0x14e>
  a28fbe:	02814783          	lbu	a5,40(sp)
  a28fc2:	14078c63          	beqz	a5,a2911a <start_fastboot+0x2a2>
  a28fc6:	0f000593          	li	a1,240
  a28fca:	00a3 1e90 051f      	l.li	a0,0xa31e90
  a28fd0:	393030ef          	jal	ra,a2cb62 <boot_msg1>
  a28fd4:	086c                	addi	a1,sp,28
  a28fd6:	02000513          	li	a0,32
  a28fda:	451040ef          	jal	ra,a2dc2a <uapi_partition_get_info>
  a28fde:	c519                	beqz	a0,a28fec <start_fastboot+0x174>
  a28fe0:	00a3 1f44 051f      	l.li	a0,0xa31f44
  a28fe6:	36b030ef          	jal	ra,a2cb50 <boot_msg0>
  a28fea:	3d39                	jal	ra,a28e08 <reset>
  a28fec:	5402                	lw	s0,32(sp)
  a28fee:	002007b7          	lui	a5,0x200
  a28ff2:	10078993          	addi	s3,a5,256 # 200100 <__heap_size+0x1e2b08>
  a28ff6:	99a2                	add	s3,s3,s0
  a28ff8:	da02                	sw	zero,52(sp)
  a28ffa:	dc02                	sw	zero,56(sp)
  a28ffc:	de02                	sw	zero,60(sp)
  a28ffe:	c082                	sw	zero,64(sp)
  a29000:	5912                	lw	s2,36(sp)
  a29002:	0489a703          	lw	a4,72(s3)
  a29006:	00f404b3          	add	s1,s0,a5
  a2900a:	30078793          	addi	a5,a5,768
  a2900e:	943e                	add	s0,s0,a5
  a29010:	3c78 96e1 079f      	l.li	a5,0x3c7896e1
  a29016:	9926                	add	s2,s2,s1
  a29018:	18f71b63          	bne	a4,a5,a291ae <start_fastboot+0x336>
  a2901c:	00a3 1f78 051f      	l.li	a0,0xa31f78
  a29022:	32f030ef          	jal	ra,a2cb50 <boot_msg0>
  a29026:	00a2 8080 059f      	l.li	a1,0xa28080
  a2902c:	8626                	mv	a2,s1
  a2902e:	4519                	li	a0,6
  a29030:	21b5                	jal	ra,a2949c <verify_image_head>
  a29032:	85aa                	mv	a1,a0
  a29034:	20050763          	beqz	a0,a29242 <start_fastboot+0x3ca>
  a29038:	00a3 2088 051f      	l.li	a0,0xa32088
  a2903e:	325030ef          	jal	ra,a2cb62 <boot_msg1>
  a29042:	400007b7          	lui	a5,0x40000
  a29046:	4788                	lw	a0,8(a5)
  a29048:	893d                	andi	a0,a0,15
  a2904a:	478d                	li	a5,3
  a2904c:	20f57563          	bgeu	a0,a5,a29256 <start_fastboot+0x3de>
  a29050:	0505                	addi	a0,a0,1
  a29052:	33fd                	jal	ra,a28e40 <ws63_set_try_fix_cnt>
  a29054:	3b55                	jal	ra,a28e08 <reset>
  a29056:	4501                	li	a0,0
  a29058:	3d5030ef          	jal	ra,a2cc2c <set_reset_count>
  a2905c:	4501                	li	a0,0
  a2905e:	33cd                	jal	ra,a28e40 <ws63_set_try_fix_cnt>
  a29060:	4671                	li	a2,28
  a29062:	4581                	li	a1,0
  a29064:	1848                	addi	a0,sp,52
  a29066:	3a3d                	jal	ra,a289a4 <memset>
  a29068:	1848                	addi	a0,sp,52
  a2906a:	0f9040ef          	jal	ra,a2d962 <mfg_get_ftm_run_region>
  a2906e:	c90d                	beqz	a0,a290a0 <start_fastboot+0x228>
  a29070:	57e2                	lw	a5,56(sp)
  a29072:	4b7c f333 071f      	l.li	a4,0x4b7cf333
  a29078:	4394                	lw	a3,0(a5)
  a2907a:	02e69363          	bne	a3,a4,a290a0 <start_fastboot+0x228>
  a2907e:	4726                	lw	a4,72(sp)
  a29080:	e305                	bnez	a4,a290a0 <start_fastboot+0x228>
  a29082:	4706                	lw	a4,64(sp)
  a29084:	00c4d693          	srli	a3,s1,0xc
  a29088:	83b1                	srli	a5,a5,0xc
  a2908a:	94ba                	add	s1,s1,a4
  a2908c:	44008737          	lui	a4,0x44008
  a29090:	80d72023          	sw	a3,-2048(a4) # 44007800 <_gp_+0x435d2f78>
  a29094:	80b1                	srli	s1,s1,0xc
  a29096:	82972023          	sw	s1,-2016(a4)
  a2909a:	8f95                	sub	a5,a5,a3
  a2909c:	84f72023          	sw	a5,-1984(a4)
  a290a0:	400007b7          	lui	a5,0x40000
  a290a4:	53d8                	lw	a4,36(a5)
  a290a6:	0207a223          	sw	zero,36(a5) # 40000024 <_gp_+0x3f5cb79c>
  a290aa:	5a5a 5a5a 079f      	l.li	a5,0x5a5a5a5a
  a290b0:	04f71063          	bne	a4,a5,a290f0 <start_fastboot+0x278>
  a290b4:	79e010ef          	jal	ra,a2a852 <uapi_watchdog_kick>
  a290b8:	00a3 2150 051f      	l.li	a0,0xa32150
  a290be:	293030ef          	jal	ra,a2cb50 <boot_msg0>
  a290c2:	102c                	addi	a1,sp,40
  a290c4:	4509                	li	a0,2
  a290c6:	d402                	sw	zero,40(sp)
  a290c8:	d602                	sw	zero,44(sp)
  a290ca:	d802                	sw	zero,48(sp)
  a290cc:	da02                	sw	zero,52(sp)
  a290ce:	dc02                	sw	zero,56(sp)
  a290d0:	de02                	sw	zero,60(sp)
  a290d2:	359040ef          	jal	ra,a2dc2a <uapi_partition_get_info>
  a290d6:	84aa                	mv	s1,a0
  a290d8:	184c                	addi	a1,sp,52
  a290da:	4505                	li	a0,1
  a290dc:	34f040ef          	jal	ra,a2dc2a <uapi_partition_get_info>
  a290e0:	8d45                	or	a0,a0,s1
  a290e2:	1a050663          	beqz	a0,a2928e <start_fastboot+0x416>
  a290e6:	00a3 2170 051f      	l.li	a0,0xa32170
  a290ec:	265030ef          	jal	ra,a2cb50 <boot_msg0>
  a290f0:	762010ef          	jal	ra,a2a852 <uapi_watchdog_kick>
  a290f4:	8522                	mv	a0,s0
  a290f6:	3389                	jal	ra,a28e38 <jump_to_execute_addr>
  a290f8:	8a54                	popret	{ra,s0-s3},192
  a290fa:	00a3 1dec 051f      	l.li	a0,0xa31dec
  a29100:	251030ef          	jal	ra,a2cb50 <boot_msg0>
  a29104:	b599                	j	a28f4a <start_fastboot+0xd2>
  a29106:	03300593          	li	a1,51
  a2910a:	c311                	beqz	a4,a2910e <start_fastboot+0x296>
  a2910c:	45e1                	li	a1,24
  a2910e:	00a3 1e40 051f      	l.li	a0,0xa31e40
  a29114:	24f030ef          	jal	ra,a2cb62 <boot_msg1>
  a29118:	bdb5                	j	a28f94 <start_fastboot+0x11c>
  a2911a:	0828                	addi	a0,sp,24
  a2911c:	29a040ef          	jal	ra,a2d3b6 <upg_get_upgrade_flag_flash_start_addr>
  a29120:	4562                	lw	a0,24(sp)
  a29122:	06c00593          	li	a1,108
  a29126:	1850                	addi	a2,sp,52
  a29128:	328040ef          	jal	ra,a2d450 <upg_flash_read>
  a2912c:	85aa                	mv	a1,a0
  a2912e:	c509                	beqz	a0,a29138 <start_fastboot+0x2c0>
  a29130:	00a3 1eb0 051f      	l.li	a0,0xa31eb0
  a29136:	bd69                	j	a28fd0 <start_fastboot+0x158>
  a29138:	5752                	lw	a4,52(sp)
  a2913a:	55aa 55aa 079f      	l.li	a5,0x55aa55aa
  a29140:	00f71a63          	bne	a4,a5,a29154 <start_fastboot+0x2dc>
  a29144:	477a                	lw	a4,156(sp)
  a29146:	aa55 aa55 079f      	l.li	a5,0xaa55aa55
  a2914c:	00f71463          	bne	a4,a5,a29154 <start_fastboot+0x2dc>
  a29150:	47ea                	lw	a5,152(sp)
  a29152:	e799                	bnez	a5,a29160 <start_fastboot+0x2e8>
  a29154:	00a3 1ec8 051f      	l.li	a0,0xa31ec8
  a2915a:	1f7030ef          	jal	ra,a2cb50 <boot_msg0>
  a2915e:	bd9d                	j	a28fd4 <start_fastboot+0x15c>
  a29160:	00a3 1ee0 051f      	l.li	a0,0xa31ee0
  a29166:	1eb030ef          	jal	ra,a2cb50 <boot_msg0>
  a2916a:	227050ef          	jal	ra,a2eb90 <uapi_upg_start>
  a2916e:	800037b7          	lui	a5,0x80003
  a29172:	04778693          	addi	a3,a5,71 # 80003047 <_gp_+0x7f5ce7bf>
  a29176:	00a32737          	lui	a4,0xa32
  a2917a:	02d50263          	beq	a0,a3,a2919e <start_fastboot+0x326>
  a2917e:	04078793          	addi	a5,a5,64
  a29182:	00f50e63          	beq	a0,a5,a2919e <start_fastboot+0x326>
  a29186:	cd01                	beqz	a0,a2919e <start_fastboot+0x326>
  a29188:	ef070513          	addi	a0,a4,-272 # a31ef0 <sfc_cfg+0x160>
  a2918c:	1c5030ef          	jal	ra,a2cb50 <boot_msg0>
  a29190:	00a3 1f0c 051f      	l.li	a0,0xa31f0c
  a29196:	1bb030ef          	jal	ra,a2cb50 <boot_msg0>
  a2919a:	31bd                	jal	ra,a28e08 <reset>
  a2919c:	bd25                	j	a28fd4 <start_fastboot+0x15c>
  a2919e:	ef070513          	addi	a0,a4,-272
  a291a2:	1af030ef          	jal	ra,a2cb50 <boot_msg0>
  a291a6:	00a3 1f28 051f      	l.li	a0,0xa31f28
  a291ac:	b7ed                	j	a29196 <start_fastboot+0x31e>
  a291ae:	012467b3          	or	a5,s0,s2
  a291b2:	0ff7f793          	andi	a5,a5,255
  a291b6:	cb89                	beqz	a5,a291c8 <start_fastboot+0x350>
  a291b8:	864a                	mv	a2,s2
  a291ba:	85a6                	mv	a1,s1
  a291bc:	00a3 1f90 051f      	l.li	a0,0xa31f90
  a291c2:	1bd030ef          	jal	ra,a2cb7e <boot_msg2>
  a291c6:	3189                	jal	ra,a28e08 <reset>
  a291c8:	00a3 1fcc 051f      	l.li	a0,0xa31fcc
  a291ce:	183030ef          	jal	ra,a2cb50 <boot_msg0>
  a291d2:	04c98793          	addi	a5,s3,76
  a291d6:	dc3e                	sw	a5,56(sp)
  a291d8:	47f1                	li	a5,28
  a291da:	184c                	addi	a1,sp,52
  a291dc:	de3e                	sw	a5,60(sp)
  a291de:	4641                	li	a2,16
  a291e0:	4785                	li	a5,1
  a291e2:	850a                	mv	a0,sp
  a291e4:	04f10023          	sb	a5,64(sp)
  a291e8:	30ad                	jal	ra,a28a52 <memcpy>
  a291ea:	850a                	mv	a0,sp
  a291ec:	1a1000ef          	jal	ra,a29b8c <drv_rom_cipher_config_odrk1>
  a291f0:	85aa                	mv	a1,a0
  a291f2:	c519                	beqz	a0,a29200 <start_fastboot+0x388>
  a291f4:	00a3 1fe4 051f      	l.li	a0,0xa31fe4
  a291fa:	169030ef          	jal	ra,a2cb62 <boot_msg1>
  a291fe:	3129                	jal	ra,a28e08 <reset>
  a29200:	85a2                	mv	a1,s0
  a29202:	4741                	li	a4,16
  a29204:	06c98693          	addi	a3,s3,108
  a29208:	864a                	mv	a2,s2
  a2920a:	4501                	li	a0,0
  a2920c:	1e5000ef          	jal	ra,a29bf0 <drv_rom_cipher_fapc_config>
  a29210:	85aa                	mv	a1,a0
  a29212:	c519                	beqz	a0,a29220 <start_fastboot+0x3a8>
  a29214:	00a3 2018 051f      	l.li	a0,0xa32018
  a2921a:	149030ef          	jal	ra,a2cb62 <boot_msg1>
  a2921e:	36ed                	jal	ra,a28e08 <reset>
  a29220:	85ca                	mv	a1,s2
  a29222:	4685                	li	a3,1
  a29224:	00a00637          	lui	a2,0xa00
  a29228:	4505                	li	a0,1
  a2922a:	20d000ef          	jal	ra,a29c36 <drv_rom_cipher_fapc_bypass_config>
  a2922e:	85aa                	mv	a1,a0
  a29230:	de050be3          	beqz	a0,a29026 <start_fastboot+0x1ae>
  a29234:	00a3 204c 051f      	l.li	a0,0xa3204c
  a2923a:	129030ef          	jal	ra,a2cb62 <boot_msg1>
  a2923e:	36e9                	jal	ra,a28e08 <reset>
  a29240:	b3dd                	j	a29026 <start_fastboot+0x1ae>
  a29242:	85a2                	mv	a1,s0
  a29244:	8526                	mv	a0,s1
  a29246:	290d                	jal	ra,a29678 <verify_image_body>
  a29248:	85aa                	mv	a1,a0
  a2924a:	e00506e3          	beqz	a0,a29056 <start_fastboot+0x1de>
  a2924e:	00a3 20b8 051f      	l.li	a0,0xa320b8
  a29254:	b3ed                	j	a2903e <start_fastboot+0x1c6>
  a29256:	4799                	li	a5,6
  a29258:	def57ee3          	bgeu	a0,a5,a29054 <start_fastboot+0x1dc>
  a2925c:	0505                	addi	a0,a0,1
  a2925e:	36cd                	jal	ra,a28e40 <ws63_set_try_fix_cnt>
  a29260:	410050ef          	jal	ra,a2e670 <uapi_upg_reset_upgrade_flag>
  a29264:	85aa                	mv	a1,a0
  a29266:	c519                	beqz	a0,a29274 <start_fastboot+0x3fc>
  a29268:	00a3 20e0 051f      	l.li	a0,0xa320e0
  a2926e:	0f5030ef          	jal	ra,a2cb62 <boot_msg1>
  a29272:	b3cd                	j	a29054 <start_fastboot+0x1dc>
  a29274:	472050ef          	jal	ra,a2e6e6 <uapi_upg_request_upgrade>
  a29278:	c519                	beqz	a0,a29286 <start_fastboot+0x40e>
  a2927a:	00a3 2100 051f      	l.li	a0,0xa32100
  a29280:	0d1030ef          	jal	ra,a2cb50 <boot_msg0>
  a29284:	bbc1                	j	a29054 <start_fastboot+0x1dc>
  a29286:	00a3 212c 051f      	l.li	a0,0xa3212c
  a2928c:	bfd5                	j	a29280 <start_fastboot+0x408>
  a2928e:	55f2                	lw	a1,60(sp)
  a29290:	5562                	lw	a0,56(sp)
  a29292:	546030ef          	jal	ra,a2c7d8 <uapi_sfc_reg_erase>
  a29296:	85aa                	mv	a1,a0
  a29298:	c511                	beqz	a0,a292a4 <start_fastboot+0x42c>
  a2929a:	00a3 2194 051f      	l.li	a0,0xa32194
  a292a0:	0c3030ef          	jal	ra,a2cb62 <boot_msg1>
  a292a4:	57b2                	lw	a5,44(sp)
  a292a6:	5642                	lw	a2,48(sp)
  a292a8:	5562                	lw	a0,56(sp)
  a292aa:	002005b7          	lui	a1,0x200
  a292ae:	95be                	add	a1,a1,a5
  a292b0:	42a030ef          	jal	ra,a2c6da <uapi_sfc_reg_write>
  a292b4:	85aa                	mv	a1,a0
  a292b6:	c511                	beqz	a0,a292c2 <start_fastboot+0x44a>
  a292b8:	00a3 21c0 051f      	l.li	a0,0xa321c0
  a292be:	0a5030ef          	jal	ra,a2cb62 <boot_msg1>
  a292c2:	00a3 21ec 051f      	l.li	a0,0xa321ec
  a292c8:	b515                	j	a290ec <start_fastboot+0x274>

00a292ca <check_image_id>:
  a292ca:	00a326b7          	lui	a3,0xa32
  a292ce:	2b468713          	addi	a4,a3,692 # a322b4 <g_verify_table>
  a292d2:	4781                	li	a5,0
  a292d4:	2b468693          	addi	a3,a3,692
  a292d8:	4839                	li	a6,14
  a292da:	00074883          	lbu	a7,0(a4)
  a292de:	02a89463          	bne	a7,a0,a29306 <check_image_id+0x3c>
  a292e2:	00174883          	lbu	a7,1(a4)
  a292e6:	02b89063          	bne	a7,a1,a29306 <check_image_id+0x3c>
  a292ea:	0cf697db          	muliadd	a5,a3,a5,12
  a292ee:	43dc                	lw	a5,4(a5)
  a292f0:	4501                	li	a0,0
  a292f2:	02c78063          	beq	a5,a2,a29312 <check_image_id+0x48>
  a292f6:	8018                	push	{ra},-16
  a292f8:	00a3 2234 051f      	l.li	a0,0xa32234
  a292fe:	053030ef          	jal	ra,a2cb50 <boot_msg0>
  a29302:	557d                	li	a0,-1
  a29304:	8014                	popret	{ra},16
  a29306:	0785                	addi	a5,a5,1
  a29308:	0731                	addi	a4,a4,12
  a2930a:	fd0798e3          	bne	a5,a6,a292da <check_image_id+0x10>
  a2930e:	4781                	li	a5,0
  a29310:	b7c5                	j	a292f0 <check_image_id+0x26>
  a29312:	8082                	ret

00a29314 <check_verify_enable>:
  a29314:	8118                	push	{ra},-32
  a29316:	57fd                	li	a5,-1
  a29318:	4605                	li	a2,1
  a2931a:	00f10593          	addi	a1,sp,15
  a2931e:	451d                	li	a0,7
  a29320:	00f107a3          	sb	a5,15(sp)
  a29324:	620030ef          	jal	ra,a2c944 <efuse_read_item>
  a29328:	c901                	beqz	a0,a29338 <check_verify_enable+0x24>
  a2932a:	00a3 2278 051f      	l.li	a0,0xa32278
  a29330:	021030ef          	jal	ra,a2cb50 <boot_msg0>
  a29334:	557d                	li	a0,-1
  a29336:	8114                	popret	{ra},32
  a29338:	00f14783          	lbu	a5,15(sp)
  a2933c:	4501                	li	a0,0
  a2933e:	ffe5                	bnez	a5,a29336 <check_verify_enable+0x22>
  a29340:	80000537          	lui	a0,0x80000
  a29344:	0509                	addi	a0,a0,2 # 80000002 <_gp_+0x7f5cb77a>
  a29346:	bfc5                	j	a29336 <check_verify_enable+0x22>

00a29348 <check_msid>:
  a29348:	8138                	push	{ra,s0-s1},-32
  a2934a:	842a                	mv	s0,a0
  a2934c:	84ae                	mv	s1,a1
  a2934e:	4611                	li	a2,4
  a29350:	006c                	addi	a1,sp,12
  a29352:	4519                	li	a0,6
  a29354:	c602                	sw	zero,12(sp)
  a29356:	5ee030ef          	jal	ra,a2c944 <efuse_read_item>
  a2935a:	c901                	beqz	a0,a2936a <check_msid+0x22>
  a2935c:	00a3 2244 051f      	l.li	a0,0xa32244
  a29362:	7ee030ef          	jal	ra,a2cb50 <boot_msg0>
  a29366:	557d                	li	a0,-1
  a29368:	8134                	popret	{ra,s0-s1},32
  a2936a:	47b2                	lw	a5,12(sp)
  a2936c:	4501                	li	a0,0
  a2936e:	8c3d                	xor	s0,s0,a5
  a29370:	8c65                	and	s0,s0,s1
  a29372:	d87d                	beqz	s0,a29368 <check_msid+0x20>
  a29374:	00a3 2264 051f      	l.li	a0,0xa32264
  a2937a:	b7e5                	j	a29362 <check_msid+0x1a>

00a2937c <secure_authenticate.constprop.2>:
  a2937c:	8448                	push	{ra,s0-s2},-80
  a2937e:	02010913          	addi	s2,sp,32
  a29382:	84aa                	mv	s1,a0
  a29384:	8436                	mv	s0,a3
  a29386:	852e                	mv	a0,a1
  a29388:	02000693          	li	a3,32
  a2938c:	85b2                	mv	a1,a2
  a2938e:	864a                	mv	a2,s2
  a29390:	c402                	sw	zero,8(sp)
  a29392:	c602                	sw	zero,12(sp)
  a29394:	c802                	sw	zero,16(sp)
  a29396:	c002                	sw	zero,0(sp)
  a29398:	c202                	sw	zero,4(sp)
  a2939a:	ca02                	sw	zero,20(sp)
  a2939c:	cc02                	sw	zero,24(sp)
  a2939e:	ce02                	sw	zero,28(sp)
  a293a0:	61f000ef          	jal	ra,a2a1be <drv_rom_cipher_sha256>
  a293a4:	c909                	beqz	a0,a293b6 <secure_authenticate.constprop.2+0x3a>
  a293a6:	00a3 235c 051f      	l.li	a0,0xa3235c
  a293ac:	7a4030ef          	jal	ra,a2cb50 <boot_msg0>
  a293b0:	57fd                	li	a5,-1
  a293b2:	853e                	mv	a0,a5
  a293b4:	8444                	popret	{ra,s0-s2},80
  a293b6:	02000793          	li	a5,32
  a293ba:	c426                	sw	s1,8(sp)
  a293bc:	ca22                	sw	s0,20(sp)
  a293be:	02048493          	addi	s1,s1,32
  a293c2:	02040413          	addi	s0,s0,32
  a293c6:	0850                	addi	a2,sp,20
  a293c8:	858a                	mv	a1,sp
  a293ca:	0028                	addi	a0,sp,8
  a293cc:	c83e                	sw	a5,16(sp)
  a293ce:	c03e                	sw	a5,0(sp)
  a293d0:	ce3e                	sw	a5,28(sp)
  a293d2:	c626                	sw	s1,12(sp)
  a293d4:	c24a                	sw	s2,4(sp)
  a293d6:	cc22                	sw	s0,24(sp)
  a293d8:	5df000ef          	jal	ra,a2a1b6 <drv_rom_cipher_pke_bp256r_verify>
  a293dc:	4781                	li	a5,0
  a293de:	d971                	beqz	a0,a293b2 <secure_authenticate.constprop.2+0x36>
  a293e0:	00a3 238c 051f      	l.li	a0,0xa3238c
  a293e6:	b7d9                	j	a293ac <secure_authenticate.constprop.2+0x30>

00a293e8 <check_die_id.constprop.3>:
  a293e8:	8138                	push	{ra,s0-s1},-32
  a293ea:	84aa                	mv	s1,a0
  a293ec:	4641                	li	a2,16
  a293ee:	858a                	mv	a1,sp
  a293f0:	4505                	li	a0,1
  a293f2:	c002                	sw	zero,0(sp)
  a293f4:	c202                	sw	zero,4(sp)
  a293f6:	c402                	sw	zero,8(sp)
  a293f8:	c602                	sw	zero,12(sp)
  a293fa:	54a030ef          	jal	ra,a2c944 <efuse_read_item>
  a293fe:	c909                	beqz	a0,a29410 <check_die_id.constprop.3+0x28>
  a29400:	00a3 2200 051f      	l.li	a0,0xa32200
  a29406:	74a030ef          	jal	ra,a2cb50 <boot_msg0>
  a2940a:	547d                	li	s0,-1
  a2940c:	8522                	mv	a0,s0
  a2940e:	8134                	popret	{ra,s0-s1},32
  a29410:	842a                	mv	s0,a0
  a29412:	4641                	li	a2,16
  a29414:	85a6                	mv	a1,s1
  a29416:	850a                	mv	a0,sp
  a29418:	8d7ff0ef          	jal	ra,a28cee <memcmp>
  a2941c:	d965                	beqz	a0,a2940c <check_die_id.constprop.3+0x24>
  a2941e:	00a3 2220 051f      	l.li	a0,0xa32220
  a29424:	b7cd                	j	a29406 <check_die_id.constprop.3+0x1e>

00a29426 <check_version>:
  a29426:	8138                	push	{ra,s0-s1},-32
  a29428:	00a32737          	lui	a4,0xa32
  a2942c:	84b2                	mv	s1,a2
  a2942e:	2b470693          	addi	a3,a4,692 # a322b4 <g_verify_table>
  a29432:	842e                	mv	s0,a1
  a29434:	c602                	sw	zero,12(sp)
  a29436:	4781                	li	a5,0
  a29438:	2b470713          	addi	a4,a4,692
  a2943c:	4639                	li	a2,14
  a2943e:	228c                	lbu	a1,0(a3)
  a29440:	02a59463          	bne	a1,a0,a29468 <check_version+0x42>
  a29444:	0cf717db          	muliadd	a5,a4,a5,12
  a29448:	2788                	lbu	a0,8(a5)
  a2944a:	006c                	addi	a1,sp,12
  a2944c:	4611                	li	a2,4
  a2944e:	4f6030ef          	jal	ra,a2c944 <efuse_read_item>
  a29452:	87aa                	mv	a5,a0
  a29454:	009475b3          	and	a1,s0,s1
  a29458:	c115                	beqz	a0,a2947c <check_version+0x56>
  a2945a:	00a3 2244 051f      	l.li	a0,0xa32244
  a29460:	6f0030ef          	jal	ra,a2cb50 <boot_msg0>
  a29464:	557d                	li	a0,-1
  a29466:	8134                	popret	{ra,s0-s1},32
  a29468:	0785                	addi	a5,a5,1
  a2946a:	06b1                	addi	a3,a3,12
  a2946c:	fcc799e3          	bne	a5,a2,a2943e <check_version+0x18>
  a29470:	4501                	li	a0,0
  a29472:	bfe1                	j	a2944a <check_version+0x24>
  a29474:	fff58713          	addi	a4,a1,-1 # 1fffff <__heap_size+0x1e2a07>
  a29478:	8df9                	and	a1,a1,a4
  a2947a:	0785                	addi	a5,a5,1
  a2947c:	fde5                	bnez	a1,a29474 <check_version+0x4e>
  a2947e:	4632                	lw	a2,12(sp)
  a29480:	8e65                	and	a2,a2,s1
  a29482:	ea01                	bnez	a2,a29492 <check_version+0x6c>
  a29484:	4501                	li	a0,0
  a29486:	feb7f0e3          	bgeu	a5,a1,a29466 <check_version+0x40>
  a2948a:	00a3 229c 051f      	l.li	a0,0xa3229c
  a29490:	bfc1                	j	a29460 <check_version+0x3a>
  a29492:	fff60713          	addi	a4,a2,-1 # 9fffff <__heap_size+0x9e2a07>
  a29496:	8e79                	and	a2,a2,a4
  a29498:	0585                	addi	a1,a1,1
  a2949a:	b7e5                	j	a29482 <check_version+0x5c>

00a2949c <verify_image_head>:
  a2949c:	8048                	push	{ra,s0-s2},-16
  a2949e:	1c060963          	beqz	a2,a29670 <verify_image_head+0x1d4>
  a294a2:	f0000793          	li	a5,-256
  a294a6:	1cf60563          	beq	a2,a5,a29670 <verify_image_head+0x1d4>
  a294aa:	8432                	mv	s0,a2
  a294ac:	892e                	mv	s2,a1
  a294ae:	84aa                	mv	s1,a0
  a294b0:	3595                	jal	ra,a29314 <check_verify_enable>
  a294b2:	800007b7          	lui	a5,0x80000
  a294b6:	0789                	addi	a5,a5,2 # 80000002 <_gp_+0x7f5cb77a>
  a294b8:	02f51563          	bne	a0,a5,a294e2 <verify_image_head+0x46>
  a294bc:	00a3 2444 051f      	l.li	a0,0xa32444
  a294c2:	68e030ef          	jal	ra,a2cb50 <boot_msg0>
  a294c6:	35b9                	jal	ra,a29314 <check_verify_enable>
  a294c8:	800007b7          	lui	a5,0x80000
  a294cc:	0789                	addi	a5,a5,2 # 80000002 <_gp_+0x7f5cb77a>
  a294ce:	0ef51e63          	bne	a0,a5,a295ca <verify_image_head+0x12e>
  a294d2:	00a3 25b4 051f      	l.li	a0,0xa325b4
  a294d8:	678030ef          	jal	ra,a2cb50 <boot_msg0>
  a294dc:	4401                	li	s0,0
  a294de:	8522                	mv	a0,s0
  a294e0:	8044                	popret	{ra,s0-s2},16
  a294e2:	ff05183b          	bnei	a0,-1,a29502 <verify_image_head+0x66>
  a294e6:	00a3 2474 051f      	l.li	a0,0xa32474
  a294ec:	664030ef          	jal	ra,a2cb50 <boot_msg0>
  a294f0:	8000 15c0 041f      	l.li	s0,0x800015c0
  a294f6:	00a3 2598 051f      	l.li	a0,0xa32598
  a294fc:	654030ef          	jal	ra,a2cb50 <boot_msg0>
  a29500:	bff9                	j	a294de <verify_image_head+0x42>
  a29502:	c491                	beqz	s1,a2950e <verify_image_head+0x72>
  a29504:	ffe48793          	addi	a5,s1,-2
  a29508:	9f81                	uxtb	a5
  a2950a:	0207f8bb          	bgeui	a5,2,a2952c <verify_image_head+0x90>
  a2950e:	00a0 5514 079f      	l.li	a5,0xa05514
  a29514:	439c                	lw	a5,0(a5)
  a29516:	050785bb          	beqi	a5,5,a2952c <verify_image_head+0x90>
  a2951a:	00a3 24a0 051f      	l.li	a0,0xa324a0
  a29520:	630030ef          	jal	ra,a2cb50 <boot_msg0>
  a29524:	8000 15c1 041f      	l.li	s0,0x800015c1
  a2952a:	b7f1                	j	a294f6 <verify_image_head+0x5a>
  a2952c:	4010                	lw	a2,0(s0)
  a2952e:	4581                	li	a1,0
  a29530:	8526                	mv	a0,s1
  a29532:	3b61                	jal	ra,a292ca <check_image_id>
  a29534:	c911                	beqz	a0,a29548 <verify_image_head+0xac>
  a29536:	00a3 24d0 051f      	l.li	a0,0xa324d0
  a2953c:	614030ef          	jal	ra,a2cb50 <boot_msg0>
  a29540:	8000 15c2 041f      	l.li	s0,0x800015c2
  a29546:	bf45                	j	a294f6 <verify_image_head+0x5a>
  a29548:	0c040693          	addi	a3,s0,192
  a2954c:	0c000613          	li	a2,192
  a29550:	85a2                	mv	a1,s0
  a29552:	854a                	mv	a0,s2
  a29554:	3525                	jal	ra,a2937c <secure_authenticate.constprop.2>
  a29556:	c911                	beqz	a0,a2956a <verify_image_head+0xce>
  a29558:	00a3 24f8 051f      	l.li	a0,0xa324f8
  a2955e:	5f2030ef          	jal	ra,a2cb50 <boot_msg0>
  a29562:	8000 15c3 041f      	l.li	s0,0x800015c3
  a29568:	b779                	j	a294f6 <verify_image_head+0x5a>
  a2956a:	cc99                	beqz	s1,a29588 <verify_image_head+0xec>
  a2956c:	5410                	lw	a2,40(s0)
  a2956e:	504c                	lw	a1,36(s0)
  a29570:	8526                	mv	a0,s1
  a29572:	3d55                	jal	ra,a29426 <check_version>
  a29574:	c911                	beqz	a0,a29588 <verify_image_head+0xec>
  a29576:	00a3 2524 051f      	l.li	a0,0xa32524
  a2957c:	5d4030ef          	jal	ra,a2cb50 <boot_msg0>
  a29580:	8000 15c4 041f      	l.li	s0,0x800015c4
  a29586:	bf85                	j	a294f6 <verify_image_head+0x5a>
  a29588:	580c                	lw	a1,48(s0)
  a2958a:	5448                	lw	a0,44(s0)
  a2958c:	3b75                	jal	ra,a29348 <check_msid>
  a2958e:	c911                	beqz	a0,a295a2 <verify_image_head+0x106>
  a29590:	00a3 2550 051f      	l.li	a0,0xa32550
  a29596:	5ba030ef          	jal	ra,a2cb50 <boot_msg0>
  a2959a:	8000 15c5 041f      	l.li	s0,0x800015c5
  a295a0:	bf99                	j	a294f6 <verify_image_head+0x5a>
  a295a2:	5858                	lw	a4,52(s0)
  a295a4:	2a13 c812 079f      	l.li	a5,0x2a13c812
  a295aa:	f0f71ee3          	bne	a4,a5,a294c6 <verify_image_head+0x2a>
  a295ae:	03840513          	addi	a0,s0,56
  a295b2:	3d1d                	jal	ra,a293e8 <check_die_id.constprop.3>
  a295b4:	f00509e3          	beqz	a0,a294c6 <verify_image_head+0x2a>
  a295b8:	00a3 2574 051f      	l.li	a0,0xa32574
  a295be:	592030ef          	jal	ra,a2cb50 <boot_msg0>
  a295c2:	8000 15c6 041f      	l.li	s0,0x800015c6
  a295c8:	b73d                	j	a294f6 <verify_image_head+0x5a>
  a295ca:	ff05173b          	bnei	a0,-1,a295e6 <verify_image_head+0x14a>
  a295ce:	00a3 25e4 051f      	l.li	a0,0xa325e4
  a295d4:	57c030ef          	jal	ra,a2cb50 <boot_msg0>
  a295d8:	8000 15c0 041f      	l.li	s0,0x800015c0
  a295de:	00a3 26b4 051f      	l.li	a0,0xa326b4
  a295e4:	bf21                	j	a294fc <verify_image_head+0x60>
  a295e6:	10042603          	lw	a2,256(s0)
  a295ea:	4585                	li	a1,1
  a295ec:	8526                	mv	a0,s1
  a295ee:	10040913          	addi	s2,s0,256
  a295f2:	39e1                	jal	ra,a292ca <check_image_id>
  a295f4:	c911                	beqz	a0,a29608 <verify_image_head+0x16c>
  a295f6:	00a3 2610 051f      	l.li	a0,0xa32610
  a295fc:	554030ef          	jal	ra,a2cb50 <boot_msg0>
  a29600:	8000 15c2 041f      	l.li	s0,0x800015c2
  a29606:	bfe1                	j	a295de <verify_image_head+0x142>
  a29608:	28040693          	addi	a3,s0,640
  a2960c:	18000613          	li	a2,384
  a29610:	85ca                	mv	a1,s2
  a29612:	08040513          	addi	a0,s0,128
  a29616:	339d                	jal	ra,a2937c <secure_authenticate.constprop.2>
  a29618:	c911                	beqz	a0,a2962c <verify_image_head+0x190>
  a2961a:	00a3 2638 051f      	l.li	a0,0xa32638
  a29620:	530030ef          	jal	ra,a2cb50 <boot_msg0>
  a29624:	8000 15c3 041f      	l.li	s0,0x800015c3
  a2962a:	bf55                	j	a295de <verify_image_head+0x142>
  a2962c:	c08d                	beqz	s1,a2964e <verify_image_head+0x1b2>
  a2962e:	01492603          	lw	a2,20(s2)
  a29632:	01092583          	lw	a1,16(s2)
  a29636:	8526                	mv	a0,s1
  a29638:	33fd                	jal	ra,a29426 <check_version>
  a2963a:	c911                	beqz	a0,a2964e <verify_image_head+0x1b2>
  a2963c:	00a3 2664 051f      	l.li	a0,0xa32664
  a29642:	50e030ef          	jal	ra,a2cb50 <boot_msg0>
  a29646:	8000 15c4 041f      	l.li	s0,0x800015c4
  a2964c:	bf49                	j	a295de <verify_image_head+0x142>
  a2964e:	01c92583          	lw	a1,28(s2)
  a29652:	01892503          	lw	a0,24(s2)
  a29656:	39cd                	jal	ra,a29348 <check_msid>
  a29658:	842a                	mv	s0,a0
  a2965a:	e80502e3          	beqz	a0,a294de <verify_image_head+0x42>
  a2965e:	00a3 2690 051f      	l.li	a0,0xa32690
  a29664:	4ec030ef          	jal	ra,a2cb50 <boot_msg0>
  a29668:	8000 15c5 041f      	l.li	s0,0x800015c5
  a2966e:	bf85                	j	a295de <verify_image_head+0x142>
  a29670:	8000 15ca 041f      	l.li	s0,0x800015ca
  a29676:	b5a5                	j	a294de <verify_image_head+0x42>

00a29678 <verify_image_body>:
  a29678:	8248                	push	{ra,s0-s2},-48
  a2967a:	f0000793          	li	a5,-256
  a2967e:	06f50763          	beq	a0,a5,a296ec <verify_image_body+0x74>
  a29682:	c5ad                	beqz	a1,a296ec <verify_image_body+0x74>
  a29684:	84ae                	mv	s1,a1
  a29686:	842a                	mv	s0,a0
  a29688:	02000613          	li	a2,32
  a2968c:	4581                	li	a1,0
  a2968e:	10050913          	addi	s2,a0,256
  a29692:	850a                	mv	a0,sp
  a29694:	b10ff0ef          	jal	ra,a289a4 <memset>
  a29698:	12442583          	lw	a1,292(s0)
  a2969c:	02000693          	li	a3,32
  a296a0:	860a                	mv	a2,sp
  a296a2:	8526                	mv	a0,s1
  a296a4:	31b000ef          	jal	ra,a2a1be <drv_rom_cipher_sha256>
  a296a8:	c105                	beqz	a0,a296c8 <verify_image_body+0x50>
  a296aa:	00a3 23c8 051f      	l.li	a0,0xa323c8
  a296b0:	4a0030ef          	jal	ra,a2cb50 <boot_msg0>
  a296b4:	8000 15c7 041f      	l.li	s0,0x800015c7
  a296ba:	00a3 2424 051f      	l.li	a0,0xa32424
  a296c0:	490030ef          	jal	ra,a2cb50 <boot_msg0>
  a296c4:	8522                	mv	a0,s0
  a296c6:	8244                	popret	{ra,s0-s2},48
  a296c8:	12840593          	addi	a1,s0,296
  a296cc:	02000613          	li	a2,32
  a296d0:	850a                	mv	a0,sp
  a296d2:	e1cff0ef          	jal	ra,a28cee <memcmp>
  a296d6:	4401                	li	s0,0
  a296d8:	d575                	beqz	a0,a296c4 <verify_image_body+0x4c>
  a296da:	00a3 23f8 051f      	l.li	a0,0xa323f8
  a296e0:	470030ef          	jal	ra,a2cb50 <boot_msg0>
  a296e4:	8000 15c8 041f      	l.li	s0,0x800015c8
  a296ea:	bfc1                	j	a296ba <verify_image_body+0x42>
  a296ec:	8000 15ca 041f      	l.li	s0,0x800015ca
  a296f2:	bfc9                	j	a296c4 <verify_image_body+0x4c>

00a296f4 <non_os_enter_critical>:
  a296f4:	8038                	push	{ra,s0-s1},-16
  a296f6:	300024f3          	csrr	s1,mstatus
  a296fa:	300477f3          	csrrci	a5,mstatus,8
  a296fe:	00a05437          	lui	s0,0xa05
  a29702:	52440793          	addi	a5,s0,1316 # a05524 <g_non_os_critical_nesting>
  a29706:	239e                	lhu	a5,0(a5)
  a29708:	52440413          	addi	s0,s0,1316
  a2970c:	9fa1                	uxth	a5
  a2970e:	eb89                	bnez	a5,a29720 <non_os_enter_critical+0x2c>
  a29710:	00a0 551c 079f      	l.li	a5,0xa0551c
  a29716:	439c                	lw	a5,0(a5)
  a29718:	c781                	beqz	a5,a29720 <non_os_enter_critical+0x2c>
  a2971a:	8586                	mv	a1,ra
  a2971c:	4501                	li	a0,0
  a2971e:	9782                	jalr	a5
  a29720:	00a0 5518 079f      	l.li	a5,0xa05518
  a29726:	439c                	lw	a5,0(a5)
  a29728:	c789                	beqz	a5,a29732 <non_os_enter_critical+0x3e>
  a2972a:	8586                	mv	a1,ra
  a2972c:	2012                	lhu	a2,0(s0)
  a2972e:	4501                	li	a0,0
  a29730:	9782                	jalr	a5
  a29732:	201e                	lhu	a5,0(s0)
  a29734:	9fa1                	uxth	a5
  a29736:	eb89                	bnez	a5,a29748 <non_os_enter_critical+0x54>
  a29738:	808d                	srli	s1,s1,0x3
  a2973a:	0014c493          	xori	s1,s1,1
  a2973e:	8885                	andi	s1,s1,1
  a29740:	00a0 5520 079f      	l.li	a5,0xa05520
  a29746:	c384                	sw	s1,0(a5)
  a29748:	201e                	lhu	a5,0(s0)
  a2974a:	0785                	addi	a5,a5,1
  a2974c:	9fa1                	uxth	a5
  a2974e:	a01e                	sh	a5,0(s0)
  a29750:	201e                	lhu	a5,0(s0)
  a29752:	9fa1                	uxth	a5
  a29754:	eb81                	bnez	a5,a29764 <non_os_enter_critical+0x70>
  a29756:	06300593          	li	a1,99
  a2975a:	03100513          	li	a0,49
  a2975e:	8030                	pop	{ra,s0-s1},16
  a29760:	3340406f          	j	a2da94 <panic>
  a29764:	0ff0000f          	fence
  a29768:	0ff0000f          	fence
  a2976c:	8034                	popret	{ra,s0-s1},16

00a2976e <non_os_exit_critical>:
  a2976e:	8038                	push	{ra,s0-s1},-16
  a29770:	00a05437          	lui	s0,0xa05
  a29774:	52440793          	addi	a5,s0,1316 # a05524 <g_non_os_critical_nesting>
  a29778:	239e                	lhu	a5,0(a5)
  a2977a:	9fa1                	uxth	a5
  a2977c:	eb81                	bnez	a5,a2978c <non_os_exit_critical+0x1e>
  a2977e:	06f00593          	li	a1,111
  a29782:	03100513          	li	a0,49
  a29786:	8030                	pop	{ra,s0-s1},16
  a29788:	30c0406f          	j	a2da94 <panic>
  a2978c:	52440413          	addi	s0,s0,1316
  a29790:	201e                	lhu	a5,0(s0)
  a29792:	8486                	mv	s1,ra
  a29794:	17fd                	addi	a5,a5,-1
  a29796:	9fa1                	uxth	a5
  a29798:	a01e                	sh	a5,0(s0)
  a2979a:	00a0 5518 079f      	l.li	a5,0xa05518
  a297a0:	439c                	lw	a5,0(a5)
  a297a2:	c789                	beqz	a5,a297ac <non_os_exit_critical+0x3e>
  a297a4:	8586                	mv	a1,ra
  a297a6:	2012                	lhu	a2,0(s0)
  a297a8:	4505                	li	a0,1
  a297aa:	9782                	jalr	a5
  a297ac:	201e                	lhu	a5,0(s0)
  a297ae:	9fa1                	uxth	a5
  a297b0:	e785                	bnez	a5,a297d8 <non_os_exit_critical+0x6a>
  a297b2:	00a0 551c 079f      	l.li	a5,0xa0551c
  a297b8:	439c                	lw	a5,0(a5)
  a297ba:	c781                	beqz	a5,a297c2 <non_os_exit_critical+0x54>
  a297bc:	85a6                	mv	a1,s1
  a297be:	4505                	li	a0,1
  a297c0:	9782                	jalr	a5
  a297c2:	00a0 5520 079f      	l.li	a5,0xa05520
  a297c8:	439c                	lw	a5,0(a5)
  a297ca:	e399                	bnez	a5,a297d0 <non_os_exit_critical+0x62>
  a297cc:	300467f3          	csrrsi	a5,mstatus,8
  a297d0:	0ff0000f          	fence
  a297d4:	0ff0000f          	fence
  a297d8:	8034                	popret	{ra,s0-s1},16

00a297da <malloc_register_funcs>:
  a297da:	8018                	push	{ra},-16
  a297dc:	862a                	mv	a2,a0
  a297de:	46b1                	li	a3,12
  a297e0:	45b1                	li	a1,12
  a297e2:	00a0 5528 051f      	l.li	a0,0xa05528
  a297e8:	1fe070ef          	jal	ra,a309e6 <memcpy_s>
  a297ec:	4501                	li	a0,0
  a297ee:	8014                	popret	{ra},16

00a297f0 <rom_malloc_init>:
  a297f0:	8038                	push	{ra,s0-s1},-16
  a297f2:	842e                	mv	s0,a1
  a297f4:	46e1                	li	a3,24
  a297f6:	4601                	li	a2,0
  a297f8:	45e1                	li	a1,24
  a297fa:	84aa                	mv	s1,a0
  a297fc:	266070ef          	jal	ra,a30a62 <memset_s>
  a29800:	ff840793          	addi	a5,s0,-8
  a29804:	00a0 5534 071f      	l.li	a4,0xa05534
  a2980a:	01b48513          	addi	a0,s1,27
  a2980e:	9bf1                	andi	a5,a5,-4
  a29810:	9971                	andi	a0,a0,-4
  a29812:	cb1c                	sw	a5,16(a4)
  a29814:	17e1                	addi	a5,a5,-8
  a29816:	8f89                	sub	a5,a5,a0
  a29818:	c748                	sw	a0,12(a4)
  a2981a:	9fa1                	uxth	a5
  a2981c:	a15e                	sh	a5,4(a0)
  a2981e:	c71c                	sw	a5,8(a4)
  a29820:	679d                	lui	a5,0x7
  a29822:	07478793          	addi	a5,a5,116 # 7074 <ccause+0x60b2>
  a29826:	a17e                	sh	a5,6(a0)
  a29828:	00052023          	sw	zero,0(a0)
  a2982c:	8034                	popret	{ra,s0-s1},16

00a2982e <malloc_init>:
  a2982e:	b7c9                	j	a297f0 <rom_malloc_init>

00a29830 <rom_malloc>:
  a29830:	00a056b7          	lui	a3,0xa05
  a29834:	53468793          	addi	a5,a3,1332 # a05534 <g_st_dfx>
  a29838:	47dc                	lw	a5,12(a5)
  a2983a:	53468693          	addi	a3,a3,1332
  a2983e:	e399                	bnez	a5,a29844 <rom_malloc+0x14>
  a29840:	4501                	li	a0,0
  a29842:	8082                	ret
  a29844:	dd75                	beqz	a0,a29840 <rom_malloc+0x10>
  a29846:	23f2                	lhu	a2,6(a5)
  a29848:	671d                	lui	a4,0x7
  a2984a:	07470813          	addi	a6,a4,116 # 7074 <ccause+0x60b2>
  a2984e:	01060663          	beq	a2,a6,a2985a <rom_malloc+0x2a>
  a29852:	c6c70713          	addi	a4,a4,-916
  a29856:	fee615e3          	bne	a2,a4,a29840 <rom_malloc+0x10>
  a2985a:	050d                	addi	a0,a0,3
  a2985c:	9971                	andi	a0,a0,-4
  a2985e:	671d                	lui	a4,0x7
  a29860:	9d21                	uxth	a0
  a29862:	4881                	li	a7,0
  a29864:	07470613          	addi	a2,a4,116 # 7074 <ccause+0x60b2>
  a29868:	00850813          	addi	a6,a0,8
  a2986c:	c6c70313          	addi	t1,a4,-916
  a29870:	0067de03          	lhu	t3,6(a5)
  a29874:	23da                	lhu	a4,4(a5)
  a29876:	04ce1263          	bne	t3,a2,a298ba <rom_malloc+0x8a>
  a2987a:	02e87563          	bgeu	a6,a4,a298a4 <rom_malloc+0x74>
  a2987e:	8f09                	sub	a4,a4,a0
  a29880:	983e                	add	a6,a6,a5
  a29882:	1761                	addi	a4,a4,-8
  a29884:	00e81223          	sh	a4,4(a6)
  a29888:	00c81323          	sh	a2,6(a6)
  a2988c:	671d                	lui	a4,0x7
  a2988e:	c6c70713          	addi	a4,a4,-916 # 6c6c <ccause+0x5caa>
  a29892:	c38c                	sw	a1,0(a5)
  a29894:	a3fa                	sh	a4,6(a5)
  a29896:	4298                	lw	a4,0(a3)
  a29898:	a3ca                	sh	a0,4(a5)
  a2989a:	953a                	add	a0,a0,a4
  a2989c:	c288                	sw	a0,0(a3)
  a2989e:	00878513          	addi	a0,a5,8
  a298a2:	8082                	ret
  a298a4:	00a76b63          	bltu	a4,a0,a298ba <rom_malloc+0x8a>
  a298a8:	661d                	lui	a2,0x7
  a298aa:	c6c60613          	addi	a2,a2,-916 # 6c6c <ccause+0x5caa>
  a298ae:	c38c                	sw	a1,0(a5)
  a298b0:	a3f2                	sh	a2,6(a5)
  a298b2:	4290                	lw	a2,0(a3)
  a298b4:	9732                	add	a4,a4,a2
  a298b6:	c298                	sw	a4,0(a3)
  a298b8:	b7dd                	j	a2989e <rom_malloc+0x6e>
  a298ba:	0721                	addi	a4,a4,8
  a298bc:	97ba                	add	a5,a5,a4
  a298be:	4a98                	lw	a4,16(a3)
  a298c0:	00e7ef63          	bltu	a5,a4,a298de <rom_malloc+0xae>
  a298c4:	f6089ee3          	bnez	a7,a29840 <rom_malloc+0x10>
  a298c8:	46d8                	lw	a4,12(a3)
  a298ca:	235e                	lhu	a5,4(a4)
  a298cc:	0106ae03          	lw	t3,16(a3)
  a298d0:	07a1                	addi	a5,a5,8
  a298d2:	00f708b3          	add	a7,a4,a5
  a298d6:	01c8ea63          	bltu	a7,t3,a298ea <rom_malloc+0xba>
  a298da:	46dc                	lw	a5,12(a3)
  a298dc:	4885                	li	a7,1
  a298de:	23fa                	lhu	a4,6(a5)
  a298e0:	f86708e3          	beq	a4,t1,a29870 <rom_malloc+0x40>
  a298e4:	f8c706e3          	beq	a4,a2,a29870 <rom_malloc+0x40>
  a298e8:	bfa1                	j	a29840 <rom_malloc+0x10>
  a298ea:	00675e03          	lhu	t3,6(a4)
  a298ee:	00ce1b63          	bne	t3,a2,a29904 <rom_malloc+0xd4>
  a298f2:	0068de03          	lhu	t3,6(a7)
  a298f6:	00ce1763          	bne	t3,a2,a29904 <rom_malloc+0xd4>
  a298fa:	0048d883          	lhu	a7,4(a7)
  a298fe:	97c6                	add	a5,a5,a7
  a29900:	a35e                	sh	a5,4(a4)
  a29902:	88ba                	mv	a7,a4
  a29904:	8746                	mv	a4,a7
  a29906:	b7d1                	j	a298ca <rom_malloc+0x9a>

00a29908 <malloc>:
  a29908:	8018                	push	{ra},-16
  a2990a:	8586                	mv	a1,ra
  a2990c:	8010                	pop	{ra},16
  a2990e:	b70d                	j	a29830 <rom_malloc>

00a29910 <rom_free>:
  a29910:	c50d                	beqz	a0,a2993a <rom_free+0x2a>
  a29912:	ffe55703          	lhu	a4,-2(a0)
  a29916:	0000 6c6c 079f      	l.li	a5,0x6c6c
  a2991c:	00f71f63          	bne	a4,a5,a2993a <rom_free+0x2a>
  a29920:	679d                	lui	a5,0x7
  a29922:	07478793          	addi	a5,a5,116 # 7074 <ccause+0x60b2>
  a29926:	fef51f23          	sh	a5,-2(a0)
  a2992a:	00a0 5534 071f      	l.li	a4,0xa05534
  a29930:	ffc55683          	lhu	a3,-4(a0)
  a29934:	435c                	lw	a5,4(a4)
  a29936:	97b6                	add	a5,a5,a3
  a29938:	c35c                	sw	a5,4(a4)
  a2993a:	4501                	li	a0,0
  a2993c:	8082                	ret

00a2993e <free>:
  a2993e:	bfc9                	j	a29910 <rom_free>

00a29940 <osal_irq_lock>:
  a29940:	8018                	push	{ra},-16
  a29942:	3b4d                	jal	ra,a296f4 <non_os_enter_critical>
  a29944:	4501                	li	a0,0
  a29946:	8014                	popret	{ra},16

00a29948 <osal_irq_restore>:
  a29948:	b51d                	j	a2976e <non_os_exit_critical>

00a2994a <uapi_pmp_config>:
  a2994a:	8168                	push	{ra,s0-s4},-48
  a2994c:	842a                	mv	s0,a0
  a2994e:	84ae                	mv	s1,a1
  a29950:	059020ef          	jal	ra,a2c1a8 <pmp_port_register_hal_funcs>
  a29954:	22c010ef          	jal	ra,a2ab80 <hal_pmp_get_funcs>
  a29958:	89aa                	mv	s3,a0
  a2995a:	4901                	li	s2,0
  a2995c:	4a05                	li	s4,1
  a2995e:	00991663          	bne	s2,s1,a2996a <uapi_pmp_config+0x20>
  a29962:	0ff0000f          	fence
  a29966:	4501                	li	a0,0
  a29968:	8164                	popret	{ra,s0-s4},48
  a2996a:	4058                	lw	a4,4(s0)
  a2996c:	3454                	lbu	a3,13(s0)
  a2996e:	00042803          	lw	a6,0(s0)
  a29972:	00842883          	lw	a7,8(s0)
  a29976:	245c                	lbu	a5,12(s0)
  a29978:	246c                	lbu	a1,14(s0)
  a2997a:	3468                	lbu	a0,15(s0)
  a2997c:	00275613          	srli	a2,a4,0x2
  a29980:	01468763          	beq	a3,s4,a2998e <uapi_pmp_config+0x44>
  a29984:	177d                	addi	a4,a4,-1
  a29986:	4317071b          	addshf	a4,a4,a7,srl,1
  a2998a:	00275613          	srli	a2,a4,0x2
  a2998e:	0077f713          	andi	a4,a5,7
  a29992:	00d14783          	lbu	a5,13(sp)
  a29996:	8a8d                	andi	a3,a3,3
  a29998:	00a10623          	sb	a0,12(sp)
  a2999c:	0e07f793          	andi	a5,a5,224
  a299a0:	8fd9                	or	a5,a5,a4
  a299a2:	06d7a79b          	orshf	a5,a5,a3,sll,3
  a299a6:	07f7f793          	andi	a5,a5,127
  a299aa:	0eb7a79b          	orshf	a5,a5,a1,sll,7
  a299ae:	c242                	sw	a6,4(sp)
  a299b0:	c432                	sw	a2,8(sp)
  a299b2:	00f106a3          	sb	a5,13(sp)
  a299b6:	0009a783          	lw	a5,0(s3)
  a299ba:	0048                	addi	a0,sp,4
  a299bc:	0441                	addi	s0,s0,16
  a299be:	9782                	jalr	a5
  a299c0:	f545                	bnez	a0,a29968 <uapi_pmp_config+0x1e>
  a299c2:	0905                	addi	s2,s2,1
  a299c4:	bf69                	j	a2995e <uapi_pmp_config+0x14>

00a299c6 <drv_rom_hash>:
  a299c6:	8e78                	push	{ra,s0-s5},-256
  a299c8:	892a                	mv	s2,a0
  a299ca:	8aae                	mv	s5,a1
  a299cc:	84b2                	mv	s1,a2
  a299ce:	4581                	li	a1,0
  a299d0:	04000613          	li	a2,64
  a299d4:	1008                	addi	a0,sp,32
  a299d6:	c63a                	sw	a4,12(sp)
  a299d8:	8a36                	mv	s4,a3
  a299da:	843e                	mv	s0,a5
  a299dc:	fc9fe0ef          	jal	ra,a289a4 <memset>
  a299e0:	08000613          	li	a2,128
  a299e4:	4581                	li	a1,0
  a299e6:	1088                	addi	a0,sp,96
  a299e8:	fbdfe0ef          	jal	ra,a289a4 <memset>
  a299ec:	ce02                	sw	zero,28(sp)
  a299ee:	4732                	lw	a4,12(sp)
  a299f0:	000a9463          	bnez	s5,a299f8 <drv_rom_hash+0x32>
  a299f4:	557d                	li	a0,-1
  a299f6:	8e74                	popret	{ra,s0-s5},256
  a299f8:	fe0a0ee3          	beqz	s4,a299f4 <drv_rom_hash+0x2e>
  a299fc:	010007b7          	lui	a5,0x1000
  a29a00:	fef4fae3          	bgeu	s1,a5,a299f4 <drv_rom_hash+0x2e>
  a29a04:	20f71c3b          	bnei	a4,32,a299f4 <drv_rom_hash+0x2e>
  a29a08:	0216 9100 079f      	l.li	a5,0x2169100
  a29a0e:	0cf90963          	beq	s2,a5,a29ae0 <drv_rom_hash+0x11a>
  a29a12:	00a3 26d4 061f      	l.li	a2,0xa326d4
  a29a18:	85ca                	mv	a1,s2
  a29a1a:	8522                	mv	a0,s0
  a29a1c:	77a000ef          	jal	ra,a2a196 <hal_cipher_hash_config>
  a29a20:	f979                	bnez	a0,a299f6 <drv_rom_hash+0x30>
  a29a22:	03f4f913          	andi	s2,s1,63
  a29a26:	412489b3          	sub	s3,s1,s2
  a29a2a:	0a099f63          	bnez	s3,a29ae8 <drv_rom_hash+0x122>
  a29a2e:	08000693          	li	a3,128
  a29a32:	4601                	li	a2,0
  a29a34:	08000593          	li	a1,128
  a29a38:	1088                	addi	a0,sp,96
  a29a3a:	028070ef          	jal	ra,a30a62 <memset_s>
  a29a3e:	86ca                	mv	a3,s2
  a29a40:	013a8633          	add	a2,s5,s3
  a29a44:	08000593          	li	a1,128
  a29a48:	1088                	addi	a0,sp,96
  a29a4a:	79d060ef          	jal	ra,a309e6 <memcpy_s>
  a29a4e:	f15d                	bnez	a0,a299f4 <drv_rom_hash+0x2e>
  a29a50:	119c                	addi	a5,sp,224
  a29a52:	97ca                	add	a5,a5,s2
  a29a54:	f8000713          	li	a4,-128
  a29a58:	f8e78023          	sb	a4,-128(a5) # ffff80 <_gp_+0x5cb6f8>
  a29a5c:	04000993          	li	s3,64
  a29a60:	3809623b          	bltui	s2,56,a29a68 <drv_rom_hash+0xa2>
  a29a64:	08000993          	li	s3,128
  a29a68:	00349713          	slli	a4,s1,0x3
  a29a6c:	01b49613          	slli	a2,s1,0x1b
  a29a70:	0000 ff00 079f      	l.li	a5,0xff00
  a29a76:	50e7c79b          	andshf	a5,a5,a4,srl,8
  a29a7a:	70e6261b          	orshf	a2,a2,a4,srl,24
  a29a7e:	8e5d                	or	a2,a2,a5
  a29a80:	00ff07b7          	lui	a5,0xff0
  a29a84:	1697c49b          	andshf	s1,a5,s1,sll,11
  a29a88:	8e45                	or	a2,a2,s1
  a29a8a:	ffc98513          	addi	a0,s3,-4
  a29a8e:	109c                	addi	a5,sp,96
  a29a90:	ce32                	sw	a2,28(sp)
  a29a92:	4691                	li	a3,4
  a29a94:	0870                	addi	a2,sp,28
  a29a96:	4591                	li	a1,4
  a29a98:	953e                	add	a0,a0,a5
  a29a9a:	74d060ef          	jal	ra,a309e6 <memcpy_s>
  a29a9e:	f939                	bnez	a0,a299f4 <drv_rom_hash+0x2e>
  a29aa0:	4695                	li	a3,5
  a29aa2:	864e                	mv	a2,s3
  a29aa4:	108c                	addi	a1,sp,96
  a29aa6:	8522                	mv	a0,s0
  a29aa8:	6f6000ef          	jal	ra,a2a19e <hal_cipher_hash_add_in_node>
  a29aac:	f529                	bnez	a0,a299f6 <drv_rom_hash+0x30>
  a29aae:	4581                	li	a1,0
  a29ab0:	8522                	mv	a0,s0
  a29ab2:	6f4000ef          	jal	ra,a2a1a6 <hal_cipher_hash_start>
  a29ab6:	f121                	bnez	a0,a299f6 <drv_rom_hash+0x30>
  a29ab8:	04000613          	li	a2,64
  a29abc:	100c                	addi	a1,sp,32
  a29abe:	8522                	mv	a0,s0
  a29ac0:	6ee000ef          	jal	ra,a2a1ae <hal_cipher_hash_wait_done>
  a29ac4:	f90d                	bnez	a0,a299f6 <drv_rom_hash+0x30>
  a29ac6:	02000693          	li	a3,32
  a29aca:	1010                	addi	a2,sp,32
  a29acc:	02000593          	li	a1,32
  a29ad0:	8552                	mv	a0,s4
  a29ad2:	715060ef          	jal	ra,a309e6 <memcpy_s>
  a29ad6:	00a03533          	snez	a0,a0
  a29ada:	40a00533          	neg	a0,a0
  a29ade:	bf21                	j	a299f6 <drv_rom_hash+0x30>
  a29ae0:	00a3 26f4 061f      	l.li	a2,0xa326f4
  a29ae6:	bf0d                	j	a29a18 <drv_rom_hash+0x52>
  a29ae8:	4695                	li	a3,5
  a29aea:	864e                	mv	a2,s3
  a29aec:	85d6                	mv	a1,s5
  a29aee:	8522                	mv	a0,s0
  a29af0:	257d                	jal	ra,a2a19e <hal_cipher_hash_add_in_node>
  a29af2:	f00512e3          	bnez	a0,a299f6 <drv_rom_hash+0x30>
  a29af6:	4581                	li	a1,0
  a29af8:	8522                	mv	a0,s0
  a29afa:	2575                	jal	ra,a2a1a6 <hal_cipher_hash_start>
  a29afc:	ee051de3          	bnez	a0,a299f6 <drv_rom_hash+0x30>
  a29b00:	4601                	li	a2,0
  a29b02:	4581                	li	a1,0
  a29b04:	8522                	mv	a0,s0
  a29b06:	2565                	jal	ra,a2a1ae <hal_cipher_hash_wait_done>
  a29b08:	f20503e3          	beqz	a0,a29a2e <drv_rom_hash+0x68>
  a29b0c:	b5ed                	j	a299f6 <drv_rom_hash+0x30>

00a29b0e <drv_rom_cipher_create_keyslot>:
  a29b0e:	8248                	push	{ra,s0-s2},-48
  a29b10:	8432                	mv	s0,a2
  a29b12:	84aa                	mv	s1,a0
  a29b14:	4639                	li	a2,14
  a29b16:	892e                	mv	s2,a1
  a29b18:	01210513          	addi	a0,sp,18
  a29b1c:	4581                	li	a1,0
  a29b1e:	e87fe0ef          	jal	ra,a289a4 <memset>
  a29b22:	02000793          	li	a5,32
  a29b26:	00f10823          	sb	a5,16(sp)
  a29b2a:	4581                	li	a1,0
  a29b2c:	4785                	li	a5,1
  a29b2e:	0048                	addi	a0,sp,4
  a29b30:	c622                	sw	s0,12(sp)
  a29b32:	00f108a3          	sb	a5,17(sp)
  a29b36:	00f10923          	sb	a5,18(sp)
  a29b3a:	00f10b23          	sb	a5,22(sp)
  a29b3e:	00f10c23          	sb	a5,24(sp)
  a29b42:	24f9                	jal	ra,a29e10 <drv_keyslot_create>
  a29b44:	842a                	mv	s0,a0
  a29b46:	ed0d                	bnez	a0,a29b80 <drv_rom_cipher_create_keyslot+0x72>
  a29b48:	0028                	addi	a0,sp,8
  a29b4a:	2e91                	jal	ra,a29e9e <drv_klad_create>
  a29b4c:	842a                	mv	s0,a0
  a29b4e:	e91d                	bnez	a0,a29b84 <drv_rom_cipher_create_keyslot+0x76>
  a29b50:	4612                	lw	a2,4(sp)
  a29b52:	4522                	lw	a0,8(sp)
  a29b54:	4581                	li	a1,0
  a29b56:	2e4d                	jal	ra,a29f08 <drv_klad_attach>
  a29b58:	842a                	mv	s0,a0
  a29b5a:	e10d                	bnez	a0,a29b7c <drv_rom_cipher_create_keyslot+0x6e>
  a29b5c:	4522                	lw	a0,8(sp)
  a29b5e:	006c                	addi	a1,sp,12
  a29b60:	21a1                	jal	ra,a29fa8 <drv_klad_set_attr>
  a29b62:	842a                	mv	s0,a0
  a29b64:	e901                	bnez	a0,a29b74 <drv_rom_cipher_create_keyslot+0x66>
  a29b66:	4522                	lw	a0,8(sp)
  a29b68:	85ca                	mv	a1,s2
  a29b6a:	2155                	jal	ra,a2a00e <drv_klad_set_effective_key>
  a29b6c:	842a                	mv	s0,a0
  a29b6e:	e119                	bnez	a0,a29b74 <drv_rom_cipher_create_keyslot+0x66>
  a29b70:	4792                	lw	a5,4(sp)
  a29b72:	c09c                	sw	a5,0(s1)
  a29b74:	4612                	lw	a2,4(sp)
  a29b76:	4522                	lw	a0,8(sp)
  a29b78:	4581                	li	a1,0
  a29b7a:	2ec5                	jal	ra,a29f6a <drv_klad_detach>
  a29b7c:	4522                	lw	a0,8(sp)
  a29b7e:	2e99                	jal	ra,a29ed4 <drv_klad_destroy>
  a29b80:	8522                	mv	a0,s0
  a29b82:	8244                	popret	{ra,s0-s2},48
  a29b84:	4088                	lw	a0,0(s1)
  a29b86:	24c5                	jal	ra,a29e66 <drv_keyslot_destroy>
  a29b88:	bfe5                	j	a29b80 <drv_rom_cipher_create_keyslot+0x72>

00a29b8a <drv_rom_cipher_destroy_keyslot>:
  a29b8a:	acf1                	j	a29e66 <drv_keyslot_destroy>

00a29b8c <drv_rom_cipher_config_odrk1>:
  a29b8c:	8238                	push	{ra,s0-s1},-48
  a29b8e:	4639                	li	a2,14
  a29b90:	4581                	li	a1,0
  a29b92:	84aa                	mv	s1,a0
  a29b94:	01210513          	addi	a0,sp,18
  a29b98:	e0dfe0ef          	jal	ra,a289a4 <memset>
  a29b9c:	0300 000d 079f      	l.li	a5,0x300000d
  a29ba2:	c63e                	sw	a5,12(sp)
  a29ba4:	02000793          	li	a5,32
  a29ba8:	00f10823          	sb	a5,16(sp)
  a29bac:	0028                	addi	a0,sp,8
  a29bae:	4785                	li	a5,1
  a29bb0:	00f108a3          	sb	a5,17(sp)
  a29bb4:	00f10b23          	sb	a5,22(sp)
  a29bb8:	00f10c23          	sb	a5,24(sp)
  a29bbc:	24cd                	jal	ra,a29e9e <drv_klad_create>
  a29bbe:	842a                	mv	s0,a0
  a29bc0:	e515                	bnez	a0,a29bec <drv_rom_cipher_config_odrk1+0x60>
  a29bc2:	4522                	lw	a0,8(sp)
  a29bc4:	4601                	li	a2,0
  a29bc6:	4589                	li	a1,2
  a29bc8:	2681                	jal	ra,a29f08 <drv_klad_attach>
  a29bca:	842a                	mv	s0,a0
  a29bcc:	ed11                	bnez	a0,a29be8 <drv_rom_cipher_config_odrk1+0x5c>
  a29bce:	4522                	lw	a0,8(sp)
  a29bd0:	006c                	addi	a1,sp,12
  a29bd2:	2ed9                	jal	ra,a29fa8 <drv_klad_set_attr>
  a29bd4:	842a                	mv	s0,a0
  a29bd6:	e509                	bnez	a0,a29be0 <drv_rom_cipher_config_odrk1+0x54>
  a29bd8:	4522                	lw	a0,8(sp)
  a29bda:	85a6                	mv	a1,s1
  a29bdc:	290d                	jal	ra,a2a00e <drv_klad_set_effective_key>
  a29bde:	842a                	mv	s0,a0
  a29be0:	4522                	lw	a0,8(sp)
  a29be2:	4601                	li	a2,0
  a29be4:	4589                	li	a1,2
  a29be6:	2651                	jal	ra,a29f6a <drv_klad_detach>
  a29be8:	4522                	lw	a0,8(sp)
  a29bea:	24ed                	jal	ra,a29ed4 <drv_klad_destroy>
  a29bec:	8522                	mv	a0,s0
  a29bee:	8234                	popret	{ra,s0-s1},48

00a29bf0 <drv_rom_cipher_fapc_config>:
  a29bf0:	8348                	push	{ra,s0-s2},-64
  a29bf2:	842e                	mv	s0,a1
  a29bf4:	8932                	mv	s2,a2
  a29bf6:	84aa                	mv	s1,a0
  a29bf8:	4661                	li	a2,24
  a29bfa:	4581                	li	a1,0
  a29bfc:	0828                	addi	a0,sp,24
  a29bfe:	c636                	sw	a3,12(sp)
  a29c00:	c43a                	sw	a4,8(sp)
  a29c02:	da3fe0ef          	jal	ra,a289a4 <memset>
  a29c06:	4789                	li	a5,2
  a29c08:	46b2                	lw	a3,12(sp)
  a29c0a:	d43e                	sw	a5,40(sp)
  a29c0c:	10100793          	li	a5,257
  a29c10:	c822                	sw	s0,16(sp)
  a29c12:	ca4a                	sw	s2,20(sp)
  a29c14:	ce22                	sw	s0,28(sp)
  a29c16:	02f11623          	sh	a5,44(sp)
  a29c1a:	557d                	li	a0,-1
  a29c1c:	ce81                	beqz	a3,a29c34 <drv_rom_cipher_fapc_config+0x44>
  a29c1e:	4722                	lw	a4,8(sp)
  a29c20:	1007153b          	bnei	a4,16,a29c34 <drv_rom_cipher_fapc_config+0x44>
  a29c24:	4641                	li	a2,16
  a29c26:	85b6                	mv	a1,a3
  a29c28:	4501                	li	a0,0
  a29c2a:	2971                	jal	ra,a2a0c6 <drv_fapc_set_iv>
  a29c2c:	e501                	bnez	a0,a29c34 <drv_rom_cipher_fapc_config+0x44>
  a29c2e:	080c                	addi	a1,sp,16
  a29c30:	8526                	mv	a0,s1
  a29c32:	2155                	jal	ra,a2a0d6 <drv_fapc_set_config>
  a29c34:	8344                	popret	{ra,s0-s2},64

00a29c36 <drv_rom_cipher_fapc_bypass_config>:
  a29c36:	a325                	j	a2a15e <drv_fapc_set_bypass_config>

00a29c38 <inner_symc_crypto>:
  a29c38:	8168                	push	{ra,s0-s4},-48
  a29c3a:	03014803          	lbu	a6,48(sp)
  a29c3e:	104618bb          	bnei	a2,16,a29d60 <inner_symc_crypto+0x128>
  a29c42:	01620737          	lui	a4,0x1620
  a29c46:	00080463          	beqz	a6,a29c4e <inner_symc_crypto+0x16>
  a29c4a:	11620737          	lui	a4,0x11620
  a29c4e:	1ff57513          	andi	a0,a0,511
  a29c52:	e0077713          	andi	a4,a4,-512
  a29c56:	8f49                	or	a4,a4,a0
  a29c58:	441044b7          	lui	s1,0x44104
  a29c5c:	8946                	mv	s2,a7
  a29c5e:	8a3e                	mv	s4,a5
  a29c60:	842e                	mv	s0,a1
  a29c62:	10e4a823          	sw	a4,272(s1) # 44104110 <_gp_+0x436cf888>
  a29c66:	0ff0000f          	fence
  a29c6a:	1004a223          	sw	zero,260(s1)
  a29c6e:	0ff0000f          	fence
  a29c72:	00a0 55ac 099f      	l.li	s3,0xa055ac
  a29c78:	0009a703          	lw	a4,0(s3)
  a29c7c:	00a0 554c 051f      	l.li	a0,0xa0554c
  a29c82:	0716                	slli	a4,a4,0x5
  a29c84:	00e50633          	add	a2,a0,a4
  a29c88:	420c                	lw	a1,0(a2)
  a29c8a:	0741                	addi	a4,a4,16 # 11620010 <_gp_+0x10beb788>
  a29c8c:	01162223          	sw	a7,4(a2)
  a29c90:	0035e593          	ori	a1,a1,3
  a29c94:	dff5f593          	andi	a1,a1,-513
  a29c98:	c20c                	sw	a1,0(a2)
  a29c9a:	c614                	sw	a3,8(a2)
  a29c9c:	00062623          	sw	zero,12(a2)
  a29ca0:	46c1                	li	a3,16
  a29ca2:	8622                	mv	a2,s0
  a29ca4:	45c1                	li	a1,16
  a29ca6:	953a                	add	a0,a0,a4
  a29ca8:	53f060ef          	jal	ra,a309e6 <memcpy_s>
  a29cac:	0009a703          	lw	a4,0(s3)
  a29cb0:	00a0 558c 069f      	l.li	a3,0xa0558c
  a29cb6:	08e6869b          	addshf	a3,a3,a4,sll,4
  a29cba:	0705                	addi	a4,a4,1
  a29cbc:	8b05                	andi	a4,a4,1
  a29cbe:	00e9a023          	sw	a4,0(s3)
  a29cc2:	0126a223          	sw	s2,4(a3)
  a29cc6:	0146a423          	sw	s4,8(a3)
  a29cca:	0006a623          	sw	zero,12(a3)
  a29cce:	4410d6b7          	lui	a3,0x4410d
  a29cd2:	5a9c                	lw	a5,48(a3)
  a29cd4:	00178713          	addi	a4,a5,1 # ff0001 <_gp_+0x5bb779>
  a29cd8:	8b05                	andi	a4,a4,1
  a29cda:	f007f793          	andi	a5,a5,-256
  a29cde:	8fd9                	or	a5,a5,a4
  a29ce0:	da9c                	sw	a5,48(a3)
  a29ce2:	0ff0000f          	fence
  a29ce6:	1304a783          	lw	a5,304(s1)
  a29cea:	00178713          	addi	a4,a5,1
  a29cee:	8b05                	andi	a4,a4,1
  a29cf0:	f007f793          	andi	a5,a5,-256
  a29cf4:	8fd9                	or	a5,a5,a4
  a29cf6:	12f4a823          	sw	a5,304(s1)
  a29cfa:	0ff0000f          	fence
  a29cfe:	0000 2710 049f      	l.li	s1,0x2710
  a29d04:	4410c937          	lui	s2,0x4410c
  a29d08:	79c1                	lui	s3,0xffff0
  a29d0a:	00092783          	lw	a5,0(s2) # 4410c000 <_gp_+0x436d7778>
  a29d0e:	0027f713          	andi	a4,a5,2
  a29d12:	0137f7b3          	and	a5,a5,s3
  a29d16:	8fd9                	or	a5,a5,a4
  a29d18:	cf0d                	beqz	a4,a29d52 <inner_symc_crypto+0x11a>
  a29d1a:	00f92023          	sw	a5,0(s2)
  a29d1e:	0ff0000f          	fence
  a29d22:	441097b7          	lui	a5,0x44109
  a29d26:	0807a703          	lw	a4,128(a5) # 44109080 <_gp_+0x436d47f8>
  a29d2a:	46c1                	li	a3,16
  a29d2c:	860a                	mv	a2,sp
  a29d2e:	c03a                	sw	a4,0(sp)
  a29d30:	0847a703          	lw	a4,132(a5)
  a29d34:	45c1                	li	a1,16
  a29d36:	8522                	mv	a0,s0
  a29d38:	c23a                	sw	a4,4(sp)
  a29d3a:	0887a703          	lw	a4,136(a5)
  a29d3e:	c43a                	sw	a4,8(sp)
  a29d40:	08c7a783          	lw	a5,140(a5)
  a29d44:	c63e                	sw	a5,12(sp)
  a29d46:	4a1060ef          	jal	ra,a309e6 <memcpy_s>
  a29d4a:	cd01                	beqz	a0,a29d62 <inner_symc_crypto+0x12a>
  a29d4c:	04000513          	li	a0,64
  a29d50:	a809                	j	a29d62 <inner_symc_crypto+0x12a>
  a29d52:	4505                	li	a0,1
  a29d54:	14fd                	addi	s1,s1,-1
  a29d56:	236d                	jal	ra,a2a300 <uapi_tcxo_delay_us>
  a29d58:	f8cd                	bnez	s1,a29d0a <inner_symc_crypto+0xd2>
  a29d5a:	0b400513          	li	a0,180
  a29d5e:	a011                	j	a29d62 <inner_symc_crypto+0x12a>
  a29d60:	557d                	li	a0,-1
  a29d62:	8164                	popret	{ra,s0-s4},48

00a29d64 <drv_rom_cipher_symc_init>:
  a29d64:	441007b7          	lui	a5,0x44100
  a29d68:	4741                	li	a4,16
  a29d6a:	d398                	sw	a4,32(a5)
  a29d6c:	0ff0000f          	fence
  a29d70:	441047b7          	lui	a5,0x44104
  a29d74:	00a0 554c 071f      	l.li	a4,0xa0554c
  a29d7a:	12e7a223          	sw	a4,292(a5) # 44104124 <_gp_+0x436cf89c>
  a29d7e:	0ff0000f          	fence
  a29d82:	4689                	li	a3,2
  a29d84:	12d7a623          	sw	a3,300(a5)
  a29d88:	0ff0000f          	fence
  a29d8c:	4410d737          	lui	a4,0x4410d
  a29d90:	00a0 558c 061f      	l.li	a2,0xa0558c
  a29d96:	d350                	sw	a2,36(a4)
  a29d98:	0ff0000f          	fence
  a29d9c:	d714                	sw	a3,40(a4)
  a29d9e:	0ff0000f          	fence
  a29da2:	8000 aa00 071f      	l.li	a4,0x8000aa00
  a29da8:	10e7a023          	sw	a4,256(a5)
  a29dac:	0ff0000f          	fence
  a29db0:	4501                	li	a0,0
  a29db2:	8082                	ret

00a29db4 <drv_rom_cipher_symc_deinit>:
  a29db4:	441007b7          	lui	a5,0x44100
  a29db8:	0207a023          	sw	zero,32(a5) # 44100020 <_gp_+0x436cb798>
  a29dbc:	0ff0000f          	fence
  a29dc0:	4501                	li	a0,0
  a29dc2:	8082                	ret

00a29dc4 <drv_rom_cipher_symc_decrypt>:
  a29dc4:	8118                	push	{ra},-32
  a29dc6:	4305                	li	t1,1
  a29dc8:	c01a                	sw	t1,0(sp)
  a29dca:	35bd                	jal	ra,a29c38 <inner_symc_crypto>
  a29dcc:	8114                	popret	{ra},32

00a29dce <crypto_get_cpu_type>:
  a29dce:	00a0 55b0 079f      	l.li	a5,0xa055b0
  a29dd4:	01c7a303          	lw	t1,28(a5)
  a29dd8:	00030363          	beqz	t1,a29dde <crypto_get_cpu_type+0x10>
  a29ddc:	8302                	jr	t1
  a29dde:	4505                	li	a0,1
  a29de0:	8082                	ret

00a29de2 <crypto_sm_support>:
  a29de2:	4505                	li	a0,1
  a29de4:	8082                	ret

00a29de6 <crypto_get_value_by_index>:
  a29de6:	57fd                	li	a5,-1
  a29de8:	c105                	beqz	a0,a29e08 <crypto_get_value_by_index+0x22>
  a29dea:	ce99                	beqz	a3,a29e08 <crypto_get_value_by_index+0x22>
  a29dec:	4781                	li	a5,0
  a29dee:	00b79463          	bne	a5,a1,a29df6 <crypto_get_value_by_index+0x10>
  a29df2:	57fd                	li	a5,-1
  a29df4:	a811                	j	a29e08 <crypto_get_value_by_index+0x22>
  a29df6:	872a                	mv	a4,a0
  a29df8:	0521                	addi	a0,a0,8
  a29dfa:	ff852803          	lw	a6,-8(a0)
  a29dfe:	00c81763          	bne	a6,a2,a29e0c <crypto_get_value_by_index+0x26>
  a29e02:	435c                	lw	a5,4(a4)
  a29e04:	c29c                	sw	a5,0(a3)
  a29e06:	4781                	li	a5,0
  a29e08:	853e                	mv	a0,a5
  a29e0a:	8082                	ret
  a29e0c:	0785                	addi	a5,a5,1
  a29e0e:	b7c5                	j	a29dee <crypto_get_value_by_index+0x8>

00a29e10 <drv_keyslot_create>:
  a29e10:	8158                	push	{ra,s0-s3},-48
  a29e12:	57fd                	li	a5,-1
  a29e14:	c63e                	sw	a5,12(sp)
  a29e16:	e119                	bnez	a0,a29e1c <drv_keyslot_create+0xc>
  a29e18:	557d                	li	a0,-1
  a29e1a:	8154                	popret	{ra,s0-s3},48
  a29e1c:	0205933b          	bnei	a1,2,a29e28 <drv_keyslot_create+0x18>
  a29e20:	00052023          	sw	zero,0(a0)
  a29e24:	4501                	li	a0,0
  a29e26:	bfd5                	j	a29e1a <drv_keyslot_create+0xa>
  a29e28:	c195                	beqz	a1,a29e4c <drv_keyslot_create+0x3c>
  a29e2a:	01f59bbb          	bnei	a1,1,a29e18 <drv_keyslot_create+0x8>
  a29e2e:	4989                	li	s3,2
  a29e30:	842e                	mv	s0,a1
  a29e32:	892a                	mv	s2,a0
  a29e34:	4481                	li	s1,0
  a29e36:	85a2                	mv	a1,s0
  a29e38:	8526                	mv	a0,s1
  a29e3a:	120010ef          	jal	ra,a2af5a <hal_keyslot_lock>
  a29e3e:	c62a                	sw	a0,12(sp)
  a29e40:	47b2                	lw	a5,12(sp)
  a29e42:	c799                	beqz	a5,a29e50 <drv_keyslot_create+0x40>
  a29e44:	0485                	addi	s1,s1,1
  a29e46:	fe9998e3          	bne	s3,s1,a29e36 <drv_keyslot_create+0x26>
  a29e4a:	b7f9                	j	a29e18 <drv_keyslot_create+0x8>
  a29e4c:	49a1                	li	s3,8
  a29e4e:	b7cd                	j	a29e30 <drv_keyslot_create+0x20>
  a29e50:	fd34f4e3          	bgeu	s1,s3,a29e18 <drv_keyslot_create+0x8>
  a29e54:	550005b7          	lui	a1,0x55000
  a29e58:	2085a59b          	orshf	a1,a1,s0,sll,16
  a29e5c:	8ccd                	or	s1,s1,a1
  a29e5e:	00992023          	sw	s1,0(s2)
  a29e62:	4532                	lw	a0,12(sp)
  a29e64:	bf5d                	j	a29e1a <drv_keyslot_create+0xa>

00a29e66 <drv_keyslot_destroy>:
  a29e66:	c515                	beqz	a0,a29e92 <drv_keyslot_destroy+0x2c>
  a29e68:	01855793          	srli	a5,a0,0x18
  a29e6c:	550797bb          	bnei	a5,85,a29e8a <drv_keyslot_destroy+0x24>
  a29e70:	01055793          	srli	a5,a0,0x10
  a29e74:	0ff7f793          	andi	a5,a5,255
  a29e78:	4705                	li	a4,1
  a29e7a:	00f76863          	bltu	a4,a5,a29e8a <drv_keyslot_destroy+0x24>
  a29e7e:	01051693          	slli	a3,a0,0x10
  a29e82:	82c1                	srli	a3,a3,0x10
  a29e84:	e789                	bnez	a5,a29e8e <drv_keyslot_destroy+0x28>
  a29e86:	0806e33b          	bltui	a3,8,a29e92 <drv_keyslot_destroy+0x2c>
  a29e8a:	557d                	li	a0,-1
  a29e8c:	8082                	ret
  a29e8e:	fed76ee3          	bltu	a4,a3,a29e8a <drv_keyslot_destroy+0x24>
  a29e92:	01055593          	srli	a1,a0,0x10
  a29e96:	9d81                	uxtb	a1
  a29e98:	9d21                	uxth	a0
  a29e9a:	15c0106f          	j	a2aff6 <hal_keyslot_unlock>

00a29e9e <drv_klad_create>:
  a29e9e:	e119                	bnez	a0,a29ea4 <drv_klad_create+0x6>
  a29ea0:	557d                	li	a0,-1
  a29ea2:	8082                	ret
  a29ea4:	8038                	push	{ra,s0-s1},-16
  a29ea6:	842a                	mv	s0,a0
  a29ea8:	00a05537          	lui	a0,0xa05
  a29eac:	5d450493          	addi	s1,a0,1492 # a055d4 <g_klad_ctx>
  a29eb0:	02400693          	li	a3,36
  a29eb4:	4601                	li	a2,0
  a29eb6:	02400593          	li	a1,36
  a29eba:	5d450513          	addi	a0,a0,1492
  a29ebe:	3a5060ef          	jal	ra,a30a62 <memset_s>
  a29ec2:	4785                	li	a5,1
  a29ec4:	02f48023          	sb	a5,32(s1)
  a29ec8:	2d3c 4b5a 079f      	l.li	a5,0x2d3c4b5a
  a29ece:	c01c                	sw	a5,0(s0)
  a29ed0:	4501                	li	a0,0
  a29ed2:	8034                	popret	{ra,s0-s1},16

00a29ed4 <drv_klad_destroy>:
  a29ed4:	8028                	push	{ra,s0},-16
  a29ed6:	2d3c 4b5a 079f      	l.li	a5,0x2d3c4b5a
  a29edc:	547d                	li	s0,-1
  a29ede:	02f51363          	bne	a0,a5,a29f04 <drv_klad_destroy+0x30>
  a29ee2:	00a05537          	lui	a0,0xa05
  a29ee6:	5d450793          	addi	a5,a0,1492 # a055d4 <g_klad_ctx>
  a29eea:	0207c783          	lbu	a5,32(a5)
  a29eee:	4401                	li	s0,0
  a29ef0:	cb91                	beqz	a5,a29f04 <drv_klad_destroy+0x30>
  a29ef2:	02400693          	li	a3,36
  a29ef6:	4601                	li	a2,0
  a29ef8:	02400593          	li	a1,36
  a29efc:	5d450513          	addi	a0,a0,1492
  a29f00:	363060ef          	jal	ra,a30a62 <memset_s>
  a29f04:	8522                	mv	a0,s0
  a29f06:	8024                	popret	{ra,s0},16

00a29f08 <drv_klad_attach>:
  a29f08:	8148                	push	{ra,s0-s2},-32
  a29f0a:	57fd                	li	a5,-1
  a29f0c:	c63e                	sw	a5,12(sp)
  a29f0e:	2d3c 4b5a 079f      	l.li	a5,0x2d3c4b5a
  a29f14:	04f51963          	bne	a0,a5,a29f66 <drv_klad_attach+0x5e>
  a29f18:	00a05437          	lui	s0,0xa05
  a29f1c:	5d440793          	addi	a5,s0,1492 # a055d4 <g_klad_ctx>
  a29f20:	0207c783          	lbu	a5,32(a5)
  a29f24:	5d440413          	addi	s0,s0,1492
  a29f28:	557d                	li	a0,-1
  a29f2a:	c385                	beqz	a5,a29f4a <drv_klad_attach+0x42>
  a29f2c:	84ae                	mv	s1,a1
  a29f2e:	8932                	mv	s2,a2
  a29f30:	0ff67593          	andi	a1,a2,255
  a29f34:	0204863b          	beqi	s1,2,a29f4c <drv_klad_attach+0x44>
  a29f38:	85b2                	mv	a1,a2
  a29f3a:	8526                	mv	a0,s1
  a29f3c:	368010ef          	jal	ra,a2b2a4 <hal_klad_set_key_addr>
  a29f40:	c62a                	sw	a0,12(sp)
  a29f42:	47b2                	lw	a5,12(sp)
  a29f44:	458d                	li	a1,3
  a29f46:	c399                	beqz	a5,a29f4c <drv_klad_attach+0x44>
  a29f48:	4532                	lw	a0,12(sp)
  a29f4a:	8144                	popret	{ra,s0-s2},32
  a29f4c:	8526                	mv	a0,s1
  a29f4e:	2cc010ef          	jal	ra,a2b21a <hal_klad_set_key_dest_cfg>
  a29f52:	c62a                	sw	a0,12(sp)
  a29f54:	47b2                	lw	a5,12(sp)
  a29f56:	fbed                	bnez	a5,a29f48 <drv_klad_attach+0x40>
  a29f58:	4785                	li	a5,1
  a29f5a:	01242e23          	sw	s2,28(s0)
  a29f5e:	a044                	sb	s1,4(s0)
  a29f60:	02f400a3          	sb	a5,33(s0)
  a29f64:	b7d5                	j	a29f48 <drv_klad_attach+0x40>
  a29f66:	557d                	li	a0,-1
  a29f68:	b7cd                	j	a29f4a <drv_klad_attach+0x42>

00a29f6a <drv_klad_detach>:
  a29f6a:	2d3c 4b5a 079f      	l.li	a5,0x2d3c4b5a
  a29f70:	02f51a63          	bne	a0,a5,a29fa4 <drv_klad_detach+0x3a>
  a29f74:	00a0 55d4 079f      	l.li	a5,0xa055d4
  a29f7a:	0207c703          	lbu	a4,32(a5)
  a29f7e:	557d                	li	a0,-1
  a29f80:	c31d                	beqz	a4,a29fa6 <drv_klad_detach+0x3c>
  a29f82:	23d8                	lbu	a4,4(a5)
  a29f84:	02b71163          	bne	a4,a1,a29fa6 <drv_klad_detach+0x3c>
  a29f88:	4fd8                	lw	a4,28(a5)
  a29f8a:	00c71e63          	bne	a4,a2,a29fa6 <drv_klad_detach+0x3c>
  a29f8e:	0217c703          	lbu	a4,33(a5)
  a29f92:	4501                	li	a0,0
  a29f94:	cb09                	beqz	a4,a29fa6 <drv_klad_detach+0x3c>
  a29f96:	020780a3          	sb	zero,33(a5)
  a29f9a:	0007ae23          	sw	zero,28(a5)
  a29f9e:	00078223          	sb	zero,4(a5)
  a29fa2:	8082                	ret
  a29fa4:	557d                	li	a0,-1
  a29fa6:	8082                	ret

00a29fa8 <drv_klad_set_attr>:
  a29fa8:	8138                	push	{ra,s0-s1},-32
  a29faa:	57fd                	li	a5,-1
  a29fac:	c63e                	sw	a5,12(sp)
  a29fae:	e199                	bnez	a1,a29fb4 <drv_klad_set_attr+0xc>
  a29fb0:	557d                	li	a0,-1
  a29fb2:	8134                	popret	{ra,s0-s1},32
  a29fb4:	2d3c 4b5a 079f      	l.li	a5,0x2d3c4b5a
  a29fba:	fef51be3          	bne	a0,a5,a29fb0 <drv_klad_set_attr+0x8>
  a29fbe:	00a0 55d4 049f      	l.li	s1,0xa055d4
  a29fc4:	0204c783          	lbu	a5,32(s1)
  a29fc8:	d7e5                	beqz	a5,a29fb0 <drv_klad_set_attr+0x8>
  a29fca:	862e                	mv	a2,a1
  a29fcc:	842e                	mv	s0,a1
  a29fce:	46d1                	li	a3,20
  a29fd0:	45d1                	li	a1,20
  a29fd2:	00848513          	addi	a0,s1,8
  a29fd6:	211060ef          	jal	ra,a309e6 <memcpy_s>
  a29fda:	c62a                	sw	a0,12(sp)
  a29fdc:	47b2                	lw	a5,12(sp)
  a29fde:	fbe9                	bnez	a5,a29fb0 <drv_klad_set_attr+0x8>
  a29fe0:	2050                	lbu	a2,4(s0)
  a29fe2:	304c                	lbu	a1,5(s0)
  a29fe4:	2068                	lbu	a0,6(s0)
  a29fe6:	1ca010ef          	jal	ra,a2b1b0 <hal_klad_set_key_crypto_cfg>
  a29fea:	c62a                	sw	a0,12(sp)
  a29fec:	47b2                	lw	a5,12(sp)
  a29fee:	c399                	beqz	a5,a29ff4 <drv_klad_set_attr+0x4c>
  a29ff0:	4532                	lw	a0,12(sp)
  a29ff2:	b7c1                	j	a29fb2 <drv_klad_set_attr+0xa>
  a29ff4:	00740513          	addi	a0,s0,7
  a29ff8:	25a010ef          	jal	ra,a2b252 <hal_klad_set_key_secure_cfg>
  a29ffc:	c62a                	sw	a0,12(sp)
  a29ffe:	47b2                	lw	a5,12(sp)
  a2a000:	fbe5                	bnez	a5,a29ff0 <drv_klad_set_attr+0x48>
  a2a002:	401c                	lw	a5,0(s0)
  a2a004:	c09c                	sw	a5,0(s1)
  a2a006:	4785                	li	a5,1
  a2a008:	02f48123          	sb	a5,34(s1)
  a2a00c:	b7d5                	j	a29ff0 <drv_klad_set_attr+0x48>

00a2a00e <drv_klad_set_effective_key>:
  a2a00e:	8238                	push	{ra,s0-s1},-48
  a2a010:	57fd                	li	a5,-1
  a2a012:	c43e                	sw	a5,8(sp)
  a2a014:	c602                	sw	zero,12(sp)
  a2a016:	c802                	sw	zero,16(sp)
  a2a018:	ca02                	sw	zero,20(sp)
  a2a01a:	cc02                	sw	zero,24(sp)
  a2a01c:	ce02                	sw	zero,28(sp)
  a2a01e:	e199                	bnez	a1,a2a024 <drv_klad_set_effective_key+0x16>
  a2a020:	557d                	li	a0,-1
  a2a022:	a895                	j	a2a096 <drv_klad_set_effective_key+0x88>
  a2a024:	41dc                	lw	a5,4(a1)
  a2a026:	dfed                	beqz	a5,a2a020 <drv_klad_set_effective_key+0x12>
  a2a028:	219c                	lbu	a5,0(a1)
  a2a02a:	842e                	mv	s0,a1
  a2a02c:	84aa                	mv	s1,a0
  a2a02e:	01078e3b          	beqi	a5,1,a2a066 <drv_klad_set_effective_key+0x58>
  a2a032:	2d3c 4b5a 079f      	l.li	a5,0x2d3c4b5a
  a2a038:	fef494e3          	bne	s1,a5,a2a020 <drv_klad_set_effective_key+0x12>
  a2a03c:	00a054b7          	lui	s1,0xa05
  a2a040:	5d448793          	addi	a5,s1,1492 # a055d4 <g_klad_ctx>
  a2a044:	0207c703          	lbu	a4,32(a5)
  a2a048:	5d448493          	addi	s1,s1,1492
  a2a04c:	db71                	beqz	a4,a2a020 <drv_klad_set_effective_key+0x12>
  a2a04e:	0227c783          	lbu	a5,34(a5)
  a2a052:	d7f9                	beqz	a5,a2a020 <drv_klad_set_effective_key+0x12>
  a2a054:	203c                	lbu	a5,2(s0)
  a2a056:	010782bb          	beqi	a5,1,a2a060 <drv_klad_set_effective_key+0x52>
  a2a05a:	cb91                	beqz	a5,a2a06e <drv_klad_set_effective_key+0x60>
  a2a05c:	02f7913b          	bnei	a5,2,a2a020 <drv_klad_set_effective_key+0x12>
  a2a060:	00f108a3          	sb	a5,17(sp)
  a2a064:	a039                	j	a2a072 <drv_klad_set_effective_key+0x64>
  a2a066:	4505                	li	a0,1
  a2a068:	3bad                	jal	ra,a29de2 <crypto_sm_support>
  a2a06a:	f561                	bnez	a0,a2a032 <drv_klad_set_effective_key+0x24>
  a2a06c:	bf55                	j	a2a020 <drv_klad_set_effective_key+0x12>
  a2a06e:	000108a3          	sb	zero,17(sp)
  a2a072:	409c                	lw	a5,0(s1)
  a2a074:	c63e                	sw	a5,12(sp)
  a2a076:	201c                	lbu	a5,0(s0)
  a2a078:	00f10823          	sb	a5,16(sp)
  a2a07c:	405c                	lw	a5,4(s0)
  a2a07e:	ca3e                	sw	a5,20(sp)
  a2a080:	441c                	lw	a5,8(s0)
  a2a082:	cc3e                	sw	a5,24(sp)
  a2a084:	245c                	lbu	a5,12(s0)
  a2a086:	00f10e23          	sb	a5,28(sp)
  a2a08a:	090010ef          	jal	ra,a2b11a <hal_klad_lock>
  a2a08e:	c42a                	sw	a0,8(sp)
  a2a090:	47a2                	lw	a5,8(sp)
  a2a092:	c399                	beqz	a5,a2a098 <drv_klad_set_effective_key+0x8a>
  a2a094:	4522                	lw	a0,8(sp)
  a2a096:	8234                	popret	{ra,s0-s1},48
  a2a098:	4bb000ef          	jal	ra,a2ad52 <hal_rkp_lock>
  a2a09c:	c42a                	sw	a0,8(sp)
  a2a09e:	47a2                	lw	a5,8(sp)
  a2a0a0:	e385                	bnez	a5,a2a0c0 <drv_klad_set_effective_key+0xb2>
  a2a0a2:	0068                	addi	a0,sp,12
  a2a0a4:	541000ef          	jal	ra,a2ade4 <hal_rkp_kdf_hard_calculation>
  a2a0a8:	c42a                	sw	a0,8(sp)
  a2a0aa:	47a2                	lw	a5,8(sp)
  a2a0ac:	eb81                	bnez	a5,a2a0bc <drv_klad_set_effective_key+0xae>
  a2a0ae:	20d0                	lbu	a2,4(s1)
  a2a0b0:	4532                	lw	a0,12(sp)
  a2a0b2:	85a2                	mv	a1,s0
  a2a0b4:	222010ef          	jal	ra,a2b2d6 <hal_klad_start_com_route>
  a2a0b8:	c42a                	sw	a0,8(sp)
  a2a0ba:	47a2                	lw	a5,8(sp)
  a2a0bc:	4d9000ef          	jal	ra,a2ad94 <hal_rkp_unlock>
  a2a0c0:	0b4010ef          	jal	ra,a2b174 <hal_klad_unlock>
  a2a0c4:	bfc1                	j	a2a094 <drv_klad_set_effective_key+0x86>

00a2a0c6 <drv_fapc_set_iv>:
  a2a0c6:	8118                	push	{ra},-32
  a2a0c8:	57fd                	li	a5,-1
  a2a0ca:	c63e                	sw	a5,12(sp)
  a2a0cc:	35c010ef          	jal	ra,a2b428 <hal_fapc_set_region_iv>
  a2a0d0:	c62a                	sw	a0,12(sp)
  a2a0d2:	4532                	lw	a0,12(sp)
  a2a0d4:	8114                	popret	{ra},32

00a2a0d6 <drv_fapc_set_config>:
  a2a0d6:	8148                	push	{ra,s0-s2},-32
  a2a0d8:	57fd                	li	a5,-1
  a2a0da:	c63e                	sw	a5,12(sp)
  a2a0dc:	0015b793          	seqz	a5,a1
  a2a0e0:	40f007b3          	neg	a5,a5
  a2a0e4:	c63e                	sw	a5,12(sp)
  a2a0e6:	47b2                	lw	a5,12(sp)
  a2a0e8:	c399                	beqz	a5,a2a0ee <drv_fapc_set_config+0x18>
  a2a0ea:	4532                	lw	a0,12(sp)
  a2a0ec:	8144                	popret	{ra,s0-s2},32
  a2a0ee:	4d84                	lw	s1,24(a1)
  a2a0f0:	41d0                	lw	a2,4(a1)
  a2a0f2:	842e                	mv	s0,a1
  a2a0f4:	418c                	lw	a1,0(a1)
  a2a0f6:	892a                	mv	s2,a0
  a2a0f8:	2a4010ef          	jal	ra,a2b39c <hal_fapc_set_region_addr>
  a2a0fc:	c62a                	sw	a0,12(sp)
  a2a0fe:	47b2                	lw	a5,12(sp)
  a2a100:	f7ed                	bnez	a5,a2a0ea <drv_fapc_set_config+0x14>
  a2a102:	4850                	lw	a2,20(s0)
  a2a104:	480c                	lw	a1,16(s0)
  a2a106:	854a                	mv	a0,s2
  a2a108:	2b6010ef          	jal	ra,a2b3be <hal_fapc_set_region_permission>
  a2a10c:	c62a                	sw	a0,12(sp)
  a2a10e:	47b2                	lw	a5,12(sp)
  a2a110:	ffe9                	bnez	a5,a2a0ea <drv_fapc_set_config+0x14>
  a2a112:	030494bb          	bnei	s1,3,a2a124 <drv_fapc_set_config+0x4e>
  a2a116:	440c                	lw	a1,8(s0)
  a2a118:	854a                	mv	a0,s2
  a2a11a:	2a8010ef          	jal	ra,a2b3c2 <hal_fapc_set_region_mac_addr>
  a2a11e:	c62a                	sw	a0,12(sp)
  a2a120:	47b2                	lw	a5,12(sp)
  a2a122:	f7e1                	bnez	a5,a2a0ea <drv_fapc_set_config+0x14>
  a2a124:	85a6                	mv	a1,s1
  a2a126:	854a                	mv	a0,s2
  a2a128:	29e010ef          	jal	ra,a2b3c6 <hal_fapc_set_region_mode>
  a2a12c:	c62a                	sw	a0,12(sp)
  a2a12e:	47b2                	lw	a5,12(sp)
  a2a130:	ffcd                	bnez	a5,a2a0ea <drv_fapc_set_config+0x14>
  a2a132:	2c4c                	lbu	a1,28(s0)
  a2a134:	854a                	mv	a0,s2
  a2a136:	2ca010ef          	jal	ra,a2b400 <hal_fapc_region_enable>
  a2a13a:	c62a                	sw	a0,12(sp)
  a2a13c:	47b2                	lw	a5,12(sp)
  a2a13e:	f7d5                	bnez	a5,a2a0ea <drv_fapc_set_config+0x14>
  a2a140:	444c                	lw	a1,12(s0)
  a2a142:	854a                	mv	a0,s2
  a2a144:	32c010ef          	jal	ra,a2b470 <hal_fapc_set_region_iv_start_addr>
  a2a148:	c62a                	sw	a0,12(sp)
  a2a14a:	47b2                	lw	a5,12(sp)
  a2a14c:	ffd9                	bnez	a5,a2a0ea <drv_fapc_set_config+0x14>
  a2a14e:	3c5c                	lbu	a5,29(s0)
  a2a150:	dfc9                	beqz	a5,a2a0ea <drv_fapc_set_config+0x14>
  a2a152:	854a                	mv	a0,s2
  a2a154:	2b0010ef          	jal	ra,a2b404 <hal_fapc_region_lock>
  a2a158:	c62a                	sw	a0,12(sp)
  a2a15a:	47b2                	lw	a5,12(sp)
  a2a15c:	b779                	j	a2a0ea <drv_fapc_set_config+0x14>

00a2a15e <drv_fapc_set_bypass_config>:
  a2a15e:	8228                	push	{ra,s0},-48
  a2a160:	57fd                	li	a5,-1
  a2a162:	c636                	sw	a3,12(sp)
  a2a164:	ce3e                	sw	a5,28(sp)
  a2a166:	842a                	mv	s0,a0
  a2a168:	234010ef          	jal	ra,a2b39c <hal_fapc_set_region_addr>
  a2a16c:	ce2a                	sw	a0,28(sp)
  a2a16e:	47f2                	lw	a5,28(sp)
  a2a170:	46b2                	lw	a3,12(sp)
  a2a172:	c399                	beqz	a5,a2a178 <drv_fapc_set_bypass_config+0x1a>
  a2a174:	4572                	lw	a0,28(sp)
  a2a176:	8224                	popret	{ra,s0},48
  a2a178:	def5                	beqz	a3,a2a174 <drv_fapc_set_bypass_config+0x16>
  a2a17a:	8522                	mv	a0,s0
  a2a17c:	288010ef          	jal	ra,a2b404 <hal_fapc_region_lock>
  a2a180:	ce2a                	sw	a0,28(sp)
  a2a182:	47f2                	lw	a5,28(sp)
  a2a184:	bfc5                	j	a2a174 <drv_fapc_set_bypass_config+0x16>

00a2a186 <hal_hash_lock>:
  a2a186:	0010 2fd4 031f      	l.li	t1,0x102fd4
  a2a18c:	8302                	jr	t1

00a2a18e <hal_hash_unlock>:
  a2a18e:	0010 2d8a 031f      	l.li	t1,0x102d8a
  a2a194:	8302                	jr	t1

00a2a196 <hal_cipher_hash_config>:
  a2a196:	0010 2daa 031f      	l.li	t1,0x102daa
  a2a19c:	8302                	jr	t1

00a2a19e <hal_cipher_hash_add_in_node>:
  a2a19e:	0010 2eb4 031f      	l.li	t1,0x102eb4
  a2a1a4:	8302                	jr	t1

00a2a1a6 <hal_cipher_hash_start>:
  a2a1a6:	0010 2f28 031f      	l.li	t1,0x102f28
  a2a1ac:	8302                	jr	t1

00a2a1ae <hal_cipher_hash_wait_done>:
  a2a1ae:	0010 30fc 031f      	l.li	t1,0x1030fc
  a2a1b4:	8302                	jr	t1

00a2a1b6 <drv_rom_cipher_pke_bp256r_verify>:
  a2a1b6:	0010 262a 031f      	l.li	t1,0x10262a
  a2a1bc:	8302                	jr	t1

00a2a1be <drv_rom_cipher_sha256>:
  a2a1be:	8128                	push	{ra,s0},-32
  a2a1c0:	842a                	mv	s0,a0
  a2a1c2:	4505                	li	a0,1
  a2a1c4:	c62e                	sw	a1,12(sp)
  a2a1c6:	c432                	sw	a2,8(sp)
  a2a1c8:	c236                	sw	a3,4(sp)
  a2a1ca:	3f75                	jal	ra,a2a186 <hal_hash_lock>
  a2a1cc:	4622                	lw	a2,8(sp)
  a2a1ce:	45b2                	lw	a1,12(sp)
  a2a1d0:	4712                	lw	a4,4(sp)
  a2a1d2:	86b2                	mv	a3,a2
  a2a1d4:	4785                	li	a5,1
  a2a1d6:	862e                	mv	a2,a1
  a2a1d8:	0116 9100 051f      	l.li	a0,0x1169100
  a2a1de:	85a2                	mv	a1,s0
  a2a1e0:	fe6ff0ef          	jal	ra,a299c6 <drv_rom_hash>
  a2a1e4:	842a                	mv	s0,a0
  a2a1e6:	4505                	li	a0,1
  a2a1e8:	375d                	jal	ra,a2a18e <hal_hash_unlock>
  a2a1ea:	8522                	mv	a0,s0
  a2a1ec:	8124                	popret	{ra,s0},32

00a2a1ee <uapi_systick_get_count>:
  a2a1ee:	8048                	push	{ra,s0-s2},-16
  a2a1f0:	f50ff0ef          	jal	ra,a29940 <osal_irq_lock>
  a2a1f4:	00a0 55f8 079f      	l.li	a5,0xa055f8
  a2a1fa:	239c                	lbu	a5,0(a5)
  a2a1fc:	eb81                	bnez	a5,a2a20c <uapi_systick_get_count+0x1e>
  a2a1fe:	f4aff0ef          	jal	ra,a29948 <osal_irq_restore>
  a2a202:	4401                	li	s0,0
  a2a204:	4481                	li	s1,0
  a2a206:	8522                	mv	a0,s0
  a2a208:	85a6                	mv	a1,s1
  a2a20a:	8044                	popret	{ra,s0-s2},16
  a2a20c:	892a                	mv	s2,a0
  a2a20e:	733010ef          	jal	ra,a2c140 <hal_systick_get_count>
  a2a212:	842a                	mv	s0,a0
  a2a214:	854a                	mv	a0,s2
  a2a216:	84ae                	mv	s1,a1
  a2a218:	f30ff0ef          	jal	ra,a29948 <osal_irq_restore>
  a2a21c:	b7ed                	j	a2a206 <uapi_systick_get_count+0x18>

00a2a21e <uapi_systick_get_us>:
  a2a21e:	8128                	push	{ra,s0},-32
  a2a220:	37f9                	jal	ra,a2a1ee <uapi_systick_get_count>
  a2a222:	842a                	mv	s0,a0
  a2a224:	c62e                	sw	a1,12(sp)
  a2a226:	72b010ef          	jal	ra,a2c150 <systick_clock_get>
  a2a22a:	45b2                	lw	a1,12(sp)
  a2a22c:	000f 4240 079f      	l.li	a5,0xf4240
  a2a232:	02f43733          	mulhu	a4,s0,a5
  a2a236:	862a                	mv	a2,a0
  a2a238:	4681                	li	a3,0
  a2a23a:	02f585b3          	mul	a1,a1,a5
  a2a23e:	02f40533          	mul	a0,s0,a5
  a2a242:	95ba                	add	a1,a1,a4
  a2a244:	b58fe0ef          	jal	ra,a2859c <__udivdi3>
  a2a248:	8124                	popret	{ra,s0},32

00a2a24a <uapi_tcxo_init>:
  a2a24a:	8048                	push	{ra,s0-s2},-16
  a2a24c:	ef4ff0ef          	jal	ra,a29940 <osal_irq_lock>
  a2a250:	00a0 55f9 091f      	l.li	s2,0xa055f9
  a2a256:	00094783          	lbu	a5,0(s2)
  a2a25a:	c791                	beqz	a5,a2a266 <uapi_tcxo_init+0x1c>
  a2a25c:	eecff0ef          	jal	ra,a29948 <osal_irq_restore>
  a2a260:	4401                	li	s0,0
  a2a262:	8522                	mv	a0,s0
  a2a264:	8044                	popret	{ra,s0-s2},16
  a2a266:	84aa                	mv	s1,a0
  a2a268:	224010ef          	jal	ra,a2b48c <hal_tcxo_init>
  a2a26c:	842a                	mv	s0,a0
  a2a26e:	c509                	beqz	a0,a2a278 <uapi_tcxo_init+0x2e>
  a2a270:	8526                	mv	a0,s1
  a2a272:	ed6ff0ef          	jal	ra,a29948 <osal_irq_restore>
  a2a276:	b7f5                	j	a2a262 <uapi_tcxo_init+0x18>
  a2a278:	4785                	li	a5,1
  a2a27a:	00f90023          	sb	a5,0(s2)
  a2a27e:	bfcd                	j	a2a270 <uapi_tcxo_init+0x26>

00a2a280 <uapi_tcxo_get_count>:
  a2a280:	8048                	push	{ra,s0-s2},-16
  a2a282:	ebeff0ef          	jal	ra,a29940 <osal_irq_lock>
  a2a286:	00a0 55f9 079f      	l.li	a5,0xa055f9
  a2a28c:	239c                	lbu	a5,0(a5)
  a2a28e:	eb81                	bnez	a5,a2a29e <uapi_tcxo_get_count+0x1e>
  a2a290:	eb8ff0ef          	jal	ra,a29948 <osal_irq_restore>
  a2a294:	4401                	li	s0,0
  a2a296:	4481                	li	s1,0
  a2a298:	8522                	mv	a0,s0
  a2a29a:	85a6                	mv	a1,s1
  a2a29c:	8044                	popret	{ra,s0-s2},16
  a2a29e:	892a                	mv	s2,a0
  a2a2a0:	218010ef          	jal	ra,a2b4b8 <hal_tcxo_get>
  a2a2a4:	842a                	mv	s0,a0
  a2a2a6:	854a                	mv	a0,s2
  a2a2a8:	84ae                	mv	s1,a1
  a2a2aa:	e9eff0ef          	jal	ra,a29948 <osal_irq_restore>
  a2a2ae:	b7ed                	j	a2a298 <uapi_tcxo_get_count+0x18>

00a2a2b0 <uapi_tcxo_delay_ms>:
  a2a2b0:	00a0 55f9 079f      	l.li	a5,0xa055f9
  a2a2b6:	239c                	lbu	a5,0(a5)
  a2a2b8:	c3b1                	beqz	a5,a2a2fc <uapi_tcxo_delay_ms+0x4c>
  a2a2ba:	8048                	push	{ra,s0-s2},-16
  a2a2bc:	842a                	mv	s0,a0
  a2a2be:	6a5010ef          	jal	ra,a2c162 <tcxo_porting_ticks_per_usec_get>
  a2a2c2:	3e800793          	li	a5,1000
  a2a2c6:	02f405b3          	mul	a1,s0,a5
  a2a2ca:	02f43433          	mulhu	s0,s0,a5
  a2a2ce:	02a584b3          	mul	s1,a1,a0
  a2a2d2:	02a40433          	mul	s0,s0,a0
  a2a2d6:	02a5b5b3          	mulhu	a1,a1,a0
  a2a2da:	942e                	add	s0,s0,a1
  a2a2dc:	3755                	jal	ra,a2a280 <uapi_tcxo_get_count>
  a2a2de:	00a48933          	add	s2,s1,a0
  a2a2e2:	009934b3          	sltu	s1,s2,s1
  a2a2e6:	95a2                	add	a1,a1,s0
  a2a2e8:	94ae                	add	s1,s1,a1
  a2a2ea:	3f59                	jal	ra,a2a280 <uapi_tcxo_get_count>
  a2a2ec:	fe95efe3          	bltu	a1,s1,a2a2ea <uapi_tcxo_delay_ms+0x3a>
  a2a2f0:	00b49463          	bne	s1,a1,a2a2f8 <uapi_tcxo_delay_ms+0x48>
  a2a2f4:	ff256be3          	bltu	a0,s2,a2a2ea <uapi_tcxo_delay_ms+0x3a>
  a2a2f8:	4501                	li	a0,0
  a2a2fa:	8044                	popret	{ra,s0-s2},16
  a2a2fc:	557d                	li	a0,-1
  a2a2fe:	8082                	ret

00a2a300 <uapi_tcxo_delay_us>:
  a2a300:	00a0 55f9 079f      	l.li	a5,0xa055f9
  a2a306:	239c                	lbu	a5,0(a5)
  a2a308:	cb8d                	beqz	a5,a2a33a <uapi_tcxo_delay_us+0x3a>
  a2a30a:	8048                	push	{ra,s0-s2},-16
  a2a30c:	842a                	mv	s0,a0
  a2a30e:	655010ef          	jal	ra,a2c162 <tcxo_porting_ticks_per_usec_get>
  a2a312:	02a404b3          	mul	s1,s0,a0
  a2a316:	02a43433          	mulhu	s0,s0,a0
  a2a31a:	379d                	jal	ra,a2a280 <uapi_tcxo_get_count>
  a2a31c:	00a48933          	add	s2,s1,a0
  a2a320:	009934b3          	sltu	s1,s2,s1
  a2a324:	942e                	add	s0,s0,a1
  a2a326:	9426                	add	s0,s0,s1
  a2a328:	3fa1                	jal	ra,a2a280 <uapi_tcxo_get_count>
  a2a32a:	fe85efe3          	bltu	a1,s0,a2a328 <uapi_tcxo_delay_us+0x28>
  a2a32e:	00b41463          	bne	s0,a1,a2a336 <uapi_tcxo_delay_us+0x36>
  a2a332:	ff256be3          	bltu	a0,s2,a2a328 <uapi_tcxo_delay_us+0x28>
  a2a336:	4501                	li	a0,0
  a2a338:	8044                	popret	{ra,s0-s2},16
  a2a33a:	557d                	li	a0,-1
  a2a33c:	8082                	ret

00a2a33e <uart_helper_invoke_current_fragment_callback>:
  a2a33e:	00a0 5648 079f      	l.li	a5,0xa05648
  a2a344:	4ca7955b          	muliadd	a0,a5,a0,76
  a2a348:	411c                	lw	a5,0(a0)
  a2a34a:	0087a303          	lw	t1,8(a5)
  a2a34e:	00030663          	beqz	t1,a2a35a <uart_helper_invoke_current_fragment_callback+0x1c>
  a2a352:	43d0                	lw	a2,4(a5)
  a2a354:	47cc                	lw	a1,12(a5)
  a2a356:	4388                	lw	a0,0(a5)
  a2a358:	8302                	jr	t1
  a2a35a:	8082                	ret

00a2a35c <uart_helper_move_to_next_fragment>:
  a2a35c:	04c00793          	li	a5,76
  a2a360:	02f507b3          	mul	a5,a0,a5
  a2a364:	00a056b7          	lui	a3,0xa05
  a2a368:	64868713          	addi	a4,a3,1608 # a05648 <g_uart_tx_state_array>
  a2a36c:	64868693          	addi	a3,a3,1608
  a2a370:	00f705b3          	add	a1,a4,a5
  a2a374:	4190                	lw	a2,0(a1)
  a2a376:	07b1                	addi	a5,a5,12
  a2a378:	97ba                	add	a5,a5,a4
  a2a37a:	0641                	addi	a2,a2,16
  a2a37c:	04078713          	addi	a4,a5,64
  a2a380:	00e67b63          	bgeu	a2,a4,a2a396 <uart_helper_move_to_next_fragment+0x3a>
  a2a384:	c190                	sw	a2,0(a1)
  a2a386:	4ca6955b          	muliadd	a0,a3,a0,76
  a2a38a:	251e                	lhu	a5,8(a0)
  a2a38c:	00051523          	sh	zero,10(a0)
  a2a390:	17fd                	addi	a5,a5,-1
  a2a392:	a51e                	sh	a5,8(a0)
  a2a394:	8082                	ret
  a2a396:	c19c                	sw	a5,0(a1)
  a2a398:	b7fd                	j	a2a386 <uart_helper_move_to_next_fragment+0x2a>

00a2a39a <uart_helper_send_next_char>:
  a2a39a:	8038                	push	{ra,s0-s1},-16
  a2a39c:	00a0 5648 041f      	l.li	s0,0xa05648
  a2a3a2:	4ca4145b          	muliadd	s0,s0,a0,76
  a2a3a6:	4004                	lw	s1,0(s0)
  a2a3a8:	243e                	lhu	a5,10(s0)
  a2a3aa:	4605                	li	a2,1
  a2a3ac:	408c                	lw	a1,0(s1)
  a2a3ae:	95be                	add	a1,a1,a5
  a2a3b0:	1c2010ef          	jal	ra,a2b572 <hal_uart_write>
  a2a3b4:	242a                	lhu	a0,10(s0)
  a2a3b6:	0505                	addi	a0,a0,1
  a2a3b8:	9d21                	uxth	a0
  a2a3ba:	a42a                	sh	a0,10(s0)
  a2a3bc:	44dc                	lw	a5,12(s1)
  a2a3be:	00f53533          	sltu	a0,a0,a5
  a2a3c2:	00154513          	xori	a0,a0,1
  a2a3c6:	8034                	popret	{ra,s0-s1},16

00a2a3c8 <uart_error_isr>:
  a2a3c8:	8148                	push	{ra,s0-s2},-32
  a2a3ca:	842a                	mv	s0,a0
  a2a3cc:	00f10613          	addi	a2,sp,15
  a2a3d0:	45a5                	li	a1,9
  a2a3d2:	00a0 5600 091f      	l.li	s2,0xa05600
  a2a3d8:	00010723          	sb	zero,14(sp)
  a2a3dc:	000107a3          	sb	zero,15(sp)
  a2a3e0:	188914db          	muliadd	s1,s2,s0,24
  a2a3e4:	1b2010ef          	jal	ra,a2b596 <hal_uart_ctrl>
  a2a3e8:	00f14783          	lbu	a5,15(sp)
  a2a3ec:	cf89                	beqz	a5,a2a406 <uart_error_isr+0x3e>
  a2a3ee:	1889145b          	muliadd	s0,s2,s0,24
  a2a3f2:	284e                	lhu	a1,20(s0)
  a2a3f4:	c981                	beqz	a1,a2a404 <uart_error_isr+0x3c>
  a2a3f6:	401c                	lw	a5,0(s0)
  a2a3f8:	c791                	beqz	a5,a2a404 <uart_error_isr+0x3c>
  a2a3fa:	4448                	lw	a0,12(s0)
  a2a3fc:	4605                	li	a2,1
  a2a3fe:	9782                	jalr	a5
  a2a400:	00041a23          	sh	zero,20(s0)
  a2a404:	8144                	popret	{ra,s0-s2},32
  a2a406:	00e10593          	addi	a1,sp,14
  a2a40a:	4605                	li	a2,1
  a2a40c:	8522                	mv	a0,s0
  a2a40e:	176010ef          	jal	ra,a2b584 <hal_uart_read>
  a2a412:	28d6                	lhu	a3,20(s1)
  a2a414:	44dc                	lw	a5,12(s1)
  a2a416:	00e14703          	lbu	a4,14(sp)
  a2a41a:	97b6                	add	a5,a5,a3
  a2a41c:	a398                	sb	a4,0(a5)
  a2a41e:	28ce                	lhu	a1,20(s1)
  a2a420:	289e                	lhu	a5,16(s1)
  a2a422:	0585                	addi	a1,a1,1 # 55000001 <_gp_+0x545cb779>
  a2a424:	9da1                	uxth	a1
  a2a426:	a8ce                	sh	a1,20(s1)
  a2a428:	00f5e963          	bltu	a1,a5,a2a43a <uart_error_isr+0x72>
  a2a42c:	409c                	lw	a5,0(s1)
  a2a42e:	c781                	beqz	a5,a2a436 <uart_error_isr+0x6e>
  a2a430:	44c8                	lw	a0,12(s1)
  a2a432:	4605                	li	a2,1
  a2a434:	9782                	jalr	a5
  a2a436:	00049a23          	sh	zero,20(s1)
  a2a43a:	00f10613          	addi	a2,sp,15
  a2a43e:	45a5                	li	a1,9
  a2a440:	8522                	mv	a0,s0
  a2a442:	154010ef          	jal	ra,a2b596 <hal_uart_ctrl>
  a2a446:	b74d                	j	a2a3e8 <uart_error_isr+0x20>

00a2a448 <uart_evt_callback>:
  a2a448:	8158                	push	{ra,s0-s3},-48
  a2a44a:	15fd                	addi	a1,a1,-1
  a2a44c:	0ff5f793          	andi	a5,a1,255
  a2a450:	0567fabb          	bgeui	a5,5,a2a5fa <uart_evt_callback+0x1b2>
  a2a454:	00a325b7          	lui	a1,0xa32
  a2a458:	71458593          	addi	a1,a1,1812 # a32714 <g_sm3_ival+0x20>
  a2a45c:	04f5859b          	addshf	a1,a1,a5,sll,2
  a2a460:	419c                	lw	a5,0(a1)
  a2a462:	842a                	mv	s0,a0
  a2a464:	8782                	jr	a5
  a2a466:	00a0 5648 049f      	l.li	s1,0xa05648
  a2a46c:	000107a3          	sb	zero,15(sp)
  a2a470:	4ca494db          	muliadd	s1,s1,a0,76
  a2a474:	249e                	lhu	a5,8(s1)
  a2a476:	eb81                	bnez	a5,a2a486 <uart_evt_callback+0x3e>
  a2a478:	4601                	li	a2,0
  a2a47a:	4589                	li	a1,2
  a2a47c:	8522                	mv	a0,s0
  a2a47e:	118010ef          	jal	ra,a2b596 <hal_uart_ctrl>
  a2a482:	4501                	li	a0,0
  a2a484:	8154                	popret	{ra,s0-s3},48
  a2a486:	00f10613          	addi	a2,sp,15
  a2a48a:	459d                	li	a1,7
  a2a48c:	8522                	mv	a0,s0
  a2a48e:	108010ef          	jal	ra,a2b596 <hal_uart_ctrl>
  a2a492:	00f14783          	lbu	a5,15(sp)
  a2a496:	f7f5                	bnez	a5,a2a482 <uart_evt_callback+0x3a>
  a2a498:	8522                	mv	a0,s0
  a2a49a:	3701                	jal	ra,a2a39a <uart_helper_send_next_char>
  a2a49c:	d56d                	beqz	a0,a2a486 <uart_evt_callback+0x3e>
  a2a49e:	8522                	mv	a0,s0
  a2a4a0:	3d79                	jal	ra,a2a33e <uart_helper_invoke_current_fragment_callback>
  a2a4a2:	8522                	mv	a0,s0
  a2a4a4:	3d65                	jal	ra,a2a35c <uart_helper_move_to_next_fragment>
  a2a4a6:	b7f9                	j	a2a474 <uart_evt_callback+0x2c>
  a2a4a8:	00f10613          	addi	a2,sp,15
  a2a4ac:	45a5                	li	a1,9
  a2a4ae:	00a0 5600 091f      	l.li	s2,0xa05600
  a2a4b4:	00010723          	sb	zero,14(sp)
  a2a4b8:	000107a3          	sb	zero,15(sp)
  a2a4bc:	4981                	li	s3,0
  a2a4be:	0d8010ef          	jal	ra,a2b596 <hal_uart_ctrl>
  a2a4c2:	188914db          	muliadd	s1,s2,s0,24
  a2a4c6:	00f14783          	lbu	a5,15(sp)
  a2a4ca:	c78d                	beqz	a5,a2a4f4 <uart_evt_callback+0xac>
  a2a4cc:	188917db          	muliadd	a5,s2,s0,24
  a2a4d0:	2bce                	lhu	a1,20(a5)
  a2a4d2:	d9c5                	beqz	a1,a2a482 <uart_evt_callback+0x3a>
  a2a4d4:	2bf8                	lbu	a4,22(a5)
  a2a4d6:	8b09                	andi	a4,a4,2
  a2a4d8:	d74d                	beqz	a4,a2a482 <uart_evt_callback+0x3a>
  a2a4da:	2bba                	lhu	a4,18(a5)
  a2a4dc:	fae9e3e3          	bltu	s3,a4,a2a482 <uart_evt_callback+0x3a>
  a2a4e0:	4398                	lw	a4,0(a5)
  a2a4e2:	c701                	beqz	a4,a2a4ea <uart_evt_callback+0xa2>
  a2a4e4:	47c8                	lw	a0,12(a5)
  a2a4e6:	4601                	li	a2,0
  a2a4e8:	9702                	jalr	a4
  a2a4ea:	1889145b          	muliadd	s0,s2,s0,24
  a2a4ee:	00041a23          	sh	zero,20(s0)
  a2a4f2:	bf41                	j	a2a482 <uart_evt_callback+0x3a>
  a2a4f4:	4605                	li	a2,1
  a2a4f6:	00e10593          	addi	a1,sp,14
  a2a4fa:	8522                	mv	a0,s0
  a2a4fc:	088010ef          	jal	ra,a2b584 <hal_uart_read>
  a2a500:	409c                	lw	a5,0(s1)
  a2a502:	0985                	addi	s3,s3,1 # ffff0001 <_gp_+0xff5bb779>
  a2a504:	09c2                	slli	s3,s3,0x10
  a2a506:	0109d993          	srli	s3,s3,0x10
  a2a50a:	eb81                	bnez	a5,a2a51a <uart_evt_callback+0xd2>
  a2a50c:	00f10613          	addi	a2,sp,15
  a2a510:	45a5                	li	a1,9
  a2a512:	8522                	mv	a0,s0
  a2a514:	082010ef          	jal	ra,a2b596 <hal_uart_ctrl>
  a2a518:	b77d                	j	a2a4c6 <uart_evt_callback+0x7e>
  a2a51a:	28d6                	lhu	a3,20(s1)
  a2a51c:	44dc                	lw	a5,12(s1)
  a2a51e:	00e14703          	lbu	a4,14(sp)
  a2a522:	97b6                	add	a5,a5,a3
  a2a524:	a398                	sb	a4,0(a5)
  a2a526:	28ce                	lhu	a1,20(s1)
  a2a528:	289e                	lhu	a5,16(s1)
  a2a52a:	0585                	addi	a1,a1,1
  a2a52c:	9da1                	uxth	a1
  a2a52e:	a8ce                	sh	a1,20(s1)
  a2a530:	fcf5eee3          	bltu	a1,a5,a2a50c <uart_evt_callback+0xc4>
  a2a534:	409c                	lw	a5,0(s1)
  a2a536:	44c8                	lw	a0,12(s1)
  a2a538:	4601                	li	a2,0
  a2a53a:	9782                	jalr	a5
  a2a53c:	00049a23          	sh	zero,20(s1)
  a2a540:	b7f1                	j	a2a50c <uart_evt_callback+0xc4>
  a2a542:	00f10613          	addi	a2,sp,15
  a2a546:	45a5                	li	a1,9
  a2a548:	00a0 5600 091f      	l.li	s2,0xa05600
  a2a54e:	00010723          	sb	zero,14(sp)
  a2a552:	000107a3          	sb	zero,15(sp)
  a2a556:	4981                	li	s3,0
  a2a558:	03e010ef          	jal	ra,a2b596 <hal_uart_ctrl>
  a2a55c:	188914db          	muliadd	s1,s2,s0,24
  a2a560:	00f14783          	lbu	a5,15(sp)
  a2a564:	cb85                	beqz	a5,a2a594 <uart_evt_callback+0x14c>
  a2a566:	1889175b          	muliadd	a4,s2,s0,24
  a2a56a:	2b4e                	lhu	a1,20(a4)
  a2a56c:	f0058be3          	beqz	a1,a2a482 <uart_evt_callback+0x3a>
  a2a570:	2b7c                	lbu	a5,22(a4)
  a2a572:	0017f693          	andi	a3,a5,1
  a2a576:	e699                	bnez	a3,a2a584 <uart_evt_callback+0x13c>
  a2a578:	8b89                	andi	a5,a5,2
  a2a57a:	f00784e3          	beqz	a5,a2a482 <uart_evt_callback+0x3a>
  a2a57e:	2b3e                	lhu	a5,18(a4)
  a2a580:	f0f9e1e3          	bltu	s3,a5,a2a482 <uart_evt_callback+0x3a>
  a2a584:	1889175b          	muliadd	a4,s2,s0,24
  a2a588:	431c                	lw	a5,0(a4)
  a2a58a:	d3a5                	beqz	a5,a2a4ea <uart_evt_callback+0xa2>
  a2a58c:	4748                	lw	a0,12(a4)
  a2a58e:	4601                	li	a2,0
  a2a590:	9782                	jalr	a5
  a2a592:	bfa1                	j	a2a4ea <uart_evt_callback+0xa2>
  a2a594:	4605                	li	a2,1
  a2a596:	00e10593          	addi	a1,sp,14
  a2a59a:	8522                	mv	a0,s0
  a2a59c:	7e9000ef          	jal	ra,a2b584 <hal_uart_read>
  a2a5a0:	409c                	lw	a5,0(s1)
  a2a5a2:	0985                	addi	s3,s3,1
  a2a5a4:	09c2                	slli	s3,s3,0x10
  a2a5a6:	0109d993          	srli	s3,s3,0x10
  a2a5aa:	eb81                	bnez	a5,a2a5ba <uart_evt_callback+0x172>
  a2a5ac:	00f10613          	addi	a2,sp,15
  a2a5b0:	45a5                	li	a1,9
  a2a5b2:	8522                	mv	a0,s0
  a2a5b4:	7e3000ef          	jal	ra,a2b596 <hal_uart_ctrl>
  a2a5b8:	b765                	j	a2a560 <uart_evt_callback+0x118>
  a2a5ba:	28d6                	lhu	a3,20(s1)
  a2a5bc:	44dc                	lw	a5,12(s1)
  a2a5be:	00e14703          	lbu	a4,14(sp)
  a2a5c2:	97b6                	add	a5,a5,a3
  a2a5c4:	a398                	sb	a4,0(a5)
  a2a5c6:	28ce                	lhu	a1,20(s1)
  a2a5c8:	289e                	lhu	a5,16(s1)
  a2a5ca:	0585                	addi	a1,a1,1
  a2a5cc:	9da1                	uxth	a1
  a2a5ce:	a8ce                	sh	a1,20(s1)
  a2a5d0:	fcf5eee3          	bltu	a1,a5,a2a5ac <uart_evt_callback+0x164>
  a2a5d4:	409c                	lw	a5,0(s1)
  a2a5d6:	c781                	beqz	a5,a2a5de <uart_evt_callback+0x196>
  a2a5d8:	44c8                	lw	a0,12(s1)
  a2a5da:	4601                	li	a2,0
  a2a5dc:	9782                	jalr	a5
  a2a5de:	00049a23          	sh	zero,20(s1)
  a2a5e2:	b7e9                	j	a2a5ac <uart_evt_callback+0x164>
  a2a5e4:	00a0 5600 079f      	l.li	a5,0xa05600
  a2a5ea:	18a797db          	muliadd	a5,a5,a0,24
  a2a5ee:	43dc                	lw	a5,4(a5)
  a2a5f0:	c781                	beqz	a5,a2a5f8 <uart_evt_callback+0x1b0>
  a2a5f2:	4581                	li	a1,0
  a2a5f4:	4501                	li	a0,0
  a2a5f6:	9782                	jalr	a5
  a2a5f8:	8522                	mv	a0,s0
  a2a5fa:	33f9                	jal	ra,a2a3c8 <uart_error_isr>
  a2a5fc:	b559                	j	a2a482 <uart_evt_callback+0x3a>
  a2a5fe:	00a0 5600 079f      	l.li	a5,0xa05600
  a2a604:	18a797db          	muliadd	a5,a5,a0,24
  a2a608:	479c                	lw	a5,8(a5)
  a2a60a:	b7dd                	j	a2a5f0 <uart_evt_callback+0x1a8>

00a2a60c <uapi_uart_init>:
  a2a60c:	8158                	push	{ra,s0-s3},-48
  a2a60e:	4789                	li	a5,2
  a2a610:	0aa7ed63          	bltu	a5,a0,a2a6ca <uapi_uart_init+0xbe>
  a2a614:	c9dd                	beqz	a1,a2a6ca <uapi_uart_init+0xbe>
  a2a616:	0015c883          	lbu	a7,1(a1)
  a2a61a:	07200813          	li	a6,114
  a2a61e:	0b186663          	bltu	a6,a7,a2a6ca <uapi_uart_init+0xbe>
  a2a622:	0005c883          	lbu	a7,0(a1)
  a2a626:	0b186263          	bltu	a6,a7,a2a6ca <uapi_uart_init+0xbe>
  a2a62a:	c245                	beqz	a2,a2a6ca <uapi_uart_init+0xbe>
  a2a62c:	00464803          	lbu	a6,4(a2)
  a2a630:	042876bb          	bgeui	a6,4,a2a6ca <uapi_uart_init+0xbe>
  a2a634:	00664803          	lbu	a6,6(a2)
  a2a638:	0907e963          	bltu	a5,a6,a2a6ca <uapi_uart_init+0xbe>
  a2a63c:	325c                	lbu	a5,5(a2)
  a2a63e:	0227f33b          	bgeui	a5,2,a2a6ca <uapi_uart_init+0xbe>
  a2a642:	00a05937          	lui	s2,0xa05
  a2a646:	5fc90793          	addi	a5,s2,1532 # a055fc <g_uart_inited>
  a2a64a:	97aa                	add	a5,a5,a0
  a2a64c:	239c                	lbu	a5,0(a5)
  a2a64e:	84aa                	mv	s1,a0
  a2a650:	5fc90913          	addi	s2,s2,1532
  a2a654:	4401                	li	s0,0
  a2a656:	eba5                	bnez	a5,a2a6c6 <uapi_uart_init+0xba>
  a2a658:	89ba                	mv	s3,a4
  a2a65a:	c636                	sw	a3,12(sp)
  a2a65c:	8432                	mv	s0,a2
  a2a65e:	c42e                	sw	a1,8(sp)
  a2a660:	25d010ef          	jal	ra,a2c0bc <uart_port_config_pinmux>
  a2a664:	06098763          	beqz	s3,a2a6d2 <uapi_uart_init+0xc6>
  a2a668:	0009a683          	lw	a3,0(s3)
  a2a66c:	c2bd                	beqz	a3,a2a6d2 <uapi_uart_init+0xc6>
  a2a66e:	0049a703          	lw	a4,4(s3)
  a2a672:	c325                	beqz	a4,a2a6d2 <uapi_uart_init+0xc6>
  a2a674:	04c00513          	li	a0,76
  a2a678:	02a48533          	mul	a0,s1,a0
  a2a67c:	00a0 5600 071f      	l.li	a4,0xa05600
  a2a682:	1897175b          	muliadd	a4,a4,s1,24
  a2a686:	c754                	sw	a3,12(a4)
  a2a688:	0049a683          	lw	a3,4(s3)
  a2a68c:	47b2                	lw	a5,12(sp)
  a2a68e:	4622                	lw	a2,8(sp)
  a2a690:	ab16                	sh	a3,16(a4)
  a2a692:	00a0 5648 071f      	l.li	a4,0xa05648
  a2a698:	86a2                	mv	a3,s0
  a2a69a:	00c50593          	addi	a1,a0,12
  a2a69e:	95ba                	add	a1,a1,a4
  a2a6a0:	972a                	add	a4,a4,a0
  a2a6a2:	c30c                	sw	a1,0(a4)
  a2a6a4:	c34c                	sw	a1,4(a4)
  a2a6a6:	8526                	mv	a0,s1
  a2a6a8:	4711                	li	a4,4
  a2a6aa:	00a2 a448 059f      	l.li	a1,0xa2a448
  a2a6b0:	685000ef          	jal	ra,a2b534 <hal_uart_init>
  a2a6b4:	842a                	mv	s0,a0
  a2a6b6:	e901                	bnez	a0,a2a6c6 <uapi_uart_init+0xba>
  a2a6b8:	9926                	add	s2,s2,s1
  a2a6ba:	4785                	li	a5,1
  a2a6bc:	8526                	mv	a0,s1
  a2a6be:	00f90023          	sb	a5,0(s2)
  a2a6c2:	20b010ef          	jal	ra,a2c0cc <uart_port_register_irq>
  a2a6c6:	8522                	mv	a0,s0
  a2a6c8:	8154                	popret	{ra,s0-s3},48
  a2a6ca:	80000437          	lui	s0,0x80000
  a2a6ce:	0405                	addi	s0,s0,1 # 80000001 <_gp_+0x7f5cb779>
  a2a6d0:	bfdd                	j	a2a6c6 <uapi_uart_init+0xba>
  a2a6d2:	8000 1044 041f      	l.li	s0,0x80001044
  a2a6d8:	b7fd                	j	a2a6c6 <uapi_uart_init+0xba>

00a2a6da <uapi_uart_write>:
  a2a6da:	8178                	push	{ra,s0-s5},-48
  a2a6dc:	000107a3          	sb	zero,15(sp)
  a2a6e0:	0315773b          	bgeui	a0,3,a2a73c <uapi_uart_write+0x62>
  a2a6e4:	cda1                	beqz	a1,a2a73c <uapi_uart_write+0x62>
  a2a6e6:	ca39                	beqz	a2,a2a73c <uapi_uart_write+0x62>
  a2a6e8:	00a0 55fc 079f      	l.li	a5,0xa055fc
  a2a6ee:	97aa                	add	a5,a5,a0
  a2a6f0:	239c                	lbu	a5,0(a5)
  a2a6f2:	84aa                	mv	s1,a0
  a2a6f4:	cba1                	beqz	a5,a2a744 <uapi_uart_write+0x6a>
  a2a6f6:	89ae                	mv	s3,a1
  a2a6f8:	8932                	mv	s2,a2
  a2a6fa:	23d010ef          	jal	ra,a2c136 <uart_porting_lock>
  a2a6fe:	8aaa                	mv	s5,a0
  a2a700:	994e                	add	s2,s2,s3
  a2a702:	8a4e                	mv	s4,s3
  a2a704:	413a0433          	sub	s0,s4,s3
  a2a708:	012a1863          	bne	s4,s2,a2a718 <uapi_uart_write+0x3e>
  a2a70c:	85d6                	mv	a1,s5
  a2a70e:	8526                	mv	a0,s1
  a2a710:	22b010ef          	jal	ra,a2c13a <uart_porting_unlock>
  a2a714:	8522                	mv	a0,s0
  a2a716:	8174                	popret	{ra,s0-s5},48
  a2a718:	00f10613          	addi	a2,sp,15
  a2a71c:	459d                	li	a1,7
  a2a71e:	8526                	mv	a0,s1
  a2a720:	677000ef          	jal	ra,a2b596 <hal_uart_ctrl>
  a2a724:	00f14783          	lbu	a5,15(sp)
  a2a728:	f3e5                	bnez	a5,a2a708 <uapi_uart_write+0x2e>
  a2a72a:	85d2                	mv	a1,s4
  a2a72c:	001a0413          	addi	s0,s4,1
  a2a730:	4605                	li	a2,1
  a2a732:	8526                	mv	a0,s1
  a2a734:	63f000ef          	jal	ra,a2b572 <hal_uart_write>
  a2a738:	8a22                	mv	s4,s0
  a2a73a:	b7e9                	j	a2a704 <uapi_uart_write+0x2a>
  a2a73c:	80000437          	lui	s0,0x80000
  a2a740:	0405                	addi	s0,s0,1 # 80000001 <_gp_+0x7f5cb779>
  a2a742:	bfc9                	j	a2a714 <uapi_uart_write+0x3a>
  a2a744:	8000 1040 041f      	l.li	s0,0x80001040
  a2a74a:	b7e9                	j	a2a714 <uapi_uart_write+0x3a>

00a2a74c <uapi_watchdog_init>:
  a2a74c:	8058                	push	{ra,s0-s3},-32
  a2a74e:	89aa                	mv	s3,a0
  a2a750:	227010ef          	jal	ra,a2c176 <watchdog_port_register_hal_funcs>
  a2a754:	233010ef          	jal	ra,a2c186 <watchdog_port_register_irq>
  a2a758:	9e8ff0ef          	jal	ra,a29940 <osal_irq_lock>
  a2a75c:	84aa                	mv	s1,a0
  a2a75e:	27e010ef          	jal	ra,a2b9dc <hal_watchdog_get_funcs>
  a2a762:	411c                	lw	a5,0(a0)
  a2a764:	00a0 572c 091f      	l.li	s2,0xa0572c
  a2a76a:	00a92023          	sw	a0,0(s2)
  a2a76e:	9782                	jalr	a5
  a2a770:	c519                	beqz	a0,a2a77e <uapi_watchdog_init+0x32>
  a2a772:	842a                	mv	s0,a0
  a2a774:	8526                	mv	a0,s1
  a2a776:	9d2ff0ef          	jal	ra,a29948 <osal_irq_restore>
  a2a77a:	8522                	mv	a0,s0
  a2a77c:	8054                	popret	{ra,s0-s3},32
  a2a77e:	00092783          	lw	a5,0(s2)
  a2a782:	854e                	mv	a0,s3
  a2a784:	479c                	lw	a5,8(a5)
  a2a786:	9782                	jalr	a5
  a2a788:	842a                	mv	s0,a0
  a2a78a:	8526                	mv	a0,s1
  a2a78c:	9bcff0ef          	jal	ra,a29948 <osal_irq_restore>
  a2a790:	f46d                	bnez	s0,a2a77a <uapi_watchdog_init+0x2e>
  a2a792:	00a0 5731 079f      	l.li	a5,0xa05731
  a2a798:	4705                	li	a4,1
  a2a79a:	a398                	sb	a4,0(a5)
  a2a79c:	bff9                	j	a2a77a <uapi_watchdog_init+0x2e>

00a2a79e <uapi_watchdog_enable>:
  a2a79e:	00a0 5731 079f      	l.li	a5,0xa05731
  a2a7a4:	239c                	lbu	a5,0(a5)
  a2a7a6:	cb9d                	beqz	a5,a2a7dc <uapi_watchdog_enable+0x3e>
  a2a7a8:	8048                	push	{ra,s0-s2},-16
  a2a7aa:	4485                	li	s1,1
  a2a7ac:	57fd                	li	a5,-1
  a2a7ae:	02a4e563          	bltu	s1,a0,a2a7d8 <uapi_watchdog_enable+0x3a>
  a2a7b2:	842a                	mv	s0,a0
  a2a7b4:	98cff0ef          	jal	ra,a29940 <osal_irq_lock>
  a2a7b8:	00a0 572c 079f      	l.li	a5,0xa0572c
  a2a7be:	439c                	lw	a5,0(a5)
  a2a7c0:	892a                	mv	s2,a0
  a2a7c2:	8522                	mv	a0,s0
  a2a7c4:	4b9c                	lw	a5,16(a5)
  a2a7c6:	9782                	jalr	a5
  a2a7c8:	854a                	mv	a0,s2
  a2a7ca:	97eff0ef          	jal	ra,a29948 <osal_irq_restore>
  a2a7ce:	00a0 5730 079f      	l.li	a5,0xa05730
  a2a7d4:	a384                	sb	s1,0(a5)
  a2a7d6:	4781                	li	a5,0
  a2a7d8:	853e                	mv	a0,a5
  a2a7da:	8044                	popret	{ra,s0-s2},16
  a2a7dc:	57fd                	li	a5,-1
  a2a7de:	853e                	mv	a0,a5
  a2a7e0:	8082                	ret

00a2a7e2 <uapi_watchdog_disable>:
  a2a7e2:	00a0 5731 079f      	l.li	a5,0xa05731
  a2a7e8:	239c                	lbu	a5,0(a5)
  a2a7ea:	e399                	bnez	a5,a2a7f0 <uapi_watchdog_disable+0xe>
  a2a7ec:	557d                	li	a0,-1
  a2a7ee:	8082                	ret
  a2a7f0:	8118                	push	{ra},-32
  a2a7f2:	94eff0ef          	jal	ra,a29940 <osal_irq_lock>
  a2a7f6:	00a0 572c 079f      	l.li	a5,0xa0572c
  a2a7fc:	439c                	lw	a5,0(a5)
  a2a7fe:	c62a                	sw	a0,12(sp)
  a2a800:	4bdc                	lw	a5,20(a5)
  a2a802:	9782                	jalr	a5
  a2a804:	4532                	lw	a0,12(sp)
  a2a806:	942ff0ef          	jal	ra,a29948 <osal_irq_restore>
  a2a80a:	00a0 5730 079f      	l.li	a5,0xa05730
  a2a810:	00078023          	sb	zero,0(a5)
  a2a814:	4501                	li	a0,0
  a2a816:	8114                	popret	{ra},32

00a2a818 <uapi_watchdog_deinit>:
  a2a818:	00a057b7          	lui	a5,0xa05
  a2a81c:	7317c703          	lbu	a4,1841(a5) # a05731 <g_watchdog_inited>
  a2a820:	c71d                	beqz	a4,a2a84e <uapi_watchdog_deinit+0x36>
  a2a822:	8028                	push	{ra,s0},-16
  a2a824:	73178413          	addi	s0,a5,1841
  a2a828:	00a0 5730 079f      	l.li	a5,0xa05730
  a2a82e:	239c                	lbu	a5,0(a5)
  a2a830:	c391                	beqz	a5,a2a834 <uapi_watchdog_deinit+0x1c>
  a2a832:	3f45                	jal	ra,a2a7e2 <uapi_watchdog_disable>
  a2a834:	00a0 572c 079f      	l.li	a5,0xa0572c
  a2a83a:	439c                	lw	a5,0(a5)
  a2a83c:	c399                	beqz	a5,a2a842 <uapi_watchdog_deinit+0x2a>
  a2a83e:	43dc                	lw	a5,4(a5)
  a2a840:	9782                	jalr	a5
  a2a842:	141010ef          	jal	ra,a2c182 <watchdog_port_unregister_hal_funcs>
  a2a846:	4501                	li	a0,0
  a2a848:	00040023          	sb	zero,0(s0)
  a2a84c:	8024                	popret	{ra,s0},16
  a2a84e:	4501                	li	a0,0
  a2a850:	8082                	ret

00a2a852 <uapi_watchdog_kick>:
  a2a852:	00a0 5730 079f      	l.li	a5,0xa05730
  a2a858:	239c                	lbu	a5,0(a5)
  a2a85a:	e399                	bnez	a5,a2a860 <uapi_watchdog_kick+0xe>
  a2a85c:	557d                	li	a0,-1
  a2a85e:	8082                	ret
  a2a860:	8118                	push	{ra},-32
  a2a862:	8deff0ef          	jal	ra,a29940 <osal_irq_lock>
  a2a866:	00a0 572c 079f      	l.li	a5,0xa0572c
  a2a86c:	439c                	lw	a5,0(a5)
  a2a86e:	c62a                	sw	a0,12(sp)
  a2a870:	4f9c                	lw	a5,24(a5)
  a2a872:	9782                	jalr	a5
  a2a874:	4532                	lw	a0,12(sp)
  a2a876:	8d2ff0ef          	jal	ra,a29948 <osal_irq_restore>
  a2a87a:	4501                	li	a0,0
  a2a87c:	8114                	popret	{ra},32

00a2a87e <uapi_efuse_init>:
  a2a87e:	8018                	push	{ra},-16
  a2a880:	0ae020ef          	jal	ra,a2c92e <efuse_port_register_hal_funcs>
  a2a884:	28c1                	jal	ra,a2a954 <hal_efuse_get_funcs>
  a2a886:	00052303          	lw	t1,0(a0)
  a2a88a:	8010                	pop	{ra},16
  a2a88c:	8302                	jr	t1

00a2a88e <uapi_efuse_read_bit>:
  a2a88e:	8168                	push	{ra,s0-s4},-48
  a2a890:	000107a3          	sb	zero,15(sp)
  a2a894:	547d                	li	s0,-1
  a2a896:	0ff00793          	li	a5,255
  a2a89a:	02b7ee63          	bltu	a5,a1,a2a8d6 <uapi_efuse_read_bit+0x48>
  a2a89e:	cd05                	beqz	a0,a2a8d6 <uapi_efuse_read_bit+0x48>
  a2a8a0:	08067dbb          	bgeui	a2,8,a2a8d6 <uapi_efuse_read_bit+0x48>
  a2a8a4:	842e                	mv	s0,a1
  a2a8a6:	8932                	mv	s2,a2
  a2a8a8:	84aa                	mv	s1,a0
  a2a8aa:	206d                	jal	ra,a2a954 <hal_efuse_get_funcs>
  a2a8ac:	8a2a                	mv	s4,a0
  a2a8ae:	892ff0ef          	jal	ra,a29940 <osal_irq_lock>
  a2a8b2:	010a2783          	lw	a5,16(s4)
  a2a8b6:	89aa                	mv	s3,a0
  a2a8b8:	00f10593          	addi	a1,sp,15
  a2a8bc:	8522                	mv	a0,s0
  a2a8be:	9782                	jalr	a5
  a2a8c0:	842a                	mv	s0,a0
  a2a8c2:	ed01                	bnez	a0,a2a8da <uapi_efuse_read_bit+0x4c>
  a2a8c4:	00f14783          	lbu	a5,15(sp)
  a2a8c8:	854e                	mv	a0,s3
  a2a8ca:	4127d633          	sra	a2,a5,s2
  a2a8ce:	8a05                	andi	a2,a2,1
  a2a8d0:	a090                	sb	a2,0(s1)
  a2a8d2:	876ff0ef          	jal	ra,a29948 <osal_irq_restore>
  a2a8d6:	8522                	mv	a0,s0
  a2a8d8:	8164                	popret	{ra,s0-s4},48
  a2a8da:	854e                	mv	a0,s3
  a2a8dc:	86cff0ef          	jal	ra,a29948 <osal_irq_restore>
  a2a8e0:	547d                	li	s0,-1
  a2a8e2:	bfd5                	j	a2a8d6 <uapi_efuse_read_bit+0x48>

00a2a8e4 <uapi_efuse_read_buffer>:
  a2a8e4:	8088                	push	{ra,s0-s6},-32
  a2a8e6:	547d                	li	s0,-1
  a2a8e8:	c231                	beqz	a2,a2a92c <uapi_efuse_read_buffer+0x48>
  a2a8ea:	0ff00793          	li	a5,255
  a2a8ee:	02b7ef63          	bltu	a5,a1,a2a92c <uapi_efuse_read_buffer+0x48>
  a2a8f2:	00c587b3          	add	a5,a1,a2
  a2a8f6:	10000713          	li	a4,256
  a2a8fa:	02f76963          	bltu	a4,a5,a2a92c <uapi_efuse_read_buffer+0x48>
  a2a8fe:	c51d                	beqz	a0,a2a92c <uapi_efuse_read_buffer+0x48>
  a2a900:	8932                	mv	s2,a2
  a2a902:	89ae                	mv	s3,a1
  a2a904:	8a2a                	mv	s4,a0
  a2a906:	20b9                	jal	ra,a2a954 <hal_efuse_get_funcs>
  a2a908:	8b2a                	mv	s6,a0
  a2a90a:	836ff0ef          	jal	ra,a29940 <osal_irq_lock>
  a2a90e:	8aaa                	mv	s5,a0
  a2a910:	4481                	li	s1,0
  a2a912:	010b2783          	lw	a5,16(s6)
  a2a916:	009a05b3          	add	a1,s4,s1
  a2a91a:	00998533          	add	a0,s3,s1
  a2a91e:	9782                	jalr	a5
  a2a920:	842a                	mv	s0,a0
  a2a922:	c519                	beqz	a0,a2a930 <uapi_efuse_read_buffer+0x4c>
  a2a924:	8556                	mv	a0,s5
  a2a926:	822ff0ef          	jal	ra,a29948 <osal_irq_restore>
  a2a92a:	547d                	li	s0,-1
  a2a92c:	8522                	mv	a0,s0
  a2a92e:	8084                	popret	{ra,s0-s6},32
  a2a930:	0485                	addi	s1,s1,1
  a2a932:	ff24e0e3          	bltu	s1,s2,a2a912 <uapi_efuse_read_buffer+0x2e>
  a2a936:	8556                	mv	a0,s5
  a2a938:	810ff0ef          	jal	ra,a29948 <osal_irq_restore>
  a2a93c:	bfc5                	j	a2a92c <uapi_efuse_read_buffer+0x48>

00a2a93e <hal_efuse_register_funcs>:
  a2a93e:	c519                	beqz	a0,a2a94c <hal_efuse_register_funcs+0xe>
  a2a940:	00a0 5734 079f      	l.li	a5,0xa05734
  a2a946:	c388                	sw	a0,0(a5)
  a2a948:	4501                	li	a0,0
  a2a94a:	8082                	ret
  a2a94c:	80000537          	lui	a0,0x80000
  a2a950:	0505                	addi	a0,a0,1 # 80000001 <_gp_+0x7f5cb779>
  a2a952:	8082                	ret

00a2a954 <hal_efuse_get_funcs>:
  a2a954:	00a0 5734 079f      	l.li	a5,0xa05734
  a2a95a:	4388                	lw	a0,0(a5)
  a2a95c:	8082                	ret

00a2a95e <hal_efuse_deinit>:
  a2a95e:	00a0 5738 079f      	l.li	a5,0xa05738
  a2a964:	00078023          	sb	zero,0(a5)
  a2a968:	8082                	ret

00a2a96a <hal_efuse_get_writeread_addr>:
  a2a96a:	8038                	push	{ra,s0-s1},-16
  a2a96c:	84aa                	mv	s1,a0
  a2a96e:	7cd010ef          	jal	ra,a2c93a <hal_efuse_get_region>
  a2a972:	842a                	mv	s0,a0
  a2a974:	8526                	mv	a0,s1
  a2a976:	7cb010ef          	jal	ra,a2c940 <hal_efuse_get_byte_offset>
  a2a97a:	00a3 400c 079f      	l.li	a5,0xa3400c
  a2a980:	0487879b          	addshf	a5,a5,s0,sll,2
  a2a984:	439c                	lw	a5,0(a5)
  a2a986:	8105                	srli	a0,a0,0x1
  a2a988:	9d21                	uxth	a0
  a2a98a:	04a7851b          	addshf	a0,a5,a0,sll,2
  a2a98e:	8034                	popret	{ra,s0-s1},16

00a2a990 <hal_efuse_init>:
  a2a990:	8018                	push	{ra},-16
  a2a992:	4501                	li	a0,0
  a2a994:	2255                	jal	ra,a2ab38 <hal_efuse_regs_init>
  a2a996:	00a057b7          	lui	a5,0xa05
  a2a99a:	7407a703          	lw	a4,1856(a5) # a05740 <g_efuse_regs>
  a2a99e:	00a3 3ea0 069f      	l.li	a3,0xa33ea0
  a2a9a4:	2294                	lbu	a3,0(a3)
  a2a9a6:	435c                	lw	a5,4(a4)
  a2a9a8:	4501                	li	a0,0
  a2a9aa:	f007f793          	andi	a5,a5,-256
  a2a9ae:	8fd5                	or	a5,a5,a3
  a2a9b0:	c35c                	sw	a5,4(a4)
  a2a9b2:	00a0 5738 079f      	l.li	a5,0xa05738
  a2a9b8:	4705                	li	a4,1
  a2a9ba:	a398                	sb	a4,0(a5)
  a2a9bc:	8014                	popret	{ra},16

00a2a9be <hal_efuse_read_byte>:
  a2a9be:	00a0 5738 079f      	l.li	a5,0xa05738
  a2a9c4:	239c                	lbu	a5,0(a5)
  a2a9c6:	c7a1                	beqz	a5,a2aa0e <hal_efuse_read_byte+0x50>
  a2a9c8:	8048                	push	{ra,s0-s2},-16
  a2a9ca:	842a                	mv	s0,a0
  a2a9cc:	0ff00793          	li	a5,255
  a2a9d0:	04a7e363          	bltu	a5,a0,a2aa16 <hal_efuse_read_byte+0x58>
  a2a9d4:	c1a9                	beqz	a1,a2aa16 <hal_efuse_read_byte+0x58>
  a2a9d6:	84ae                	mv	s1,a1
  a2a9d8:	3f49                	jal	ra,a2a96a <hal_efuse_get_writeread_addr>
  a2a9da:	892a                	mv	s2,a0
  a2a9dc:	8522                	mv	a0,s0
  a2a9de:	75d010ef          	jal	ra,a2c93a <hal_efuse_get_region>
  a2a9e2:	00a0 5740 079f      	l.li	a5,0xa05740
  a2a9e8:	04a7851b          	addshf	a0,a5,a0,sll,2
  a2a9ec:	4118                	lw	a4,0(a0)
  a2a9ee:	76c1                	lui	a3,0xffff0
  a2a9f0:	8805                	andi	s0,s0,1
  a2a9f2:	431c                	lw	a5,0(a4)
  a2a9f4:	8ff5                	and	a5,a5,a3
  a2a9f6:	0000 5a5a 069f      	l.li	a3,0x5a5a
  a2a9fc:	8fd5                	or	a5,a5,a3
  a2a9fe:	c31c                	sw	a5,0(a4)
  a2aa00:	00092783          	lw	a5,0(s2)
  a2aa04:	c011                	beqz	s0,a2aa08 <hal_efuse_read_byte+0x4a>
  a2aa06:	83a1                	srli	a5,a5,0x8
  a2aa08:	a09c                	sb	a5,0(s1)
  a2aa0a:	4501                	li	a0,0
  a2aa0c:	8044                	popret	{ra,s0-s2},16
  a2aa0e:	8000 1391 051f      	l.li	a0,0x80001391
  a2aa14:	8082                	ret
  a2aa16:	80000537          	lui	a0,0x80000
  a2aa1a:	0505                	addi	a0,a0,1 # 80000001 <_gp_+0x7f5cb779>
  a2aa1c:	bfc5                	j	a2aa0c <hal_efuse_read_byte+0x4e>

00a2aa1e <hal_efuse_get_die_id>:
  a2aa1e:	00a0 5738 079f      	l.li	a5,0xa05738
  a2aa24:	239c                	lbu	a5,0(a5)
  a2aa26:	ef99                	bnez	a5,a2aa44 <hal_efuse_get_die_id+0x26>
  a2aa28:	8000 1391 051f      	l.li	a0,0x80001391
  a2aa2e:	8082                	ret
  a2aa30:	008905b3          	add	a1,s2,s0
  a2aa34:	8522                	mv	a0,s0
  a2aa36:	3761                	jal	ra,a2a9be <hal_efuse_read_byte>
  a2aa38:	e919                	bnez	a0,a2aa4e <hal_efuse_get_die_id+0x30>
  a2aa3a:	0405                	addi	s0,s0,1
  a2aa3c:	fe946ae3          	bltu	s0,s1,a2aa30 <hal_efuse_get_die_id+0x12>
  a2aa40:	4501                	li	a0,0
  a2aa42:	8044                	popret	{ra,s0-s2},16
  a2aa44:	8048                	push	{ra,s0-s2},-16
  a2aa46:	892a                	mv	s2,a0
  a2aa48:	84ae                	mv	s1,a1
  a2aa4a:	4401                	li	s0,0
  a2aa4c:	bfc5                	j	a2aa3c <hal_efuse_get_die_id+0x1e>
  a2aa4e:	557d                	li	a0,-1
  a2aa50:	bfcd                	j	a2aa42 <hal_efuse_get_die_id+0x24>

00a2aa52 <hal_efuse_write_operation>:
  a2aa52:	00a0 5738 079f      	l.li	a5,0xa05738
  a2aa58:	239c                	lbu	a5,0(a5)
  a2aa5a:	c3c1                	beqz	a5,a2aada <hal_efuse_write_operation+0x88>
  a2aa5c:	8058                	push	{ra,s0-s3},-32
  a2aa5e:	842a                	mv	s0,a0
  a2aa60:	0ff00793          	li	a5,255
  a2aa64:	06a7ef63          	bltu	a5,a0,a2aae2 <hal_efuse_write_operation+0x90>
  a2aa68:	00a054b7          	lui	s1,0xa05
  a2aa6c:	892e                	mv	s2,a1
  a2aa6e:	74048993          	addi	s3,s1,1856 # a05740 <g_efuse_regs>
  a2aa72:	6c9010ef          	jal	ra,a2c93a <hal_efuse_get_region>
  a2aa76:	04a9851b          	addshf	a0,s3,a0,sll,2
  a2aa7a:	4118                	lw	a4,0(a0)
  a2aa7c:	76c1                	lui	a3,0xffff0
  a2aa7e:	8522                	mv	a0,s0
  a2aa80:	431c                	lw	a5,0(a4)
  a2aa82:	74048493          	addi	s1,s1,1856
  a2aa86:	8ff5                	and	a5,a5,a3
  a2aa88:	0000 a5a5 069f      	l.li	a3,0xa5a5
  a2aa8e:	8fd5                	or	a5,a5,a3
  a2aa90:	c31c                	sw	a5,0(a4)
  a2aa92:	6a9010ef          	jal	ra,a2c93a <hal_efuse_get_region>
  a2aa96:	04a9851b          	addshf	a0,s3,a0,sll,2
  a2aa9a:	4118                	lw	a4,0(a0)
  a2aa9c:	06400513          	li	a0,100
  a2aaa0:	475c                	lw	a5,12(a4)
  a2aaa2:	0017e793          	ori	a5,a5,1
  a2aaa6:	c75c                	sw	a5,12(a4)
  a2aaa8:	859ff0ef          	jal	ra,a2a300 <uapi_tcxo_delay_us>
  a2aaac:	8522                	mv	a0,s0
  a2aaae:	3d75                	jal	ra,a2a96a <hal_efuse_get_writeread_addr>
  a2aab0:	00147793          	andi	a5,s0,1
  a2aab4:	c391                	beqz	a5,a2aab8 <hal_efuse_write_operation+0x66>
  a2aab6:	0922                	slli	s2,s2,0x8
  a2aab8:	01252023          	sw	s2,0(a0)
  a2aabc:	8522                	mv	a0,s0
  a2aabe:	67d010ef          	jal	ra,a2c93a <hal_efuse_get_region>
  a2aac2:	04a4849b          	addshf	s1,s1,a0,sll,2
  a2aac6:	4098                	lw	a4,0(s1)
  a2aac8:	06400513          	li	a0,100
  a2aacc:	475c                	lw	a5,12(a4)
  a2aace:	9bf9                	andi	a5,a5,-2
  a2aad0:	c75c                	sw	a5,12(a4)
  a2aad2:	82fff0ef          	jal	ra,a2a300 <uapi_tcxo_delay_us>
  a2aad6:	4501                	li	a0,0
  a2aad8:	8054                	popret	{ra,s0-s3},32
  a2aada:	8000 1391 051f      	l.li	a0,0x80001391
  a2aae0:	8082                	ret
  a2aae2:	80000537          	lui	a0,0x80000
  a2aae6:	0505                	addi	a0,a0,1 # 80000001 <_gp_+0x7f5cb779>
  a2aae8:	bfc5                	j	a2aad8 <hal_efuse_write_operation+0x86>

00a2aaea <hal_efuse_write_buffer_operation>:
  a2aaea:	00a0 5738 079f      	l.li	a5,0xa05738
  a2aaf0:	239c                	lbu	a5,0(a5)
  a2aaf2:	c795                	beqz	a5,a2ab1e <hal_efuse_write_buffer_operation+0x34>
  a2aaf4:	8058                	push	{ra,s0-s3},-32
  a2aaf6:	89b2                	mv	s3,a2
  a2aaf8:	842e                	mv	s0,a1
  a2aafa:	84ae                	mv	s1,a1
  a2aafc:	40b50933          	sub	s2,a0,a1
  a2ab00:	408487b3          	sub	a5,s1,s0
  a2ab04:	0137e463          	bltu	a5,s3,a2ab0c <hal_efuse_write_buffer_operation+0x22>
  a2ab08:	4501                	li	a0,0
  a2ab0a:	8054                	popret	{ra,s0-s3},32
  a2ab0c:	208c                	lbu	a1,0(s1)
  a2ab0e:	00990533          	add	a0,s2,s1
  a2ab12:	4601                	li	a2,0
  a2ab14:	3f3d                	jal	ra,a2aa52 <hal_efuse_write_operation>
  a2ab16:	0485                	addi	s1,s1,1
  a2ab18:	d565                	beqz	a0,a2ab00 <hal_efuse_write_buffer_operation+0x16>
  a2ab1a:	557d                	li	a0,-1
  a2ab1c:	b7fd                	j	a2ab0a <hal_efuse_write_buffer_operation+0x20>
  a2ab1e:	8000 1391 051f      	l.li	a0,0x80001391
  a2ab24:	8082                	ret

00a2ab26 <hal_efuse_set_clock_period>:
  a2ab26:	00a3 3ea0 079f      	l.li	a5,0xa33ea0
  a2ab2c:	c388                	sw	a0,0(a5)
  a2ab2e:	8082                	ret

00a2ab30 <hal_efuse_funcs_get>:
  a2ab30:	00a3 3ea4 051f      	l.li	a0,0xa33ea4
  a2ab36:	8082                	ret

00a2ab38 <hal_efuse_regs_init>:
  a2ab38:	02a04763          	bgtz	a0,a2ab66 <hal_efuse_regs_init+0x2e>
  a2ab3c:	050a                	slli	a0,a0,0x2
  a2ab3e:	00a3 4004 071f      	l.li	a4,0xa34004
  a2ab44:	00a0 5740 079f      	l.li	a5,0xa05740
  a2ab4a:	97aa                	add	a5,a5,a0
  a2ab4c:	953a                	add	a0,a0,a4
  a2ab4e:	4118                	lw	a4,0(a0)
  a2ab50:	4501                	li	a0,0
  a2ab52:	c398                	sw	a4,0(a5)
  a2ab54:	00a347b7          	lui	a5,0xa34
  a2ab58:	0087a703          	lw	a4,8(a5) # a34008 <g_efuse_boot_done_addr>
  a2ab5c:	00a0 573c 079f      	l.li	a5,0xa0573c
  a2ab62:	c398                	sw	a4,0(a5)
  a2ab64:	8082                	ret
  a2ab66:	557d                	li	a0,-1
  a2ab68:	8082                	ret

00a2ab6a <hal_pmp_register_funcs>:
  a2ab6a:	c519                	beqz	a0,a2ab78 <hal_pmp_register_funcs+0xe>
  a2ab6c:	00a0 5744 079f      	l.li	a5,0xa05744
  a2ab72:	c388                	sw	a0,0(a5)
  a2ab74:	4501                	li	a0,0
  a2ab76:	8082                	ret
  a2ab78:	80000537          	lui	a0,0x80000
  a2ab7c:	0505                	addi	a0,a0,1 # 80000001 <_gp_+0x7f5cb779>
  a2ab7e:	8082                	ret

00a2ab80 <hal_pmp_get_funcs>:
  a2ab80:	00a0 5744 079f      	l.li	a5,0xa05744
  a2ab86:	4388                	lw	a0,0(a5)
  a2ab88:	8082                	ret

00a2ab8a <hal_pmp_riscv31_config>:
  a2ab8a:	8048                	push	{ra,s0-s2},-16
  a2ab8c:	00052903          	lw	s2,0(a0)
  a2ab90:	10097fbb          	bgeui	s2,16,a2abce <hal_pmp_riscv31_config+0x44>
  a2ab94:	414c                	lw	a1,4(a0)
  a2ab96:	2500                	lbu	s0,8(a0)
  a2ab98:	84aa                	mv	s1,a0
  a2ab9a:	854a                	mv	a0,s2
  a2ab9c:	2089                	jal	ra,a2abde <hal_pmp_riscv31_regs_set_pmpaddr>
  a2ab9e:	85a2                	mv	a1,s0
  a2aba0:	854a                	mv	a0,s2
  a2aba2:	28e9                	jal	ra,a2ac7c <hal_pmp_riscv31_regs_set_memxattr>
  a2aba4:	4480                	lw	s0,8(s1)
  a2aba6:	854a                	mv	a0,s2
  a2aba8:	8021                	srli	s0,s0,0x8
  a2abaa:	881d                	andi	s0,s0,7
  a2abac:	85a2                	mv	a1,s0
  a2abae:	2a39                	jal	ra,a2accc <hal_pmp_riscv31_regs_set_pmpxcfg>
  a2abb0:	449c                	lw	a5,8(s1)
  a2abb2:	854a                	mv	a0,s2
  a2abb4:	0087d713          	srli	a4,a5,0x8
  a2abb8:	8b61                	andi	a4,a4,24
  a2abba:	83a1                	srli	a5,a5,0x8
  a2abbc:	0807f593          	andi	a1,a5,128
  a2abc0:	8c59                	or	s0,s0,a4
  a2abc2:	8dc1                	or	a1,a1,s0
  a2abc4:	2221                	jal	ra,a2accc <hal_pmp_riscv31_regs_set_pmpxcfg>
  a2abc6:	0ff0000f          	fence
  a2abca:	4501                	li	a0,0
  a2abcc:	8044                	popret	{ra,s0-s2},16
  a2abce:	80000537          	lui	a0,0x80000
  a2abd2:	0505                	addi	a0,a0,1 # 80000001 <_gp_+0x7f5cb779>
  a2abd4:	bfe5                	j	a2abcc <hal_pmp_riscv31_config+0x42>

00a2abd6 <hal_pmp_riscv31_funcs_get>:
  a2abd6:	00a3 3ed0 051f      	l.li	a0,0xa33ed0
  a2abdc:	8082                	ret

00a2abde <hal_pmp_riscv31_regs_set_pmpaddr>:
  a2abde:	e501                	bnez	a0,a2abe6 <hal_pmp_riscv31_regs_set_pmpaddr+0x8>
  a2abe0:	3b059073          	csrw	pmpaddr0,a1
  a2abe4:	8082                	ret
  a2abe6:	010512bb          	bnei	a0,1,a2abf0 <hal_pmp_riscv31_regs_set_pmpaddr+0x12>
  a2abea:	3b159073          	csrw	pmpaddr1,a1
  a2abee:	8082                	ret
  a2abf0:	020512bb          	bnei	a0,2,a2abfa <hal_pmp_riscv31_regs_set_pmpaddr+0x1c>
  a2abf4:	3b259073          	csrw	pmpaddr2,a1
  a2abf8:	8082                	ret
  a2abfa:	030512bb          	bnei	a0,3,a2ac04 <hal_pmp_riscv31_regs_set_pmpaddr+0x26>
  a2abfe:	3b359073          	csrw	pmpaddr3,a1
  a2ac02:	8082                	ret
  a2ac04:	040512bb          	bnei	a0,4,a2ac0e <hal_pmp_riscv31_regs_set_pmpaddr+0x30>
  a2ac08:	3b459073          	csrw	pmpaddr4,a1
  a2ac0c:	8082                	ret
  a2ac0e:	050512bb          	bnei	a0,5,a2ac18 <hal_pmp_riscv31_regs_set_pmpaddr+0x3a>
  a2ac12:	3b559073          	csrw	pmpaddr5,a1
  a2ac16:	8082                	ret
  a2ac18:	060512bb          	bnei	a0,6,a2ac22 <hal_pmp_riscv31_regs_set_pmpaddr+0x44>
  a2ac1c:	3b659073          	csrw	pmpaddr6,a1
  a2ac20:	8082                	ret
  a2ac22:	070512bb          	bnei	a0,7,a2ac2c <hal_pmp_riscv31_regs_set_pmpaddr+0x4e>
  a2ac26:	3b759073          	csrw	pmpaddr7,a1
  a2ac2a:	8082                	ret
  a2ac2c:	080512bb          	bnei	a0,8,a2ac36 <hal_pmp_riscv31_regs_set_pmpaddr+0x58>
  a2ac30:	3b859073          	csrw	pmpaddr8,a1
  a2ac34:	8082                	ret
  a2ac36:	090512bb          	bnei	a0,9,a2ac40 <hal_pmp_riscv31_regs_set_pmpaddr+0x62>
  a2ac3a:	3b959073          	csrw	pmpaddr9,a1
  a2ac3e:	8082                	ret
  a2ac40:	0a0512bb          	bnei	a0,10,a2ac4a <hal_pmp_riscv31_regs_set_pmpaddr+0x6c>
  a2ac44:	3ba59073          	csrw	pmpaddr10,a1
  a2ac48:	8082                	ret
  a2ac4a:	0b0512bb          	bnei	a0,11,a2ac54 <hal_pmp_riscv31_regs_set_pmpaddr+0x76>
  a2ac4e:	3bb59073          	csrw	pmpaddr11,a1
  a2ac52:	8082                	ret
  a2ac54:	0c0512bb          	bnei	a0,12,a2ac5e <hal_pmp_riscv31_regs_set_pmpaddr+0x80>
  a2ac58:	3bc59073          	csrw	pmpaddr12,a1
  a2ac5c:	8082                	ret
  a2ac5e:	0d0512bb          	bnei	a0,13,a2ac68 <hal_pmp_riscv31_regs_set_pmpaddr+0x8a>
  a2ac62:	3bd59073          	csrw	pmpaddr13,a1
  a2ac66:	8082                	ret
  a2ac68:	0e0512bb          	bnei	a0,14,a2ac72 <hal_pmp_riscv31_regs_set_pmpaddr+0x94>
  a2ac6c:	3be59073          	csrw	pmpaddr14,a1
  a2ac70:	8082                	ret
  a2ac72:	0f05123b          	bnei	a0,15,a2ac7a <hal_pmp_riscv31_regs_set_pmpaddr+0x9c>
  a2ac76:	3bf59073          	csrw	pmpaddr15,a1
  a2ac7a:	8082                	ret

00a2ac7c <hal_pmp_riscv31_regs_set_memxattr>:
  a2ac7c:	0ff57713          	andi	a4,a0,255
  a2ac80:	080579bb          	bgeui	a0,8,a2aca6 <hal_pmp_riscv31_regs_set_memxattr+0x2a>
  a2ac84:	7d8027f3          	csrr	a5,0x7d8
  a2ac88:	070a                	slli	a4,a4,0x2
  a2ac8a:	9f01                	uxtb	a4
  a2ac8c:	46bd                	li	a3,15
  a2ac8e:	00e696b3          	sll	a3,a3,a4
  a2ac92:	fff6c693          	not	a3,a3
  a2ac96:	8efd                	and	a3,a3,a5
  a2ac98:	00e59733          	sll	a4,a1,a4
  a2ac9c:	8f55                	or	a4,a4,a3
  a2ac9e:	82ba                	mv	t0,a4
  a2aca0:	7d829073          	csrw	0x7d8,t0
  a2aca4:	8082                	ret
  a2aca6:	7d902673          	csrr	a2,0x7d9
  a2acaa:	ff870793          	addi	a5,a4,-8 # 4410cff8 <_gp_+0x436d8770>
  a2acae:	078a                	slli	a5,a5,0x2
  a2acb0:	9f81                	uxtb	a5
  a2acb2:	46bd                	li	a3,15
  a2acb4:	00f696b3          	sll	a3,a3,a5
  a2acb8:	fff6c693          	not	a3,a3
  a2acbc:	8ef1                	and	a3,a3,a2
  a2acbe:	00f597b3          	sll	a5,a1,a5
  a2acc2:	8fd5                	or	a5,a5,a3
  a2acc4:	82be                	mv	t0,a5
  a2acc6:	7d929073          	csrw	0x7d9,t0
  a2acca:	8082                	ret

00a2accc <hal_pmp_riscv31_regs_set_pmpxcfg>:
  a2accc:	00255793          	srli	a5,a0,0x2
  a2acd0:	1141                	addi	sp,sp,-16
  a2acd2:	01078a3b          	beqi	a5,1,a2acfa <hal_pmp_riscv31_regs_set_pmpxcfg+0x2e>
  a2acd6:	c799                	beqz	a5,a2ace4 <hal_pmp_riscv31_regs_set_pmpxcfg+0x18>
  a2acd8:	02078ebb          	beqi	a5,2,a2ad12 <hal_pmp_riscv31_regs_set_pmpxcfg+0x46>
  a2acdc:	031783bb          	beqi	a5,3,a2ad2a <hal_pmp_riscv31_regs_set_pmpxcfg+0x5e>
  a2ace0:	0141                	addi	sp,sp,16
  a2ace2:	8082                	ret
  a2ace4:	3a0027f3          	csrr	a5,pmpcfg0
  a2ace8:	c63e                	sw	a5,12(sp)
  a2acea:	081c                	addi	a5,sp,16
  a2acec:	953e                	add	a0,a0,a5
  a2acee:	feb50e23          	sb	a1,-4(a0)
  a2acf2:	47b2                	lw	a5,12(sp)
  a2acf4:	3a079073          	csrw	pmpcfg0,a5
  a2acf8:	b7e5                	j	a2ace0 <hal_pmp_riscv31_regs_set_pmpxcfg+0x14>
  a2acfa:	3a1027f3          	csrr	a5,pmpcfg1
  a2acfe:	c63e                	sw	a5,12(sp)
  a2ad00:	890d                	andi	a0,a0,3
  a2ad02:	081c                	addi	a5,sp,16
  a2ad04:	953e                	add	a0,a0,a5
  a2ad06:	feb50e23          	sb	a1,-4(a0)
  a2ad0a:	47b2                	lw	a5,12(sp)
  a2ad0c:	3a179073          	csrw	pmpcfg1,a5
  a2ad10:	bfc1                	j	a2ace0 <hal_pmp_riscv31_regs_set_pmpxcfg+0x14>
  a2ad12:	3a2027f3          	csrr	a5,pmpcfg2
  a2ad16:	c63e                	sw	a5,12(sp)
  a2ad18:	890d                	andi	a0,a0,3
  a2ad1a:	081c                	addi	a5,sp,16
  a2ad1c:	953e                	add	a0,a0,a5
  a2ad1e:	feb50e23          	sb	a1,-4(a0)
  a2ad22:	47b2                	lw	a5,12(sp)
  a2ad24:	3a279073          	csrw	pmpcfg2,a5
  a2ad28:	bf65                	j	a2ace0 <hal_pmp_riscv31_regs_set_pmpxcfg+0x14>
  a2ad2a:	3a3027f3          	csrr	a5,pmpcfg3
  a2ad2e:	c63e                	sw	a5,12(sp)
  a2ad30:	890d                	andi	a0,a0,3
  a2ad32:	081c                	addi	a5,sp,16
  a2ad34:	953e                	add	a0,a0,a5
  a2ad36:	feb50e23          	sb	a1,-4(a0)
  a2ad3a:	47b2                	lw	a5,12(sp)
  a2ad3c:	3a379073          	csrw	pmpcfg3,a5
  a2ad40:	b745                	j	a2ace0 <hal_pmp_riscv31_regs_set_pmpxcfg+0x14>

00a2ad42 <hal_reboot_chip>:
  a2ad42:	8018                	push	{ra},-16
  a2ad44:	bfdfe0ef          	jal	ra,a29940 <osal_irq_lock>
  a2ad48:	58b020ef          	jal	ra,a2dad2 <set_cpu_utils_system_boot_magic>
  a2ad4c:	45b010ef          	jal	ra,a2c9a6 <reboot_port_reboot_chip>
  a2ad50:	a001                	j	a2ad50 <hal_reboot_chip+0xe>

00a2ad52 <hal_rkp_lock>:
  a2ad52:	8048                	push	{ra,s0-s2},-16
  a2ad54:	87aff0ef          	jal	ra,a29dce <crypto_get_cpu_type>
  a2ad58:	c509                	beqz	a0,a2ad62 <hal_rkp_lock+0x10>
  a2ad5a:	01050cbb          	beqi	a0,1,a2ad8c <hal_rkp_lock+0x3a>
  a2ad5e:	557d                	li	a0,-1
  a2ad60:	8044                	popret	{ra,s0-s2},16
  a2ad62:	4489                	li	s1,2
  a2ad64:	000f 4240 041f      	l.li	s0,0xf4240
  a2ad6a:	44112937          	lui	s2,0x44112
  a2ad6e:	00992023          	sw	s1,0(s2) # 44112000 <_gp_+0x436dd778>
  a2ad72:	0ff0000f          	fence
  a2ad76:	00092783          	lw	a5,0(s2)
  a2ad7a:	8b9d                	andi	a5,a5,7
  a2ad7c:	00978a63          	beq	a5,s1,a2ad90 <hal_rkp_lock+0x3e>
  a2ad80:	4505                	li	a0,1
  a2ad82:	147d                	addi	s0,s0,-1
  a2ad84:	d7cff0ef          	jal	ra,a2a300 <uapi_tcxo_delay_us>
  a2ad88:	f07d                	bnez	s0,a2ad6e <hal_rkp_lock+0x1c>
  a2ad8a:	bfd1                	j	a2ad5e <hal_rkp_lock+0xc>
  a2ad8c:	4485                	li	s1,1
  a2ad8e:	bfd9                	j	a2ad64 <hal_rkp_lock+0x12>
  a2ad90:	4501                	li	a0,0
  a2ad92:	b7f9                	j	a2ad60 <hal_rkp_lock+0xe>

00a2ad94 <hal_rkp_unlock>:
  a2ad94:	441127b7          	lui	a5,0x44112
  a2ad98:	0007a023          	sw	zero,0(a5) # 44112000 <_gp_+0x436dd778>
  a2ad9c:	0ff0000f          	fence
  a2ada0:	4501                	li	a0,0
  a2ada2:	8082                	ret

00a2ada4 <hal_rkp_kdf_wait_done>:
  a2ada4:	8138                	push	{ra,s0-s1},-32
  a2ada6:	57fd                	li	a5,-1
  a2ada8:	c63e                	sw	a5,12(sp)
  a2adaa:	000f 4240 041f      	l.li	s0,0xf4240
  a2adb0:	441124b7          	lui	s1,0x44112
  a2adb4:	40dc                	lw	a5,4(s1)
  a2adb6:	8b85                	andi	a5,a5,1
  a2adb8:	ef91                	bnez	a5,a2add4 <hal_rkp_kdf_wait_done+0x30>
  a2adba:	4785                	li	a5,1
  a2adbc:	c89c                	sw	a5,16(s1)
  a2adbe:	0ff0000f          	fence
  a2adc2:	c602                	sw	zero,12(sp)
  a2adc4:	441127b7          	lui	a5,0x44112
  a2adc8:	479c                	lw	a5,8(a5)
  a2adca:	c399                	beqz	a5,a2add0 <hal_rkp_kdf_wait_done+0x2c>
  a2adcc:	57fd                	li	a5,-1
  a2adce:	c63e                	sw	a5,12(sp)
  a2add0:	4532                	lw	a0,12(sp)
  a2add2:	8134                	popret	{ra,s0-s1},32
  a2add4:	4505                	li	a0,1
  a2add6:	147d                	addi	s0,s0,-1
  a2add8:	d28ff0ef          	jal	ra,a2a300 <uapi_tcxo_delay_us>
  a2addc:	fc61                	bnez	s0,a2adb4 <hal_rkp_kdf_wait_done+0x10>
  a2adde:	57fd                	li	a5,-1
  a2ade0:	c63e                	sw	a5,12(sp)
  a2ade2:	b7cd                	j	a2adc4 <hal_rkp_kdf_wait_done+0x20>

00a2ade4 <hal_rkp_kdf_hard_calculation>:
  a2ade4:	8238                	push	{ra,s0-s1},-48
  a2ade6:	57fd                	li	a5,-1
  a2ade8:	c63e                	sw	a5,12(sp)
  a2adea:	c802                	sw	zero,16(sp)
  a2adec:	ca02                	sw	zero,20(sp)
  a2adee:	cc02                	sw	zero,24(sp)
  a2adf0:	ce02                	sw	zero,28(sp)
  a2adf2:	0e050863          	beqz	a0,a2aee2 <hal_rkp_kdf_hard_calculation+0xfe>
  a2adf6:	4504                	lw	s1,8(a0)
  a2adf8:	c485                	beqz	s1,a2ae20 <hal_rkp_kdf_hard_calculation+0x3c>
  a2adfa:	4558                	lw	a4,12(a0)
  a2adfc:	1c07193b          	bnei	a4,28,a2ae20 <hal_rkp_kdf_hard_calculation+0x3c>
  a2ae00:	2158                	lbu	a4,4(a0)
  a2ae02:	020777bb          	bgeui	a4,2,a2ae20 <hal_rkp_kdf_hard_calculation+0x3c>
  a2ae06:	4110                	lw	a2,0(a0)
  a2ae08:	842a                	mv	s0,a0
  a2ae0a:	0814                	addi	a3,sp,16
  a2ae0c:	458d                	li	a1,3
  a2ae0e:	00a3 3efc 051f      	l.li	a0,0xa33efc
  a2ae14:	fd3fe0ef          	jal	ra,a29de6 <crypto_get_value_by_index>
  a2ae18:	c62a                	sw	a0,12(sp)
  a2ae1a:	47b2                	lw	a5,12(sp)
  a2ae1c:	c781                	beqz	a5,a2ae24 <hal_rkp_kdf_hard_calculation+0x40>
  a2ae1e:	47b2                	lw	a5,12(sp)
  a2ae20:	853e                	mv	a0,a5
  a2ae22:	8234                	popret	{ra,s0-s1},48
  a2ae24:	4010                	lw	a2,0(s0)
  a2ae26:	0874                	addi	a3,sp,28
  a2ae28:	458d                	li	a1,3
  a2ae2a:	00a3 3f14 051f      	l.li	a0,0xa33f14
  a2ae30:	fb7fe0ef          	jal	ra,a29de6 <crypto_get_value_by_index>
  a2ae34:	c62a                	sw	a0,12(sp)
  a2ae36:	47b2                	lw	a5,12(sp)
  a2ae38:	f3fd                	bnez	a5,a2ae1e <hal_rkp_kdf_hard_calculation+0x3a>
  a2ae3a:	2050                	lbu	a2,4(s0)
  a2ae3c:	0854                	addi	a3,sp,20
  a2ae3e:	4589                	li	a1,2
  a2ae40:	00a3 3ed4 051f      	l.li	a0,0xa33ed4
  a2ae46:	fa1fe0ef          	jal	ra,a29de6 <crypto_get_value_by_index>
  a2ae4a:	c62a                	sw	a0,12(sp)
  a2ae4c:	47b2                	lw	a5,12(sp)
  a2ae4e:	fbe1                	bnez	a5,a2ae1e <hal_rkp_kdf_hard_calculation+0x3a>
  a2ae50:	3050                	lbu	a2,5(s0)
  a2ae52:	0834                	addi	a3,sp,24
  a2ae54:	458d                	li	a1,3
  a2ae56:	00a3 3ee4 051f      	l.li	a0,0xa33ee4
  a2ae5c:	f8bfe0ef          	jal	ra,a29de6 <crypto_get_value_by_index>
  a2ae60:	c62a                	sw	a0,12(sp)
  a2ae62:	47b2                	lw	a5,12(sp)
  a2ae64:	ffcd                	bnez	a5,a2ae1e <hal_rkp_kdf_hard_calculation+0x3a>
  a2ae66:	44112737          	lui	a4,0x44112
  a2ae6a:	281c                	lbu	a5,16(s0)
  a2ae6c:	4672                	lw	a2,28(sp)
  a2ae6e:	36072683          	lw	a3,864(a4) # 44112360 <_gp_+0x436ddad8>
  a2ae72:	00c797b3          	sll	a5,a5,a2
  a2ae76:	8fd5                	or	a5,a5,a3
  a2ae78:	36f72023          	sw	a5,864(a4)
  a2ae7c:	0ff0000f          	fence
  a2ae80:	4701                	li	a4,0
  a2ae82:	87a6                	mv	a5,s1
  a2ae84:	1104 48d0 061f      	l.li	a2,0x110448d0
  a2ae8a:	4454                	lw	a3,12(s0)
  a2ae8c:	8289                	srli	a3,a3,0x2
  a2ae8e:	04d76063          	bltu	a4,a3,a2aece <hal_rkp_kdf_hard_calculation+0xea>
  a2ae92:	44112637          	lui	a2,0x44112
  a2ae96:	425c                	lw	a5,4(a2)
  a2ae98:	4762                	lw	a4,24(sp)
  a2ae9a:	76d1                	lui	a3,0xffff4
  a2ae9c:	16fd                	addi	a3,a3,-1 # ffff3fff <_gp_+0xff5bf777>
  a2ae9e:	8b0d                	andi	a4,a4,3
  a2aea0:	8ff5                	and	a5,a5,a3
  a2aea2:	1ce7a79b          	orshf	a5,a5,a4,sll,14
  a2aea6:	4752                	lw	a4,20(sp)
  a2aea8:	9bc5                	andi	a5,a5,-15
  a2aeaa:	8b1d                	andi	a4,a4,7
  a2aeac:	02e7a79b          	orshf	a5,a5,a4,sll,1
  a2aeb0:	4742                	lw	a4,16(sp)
  a2aeb2:	e0f7f793          	andi	a5,a5,-497
  a2aeb6:	8b7d                	andi	a4,a4,31
  a2aeb8:	08e7a79b          	orshf	a5,a5,a4,sll,4
  a2aebc:	0017e793          	ori	a5,a5,1
  a2aec0:	c25c                	sw	a5,4(a2)
  a2aec2:	0ff0000f          	fence
  a2aec6:	3df9                	jal	ra,a2ada4 <hal_rkp_kdf_wait_done>
  a2aec8:	c62a                	sw	a0,12(sp)
  a2aeca:	47b2                	lw	a5,12(sp)
  a2aecc:	bf89                	j	a2ae1e <hal_rkp_kdf_hard_calculation+0x3a>
  a2aece:	438c                	lw	a1,0(a5)
  a2aed0:	00c706b3          	add	a3,a4,a2
  a2aed4:	068a                	slli	a3,a3,0x2
  a2aed6:	c28c                	sw	a1,0(a3)
  a2aed8:	0ff0000f          	fence
  a2aedc:	0705                	addi	a4,a4,1
  a2aede:	0791                	addi	a5,a5,4 # 44112004 <_gp_+0x436dd77c>
  a2aee0:	b76d                	j	a2ae8a <hal_rkp_kdf_hard_calculation+0xa6>
  a2aee2:	57fd                	li	a5,-1
  a2aee4:	bf35                	j	a2ae20 <hal_rkp_kdf_hard_calculation+0x3c>

00a2aee6 <inner_kslot_chn_is_locked>:
  a2aee6:	44114737          	lui	a4,0x44114
  a2aeea:	b3072783          	lw	a5,-1232(a4) # 44113b30 <_gp_+0x436df2a8>
  a2aeee:	76e1                	lui	a3,0xffff8
  a2aef0:	16fd                	addi	a3,a3,-1 # ffff7fff <_gp_+0xff5c3777>
  a2aef2:	8985                	andi	a1,a1,1
  a2aef4:	8ff5                	and	a5,a5,a3
  a2aef6:	1eb7a79b          	orshf	a5,a5,a1,sll,15
  a2aefa:	3ff57513          	andi	a0,a0,1023
  a2aefe:	c007f793          	andi	a5,a5,-1024
  a2af02:	8fc9                	or	a5,a5,a0
  a2af04:	b2f72823          	sw	a5,-1232(a4)
  a2af08:	0ff0000f          	fence
  a2af0c:	b3472503          	lw	a0,-1228(a4)
  a2af10:	891d                	andi	a0,a0,7
  a2af12:	c211                	beqz	a2,a2af16 <inner_kslot_chn_is_locked+0x30>
  a2af14:	c208                	sw	a0,0(a2)
  a2af16:	00a03533          	snez	a0,a0
  a2af1a:	8082                	ret

00a2af1c <inner_chk_kslot_busy>:
  a2af1c:	8028                	push	{ra,s0},-16
  a2af1e:	842a                	mv	s0,a0
  a2af20:	eaffe0ef          	jal	ra,a29dce <crypto_get_cpu_type>
  a2af24:	c911                	beqz	a0,a2af38 <inner_chk_kslot_busy+0x1c>
  a2af26:	0105173b          	bnei	a0,1,a2af42 <inner_chk_kslot_busy+0x26>
  a2af2a:	441147b7          	lui	a5,0x44114
  a2af2e:	b147a783          	lw	a5,-1260(a5) # 44113b14 <_gp_+0x436df28c>
  a2af32:	c01c                	sw	a5,0(s0)
  a2af34:	4501                	li	a0,0
  a2af36:	8024                	popret	{ra,s0},16
  a2af38:	441147b7          	lui	a5,0x44114
  a2af3c:	b107a783          	lw	a5,-1264(a5) # 44113b10 <_gp_+0x436df288>
  a2af40:	bfcd                	j	a2af32 <inner_chk_kslot_busy+0x16>
  a2af42:	4505                	li	a0,1
  a2af44:	bfcd                	j	a2af36 <inner_chk_kslot_busy+0x1a>

00a2af46 <inner_kslot_is_busy>:
  a2af46:	8118                	push	{ra},-32
  a2af48:	0068                	addi	a0,sp,12
  a2af4a:	c602                	sw	zero,12(sp)
  a2af4c:	3fc1                	jal	ra,a2af1c <inner_chk_kslot_busy>
  a2af4e:	4785                	li	a5,1
  a2af50:	e119                	bnez	a0,a2af56 <inner_kslot_is_busy+0x10>
  a2af52:	47b2                	lw	a5,12(sp)
  a2af54:	8b85                	andi	a5,a5,1
  a2af56:	853e                	mv	a0,a5
  a2af58:	8114                	popret	{ra},32

00a2af5a <hal_keyslot_lock>:
  a2af5a:	8248                	push	{ra,s0-s2},-48
  a2af5c:	57fd                	li	a5,-1
  a2af5e:	c62e                	sw	a1,12(sp)
  a2af60:	84aa                	mv	s1,a0
  a2af62:	cc3e                	sw	a5,24(sp)
  a2af64:	e6bfe0ef          	jal	ra,a29dce <crypto_get_cpu_type>
  a2af68:	45b2                	lw	a1,12(sp)
  a2af6a:	ce02                	sw	zero,28(sp)
  a2af6c:	892a                	mv	s2,a0
  a2af6e:	c591                	beqz	a1,a2af7a <hal_keyslot_lock+0x20>
  a2af70:	0105863b          	beqi	a1,1,a2af88 <hal_keyslot_lock+0x2e>
  a2af74:	4401                	li	s0,0
  a2af76:	57fd                	li	a5,-1
  a2af78:	a019                	j	a2af7e <hal_keyslot_lock+0x24>
  a2af7a:	4401                	li	s0,0
  a2af7c:	4781                	li	a5,0
  a2af7e:	cc3e                	sw	a5,24(sp)
  a2af80:	47e2                	lw	a5,24(sp)
  a2af82:	c789                	beqz	a5,a2af8c <hal_keyslot_lock+0x32>
  a2af84:	4562                	lw	a0,24(sp)
  a2af86:	8244                	popret	{ra,s0-s2},48
  a2af88:	4405                	li	s0,1
  a2af8a:	bfcd                	j	a2af7c <hal_keyslot_lock+0x22>
  a2af8c:	4601                	li	a2,0
  a2af8e:	85a2                	mv	a1,s0
  a2af90:	8526                	mv	a0,s1
  a2af92:	3f91                	jal	ra,a2aee6 <inner_kslot_chn_is_locked>
  a2af94:	c119                	beqz	a0,a2af9a <hal_keyslot_lock+0x40>
  a2af96:	557d                	li	a0,-1
  a2af98:	b7fd                	j	a2af86 <hal_keyslot_lock+0x2c>
  a2af9a:	3775                	jal	ra,a2af46 <inner_kslot_is_busy>
  a2af9c:	fd6d                	bnez	a0,a2af96 <hal_keyslot_lock+0x3c>
  a2af9e:	04091763          	bnez	s2,a2afec <hal_keyslot_lock+0x92>
  a2afa2:	4909                	li	s2,2
  a2afa4:	0000 1b00 071f      	l.li	a4,0x1b00
  a2afaa:	441127b7          	lui	a5,0x44112
  a2afae:	973e                	add	a4,a4,a5
  a2afb0:	431c                	lw	a5,0(a4)
  a2afb2:	76e1                	lui	a3,0xffff8
  a2afb4:	16fd                	addi	a3,a3,-1 # ffff7fff <_gp_+0xff5c3777>
  a2afb6:	8ff5                	and	a5,a5,a3
  a2afb8:	1e87a79b          	orshf	a5,a5,s0,sll,15
  a2afbc:	3ff4f693          	andi	a3,s1,1023
  a2afc0:	c007f793          	andi	a5,a5,-1024
  a2afc4:	8fd5                	or	a5,a5,a3
  a2afc6:	001006b7          	lui	a3,0x100
  a2afca:	8fd5                	or	a5,a5,a3
  a2afcc:	c31c                	sw	a5,0(a4)
  a2afce:	0ff0000f          	fence
  a2afd2:	0870                	addi	a2,sp,28
  a2afd4:	85a2                	mv	a1,s0
  a2afd6:	8526                	mv	a0,s1
  a2afd8:	3739                	jal	ra,a2aee6 <inner_kslot_chn_is_locked>
  a2afda:	dd55                	beqz	a0,a2af96 <hal_keyslot_lock+0x3c>
  a2afdc:	4572                	lw	a0,28(sp)
  a2afde:	41250533          	sub	a0,a0,s2
  a2afe2:	00a03533          	snez	a0,a0
  a2afe6:	40a00533          	neg	a0,a0
  a2afea:	bf71                	j	a2af86 <hal_keyslot_lock+0x2c>
  a2afec:	4905                	li	s2,1
  a2afee:	0000 1b04 071f      	l.li	a4,0x1b04
  a2aff4:	bf5d                	j	a2afaa <hal_keyslot_lock+0x50>

00a2aff6 <hal_keyslot_unlock>:
  a2aff6:	8248                	push	{ra,s0-s2},-48
  a2aff8:	57fd                	li	a5,-1
  a2affa:	c62e                	sw	a1,12(sp)
  a2affc:	842a                	mv	s0,a0
  a2affe:	cc3e                	sw	a5,24(sp)
  a2b000:	dcffe0ef          	jal	ra,a29dce <crypto_get_cpu_type>
  a2b004:	45b2                	lw	a1,12(sp)
  a2b006:	892a                	mv	s2,a0
  a2b008:	c591                	beqz	a1,a2b014 <hal_keyslot_unlock+0x1e>
  a2b00a:	010586bb          	beqi	a1,1,a2b024 <hal_keyslot_unlock+0x2e>
  a2b00e:	4481                	li	s1,0
  a2b010:	57fd                	li	a5,-1
  a2b012:	a019                	j	a2b018 <hal_keyslot_unlock+0x22>
  a2b014:	4481                	li	s1,0
  a2b016:	4781                	li	a5,0
  a2b018:	cc3e                	sw	a5,24(sp)
  a2b01a:	47e2                	lw	a5,24(sp)
  a2b01c:	c791                	beqz	a5,a2b028 <hal_keyslot_unlock+0x32>
  a2b01e:	47e2                	lw	a5,24(sp)
  a2b020:	853e                	mv	a0,a5
  a2b022:	8244                	popret	{ra,s0-s2},48
  a2b024:	4485                	li	s1,1
  a2b026:	bfc5                	j	a2b016 <hal_keyslot_unlock+0x20>
  a2b028:	3f39                	jal	ra,a2af46 <inner_kslot_is_busy>
  a2b02a:	57fd                	li	a5,-1
  a2b02c:	f975                	bnez	a0,a2b020 <hal_keyslot_unlock+0x2a>
  a2b02e:	4601                	li	a2,0
  a2b030:	85a6                	mv	a1,s1
  a2b032:	8522                	mv	a0,s0
  a2b034:	3d4d                	jal	ra,a2aee6 <inner_kslot_chn_is_locked>
  a2b036:	4781                	li	a5,0
  a2b038:	d565                	beqz	a0,a2b020 <hal_keyslot_unlock+0x2a>
  a2b03a:	06090363          	beqz	s2,a2b0a0 <hal_keyslot_unlock+0xaa>
  a2b03e:	011917bb          	bnei	s2,1,a2b09c <hal_keyslot_unlock+0xa6>
  a2b042:	0000 1b04 079f      	l.li	a5,0x1b04
  a2b048:	44112737          	lui	a4,0x44112
  a2b04c:	97ba                	add	a5,a5,a4
  a2b04e:	4388                	lw	a0,0(a5)
  a2b050:	7761                	lui	a4,0xffff8
  a2b052:	177d                	addi	a4,a4,-1 # ffff7fff <_gp_+0xff5c3777>
  a2b054:	8d79                	and	a0,a0,a4
  a2b056:	1e95251b          	orshf	a0,a0,s1,sll,15
  a2b05a:	3ff47413          	andi	s0,s0,1023
  a2b05e:	c0057513          	andi	a0,a0,-1024
  a2b062:	8d41                	or	a0,a0,s0
  a2b064:	ffef ffff 071f      	l.li	a4,0xffefffff
  a2b06a:	8d79                	and	a0,a0,a4
  a2b06c:	c388                	sw	a0,0(a5)
  a2b06e:	0ff0000f          	fence
  a2b072:	000f 4240 041f      	l.li	s0,0xf4240
  a2b078:	35f9                	jal	ra,a2af46 <inner_kslot_is_busy>
  a2b07a:	c51d                	beqz	a0,a2b0a8 <hal_keyslot_unlock+0xb2>
  a2b07c:	4505                	li	a0,1
  a2b07e:	147d                	addi	s0,s0,-1
  a2b080:	a80ff0ef          	jal	ra,a2a300 <uapi_tcxo_delay_us>
  a2b084:	f875                	bnez	s0,a2b078 <hal_keyslot_unlock+0x82>
  a2b086:	57fd                	li	a5,-1
  a2b088:	cc3e                	sw	a5,24(sp)
  a2b08a:	47e2                	lw	a5,24(sp)
  a2b08c:	fbc9                	bnez	a5,a2b01e <hal_keyslot_unlock+0x28>
  a2b08e:	0868                	addi	a0,sp,28
  a2b090:	ce02                	sw	zero,28(sp)
  a2b092:	3569                	jal	ra,a2af1c <inner_chk_kslot_busy>
  a2b094:	e501                	bnez	a0,a2b09c <hal_keyslot_unlock+0xa6>
  a2b096:	47f2                	lw	a5,28(sp)
  a2b098:	8b89                	andi	a5,a5,2
  a2b09a:	d3d9                	beqz	a5,a2b020 <hal_keyslot_unlock+0x2a>
  a2b09c:	57fd                	li	a5,-1
  a2b09e:	b749                	j	a2b020 <hal_keyslot_unlock+0x2a>
  a2b0a0:	0000 1b00 079f      	l.li	a5,0x1b00
  a2b0a6:	b74d                	j	a2b048 <hal_keyslot_unlock+0x52>
  a2b0a8:	4781                	li	a5,0
  a2b0aa:	bff9                	j	a2b088 <hal_keyslot_unlock+0x92>

00a2b0ac <inner_klad_set_key_odd>:
  a2b0ac:	441137b7          	lui	a5,0x44113
  a2b0b0:	4b98                	lw	a4,16(a5)
  a2b0b2:	ffe77793          	andi	a5,a4,-2
  a2b0b6:	c119                	beqz	a0,a2b0bc <inner_klad_set_key_odd+0x10>
  a2b0b8:	00176793          	ori	a5,a4,1
  a2b0bc:	44113737          	lui	a4,0x44113
  a2b0c0:	cb1c                	sw	a5,16(a4)
  a2b0c2:	0ff0000f          	fence
  a2b0c6:	8082                	ret

00a2b0c8 <inner_klad_wait_com_route_done>:
  a2b0c8:	8138                	push	{ra,s0-s1},-32
  a2b0ca:	57fd                	li	a5,-1
  a2b0cc:	c23e                	sw	a5,4(sp)
  a2b0ce:	000f 4240 041f      	l.li	s0,0xf4240
  a2b0d4:	441134b7          	lui	s1,0x44113
  a2b0d8:	0844a783          	lw	a5,132(s1) # 44113084 <_gp_+0x436de7fc>
  a2b0dc:	8b85                	andi	a5,a5,1
  a2b0de:	eb85                	bnez	a5,a2b10e <inner_klad_wait_com_route_done+0x46>
  a2b0e0:	40fc                	lw	a5,68(s1)
  a2b0e2:	0017e793          	ori	a5,a5,1
  a2b0e6:	c43e                	sw	a5,8(sp)
  a2b0e8:	c0fc                	sw	a5,68(s1)
  a2b0ea:	0ff0000f          	fence
  a2b0ee:	c202                	sw	zero,4(sp)
  a2b0f0:	44113737          	lui	a4,0x44113
  a2b0f4:	08872783          	lw	a5,136(a4) # 44113088 <_gp_+0x436de800>
  a2b0f8:	5f1c                	lw	a5,56(a4)
  a2b0fa:	5f58                	lw	a4,60(a4)
  a2b0fc:	8fd9                	or	a5,a5,a4
  a2b0fe:	00f037b3          	snez	a5,a5
  a2b102:	40f007b3          	neg	a5,a5
  a2b106:	c23e                	sw	a5,4(sp)
  a2b108:	4792                	lw	a5,4(sp)
  a2b10a:	4512                	lw	a0,4(sp)
  a2b10c:	8134                	popret	{ra,s0-s1},32
  a2b10e:	4505                	li	a0,1
  a2b110:	147d                	addi	s0,s0,-1
  a2b112:	9eeff0ef          	jal	ra,a2a300 <uapi_tcxo_delay_us>
  a2b116:	f069                	bnez	s0,a2b0d8 <inner_klad_wait_com_route_done+0x10>
  a2b118:	bfe1                	j	a2b0f0 <inner_klad_wait_com_route_done+0x28>

00a2b11a <hal_klad_lock>:
  a2b11a:	8158                	push	{ra,s0-s3},-48
  a2b11c:	57fd                	li	a5,-1
  a2b11e:	c63e                	sw	a5,12(sp)
  a2b120:	0000 2710 041f      	l.li	s0,0x2710
  a2b126:	4905                	li	s2,1
  a2b128:	441134b7          	lui	s1,0x44113
  a2b12c:	4991                	li	s3,4
  a2b12e:	ca1fe0ef          	jal	ra,a29dce <crypto_get_cpu_type>
  a2b132:	57fd                	li	a5,-1
  a2b134:	03251463          	bne	a0,s2,a2b15c <hal_klad_lock+0x42>
  a2b138:	0724aa23          	sw	s2,116(s1) # 44113074 <_gp_+0x436de7ec>
  a2b13c:	0ff0000f          	fence
  a2b140:	5cf8                	lw	a4,124(s1)
  a2b142:	57fd                	li	a5,-1
  a2b144:	8b31                	andi	a4,a4,12
  a2b146:	01370b63          	beq	a4,s3,a2b15c <hal_klad_lock+0x42>
  a2b14a:	0804a783          	lw	a5,128(s1)
  a2b14e:	9f81                	uxtb	a5
  a2b150:	f5678793          	addi	a5,a5,-170 # 44112f56 <_gp_+0x436de6ce>
  a2b154:	00f037b3          	snez	a5,a5
  a2b158:	40f007b3          	neg	a5,a5
  a2b15c:	c63e                	sw	a5,12(sp)
  a2b15e:	47b2                	lw	a5,12(sp)
  a2b160:	cb81                	beqz	a5,a2b170 <hal_klad_lock+0x56>
  a2b162:	4505                	li	a0,1
  a2b164:	147d                	addi	s0,s0,-1
  a2b166:	99aff0ef          	jal	ra,a2a300 <uapi_tcxo_delay_us>
  a2b16a:	f071                	bnez	s0,a2b12e <hal_klad_lock+0x14>
  a2b16c:	557d                	li	a0,-1
  a2b16e:	8154                	popret	{ra,s0-s3},48
  a2b170:	4501                	li	a0,0
  a2b172:	bff5                	j	a2b16e <hal_klad_lock+0x54>

00a2b174 <hal_klad_unlock>:
  a2b174:	8018                	push	{ra},-16
  a2b176:	c59fe0ef          	jal	ra,a29dce <crypto_get_cpu_type>
  a2b17a:	01051cbb          	bnei	a0,1,a2b1ac <hal_klad_unlock+0x38>
  a2b17e:	44113737          	lui	a4,0x44113
  a2b182:	08072683          	lw	a3,128(a4) # 44113080 <_gp_+0x436de7f8>
  a2b186:	0aa00613          	li	a2,170
  a2b18a:	4781                	li	a5,0
  a2b18c:	9e81                	uxtb	a3
  a2b18e:	00c69d63          	bne	a3,a2,a2b1a8 <hal_klad_unlock+0x34>
  a2b192:	df28                	sw	a0,120(a4)
  a2b194:	0ff0000f          	fence
  a2b198:	5f7c                	lw	a5,124(a4)
  a2b19a:	0307f793          	andi	a5,a5,48
  a2b19e:	17c1                	addi	a5,a5,-16
  a2b1a0:	0017b793          	seqz	a5,a5
  a2b1a4:	40f007b3          	neg	a5,a5
  a2b1a8:	853e                	mv	a0,a5
  a2b1aa:	8014                	popret	{ra},16
  a2b1ac:	57fd                	li	a5,-1
  a2b1ae:	bfed                	j	a2b1a8 <hal_klad_unlock+0x34>

00a2b1b0 <hal_klad_set_key_crypto_cfg>:
  a2b1b0:	0a000793          	li	a5,160
  a2b1b4:	02f60563          	beq	a2,a5,a2b1de <hal_klad_set_key_crypto_cfg+0x2e>
  a2b1b8:	00c7e963          	bltu	a5,a2,a2b1ca <hal_klad_set_key_crypto_cfg+0x1a>
  a2b1bc:	05000693          	li	a3,80
  a2b1c0:	200615bb          	bnei	a2,32,a2b1d6 <hal_klad_set_key_crypto_cfg+0x26>
  a2b1c4:	02000693          	li	a3,32
  a2b1c8:	a829                	j	a2b1e2 <hal_klad_set_key_crypto_cfg+0x32>
  a2b1ca:	0a100793          	li	a5,161
  a2b1ce:	04f60363          	beq	a2,a5,a2b214 <hal_klad_set_key_crypto_cfg+0x64>
  a2b1d2:	0a200693          	li	a3,162
  a2b1d6:	00d60663          	beq	a2,a3,a2b1e2 <hal_klad_set_key_crypto_cfg+0x32>
  a2b1da:	557d                	li	a0,-1
  a2b1dc:	8082                	ret
  a2b1de:	0a000693          	li	a3,160
  a2b1e2:	44113637          	lui	a2,0x44113
  a2b1e6:	4a58                	lw	a4,20(a2)
  a2b1e8:	7781                	lui	a5,0xfffe0
  a2b1ea:	17fd                	addi	a5,a5,-1 # fffdffff <_gp_+0xff5ab777>
  a2b1ec:	8ff9                	and	a5,a5,a4
  a2b1ee:	8985                	andi	a1,a1,1
  a2b1f0:	22b7a59b          	orshf	a1,a5,a1,sll,17
  a2b1f4:	77c1                	lui	a5,0xffff0
  a2b1f6:	17fd                	addi	a5,a5,-1 # fffeffff <_gp_+0xff5bb777>
  a2b1f8:	8905                	andi	a0,a0,1
  a2b1fa:	8fed                	and	a5,a5,a1
  a2b1fc:	20a7a79b          	orshf	a5,a5,a0,sll,16
  a2b200:	757d                	lui	a0,0xfffff
  a2b202:	053d                	addi	a0,a0,15 # fffff00f <_gp_+0xff5ca787>
  a2b204:	8fe9                	and	a5,a5,a0
  a2b206:	08d7a79b          	orshf	a5,a5,a3,sll,4
  a2b20a:	ca5c                	sw	a5,20(a2)
  a2b20c:	0ff0000f          	fence
  a2b210:	4501                	li	a0,0
  a2b212:	8082                	ret
  a2b214:	0a100693          	li	a3,161
  a2b218:	b7e9                	j	a2b1e2 <hal_klad_set_key_crypto_cfg+0x32>

00a2b21a <hal_klad_set_key_dest_cfg>:
  a2b21a:	0205633b          	bltui	a0,2,a2b226 <hal_klad_set_key_dest_cfg+0xc>
  a2b21e:	02050bbb          	beqi	a0,2,a2b24c <hal_klad_set_key_dest_cfg+0x32>
  a2b222:	557d                	li	a0,-1
  a2b224:	8082                	ret
  a2b226:	4705                	li	a4,1
  a2b228:	441137b7          	lui	a5,0x44113
  a2b22c:	4bdc                	lw	a5,20(a5)
  a2b22e:	9be1                	andi	a5,a5,-8
  a2b230:	8fd9                	or	a5,a5,a4
  a2b232:	0205133b          	bnei	a0,2,a2b23e <hal_klad_set_key_dest_cfg+0x24>
  a2b236:	fff3 ffff 071f      	l.li	a4,0xfff3ffff
  a2b23c:	8ff9                	and	a5,a5,a4
  a2b23e:	44113737          	lui	a4,0x44113
  a2b242:	cb5c                	sw	a5,20(a4)
  a2b244:	0ff0000f          	fence
  a2b248:	4501                	li	a0,0
  a2b24a:	8082                	ret
  a2b24c:	471d                	li	a4,7
  a2b24e:	dde9                	beqz	a1,a2b228 <hal_klad_set_key_dest_cfg+0xe>
  a2b250:	bfc9                	j	a2b222 <hal_klad_set_key_dest_cfg+0x8>

00a2b252 <hal_klad_set_key_secure_cfg>:
  a2b252:	c539                	beqz	a0,a2b2a0 <hal_klad_set_key_secure_cfg+0x4e>
  a2b254:	441136b7          	lui	a3,0x44113
  a2b258:	4e9c                	lw	a5,24(a3)
  a2b25a:	3118                	lbu	a4,1(a0)
  a2b25c:	fdf7f793          	andi	a5,a5,-33
  a2b260:	8b05                	andi	a4,a4,1
  a2b262:	0ae7a79b          	orshf	a5,a5,a4,sll,5
  a2b266:	2138                	lbu	a4,2(a0)
  a2b268:	9bbd                	andi	a5,a5,-17
  a2b26a:	8b05                	andi	a4,a4,1
  a2b26c:	08e7a79b          	orshf	a5,a5,a4,sll,4
  a2b270:	3138                	lbu	a4,3(a0)
  a2b272:	9bdd                	andi	a5,a5,-9
  a2b274:	8b05                	andi	a4,a4,1
  a2b276:	06e7a79b          	orshf	a5,a5,a4,sll,3
  a2b27a:	2158                	lbu	a4,4(a0)
  a2b27c:	9bed                	andi	a5,a5,-5
  a2b27e:	8b05                	andi	a4,a4,1
  a2b280:	04e7a79b          	orshf	a5,a5,a4,sll,2
  a2b284:	3158                	lbu	a4,5(a0)
  a2b286:	9bf5                	andi	a5,a5,-3
  a2b288:	8b05                	andi	a4,a4,1
  a2b28a:	02e7a79b          	orshf	a5,a5,a4,sll,1
  a2b28e:	2118                	lbu	a4,0(a0)
  a2b290:	9bf9                	andi	a5,a5,-2
  a2b292:	8b05                	andi	a4,a4,1
  a2b294:	8fd9                	or	a5,a5,a4
  a2b296:	ce9c                	sw	a5,24(a3)
  a2b298:	0ff0000f          	fence
  a2b29c:	4501                	li	a0,0
  a2b29e:	8082                	ret
  a2b2a0:	557d                	li	a0,-1
  a2b2a2:	8082                	ret

00a2b2a4 <hal_klad_set_key_addr>:
  a2b2a4:	e105                	bnez	a0,a2b2c4 <hal_klad_set_key_addr+0x20>
  a2b2a6:	44113737          	lui	a4,0x44113
  a2b2aa:	4b1c                	lw	a5,16(a4)
  a2b2ac:	0586                	slli	a1,a1,0x1
  a2b2ae:	3fe5f593          	andi	a1,a1,1022
  a2b2b2:	c007f793          	andi	a5,a5,-1024
  a2b2b6:	8ddd                	or	a1,a1,a5
  a2b2b8:	cb0c                	sw	a1,16(a4)
  a2b2ba:	0ff0000f          	fence
  a2b2be:	4781                	li	a5,0
  a2b2c0:	853e                	mv	a0,a5
  a2b2c2:	8082                	ret
  a2b2c4:	57fd                	li	a5,-1
  a2b2c6:	01f51ebb          	bnei	a0,1,a2b2c0 <hal_klad_set_key_addr+0x1c>
  a2b2ca:	44113737          	lui	a4,0x44113
  a2b2ce:	4b1c                	lw	a5,16(a4)
  a2b2d0:	3ff5f593          	andi	a1,a1,1023
  a2b2d4:	bff9                	j	a2b2b2 <hal_klad_set_key_addr+0xe>

00a2b2d6 <hal_klad_start_com_route>:
  a2b2d6:	8148                	push	{ra,s0-s2},-32
  a2b2d8:	57fd                	li	a5,-1
  a2b2da:	c23e                	sw	a5,4(sp)
  a2b2dc:	c402                	sw	zero,8(sp)
  a2b2de:	c602                	sw	zero,12(sp)
  a2b2e0:	cdc5                	beqz	a1,a2b398 <hal_klad_start_com_route+0xc2>
  a2b2e2:	41d8                	lw	a4,4(a1)
  a2b2e4:	cf19                	beqz	a4,a2b302 <hal_klad_start_com_route+0x2c>
  a2b2e6:	8932                	mv	s2,a2
  a2b2e8:	84ae                	mv	s1,a1
  a2b2ea:	862a                	mv	a2,a0
  a2b2ec:	0074                	addi	a3,sp,12
  a2b2ee:	458d                	li	a1,3
  a2b2f0:	00a3 3f44 051f      	l.li	a0,0xa33f44
  a2b2f6:	af1fe0ef          	jal	ra,a29de6 <crypto_get_value_by_index>
  a2b2fa:	c22a                	sw	a0,4(sp)
  a2b2fc:	4792                	lw	a5,4(sp)
  a2b2fe:	c781                	beqz	a5,a2b306 <hal_klad_start_com_route+0x30>
  a2b300:	4792                	lw	a5,4(sp)
  a2b302:	853e                	mv	a0,a5
  a2b304:	8144                	popret	{ra,s0-s2},32
  a2b306:	20b0                	lbu	a2,2(s1)
  a2b308:	0034                	addi	a3,sp,8
  a2b30a:	458d                	li	a1,3
  a2b30c:	00a3 3f2c 051f      	l.li	a0,0xa33f2c
  a2b312:	ad5fe0ef          	jal	ra,a29de6 <crypto_get_value_by_index>
  a2b316:	c22a                	sw	a0,4(sp)
  a2b318:	4792                	lw	a5,4(sp)
  a2b31a:	f3fd                	bnez	a5,a2b300 <hal_klad_start_com_route+0x2a>
  a2b31c:	20bc                	lbu	a5,2(s1)
  a2b31e:	4501                	li	a0,0
  a2b320:	e391                	bnez	a5,a2b324 <hal_klad_start_com_route+0x4e>
  a2b322:	3088                	lbu	a0,1(s1)
  a2b324:	00091463          	bnez	s2,a2b32c <hal_klad_start_com_route+0x56>
  a2b328:	d85ff0ef          	jal	ra,a2b0ac <inner_klad_set_key_odd>
  a2b32c:	4422                	lw	s0,8(sp)
  a2b32e:	47b2                	lw	a5,12(sp)
  a2b330:	880d                	andi	s0,s0,3
  a2b332:	041a                	slli	s0,s0,0x6
  a2b334:	8bfd                	andi	a5,a5,31
  a2b336:	00146413          	ori	s0,s0,1
  a2b33a:	10f4241b          	orshf	s0,s0,a5,sll,8
  a2b33e:	441137b7          	lui	a5,0x44113
  a2b342:	0887a223          	sw	s0,132(a5) # 44113084 <_gp_+0x436de7fc>
  a2b346:	0ff0000f          	fence
  a2b34a:	d7fff0ef          	jal	ra,a2b0c8 <inner_klad_wait_com_route_done>
  a2b34e:	c22a                	sw	a0,4(sp)
  a2b350:	4792                	lw	a5,4(sp)
  a2b352:	f7dd                	bnez	a5,a2b300 <hal_klad_start_com_route+0x2a>
  a2b354:	20bc                	lbu	a5,2(s1)
  a2b356:	d7cd                	beqz	a5,a2b300 <hal_klad_start_com_route+0x2a>
  a2b358:	00091563          	bnez	s2,a2b362 <hal_klad_start_com_route+0x8c>
  a2b35c:	4505                	li	a0,1
  a2b35e:	d4fff0ef          	jal	ra,a2b0ac <inner_klad_set_key_odd>
  a2b362:	47a2                	lw	a5,8(sp)
  a2b364:	f3f47413          	andi	s0,s0,-193
  a2b368:	ffff e0ff 071f      	l.li	a4,0xffffe0ff
  a2b36e:	8b8d                	andi	a5,a5,3
  a2b370:	0cf4241b          	orshf	s0,s0,a5,sll,6
  a2b374:	47b2                	lw	a5,12(sp)
  a2b376:	8c79                	and	s0,s0,a4
  a2b378:	8bfd                	andi	a5,a5,31
  a2b37a:	10f4241b          	orshf	s0,s0,a5,sll,8
  a2b37e:	00146413          	ori	s0,s0,1
  a2b382:	441137b7          	lui	a5,0x44113
  a2b386:	0887a223          	sw	s0,132(a5) # 44113084 <_gp_+0x436de7fc>
  a2b38a:	0ff0000f          	fence
  a2b38e:	d3bff0ef          	jal	ra,a2b0c8 <inner_klad_wait_com_route_done>
  a2b392:	c22a                	sw	a0,4(sp)
  a2b394:	4792                	lw	a5,4(sp)
  a2b396:	b7ad                	j	a2b300 <hal_klad_start_com_route+0x2a>
  a2b398:	57fd                	li	a5,-1
  a2b39a:	b7a5                	j	a2b302 <hal_klad_start_com_route+0x2c>

00a2b39c <hal_fapc_set_region_addr>:
  a2b39c:	040577bb          	bgeui	a0,4,a2b3ba <hal_fapc_set_region_addr+0x1e>
  a2b3a0:	1200 0400 079f      	l.li	a5,0x12000400
  a2b3a6:	953e                	add	a0,a0,a5
  a2b3a8:	050a                	slli	a0,a0,0x2
  a2b3aa:	c10c                	sw	a1,0(a0)
  a2b3ac:	0ff0000f          	fence
  a2b3b0:	c130                	sw	a2,64(a0)
  a2b3b2:	0ff0000f          	fence
  a2b3b6:	4501                	li	a0,0
  a2b3b8:	8082                	ret
  a2b3ba:	557d                	li	a0,-1
  a2b3bc:	8082                	ret

00a2b3be <hal_fapc_set_region_permission>:
  a2b3be:	4501                	li	a0,0
  a2b3c0:	8082                	ret

00a2b3c2 <hal_fapc_set_region_mac_addr>:
  a2b3c2:	4501                	li	a0,0
  a2b3c4:	8082                	ret

00a2b3c6 <hal_fapc_set_region_mode>:
  a2b3c6:	0405733b          	bgeui	a0,4,a2b3d2 <hal_fapc_set_region_mode+0xc>
  a2b3ca:	c591                	beqz	a1,a2b3d6 <hal_fapc_set_region_mode+0x10>
  a2b3cc:	4709                	li	a4,2
  a2b3ce:	020582bb          	beqi	a1,2,a2b3d8 <hal_fapc_set_region_mode+0x12>
  a2b3d2:	557d                	li	a0,-1
  a2b3d4:	8082                	ret
  a2b3d6:	4701                	li	a4,0
  a2b3d8:	480016b7          	lui	a3,0x48001
  a2b3dc:	1806a603          	lw	a2,384(a3) # 48001180 <_gp_+0x475cc8f8>
  a2b3e0:	0506                	slli	a0,a0,0x1
  a2b3e2:	478d                	li	a5,3
  a2b3e4:	00a797b3          	sll	a5,a5,a0
  a2b3e8:	fff7c793          	not	a5,a5
  a2b3ec:	8ff1                	and	a5,a5,a2
  a2b3ee:	00a71733          	sll	a4,a4,a0
  a2b3f2:	8fd9                	or	a5,a5,a4
  a2b3f4:	18f6a023          	sw	a5,384(a3)
  a2b3f8:	0ff0000f          	fence
  a2b3fc:	4501                	li	a0,0
  a2b3fe:	8082                	ret

00a2b400 <hal_fapc_region_enable>:
  a2b400:	4501                	li	a0,0
  a2b402:	8082                	ret

00a2b404 <hal_fapc_region_lock>:
  a2b404:	0405783b          	bgeui	a0,4,a2b424 <hal_fapc_region_lock+0x20>
  a2b408:	48001737          	lui	a4,0x48001
  a2b40c:	22072683          	lw	a3,544(a4) # 48001220 <_gp_+0x475cc998>
  a2b410:	4785                	li	a5,1
  a2b412:	00a79533          	sll	a0,a5,a0
  a2b416:	8d55                	or	a0,a0,a3
  a2b418:	22a72023          	sw	a0,544(a4)
  a2b41c:	0ff0000f          	fence
  a2b420:	4501                	li	a0,0
  a2b422:	8082                	ret
  a2b424:	557d                	li	a0,-1
  a2b426:	8082                	ret

00a2b428 <hal_fapc_set_region_iv>:
  a2b428:	e131                	bnez	a0,a2b46c <hal_fapc_set_region_iv+0x44>
  a2b42a:	557d                	li	a0,-1
  a2b42c:	c1a9                	beqz	a1,a2b46e <hal_fapc_set_region_iv+0x46>
  a2b42e:	1016103b          	bnei	a2,16,a2b46e <hal_fapc_set_region_iv+0x46>
  a2b432:	4198                	lw	a4,0(a1)
  a2b434:	480017b7          	lui	a5,0x48001
  a2b438:	62e7a023          	sw	a4,1568(a5) # 48001620 <_gp_+0x475ccd98>
  a2b43c:	0ff0000f          	fence
  a2b440:	41d8                	lw	a4,4(a1)
  a2b442:	62e7a223          	sw	a4,1572(a5)
  a2b446:	0ff0000f          	fence
  a2b44a:	4598                	lw	a4,8(a1)
  a2b44c:	62e7a423          	sw	a4,1576(a5)
  a2b450:	0ff0000f          	fence
  a2b454:	45d8                	lw	a4,12(a1)
  a2b456:	62e7a623          	sw	a4,1580(a5)
  a2b45a:	0ff0000f          	fence
  a2b45e:	4705                	li	a4,1
  a2b460:	60e7a023          	sw	a4,1536(a5)
  a2b464:	0ff0000f          	fence
  a2b468:	4501                	li	a0,0
  a2b46a:	8082                	ret
  a2b46c:	557d                	li	a0,-1
  a2b46e:	8082                	ret

00a2b470 <hal_fapc_set_region_iv_start_addr>:
  a2b470:	0405763b          	bgeui	a0,4,a2b488 <hal_fapc_set_region_iv_start_addr+0x18>
  a2b474:	1200 0590 079f      	l.li	a5,0x12000590
  a2b47a:	953e                	add	a0,a0,a5
  a2b47c:	050a                	slli	a0,a0,0x2
  a2b47e:	c10c                	sw	a1,0(a0)
  a2b480:	0ff0000f          	fence
  a2b484:	4501                	li	a0,0
  a2b486:	8082                	ret
  a2b488:	557d                	li	a0,-1
  a2b48a:	8082                	ret

00a2b48c <hal_tcxo_init>:
  a2b48c:	8018                	push	{ra},-16
  a2b48e:	28a9                	jal	ra,a2b4e8 <hal_tcxo_v150_regs_init>
  a2b490:	e105                	bnez	a0,a2b4b0 <hal_tcxo_init+0x24>
  a2b492:	00a05737          	lui	a4,0xa05
  a2b496:	74872683          	lw	a3,1864(a4) # a05748 <g_tcxo_regs>
  a2b49a:	429c                	lw	a5,0(a3)
  a2b49c:	0047e793          	ori	a5,a5,4
  a2b4a0:	c29c                	sw	a5,0(a3)
  a2b4a2:	74872703          	lw	a4,1864(a4)
  a2b4a6:	431c                	lw	a5,0(a4)
  a2b4a8:	0027e793          	ori	a5,a5,2
  a2b4ac:	c31c                	sw	a5,0(a4)
  a2b4ae:	8014                	popret	{ra},16
  a2b4b0:	8000 1180 051f      	l.li	a0,0x80001180
  a2b4b6:	bfe5                	j	a2b4ae <hal_tcxo_init+0x22>

00a2b4b8 <hal_tcxo_get>:
  a2b4b8:	00a057b7          	lui	a5,0xa05
  a2b4bc:	7487a683          	lw	a3,1864(a5) # a05748 <g_tcxo_regs>
  a2b4c0:	4605                	li	a2,1
  a2b4c2:	4298                	lw	a4,0(a3)
  a2b4c4:	00176713          	ori	a4,a4,1
  a2b4c8:	c298                	sw	a4,0(a3)
  a2b4ca:	56fd                	li	a3,-1
  a2b4cc:	873e                	mv	a4,a5
  a2b4ce:	74872783          	lw	a5,1864(a4)
  a2b4d2:	439c                	lw	a5,0(a5)
  a2b4d4:	8391                	srli	a5,a5,0x4
  a2b4d6:	8b85                	andi	a5,a5,1
  a2b4d8:	00c78763          	beq	a5,a2,a2b4e6 <hal_tcxo_get+0x2e>
  a2b4dc:	16fd                	addi	a3,a3,-1
  a2b4de:	fae5                	bnez	a3,a2b4ce <hal_tcxo_get+0x16>
  a2b4e0:	4501                	li	a0,0
  a2b4e2:	4581                	li	a1,0
  a2b4e4:	8082                	ret
  a2b4e6:	a00d                	j	a2b508 <hal_tcxo_reg_count_get>

00a2b4e8 <hal_tcxo_v150_regs_init>:
  a2b4e8:	8018                	push	{ra},-16
  a2b4ea:	471000ef          	jal	ra,a2c15a <tcxo_porting_base_addr_get>
  a2b4ee:	c909                	beqz	a0,a2b500 <hal_tcxo_v150_regs_init+0x18>
  a2b4f0:	46b000ef          	jal	ra,a2c15a <tcxo_porting_base_addr_get>
  a2b4f4:	00a0 5748 079f      	l.li	a5,0xa05748
  a2b4fa:	c388                	sw	a0,0(a5)
  a2b4fc:	4501                	li	a0,0
  a2b4fe:	8014                	popret	{ra},16
  a2b500:	8000 1180 051f      	l.li	a0,0x80001180
  a2b506:	bfe5                	j	a2b4fe <hal_tcxo_v150_regs_init+0x16>

00a2b508 <hal_tcxo_reg_count_get>:
  a2b508:	00a0 5748 079f      	l.li	a5,0xa05748
  a2b50e:	439c                	lw	a5,0(a5)
  a2b510:	478c                	lw	a1,8(a5)
  a2b512:	43c8                	lw	a0,4(a5)
  a2b514:	8082                	ret

00a2b516 <hal_uart_register_funcs>:
  a2b516:	030575bb          	bgeui	a0,3,a2b52c <hal_uart_register_funcs+0x16>
  a2b51a:	c989                	beqz	a1,a2b52c <hal_uart_register_funcs+0x16>
  a2b51c:	00a0 574c 079f      	l.li	a5,0xa0574c
  a2b522:	04a7851b          	addshf	a0,a5,a0,sll,2
  a2b526:	c10c                	sw	a1,0(a0)
  a2b528:	4501                	li	a0,0
  a2b52a:	8082                	ret
  a2b52c:	80000537          	lui	a0,0x80000
  a2b530:	0505                	addi	a0,a0,1 # 80000001 <_gp_+0x7f5cb779>
  a2b532:	8082                	ret

00a2b534 <hal_uart_init>:
  a2b534:	8228                	push	{ra,s0},-48
  a2b536:	842a                	mv	s0,a0
  a2b538:	ce2e                	sw	a1,28(sp)
  a2b53a:	cc32                	sw	a2,24(sp)
  a2b53c:	ca36                	sw	a3,20(sp)
  a2b53e:	c83a                	sw	a4,16(sp)
  a2b540:	c63e                	sw	a5,12(sp)
  a2b542:	355000ef          	jal	ra,a2c096 <uart_port_register_hal_funcs>
  a2b546:	00a0 574c 051f      	l.li	a0,0xa0574c
  a2b54c:	0485051b          	addshf	a0,a0,s0,sll,2
  a2b550:	4108                	lw	a0,0(a0)
  a2b552:	cd01                	beqz	a0,a2b56a <hal_uart_init+0x36>
  a2b554:	46d2                	lw	a3,20(sp)
  a2b556:	ca91                	beqz	a3,a2b56a <hal_uart_init+0x36>
  a2b558:	00052303          	lw	t1,0(a0)
  a2b55c:	47b2                	lw	a5,12(sp)
  a2b55e:	4742                	lw	a4,16(sp)
  a2b560:	4662                	lw	a2,24(sp)
  a2b562:	45f2                	lw	a1,28(sp)
  a2b564:	8522                	mv	a0,s0
  a2b566:	8220                	pop	{ra,s0},48
  a2b568:	8302                	jr	t1
  a2b56a:	8000 1047 051f      	l.li	a0,0x80001047
  a2b570:	8224                	popret	{ra,s0},48

00a2b572 <hal_uart_write>:
  a2b572:	00a0 574c 079f      	l.li	a5,0xa0574c
  a2b578:	04a7879b          	addshf	a5,a5,a0,sll,2
  a2b57c:	439c                	lw	a5,0(a5)
  a2b57e:	00c7a303          	lw	t1,12(a5)
  a2b582:	8302                	jr	t1

00a2b584 <hal_uart_read>:
  a2b584:	00a0 574c 079f      	l.li	a5,0xa0574c
  a2b58a:	04a7879b          	addshf	a5,a5,a0,sll,2
  a2b58e:	439c                	lw	a5,0(a5)
  a2b590:	0107a303          	lw	t1,16(a5)
  a2b594:	8302                	jr	t1

00a2b596 <hal_uart_ctrl>:
  a2b596:	00a0 574c 079f      	l.li	a5,0xa0574c
  a2b59c:	04a7879b          	addshf	a5,a5,a0,sll,2
  a2b5a0:	439c                	lw	a5,0(a5)
  a2b5a2:	c781                	beqz	a5,a2b5aa <hal_uart_ctrl+0x14>
  a2b5a4:	0087a303          	lw	t1,8(a5)
  a2b5a8:	8302                	jr	t1
  a2b5aa:	8000 1047 051f      	l.li	a0,0x80001047
  a2b5b0:	8082                	ret

00a2b5b2 <hal_uart_v151_ctrl_get_rxfifo_passnum>:
  a2b5b2:	c609                	beqz	a2,a2b5bc <hal_uart_v151_ctrl_get_rxfifo_passnum+0xa>
  a2b5b4:	57fd                	li	a5,-1
  a2b5b6:	c21c                	sw	a5,0(a2)
  a2b5b8:	4501                	li	a0,0
  a2b5ba:	8082                	ret
  a2b5bc:	80000537          	lui	a0,0x80000
  a2b5c0:	0505                	addi	a0,a0,1 # 80000001 <_gp_+0x7f5cb779>
  a2b5c2:	8082                	ret

00a2b5c4 <hal_uart_v151_get_uart_rxfifo_threshold>:
  a2b5c4:	00a0 5774 079f      	l.li	a5,0xa05774
  a2b5ca:	953e                	add	a0,a0,a5
  a2b5cc:	2114                	lbu	a3,0(a0)
  a2b5ce:	03e00713          	li	a4,62
  a2b5d2:	0306f3bb          	bgeui	a3,3,a2b5e0 <hal_uart_v151_get_uart_rxfifo_threshold+0x1c>
  a2b5d6:	00a3 2760 079f      	l.li	a5,0xa32760
  a2b5dc:	97b6                	add	a5,a5,a3
  a2b5de:	2398                	lbu	a4,0(a5)
  a2b5e0:	c218                	sw	a4,0(a2)
  a2b5e2:	4501                	li	a0,0
  a2b5e4:	8082                	ret

00a2b5e6 <hal_uart_v151_deinit>:
  a2b5e6:	00a0 5758 079f      	l.li	a5,0xa05758
  a2b5ec:	04a7851b          	addshf	a0,a5,a0,sll,2
  a2b5f0:	00052023          	sw	zero,0(a0)
  a2b5f4:	4501                	li	a0,0
  a2b5f6:	8082                	ret

00a2b5f8 <hal_uart_set_diven>:
  a2b5f8:	00a0 5768 079f      	l.li	a5,0xa05768
  a2b5fe:	04a7851b          	addshf	a0,a5,a0,sll,2
  a2b602:	4118                	lw	a4,0(a0)
  a2b604:	8985                	andi	a1,a1,1
  a2b606:	471c                	lw	a5,8(a4)
  a2b608:	9bf9                	andi	a5,a5,-2
  a2b60a:	8fcd                	or	a5,a5,a1
  a2b60c:	c71c                	sw	a5,8(a4)
  a2b60e:	8082                	ret

00a2b610 <hal_uart_is_tx_fifo_full>:
  a2b610:	00a0 5768 079f      	l.li	a5,0xa05768
  a2b616:	04a7851b          	addshf	a0,a5,a0,sll,2
  a2b61a:	411c                	lw	a5,0(a0)
  a2b61c:	4501                	li	a0,0
  a2b61e:	43fc                	lw	a5,68(a5)
  a2b620:	8b85                	andi	a5,a5,1
  a2b622:	a21c                	sb	a5,0(a2)
  a2b624:	8082                	ret

00a2b626 <hal_uart_is_tx_fifo_empty>:
  a2b626:	00a0 5768 079f      	l.li	a5,0xa05768
  a2b62c:	04a7851b          	addshf	a0,a5,a0,sll,2
  a2b630:	411c                	lw	a5,0(a0)
  a2b632:	4501                	li	a0,0
  a2b634:	43fc                	lw	a5,68(a5)
  a2b636:	8385                	srli	a5,a5,0x1
  a2b638:	8b85                	andi	a5,a5,1
  a2b63a:	a21c                	sb	a5,0(a2)
  a2b63c:	8082                	ret

00a2b63e <hal_uart_is_busy>:
  a2b63e:	00a0 5768 079f      	l.li	a5,0xa05768
  a2b644:	04a7851b          	addshf	a0,a5,a0,sll,2
  a2b648:	411c                	lw	a5,0(a0)
  a2b64a:	4501                	li	a0,0
  a2b64c:	43fc                	lw	a5,68(a5)
  a2b64e:	9f81                	uxtb	a5
  a2b650:	8385                	srli	a5,a5,0x1
  a2b652:	0017c793          	xori	a5,a5,1
  a2b656:	8b85                	andi	a5,a5,1
  a2b658:	a21c                	sb	a5,0(a2)
  a2b65a:	8082                	ret

00a2b65c <hal_uart_is_rx_fifo_empty>:
  a2b65c:	00a0 5768 079f      	l.li	a5,0xa05768
  a2b662:	04a7851b          	addshf	a0,a5,a0,sll,2
  a2b666:	411c                	lw	a5,0(a0)
  a2b668:	4501                	li	a0,0
  a2b66a:	43fc                	lw	a5,68(a5)
  a2b66c:	838d                	srli	a5,a5,0x3
  a2b66e:	8b85                	andi	a5,a5,1
  a2b670:	a21c                	sb	a5,0(a2)
  a2b672:	8082                	ret

00a2b674 <hal_uart_v151_write>:
  a2b674:	00a0 5768 079f      	l.li	a5,0xa05768
  a2b67a:	04a7851b          	addshf	a0,a5,a0,sll,2
  a2b67e:	e219                	bnez	a2,a2b684 <hal_uart_v151_write+0x10>
  a2b680:	4501                	li	a0,0
  a2b682:	8082                	ret
  a2b684:	4118                	lw	a4,0(a0)
  a2b686:	437c                	lw	a5,68(a4)
  a2b688:	8b85                	andi	a5,a5,1
  a2b68a:	fbf5                	bnez	a5,a2b67e <hal_uart_v151_write+0xa>
  a2b68c:	0585                	addi	a1,a1,1
  a2b68e:	fff5c783          	lbu	a5,-1(a1)
  a2b692:	167d                	addi	a2,a2,-1 # 44112fff <_gp_+0x436de777>
  a2b694:	9e21                	uxth	a2
  a2b696:	c35c                	sw	a5,4(a4)
  a2b698:	b7dd                	j	a2b67e <hal_uart_v151_write+0xa>

00a2b69a <hal_uart_v151_read>:
  a2b69a:	00a0 5768 071f      	l.li	a4,0xa05768
  a2b6a0:	4781                	li	a5,0
  a2b6a2:	04a7051b          	addshf	a0,a4,a0,sll,2
  a2b6a6:	00c7c463          	blt	a5,a2,a2b6ae <hal_uart_v151_read+0x14>
  a2b6aa:	853e                	mv	a0,a5
  a2b6ac:	8082                	ret
  a2b6ae:	4114                	lw	a3,0(a0)
  a2b6b0:	42f8                	lw	a4,68(a3)
  a2b6b2:	8b21                	andi	a4,a4,8
  a2b6b4:	fb7d                	bnez	a4,a2b6aa <hal_uart_v151_read+0x10>
  a2b6b6:	42d4                	lw	a3,4(a3)
  a2b6b8:	00f58733          	add	a4,a1,a5
  a2b6bc:	0785                	addi	a5,a5,1
  a2b6be:	a314                	sb	a3,0(a4)
  a2b6c0:	b7dd                	j	a2b6a6 <hal_uart_v151_read+0xc>

00a2b6c2 <hal_uart_v151_ctrl>:
  a2b6c2:	00a3 2764 079f      	l.li	a5,0xa32764
  a2b6c8:	04b7879b          	addshf	a5,a5,a1,sll,2
  a2b6cc:	0007a303          	lw	t1,0(a5)
  a2b6d0:	00030363          	beqz	t1,a2b6d6 <hal_uart_v151_ctrl+0x14>
  a2b6d4:	8302                	jr	t1
  a2b6d6:	8000 1047 051f      	l.li	a0,0x80001047
  a2b6dc:	8082                	ret

00a2b6de <hal_uart_init_fifo>:
  a2b6de:	00a0 5768 079f      	l.li	a5,0xa05768
  a2b6e4:	04a7879b          	addshf	a5,a5,a0,sll,2
  a2b6e8:	4398                	lw	a4,0(a5)
  a2b6ea:	0035f693          	andi	a3,a1,3
  a2b6ee:	535c                	lw	a5,36(a4)
  a2b6f0:	9bcd                	andi	a5,a5,-13
  a2b6f2:	04d7a79b          	orshf	a5,a5,a3,sll,2
  a2b6f6:	9bf1                	andi	a5,a5,-4
  a2b6f8:	00367693          	andi	a3,a2,3
  a2b6fc:	8fd5                	or	a5,a5,a3
  a2b6fe:	0107e793          	ori	a5,a5,16
  a2b702:	d35c                	sw	a5,36(a4)
  a2b704:	00a0 5774 079f      	l.li	a5,0xa05774
  a2b70a:	97aa                	add	a5,a5,a0
  a2b70c:	a38c                	sb	a1,0(a5)
  a2b70e:	00a0 5778 079f      	l.li	a5,0xa05778
  a2b714:	953e                	add	a0,a0,a5
  a2b716:	a110                	sb	a2,0(a0)
  a2b718:	8082                	ret

00a2b71a <hal_uart_v151_ctrl_set_txfifo_int_level>:
  a2b71a:	0406633b          	bltui	a2,4,a2b726 <hal_uart_v151_ctrl_set_txfifo_int_level+0xc>
  a2b71e:	80000537          	lui	a0,0x80000
  a2b722:	0505                	addi	a0,a0,1 # 80000001 <_gp_+0x7f5cb779>
  a2b724:	8082                	ret
  a2b726:	8018                	push	{ra},-16
  a2b728:	00a0 5774 079f      	l.li	a5,0xa05774
  a2b72e:	97aa                	add	a5,a5,a0
  a2b730:	238c                	lbu	a1,0(a5)
  a2b732:	9e01                	uxtb	a2
  a2b734:	376d                	jal	ra,a2b6de <hal_uart_init_fifo>
  a2b736:	4501                	li	a0,0
  a2b738:	8014                	popret	{ra},16

00a2b73a <hal_uart_v151_ctrl_set_rxfifo_int_level>:
  a2b73a:	0406633b          	bltui	a2,4,a2b746 <hal_uart_v151_ctrl_set_rxfifo_int_level+0xc>
  a2b73e:	80000537          	lui	a0,0x80000
  a2b742:	0505                	addi	a0,a0,1 # 80000001 <_gp_+0x7f5cb779>
  a2b744:	8082                	ret
  a2b746:	8018                	push	{ra},-16
  a2b748:	00a0 5778 079f      	l.li	a5,0xa05778
  a2b74e:	97aa                	add	a5,a5,a0
  a2b750:	85b2                	mv	a1,a2
  a2b752:	2390                	lbu	a2,0(a5)
  a2b754:	9d81                	uxtb	a1
  a2b756:	3761                	jal	ra,a2b6de <hal_uart_init_fifo>
  a2b758:	4501                	li	a0,0
  a2b75a:	8014                	popret	{ra},16

00a2b75c <hal_uart_set_baud_rate>:
  a2b75c:	c1a1                	beqz	a1,a2b79c <hal_uart_set_baud_rate+0x40>
  a2b75e:	8048                	push	{ra,s0-s2},-16
  a2b760:	0592                	slli	a1,a1,0x4
  a2b762:	02b67433          	remu	s0,a2,a1
  a2b766:	892a                	mv	s2,a0
  a2b768:	02b654b3          	divu	s1,a2,a1
  a2b76c:	041a                	slli	s0,s0,0x6
  a2b76e:	02b45433          	divu	s0,s0,a1
  a2b772:	4585                	li	a1,1
  a2b774:	3551                	jal	ra,a2b5f8 <hal_uart_set_diven>
  a2b776:	00a0 5768 079f      	l.li	a5,0xa05768
  a2b77c:	0527879b          	addshf	a5,a5,s2,sll,2
  a2b780:	439c                	lw	a5,0(a5)
  a2b782:	0ff4f713          	andi	a4,s1,255
  a2b786:	9ca1                	uxth	s1
  a2b788:	cb98                	sw	a4,16(a5)
  a2b78a:	80a1                	srli	s1,s1,0x8
  a2b78c:	c7c4                	sw	s1,12(a5)
  a2b78e:	4581                	li	a1,0
  a2b790:	854a                	mv	a0,s2
  a2b792:	03f47413          	andi	s0,s0,63
  a2b796:	cbc0                	sw	s0,20(a5)
  a2b798:	8040                	pop	{ra,s0-s2},16
  a2b79a:	bdb9                	j	a2b5f8 <hal_uart_set_diven>
  a2b79c:	8082                	ret

00a2b79e <hal_uart_set_data_bits>:
  a2b79e:	00a0 5768 079f      	l.li	a5,0xa05768
  a2b7a4:	04a7851b          	addshf	a0,a5,a0,sll,2
  a2b7a8:	4118                	lw	a4,0(a0)
  a2b7aa:	898d                	andi	a1,a1,3
  a2b7ac:	471c                	lw	a5,8(a4)
  a2b7ae:	9bcd                	andi	a5,a5,-13
  a2b7b0:	04b7a79b          	orshf	a5,a5,a1,sll,2
  a2b7b4:	c71c                	sw	a5,8(a4)
  a2b7b6:	8082                	ret

00a2b7b8 <hal_uart_set_stop_bits>:
  a2b7b8:	00a0 5768 079f      	l.li	a5,0xa05768
  a2b7be:	04a7851b          	addshf	a0,a5,a0,sll,2
  a2b7c2:	4118                	lw	a4,0(a0)
  a2b7c4:	8985                	andi	a1,a1,1
  a2b7c6:	471c                	lw	a5,8(a4)
  a2b7c8:	f7f7f793          	andi	a5,a5,-129
  a2b7cc:	0eb7a79b          	orshf	a5,a5,a1,sll,7
  a2b7d0:	c71c                	sw	a5,8(a4)
  a2b7d2:	8082                	ret

00a2b7d4 <hal_uart_auto_flow_ctl_en>:
  a2b7d4:	00a0 5768 079f      	l.li	a5,0xa05768
  a2b7da:	04a7851b          	addshf	a0,a5,a0,sll,2
  a2b7de:	4118                	lw	a4,0(a0)
  a2b7e0:	8985                	andi	a1,a1,1
  a2b7e2:	575c                	lw	a5,44(a4)
  a2b7e4:	9be9                	andi	a5,a5,-6
  a2b7e6:	8fcd                	or	a5,a5,a1
  a2b7e8:	04b7a59b          	orshf	a1,a5,a1,sll,2
  a2b7ec:	d74c                	sw	a1,44(a4)
  a2b7ee:	8082                	ret

00a2b7f0 <hal_uart_enable_interrupt>:
  a2b7f0:	00a0 5768 079f      	l.li	a5,0xa05768
  a2b7f6:	04a7851b          	addshf	a0,a5,a0,sll,2
  a2b7fa:	4114                	lw	a3,0(a0)
  a2b7fc:	4e9c                	lw	a5,24(a3)
  a2b7fe:	0e05f73b          	bgeui	a1,14,a2b81a <hal_uart_enable_interrupt+0x2a>
  a2b802:	00a32737          	lui	a4,0xa32
  a2b806:	72870713          	addi	a4,a4,1832 # a32728 <g_sm3_ival+0x34>
  a2b80a:	04b7059b          	addshf	a1,a4,a1,sll,2
  a2b80e:	4198                	lw	a4,0(a1)
  a2b810:	8702                	jr	a4
  a2b812:	8a05                	andi	a2,a2,1
  a2b814:	9bdd                	andi	a5,a5,-9
  a2b816:	06c7a79b          	orshf	a5,a5,a2,sll,3
  a2b81a:	ce9c                	sw	a5,24(a3)
  a2b81c:	8082                	ret
  a2b81e:	8a05                	andi	a2,a2,1
  a2b820:	9bed                	andi	a5,a5,-5
  a2b822:	04c7a79b          	orshf	a5,a5,a2,sll,2
  a2b826:	bfd5                	j	a2b81a <hal_uart_enable_interrupt+0x2a>
  a2b828:	8a05                	andi	a2,a2,1
  a2b82a:	9bf9                	andi	a5,a5,-2
  a2b82c:	8fd1                	or	a5,a5,a2
  a2b82e:	b7f5                	j	a2b81a <hal_uart_enable_interrupt+0x2a>
  a2b830:	8a05                	andi	a2,a2,1
  a2b832:	9bf5                	andi	a5,a5,-3
  a2b834:	02c7a79b          	orshf	a5,a5,a2,sll,1
  a2b838:	b7cd                	j	a2b81a <hal_uart_enable_interrupt+0x2a>

00a2b83a <hal_uart_en_para_err_int>:
  a2b83a:	8018                	push	{ra},-16
  a2b83c:	00c03633          	snez	a2,a2
  a2b840:	45b5                	li	a1,13
  a2b842:	377d                	jal	ra,a2b7f0 <hal_uart_enable_interrupt>
  a2b844:	4501                	li	a0,0
  a2b846:	8014                	popret	{ra},16

00a2b848 <hal_uart_en_idle_int>:
  a2b848:	8018                	push	{ra},-16
  a2b84a:	00c03633          	snez	a2,a2
  a2b84e:	45b1                	li	a1,12
  a2b850:	3745                	jal	ra,a2b7f0 <hal_uart_enable_interrupt>
  a2b852:	4501                	li	a0,0
  a2b854:	8014                	popret	{ra},16

00a2b856 <hal_uart_en_rx_int>:
  a2b856:	8018                	push	{ra},-16
  a2b858:	00c03633          	snez	a2,a2
  a2b85c:	4591                	li	a1,4
  a2b85e:	3f49                	jal	ra,a2b7f0 <hal_uart_enable_interrupt>
  a2b860:	4501                	li	a0,0
  a2b862:	8014                	popret	{ra},16

00a2b864 <hal_uart_en_tx_int>:
  a2b864:	8018                	push	{ra},-16
  a2b866:	00c03633          	snez	a2,a2
  a2b86a:	4589                	li	a1,2
  a2b86c:	3751                	jal	ra,a2b7f0 <hal_uart_enable_interrupt>
  a2b86e:	4501                	li	a0,0
  a2b870:	8014                	popret	{ra},16

00a2b872 <hal_uart_check_en>:
  a2b872:	00a0 5768 079f      	l.li	a5,0xa05768
  a2b878:	04a7851b          	addshf	a0,a5,a0,sll,2
  a2b87c:	4118                	lw	a4,0(a0)
  a2b87e:	8985                	andi	a1,a1,1
  a2b880:	471c                	lw	a5,8(a4)
  a2b882:	fdf7f793          	andi	a5,a5,-33
  a2b886:	0ab7a79b          	orshf	a5,a5,a1,sll,5
  a2b88a:	c71c                	sw	a5,8(a4)
  a2b88c:	8082                	ret

00a2b88e <hal_uart_parity_en>:
  a2b88e:	00a0 5768 079f      	l.li	a5,0xa05768
  a2b894:	04a7851b          	addshf	a0,a5,a0,sll,2
  a2b898:	4118                	lw	a4,0(a0)
  a2b89a:	8985                	andi	a1,a1,1
  a2b89c:	471c                	lw	a5,8(a4)
  a2b89e:	9bbd                	andi	a5,a5,-17
  a2b8a0:	08b7a79b          	orshf	a5,a5,a1,sll,4
  a2b8a4:	c71c                	sw	a5,8(a4)
  a2b8a6:	8082                	ret

00a2b8a8 <hal_uart_set_parity>:
  a2b8a8:	8028                	push	{ra,s0},-16
  a2b8aa:	842a                	mv	s0,a0
  a2b8ac:	0105873b          	beqi	a1,1,a2b8c8 <hal_uart_set_parity+0x20>
  a2b8b0:	c581                	beqz	a1,a2b8b8 <hal_uart_set_parity+0x10>
  a2b8b2:	020582bb          	beqi	a1,2,a2b8bc <hal_uart_set_parity+0x14>
  a2b8b6:	8024                	popret	{ra,s0},16
  a2b8b8:	8020                	pop	{ra,s0},16
  a2b8ba:	bf65                	j	a2b872 <hal_uart_check_en>
  a2b8bc:	4585                	li	a1,1
  a2b8be:	3f55                	jal	ra,a2b872 <hal_uart_check_en>
  a2b8c0:	4585                	li	a1,1
  a2b8c2:	8522                	mv	a0,s0
  a2b8c4:	8020                	pop	{ra,s0},16
  a2b8c6:	b7e1                	j	a2b88e <hal_uart_parity_en>
  a2b8c8:	376d                	jal	ra,a2b872 <hal_uart_check_en>
  a2b8ca:	4581                	li	a1,0
  a2b8cc:	bfdd                	j	a2b8c2 <hal_uart_set_parity+0x1a>

00a2b8ce <hal_uart_v151_ctrl_set_attr>:
  a2b8ce:	8138                	push	{ra,s0-s1},-32
  a2b8d0:	224c                	lbu	a1,4(a2)
  a2b8d2:	84b2                	mv	s1,a2
  a2b8d4:	842a                	mv	s0,a0
  a2b8d6:	35e1                	jal	ra,a2b79e <hal_uart_set_data_bits>
  a2b8d8:	30cc                	lbu	a1,5(s1)
  a2b8da:	8522                	mv	a0,s0
  a2b8dc:	3df1                	jal	ra,a2b7b8 <hal_uart_set_stop_bits>
  a2b8de:	20ec                	lbu	a1,6(s1)
  a2b8e0:	8522                	mv	a0,s0
  a2b8e2:	37d9                	jal	ra,a2b8a8 <hal_uart_set_parity>
  a2b8e4:	408c                	lw	a1,0(s1)
  a2b8e6:	8522                	mv	a0,s0
  a2b8e8:	c62e                	sw	a1,12(sp)
  a2b8ea:	7c8000ef          	jal	ra,a2c0b2 <uart_port_get_clock_value>
  a2b8ee:	45b2                	lw	a1,12(sp)
  a2b8f0:	862a                	mv	a2,a0
  a2b8f2:	8522                	mv	a0,s0
  a2b8f4:	35a5                	jal	ra,a2b75c <hal_uart_set_baud_rate>
  a2b8f6:	4501                	li	a0,0
  a2b8f8:	8134                	popret	{ra,s0-s1},32

00a2b8fa <hal_uart_tx_pause_en>:
  a2b8fa:	00a0 5768 079f      	l.li	a5,0xa05768
  a2b900:	04a7851b          	addshf	a0,a5,a0,sll,2
  a2b904:	4118                	lw	a4,0(a0)
  a2b906:	8985                	andi	a1,a1,1
  a2b908:	4b3c                	lw	a5,80(a4)
  a2b90a:	9bf9                	andi	a5,a5,-2
  a2b90c:	8fcd                	or	a5,a5,a1
  a2b90e:	cb3c                	sw	a5,80(a4)
  a2b910:	8082                	ret

00a2b912 <hal_uart_v151_init>:
  a2b912:	8168                	push	{ra,s0-s4},-48
  a2b914:	84b6                	mv	s1,a3
  a2b916:	00251913          	slli	s2,a0,0x2
  a2b91a:	00a3 27b8 069f      	l.li	a3,0xa327b8
  a2b920:	8a2e                	mv	s4,a1
  a2b922:	012685b3          	add	a1,a3,s2
  a2b926:	418c                	lw	a1,0(a1)
  a2b928:	4294                	lw	a3,0(a3)
  a2b92a:	89ba                	mv	s3,a4
  a2b92c:	00a0 5768 071f      	l.li	a4,0xa05768
  a2b932:	01270633          	add	a2,a4,s2
  a2b936:	c20c                	sw	a1,0(a2)
  a2b938:	c314                	sw	a3,0(a4)
  a2b93a:	20cc                	lbu	a1,4(s1)
  a2b93c:	00a0 5764 071f      	l.li	a4,0xa05764
  a2b942:	972a                	add	a4,a4,a0
  a2b944:	c63e                	sw	a5,12(sp)
  a2b946:	00070023          	sb	zero,0(a4)
  a2b94a:	842a                	mv	s0,a0
  a2b94c:	e53ff0ef          	jal	ra,a2b79e <hal_uart_set_data_bits>
  a2b950:	30cc                	lbu	a1,5(s1)
  a2b952:	8522                	mv	a0,s0
  a2b954:	e65ff0ef          	jal	ra,a2b7b8 <hal_uart_set_stop_bits>
  a2b958:	20ec                	lbu	a1,6(s1)
  a2b95a:	8522                	mv	a0,s0
  a2b95c:	37b1                	jal	ra,a2b8a8 <hal_uart_set_parity>
  a2b95e:	4581                	li	a1,0
  a2b960:	8522                	mv	a0,s0
  a2b962:	3f61                	jal	ra,a2b8fa <hal_uart_tx_pause_en>
  a2b964:	408c                	lw	a1,0(s1)
  a2b966:	8522                	mv	a0,s0
  a2b968:	c42e                	sw	a1,8(sp)
  a2b96a:	748000ef          	jal	ra,a2c0b2 <uart_port_get_clock_value>
  a2b96e:	45a2                	lw	a1,8(sp)
  a2b970:	862a                	mv	a2,a0
  a2b972:	8522                	mv	a0,s0
  a2b974:	de9ff0ef          	jal	ra,a2b75c <hal_uart_set_baud_rate>
  a2b978:	4529                	li	a0,10
  a2b97a:	987fe0ef          	jal	ra,a2a300 <uapi_tcxo_delay_us>
  a2b97e:	47b2                	lw	a5,12(sp)
  a2b980:	c78d                	beqz	a5,a2b9aa <hal_uart_v151_init+0x98>
  a2b982:	3390                	lbu	a2,1(a5)
  a2b984:	33ac                	lbu	a1,3(a5)
  a2b986:	8522                	mv	a0,s0
  a2b988:	d57ff0ef          	jal	ra,a2b6de <hal_uart_init_fifo>
  a2b98c:	00a0 5758 079f      	l.li	a5,0xa05758
  a2b992:	97ca                	add	a5,a5,s2
  a2b994:	0147a023          	sw	s4,0(a5)
  a2b998:	4585                	li	a1,1
  a2b99a:	030981bb          	beqi	s3,3,a2b9a0 <hal_uart_v151_init+0x8e>
  a2b99e:	4581                	li	a1,0
  a2b9a0:	8522                	mv	a0,s0
  a2b9a2:	e33ff0ef          	jal	ra,a2b7d4 <hal_uart_auto_flow_ctl_en>
  a2b9a6:	4501                	li	a0,0
  a2b9a8:	8164                	popret	{ra,s0-s4},48
  a2b9aa:	4605                	li	a2,1
  a2b9ac:	4585                	li	a1,1
  a2b9ae:	bfe1                	j	a2b986 <hal_uart_v151_init+0x74>

00a2b9b0 <hal_uart_v151_funcs_get>:
  a2b9b0:	00a3 3f5c 051f      	l.li	a0,0xa33f5c
  a2b9b6:	8082                	ret

00a2b9b8 <hal_watchdog_register_funcs>:
  a2b9b8:	c519                	beqz	a0,a2b9c6 <hal_watchdog_register_funcs+0xe>
  a2b9ba:	00a0 577c 079f      	l.li	a5,0xa0577c
  a2b9c0:	c388                	sw	a0,0(a5)
  a2b9c2:	4501                	li	a0,0
  a2b9c4:	8082                	ret
  a2b9c6:	80000537          	lui	a0,0x80000
  a2b9ca:	0505                	addi	a0,a0,1 # 80000001 <_gp_+0x7f5cb779>
  a2b9cc:	8082                	ret

00a2b9ce <hal_watchdog_unregister_funcs>:
  a2b9ce:	00a0 577c 079f      	l.li	a5,0xa0577c
  a2b9d4:	0007a023          	sw	zero,0(a5)
  a2b9d8:	4501                	li	a0,0
  a2b9da:	8082                	ret

00a2b9dc <hal_watchdog_get_funcs>:
  a2b9dc:	00a0 577c 079f      	l.li	a5,0xa0577c
  a2b9e2:	4388                	lw	a0,0(a5)
  a2b9e4:	8082                	ret

00a2b9e6 <hal_watchdog_regs_init>:
  a2b9e6:	00a347b7          	lui	a5,0xa34
  a2b9ea:	ff47a783          	lw	a5,-12(a5) # a33ff4 <g_watchdog_base_addr>
  a2b9ee:	c799                	beqz	a5,a2b9fc <hal_watchdog_regs_init+0x16>
  a2b9f0:	00a0 5780 071f      	l.li	a4,0xa05780
  a2b9f6:	c31c                	sw	a5,0(a4)
  a2b9f8:	4501                	li	a0,0
  a2b9fa:	8082                	ret
  a2b9fc:	8000 1200 051f      	l.li	a0,0x80001200
  a2ba02:	8082                	ret

00a2ba04 <hal_watchdog_regs_deinit>:
  a2ba04:	00a0 5780 079f      	l.li	a5,0xa05780
  a2ba0a:	0007a023          	sw	zero,0(a5)
  a2ba0e:	8082                	ret

00a2ba10 <hal_watchdog_v151_kick>:
  a2ba10:	00a057b7          	lui	a5,0xa05
  a2ba14:	7807a783          	lw	a5,1920(a5) # a05780 <g_watchdog_regs>
  a2ba18:	5a5a 5a5a 071f      	l.li	a4,0x5a5a5a5a
  a2ba1e:	c798                	sw	a4,8(a5)
  a2ba20:	8082                	ret

00a2ba22 <hal_watchdog_v151_get_attr>:
  a2ba22:	00a0 5788 079f      	l.li	a5,0xa05788
  a2ba28:	4388                	lw	a0,0(a5)
  a2ba2a:	8082                	ret

00a2ba2c <hal_register_watchdog_v151_callback>:
  a2ba2c:	00a0 5784 079f      	l.li	a5,0xa05784
  a2ba32:	c388                	sw	a0,0(a5)
  a2ba34:	8082                	ret

00a2ba36 <hal_watchdog_v151_deinit>:
  a2ba36:	b7f9                	j	a2ba04 <hal_watchdog_regs_deinit>

00a2ba38 <hal_watchdog_v151_init>:
  a2ba38:	b77d                	j	a2b9e6 <hal_watchdog_regs_init>

00a2ba3a <hal_watchdog_v151_get_left_time>:
  a2ba3a:	8038                	push	{ra,s0-s1},-16
  a2ba3c:	00a057b7          	lui	a5,0xa05
  a2ba40:	7807a683          	lw	a3,1920(a5) # a05780 <g_watchdog_regs>
  a2ba44:	7d100493          	li	s1,2001
  a2ba48:	843e                	mv	s0,a5
  a2ba4a:	5698                	lw	a4,40(a3)
  a2ba4c:	00176713          	ori	a4,a4,1
  a2ba50:	d698                	sw	a4,40(a3)
  a2ba52:	78042703          	lw	a4,1920(s0)
  a2ba56:	571c                	lw	a5,40(a4)
  a2ba58:	8385                	srli	a5,a5,0x1
  a2ba5a:	8b85                	andi	a5,a5,1
  a2ba5c:	cf99                	beqz	a5,a2ba7a <hal_watchdog_v151_get_left_time+0x40>
  a2ba5e:	4b40                	lw	s0,20(a4)
  a2ba60:	73e000ef          	jal	ra,a2c19e <watchdog_port_get_clock>
  a2ba64:	3e800793          	li	a5,1000
  a2ba68:	862a                	mv	a2,a0
  a2ba6a:	02f435b3          	mulhu	a1,s0,a5
  a2ba6e:	4681                	li	a3,0
  a2ba70:	02f40533          	mul	a0,s0,a5
  a2ba74:	b29fc0ef          	jal	ra,a2859c <__udivdi3>
  a2ba78:	8034                	popret	{ra,s0-s1},16
  a2ba7a:	14fd                	addi	s1,s1,-1
  a2ba7c:	c489                	beqz	s1,a2ba86 <hal_watchdog_v151_get_left_time+0x4c>
  a2ba7e:	4505                	li	a0,1
  a2ba80:	881fe0ef          	jal	ra,a2a300 <uapi_tcxo_delay_us>
  a2ba84:	b7f9                	j	a2ba52 <hal_watchdog_v151_get_left_time+0x18>
  a2ba86:	4501                	li	a0,0
  a2ba88:	bfc5                	j	a2ba78 <hal_watchdog_v151_get_left_time+0x3e>

00a2ba8a <hal_watchdog_v151_clear_interrupt>:
  a2ba8a:	00a057b7          	lui	a5,0xa05
  a2ba8e:	7807a703          	lw	a4,1920(a5) # a05780 <g_watchdog_regs>
  a2ba92:	475c                	lw	a5,12(a4)
  a2ba94:	0017e793          	ori	a5,a5,1
  a2ba98:	c75c                	sw	a5,12(a4)
  a2ba9a:	8082                	ret

00a2ba9c <hal_watchdog_v151_disable>:
  a2ba9c:	8018                	push	{ra},-16
  a2ba9e:	37f5                	jal	ra,a2ba8a <hal_watchdog_v151_clear_interrupt>
  a2baa0:	00a057b7          	lui	a5,0xa05
  a2baa4:	7807a703          	lw	a4,1920(a5) # a05780 <g_watchdog_regs>
  a2baa8:	4b1c                	lw	a5,16(a4)
  a2baaa:	9bf9                	andi	a5,a5,-2
  a2baac:	cb1c                	sw	a5,16(a4)
  a2baae:	8014                	popret	{ra},16

00a2bab0 <hal_watchdog_v151_set_attr>:
  a2bab0:	8048                	push	{ra,s0-s2},-16
  a2bab2:	84aa                	mv	s1,a0
  a2bab4:	6ea000ef          	jal	ra,a2c19e <watchdog_port_get_clock>
  a2bab8:	e489                	bnez	s1,a2bac2 <hal_watchdog_v151_set_attr+0x12>
  a2baba:	80000537          	lui	a0,0x80000
  a2babe:	0505                	addi	a0,a0,1 # 80000001 <_gp_+0x7f5cb779>
  a2bac0:	8044                	popret	{ra,s0-s2},16
  a2bac2:	02950433          	mul	s0,a0,s1
  a2bac6:	02945933          	divu	s2,s0,s1
  a2baca:	6d4000ef          	jal	ra,a2c19e <watchdog_port_get_clock>
  a2bace:	fea916e3          	bne	s2,a0,a2baba <hal_watchdog_v151_set_attr+0xa>
  a2bad2:	fff46a3b          	bltui	s0,255,a2baba <hal_watchdog_v151_set_attr+0xa>
  a2bad6:	00a0 5788 079f      	l.li	a5,0xa05788
  a2badc:	00a05937          	lui	s2,0xa05
  a2bae0:	c384                	sw	s1,0(a5)
  a2bae2:	78092783          	lw	a5,1920(s2) # a05780 <g_watchdog_regs>
  a2bae6:	5a5a 5a5a 049f      	l.li	s1,0x5a5a5a5a
  a2baec:	f0047413          	andi	s0,s0,-256
  a2baf0:	c384                	sw	s1,0(a5)
  a2baf2:	376d                	jal	ra,a2ba9c <hal_watchdog_v151_disable>
  a2baf4:	78092783          	lw	a5,1920(s2)
  a2baf8:	4b98                	lw	a4,16(a5)
  a2bafa:	00476713          	ori	a4,a4,4
  a2bafe:	cb98                	sw	a4,16(a5)
  a2bb00:	4b98                	lw	a4,16(a5)
  a2bb02:	fbf77713          	andi	a4,a4,-65
  a2bb06:	cb98                	sw	a4,16(a5)
  a2bb08:	4b98                	lw	a4,16(a5)
  a2bb0a:	03876713          	ori	a4,a4,56
  a2bb0e:	cb98                	sw	a4,16(a5)
  a2bb10:	43c8                	lw	a0,4(a5)
  a2bb12:	0ff57513          	andi	a0,a0,255
  a2bb16:	8c49                	or	s0,s0,a0
  a2bb18:	c3c0                	sw	s0,4(a5)
  a2bb1a:	c784                	sw	s1,8(a5)
  a2bb1c:	4501                	li	a0,0
  a2bb1e:	b74d                	j	a2bac0 <hal_watchdog_v151_set_attr+0x10>

00a2bb20 <hal_watchdog_v151_enable>:
  a2bb20:	8128                	push	{ra,s0},-32
  a2bb22:	c62a                	sw	a0,12(sp)
  a2bb24:	3fa5                	jal	ra,a2ba9c <hal_watchdog_v151_disable>
  a2bb26:	4532                	lw	a0,12(sp)
  a2bb28:	00a05437          	lui	s0,0xa05
  a2bb2c:	e105                	bnez	a0,a2bb4c <hal_watchdog_v151_enable+0x2c>
  a2bb2e:	78042703          	lw	a4,1920(s0) # a05780 <g_watchdog_regs>
  a2bb32:	4b1c                	lw	a5,16(a4)
  a2bb34:	f7f7f793          	andi	a5,a5,-129
  a2bb38:	cb1c                	sw	a5,16(a4)
  a2bb3a:	3f81                	jal	ra,a2ba8a <hal_watchdog_v151_clear_interrupt>
  a2bb3c:	78042703          	lw	a4,1920(s0)
  a2bb40:	4b1c                	lw	a5,16(a4)
  a2bb42:	0017e793          	ori	a5,a5,1
  a2bb46:	cb1c                	sw	a5,16(a4)
  a2bb48:	8120                	pop	{ra,s0},32
  a2bb4a:	b5d9                	j	a2ba10 <hal_watchdog_v151_kick>
  a2bb4c:	01f51bbb          	bnei	a0,1,a2bb3a <hal_watchdog_v151_enable+0x1a>
  a2bb50:	78042703          	lw	a4,1920(s0)
  a2bb54:	4b1c                	lw	a5,16(a4)
  a2bb56:	0807e793          	ori	a5,a5,128
  a2bb5a:	bff9                	j	a2bb38 <hal_watchdog_v151_enable+0x18>

00a2bb5c <hal_watchdog_v151_funcs_get>:
  a2bb5c:	00a3 3f74 051f      	l.li	a0,0xa33f74
  a2bb62:	8082                	ret

00a2bb64 <hal_sfc_regs_init>:
  a2bb64:	8058                	push	{ra,s0-s3},-32
  a2bb66:	2d85                	jal	ra,a2c1d6 <sfc_port_get_sfc_global_conf_base_addr>
  a2bb68:	00a0 579c 099f      	l.li	s3,0xa0579c
  a2bb6e:	00a9a023          	sw	a0,0(s3)
  a2bb72:	00a0 5790 091f      	l.li	s2,0xa05790
  a2bb78:	259d                	jal	ra,a2c1de <sfc_port_get_sfc_bus_regs_base_addr>
  a2bb7a:	00a92023          	sw	a0,0(s2)
  a2bb7e:	00a0 578c 049f      	l.li	s1,0xa0578c
  a2bb84:	258d                	jal	ra,a2c1e6 <sfc_port_get_sfc_bus_dma_regs_base_addr>
  a2bb86:	c088                	sw	a0,0(s1)
  a2bb88:	00a0 5798 041f      	l.li	s0,0xa05798
  a2bb8e:	2585                	jal	ra,a2c1ee <sfc_port_get_sfc_cmd_regs_base_addr>
  a2bb90:	c008                	sw	a0,0(s0)
  a2bb92:	2595                	jal	ra,a2c1f6 <sfc_port_get_sfc_cmd_databuf_base_addr>
  a2bb94:	00a0 5794 079f      	l.li	a5,0xa05794
  a2bb9a:	c388                	sw	a0,0(a5)
  a2bb9c:	0009a783          	lw	a5,0(s3)
  a2bba0:	cb99                	beqz	a5,a2bbb6 <hal_sfc_regs_init+0x52>
  a2bba2:	00092783          	lw	a5,0(s2)
  a2bba6:	cb81                	beqz	a5,a2bbb6 <hal_sfc_regs_init+0x52>
  a2bba8:	409c                	lw	a5,0(s1)
  a2bbaa:	c791                	beqz	a5,a2bbb6 <hal_sfc_regs_init+0x52>
  a2bbac:	401c                	lw	a5,0(s0)
  a2bbae:	c781                	beqz	a5,a2bbb6 <hal_sfc_regs_init+0x52>
  a2bbb0:	c119                	beqz	a0,a2bbb6 <hal_sfc_regs_init+0x52>
  a2bbb2:	4501                	li	a0,0
  a2bbb4:	8054                	popret	{ra,s0-s3},32
  a2bbb6:	8000 1343 051f      	l.li	a0,0x80001343
  a2bbbc:	bfe5                	j	a2bbb4 <hal_sfc_regs_init+0x50>

00a2bbbe <hal_sfc_regs_set_cmd_addr>:
  a2bbbe:	00a057b7          	lui	a5,0xa05
  a2bbc2:	7987a683          	lw	a3,1944(a5) # a05798 <g_sfc_cmd_regs>
  a2bbc6:	3fff ffff 071f      	l.li	a4,0x3fffffff
  a2bbcc:	8d79                	and	a0,a0,a4
  a2bbce:	46dc                	lw	a5,12(a3)
  a2bbd0:	c0000737          	lui	a4,0xc0000
  a2bbd4:	8ff9                	and	a5,a5,a4
  a2bbd6:	8fc9                	or	a5,a5,a0
  a2bbd8:	c6dc                	sw	a5,12(a3)
  a2bbda:	8082                	ret

00a2bbdc <hal_sfc_regs_wait_ready.constprop.3>:
  a2bbdc:	8158                	push	{ra,s0-s3},-48
  a2bbde:	252d                	jal	ra,a2c208 <sfc_port_get_delay_times>
  a2bbe0:	84aa                	mv	s1,a0
  a2bbe2:	2d31                	jal	ra,a2c1fe <sfc_port_get_delay_once_time>
  a2bbe4:	4792                	lw	a5,4(sp)
  a2bbe6:	ffff c7ff 071f      	l.li	a4,0xffffc7ff
  a2bbec:	892a                	mv	s2,a0
  a2bbee:	8077f793          	andi	a5,a5,-2041
  a2bbf2:	0287e793          	ori	a5,a5,40
  a2bbf6:	8ff9                	and	a5,a5,a4
  a2bbf8:	c23e                	sw	a5,4(sp)
  a2bbfa:	4785                	li	a5,1
  a2bbfc:	c43e                	sw	a5,8(sp)
  a2bbfe:	c602                	sw	zero,12(sp)
  a2bc00:	4401                	li	s0,0
  a2bc02:	00a059b7          	lui	s3,0xa05
  a2bc06:	0048                	addi	a0,sp,4
  a2bc08:	269d                	jal	ra,a2bf6e <hal_sfc_regs_set_opt>
  a2bc0a:	4601                	li	a2,0
  a2bc0c:	4585                	li	a1,1
  a2bc0e:	4505                	li	a0,1
  a2bc10:	2e59                	jal	ra,a2bfa6 <hal_sfc_regs_set_opt_attr>
  a2bc12:	26c9                	jal	ra,a2bfd4 <hal_sfc_regs_wait_config>
  a2bc14:	7949a783          	lw	a5,1940(s3) # a05794 <g_sfc_cmd_databuf>
  a2bc18:	439c                	lw	a5,0(a5)
  a2bc1a:	8b85                	andi	a5,a5,1
  a2bc1c:	cf91                	beqz	a5,a2bc38 <hal_sfc_regs_wait_ready.constprop.3+0x5c>
  a2bc1e:	854a                	mv	a0,s2
  a2bc20:	ee0fe0ef          	jal	ra,a2a300 <uapi_tcxo_delay_us>
  a2bc24:	00140793          	addi	a5,s0,1
  a2bc28:	00946663          	bltu	s0,s1,a2bc34 <hal_sfc_regs_wait_ready.constprop.3+0x58>
  a2bc2c:	8000 1344 051f      	l.li	a0,0x80001344
  a2bc32:	8154                	popret	{ra,s0-s3},48
  a2bc34:	843e                	mv	s0,a5
  a2bc36:	bfc1                	j	a2bc06 <hal_sfc_regs_wait_ready.constprop.3+0x2a>
  a2bc38:	4501                	li	a0,0
  a2bc3a:	bfe5                	j	a2bc32 <hal_sfc_regs_wait_ready.constprop.3+0x56>

00a2bc3c <hal_sfc_execute_type_cmd>:
  a2bc3c:	8148                	push	{ra,s0-s2},-32
  a2bc3e:	219c                	lbu	a5,0(a1)
  a2bc40:	842a                	mv	s0,a0
  a2bc42:	892e                	mv	s2,a1
  a2bc44:	078e                	slli	a5,a5,0x3
  a2bc46:	0017e793          	ori	a5,a5,1
  a2bc4a:	c23e                	sw	a5,4(sp)
  a2bc4c:	fff50793          	addi	a5,a0,-1
  a2bc50:	c43e                	sw	a5,8(sp)
  a2bc52:	c602                	sw	zero,12(sp)
  a2bc54:	3761                	jal	ra,a2bbdc <hal_sfc_regs_wait_ready.constprop.3>
  a2bc56:	84aa                	mv	s1,a0
  a2bc58:	e50d                	bnez	a0,a2bc82 <hal_sfc_execute_type_cmd+0x46>
  a2bc5a:	0048                	addi	a0,sp,4
  a2bc5c:	2e09                	jal	ra,a2bf6e <hal_sfc_regs_set_opt>
  a2bc5e:	4785                	li	a5,1
  a2bc60:	c002                	sw	zero,0(sp)
  a2bc62:	0287e263          	bltu	a5,s0,a2bc86 <hal_sfc_execute_type_cmd+0x4a>
  a2bc66:	00a057b7          	lui	a5,0xa05
  a2bc6a:	7947a783          	lw	a5,1940(a5) # a05794 <g_sfc_cmd_databuf>
  a2bc6e:	4702                	lw	a4,0(sp)
  a2bc70:	00243593          	sltiu	a1,s0,2
  a2bc74:	4601                	li	a2,0
  a2bc76:	c398                	sw	a4,0(a5)
  a2bc78:	0015c593          	xori	a1,a1,1
  a2bc7c:	4501                	li	a0,0
  a2bc7e:	2625                	jal	ra,a2bfa6 <hal_sfc_regs_set_opt_attr>
  a2bc80:	2e91                	jal	ra,a2bfd4 <hal_sfc_regs_wait_config>
  a2bc82:	8526                	mv	a0,s1
  a2bc84:	8144                	popret	{ra,s0-s2},32
  a2bc86:	00f906b3          	add	a3,s2,a5
  a2bc8a:	2294                	lbu	a3,0(a3)
  a2bc8c:	00f10733          	add	a4,sp,a5
  a2bc90:	0785                	addi	a5,a5,1
  a2bc92:	fed70fa3          	sb	a3,-1(a4) # bfffffff <_gp_+0xbf5cb777>
  a2bc96:	b7f1                	j	a2bc62 <hal_sfc_execute_type_cmd+0x26>

00a2bc98 <hal_sfc_write_enable>:
  a2bc98:	8118                	push	{ra},-32
  a2bc9a:	3789                	jal	ra,a2bbdc <hal_sfc_regs_wait_ready.constprop.3>
  a2bc9c:	4799                	li	a5,6
  a2bc9e:	006c                	addi	a1,sp,12
  a2bca0:	4505                	li	a0,1
  a2bca2:	00f10623          	sb	a5,12(sp)
  a2bca6:	3f59                	jal	ra,a2bc3c <hal_sfc_execute_type_cmd>
  a2bca8:	e111                	bnez	a0,a2bcac <hal_sfc_write_enable+0x14>
  a2bcaa:	3f0d                	jal	ra,a2bbdc <hal_sfc_regs_wait_ready.constprop.3>
  a2bcac:	8114                	popret	{ra},32

00a2bcae <hal_sfc_reg_write_once>:
  a2bcae:	8648                	push	{ra,s0-s2},-112
  a2bcb0:	c636                	sw	a3,12(sp)
  a2bcb2:	892a                	mv	s2,a0
  a2bcb4:	84ae                	mv	s1,a1
  a2bcb6:	8432                	mv	s0,a2
  a2bcb8:	37c5                	jal	ra,a2bc98 <hal_sfc_write_enable>
  a2bcba:	87aa                	mv	a5,a0
  a2bcbc:	46b2                	lw	a3,12(sp)
  a2bcbe:	e939                	bnez	a0,a2bd14 <hal_sfc_reg_write_once+0x66>
  a2bcc0:	ca36                	sw	a3,20(sp)
  a2bcc2:	0848                	addi	a0,sp,20
  a2bcc4:	82b9                	srli	a3,a3,0xe
  a2bcc6:	ce36                	sw	a3,28(sp)
  a2bcc8:	cc22                	sw	s0,24(sp)
  a2bcca:	2455                	jal	ra,a2bf6e <hal_sfc_regs_set_opt>
  a2bccc:	854a                	mv	a0,s2
  a2bcce:	ef1ff0ef          	jal	ra,a2bbbe <hal_sfc_regs_set_cmd_addr>
  a2bcd2:	86a2                	mv	a3,s0
  a2bcd4:	8626                	mv	a2,s1
  a2bcd6:	04000593          	li	a1,64
  a2bcda:	1008                	addi	a0,sp,32
  a2bcdc:	50b040ef          	jal	ra,a309e6 <memcpy_s>
  a2bce0:	57fd                	li	a5,-1
  a2bce2:	e90d                	bnez	a0,a2bd14 <hal_sfc_reg_write_once+0x66>
  a2bce4:	00347613          	andi	a2,s0,3
  a2bce8:	00c03633          	snez	a2,a2
  a2bcec:	4486061b          	addshf	a2,a2,s0,srl,2
  a2bcf0:	9e21                	uxth	a2
  a2bcf2:	101c                	addi	a5,sp,32
  a2bcf4:	4701                	li	a4,0
  a2bcf6:	00a055b7          	lui	a1,0xa05
  a2bcfa:	01071693          	slli	a3,a4,0x10
  a2bcfe:	82c1                	srli	a3,a3,0x10
  a2bd00:	00c6ec63          	bltu	a3,a2,a2bd18 <hal_sfc_reg_write_once+0x6a>
  a2bd04:	4605                	li	a2,1
  a2bd06:	4585                	li	a1,1
  a2bd08:	4501                	li	a0,0
  a2bd0a:	2c71                	jal	ra,a2bfa6 <hal_sfc_regs_set_opt_attr>
  a2bd0c:	24e1                	jal	ra,a2bfd4 <hal_sfc_regs_wait_config>
  a2bd0e:	ecfff0ef          	jal	ra,a2bbdc <hal_sfc_regs_wait_ready.constprop.3>
  a2bd12:	87aa                	mv	a5,a0
  a2bd14:	853e                	mv	a0,a5
  a2bd16:	8644                	popret	{ra,s0-s2},112
  a2bd18:	7945a683          	lw	a3,1940(a1) # a05794 <g_sfc_cmd_databuf>
  a2bd1c:	4388                	lw	a0,0(a5)
  a2bd1e:	0791                	addi	a5,a5,4
  a2bd20:	04e6869b          	addshf	a3,a3,a4,sll,2
  a2bd24:	c288                	sw	a0,0(a3)
  a2bd26:	0705                	addi	a4,a4,1
  a2bd28:	bfc9                	j	a2bcfa <hal_sfc_reg_write_once+0x4c>

00a2bd2a <hal_sfc_get_flash_id>:
  a2bd2a:	8128                	push	{ra,s0},-32
  a2bd2c:	842a                	mv	s0,a0
  a2bd2e:	e37ff0ef          	jal	ra,a2bb64 <hal_sfc_regs_init>
  a2bd32:	eabff0ef          	jal	ra,a2bbdc <hal_sfc_regs_wait_ready.constprop.3>
  a2bd36:	e91d                	bnez	a0,a2bd6c <hal_sfc_get_flash_id+0x42>
  a2bd38:	4631                	li	a2,12
  a2bd3a:	00a3 13f4 059f      	l.li	a1,0xa313f4
  a2bd40:	0048                	addi	a0,sp,4
  a2bd42:	d11fc0ef          	jal	ra,a28a52 <memcpy>
  a2bd46:	0048                	addi	a0,sp,4
  a2bd48:	241d                	jal	ra,a2bf6e <hal_sfc_regs_set_opt>
  a2bd4a:	4601                	li	a2,0
  a2bd4c:	4585                	li	a1,1
  a2bd4e:	4505                	li	a0,1
  a2bd50:	2c99                	jal	ra,a2bfa6 <hal_sfc_regs_set_opt_attr>
  a2bd52:	2449                	jal	ra,a2bfd4 <hal_sfc_regs_wait_config>
  a2bd54:	00a057b7          	lui	a5,0xa05
  a2bd58:	7947a783          	lw	a5,1940(a5) # a05794 <g_sfc_cmd_databuf>
  a2bd5c:	00ff ffff 071f      	l.li	a4,0xffffff
  a2bd62:	439c                	lw	a5,0(a5)
  a2bd64:	8ff9                	and	a5,a5,a4
  a2bd66:	c01c                	sw	a5,0(s0)
  a2bd68:	e75ff0ef          	jal	ra,a2bbdc <hal_sfc_regs_wait_ready.constprop.3>
  a2bd6c:	8124                	popret	{ra,s0},32

00a2bd6e <hal_sfc_init>:
  a2bd6e:	67c1                	lui	a5,0x10
  a2bd70:	0cf66c63          	bltu	a2,a5,a2be48 <hal_sfc_init+0xda>
  a2bd74:	8198                	push	{ra,s0-s7},-64
  a2bd76:	4940                	lw	s0,20(a0)
  a2bd78:	84b2                	mv	s1,a2
  a2bd7a:	89ae                	mv	s3,a1
  a2bd7c:	892a                	mv	s2,a0
  a2bd7e:	4a05                	li	s4,1
  a2bd80:	00a05ab7          	lui	s5,0xa05
  a2bd84:	e025                	bnez	s0,a2bde4 <hal_sfc_init+0x76>
  a2bd86:	00a057b7          	lui	a5,0xa05
  a2bd8a:	7907a683          	lw	a3,1936(a5) # a05790 <g_sfc_bus_regs>
  a2bd8e:	0109d993          	srli	s3,s3,0x10
  a2bd92:	00f4d613          	srli	a2,s1,0xf
  a2bd96:	4e9c                	lw	a5,24(a3)
  a2bd98:	4701                	li	a4,0
  a2bd9a:	01079593          	slli	a1,a5,0x10
  a2bd9e:	81c1                	srli	a1,a1,0x10
  a2bda0:	2135a59b          	orshf	a1,a1,s3,sll,16
  a2bda4:	ce8c                	sw	a1,24(a3)
  a2bda6:	00167793          	andi	a5,a2,1
  a2bdaa:	cfc1                	beqz	a5,a2be42 <hal_sfc_init+0xd4>
  a2bdac:	4a9c                	lw	a5,16(a3)
  a2bdae:	ffff f0ff 061f      	l.li	a2,0xfffff0ff
  a2bdb4:	8b3d                	andi	a4,a4,15
  a2bdb6:	8ff1                	and	a5,a5,a2
  a2bdb8:	10e7a79b          	orshf	a5,a5,a4,sll,8
  a2bdbc:	ca9c                	sw	a5,16(a3)
  a2bdbe:	00492503          	lw	a0,4(s2)
  a2bdc2:	240d                	jal	ra,a2bfe4 <hal_sfc_regs_set_bus_read>
  a2bdc4:	00c92503          	lw	a0,12(s2)
  a2bdc8:	7f857793          	andi	a5,a0,2040
  a2bdcc:	c391                	beqz	a5,a2bdd0 <hal_sfc_init+0x62>
  a2bdce:	2c89                	jal	ra,a2c020 <hal_sfc_regs_set_bus_write>
  a2bdd0:	00a057b7          	lui	a5,0xa05
  a2bdd4:	79c7a783          	lw	a5,1948(a5) # a0579c <g_sfc_global_conf_regs>
  a2bdd8:	4705                	li	a4,1
  a2bdda:	cb98                	sw	a4,16(a5)
  a2bddc:	e01ff0ef          	jal	ra,a2bbdc <hal_sfc_regs_wait_ready.constprop.3>
  a2bde0:	4501                	li	a0,0
  a2bde2:	a00d                	j	a2be04 <hal_sfc_init+0x96>
  a2bde4:	201c                	lbu	a5,0(s0)
  a2bde6:	03478063          	beq	a5,s4,a2be06 <hal_sfc_init+0x98>
  a2bdea:	c799                	beqz	a5,a2bdf8 <hal_sfc_init+0x8a>
  a2bdec:	02e786bb          	beqi	a5,2,a2bd86 <hal_sfc_init+0x18>
  a2bdf0:	8000 1345 051f      	l.li	a0,0x80001345
  a2bdf6:	a039                	j	a2be04 <hal_sfc_init+0x96>
  a2bdf8:	3008                	lbu	a0,1(s0)
  a2bdfa:	00240593          	addi	a1,s0,2
  a2bdfe:	e3fff0ef          	jal	ra,a2bc3c <hal_sfc_execute_type_cmd>
  a2be02:	cd15                	beqz	a0,a2be3e <hal_sfc_init+0xd0>
  a2be04:	8194                	popret	{ra,s0-s7},64
  a2be06:	2038                	lbu	a4,2(s0)
  a2be08:	00344b83          	lbu	s7,3(s0)
  a2be0c:	00444b03          	lbu	s6,4(s0)
  a2be10:	070e                	slli	a4,a4,0x3
  a2be12:	00176713          	ori	a4,a4,1
  a2be16:	c23a                	sw	a4,4(sp)
  a2be18:	c452                	sw	s4,8(sp)
  a2be1a:	c602                	sw	zero,12(sp)
  a2be1c:	dc1ff0ef          	jal	ra,a2bbdc <hal_sfc_regs_wait_ready.constprop.3>
  a2be20:	0048                	addi	a0,sp,4
  a2be22:	22b1                	jal	ra,a2bf6e <hal_sfc_regs_set_opt>
  a2be24:	4601                	li	a2,0
  a2be26:	4585                	li	a1,1
  a2be28:	4505                	li	a0,1
  a2be2a:	2ab5                	jal	ra,a2bfa6 <hal_sfc_regs_set_opt_attr>
  a2be2c:	2265                	jal	ra,a2bfd4 <hal_sfc_regs_wait_config>
  a2be2e:	794aa783          	lw	a5,1940(s5) # a05794 <g_sfc_cmd_databuf>
  a2be32:	439c                	lw	a5,0(a5)
  a2be34:	0177d7b3          	srl	a5,a5,s7
  a2be38:	8b85                	andi	a5,a5,1
  a2be3a:	fb679be3          	bne	a5,s6,a2bdf0 <hal_sfc_init+0x82>
  a2be3e:	0419                	addi	s0,s0,6
  a2be40:	b791                	j	a2bd84 <hal_sfc_init+0x16>
  a2be42:	8205                	srli	a2,a2,0x1
  a2be44:	0705                	addi	a4,a4,1
  a2be46:	b785                	j	a2bda6 <hal_sfc_init+0x38>
  a2be48:	80000537          	lui	a0,0x80000
  a2be4c:	0505                	addi	a0,a0,1 # 80000001 <_gp_+0x7f5cb779>
  a2be4e:	8082                	ret

00a2be50 <hal_sfc_reg_read>:
  a2be50:	8588                	push	{ra,s0-s6},-112
  a2be52:	89aa                	mv	s3,a0
  a2be54:	8a2e                	mv	s4,a1
  a2be56:	84b2                	mv	s1,a2
  a2be58:	04000413          	li	s0,64
  a2be5c:	00e6da93          	srli	s5,a3,0xe
  a2be60:	8936                	mv	s2,a3
  a2be62:	00a05b37          	lui	s6,0xa05
  a2be66:	e099                	bnez	s1,a2be6c <hal_sfc_reg_read+0x1c>
  a2be68:	4501                	li	a0,0
  a2be6a:	a8a1                	j	a2bec2 <hal_sfc_reg_read+0x72>
  a2be6c:	d71ff0ef          	jal	ra,a2bbdc <hal_sfc_regs_wait_ready.constprop.3>
  a2be70:	e929                	bnez	a0,a2bec2 <hal_sfc_reg_read+0x72>
  a2be72:	0084f363          	bgeu	s1,s0,a2be78 <hal_sfc_reg_read+0x28>
  a2be76:	8426                	mv	s0,s1
  a2be78:	0048                	addi	a0,sp,4
  a2be7a:	c24a                	sw	s2,4(sp)
  a2be7c:	c422                	sw	s0,8(sp)
  a2be7e:	c656                	sw	s5,12(sp)
  a2be80:	20fd                	jal	ra,a2bf6e <hal_sfc_regs_set_opt>
  a2be82:	854e                	mv	a0,s3
  a2be84:	d3bff0ef          	jal	ra,a2bbbe <hal_sfc_regs_set_cmd_addr>
  a2be88:	4605                	li	a2,1
  a2be8a:	4505                	li	a0,1
  a2be8c:	4585                	li	a1,1
  a2be8e:	2a21                	jal	ra,a2bfa6 <hal_sfc_regs_set_opt_attr>
  a2be90:	2291                	jal	ra,a2bfd4 <hal_sfc_regs_wait_config>
  a2be92:	00347793          	andi	a5,s0,3
  a2be96:	00f037b3          	snez	a5,a5
  a2be9a:	794b2503          	lw	a0,1940(s6) # a05794 <g_sfc_cmd_databuf>
  a2be9e:	4487879b          	addshf	a5,a5,s0,srl,2
  a2bea2:	0814                	addi	a3,sp,16
  a2bea4:	9fa1                	uxth	a5
  a2bea6:	4701                	li	a4,0
  a2bea8:	8636                	mv	a2,a3
  a2beaa:	01071593          	slli	a1,a4,0x10
  a2beae:	81c1                	srli	a1,a1,0x10
  a2beb0:	00f5ea63          	bltu	a1,a5,a2bec4 <hal_sfc_reg_read+0x74>
  a2beb4:	86a2                	mv	a3,s0
  a2beb6:	85a2                	mv	a1,s0
  a2beb8:	8552                	mv	a0,s4
  a2beba:	32d040ef          	jal	ra,a309e6 <memcpy_s>
  a2bebe:	c919                	beqz	a0,a2bed4 <hal_sfc_reg_read+0x84>
  a2bec0:	557d                	li	a0,-1
  a2bec2:	8584                	popret	{ra,s0-s6},112
  a2bec4:	04e5059b          	addshf	a1,a0,a4,sll,2
  a2bec8:	418c                	lw	a1,0(a1)
  a2beca:	0705                	addi	a4,a4,1
  a2becc:	0691                	addi	a3,a3,4
  a2bece:	feb6ae23          	sw	a1,-4(a3)
  a2bed2:	bfe1                	j	a2beaa <hal_sfc_reg_read+0x5a>
  a2bed4:	99a2                	add	s3,s3,s0
  a2bed6:	9a22                	add	s4,s4,s0
  a2bed8:	8c81                	sub	s1,s1,s0
  a2beda:	b771                	j	a2be66 <hal_sfc_reg_read+0x16>

00a2bedc <hal_sfc_reg_write>:
  a2bedc:	8088                	push	{ra,s0-s6},-32
  a2bede:	03f57793          	andi	a5,a0,63
  a2bee2:	04000413          	li	s0,64
  a2bee6:	8c1d                	sub	s0,s0,a5
  a2bee8:	89aa                	mv	s3,a0
  a2beea:	892e                	mv	s2,a1
  a2beec:	84b2                	mv	s1,a2
  a2beee:	8ab6                	mv	s5,a3
  a2bef0:	00867363          	bgeu	a2,s0,a2bef6 <hal_sfc_reg_write+0x1a>
  a2bef4:	8432                	mv	s0,a2
  a2bef6:	86d6                	mv	a3,s5
  a2bef8:	8622                	mv	a2,s0
  a2befa:	85ca                	mv	a1,s2
  a2befc:	854e                	mv	a0,s3
  a2befe:	db1ff0ef          	jal	ra,a2bcae <hal_sfc_reg_write_once>
  a2bf02:	8a2a                	mv	s4,a0
  a2bf04:	e905                	bnez	a0,a2bf34 <hal_sfc_reg_write+0x58>
  a2bf06:	8c81                	sub	s1,s1,s0
  a2bf08:	c495                	beqz	s1,a2bf34 <hal_sfc_reg_write+0x58>
  a2bf0a:	9922                	add	s2,s2,s0
  a2bf0c:	04000b13          	li	s6,64
  a2bf10:	944e                	add	s0,s0,s3
  a2bf12:	89a6                	mv	s3,s1
  a2bf14:	009b7463          	bgeu	s6,s1,a2bf1c <hal_sfc_reg_write+0x40>
  a2bf18:	04000993          	li	s3,64
  a2bf1c:	86d6                	mv	a3,s5
  a2bf1e:	864e                	mv	a2,s3
  a2bf20:	85ca                	mv	a1,s2
  a2bf22:	8522                	mv	a0,s0
  a2bf24:	d8bff0ef          	jal	ra,a2bcae <hal_sfc_reg_write_once>
  a2bf28:	e901                	bnez	a0,a2bf38 <hal_sfc_reg_write+0x5c>
  a2bf2a:	413484b3          	sub	s1,s1,s3
  a2bf2e:	994e                	add	s2,s2,s3
  a2bf30:	944e                	add	s0,s0,s3
  a2bf32:	f0e5                	bnez	s1,a2bf12 <hal_sfc_reg_write+0x36>
  a2bf34:	8552                	mv	a0,s4
  a2bf36:	8084                	popret	{ra,s0-s6},32
  a2bf38:	8a2a                	mv	s4,a0
  a2bf3a:	bfed                	j	a2bf34 <hal_sfc_reg_write+0x58>

00a2bf3c <hal_sfc_reg_erase>:
  a2bf3c:	8238                	push	{ra,s0-s1},-48
  a2bf3e:	c62e                	sw	a1,12(sp)
  a2bf40:	84aa                	mv	s1,a0
  a2bf42:	8432                	mv	s0,a2
  a2bf44:	d55ff0ef          	jal	ra,a2bc98 <hal_sfc_write_enable>
  a2bf48:	45b2                	lw	a1,12(sp)
  a2bf4a:	e10d                	bnez	a0,a2bf6c <hal_sfc_reg_erase+0x30>
  a2bf4c:	0848                	addi	a0,sp,20
  a2bf4e:	ca2e                	sw	a1,20(sp)
  a2bf50:	cc02                	sw	zero,24(sp)
  a2bf52:	ce02                	sw	zero,28(sp)
  a2bf54:	2829                	jal	ra,a2bf6e <hal_sfc_regs_set_opt>
  a2bf56:	8526                	mv	a0,s1
  a2bf58:	c67ff0ef          	jal	ra,a2bbbe <hal_sfc_regs_set_cmd_addr>
  a2bf5c:	00144613          	xori	a2,s0,1
  a2bf60:	4581                	li	a1,0
  a2bf62:	4501                	li	a0,0
  a2bf64:	2089                	jal	ra,a2bfa6 <hal_sfc_regs_set_opt_attr>
  a2bf66:	20bd                	jal	ra,a2bfd4 <hal_sfc_regs_wait_config>
  a2bf68:	c75ff0ef          	jal	ra,a2bbdc <hal_sfc_regs_wait_ready.constprop.3>
  a2bf6c:	8234                	popret	{ra,s0-s1},48

00a2bf6e <hal_sfc_regs_set_opt>:
  a2bf6e:	00a057b7          	lui	a5,0xa05
  a2bf72:	7987a603          	lw	a2,1944(a5) # a05798 <g_sfc_cmd_regs>
  a2bf76:	411c                	lw	a5,0(a0)
  a2bf78:	450c                	lw	a1,8(a0)
  a2bf7a:	4618                	lw	a4,8(a2)
  a2bf7c:	0037d693          	srli	a3,a5,0x3
  a2bf80:	9e81                	uxtb	a3
  a2bf82:	f0077713          	andi	a4,a4,-256
  a2bf86:	8f55                	or	a4,a4,a3
  a2bf88:	4154                	lw	a3,4(a0)
  a2bf8a:	83ad                	srli	a5,a5,0xb
  a2bf8c:	8b9d                	andi	a5,a5,7
  a2bf8e:	899d                	andi	a1,a1,7
  a2bf90:	07c6                	slli	a5,a5,0x11
  a2bf92:	16fd                	addi	a3,a3,-1
  a2bf94:	03f6f693          	andi	a3,a3,63
  a2bf98:	08b7a79b          	orshf	a5,a5,a1,sll,4
  a2bf9c:	12d7a79b          	orshf	a5,a5,a3,sll,9
  a2bfa0:	c618                	sw	a4,8(a2)
  a2bfa2:	c21c                	sw	a5,0(a2)
  a2bfa4:	8082                	ret

00a2bfa6 <hal_sfc_regs_set_opt_attr>:
  a2bfa6:	00a057b7          	lui	a5,0xa05
  a2bfaa:	7987a703          	lw	a4,1944(a5) # a05798 <g_sfc_cmd_regs>
  a2bfae:	8905                	andi	a0,a0,1
  a2bfb0:	8985                	andi	a1,a1,1
  a2bfb2:	431c                	lw	a5,0(a4)
  a2bfb4:	8a05                	andi	a2,a2,1
  a2bfb6:	eff7f793          	andi	a5,a5,-257
  a2bfba:	10a7a79b          	orshf	a5,a5,a0,sll,8
  a2bfbe:	f7f7f793          	andi	a5,a5,-129
  a2bfc2:	0eb7a79b          	orshf	a5,a5,a1,sll,7
  a2bfc6:	9bdd                	andi	a5,a5,-9
  a2bfc8:	06c7a79b          	orshf	a5,a5,a2,sll,3
  a2bfcc:	0037e793          	ori	a5,a5,3
  a2bfd0:	c31c                	sw	a5,0(a4)
  a2bfd2:	8082                	ret

00a2bfd4 <hal_sfc_regs_wait_config>:
  a2bfd4:	00a057b7          	lui	a5,0xa05
  a2bfd8:	7987a703          	lw	a4,1944(a5) # a05798 <g_sfc_cmd_regs>
  a2bfdc:	431c                	lw	a5,0(a4)
  a2bfde:	8b85                	andi	a5,a5,1
  a2bfe0:	fff5                	bnez	a5,a2bfdc <hal_sfc_regs_wait_config+0x8>
  a2bfe2:	8082                	ret

00a2bfe4 <hal_sfc_regs_set_bus_read>:
  a2bfe4:	00a057b7          	lui	a5,0xa05
  a2bfe8:	7907a603          	lw	a2,1936(a5) # a05790 <g_sfc_bus_regs>
  a2bfec:	80000737          	lui	a4,0x80000
  a2bff0:	ffff 00ff 069f      	l.li	a3,0xffff00ff
  a2bff6:	421c                	lw	a5,0(a2)
  a2bff8:	8fd9                	or	a5,a5,a4
  a2bffa:	00355713          	srli	a4,a0,0x3
  a2bffe:	9f01                	uxtb	a4
  a2c000:	8ff5                	and	a5,a5,a3
  a2c002:	10e7a79b          	orshf	a5,a5,a4,sll,8
  a2c006:	00b55693          	srli	a3,a0,0xb
  a2c00a:	8a9d                	andi	a3,a3,7
  a2c00c:	812d                	srli	a0,a0,0xb
  a2c00e:	fc07f793          	andi	a5,a5,-64
  a2c012:	03857713          	andi	a4,a0,56
  a2c016:	00d7e533          	or	a0,a5,a3
  a2c01a:	8d59                	or	a0,a0,a4
  a2c01c:	c208                	sw	a0,0(a2)
  a2c01e:	8082                	ret

00a2c020 <hal_sfc_regs_set_bus_write>:
  a2c020:	00a057b7          	lui	a5,0xa05
  a2c024:	7907a683          	lw	a3,1936(a5) # a05790 <g_sfc_bus_regs>
  a2c028:	00355713          	srli	a4,a0,0x3
  a2c02c:	c03f ffff 061f      	l.li	a2,0xc03fffff
  a2c032:	429c                	lw	a5,0(a3)
  a2c034:	9f01                	uxtb	a4
  a2c036:	812d                	srli	a0,a0,0xb
  a2c038:	8ff1                	and	a5,a5,a2
  a2c03a:	2ce7a79b          	orshf	a5,a5,a4,sll,22
  a2c03e:	fff8 ffff 071f      	l.li	a4,0xfff8ffff
  a2c044:	8ff9                	and	a5,a5,a4
  a2c046:	891d                	andi	a0,a0,7
  a2c048:	20a7a79b          	orshf	a5,a5,a0,sll,16
  a2c04c:	40000737          	lui	a4,0x40000
  a2c050:	8fd9                	or	a5,a5,a4
  a2c052:	c29c                	sw	a5,0(a3)
  a2c054:	8082                	ret

00a2c056 <pmp_enable>:
  a2c056:	8148                	push	{ra,s0-s2},-32
  a2c058:	004c                	addi	a1,sp,4
  a2c05a:	02000513          	li	a0,32
  a2c05e:	c202                	sw	zero,4(sp)
  a2c060:	c402                	sw	zero,8(sp)
  a2c062:	c602                	sw	zero,12(sp)
  a2c064:	3c7010ef          	jal	ra,a2dc2a <uapi_partition_get_info>
  a2c068:	4722                	lw	a4,8(sp)
  a2c06a:	00a34437          	lui	s0,0xa34
  a2c06e:	00200937          	lui	s2,0x200
  a2c072:	974a                	add	a4,a4,s2
  a2c074:	f9840493          	addi	s1,s0,-104 # a33f98 <g_region_attr>
  a2c078:	004c                	addi	a1,sp,4
  a2c07a:	02100513          	li	a0,33
  a2c07e:	d0d8                	sw	a4,36(s1)
  a2c080:	3ab010ef          	jal	ra,a2dc2a <uapi_partition_get_info>
  a2c084:	47a2                	lw	a5,8(sp)
  a2c086:	4595                	li	a1,5
  a2c088:	f9840513          	addi	a0,s0,-104
  a2c08c:	97ca                	add	a5,a5,s2
  a2c08e:	d8dc                	sw	a5,52(s1)
  a2c090:	8bbfd0ef          	jal	ra,a2994a <uapi_pmp_config>
  a2c094:	8144                	popret	{ra,s0-s2},32

00a2c096 <uart_port_register_hal_funcs>:
  a2c096:	8028                	push	{ra,s0},-16
  a2c098:	842a                	mv	s0,a0
  a2c09a:	917ff0ef          	jal	ra,a2b9b0 <hal_uart_v151_funcs_get>
  a2c09e:	85aa                	mv	a1,a0
  a2c0a0:	8522                	mv	a0,s0
  a2c0a2:	8020                	pop	{ra,s0},16
  a2c0a4:	c72ff06f          	j	a2b516 <hal_uart_register_funcs>

00a2c0a8 <uart_port_set_clock_value>:
  a2c0a8:	00a3 3fe8 079f      	l.li	a5,0xa33fe8
  a2c0ae:	c38c                	sw	a1,0(a5)
  a2c0b0:	8082                	ret

00a2c0b2 <uart_port_get_clock_value>:
  a2c0b2:	00a3 3fe8 079f      	l.li	a5,0xa33fe8
  a2c0b8:	4388                	lw	a0,0(a5)
  a2c0ba:	8082                	ret

00a2c0bc <uart_port_config_pinmux>:
  a2c0bc:	020513bb          	bnei	a0,2,a2c0ca <uart_port_config_pinmux+0xe>
  a2c0c0:	4400d7b7          	lui	a5,0x4400d
  a2c0c4:	4705                	li	a4,1
  a2c0c6:	db98                	sw	a4,48(a5)
  a2c0c8:	dbd8                	sw	a4,52(a5)
  a2c0ca:	8082                	ret

00a2c0cc <uart_port_register_irq>:
  a2c0cc:	8082                	ret

00a2c0ce <uart_port_unregister_irq>:
  a2c0ce:	8082                	ret

00a2c0d0 <print_str>:
  a2c0d0:	715d                	addi	sp,sp,-80
  a2c0d2:	d606                	sw	ra,44(sp)
  a2c0d4:	d422                	sw	s0,40(sp)
  a2c0d6:	da2e                	sw	a1,52(sp)
  a2c0d8:	dc32                	sw	a2,56(sp)
  a2c0da:	de36                	sw	a3,60(sp)
  a2c0dc:	c0ba                	sw	a4,64(sp)
  a2c0de:	c2be                	sw	a5,68(sp)
  a2c0e0:	c4c2                	sw	a6,72(sp)
  a2c0e2:	c6c6                	sw	a7,76(sp)
  a2c0e4:	c529                	beqz	a0,a2c12e <print_str+0x5e>
  a2c0e6:	c62a                	sw	a0,12(sp)
  a2c0e8:	c25fc0ef          	jal	ra,a28d0c <strlen>
  a2c0ec:	46b2                	lw	a3,12(sp)
  a2c0ee:	c121                	beqz	a0,a2c12e <print_str+0x5e>
  a2c0f0:	00a05437          	lui	s0,0xa05
  a2c0f4:	1858                	addi	a4,sp,52
  a2c0f6:	07f00613          	li	a2,127
  a2c0fa:	08000593          	li	a1,128
  a2c0fe:	7a440513          	addi	a0,s0,1956 # a057a4 <str_buf.2993>
  a2c102:	ce3a                	sw	a4,28(sp)
  a2c104:	2a0050ef          	jal	ra,a313a4 <vsnprintf_s>
  a2c108:	862a                	mv	a2,a0
  a2c10a:	7a440793          	addi	a5,s0,1956
  a2c10e:	ff05123b          	bnei	a0,-1,a2c116 <print_str+0x46>
  a2c112:	2398                	lbu	a4,0(a5)
  a2c114:	cf09                	beqz	a4,a2c12e <print_str+0x5e>
  a2c116:	97b2                	add	a5,a5,a2
  a2c118:	00078023          	sb	zero,0(a5) # 4400d000 <_gp_+0x435d8778>
  a2c11c:	00a0 57a0 079f      	l.li	a5,0xa057a0
  a2c122:	2388                	lbu	a0,0(a5)
  a2c124:	4681                	li	a3,0
  a2c126:	7a440593          	addi	a1,s0,1956
  a2c12a:	db0fe0ef          	jal	ra,a2a6da <uapi_uart_write>
  a2c12e:	50b2                	lw	ra,44(sp)
  a2c130:	5422                	lw	s0,40(sp)
  a2c132:	6161                	addi	sp,sp,80
  a2c134:	8082                	ret

00a2c136 <uart_porting_lock>:
  a2c136:	80bfd06f          	j	a29940 <osal_irq_lock>

00a2c13a <uart_porting_unlock>:
  a2c13a:	852e                	mv	a0,a1
  a2c13c:	80dfd06f          	j	a29948 <osal_irq_restore>

00a2c140 <hal_systick_get_count>:
  a2c140:	400057b7          	lui	a5,0x40005
  a2c144:	4fd8                	lw	a4,28(a5)
  a2c146:	4f98                	lw	a4,24(a5)
  a2c148:	4fc8                	lw	a0,28(a5)
  a2c14a:	4f8c                	lw	a1,24(a5)
  a2c14c:	9da1                	uxth	a1
  a2c14e:	8082                	ret

00a2c150 <systick_clock_get>:
  a2c150:	00a3 3fec 079f      	l.li	a5,0xa33fec
  a2c156:	4388                	lw	a0,0(a5)
  a2c158:	8082                	ret

00a2c15a <tcxo_porting_base_addr_get>:
  a2c15a:	4400 04c0 051f      	l.li	a0,0x440004c0
  a2c160:	8082                	ret

00a2c162 <tcxo_porting_ticks_per_usec_get>:
  a2c162:	00a3 3ff0 079f      	l.li	a5,0xa33ff0
  a2c168:	4388                	lw	a0,0(a5)
  a2c16a:	8082                	ret

00a2c16c <tcxo_porting_ticks_per_usec_set>:
  a2c16c:	00a3 3ff0 079f      	l.li	a5,0xa33ff0
  a2c172:	c388                	sw	a0,0(a5)
  a2c174:	8082                	ret

00a2c176 <watchdog_port_register_hal_funcs>:
  a2c176:	8018                	push	{ra},-16
  a2c178:	9e5ff0ef          	jal	ra,a2bb5c <hal_watchdog_v151_funcs_get>
  a2c17c:	8010                	pop	{ra},16
  a2c17e:	83bff06f          	j	a2b9b8 <hal_watchdog_register_funcs>

00a2c182 <watchdog_port_unregister_hal_funcs>:
  a2c182:	84dff06f          	j	a2b9ce <hal_watchdog_unregister_funcs>

00a2c186 <watchdog_port_register_irq>:
  a2c186:	8082                	ret

00a2c188 <watchdog_port_set_clock>:
  a2c188:	8028                	push	{ra,s0},-16
  a2c18a:	842a                	mv	s0,a0
  a2c18c:	fb4fd0ef          	jal	ra,a29940 <osal_irq_lock>
  a2c190:	00a3 3ff8 079f      	l.li	a5,0xa33ff8
  a2c196:	c380                	sw	s0,0(a5)
  a2c198:	8020                	pop	{ra,s0},16
  a2c19a:	faefd06f          	j	a29948 <osal_irq_restore>

00a2c19e <watchdog_port_get_clock>:
  a2c19e:	00a3 3ff8 079f      	l.li	a5,0xa33ff8
  a2c1a4:	4388                	lw	a0,0(a5)
  a2c1a6:	8082                	ret

00a2c1a8 <pmp_port_register_hal_funcs>:
  a2c1a8:	8018                	push	{ra},-16
  a2c1aa:	a2dfe0ef          	jal	ra,a2abd6 <hal_pmp_riscv31_funcs_get>
  a2c1ae:	8010                	pop	{ra},16
  a2c1b0:	9bbfe06f          	j	a2ab6a <hal_pmp_register_funcs>

00a2c1b4 <sfc_port_get_flash_spi_infos>:
  a2c1b4:	00a3 2838 051f      	l.li	a0,0xa32838
  a2c1ba:	8082                	ret

00a2c1bc <sfc_port_get_flash_num>:
  a2c1bc:	4505                	li	a0,1
  a2c1be:	8082                	ret

00a2c1c0 <sfc_port_get_unknown_flash_info>:
  a2c1c0:	00a3 2854 051f      	l.li	a0,0xa32854
  a2c1c6:	8082                	ret

00a2c1c8 <sfc_port_get_sfc_start_addr>:
  a2c1c8:	00200537          	lui	a0,0x200
  a2c1cc:	8082                	ret

00a2c1ce <sfc_port_get_sfc_end_addr>:
  a2c1ce:	009f ffff 051f      	l.li	a0,0x9fffff
  a2c1d4:	8082                	ret

00a2c1d6 <sfc_port_get_sfc_global_conf_base_addr>:
  a2c1d6:	4800 0100 051f      	l.li	a0,0x48000100
  a2c1dc:	8082                	ret

00a2c1de <sfc_port_get_sfc_bus_regs_base_addr>:
  a2c1de:	4800 0200 051f      	l.li	a0,0x48000200
  a2c1e4:	8082                	ret

00a2c1e6 <sfc_port_get_sfc_bus_dma_regs_base_addr>:
  a2c1e6:	4800 0240 051f      	l.li	a0,0x48000240
  a2c1ec:	8082                	ret

00a2c1ee <sfc_port_get_sfc_cmd_regs_base_addr>:
  a2c1ee:	4800 0300 051f      	l.li	a0,0x48000300
  a2c1f4:	8082                	ret

00a2c1f6 <sfc_port_get_sfc_cmd_databuf_base_addr>:
  a2c1f6:	4800 0400 051f      	l.li	a0,0x48000400
  a2c1fc:	8082                	ret

00a2c1fe <sfc_port_get_delay_once_time>:
  a2c1fe:	00a3 3ffc 079f      	l.li	a5,0xa33ffc
  a2c204:	4388                	lw	a0,0(a5)
  a2c206:	8082                	ret

00a2c208 <sfc_port_get_delay_times>:
  a2c208:	00a3 4000 079f      	l.li	a5,0xa34000
  a2c20e:	4388                	lw	a0,0(a5)
  a2c210:	8082                	ret

00a2c212 <sfc_port_lock_init>:
  a2c212:	8082                	ret

00a2c214 <sfc_port_lock>:
  a2c214:	4501                	li	a0,0
  a2c216:	8082                	ret

00a2c218 <sfc_port_unlock>:
  a2c218:	8082                	ret

00a2c21a <hal_sfc_regs_wait_ready.constprop.0>:
  a2c21a:	8158                	push	{ra,s0-s3},-48
  a2c21c:	fedff0ef          	jal	ra,a2c208 <sfc_port_get_delay_times>
  a2c220:	84aa                	mv	s1,a0
  a2c222:	fddff0ef          	jal	ra,a2c1fe <sfc_port_get_delay_once_time>
  a2c226:	02800793          	li	a5,40
  a2c22a:	c23e                	sw	a5,4(sp)
  a2c22c:	4785                	li	a5,1
  a2c22e:	892a                	mv	s2,a0
  a2c230:	c602                	sw	zero,12(sp)
  a2c232:	c43e                	sw	a5,8(sp)
  a2c234:	4401                	li	s0,0
  a2c236:	00a059b7          	lui	s3,0xa05
  a2c23a:	0048                	addi	a0,sp,4
  a2c23c:	d33ff0ef          	jal	ra,a2bf6e <hal_sfc_regs_set_opt>
  a2c240:	4601                	li	a2,0
  a2c242:	4585                	li	a1,1
  a2c244:	4505                	li	a0,1
  a2c246:	d61ff0ef          	jal	ra,a2bfa6 <hal_sfc_regs_set_opt_attr>
  a2c24a:	d8bff0ef          	jal	ra,a2bfd4 <hal_sfc_regs_wait_config>
  a2c24e:	7949a783          	lw	a5,1940(s3) # a05794 <g_sfc_cmd_databuf>
  a2c252:	439c                	lw	a5,0(a5)
  a2c254:	8b85                	andi	a5,a5,1
  a2c256:	cf91                	beqz	a5,a2c272 <hal_sfc_regs_wait_ready.constprop.0+0x58>
  a2c258:	854a                	mv	a0,s2
  a2c25a:	8a6fe0ef          	jal	ra,a2a300 <uapi_tcxo_delay_us>
  a2c25e:	00140793          	addi	a5,s0,1
  a2c262:	00946663          	bltu	s0,s1,a2c26e <hal_sfc_regs_wait_ready.constprop.0+0x54>
  a2c266:	8000 1344 051f      	l.li	a0,0x80001344
  a2c26c:	8154                	popret	{ra,s0-s3},48
  a2c26e:	843e                	mv	s0,a5
  a2c270:	b7e9                	j	a2c23a <hal_sfc_regs_wait_ready.constprop.0+0x20>
  a2c272:	4501                	li	a0,0
  a2c274:	bfe5                	j	a2c26c <hal_sfc_regs_wait_ready.constprop.0+0x52>

00a2c276 <sfc_port_write_sr>:
  a2c276:	8148                	push	{ra,s0-s2},-32
  a2c278:	892a                	mv	s2,a0
  a2c27a:	842e                	mv	s0,a1
  a2c27c:	84b2                	mv	s1,a2
  a2c27e:	f9dff0ef          	jal	ra,a2c21a <hal_sfc_regs_wait_ready.constprop.0>
  a2c282:	4792                	lw	a5,4(sp)
  a2c284:	4719                	li	a4,6
  a2c286:	9be1                	andi	a5,a5,-8
  a2c288:	0017e793          	ori	a5,a5,1
  a2c28c:	c23e                	sw	a5,4(sp)
  a2c28e:	00090463          	beqz	s2,a2c296 <sfc_port_write_sr+0x20>
  a2c292:	05000713          	li	a4,80
  a2c296:	4792                	lw	a5,4(sp)
  a2c298:	0048                	addi	a0,sp,4
  a2c29a:	c402                	sw	zero,8(sp)
  a2c29c:	8077f793          	andi	a5,a5,-2041
  a2c2a0:	06e7a79b          	orshf	a5,a5,a4,sll,3
  a2c2a4:	7ff7f793          	andi	a5,a5,2047
  a2c2a8:	c23e                	sw	a5,4(sp)
  a2c2aa:	c602                	sw	zero,12(sp)
  a2c2ac:	cc3ff0ef          	jal	ra,a2bf6e <hal_sfc_regs_set_opt>
  a2c2b0:	4601                	li	a2,0
  a2c2b2:	4581                	li	a1,0
  a2c2b4:	4501                	li	a0,0
  a2c2b6:	cf1ff0ef          	jal	ra,a2bfa6 <hal_sfc_regs_set_opt_attr>
  a2c2ba:	d1bff0ef          	jal	ra,a2bfd4 <hal_sfc_regs_wait_config>
  a2c2be:	4785                	li	a5,1
  a2c2c0:	c43e                	sw	a5,8(sp)
  a2c2c2:	00a057b7          	lui	a5,0xa05
  a2c2c6:	7947a783          	lw	a5,1940(a5) # a05794 <g_sfc_cmd_databuf>
  a2c2ca:	040e                	slli	s0,s0,0x3
  a2c2cc:	00146413          	ori	s0,s0,1
  a2c2d0:	c222                	sw	s0,4(sp)
  a2c2d2:	c602                	sw	zero,12(sp)
  a2c2d4:	c384                	sw	s1,0(a5)
  a2c2d6:	0048                	addi	a0,sp,4
  a2c2d8:	c97ff0ef          	jal	ra,a2bf6e <hal_sfc_regs_set_opt>
  a2c2dc:	4601                	li	a2,0
  a2c2de:	4585                	li	a1,1
  a2c2e0:	4501                	li	a0,0
  a2c2e2:	cc5ff0ef          	jal	ra,a2bfa6 <hal_sfc_regs_set_opt_attr>
  a2c2e6:	cefff0ef          	jal	ra,a2bfd4 <hal_sfc_regs_wait_config>
  a2c2ea:	8144                	popret	{ra,s0-s2},32

00a2c2ec <sfc_port_read_sr>:
  a2c2ec:	8118                	push	{ra},-32
  a2c2ee:	9d01                	uxtb	a0
  a2c2f0:	4785                	li	a5,1
  a2c2f2:	050e                	slli	a0,a0,0x3
  a2c2f4:	c43e                	sw	a5,8(sp)
  a2c2f6:	c602                	sw	zero,12(sp)
  a2c2f8:	c22a                	sw	a0,4(sp)
  a2c2fa:	f21ff0ef          	jal	ra,a2c21a <hal_sfc_regs_wait_ready.constprop.0>
  a2c2fe:	0048                	addi	a0,sp,4
  a2c300:	c6fff0ef          	jal	ra,a2bf6e <hal_sfc_regs_set_opt>
  a2c304:	4601                	li	a2,0
  a2c306:	4585                	li	a1,1
  a2c308:	4505                	li	a0,1
  a2c30a:	c9dff0ef          	jal	ra,a2bfa6 <hal_sfc_regs_set_opt_attr>
  a2c30e:	cc7ff0ef          	jal	ra,a2bfd4 <hal_sfc_regs_wait_config>
  a2c312:	00a057b7          	lui	a5,0xa05
  a2c316:	7947a783          	lw	a5,1940(a5) # a05794 <g_sfc_cmd_databuf>
  a2c31a:	4388                	lw	a0,0(a5)
  a2c31c:	8114                	popret	{ra},32

00a2c31e <sfc_port_write_lock>:
  a2c31e:	000207b7          	lui	a5,0x20
  a2c322:	02f56563          	bltu	a0,a5,a2c34c <sfc_port_write_lock+0x2e>
  a2c326:	004007b7          	lui	a5,0x400
  a2c32a:	02b7e163          	bltu	a5,a1,a2c34c <sfc_port_write_lock+0x2e>
  a2c32e:	8018                	push	{ra},-16
  a2c330:	02800613          	li	a2,40
  a2c334:	4585                	li	a1,1
  a2c336:	4505                	li	a0,1
  a2c338:	f3fff0ef          	jal	ra,a2c276 <sfc_port_write_sr>
  a2c33c:	4609                	li	a2,2
  a2c33e:	03100593          	li	a1,49
  a2c342:	4505                	li	a0,1
  a2c344:	f33ff0ef          	jal	ra,a2c276 <sfc_port_write_sr>
  a2c348:	4501                	li	a0,0
  a2c34a:	8014                	popret	{ra},16
  a2c34c:	4501                	li	a0,0
  a2c34e:	8082                	ret

00a2c350 <sfc_port_write_unlock>:
  a2c350:	8018                	push	{ra},-16
  a2c352:	4671                	li	a2,28
  a2c354:	4585                	li	a1,1
  a2c356:	4505                	li	a0,1
  a2c358:	f1fff0ef          	jal	ra,a2c276 <sfc_port_write_sr>
  a2c35c:	4609                	li	a2,2
  a2c35e:	03100593          	li	a1,49
  a2c362:	4505                	li	a0,1
  a2c364:	8010                	pop	{ra},16
  a2c366:	f11ff06f          	j	a2c276 <sfc_port_write_sr>

00a2c36a <sfc_port_fix_sr>:
  a2c36a:	8118                	push	{ra},-32
  a2c36c:	0068                	addi	a0,sp,12
  a2c36e:	c602                	sw	zero,12(sp)
  a2c370:	9bbff0ef          	jal	ra,a2bd2a <hal_sfc_get_flash_id>
  a2c374:	e901                	bnez	a0,a2c384 <sfc_port_fix_sr+0x1a>
  a2c376:	4732                	lw	a4,12(sp)
  a2c378:	0016 40c8 079f      	l.li	a5,0x1640c8
  a2c37e:	00f71463          	bne	a4,a5,a2c386 <sfc_port_fix_sr+0x1c>
  a2c382:	2079                	jal	ra,a2c410 <sfc_port_fix_sr_gd25q32>
  a2c384:	8114                	popret	{ra},32
  a2c386:	80000537          	lui	a0,0x80000
  a2c38a:	0509                	addi	a0,a0,2 # 80000002 <_gp_+0x7f5cb77a>
  a2c38c:	bfe5                	j	a2c384 <sfc_port_fix_sr+0x1a>

00a2c38e <sfc_port_gd25q32_read_sr>:
  a2c38e:	8078                	push	{ra,s0-s5},-32
  a2c390:	892a                	mv	s2,a0
  a2c392:	448d                	li	s1,3
  a2c394:	4995                	li	s3,5
  a2c396:	03500a13          	li	s4,53
  a2c39a:	00a33ab7          	lui	s5,0xa33
  a2c39e:	854a                	mv	a0,s2
  a2c3a0:	f4dff0ef          	jal	ra,a2c2ec <sfc_port_read_sr>
  a2c3a4:	0ff57413          	andi	s0,a0,255
  a2c3a8:	03391f63          	bne	s2,s3,a2c3e6 <sfc_port_gd25q32_read_sr+0x58>
  a2c3ac:	09c47413          	andi	s0,s0,156
  a2c3b0:	1411                	addi	s0,s0,-28
  a2c3b2:	00143413          	seqz	s0,s0
  a2c3b6:	4585                	li	a1,1
  a2c3b8:	46f1                	li	a3,28
  a2c3ba:	e419                	bnez	s0,a2c3c8 <sfc_port_gd25q32_read_sr+0x3a>
  a2c3bc:	0ff57613          	andi	a2,a0,255
  a2c3c0:	898a8513          	addi	a0,s5,-1896 # a32898 <g_flash_spi_unknown_info+0x44>
  a2c3c4:	d0dff0ef          	jal	ra,a2c0d0 <print_str>
  a2c3c8:	eb9fd0ef          	jal	ra,a2a280 <uapi_tcxo_get_count>
  a2c3cc:	06400613          	li	a2,100
  a2c3d0:	4681                	li	a3,0
  a2c3d2:	9cefc0ef          	jal	ra,a285a0 <__umoddi3>
  a2c3d6:	0505                	addi	a0,a0,1
  a2c3d8:	f29fd0ef          	jal	ra,a2a300 <uapi_tcxo_delay_us>
  a2c3dc:	c805                	beqz	s0,a2c40c <sfc_port_gd25q32_read_sr+0x7e>
  a2c3de:	14fd                	addi	s1,s1,-1
  a2c3e0:	fcdd                	bnez	s1,a2c39e <sfc_port_gd25q32_read_sr+0x10>
  a2c3e2:	4501                	li	a0,0
  a2c3e4:	8074                	popret	{ra,s0-s5},32
  a2c3e6:	01491a63          	bne	s2,s4,a2c3fa <sfc_port_gd25q32_read_sr+0x6c>
  a2c3ea:	04347413          	andi	s0,s0,67
  a2c3ee:	1479                	addi	s0,s0,-2
  a2c3f0:	00143413          	seqz	s0,s0
  a2c3f4:	4589                	li	a1,2
  a2c3f6:	4689                	li	a3,2
  a2c3f8:	b7c9                	j	a2c3ba <sfc_port_gd25q32_read_sr+0x2c>
  a2c3fa:	06147413          	andi	s0,s0,97
  a2c3fe:	1401                	addi	s0,s0,-32
  a2c400:	00143413          	seqz	s0,s0
  a2c404:	458d                	li	a1,3
  a2c406:	02000693          	li	a3,32
  a2c40a:	bf45                	j	a2c3ba <sfc_port_gd25q32_read_sr+0x2c>
  a2c40c:	557d                	li	a0,-1
  a2c40e:	bfd9                	j	a2c3e4 <sfc_port_gd25q32_read_sr+0x56>

00a2c410 <sfc_port_fix_sr_gd25q32>:
  a2c410:	8068                	push	{ra,s0-s4},-32
  a2c412:	4481                	li	s1,0
  a2c414:	498d                	li	s3,3
  a2c416:	4515                	li	a0,5
  a2c418:	f77ff0ef          	jal	ra,a2c38e <sfc_port_gd25q32_read_sr>
  a2c41c:	8a2a                	mv	s4,a0
  a2c41e:	03500513          	li	a0,53
  a2c422:	f6dff0ef          	jal	ra,a2c38e <sfc_port_gd25q32_read_sr>
  a2c426:	892a                	mv	s2,a0
  a2c428:	4555                	li	a0,21
  a2c42a:	f65ff0ef          	jal	ra,a2c38e <sfc_port_gd25q32_read_sr>
  a2c42e:	842a                	mv	s0,a0
  a2c430:	040a1763          	bnez	s4,a2c47e <sfc_port_fix_sr_gd25q32+0x6e>
  a2c434:	02090863          	beqz	s2,a2c464 <sfc_port_fix_sr_gd25q32+0x54>
  a2c438:	4609                	li	a2,2
  a2c43a:	03100593          	li	a1,49
  a2c43e:	4501                	li	a0,0
  a2c440:	e37ff0ef          	jal	ra,a2c276 <sfc_port_write_sr>
  a2c444:	c419                	beqz	s0,a2c452 <sfc_port_fix_sr_gd25q32+0x42>
  a2c446:	02000613          	li	a2,32
  a2c44a:	45c5                	li	a1,17
  a2c44c:	4501                	li	a0,0
  a2c44e:	e29ff0ef          	jal	ra,a2c276 <sfc_port_write_sr>
  a2c452:	03c00513          	li	a0,60
  a2c456:	0485                	addi	s1,s1,1
  a2c458:	e59fd0ef          	jal	ra,a2a2b0 <uapi_tcxo_delay_ms>
  a2c45c:	fb349de3          	bne	s1,s3,a2c416 <sfc_port_fix_sr_gd25q32+0x6>
  a2c460:	547d                	li	s0,-1
  a2c462:	a801                	j	a2c472 <sfc_port_fix_sr_gd25q32+0x62>
  a2c464:	f16d                	bnez	a0,a2c446 <sfc_port_fix_sr_gd25q32+0x36>
  a2c466:	e881                	bnez	s1,a2c476 <sfc_port_fix_sr_gd25q32+0x66>
  a2c468:	00a3 2870 051f      	l.li	a0,0xa32870
  a2c46e:	c63ff0ef          	jal	ra,a2c0d0 <print_str>
  a2c472:	8522                	mv	a0,s0
  a2c474:	8064                	popret	{ra,s0-s4},32
  a2c476:	00a3 2888 051f      	l.li	a0,0xa32888
  a2c47c:	bfcd                	j	a2c46e <sfc_port_fix_sr_gd25q32+0x5e>
  a2c47e:	4671                	li	a2,28
  a2c480:	4585                	li	a1,1
  a2c482:	4501                	li	a0,0
  a2c484:	df3ff0ef          	jal	ra,a2c276 <sfc_port_write_sr>
  a2c488:	fa090ee3          	beqz	s2,a2c444 <sfc_port_fix_sr_gd25q32+0x34>
  a2c48c:	b775                	j	a2c438 <sfc_port_fix_sr_gd25q32+0x28>

00a2c48e <build_flash_ctrl>:
  a2c48e:	455c                	lw	a5,12(a0)
  a2c490:	04b7859b          	addshf	a1,a5,a1,sll,2
  a2c494:	4194                	lw	a3,0(a1)
  a2c496:	491c                	lw	a5,16(a0)
  a2c498:	04c7861b          	addshf	a2,a5,a2,sll,2
  a2c49c:	0076f793          	andi	a5,a3,7
  a2c4a0:	4218                	lw	a4,0(a2)
  a2c4a2:	01079bbb          	bnei	a5,1,a2c4d0 <build_flash_ctrl+0x42>
  a2c4a6:	8b1d                	andi	a4,a4,7
  a2c4a8:	02f71463          	bne	a4,a5,a2c4d0 <build_flash_ctrl+0x42>
  a2c4ac:	00a0 5824 079f      	l.li	a5,0xa05824
  a2c4b2:	c3d4                	sw	a3,4(a5)
  a2c4b4:	4214                	lw	a3,0(a2)
  a2c4b6:	c7d4                	sw	a3,12(a5)
  a2c4b8:	4954                	lw	a3,20(a0)
  a2c4ba:	cb94                	sw	a3,16(a5)
  a2c4bc:	4154                	lw	a3,4(a0)
  a2c4be:	c394                	sw	a3,0(a5)
  a2c4c0:	4514                	lw	a3,8(a0)
  a2c4c2:	00d77b63          	bgeu	a4,a3,a2c4d8 <build_flash_ctrl+0x4a>
  a2c4c6:	4d18                	lw	a4,24(a0)
  a2c4c8:	c794                	sw	a3,8(a5)
  a2c4ca:	4501                	li	a0,0
  a2c4cc:	cbd8                	sw	a4,20(a5)
  a2c4ce:	8082                	ret
  a2c4d0:	8000 1346 051f      	l.li	a0,0x80001346
  a2c4d6:	8082                	ret
  a2c4d8:	8000 1349 051f      	l.li	a0,0x80001349
  a2c4de:	8082                	ret

00a2c4e0 <check_opt_param>:
  a2c4e0:	00a0 583c 079f      	l.li	a5,0xa0583c
  a2c4e6:	239c                	lbu	a5,0(a5)
  a2c4e8:	cf99                	beqz	a5,a2c506 <check_opt_param+0x26>
  a2c4ea:	00a0 5824 071f      	l.li	a4,0xa05824
  a2c4f0:	4318                	lw	a4,0(a4)
  a2c4f2:	00b507b3          	add	a5,a0,a1
  a2c4f6:	00f76c63          	bltu	a4,a5,a2c50e <check_opt_param+0x2e>
  a2c4fa:	00f57a63          	bgeu	a0,a5,a2c50e <check_opt_param+0x2e>
  a2c4fe:	00b7e863          	bltu	a5,a1,a2c50e <check_opt_param+0x2e>
  a2c502:	4501                	li	a0,0
  a2c504:	8082                	ret
  a2c506:	8000 1340 051f      	l.li	a0,0x80001340
  a2c50c:	8082                	ret
  a2c50e:	80000537          	lui	a0,0x80000
  a2c512:	0505                	addi	a0,a0,1 # 80000001 <_gp_+0x7f5cb779>
  a2c514:	8082                	ret

00a2c516 <check_init_param>:
  a2c516:	8078                	push	{ra,s0-s5},-32
  a2c518:	00452a83          	lw	s5,4(a0)
  a2c51c:	00a06937          	lui	s2,0xa06
  a2c520:	89aa                	mv	s3,a0
  a2c522:	82492403          	lw	s0,-2012(s2) # a05824 <g_flash_ctrl>
  a2c526:	00852a03          	lw	s4,8(a0)
  a2c52a:	c9fff0ef          	jal	ra,a2c1c8 <sfc_port_get_sfc_start_addr>
  a2c52e:	00aaf663          	bgeu	s5,a0,a2c53a <check_init_param+0x24>
  a2c532:	8000 1342 051f      	l.li	a0,0x80001342
  a2c538:	8074                	popret	{ra,s0-s5},32
  a2c53a:	82490913          	addi	s2,s2,-2012
  a2c53e:	008a7363          	bgeu	s4,s0,a2c544 <check_init_param+0x2e>
  a2c542:	8452                	mv	s0,s4
  a2c544:	0049a483          	lw	s1,4(s3)
  a2c548:	14fd                	addi	s1,s1,-1
  a2c54a:	94a2                	add	s1,s1,s0
  a2c54c:	c83ff0ef          	jal	ra,a2c1ce <sfc_port_get_sfc_end_addr>
  a2c550:	fe9561e3          	bltu	a0,s1,a2c532 <check_init_param+0x1c>
  a2c554:	00892023          	sw	s0,0(s2)
  a2c558:	4501                	li	a0,0
  a2c55a:	bff9                	j	a2c538 <check_init_param+0x22>

00a2c55c <uapi_sfc_init>:
  a2c55c:	00a067b7          	lui	a5,0xa06
  a2c560:	83c7c703          	lbu	a4,-1988(a5) # a0583c <g_sfc_inited>
  a2c564:	ef59                	bnez	a4,a2c602 <uapi_sfc_init+0xa6>
  a2c566:	8258                	push	{ra,s0-s3},-64
  a2c568:	842a                	mv	s0,a0
  a2c56a:	83c78913          	addi	s2,a5,-1988
  a2c56e:	ca5ff0ef          	jal	ra,a2c212 <sfc_port_lock_init>
  a2c572:	0868                	addi	a0,sp,28
  a2c574:	fb6ff0ef          	jal	ra,a2bd2a <hal_sfc_get_flash_id>
  a2c578:	e151                	bnez	a0,a2c5fc <uapi_sfc_init+0xa0>
  a2c57a:	200c                	lbu	a1,0(s0)
  a2c57c:	3010                	lbu	a2,1(s0)
  a2c57e:	49f2                	lw	s3,28(sp)
  a2c580:	c62e                	sw	a1,12(sp)
  a2c582:	c432                	sw	a2,8(sp)
  a2c584:	c31ff0ef          	jal	ra,a2c1b4 <sfc_port_get_flash_spi_infos>
  a2c588:	84aa                	mv	s1,a0
  a2c58a:	c33ff0ef          	jal	ra,a2c1bc <sfc_port_get_flash_num>
  a2c58e:	4622                	lw	a2,8(sp)
  a2c590:	45b2                	lw	a1,12(sp)
  a2c592:	86aa                	mv	a3,a0
  a2c594:	87a6                	mv	a5,s1
  a2c596:	4701                	li	a4,0
  a2c598:	04e69963          	bne	a3,a4,a2c5ea <uapi_sfc_init+0x8e>
  a2c59c:	c25ff0ef          	jal	ra,a2c1c0 <sfc_port_get_unknown_flash_info>
  a2c5a0:	4605                	li	a2,1
  a2c5a2:	4581                	li	a1,0
  a2c5a4:	eebff0ef          	jal	ra,a2c48e <build_flash_ctrl>
  a2c5a8:	e931                	bnez	a0,a2c5fc <uapi_sfc_init+0xa0>
  a2c5aa:	00a0 583d 079f      	l.li	a5,0xa0583d
  a2c5b0:	4705                	li	a4,1
  a2c5b2:	a398                	sb	a4,0(a5)
  a2c5b4:	8522                	mv	a0,s0
  a2c5b6:	f61ff0ef          	jal	ra,a2c516 <check_init_param>
  a2c5ba:	e129                	bnez	a0,a2c5fc <uapi_sfc_init+0xa0>
  a2c5bc:	00a06537          	lui	a0,0xa06
  a2c5c0:	82452603          	lw	a2,-2012(a0) # a05824 <g_flash_ctrl>
  a2c5c4:	404c                	lw	a1,4(s0)
  a2c5c6:	82450513          	addi	a0,a0,-2012
  a2c5ca:	fa4ff0ef          	jal	ra,a2bd6e <hal_sfc_init>
  a2c5ce:	e51d                	bnez	a0,a2c5fc <uapi_sfc_init+0xa0>
  a2c5d0:	4785                	li	a5,1
  a2c5d2:	00f90023          	sb	a5,0(s2)
  a2c5d6:	00a0 583d 079f      	l.li	a5,0xa0583d
  a2c5dc:	239c                	lbu	a5,0(a5)
  a2c5de:	4501                	li	a0,0
  a2c5e0:	cf91                	beqz	a5,a2c5fc <uapi_sfc_init+0xa0>
  a2c5e2:	8000 1341 051f      	l.li	a0,0x80001341
  a2c5e8:	a811                	j	a2c5fc <uapi_sfc_init+0xa0>
  a2c5ea:	853e                	mv	a0,a5
  a2c5ec:	07f1                	addi	a5,a5,28
  a2c5ee:	fe47a803          	lw	a6,-28(a5)
  a2c5f2:	01099663          	bne	s3,a6,a2c5fe <uapi_sfc_init+0xa2>
  a2c5f6:	e99ff0ef          	jal	ra,a2c48e <build_flash_ctrl>
  a2c5fa:	dd4d                	beqz	a0,a2c5b4 <uapi_sfc_init+0x58>
  a2c5fc:	8254                	popret	{ra,s0-s3},64
  a2c5fe:	0705                	addi	a4,a4,1 # 40000001 <_gp_+0x3f5cb779>
  a2c600:	bf61                	j	a2c598 <uapi_sfc_init+0x3c>
  a2c602:	4501                	li	a0,0
  a2c604:	8082                	ret

00a2c606 <uapi_sfc_reg_read>:
  a2c606:	8188                	push	{ra,s0-s6},-48
  a2c608:	8a2e                	mv	s4,a1
  a2c60a:	85b2                	mv	a1,a2
  a2c60c:	892a                	mv	s2,a0
  a2c60e:	84b2                	mv	s1,a2
  a2c610:	ed1ff0ef          	jal	ra,a2c4e0 <check_opt_param>
  a2c614:	e13d                	bnez	a0,a2c67a <uapi_sfc_reg_read+0x74>
  a2c616:	bffff0ef          	jal	ra,a2c214 <sfc_port_lock>
  a2c61a:	00397b13          	andi	s6,s2,3
  a2c61e:	8aaa                	mv	s5,a0
  a2c620:	060b0263          	beqz	s6,a2c684 <uapi_sfc_reg_read+0x7e>
  a2c624:	4791                	li	a5,4
  a2c626:	416787b3          	sub	a5,a5,s6
  a2c62a:	41690933          	sub	s2,s2,s6
  a2c62e:	0ff4f993          	andi	s3,s1,255
  a2c632:	00f4e763          	bltu	s1,a5,a2c640 <uapi_sfc_reg_read+0x3a>
  a2c636:	4991                	li	s3,4
  a2c638:	416989b3          	sub	s3,s3,s6
  a2c63c:	0ff9f993          	andi	s3,s3,255
  a2c640:	00a0 5824 079f      	l.li	a5,0xa05824
  a2c646:	43d4                	lw	a3,4(a5)
  a2c648:	4611                	li	a2,4
  a2c64a:	006c                	addi	a1,sp,12
  a2c64c:	854a                	mv	a0,s2
  a2c64e:	c602                	sw	zero,12(sp)
  a2c650:	801ff0ef          	jal	ra,a2be50 <hal_sfc_reg_read>
  a2c654:	842a                	mv	s0,a0
  a2c656:	ed11                	bnez	a0,a2c672 <uapi_sfc_reg_read+0x6c>
  a2c658:	007c                	addi	a5,sp,12
  a2c65a:	86ce                	mv	a3,s3
  a2c65c:	01678633          	add	a2,a5,s6
  a2c660:	85ce                	mv	a1,s3
  a2c662:	8552                	mv	a0,s4
  a2c664:	382040ef          	jal	ra,a309e6 <memcpy_s>
  a2c668:	c911                	beqz	a0,a2c67c <uapi_sfc_reg_read+0x76>
  a2c66a:	80000537          	lui	a0,0x80000
  a2c66e:	00450413          	addi	s0,a0,4 # 80000004 <_gp_+0x7f5cb77c>
  a2c672:	8556                	mv	a0,s5
  a2c674:	ba5ff0ef          	jal	ra,a2c218 <sfc_port_unlock>
  a2c678:	8522                	mv	a0,s0
  a2c67a:	8184                	popret	{ra,s0-s6},48
  a2c67c:	0911                	addi	s2,s2,4
  a2c67e:	9a4e                	add	s4,s4,s3
  a2c680:	413484b3          	sub	s1,s1,s3
  a2c684:	ffc4f993          	andi	s3,s1,-4
  a2c688:	02098163          	beqz	s3,a2c6aa <uapi_sfc_reg_read+0xa4>
  a2c68c:	00a0 5824 079f      	l.li	a5,0xa05824
  a2c692:	43d4                	lw	a3,4(a5)
  a2c694:	864e                	mv	a2,s3
  a2c696:	85d2                	mv	a1,s4
  a2c698:	854a                	mv	a0,s2
  a2c69a:	fb6ff0ef          	jal	ra,a2be50 <hal_sfc_reg_read>
  a2c69e:	842a                	mv	s0,a0
  a2c6a0:	f969                	bnez	a0,a2c672 <uapi_sfc_reg_read+0x6c>
  a2c6a2:	9a4e                	add	s4,s4,s3
  a2c6a4:	994e                	add	s2,s2,s3
  a2c6a6:	413484b3          	sub	s1,s1,s3
  a2c6aa:	4401                	li	s0,0
  a2c6ac:	d0f9                	beqz	s1,a2c672 <uapi_sfc_reg_read+0x6c>
  a2c6ae:	00a0 5824 079f      	l.li	a5,0xa05824
  a2c6b4:	43d4                	lw	a3,4(a5)
  a2c6b6:	4611                	li	a2,4
  a2c6b8:	006c                	addi	a1,sp,12
  a2c6ba:	854a                	mv	a0,s2
  a2c6bc:	c602                	sw	zero,12(sp)
  a2c6be:	f92ff0ef          	jal	ra,a2be50 <hal_sfc_reg_read>
  a2c6c2:	842a                	mv	s0,a0
  a2c6c4:	86a6                	mv	a3,s1
  a2c6c6:	0070                	addi	a2,sp,12
  a2c6c8:	85a6                	mv	a1,s1
  a2c6ca:	8552                	mv	a0,s4
  a2c6cc:	31a040ef          	jal	ra,a309e6 <memcpy_s>
  a2c6d0:	d14d                	beqz	a0,a2c672 <uapi_sfc_reg_read+0x6c>
  a2c6d2:	80000437          	lui	s0,0x80000
  a2c6d6:	0411                	addi	s0,s0,4 # 80000004 <_gp_+0x7f5cb77c>
  a2c6d8:	bf69                	j	a2c672 <uapi_sfc_reg_read+0x6c>

00a2c6da <uapi_sfc_reg_write>:
  a2c6da:	8198                	push	{ra,s0-s7},-64
  a2c6dc:	8a2e                	mv	s4,a1
  a2c6de:	85b2                	mv	a1,a2
  a2c6e0:	84aa                	mv	s1,a0
  a2c6e2:	8932                	mv	s2,a2
  a2c6e4:	dfdff0ef          	jal	ra,a2c4e0 <check_opt_param>
  a2c6e8:	842a                	mv	s0,a0
  a2c6ea:	e571                	bnez	a0,a2c7b6 <uapi_sfc_reg_write+0xdc>
  a2c6ec:	012485b3          	add	a1,s1,s2
  a2c6f0:	8526                	mv	a0,s1
  a2c6f2:	c2dff0ef          	jal	ra,a2c31e <sfc_port_write_lock>
  a2c6f6:	0034fa93          	andi	s5,s1,3
  a2c6fa:	8b2a                	mv	s6,a0
  a2c6fc:	060a8863          	beqz	s5,a2c76c <uapi_sfc_reg_write+0x92>
  a2c700:	4791                	li	a5,4
  a2c702:	415787b3          	sub	a5,a5,s5
  a2c706:	415484b3          	sub	s1,s1,s5
  a2c70a:	0ff97993          	andi	s3,s2,255
  a2c70e:	00f96763          	bltu	s2,a5,a2c71c <uapi_sfc_reg_write+0x42>
  a2c712:	4991                	li	s3,4
  a2c714:	415989b3          	sub	s3,s3,s5
  a2c718:	0ff9f993          	andi	s3,s3,255
  a2c71c:	00a0 5824 0b9f      	l.li	s7,0xa05824
  a2c722:	004ba683          	lw	a3,4(s7)
  a2c726:	4611                	li	a2,4
  a2c728:	006c                	addi	a1,sp,12
  a2c72a:	8526                	mv	a0,s1
  a2c72c:	f24ff0ef          	jal	ra,a2be50 <hal_sfc_reg_read>
  a2c730:	842a                	mv	s0,a0
  a2c732:	ed09                	bnez	a0,a2c74c <uapi_sfc_reg_write+0x72>
  a2c734:	007c                	addi	a5,sp,12
  a2c736:	86ce                	mv	a3,s3
  a2c738:	8652                	mv	a2,s4
  a2c73a:	85ce                	mv	a1,s3
  a2c73c:	01578533          	add	a0,a5,s5
  a2c740:	2a6040ef          	jal	ra,a309e6 <memcpy_s>
  a2c744:	c901                	beqz	a0,a2c754 <uapi_sfc_reg_write+0x7a>
  a2c746:	80000437          	lui	s0,0x80000
  a2c74a:	0411                	addi	s0,s0,4 # 80000004 <_gp_+0x7f5cb77c>
  a2c74c:	855a                	mv	a0,s6
  a2c74e:	c03ff0ef          	jal	ra,a2c350 <sfc_port_write_unlock>
  a2c752:	a095                	j	a2c7b6 <uapi_sfc_reg_write+0xdc>
  a2c754:	00cba683          	lw	a3,12(s7)
  a2c758:	8526                	mv	a0,s1
  a2c75a:	4611                	li	a2,4
  a2c75c:	006c                	addi	a1,sp,12
  a2c75e:	f7eff0ef          	jal	ra,a2bedc <hal_sfc_reg_write>
  a2c762:	842a                	mv	s0,a0
  a2c764:	0491                	addi	s1,s1,4
  a2c766:	9a4e                	add	s4,s4,s3
  a2c768:	41390933          	sub	s2,s2,s3
  a2c76c:	ffc97993          	andi	s3,s2,-4
  a2c770:	fc71                	bnez	s0,a2c74c <uapi_sfc_reg_write+0x72>
  a2c772:	02098063          	beqz	s3,a2c792 <uapi_sfc_reg_write+0xb8>
  a2c776:	00a0 5824 079f      	l.li	a5,0xa05824
  a2c77c:	47d4                	lw	a3,12(a5)
  a2c77e:	85d2                	mv	a1,s4
  a2c780:	8526                	mv	a0,s1
  a2c782:	864e                	mv	a2,s3
  a2c784:	f58ff0ef          	jal	ra,a2bedc <hal_sfc_reg_write>
  a2c788:	9a4e                	add	s4,s4,s3
  a2c78a:	94ce                	add	s1,s1,s3
  a2c78c:	41390933          	sub	s2,s2,s3
  a2c790:	e131                	bnez	a0,a2c7d4 <uapi_sfc_reg_write+0xfa>
  a2c792:	fa090de3          	beqz	s2,a2c74c <uapi_sfc_reg_write+0x72>
  a2c796:	00a0 5824 041f      	l.li	s0,0xa05824
  a2c79c:	4054                	lw	a3,4(s0)
  a2c79e:	4611                	li	a2,4
  a2c7a0:	006c                	addi	a1,sp,12
  a2c7a2:	8526                	mv	a0,s1
  a2c7a4:	eacff0ef          	jal	ra,a2be50 <hal_sfc_reg_read>
  a2c7a8:	c909                	beqz	a0,a2c7ba <uapi_sfc_reg_write+0xe0>
  a2c7aa:	855a                	mv	a0,s6
  a2c7ac:	80000437          	lui	s0,0x80000
  a2c7b0:	ba1ff0ef          	jal	ra,a2c350 <sfc_port_write_unlock>
  a2c7b4:	0411                	addi	s0,s0,4 # 80000004 <_gp_+0x7f5cb77c>
  a2c7b6:	8522                	mv	a0,s0
  a2c7b8:	8194                	popret	{ra,s0-s7},64
  a2c7ba:	86ca                	mv	a3,s2
  a2c7bc:	8652                	mv	a2,s4
  a2c7be:	4591                	li	a1,4
  a2c7c0:	0068                	addi	a0,sp,12
  a2c7c2:	224040ef          	jal	ra,a309e6 <memcpy_s>
  a2c7c6:	f175                	bnez	a0,a2c7aa <uapi_sfc_reg_write+0xd0>
  a2c7c8:	4454                	lw	a3,12(s0)
  a2c7ca:	4611                	li	a2,4
  a2c7cc:	006c                	addi	a1,sp,12
  a2c7ce:	8526                	mv	a0,s1
  a2c7d0:	f0cff0ef          	jal	ra,a2bedc <hal_sfc_reg_write>
  a2c7d4:	842a                	mv	s0,a0
  a2c7d6:	bf9d                	j	a2c74c <uapi_sfc_reg_write+0x72>

00a2c7d8 <uapi_sfc_reg_erase>:
  a2c7d8:	80a8                	push	{ra,s0-s8},-48
  a2c7da:	892a                	mv	s2,a0
  a2c7dc:	842e                	mv	s0,a1
  a2c7de:	d03ff0ef          	jal	ra,a2c4e0 <check_opt_param>
  a2c7e2:	e921                	bnez	a0,a2c832 <uapi_sfc_reg_erase+0x5a>
  a2c7e4:	008905b3          	add	a1,s2,s0
  a2c7e8:	77fd                	lui	a5,0xfffff
  a2c7ea:	01459713          	slli	a4,a1,0x14
  a2c7ee:	00f974b3          	and	s1,s2,a5
  a2c7f2:	cf41                	beqz	a4,a2c88a <uapi_sfc_reg_erase+0xb2>
  a2c7f4:	8fed                	and	a5,a5,a1
  a2c7f6:	6705                	lui	a4,0x1
  a2c7f8:	80000537          	lui	a0,0x80000
  a2c7fc:	97ba                	add	a5,a5,a4
  a2c7fe:	0505                	addi	a0,a0,1 # 80000001 <_gp_+0x7f5cb779>
  a2c800:	02991963          	bne	s2,s1,a2c832 <uapi_sfc_reg_erase+0x5a>
  a2c804:	02f59763          	bne	a1,a5,a2c832 <uapi_sfc_reg_erase+0x5a>
  a2c808:	8526                	mv	a0,s1
  a2c80a:	40958a33          	sub	s4,a1,s1
  a2c80e:	6b11                	lui	s6,0x4
  a2c810:	b0fff0ef          	jal	ra,a2c31e <sfc_port_write_lock>
  a2c814:	8c2a                	mv	s8,a0
  a2c816:	4901                	li	s2,0
  a2c818:	4981                	li	s3,0
  a2c81a:	4a81                	li	s5,0
  a2c81c:	00a0 5824 0b9f      	l.li	s7,0xa05824
  a2c822:	1b7d                	addi	s6,s6,-1 # 3fff <ccause+0x303d>
  a2c824:	040a1d63          	bnez	s4,a2c87e <uapi_sfc_reg_erase+0xa6>
  a2c828:	4401                	li	s0,0
  a2c82a:	8562                	mv	a0,s8
  a2c82c:	b25ff0ef          	jal	ra,a2c350 <sfc_port_write_unlock>
  a2c830:	8522                	mv	a0,s0
  a2c832:	80a4                	popret	{ra,s0-s8},48
  a2c834:	010ba703          	lw	a4,16(s7)
  a2c838:	04f7071b          	addshf	a4,a4,a5,sll,2
  a2c83c:	00072903          	lw	s2,0(a4) # 1000 <ccause+0x3e>
  a2c840:	00e95993          	srli	s3,s2,0xe
  a2c844:	8ace                	mv	s5,s3
  a2c846:	013a6663          	bltu	s4,s3,a2c852 <uapi_sfc_reg_erase+0x7a>
  a2c84a:	fff98713          	addi	a4,s3,-1
  a2c84e:	8f65                	and	a4,a4,s1
  a2c850:	cb01                	beqz	a4,a2c860 <uapi_sfc_reg_erase+0x88>
  a2c852:	0785                	addi	a5,a5,1 # fffff001 <_gp_+0xff5ca779>
  a2c854:	008ba703          	lw	a4,8(s7)
  a2c858:	fce7eee3          	bltu	a5,a4,a2c834 <uapi_sfc_reg_erase+0x5c>
  a2c85c:	02e78363          	beq	a5,a4,a2c882 <uapi_sfc_reg_erase+0xaa>
  a2c860:	01697933          	and	s2,s2,s6
  a2c864:	1d39291b          	orshf	s2,s2,s3,sll,14
  a2c868:	4601                	li	a2,0
  a2c86a:	85ca                	mv	a1,s2
  a2c86c:	8526                	mv	a0,s1
  a2c86e:	eceff0ef          	jal	ra,a2bf3c <hal_sfc_reg_erase>
  a2c872:	842a                	mv	s0,a0
  a2c874:	f95d                	bnez	a0,a2c82a <uapi_sfc_reg_erase+0x52>
  a2c876:	415a0a33          	sub	s4,s4,s5
  a2c87a:	94d6                	add	s1,s1,s5
  a2c87c:	b765                	j	a2c824 <uapi_sfc_reg_erase+0x4c>
  a2c87e:	4785                	li	a5,1
  a2c880:	bfd1                	j	a2c854 <uapi_sfc_reg_erase+0x7c>
  a2c882:	8000 1347 041f      	l.li	s0,0x80001347
  a2c888:	b74d                	j	a2c82a <uapi_sfc_reg_erase+0x52>
  a2c88a:	f6990fe3          	beq	s2,s1,a2c808 <uapi_sfc_reg_erase+0x30>
  a2c88e:	80000537          	lui	a0,0x80000
  a2c892:	0505                	addi	a0,a0,1 # 80000001 <_gp_+0x7f5cb779>
  a2c894:	bf79                	j	a2c832 <uapi_sfc_reg_erase+0x5a>

00a2c896 <efuse_read_item.part.1>:
  a2c896:	8188                	push	{ra,s0-s6},-48
  a2c898:	00a3 28c0 079f      	l.li	a5,0xa328c0
  a2c89e:	06a7955b          	muliadd	a0,a5,a0,6
  a2c8a2:	2126                	lhu	s1,2(a0)
  a2c8a4:	00748a13          	addi	s4,s1,7
  a2c8a8:	003a5a13          	srli	s4,s4,0x3
  a2c8ac:	07466f63          	bltu	a2,s4,a2c92a <efuse_read_item.part.1+0x94>
  a2c8b0:	00055903          	lhu	s2,0(a0)
  a2c8b4:	86b2                	mv	a3,a2
  a2c8b6:	89ae                	mv	s3,a1
  a2c8b8:	4601                	li	a2,0
  a2c8ba:	85b6                	mv	a1,a3
  a2c8bc:	854e                	mv	a0,s3
  a2c8be:	1a4040ef          	jal	ra,a30a62 <memset_s>
  a2c8c2:	009967b3          	or	a5,s2,s1
  a2c8c6:	8b9d                	andi	a5,a5,7
  a2c8c8:	844a                	mv	s0,s2
  a2c8ca:	cb91                	beqz	a5,a2c8de <efuse_read_item.part.1+0x48>
  a2c8cc:	6a41                	lui	s4,0x10
  a2c8ce:	94ca                	add	s1,s1,s2
  a2c8d0:	4aa1                	li	s5,8
  a2c8d2:	1a7d                	addi	s4,s4,-1 # ffff <ccause+0xf03d>
  a2c8d4:	4b05                	li	s6,1
  a2c8d6:	00944b63          	blt	s0,s1,a2c8ec <efuse_read_item.part.1+0x56>
  a2c8da:	4501                	li	a0,0
  a2c8dc:	a039                	j	a2c8ea <efuse_read_item.part.1+0x54>
  a2c8de:	8652                	mv	a2,s4
  a2c8e0:	00395593          	srli	a1,s2,0x3
  a2c8e4:	854e                	mv	a0,s3
  a2c8e6:	ffffd0ef          	jal	ra,a2a8e4 <uapi_efuse_read_buffer>
  a2c8ea:	8184                	popret	{ra,s0-s6},48
  a2c8ec:	00747613          	andi	a2,s0,7
  a2c8f0:	00345593          	srli	a1,s0,0x3
  a2c8f4:	00f10513          	addi	a0,sp,15
  a2c8f8:	f97fd0ef          	jal	ra,a2a88e <uapi_efuse_read_bit>
  a2c8fc:	f57d                	bnez	a0,a2c8ea <efuse_read_item.part.1+0x54>
  a2c8fe:	00f14783          	lbu	a5,15(sp)
  a2c902:	c38d                	beqz	a5,a2c924 <efuse_read_item.part.1+0x8e>
  a2c904:	412407b3          	sub	a5,s0,s2
  a2c908:	0357c733          	div	a4,a5,s5
  a2c90c:	0357e7b3          	rem	a5,a5,s5
  a2c910:	01477733          	and	a4,a4,s4
  a2c914:	974e                	add	a4,a4,s3
  a2c916:	2314                	lbu	a3,0(a4)
  a2c918:	0147f7b3          	and	a5,a5,s4
  a2c91c:	00fb17b3          	sll	a5,s6,a5
  a2c920:	8fd5                	or	a5,a5,a3
  a2c922:	a31c                	sb	a5,0(a4)
  a2c924:	0405                	addi	s0,s0,1
  a2c926:	9c21                	uxth	s0
  a2c928:	b77d                	j	a2c8d6 <efuse_read_item.part.1+0x40>
  a2c92a:	557d                	li	a0,-1
  a2c92c:	bf7d                	j	a2c8ea <efuse_read_item.part.1+0x54>

00a2c92e <efuse_port_register_hal_funcs>:
  a2c92e:	8018                	push	{ra},-16
  a2c930:	a00fe0ef          	jal	ra,a2ab30 <hal_efuse_funcs_get>
  a2c934:	8010                	pop	{ra},16
  a2c936:	808fe06f          	j	a2a93e <hal_efuse_register_funcs>

00a2c93a <hal_efuse_get_region>:
  a2c93a:	8121                	srli	a0,a0,0x8
  a2c93c:	9d01                	uxtb	a0
  a2c93e:	8082                	ret

00a2c940 <hal_efuse_get_byte_offset>:
  a2c940:	9d01                	uxtb	a0
  a2c942:	8082                	ret

00a2c944 <efuse_read_item>:
  a2c944:	c589                	beqz	a1,a2c94e <efuse_read_item+0xa>
  a2c946:	1305723b          	bgeui	a0,19,a2c94e <efuse_read_item+0xa>
  a2c94a:	f4dff06f          	j	a2c896 <efuse_read_item.part.1>
  a2c94e:	557d                	li	a0,-1
  a2c950:	8082                	ret

00a2c952 <set_efuse_period>:
  a2c952:	8018                	push	{ra},-16
  a2c954:	2895                	jal	ra,a2c9c8 <get_tcxo_freq>
  a2c956:	010513bb          	bnei	a0,1,a2c964 <set_efuse_period+0x12>
  a2c95a:	02900513          	li	a0,41
  a2c95e:	8010                	pop	{ra},16
  a2c960:	9c6fe06f          	j	a2ab26 <hal_efuse_set_clock_period>
  a2c964:	4565                	li	a0,25
  a2c966:	bfe5                	j	a2c95e <set_efuse_period+0xc>

00a2c968 <malloc_port>:
  a2c968:	fa1fc06f          	j	a29908 <malloc>

00a2c96c <malloc_port_init>:
  a2c96c:	8118                	push	{ra},-32
  a2c96e:	00a2 982e 079f      	l.li	a5,0xa2982e
  a2c974:	c23e                	sw	a5,4(sp)
  a2c976:	00a2 993e 079f      	l.li	a5,0xa2993e
  a2c97c:	c63e                	sw	a5,12(sp)
  a2c97e:	0048                	addi	a0,sp,4
  a2c980:	00a2 c968 079f      	l.li	a5,0xa2c968
  a2c986:	c43e                	sw	a5,8(sp)
  a2c988:	e53fc0ef          	jal	ra,a297da <malloc_register_funcs>
  a2c98c:	00a06537          	lui	a0,0xa06
  a2c990:	0001 0000 079f      	l.li	a5,0x10000
  a2c996:	b0850593          	addi	a1,a0,-1272 # a05b08 <__bss_end__>
  a2c99a:	95be                	add	a1,a1,a5
  a2c99c:	b0850513          	addi	a0,a0,-1272
  a2c9a0:	e8ffc0ef          	jal	ra,a2982e <malloc_init>
  a2c9a4:	8114                	popret	{ra},32

00a2c9a6 <reboot_port_reboot_chip>:
  a2c9a6:	8018                	push	{ra},-16
  a2c9a8:	e71fd0ef          	jal	ra,a2a818 <uapi_watchdog_deinit>
  a2c9ac:	0000 0bb8 051f      	l.li	a0,0xbb8
  a2c9b2:	94ffd0ef          	jal	ra,a2a300 <uapi_tcxo_delay_us>
  a2c9b6:	40002737          	lui	a4,0x40002
  a2c9ba:	11072783          	lw	a5,272(a4) # 40002110 <_gp_+0x3f5cd888>
  a2c9be:	0047e793          	ori	a5,a5,4
  a2c9c2:	10f72823          	sw	a5,272(a4)
  a2c9c6:	8014                	popret	{ra},16

00a2c9c8 <get_tcxo_freq>:
  a2c9c8:	400007b7          	lui	a5,0x40000
  a2c9cc:	4bc8                	lw	a0,20(a5)
  a2c9ce:	8905                	andi	a0,a0,1
  a2c9d0:	8082                	ret

00a2c9d2 <boot_clock_adapt>:
  a2c9d2:	8028                	push	{ra,s0},-16
  a2c9d4:	ff5ff0ef          	jal	ra,a2c9c8 <get_tcxo_freq>
  a2c9d8:	010518bb          	bnei	a0,1,a2c9fa <boot_clock_adapt+0x28>
  a2c9dc:	016e3437          	lui	s0,0x16e3
  a2c9e0:	60040593          	addi	a1,s0,1536 # 16e3600 <_gp_+0xcaed78>
  a2c9e4:	4501                	li	a0,0
  a2c9e6:	ec2ff0ef          	jal	ra,a2c0a8 <uart_port_set_clock_value>
  a2c9ea:	4561                	li	a0,24
  a2c9ec:	f80ff0ef          	jal	ra,a2c16c <tcxo_porting_ticks_per_usec_set>
  a2c9f0:	60040513          	addi	a0,s0,1536
  a2c9f4:	8020                	pop	{ra,s0},16
  a2c9f6:	f92ff06f          	j	a2c188 <watchdog_port_set_clock>
  a2c9fa:	02626437          	lui	s0,0x2626
  a2c9fe:	a0040593          	addi	a1,s0,-1536 # 2625a00 <_gp_+0x1bf1178>
  a2ca02:	4501                	li	a0,0
  a2ca04:	ea4ff0ef          	jal	ra,a2c0a8 <uart_port_set_clock_value>
  a2ca08:	02800513          	li	a0,40
  a2ca0c:	f60ff0ef          	jal	ra,a2c16c <tcxo_porting_ticks_per_usec_set>
  a2ca10:	a0040513          	addi	a0,s0,-1536
  a2ca14:	b7c5                	j	a2c9f4 <boot_clock_adapt+0x22>

00a2ca16 <switch_flash_clock_to_pll>:
  a2ca16:	8028                	push	{ra,s0},-16
  a2ca18:	40003437          	lui	s0,0x40003
  a2ca1c:	4785                	li	a5,1
  a2ca1e:	4af42223          	sw	a5,1188(s0) # 400034a4 <_gp_+0x3f5cec1c>
  a2ca22:	4505                	li	a0,1
  a2ca24:	8ddfd0ef          	jal	ra,a2a300 <uapi_tcxo_delay_us>
  a2ca28:	478d                	li	a5,3
  a2ca2a:	4af42223          	sw	a5,1188(s0)
  a2ca2e:	44001737          	lui	a4,0x44001
  a2ca32:	13472783          	lw	a5,308(a4) # 44001134 <_gp_+0x435cc8ac>
  a2ca36:	000406b7          	lui	a3,0x40
  a2ca3a:	8fd5                	or	a5,a5,a3
  a2ca3c:	12f72a23          	sw	a5,308(a4)
  a2ca40:	8024                	popret	{ra,s0},16

00a2ca42 <config_sfc_ctrl_ds>:
  a2ca42:	4400e7b7          	lui	a5,0x4400e
  a2ca46:	8687a703          	lw	a4,-1944(a5) # 4400d868 <_gp_+0x435d8fe0>
  a2ca4a:	f8f77713          	andi	a4,a4,-113
  a2ca4e:	03076713          	ori	a4,a4,48
  a2ca52:	86e7a423          	sw	a4,-1944(a5)
  a2ca56:	86c7a703          	lw	a4,-1940(a5)
  a2ca5a:	f8f77713          	andi	a4,a4,-113
  a2ca5e:	02076713          	ori	a4,a4,32
  a2ca62:	86e7a623          	sw	a4,-1940(a5)
  a2ca66:	8707a703          	lw	a4,-1936(a5)
  a2ca6a:	f8f77713          	andi	a4,a4,-113
  a2ca6e:	02076713          	ori	a4,a4,32
  a2ca72:	86e7a823          	sw	a4,-1936(a5)
  a2ca76:	8747a703          	lw	a4,-1932(a5)
  a2ca7a:	f8f77713          	andi	a4,a4,-113
  a2ca7e:	02076713          	ori	a4,a4,32
  a2ca82:	86e7aa23          	sw	a4,-1932(a5)
  a2ca86:	8787a703          	lw	a4,-1928(a5)
  a2ca8a:	f8f77713          	andi	a4,a4,-113
  a2ca8e:	02076713          	ori	a4,a4,32
  a2ca92:	86e7ac23          	sw	a4,-1928(a5)
  a2ca96:	87c7a703          	lw	a4,-1924(a5)
  a2ca9a:	f8f77713          	andi	a4,a4,-113
  a2ca9e:	02076713          	ori	a4,a4,32
  a2caa2:	86e7ae23          	sw	a4,-1924(a5)
  a2caa6:	8082                	ret

00a2caa8 <serial_putc>:
  a2caa8:	8118                	push	{ra},-32
  a2caaa:	00a0 583f 079f      	l.li	a5,0xa0583f
  a2cab0:	239c                	lbu	a5,0(a5)
  a2cab2:	00a107a3          	sb	a0,15(sp)
  a2cab6:	eb81                	bnez	a5,a2cac6 <serial_putc+0x1e>
  a2cab8:	4689                	li	a3,2
  a2caba:	4605                	li	a2,1
  a2cabc:	00f10593          	addi	a1,sp,15
  a2cac0:	4501                	li	a0,0
  a2cac2:	c19fd0ef          	jal	ra,a2a6da <uapi_uart_write>
  a2cac6:	8114                	popret	{ra},32

00a2cac8 <serial_puts>:
  a2cac8:	00a0 583f 079f      	l.li	a5,0xa0583f
  a2cace:	239c                	lbu	a5,0(a5)
  a2cad0:	ef89                	bnez	a5,a2caea <serial_puts+0x22>
  a2cad2:	8118                	push	{ra},-32
  a2cad4:	c62a                	sw	a0,12(sp)
  a2cad6:	a36fc0ef          	jal	ra,a28d0c <strlen>
  a2cada:	45b2                	lw	a1,12(sp)
  a2cadc:	862a                	mv	a2,a0
  a2cade:	7d000693          	li	a3,2000
  a2cae2:	4501                	li	a0,0
  a2cae4:	8110                	pop	{ra},32
  a2cae6:	bf5fd06f          	j	a2a6da <uapi_uart_write>
  a2caea:	8082                	ret

00a2caec <serial_puthex>:
  a2caec:	00a0 583f 079f      	l.li	a5,0xa0583f
  a2caf2:	239c                	lbu	a5,0(a5)
  a2caf4:	efa9                	bnez	a5,a2cb4e <serial_puthex+0x62>
  a2caf6:	8098                	push	{ra,s0-s7},-48
  a2caf8:	84aa                	mv	s1,a0
  a2cafa:	00a3 2934 051f      	l.li	a0,0xa32934
  a2cb00:	8a2e                	mv	s4,a1
  a2cb02:	4401                	li	s0,0
  a2cb04:	fc5ff0ef          	jal	ra,a2cac8 <serial_puts>
  a2cb08:	4901                	li	s2,0
  a2cb0a:	4aa5                	li	s5,9
  a2cb0c:	4b1d                	li	s6,7
  a2cb0e:	03000b93          	li	s7,48
  a2cb12:	49a1                	li	s3,8
  a2cb14:	01c4d713          	srli	a4,s1,0x1c
  a2cb18:	0ff77793          	andi	a5,a4,255
  a2cb1c:	03078513          	addi	a0,a5,48
  a2cb20:	00eaf463          	bgeu	s5,a4,a2cb28 <serial_puthex+0x3c>
  a2cb24:	03778513          	addi	a0,a5,55
  a2cb28:	0492                	slli	s1,s1,0x4
  a2cb2a:	000a0563          	beqz	s4,a2cb34 <serial_puthex+0x48>
  a2cb2e:	f7bff0ef          	jal	ra,a2caa8 <serial_putc>
  a2cb32:	a811                	j	a2cb46 <serial_puthex+0x5a>
  a2cb34:	fe091de3          	bnez	s2,a2cb2e <serial_puthex+0x42>
  a2cb38:	ff640be3          	beq	s0,s6,a2cb2e <serial_puthex+0x42>
  a2cb3c:	01750563          	beq	a0,s7,a2cb46 <serial_puthex+0x5a>
  a2cb40:	f69ff0ef          	jal	ra,a2caa8 <serial_putc>
  a2cb44:	4905                	li	s2,1
  a2cb46:	0405                	addi	s0,s0,1
  a2cb48:	fd3416e3          	bne	s0,s3,a2cb14 <serial_puthex+0x28>
  a2cb4c:	8094                	popret	{ra,s0-s7},48
  a2cb4e:	8082                	ret

00a2cb50 <boot_msg0>:
  a2cb50:	8018                	push	{ra},-16
  a2cb52:	f77ff0ef          	jal	ra,a2cac8 <serial_puts>
  a2cb56:	00a3 32c4 051f      	l.li	a0,0xa332c4
  a2cb5c:	8010                	pop	{ra},16
  a2cb5e:	f6bff06f          	j	a2cac8 <serial_puts>

00a2cb62 <boot_msg1>:
  a2cb62:	8028                	push	{ra,s0},-16
  a2cb64:	842e                	mv	s0,a1
  a2cb66:	f63ff0ef          	jal	ra,a2cac8 <serial_puts>
  a2cb6a:	8522                	mv	a0,s0
  a2cb6c:	4581                	li	a1,0
  a2cb6e:	f7fff0ef          	jal	ra,a2caec <serial_puthex>
  a2cb72:	00a3 32c4 051f      	l.li	a0,0xa332c4
  a2cb78:	8020                	pop	{ra,s0},16
  a2cb7a:	f4fff06f          	j	a2cac8 <serial_puts>

00a2cb7e <boot_msg2>:
  a2cb7e:	8128                	push	{ra,s0},-32
  a2cb80:	842e                	mv	s0,a1
  a2cb82:	c632                	sw	a2,12(sp)
  a2cb84:	f45ff0ef          	jal	ra,a2cac8 <serial_puts>
  a2cb88:	4581                	li	a1,0
  a2cb8a:	8522                	mv	a0,s0
  a2cb8c:	f61ff0ef          	jal	ra,a2caec <serial_puthex>
  a2cb90:	00a3 2048 051f      	l.li	a0,0xa32048
  a2cb96:	f33ff0ef          	jal	ra,a2cac8 <serial_puts>
  a2cb9a:	4632                	lw	a2,12(sp)
  a2cb9c:	4581                	li	a1,0
  a2cb9e:	8532                	mv	a0,a2
  a2cba0:	f4dff0ef          	jal	ra,a2caec <serial_puthex>
  a2cba4:	00a3 32c4 051f      	l.li	a0,0xa332c4
  a2cbaa:	8120                	pop	{ra,s0},32
  a2cbac:	f1dff06f          	j	a2cac8 <serial_puts>

00a2cbb0 <hiburn_uart_init>:
  a2cbb0:	8228                	push	{ra,s0},-48
  a2cbb2:	00a3 4010 079f      	l.li	a5,0xa34010
  a2cbb8:	00078023          	sb	zero,0(a5)
  a2cbbc:	02900793          	li	a5,41
  a2cbc0:	00f10623          	sb	a5,12(sp)
  a2cbc4:	07300793          	li	a5,115
  a2cbc8:	00f107a3          	sb	a5,15(sp)
  a2cbcc:	00f10723          	sb	a5,14(sp)
  a2cbd0:	411c                	lw	a5,0(a0)
  a2cbd2:	02a00713          	li	a4,42
  a2cbd6:	00e106a3          	sb	a4,13(sp)
  a2cbda:	c83e                	sw	a5,16(sp)
  a2cbdc:	215c                	lbu	a5,4(a0)
  a2cbde:	2178                	lbu	a4,6(a0)
  a2cbe0:	00010423          	sb	zero,8(sp)
  a2cbe4:	17ed                	addi	a5,a5,-5
  a2cbe6:	00f10a23          	sb	a5,20(sp)
  a2cbea:	fff70793          	addi	a5,a4,-1
  a2cbee:	9f81                	uxtb	a5
  a2cbf0:	0207fdbb          	bgeui	a5,2,a2cc26 <hiburn_uart_init+0x76>
  a2cbf4:	00e10b23          	sb	a4,22(sp)
  a2cbf8:	315c                	lbu	a5,5(a0)
  a2cbfa:	4405                	li	s0,1
  a2cbfc:	0838                	addi	a4,sp,24
  a2cbfe:	17fd                	addi	a5,a5,-1
  a2cc00:	00f10aa3          	sb	a5,21(sp)
  a2cc04:	4681                	li	a3,0
  a2cc06:	003c                	addi	a5,sp,8
  a2cc08:	0810                	addi	a2,sp,16
  a2cc0a:	006c                	addi	a1,sp,12
  a2cc0c:	4501                	li	a0,0
  a2cc0e:	cc3e                	sw	a5,24(sp)
  a2cc10:	ce22                	sw	s0,28(sp)
  a2cc12:	9fbfd0ef          	jal	ra,a2a60c <uapi_uart_init>
  a2cc16:	4501                	li	a0,0
  a2cc18:	cb6ff0ef          	jal	ra,a2c0ce <uart_port_unregister_irq>
  a2cc1c:	00a0 583e 079f      	l.li	a5,0xa0583e
  a2cc22:	a380                	sb	s0,0(a5)
  a2cc24:	8224                	popret	{ra,s0},48
  a2cc26:	00010b23          	sb	zero,22(sp)
  a2cc2a:	b7f9                	j	a2cbf8 <hiburn_uart_init+0x48>

00a2cc2c <set_reset_count>:
  a2cc2c:	40000737          	lui	a4,0x40000
  a2cc30:	471c                	lw	a5,8(a4)
  a2cc32:	893d                	andi	a0,a0,15
  a2cc34:	f0f7f793          	andi	a5,a5,-241
  a2cc38:	08a7a79b          	orshf	a5,a5,a0,sll,4
  a2cc3c:	c71c                	sw	a5,8(a4)
  a2cc3e:	8082                	ret

00a2cc40 <update_reset_count>:
  a2cc40:	8038                	push	{ra,s0-s1},-16
  a2cc42:	400007b7          	lui	a5,0x40000
  a2cc46:	4780                	lw	s0,8(a5)
  a2cc48:	00a3 2938 051f      	l.li	a0,0xa32938
  a2cc4e:	8011                	srli	s0,s0,0x4
  a2cc50:	883d                	andi	s0,s0,15
  a2cc52:	00140493          	addi	s1,s0,1
  a2cc56:	85a6                	mv	a1,s1
  a2cc58:	f0bff0ef          	jal	ra,a2cb62 <boot_msg1>
  a2cc5c:	06400513          	li	a0,100
  a2cc60:	e50fd0ef          	jal	ra,a2a2b0 <uapi_tcxo_delay_ms>
  a2cc64:	0f04033b          	beqi	s0,15,a2cc70 <update_reset_count+0x30>
  a2cc68:	8526                	mv	a0,s1
  a2cc6a:	8030                	pop	{ra,s0-s1},16
  a2cc6c:	fc1ff06f          	j	a2cc2c <set_reset_count>
  a2cc70:	b73fd0ef          	jal	ra,a2a7e2 <uapi_watchdog_disable>
  a2cc74:	10500073          	wfi
  a2cc78:	a001                	j	a2cc78 <update_reset_count+0x38>

00a2cc7a <interrupt0_handler>:
  a2cc7a:	8028                	push	{ra,s0},-16
  a2cc7c:	040007b7          	lui	a5,0x4000
  a2cc80:	3047b7f3          	csrrc	a5,mie,a5
  a2cc84:	00a06437          	lui	s0,0xa06
  a2cc88:	84040713          	addi	a4,s0,-1984 # a05840 <g_interrupt_running>
  a2cc8c:	431c                	lw	a5,0(a4)
  a2cc8e:	84040413          	addi	s0,s0,-1984
  a2cc92:	0785                	addi	a5,a5,1 # 4000001 <_gp_+0x35cb779>
  a2cc94:	c31c                	sw	a5,0(a4)
  a2cc96:	22c9                	jal	ra,a2ce58 <isr_get_ramexceptiontable_addr>
  a2cc98:	5538                	lw	a4,104(a0)
  a2cc9a:	00a2 d27a 079f      	l.li	a5,0xa2d27a
  a2cca0:	00f70563          	beq	a4,a5,a2ccaa <interrupt0_handler+0x30>
  a2cca4:	2a55                	jal	ra,a2ce58 <isr_get_ramexceptiontable_addr>
  a2cca6:	553c                	lw	a5,104(a0)
  a2cca8:	9782                	jalr	a5
  a2ccaa:	040007b7          	lui	a5,0x4000
  a2ccae:	3047a7f3          	csrrs	a5,mie,a5
  a2ccb2:	401c                	lw	a5,0(s0)
  a2ccb4:	17fd                	addi	a5,a5,-1 # 3ffffff <_gp_+0x35cb777>
  a2ccb6:	c01c                	sw	a5,0(s0)
  a2ccb8:	8024                	popret	{ra,s0},16

00a2ccba <interrupt1_handler>:
  a2ccba:	8028                	push	{ra,s0},-16
  a2ccbc:	080007b7          	lui	a5,0x8000
  a2ccc0:	3047b7f3          	csrrc	a5,mie,a5
  a2ccc4:	00a06437          	lui	s0,0xa06
  a2ccc8:	84040713          	addi	a4,s0,-1984 # a05840 <g_interrupt_running>
  a2cccc:	431c                	lw	a5,0(a4)
  a2ccce:	84040413          	addi	s0,s0,-1984
  a2ccd2:	0785                	addi	a5,a5,1 # 8000001 <_gp_+0x75cb779>
  a2ccd4:	c31c                	sw	a5,0(a4)
  a2ccd6:	2249                	jal	ra,a2ce58 <isr_get_ramexceptiontable_addr>
  a2ccd8:	5578                	lw	a4,108(a0)
  a2ccda:	00a2 d27a 079f      	l.li	a5,0xa2d27a
  a2cce0:	00f70563          	beq	a4,a5,a2ccea <interrupt1_handler+0x30>
  a2cce4:	2a95                	jal	ra,a2ce58 <isr_get_ramexceptiontable_addr>
  a2cce6:	557c                	lw	a5,108(a0)
  a2cce8:	9782                	jalr	a5
  a2ccea:	080007b7          	lui	a5,0x8000
  a2ccee:	3047a7f3          	csrrs	a5,mie,a5
  a2ccf2:	401c                	lw	a5,0(s0)
  a2ccf4:	17fd                	addi	a5,a5,-1 # 7ffffff <_gp_+0x75cb777>
  a2ccf6:	c01c                	sw	a5,0(s0)
  a2ccf8:	8024                	popret	{ra,s0},16

00a2ccfa <interrupt2_handler>:
  a2ccfa:	8028                	push	{ra,s0},-16
  a2ccfc:	100007b7          	lui	a5,0x10000
  a2cd00:	3047b7f3          	csrrc	a5,mie,a5
  a2cd04:	00a06437          	lui	s0,0xa06
  a2cd08:	84040713          	addi	a4,s0,-1984 # a05840 <g_interrupt_running>
  a2cd0c:	431c                	lw	a5,0(a4)
  a2cd0e:	84040413          	addi	s0,s0,-1984
  a2cd12:	0785                	addi	a5,a5,1 # 10000001 <_gp_+0xf5cb779>
  a2cd14:	c31c                	sw	a5,0(a4)
  a2cd16:	2289                	jal	ra,a2ce58 <isr_get_ramexceptiontable_addr>
  a2cd18:	5938                	lw	a4,112(a0)
  a2cd1a:	00a2 d27a 079f      	l.li	a5,0xa2d27a
  a2cd20:	00f70563          	beq	a4,a5,a2cd2a <interrupt2_handler+0x30>
  a2cd24:	2a15                	jal	ra,a2ce58 <isr_get_ramexceptiontable_addr>
  a2cd26:	593c                	lw	a5,112(a0)
  a2cd28:	9782                	jalr	a5
  a2cd2a:	100007b7          	lui	a5,0x10000
  a2cd2e:	3047a7f3          	csrrs	a5,mie,a5
  a2cd32:	401c                	lw	a5,0(s0)
  a2cd34:	17fd                	addi	a5,a5,-1 # fffffff <_gp_+0xf5cb777>
  a2cd36:	c01c                	sw	a5,0(s0)
  a2cd38:	8024                	popret	{ra,s0},16

00a2cd3a <interrupt3_handler>:
  a2cd3a:	8028                	push	{ra,s0},-16
  a2cd3c:	200007b7          	lui	a5,0x20000
  a2cd40:	3047b7f3          	csrrc	a5,mie,a5
  a2cd44:	00a06437          	lui	s0,0xa06
  a2cd48:	84040713          	addi	a4,s0,-1984 # a05840 <g_interrupt_running>
  a2cd4c:	431c                	lw	a5,0(a4)
  a2cd4e:	84040413          	addi	s0,s0,-1984
  a2cd52:	0785                	addi	a5,a5,1 # 20000001 <_gp_+0x1f5cb779>
  a2cd54:	c31c                	sw	a5,0(a4)
  a2cd56:	2209                	jal	ra,a2ce58 <isr_get_ramexceptiontable_addr>
  a2cd58:	5978                	lw	a4,116(a0)
  a2cd5a:	00a2 d27a 079f      	l.li	a5,0xa2d27a
  a2cd60:	00f70563          	beq	a4,a5,a2cd6a <interrupt3_handler+0x30>
  a2cd64:	28d5                	jal	ra,a2ce58 <isr_get_ramexceptiontable_addr>
  a2cd66:	597c                	lw	a5,116(a0)
  a2cd68:	9782                	jalr	a5
  a2cd6a:	200007b7          	lui	a5,0x20000
  a2cd6e:	3047a7f3          	csrrs	a5,mie,a5
  a2cd72:	401c                	lw	a5,0(s0)
  a2cd74:	17fd                	addi	a5,a5,-1 # 1fffffff <_gp_+0x1f5cb777>
  a2cd76:	c01c                	sw	a5,0(s0)
  a2cd78:	8024                	popret	{ra,s0},16

00a2cd7a <interrupt4_handler>:
  a2cd7a:	8028                	push	{ra,s0},-16
  a2cd7c:	400007b7          	lui	a5,0x40000
  a2cd80:	3047b7f3          	csrrc	a5,mie,a5
  a2cd84:	00a06437          	lui	s0,0xa06
  a2cd88:	84040713          	addi	a4,s0,-1984 # a05840 <g_interrupt_running>
  a2cd8c:	431c                	lw	a5,0(a4)
  a2cd8e:	84040413          	addi	s0,s0,-1984
  a2cd92:	0785                	addi	a5,a5,1 # 40000001 <_gp_+0x3f5cb779>
  a2cd94:	c31c                	sw	a5,0(a4)
  a2cd96:	20c9                	jal	ra,a2ce58 <isr_get_ramexceptiontable_addr>
  a2cd98:	5d38                	lw	a4,120(a0)
  a2cd9a:	00a2 d27a 079f      	l.li	a5,0xa2d27a
  a2cda0:	00f70563          	beq	a4,a5,a2cdaa <interrupt4_handler+0x30>
  a2cda4:	2855                	jal	ra,a2ce58 <isr_get_ramexceptiontable_addr>
  a2cda6:	5d3c                	lw	a5,120(a0)
  a2cda8:	9782                	jalr	a5
  a2cdaa:	400007b7          	lui	a5,0x40000
  a2cdae:	3047a7f3          	csrrs	a5,mie,a5
  a2cdb2:	401c                	lw	a5,0(s0)
  a2cdb4:	17fd                	addi	a5,a5,-1 # 3fffffff <_gp_+0x3f5cb777>
  a2cdb6:	c01c                	sw	a5,0(s0)
  a2cdb8:	8024                	popret	{ra,s0},16

00a2cdba <interrupt5_handler>:
  a2cdba:	8028                	push	{ra,s0},-16
  a2cdbc:	800007b7          	lui	a5,0x80000
  a2cdc0:	3047b7f3          	csrrc	a5,mie,a5
  a2cdc4:	00a06437          	lui	s0,0xa06
  a2cdc8:	84040713          	addi	a4,s0,-1984 # a05840 <g_interrupt_running>
  a2cdcc:	431c                	lw	a5,0(a4)
  a2cdce:	84040413          	addi	s0,s0,-1984
  a2cdd2:	0785                	addi	a5,a5,1 # 80000001 <_gp_+0x7f5cb779>
  a2cdd4:	c31c                	sw	a5,0(a4)
  a2cdd6:	2049                	jal	ra,a2ce58 <isr_get_ramexceptiontable_addr>
  a2cdd8:	5d78                	lw	a4,124(a0)
  a2cdda:	00a2 d27a 079f      	l.li	a5,0xa2d27a
  a2cde0:	00f70563          	beq	a4,a5,a2cdea <interrupt5_handler+0x30>
  a2cde4:	2895                	jal	ra,a2ce58 <isr_get_ramexceptiontable_addr>
  a2cde6:	5d7c                	lw	a5,124(a0)
  a2cde8:	9782                	jalr	a5
  a2cdea:	800007b7          	lui	a5,0x80000
  a2cdee:	3047a7f3          	csrrs	a5,mie,a5
  a2cdf2:	401c                	lw	a5,0(s0)
  a2cdf4:	17fd                	addi	a5,a5,-1 # 7fffffff <_gp_+0x7f5cb777>
  a2cdf6:	c01c                	sw	a5,0(s0)
  a2cdf8:	8024                	popret	{ra,s0},16

00a2cdfa <local_interrupt_handler>:
  a2cdfa:	8038                	push	{ra,s0-s1},-16
  a2cdfc:	66d040ef          	jal	ra,a31c68 <global_interrupt_lock>
  a2ce00:	00a064b7          	lui	s1,0xa06
  a2ce04:	84048713          	addi	a4,s1,-1984 # a05840 <g_interrupt_running>
  a2ce08:	431c                	lw	a5,0(a4)
  a2ce0a:	0785                	addi	a5,a5,1
  a2ce0c:	c31c                	sw	a5,0(a4)
  a2ce0e:	673040ef          	jal	ra,a31c80 <global_interrupt_restore>
  a2ce12:	34202473          	csrr	s0,mcause
  a2ce16:	2089                	jal	ra,a2ce58 <isr_get_ramexceptiontable_addr>
  a2ce18:	6785                	lui	a5,0x1
  a2ce1a:	17fd                	addi	a5,a5,-1 # fff <ccause+0x3d>
  a2ce1c:	8c7d                	and	s0,s0,a5
  a2ce1e:	040a                	slli	s0,s0,0x2
  a2ce20:	9522                	add	a0,a0,s0
  a2ce22:	4118                	lw	a4,0(a0)
  a2ce24:	00a2 ce56 079f      	l.li	a5,0xa2ce56
  a2ce2a:	84048493          	addi	s1,s1,-1984
  a2ce2e:	00f70663          	beq	a4,a5,a2ce3a <local_interrupt_handler+0x40>
  a2ce32:	201d                	jal	ra,a2ce58 <isr_get_ramexceptiontable_addr>
  a2ce34:	9522                	add	a0,a0,s0
  a2ce36:	411c                	lw	a5,0(a0)
  a2ce38:	9782                	jalr	a5
  a2ce3a:	62f040ef          	jal	ra,a31c68 <global_interrupt_lock>
  a2ce3e:	409c                	lw	a5,0(s1)
  a2ce40:	17fd                	addi	a5,a5,-1
  a2ce42:	c09c                	sw	a5,0(s1)
  a2ce44:	8030                	pop	{ra,s0-s1},16
  a2ce46:	63b0406f          	j	a31c80 <global_interrupt_restore>

00a2ce4a <interrupt_number_get>:
  a2ce4a:	34202573          	csrr	a0,mcause
  a2ce4e:	6785                	lui	a5,0x1
  a2ce50:	17fd                	addi	a5,a5,-1 # fff <ccause+0x3d>
  a2ce52:	8d7d                	and	a0,a0,a5
  a2ce54:	8082                	ret

00a2ce56 <b_sub_monitor_handler>:
  a2ce56:	a001                	j	a2ce56 <b_sub_monitor_handler>

00a2ce58 <isr_get_ramexceptiontable_addr>:
  a2ce58:	00a2 8420 051f      	l.li	a0,0xa28420
  a2ce5e:	8082                	ret

00a2ce60 <do_hard_fault_handler>:
  a2ce60:	c13d                	beqz	a0,a2cec6 <do_hard_fault_handler+0x66>
  a2ce62:	8048                	push	{ra,s0-s2},-16
  a2ce64:	00452903          	lw	s2,4(a0)
  a2ce68:	842a                	mv	s0,a0
  a2ce6a:	00a3 2990 051f      	l.li	a0,0xa32990
  a2ce70:	85ca                	mv	a1,s2
  a2ce72:	a5eff0ef          	jal	ra,a2c0d0 <print_str>
  a2ce76:	800007b7          	lui	a5,0x80000
  a2ce7a:	07b1                	addi	a5,a5,12 # 8000000c <_gp_+0x7f5cb784>
  a2ce7c:	04f91263          	bne	s2,a5,a2cec0 <do_hard_fault_handler+0x60>
  a2ce80:	00a3 29a4 051f      	l.li	a0,0xa329a4
  a2ce86:	6489                	lui	s1,0x2
  a2ce88:	a48ff0ef          	jal	ra,a2c0d0 <print_str>
  a2ce8c:	04a1                	addi	s1,s1,8 # 2008 <ccause+0x1046>
  a2ce8e:	8526                	mv	a0,s1
  a2ce90:	363000ef          	jal	ra,a2d9f2 <cpu_utils_set_system_status_by_cause>
  a2ce94:	4c5c                	lw	a5,28(s0)
  a2ce96:	8522                	mv	a0,s0
  a2ce98:	07c1                	addi	a5,a5,16
  a2ce9a:	cc5c                	sw	a5,28(s0)
  a2ce9c:	4c1000ef          	jal	ra,a2db5c <set_exception_info_riscv>
  a2cea0:	00a0 5858 079f      	l.li	a5,0xa05858
  a2cea6:	439c                	lw	a5,0(a5)
  a2cea8:	c781                	beqz	a5,a2ceb0 <do_hard_fault_handler+0x50>
  a2ceaa:	85a2                	mv	a1,s0
  a2ceac:	854a                	mv	a0,s2
  a2ceae:	9782                	jalr	a5
  a2ceb0:	85a6                	mv	a1,s1
  a2ceb2:	4509                	li	a0,2
  a2ceb4:	347000ef          	jal	ra,a2d9fa <cpu_utils_reset_chip_with_log>
  a2ceb8:	4501                	li	a0,0
  a2ceba:	8040                	pop	{ra,s0-s2},16
  a2cebc:	8e3fd06f          	j	a2a79e <uapi_watchdog_enable>
  a2cec0:	6489                	lui	s1,0x2
  a2cec2:	0491                	addi	s1,s1,4 # 2004 <ccause+0x1042>
  a2cec4:	b7e9                	j	a2ce8e <do_hard_fault_handler+0x2e>
  a2cec6:	8082                	ret

00a2cec8 <exc_info_display.part.2>:
  a2cec8:	8028                	push	{ra,s0},-16
  a2ceca:	842a                	mv	s0,a0
  a2cecc:	00a3 2c00 051f      	l.li	a0,0xa32c00
  a2ced2:	9feff0ef          	jal	ra,a2c0d0 <print_str>
  a2ced6:	202e                	lhu	a1,2(s0)
  a2ced8:	00a3 2c38 051f      	l.li	a0,0xa32c38
  a2cede:	9f2ff0ef          	jal	ra,a2c0d0 <print_str>
  a2cee2:	481c                	lw	a5,16(s0)
  a2cee4:	00a3 2c50 051f      	l.li	a0,0xa32c50
  a2ceea:	4bcc                	lw	a1,20(a5)
  a2ceec:	9e4ff0ef          	jal	ra,a2c0d0 <print_str>
  a2cef0:	481c                	lw	a5,16(s0)
  a2cef2:	00a3 2c68 051f      	l.li	a0,0xa32c68
  a2cef8:	4b8c                	lw	a1,16(a5)
  a2cefa:	9d6ff0ef          	jal	ra,a2c0d0 <print_str>
  a2cefe:	481c                	lw	a5,16(s0)
  a2cf00:	00a3 2c80 051f      	l.li	a0,0xa32c80
  a2cf06:	478c                	lw	a1,8(a5)
  a2cf08:	9c8ff0ef          	jal	ra,a2c0d0 <print_str>
  a2cf0c:	481c                	lw	a5,16(s0)
  a2cf0e:	00a3 2c98 051f      	l.li	a0,0xa32c98
  a2cf14:	43cc                	lw	a1,4(a5)
  a2cf16:	9baff0ef          	jal	ra,a2c0d0 <print_str>
  a2cf1a:	481c                	lw	a5,16(s0)
  a2cf1c:	00a3 2cb0 051f      	l.li	a0,0xa32cb0
  a2cf22:	438c                	lw	a1,0(a5)
  a2cf24:	9acff0ef          	jal	ra,a2c0d0 <print_str>
  a2cf28:	481c                	lw	a5,16(s0)
  a2cf2a:	00a3 2cc8 051f      	l.li	a0,0xa32cc8
  a2cf30:	08c7a583          	lw	a1,140(a5)
  a2cf34:	99cff0ef          	jal	ra,a2c0d0 <print_str>
  a2cf38:	481c                	lw	a5,16(s0)
  a2cf3a:	00a3 2ce0 051f      	l.li	a0,0xa32ce0
  a2cf40:	4fcc                	lw	a1,28(a5)
  a2cf42:	98eff0ef          	jal	ra,a2c0d0 <print_str>
  a2cf46:	481c                	lw	a5,16(s0)
  a2cf48:	00a3 2cf8 051f      	l.li	a0,0xa32cf8
  a2cf4e:	47cc                	lw	a1,12(a5)
  a2cf50:	980ff0ef          	jal	ra,a2c0d0 <print_str>
  a2cf54:	481c                	lw	a5,16(s0)
  a2cf56:	00a3 2d10 051f      	l.li	a0,0xa32d10
  a2cf5c:	4f8c                	lw	a1,24(a5)
  a2cf5e:	972ff0ef          	jal	ra,a2c0d0 <print_str>
  a2cf62:	481c                	lw	a5,16(s0)
  a2cf64:	00a3 2d28 051f      	l.li	a0,0xa32d28
  a2cf6a:	0887a583          	lw	a1,136(a5)
  a2cf6e:	962ff0ef          	jal	ra,a2c0d0 <print_str>
  a2cf72:	481c                	lw	a5,16(s0)
  a2cf74:	00a3 2d40 051f      	l.li	a0,0xa32d40
  a2cf7a:	0847a583          	lw	a1,132(a5)
  a2cf7e:	952ff0ef          	jal	ra,a2c0d0 <print_str>
  a2cf82:	481c                	lw	a5,16(s0)
  a2cf84:	00a3 2d58 051f      	l.li	a0,0xa32d58
  a2cf8a:	0807a583          	lw	a1,128(a5)
  a2cf8e:	942ff0ef          	jal	ra,a2c0d0 <print_str>
  a2cf92:	481c                	lw	a5,16(s0)
  a2cf94:	00a3 2d70 051f      	l.li	a0,0xa32d70
  a2cf9a:	47ec                	lw	a1,76(a5)
  a2cf9c:	934ff0ef          	jal	ra,a2c0d0 <print_str>
  a2cfa0:	481c                	lw	a5,16(s0)
  a2cfa2:	00a3 2d88 051f      	l.li	a0,0xa32d88
  a2cfa8:	47ac                	lw	a1,72(a5)
  a2cfaa:	926ff0ef          	jal	ra,a2c0d0 <print_str>
  a2cfae:	481c                	lw	a5,16(s0)
  a2cfb0:	00a3 2da0 051f      	l.li	a0,0xa32da0
  a2cfb6:	5fec                	lw	a1,124(a5)
  a2cfb8:	918ff0ef          	jal	ra,a2c0d0 <print_str>
  a2cfbc:	481c                	lw	a5,16(s0)
  a2cfbe:	00a3 2db8 051f      	l.li	a0,0xa32db8
  a2cfc4:	5fac                	lw	a1,120(a5)
  a2cfc6:	90aff0ef          	jal	ra,a2c0d0 <print_str>
  a2cfca:	481c                	lw	a5,16(s0)
  a2cfcc:	00a3 2dd0 051f      	l.li	a0,0xa32dd0
  a2cfd2:	5bec                	lw	a1,116(a5)
  a2cfd4:	8fcff0ef          	jal	ra,a2c0d0 <print_str>
  a2cfd8:	481c                	lw	a5,16(s0)
  a2cfda:	00a3 2de8 051f      	l.li	a0,0xa32de8
  a2cfe0:	5bac                	lw	a1,112(a5)
  a2cfe2:	8eeff0ef          	jal	ra,a2c0d0 <print_str>
  a2cfe6:	481c                	lw	a5,16(s0)
  a2cfe8:	00a3 2e00 051f      	l.li	a0,0xa32e00
  a2cfee:	57ec                	lw	a1,108(a5)
  a2cff0:	8e0ff0ef          	jal	ra,a2c0d0 <print_str>
  a2cff4:	481c                	lw	a5,16(s0)
  a2cff6:	00a3 2e18 051f      	l.li	a0,0xa32e18
  a2cffc:	57ac                	lw	a1,104(a5)
  a2cffe:	8d2ff0ef          	jal	ra,a2c0d0 <print_str>
  a2d002:	481c                	lw	a5,16(s0)
  a2d004:	00a3 2e30 051f      	l.li	a0,0xa32e30
  a2d00a:	53ec                	lw	a1,100(a5)
  a2d00c:	8c4ff0ef          	jal	ra,a2c0d0 <print_str>
  a2d010:	481c                	lw	a5,16(s0)
  a2d012:	00a3 2e48 051f      	l.li	a0,0xa32e48
  a2d018:	53ac                	lw	a1,96(a5)
  a2d01a:	8b6ff0ef          	jal	ra,a2c0d0 <print_str>
  a2d01e:	481c                	lw	a5,16(s0)
  a2d020:	00a3 2e60 051f      	l.li	a0,0xa32e60
  a2d026:	43ec                	lw	a1,68(a5)
  a2d028:	8a8ff0ef          	jal	ra,a2c0d0 <print_str>
  a2d02c:	481c                	lw	a5,16(s0)
  a2d02e:	00a3 2e78 051f      	l.li	a0,0xa32e78
  a2d034:	43ac                	lw	a1,64(a5)
  a2d036:	89aff0ef          	jal	ra,a2c0d0 <print_str>
  a2d03a:	481c                	lw	a5,16(s0)
  a2d03c:	00a3 2e90 051f      	l.li	a0,0xa32e90
  a2d042:	5fcc                	lw	a1,60(a5)
  a2d044:	88cff0ef          	jal	ra,a2c0d0 <print_str>
  a2d048:	481c                	lw	a5,16(s0)
  a2d04a:	00a3 2ea8 051f      	l.li	a0,0xa32ea8
  a2d050:	5f8c                	lw	a1,56(a5)
  a2d052:	87eff0ef          	jal	ra,a2c0d0 <print_str>
  a2d056:	481c                	lw	a5,16(s0)
  a2d058:	00a3 2ec0 051f      	l.li	a0,0xa32ec0
  a2d05e:	5bcc                	lw	a1,52(a5)
  a2d060:	870ff0ef          	jal	ra,a2c0d0 <print_str>
  a2d064:	481c                	lw	a5,16(s0)
  a2d066:	00a3 2ed8 051f      	l.li	a0,0xa32ed8
  a2d06c:	5b8c                	lw	a1,48(a5)
  a2d06e:	862ff0ef          	jal	ra,a2c0d0 <print_str>
  a2d072:	481c                	lw	a5,16(s0)
  a2d074:	00a3 2ef0 051f      	l.li	a0,0xa32ef0
  a2d07a:	57cc                	lw	a1,44(a5)
  a2d07c:	854ff0ef          	jal	ra,a2c0d0 <print_str>
  a2d080:	481c                	lw	a5,16(s0)
  a2d082:	00a3 2f08 051f      	l.li	a0,0xa32f08
  a2d088:	578c                	lw	a1,40(a5)
  a2d08a:	846ff0ef          	jal	ra,a2c0d0 <print_str>
  a2d08e:	481c                	lw	a5,16(s0)
  a2d090:	00a3 2f20 051f      	l.li	a0,0xa32f20
  a2d096:	53cc                	lw	a1,36(a5)
  a2d098:	838ff0ef          	jal	ra,a2c0d0 <print_str>
  a2d09c:	481c                	lw	a5,16(s0)
  a2d09e:	00a3 2f38 051f      	l.li	a0,0xa32f38
  a2d0a4:	538c                	lw	a1,32(a5)
  a2d0a6:	82aff0ef          	jal	ra,a2c0d0 <print_str>
  a2d0aa:	481c                	lw	a5,16(s0)
  a2d0ac:	00a3 2f50 051f      	l.li	a0,0xa32f50
  a2d0b2:	4fec                	lw	a1,92(a5)
  a2d0b4:	81cff0ef          	jal	ra,a2c0d0 <print_str>
  a2d0b8:	481c                	lw	a5,16(s0)
  a2d0ba:	00a3 2f68 051f      	l.li	a0,0xa32f68
  a2d0c0:	4fac                	lw	a1,88(a5)
  a2d0c2:	80eff0ef          	jal	ra,a2c0d0 <print_str>
  a2d0c6:	481c                	lw	a5,16(s0)
  a2d0c8:	00a3 2f80 051f      	l.li	a0,0xa32f80
  a2d0ce:	4bec                	lw	a1,84(a5)
  a2d0d0:	800ff0ef          	jal	ra,a2c0d0 <print_str>
  a2d0d4:	481c                	lw	a5,16(s0)
  a2d0d6:	00a3 2f98 051f      	l.li	a0,0xa32f98
  a2d0dc:	4bac                	lw	a1,80(a5)
  a2d0de:	ff3fe0ef          	jal	ra,a2c0d0 <print_str>
  a2d0e2:	00a3 2fb0 051f      	l.li	a0,0xa32fb0
  a2d0e8:	8020                	pop	{ra,s0},16
  a2d0ea:	fe7fe06f          	j	a2c0d0 <print_str>

00a2d0ee <do_process_exception>:
  a2d0ee:	4154                	lw	a3,4(a0)
  a2d0f0:	00a067b7          	lui	a5,0xa06
  a2d0f4:	84478713          	addi	a4,a5,-1980 # a05844 <g_exc_info>
  a2d0f8:	cb08                	sw	a0,16(a4)
  a2d0fa:	84478513          	addi	a0,a5,-1980
  a2d0fe:	a336                	sh	a3,2(a4)
  a2d100:	dc9ff06f          	j	a2cec8 <exc_info_display.part.2>

00a2d104 <do_trap_unknown>:
  a2d104:	8028                	push	{ra,s0},-16
  a2d106:	842a                	mv	s0,a0
  a2d108:	00a3 2be0 051f      	l.li	a0,0xa32be0
  a2d10e:	fc3fe0ef          	jal	ra,a2c0d0 <print_str>
  a2d112:	8522                	mv	a0,s0
  a2d114:	8020                	pop	{ra,s0},16
  a2d116:	fd9ff06f          	j	a2d0ee <do_process_exception>

00a2d11a <do_trap_insn_misaligned>:
  a2d11a:	8028                	push	{ra,s0},-16
  a2d11c:	842a                	mv	s0,a0
  a2d11e:	00a3 2b10 051f      	l.li	a0,0xa32b10
  a2d124:	fadfe0ef          	jal	ra,a2c0d0 <print_str>
  a2d128:	8522                	mv	a0,s0
  a2d12a:	8020                	pop	{ra,s0},16
  a2d12c:	fc3ff06f          	j	a2d0ee <do_process_exception>

00a2d130 <do_trap_insn_fault>:
  a2d130:	8028                	push	{ra,s0},-16
  a2d132:	842a                	mv	s0,a0
  a2d134:	00a3 2ac4 051f      	l.li	a0,0xa32ac4
  a2d13a:	f97fe0ef          	jal	ra,a2c0d0 <print_str>
  a2d13e:	8522                	mv	a0,s0
  a2d140:	8020                	pop	{ra,s0},16
  a2d142:	fadff06f          	j	a2d0ee <do_process_exception>

00a2d146 <do_trap_insn_illegal>:
  a2d146:	8028                	push	{ra,s0},-16
  a2d148:	842a                	mv	s0,a0
  a2d14a:	00a3 2aec 051f      	l.li	a0,0xa32aec
  a2d150:	f81fe0ef          	jal	ra,a2c0d0 <print_str>
  a2d154:	8522                	mv	a0,s0
  a2d156:	8020                	pop	{ra,s0},16
  a2d158:	f97ff06f          	j	a2d0ee <do_process_exception>

00a2d15c <do_trap_load_misaligned>:
  a2d15c:	8028                	push	{ra,s0},-16
  a2d15e:	842a                	mv	s0,a0
  a2d160:	00a3 2b5c 051f      	l.li	a0,0xa32b5c
  a2d166:	f6bfe0ef          	jal	ra,a2c0d0 <print_str>
  a2d16a:	8522                	mv	a0,s0
  a2d16c:	8020                	pop	{ra,s0},16
  a2d16e:	f81ff06f          	j	a2d0ee <do_process_exception>

00a2d172 <do_trap_load_fault>:
  a2d172:	8028                	push	{ra,s0},-16
  a2d174:	842a                	mv	s0,a0
  a2d176:	00a3 2b3c 051f      	l.li	a0,0xa32b3c
  a2d17c:	f55fe0ef          	jal	ra,a2c0d0 <print_str>
  a2d180:	8522                	mv	a0,s0
  a2d182:	8020                	pop	{ra,s0},16
  a2d184:	f6bff06f          	j	a2d0ee <do_process_exception>

00a2d188 <do_trap_store_misaligned>:
  a2d188:	8028                	push	{ra,s0},-16
  a2d18a:	842a                	mv	s0,a0
  a2d18c:	00a3 2bb0 051f      	l.li	a0,0xa32bb0
  a2d192:	f3ffe0ef          	jal	ra,a2c0d0 <print_str>
  a2d196:	8522                	mv	a0,s0
  a2d198:	8020                	pop	{ra,s0},16
  a2d19a:	f55ff06f          	j	a2d0ee <do_process_exception>

00a2d19e <do_trap_store_fault>:
  a2d19e:	8028                	push	{ra,s0},-16
  a2d1a0:	842a                	mv	s0,a0
  a2d1a2:	00a3 2b84 051f      	l.li	a0,0xa32b84
  a2d1a8:	f29fe0ef          	jal	ra,a2c0d0 <print_str>
  a2d1ac:	8522                	mv	a0,s0
  a2d1ae:	8020                	pop	{ra,s0},16
  a2d1b0:	f3fff06f          	j	a2d0ee <do_process_exception>

00a2d1b4 <do_trap_ecall_u>:
  a2d1b4:	8028                	push	{ra,s0},-16
  a2d1b6:	842a                	mv	s0,a0
  a2d1b8:	00a3 2a98 051f      	l.li	a0,0xa32a98
  a2d1be:	f13fe0ef          	jal	ra,a2c0d0 <print_str>
  a2d1c2:	8522                	mv	a0,s0
  a2d1c4:	8020                	pop	{ra,s0},16
  a2d1c6:	f29ff06f          	j	a2d0ee <do_process_exception>

00a2d1ca <do_trap_ecall_s>:
  a2d1ca:	8028                	push	{ra,s0},-16
  a2d1cc:	842a                	mv	s0,a0
  a2d1ce:	00a3 2a6c 051f      	l.li	a0,0xa32a6c
  a2d1d4:	efdfe0ef          	jal	ra,a2c0d0 <print_str>
  a2d1d8:	8522                	mv	a0,s0
  a2d1da:	8020                	pop	{ra,s0},16
  a2d1dc:	f13ff06f          	j	a2d0ee <do_process_exception>

00a2d1e0 <do_trap_ecall_m>:
  a2d1e0:	8028                	push	{ra,s0},-16
  a2d1e2:	842a                	mv	s0,a0
  a2d1e4:	00a3 2a40 051f      	l.li	a0,0xa32a40
  a2d1ea:	ee7fe0ef          	jal	ra,a2c0d0 <print_str>
  a2d1ee:	8522                	mv	a0,s0
  a2d1f0:	8020                	pop	{ra,s0},16
  a2d1f2:	efdff06f          	j	a2d0ee <do_process_exception>

00a2d1f6 <do_trap_break>:
  a2d1f6:	8028                	push	{ra,s0},-16
  a2d1f8:	842a                	mv	s0,a0
  a2d1fa:	00a3 2a2c 051f      	l.li	a0,0xa32a2c
  a2d200:	ed1fe0ef          	jal	ra,a2c0d0 <print_str>
  a2d204:	8522                	mv	a0,s0
  a2d206:	8020                	pop	{ra,s0},16
  a2d208:	ee7ff06f          	j	a2d0ee <do_process_exception>

00a2d20c <do_insn_page_fault>:
  a2d20c:	8028                	push	{ra,s0},-16
  a2d20e:	842a                	mv	s0,a0
  a2d210:	00a3 29b4 051f      	l.li	a0,0xa329b4
  a2d216:	ebbfe0ef          	jal	ra,a2c0d0 <print_str>
  a2d21a:	8522                	mv	a0,s0
  a2d21c:	8020                	pop	{ra,s0},16
  a2d21e:	ed1ff06f          	j	a2d0ee <do_process_exception>

00a2d222 <do_load_page_fault>:
  a2d222:	8028                	push	{ra,s0},-16
  a2d224:	842a                	mv	s0,a0
  a2d226:	00a3 29d4 051f      	l.li	a0,0xa329d4
  a2d22c:	ea5fe0ef          	jal	ra,a2c0d0 <print_str>
  a2d230:	8522                	mv	a0,s0
  a2d232:	8020                	pop	{ra,s0},16
  a2d234:	ebbff06f          	j	a2d0ee <do_process_exception>

00a2d238 <do_store_page_fault>:
  a2d238:	8028                	push	{ra,s0},-16
  a2d23a:	842a                	mv	s0,a0
  a2d23c:	00a3 2a0c 051f      	l.li	a0,0xa32a0c
  a2d242:	e8ffe0ef          	jal	ra,a2c0d0 <print_str>
  a2d246:	8522                	mv	a0,s0
  a2d248:	8020                	pop	{ra,s0},16
  a2d24a:	ea5ff06f          	j	a2d0ee <do_process_exception>

00a2d24e <do_hard_fault>:
  a2d24e:	8028                	push	{ra,s0},-16
  a2d250:	842a                	mv	s0,a0
  a2d252:	00a3 2978 051f      	l.li	a0,0xa32978
  a2d258:	e79fe0ef          	jal	ra,a2c0d0 <print_str>
  a2d25c:	8522                	mv	a0,s0
  a2d25e:	8020                	pop	{ra,s0},16
  a2d260:	e8fff06f          	j	a2d0ee <do_process_exception>

00a2d264 <do_lockup>:
  a2d264:	8028                	push	{ra,s0},-16
  a2d266:	842a                	mv	s0,a0
  a2d268:	00a3 29f4 051f      	l.li	a0,0xa329f4
  a2d26e:	e63fe0ef          	jal	ra,a2c0d0 <print_str>
  a2d272:	8522                	mv	a0,s0
  a2d274:	8020                	pop	{ra,s0},16
  a2d276:	e79ff06f          	j	a2d0ee <do_process_exception>

00a2d27a <default_handler>:
  a2d27a:	8018                	push	{ra},-16
  a2d27c:	bcfff0ef          	jal	ra,a2ce4a <interrupt_number_get>
  a2d280:	85aa                	mv	a1,a0
  a2d282:	00a3 294c 051f      	l.li	a0,0xa3294c
  a2d288:	e49fe0ef          	jal	ra,a2c0d0 <print_str>
  a2d28c:	a001                	j	a2d28c <default_handler+0x12>

00a2d28e <nmi_handler>:
  a2d28e:	8018                	push	{ra},-16
  a2d290:	bbbff0ef          	jal	ra,a2ce4a <interrupt_number_get>
  a2d294:	85aa                	mv	a1,a0
  a2d296:	00a3 2fec 051f      	l.li	a0,0xa32fec
  a2d29c:	e35fe0ef          	jal	ra,a2c0d0 <print_str>
  a2d2a0:	a001                	j	a2d2a0 <nmi_handler+0x12>

00a2d2a2 <partition_get_addr>:
  a2d2a2:	0020 0380 051f      	l.li	a0,0x200380
  a2d2a8:	8082                	ret

00a2d2aa <partition_get_path_map>:
  a2d2aa:	00a0 585c 079f      	l.li	a5,0xa0585c
  a2d2b0:	c11c                	sw	a5,0(a0)
  a2d2b2:	4501                	li	a0,0
  a2d2b4:	8082                	ret

00a2d2b6 <upg_progress_callbck>:
  a2d2b6:	8128                	push	{ra,s0},-32
  a2d2b8:	842a                	mv	s0,a0
  a2d2ba:	00a3 308c 051f      	l.li	a0,0xa3308c
  a2d2c0:	809ff0ef          	jal	ra,a2cac8 <serial_puts>
  a2d2c4:	640413bb          	bnei	s0,100,a2d2d2 <upg_progress_callbck+0x1c>
  a2d2c8:	00a3 30a4 051f      	l.li	a0,0xa330a4
  a2d2ce:	ffaff0ef          	jal	ra,a2cac8 <serial_puts>
  a2d2d2:	47a9                	li	a5,10
  a2d2d4:	02f45733          	divu	a4,s0,a5
  a2d2d8:	0068                	addi	a0,sp,12
  a2d2da:	00010723          	sb	zero,14(sp)
  a2d2de:	02f77733          	remu	a4,a4,a5
  a2d2e2:	02f477b3          	remu	a5,s0,a5
  a2d2e6:	03070713          	addi	a4,a4,48 # 40000030 <_gp_+0x3f5cb7a8>
  a2d2ea:	00e10623          	sb	a4,12(sp)
  a2d2ee:	03078793          	addi	a5,a5,48
  a2d2f2:	00f106a3          	sb	a5,13(sp)
  a2d2f6:	fd2ff0ef          	jal	ra,a2cac8 <serial_puts>
  a2d2fa:	00a3 30a8 051f      	l.li	a0,0xa330a8
  a2d300:	fc8ff0ef          	jal	ra,a2cac8 <serial_puts>
  a2d304:	640413bb          	bnei	s0,100,a2d312 <upg_progress_callbck+0x5c>
  a2d308:	00a3 3154 051f      	l.li	a0,0xa33154
  a2d30e:	fbaff0ef          	jal	ra,a2cac8 <serial_puts>
  a2d312:	8124                	popret	{ra,s0},32

00a2d314 <check_fota_msid>:
  a2d314:	8138                	push	{ra,s0-s1},-32
  a2d316:	842a                	mv	s0,a0
  a2d318:	84ae                	mv	s1,a1
  a2d31a:	4611                	li	a2,4
  a2d31c:	0f800593          	li	a1,248
  a2d320:	0068                	addi	a0,sp,12
  a2d322:	c602                	sw	zero,12(sp)
  a2d324:	dc0fd0ef          	jal	ra,a2a8e4 <uapi_efuse_read_buffer>
  a2d328:	c519                	beqz	a0,a2d336 <check_fota_msid+0x22>
  a2d32a:	85aa                	mv	a1,a0
  a2d32c:	00a3 3014 051f      	l.li	a0,0xa33014
  a2d332:	d9ffe0ef          	jal	ra,a2c0d0 <print_str>
  a2d336:	47b2                	lw	a5,12(sp)
  a2d338:	8c3d                	xor	s0,s0,a5
  a2d33a:	8c65                	and	s0,s0,s1
  a2d33c:	c411                	beqz	s0,a2d348 <check_fota_msid+0x34>
  a2d33e:	00a3 3038 051f      	l.li	a0,0xa33038
  a2d344:	d8dfe0ef          	jal	ra,a2c0d0 <print_str>
  a2d348:	4501                	li	a0,0
  a2d34a:	8134                	popret	{ra,s0-s1},32

00a2d34c <ws63_upg_putc>:
  a2d34c:	f5cff06f          	j	a2caa8 <serial_putc>

00a2d350 <upg_free_port>:
  a2d350:	8038                	push	{ra,s0-s1},-16
  a2d352:	84aa                	mv	s1,a0
  a2d354:	115040ef          	jal	ra,a31c68 <global_interrupt_lock>
  a2d358:	842a                	mv	s0,a0
  a2d35a:	8526                	mv	a0,s1
  a2d35c:	de2fc0ef          	jal	ra,a2993e <free>
  a2d360:	8522                	mv	a0,s0
  a2d362:	8030                	pop	{ra,s0-s1},16
  a2d364:	11d0406f          	j	a31c80 <global_interrupt_restore>

00a2d368 <upg_malloc_port>:
  a2d368:	8038                	push	{ra,s0-s1},-16
  a2d36a:	842a                	mv	s0,a0
  a2d36c:	0fd040ef          	jal	ra,a31c68 <global_interrupt_lock>
  a2d370:	84aa                	mv	s1,a0
  a2d372:	8522                	mv	a0,s0
  a2d374:	d94fc0ef          	jal	ra,a29908 <malloc>
  a2d378:	842a                	mv	s0,a0
  a2d37a:	8526                	mv	a0,s1
  a2d37c:	105040ef          	jal	ra,a31c80 <global_interrupt_restore>
  a2d380:	8522                	mv	a0,s0
  a2d382:	8034                	popret	{ra,s0-s1},16

00a2d384 <upg_get_ids_map>:
  a2d384:	00a3 4014 079f      	l.li	a5,0xa34014
  a2d38a:	c11c                	sw	a5,0(a0)
  a2d38c:	450d                	li	a0,3
  a2d38e:	8082                	ret

00a2d390 <upg_img_in_set>:
  a2d390:	00a3 403c 079f      	l.li	a5,0xa3403c
  a2d396:	43d4                	lw	a3,4(a5)
  a2d398:	ce89                	beqz	a3,a2d3b2 <upg_img_in_set+0x22>
  a2d39a:	4398                	lw	a4,0(a5)
  a2d39c:	4781                	li	a5,0
  a2d39e:	0711                	addi	a4,a4,4
  a2d3a0:	ffc72603          	lw	a2,-4(a4)
  a2d3a4:	00a60763          	beq	a2,a0,a2d3b2 <upg_img_in_set+0x22>
  a2d3a8:	0785                	addi	a5,a5,1
  a2d3aa:	fef69ae3          	bne	a3,a5,a2d39e <upg_img_in_set+0xe>
  a2d3ae:	4501                	li	a0,0
  a2d3b0:	8082                	ret
  a2d3b2:	4505                	li	a0,1
  a2d3b4:	8082                	ret

00a2d3b6 <upg_get_upgrade_flag_flash_start_addr>:
  a2d3b6:	8128                	push	{ra,s0},-32
  a2d3b8:	842a                	mv	s0,a0
  a2d3ba:	004c                	addi	a1,sp,4
  a2d3bc:	02100513          	li	a0,33
  a2d3c0:	06b000ef          	jal	ra,a2dc2a <uapi_partition_get_info>
  a2d3c4:	e519                	bnez	a0,a2d3d2 <upg_get_upgrade_flag_flash_start_addr+0x1c>
  a2d3c6:	4732                	lw	a4,12(sp)
  a2d3c8:	47a2                	lw	a5,8(sp)
  a2d3ca:	97ba                	add	a5,a5,a4
  a2d3cc:	777d                	lui	a4,0xfffff
  a2d3ce:	97ba                	add	a5,a5,a4
  a2d3d0:	c01c                	sw	a5,0(s0)
  a2d3d2:	8124                	popret	{ra,s0},32

00a2d3d4 <upg_get_progress_status_start_addr>:
  a2d3d4:	8138                	push	{ra,s0-s1},-32
  a2d3d6:	84aa                	mv	s1,a0
  a2d3d8:	842e                	mv	s0,a1
  a2d3da:	02100513          	li	a0,33
  a2d3de:	004c                	addi	a1,sp,4
  a2d3e0:	04b000ef          	jal	ra,a2dc2a <uapi_partition_get_info>
  a2d3e4:	e909                	bnez	a0,a2d3f6 <upg_get_progress_status_start_addr+0x22>
  a2d3e6:	4732                	lw	a4,12(sp)
  a2d3e8:	47a2                	lw	a5,8(sp)
  a2d3ea:	97ba                	add	a5,a5,a4
  a2d3ec:	7775                	lui	a4,0xffffd
  a2d3ee:	97ba                	add	a5,a5,a4
  a2d3f0:	c09c                	sw	a5,0(s1)
  a2d3f2:	678d                	lui	a5,0x3
  a2d3f4:	c01c                	sw	a5,0(s0)
  a2d3f6:	8134                	popret	{ra,s0-s1},32

00a2d3f8 <upg_get_fota_partiton_area_addr>:
  a2d3f8:	8138                	push	{ra,s0-s1},-32
  a2d3fa:	84aa                	mv	s1,a0
  a2d3fc:	842e                	mv	s0,a1
  a2d3fe:	02100513          	li	a0,33
  a2d402:	004c                	addi	a1,sp,4
  a2d404:	027000ef          	jal	ra,a2dc2a <uapi_partition_get_info>
  a2d408:	e509                	bnez	a0,a2d412 <upg_get_fota_partiton_area_addr+0x1a>
  a2d40a:	47a2                	lw	a5,8(sp)
  a2d40c:	c09c                	sw	a5,0(s1)
  a2d40e:	47b2                	lw	a5,12(sp)
  a2d410:	c01c                	sw	a5,0(s0)
  a2d412:	8134                	popret	{ra,s0-s1},32

00a2d414 <upg_reboot>:
  a2d414:	8018                	push	{ra},-16
  a2d416:	1f400513          	li	a0,500
  a2d41a:	e97fc0ef          	jal	ra,a2a2b0 <uapi_tcxo_delay_ms>
  a2d41e:	8010                	pop	{ra},16
  a2d420:	923fd06f          	j	a2ad42 <hal_reboot_chip>

00a2d424 <upg_progress_callback_register>:
  a2d424:	8018                	push	{ra},-16
  a2d426:	00a2 d2b6 051f      	l.li	a0,0xa2d2b6
  a2d42c:	35b010ef          	jal	ra,a2ef86 <uapi_upg_register_progress_callback>
  a2d430:	c519                	beqz	a0,a2d43e <upg_progress_callback_register+0x1a>
  a2d432:	00a3 305c 051f      	l.li	a0,0xa3305c
  a2d438:	8010                	pop	{ra},16
  a2d43a:	c97fe06f          	j	a2c0d0 <print_str>
  a2d43e:	8014                	popret	{ra},16

00a2d440 <upg_watchdog_kick>:
  a2d440:	c12fd06f          	j	a2a852 <uapi_watchdog_kick>

00a2d444 <upg_get_flash_base_addr>:
  a2d444:	00200537          	lui	a0,0x200
  a2d448:	8082                	ret

00a2d44a <upg_get_flash_size>:
  a2d44a:	00800537          	lui	a0,0x800
  a2d44e:	8082                	ret

00a2d450 <upg_flash_read>:
  a2d450:	8018                	push	{ra},-16
  a2d452:	87b2                	mv	a5,a2
  a2d454:	862e                	mv	a2,a1
  a2d456:	85be                	mv	a1,a5
  a2d458:	9aeff0ef          	jal	ra,a2c606 <uapi_sfc_reg_read>
  a2d45c:	00a03533          	snez	a0,a0
  a2d460:	40a00533          	neg	a0,a0
  a2d464:	8014                	popret	{ra},16

00a2d466 <upg_flash_erase>:
  a2d466:	8098                	push	{ra,s0-s7},-48
  a2d468:	00b50a33          	add	s4,a0,a1
  a2d46c:	014a1793          	slli	a5,s4,0x14
  a2d470:	84aa                	mv	s1,a0
  a2d472:	89d2                	mv	s3,s4
  a2d474:	c791                	beqz	a5,a2d480 <upg_flash_erase+0x1a>
  a2d476:	79fd                	lui	s3,0xfffff
  a2d478:	013a79b3          	and	s3,s4,s3
  a2d47c:	6785                	lui	a5,0x1
  a2d47e:	99be                	add	s3,s3,a5
  a2d480:	6505                	lui	a0,0x1
  a2d482:	029000ef          	jal	ra,a2dcaa <upg_malloc>
  a2d486:	8aaa                	mv	s5,a0
  a2d488:	c909                	beqz	a0,a2d49a <upg_flash_erase+0x34>
  a2d48a:	6505                	lui	a0,0x1
  a2d48c:	01f000ef          	jal	ra,a2dcaa <upg_malloc>
  a2d490:	8b2a                	mv	s6,a0
  a2d492:	e901                	bnez	a0,a2d4a2 <upg_flash_erase+0x3c>
  a2d494:	8556                	mv	a0,s5
  a2d496:	02f000ef          	jal	ra,a2dcc4 <upg_free>
  a2d49a:	80000437          	lui	s0,0x80000
  a2d49e:	0415                	addi	s0,s0,5 # 80000005 <_gp_+0x7f5cb77d>
  a2d4a0:	a881                	j	a2d4f0 <upg_flash_erase+0x8a>
  a2d4a2:	797d                	lui	s2,0xfffff
  a2d4a4:	0124f933          	and	s2,s1,s2
  a2d4a8:	412484b3          	sub	s1,s1,s2
  a2d4ac:	e48d                	bnez	s1,a2d4d6 <upg_flash_erase+0x70>
  a2d4ae:	41498bb3          	sub	s7,s3,s4
  a2d4b2:	040b9163          	bnez	s7,a2d4f4 <upg_flash_erase+0x8e>
  a2d4b6:	412985b3          	sub	a1,s3,s2
  a2d4ba:	854a                	mv	a0,s2
  a2d4bc:	b1cff0ef          	jal	ra,a2c7d8 <uapi_sfc_reg_erase>
  a2d4c0:	842a                	mv	s0,a0
  a2d4c2:	e10d                	bnez	a0,a2d4e4 <upg_flash_erase+0x7e>
  a2d4c4:	e0a1                	bnez	s1,a2d504 <upg_flash_erase+0x9e>
  a2d4c6:	000b8f63          	beqz	s7,a2d4e4 <upg_flash_erase+0x7e>
  a2d4ca:	4681                	li	a3,0
  a2d4cc:	865a                	mv	a2,s6
  a2d4ce:	85de                	mv	a1,s7
  a2d4d0:	8552                	mv	a0,s4
  a2d4d2:	2089                	jal	ra,a2d514 <upg_flash_write>
  a2d4d4:	a835                	j	a2d510 <upg_flash_erase+0xaa>
  a2d4d6:	8656                	mv	a2,s5
  a2d4d8:	85a6                	mv	a1,s1
  a2d4da:	854a                	mv	a0,s2
  a2d4dc:	f75ff0ef          	jal	ra,a2d450 <upg_flash_read>
  a2d4e0:	842a                	mv	s0,a0
  a2d4e2:	d571                	beqz	a0,a2d4ae <upg_flash_erase+0x48>
  a2d4e4:	8556                	mv	a0,s5
  a2d4e6:	7de000ef          	jal	ra,a2dcc4 <upg_free>
  a2d4ea:	855a                	mv	a0,s6
  a2d4ec:	7d8000ef          	jal	ra,a2dcc4 <upg_free>
  a2d4f0:	8522                	mv	a0,s0
  a2d4f2:	8094                	popret	{ra,s0-s7},48
  a2d4f4:	865a                	mv	a2,s6
  a2d4f6:	85de                	mv	a1,s7
  a2d4f8:	8552                	mv	a0,s4
  a2d4fa:	f57ff0ef          	jal	ra,a2d450 <upg_flash_read>
  a2d4fe:	842a                	mv	s0,a0
  a2d500:	f175                	bnez	a0,a2d4e4 <upg_flash_erase+0x7e>
  a2d502:	bf55                	j	a2d4b6 <upg_flash_erase+0x50>
  a2d504:	4681                	li	a3,0
  a2d506:	8656                	mv	a2,s5
  a2d508:	85a6                	mv	a1,s1
  a2d50a:	854a                	mv	a0,s2
  a2d50c:	2021                	jal	ra,a2d514 <upg_flash_write>
  a2d50e:	dd45                	beqz	a0,a2d4c6 <upg_flash_erase+0x60>
  a2d510:	842a                	mv	s0,a0
  a2d512:	bfc9                	j	a2d4e4 <upg_flash_erase+0x7e>

00a2d514 <upg_flash_write>:
  a2d514:	8068                	push	{ra,s0-s4},-32
  a2d516:	892a                	mv	s2,a0
  a2d518:	89ae                	mv	s3,a1
  a2d51a:	8a32                	mv	s4,a2
  a2d51c:	ee99                	bnez	a3,a2d53a <upg_flash_write+0x26>
  a2d51e:	c22fc0ef          	jal	ra,a29940 <osal_irq_lock>
  a2d522:	84aa                	mv	s1,a0
  a2d524:	864e                	mv	a2,s3
  a2d526:	85d2                	mv	a1,s4
  a2d528:	854a                	mv	a0,s2
  a2d52a:	9b0ff0ef          	jal	ra,a2c6da <uapi_sfc_reg_write>
  a2d52e:	842a                	mv	s0,a0
  a2d530:	8526                	mv	a0,s1
  a2d532:	c16fc0ef          	jal	ra,a29948 <osal_irq_restore>
  a2d536:	8522                	mv	a0,s0
  a2d538:	8064                	popret	{ra,s0-s4},32
  a2d53a:	f2dff0ef          	jal	ra,a2d466 <upg_flash_erase>
  a2d53e:	842a                	mv	s0,a0
  a2d540:	dd79                	beqz	a0,a2d51e <upg_flash_write+0xa>
  a2d542:	bfd5                	j	a2d536 <upg_flash_write+0x22>

00a2d544 <upg_get_root_public_key>:
  a2d544:	8118                	push	{ra},-32
  a2d546:	004c                	addi	a1,sp,4
  a2d548:	450d                	li	a0,3
  a2d54a:	6e0000ef          	jal	ra,a2dc2a <uapi_partition_get_info>
  a2d54e:	4781                	li	a5,0
  a2d550:	e519                	bnez	a0,a2d55e <upg_get_root_public_key+0x1a>
  a2d552:	4722                	lw	a4,8(sp)
  a2d554:	002007b7          	lui	a5,0x200
  a2d558:	97ba                	add	a5,a5,a4
  a2d55a:	04078793          	addi	a5,a5,64 # 200040 <__heap_size+0x1e2a48>
  a2d55e:	853e                	mv	a0,a5
  a2d560:	8114                	popret	{ra},32

00a2d562 <upg_check_fota_information>:
  a2d562:	8028                	push	{ra,s0},-16
  a2d564:	842a                	mv	s0,a0
  a2d566:	590c                	lw	a1,48(a0)
  a2d568:	5548                	lw	a0,44(a0)
  a2d56a:	dabff0ef          	jal	ra,a2d314 <check_fota_msid>
  a2d56e:	e901                	bnez	a0,a2d57e <upg_check_fota_information+0x1c>
  a2d570:	11c42583          	lw	a1,284(s0)
  a2d574:	11842503          	lw	a0,280(s0)
  a2d578:	8020                	pop	{ra,s0},16
  a2d57a:	d9bff06f          	j	a2d314 <check_fota_msid>
  a2d57e:	8024                	popret	{ra,s0},16

00a2d580 <ws63_upg_init>:
  a2d580:	8128                	push	{ra,s0},-32
  a2d582:	00a2 d368 079f      	l.li	a5,0xa2d368
  a2d588:	c23e                	sw	a5,4(sp)
  a2d58a:	00a2 d350 079f      	l.li	a5,0xa2d350
  a2d590:	c43e                	sw	a5,8(sp)
  a2d592:	0048                	addi	a0,sp,4
  a2d594:	00a2 d34c 079f      	l.li	a5,0xa2d34c
  a2d59a:	c63e                	sw	a5,12(sp)
  a2d59c:	499000ef          	jal	ra,a2e234 <uapi_upg_init>
  a2d5a0:	842a                	mv	s0,a0
  a2d5a2:	c901                	beqz	a0,a2d5b2 <ws63_upg_init+0x32>
  a2d5a4:	00a3 30ac 051f      	l.li	a0,0xa330ac
  a2d5aa:	b27fe0ef          	jal	ra,a2c0d0 <print_str>
  a2d5ae:	8522                	mv	a0,s0
  a2d5b0:	8124                	popret	{ra,s0},32
  a2d5b2:	e73ff0ef          	jal	ra,a2d424 <upg_progress_callback_register>
  a2d5b6:	00a3 30cc 051f      	l.li	a0,0xa330cc
  a2d5bc:	b7fd                	j	a2d5aa <ws63_upg_init+0x2a>

00a2d5be <upg_erase_whole_image>:
  a2d5be:	8118                	push	{ra},-32
  a2d5c0:	4148                	lw	a0,4(a0)
  a2d5c2:	004c                	addi	a1,sp,4
  a2d5c4:	79a000ef          	jal	ra,a2dd5e <upg_get_image_info>
  a2d5c8:	e509                	bnez	a0,a2d5d2 <upg_erase_whole_image+0x14>
  a2d5ca:	45b2                	lw	a1,12(sp)
  a2d5cc:	4522                	lw	a0,8(sp)
  a2d5ce:	e99ff0ef          	jal	ra,a2d466 <upg_flash_erase>
  a2d5d2:	8114                	popret	{ra},32

00a2d5d4 <upg_cryto_init>:
  a2d5d4:	8148                	push	{ra,s0-s2},-32
  a2d5d6:	47f1                	li	a5,28
  a2d5d8:	5178                	lw	a4,100(a0)
  a2d5da:	06c50913          	addi	s2,a0,108 # 106c <ccause+0xaa>
  a2d5de:	c43e                	sw	a5,8(sp)
  a2d5e0:	4785                	li	a5,1
  a2d5e2:	00f10623          	sb	a5,12(sp)
  a2d5e6:	00010023          	sb	zero,0(sp)
  a2d5ea:	000100a3          	sb	zero,1(sp)
  a2d5ee:	00010123          	sb	zero,2(sp)
  a2d5f2:	c24a                	sw	s2,4(sp)
  a2d5f4:	3c78 96e1 079f      	l.li	a5,0x3c7896e1
  a2d5fa:	4401                	li	s0,0
  a2d5fc:	02f71d63          	bne	a4,a5,a2d636 <upg_cryto_init+0x62>
  a2d600:	00a0 585c 049f      	l.li	s1,0xa0585c
  a2d606:	030007b7          	lui	a5,0x3000
  a2d60a:	00d78713          	addi	a4,a5,13 # 300000d <_gp_+0x25cb785>
  a2d60e:	842a                	mv	s0,a0
  a2d610:	07cd                	addi	a5,a5,19
  a2d612:	46f1                	li	a3,28
  a2d614:	864a                	mv	a2,s2
  a2d616:	45f1                	li	a1,28
  a2d618:	03c48513          	addi	a0,s1,60
  a2d61c:	d8d8                	sw	a4,52(s1)
  a2d61e:	c09c                	sw	a5,0(s1)
  a2d620:	3c6030ef          	jal	ra,a309e6 <memcpy_s>
  a2d624:	c919                	beqz	a0,a2d63a <upg_cryto_init+0x66>
  a2d626:	00a3 30e8 051f      	l.li	a0,0xa330e8
  a2d62c:	80000437          	lui	s0,0x80000
  a2d630:	aa1fe0ef          	jal	ra,a2c0d0 <print_str>
  a2d634:	0411                	addi	s0,s0,4 # 80000004 <_gp_+0x7f5cb77c>
  a2d636:	8522                	mv	a0,s0
  a2d638:	8144                	popret	{ra,s0-s2},32
  a2d63a:	46f1                	li	a3,28
  a2d63c:	864a                	mv	a2,s2
  a2d63e:	45f1                	li	a1,28
  a2d640:	00848513          	addi	a0,s1,8
  a2d644:	3a2030ef          	jal	ra,a309e6 <memcpy_s>
  a2d648:	c509                	beqz	a0,a2d652 <upg_cryto_init+0x7e>
  a2d64a:	00a3 3120 051f      	l.li	a0,0xa33120
  a2d650:	bff1                	j	a2d62c <upg_cryto_init+0x58>
  a2d652:	08c40413          	addi	s0,s0,140
  a2d656:	46c1                	li	a3,16
  a2d658:	8622                	mv	a2,s0
  a2d65a:	45c1                	li	a1,16
  a2d65c:	05848513          	addi	a0,s1,88
  a2d660:	386030ef          	jal	ra,a309e6 <memcpy_s>
  a2d664:	c509                	beqz	a0,a2d66e <upg_cryto_init+0x9a>
  a2d666:	00a3 3158 051f      	l.li	a0,0xa33158
  a2d66c:	b7c1                	j	a2d62c <upg_cryto_init+0x58>
  a2d66e:	46c1                	li	a3,16
  a2d670:	8622                	mv	a2,s0
  a2d672:	45c1                	li	a1,16
  a2d674:	02448513          	addi	a0,s1,36
  a2d678:	36e030ef          	jal	ra,a309e6 <memcpy_s>
  a2d67c:	c509                	beqz	a0,a2d686 <upg_cryto_init+0xb2>
  a2d67e:	00a3 318c 051f      	l.li	a0,0xa3318c
  a2d684:	b765                	j	a2d62c <upg_cryto_init+0x58>
  a2d686:	edefc0ef          	jal	ra,a29d64 <drv_rom_cipher_symc_init>
  a2d68a:	842a                	mv	s0,a0
  a2d68c:	c901                	beqz	a0,a2d69c <upg_cryto_init+0xc8>
  a2d68e:	85aa                	mv	a1,a0
  a2d690:	00a3 31c0 051f      	l.li	a0,0xa331c0
  a2d696:	a3bfe0ef          	jal	ra,a2c0d0 <print_str>
  a2d69a:	bf71                	j	a2d636 <upg_cryto_init+0x62>
  a2d69c:	58d0                	lw	a2,52(s1)
  a2d69e:	858a                	mv	a1,sp
  a2d6a0:	03848513          	addi	a0,s1,56
  a2d6a4:	c6afc0ef          	jal	ra,a29b0e <drv_rom_cipher_create_keyslot>
  a2d6a8:	842a                	mv	s0,a0
  a2d6aa:	c911                	beqz	a0,a2d6be <upg_cryto_init+0xea>
  a2d6ac:	85aa                	mv	a1,a0
  a2d6ae:	00a3 31f4 051f      	l.li	a0,0xa331f4
  a2d6b4:	a1dfe0ef          	jal	ra,a2c0d0 <print_str>
  a2d6b8:	efcfc0ef          	jal	ra,a29db4 <drv_rom_cipher_symc_deinit>
  a2d6bc:	bfad                	j	a2d636 <upg_cryto_init+0x62>
  a2d6be:	4090                	lw	a2,0(s1)
  a2d6c0:	858a                	mv	a1,sp
  a2d6c2:	00448513          	addi	a0,s1,4
  a2d6c6:	c48fc0ef          	jal	ra,a29b0e <drv_rom_cipher_create_keyslot>
  a2d6ca:	842a                	mv	s0,a0
  a2d6cc:	d52d                	beqz	a0,a2d636 <upg_cryto_init+0x62>
  a2d6ce:	85aa                	mv	a1,a0
  a2d6d0:	00a3 3238 051f      	l.li	a0,0xa33238
  a2d6d6:	9fbfe0ef          	jal	ra,a2c0d0 <print_str>
  a2d6da:	5c88                	lw	a0,56(s1)
  a2d6dc:	caefc0ef          	jal	ra,a29b8a <drv_rom_cipher_destroy_keyslot>
  a2d6e0:	bfe1                	j	a2d6b8 <upg_cryto_init+0xe4>

00a2d6e2 <upg_cryto_deinit>:
  a2d6e2:	5178                	lw	a4,100(a0)
  a2d6e4:	3c78 96e1 079f      	l.li	a5,0x3c7896e1
  a2d6ea:	00f70463          	beq	a4,a5,a2d6f2 <upg_cryto_deinit+0x10>
  a2d6ee:	4501                	li	a0,0
  a2d6f0:	8082                	ret
  a2d6f2:	8038                	push	{ra,s0-s1},-16
  a2d6f4:	00a0 585c 049f      	l.li	s1,0xa0585c
  a2d6fa:	5c88                	lw	a0,56(s1)
  a2d6fc:	c8efc0ef          	jal	ra,a29b8a <drv_rom_cipher_destroy_keyslot>
  a2d700:	842a                	mv	s0,a0
  a2d702:	40c8                	lw	a0,4(s1)
  a2d704:	c86fc0ef          	jal	ra,a29b8a <drv_rom_cipher_destroy_keyslot>
  a2d708:	8c49                	or	s0,s0,a0
  a2d70a:	eaafc0ef          	jal	ra,a29db4 <drv_rom_cipher_symc_deinit>
  a2d70e:	8d41                	or	a0,a0,s0
  a2d710:	8034                	popret	{ra,s0-s1},16

00a2d712 <upg_process_cryto_info>:
  a2d712:	219c                	lbu	a5,0(a1)
  a2d714:	e789                	bnez	a5,a2d71e <upg_process_cryto_info+0xc>
  a2d716:	00052023          	sw	zero,0(a0)
  a2d71a:	4501                	li	a0,0
  a2d71c:	8082                	ret
  a2d71e:	30000793          	li	a5,768
  a2d722:	c11c                	sw	a5,0(a0)
  a2d724:	00058023          	sb	zero,0(a1)
  a2d728:	bfcd                	j	a2d71a <upg_process_cryto_info+0x8>

00a2d72a <upg_decry_fota_pkt>:
  a2d72a:	8028                	push	{ra,s0},-16
  a2d72c:	5278                	lw	a4,100(a2)
  a2d72e:	3c78 96e1 079f      	l.li	a5,0x3c7896e1
  a2d734:	4401                	li	s0,0
  a2d736:	02f71863          	bne	a4,a5,a2d766 <upg_decry_fota_pkt+0x3c>
  a2d73a:	87aa                	mv	a5,a0
  a2d73c:	00a0 585c 051f      	l.li	a0,0xa0585c
  a2d742:	88ae                	mv	a7,a1
  a2d744:	02450593          	addi	a1,a0,36
  a2d748:	4148                	lw	a0,4(a0)
  a2d74a:	4801                	li	a6,0
  a2d74c:	86be                	mv	a3,a5
  a2d74e:	4701                	li	a4,0
  a2d750:	4641                	li	a2,16
  a2d752:	e72fc0ef          	jal	ra,a29dc4 <drv_rom_cipher_symc_decrypt>
  a2d756:	842a                	mv	s0,a0
  a2d758:	c519                	beqz	a0,a2d766 <upg_decry_fota_pkt+0x3c>
  a2d75a:	85aa                	mv	a1,a0
  a2d75c:	00a3 327c 051f      	l.li	a0,0xa3327c
  a2d762:	96ffe0ef          	jal	ra,a2c0d0 <print_str>
  a2d766:	8522                	mv	a0,s0
  a2d768:	8024                	popret	{ra,s0},16

00a2d76a <upg_encry_fota_pkt>:
  a2d76a:	8028                	push	{ra,s0},-16
  a2d76c:	5278                	lw	a4,100(a2)
  a2d76e:	3c78 96e1 079f      	l.li	a5,0x3c7896e1
  a2d774:	4401                	li	s0,0
  a2d776:	02f71863          	bne	a4,a5,a2d7a6 <upg_encry_fota_pkt+0x3c>
  a2d77a:	87aa                	mv	a5,a0
  a2d77c:	00a0 585c 051f      	l.li	a0,0xa0585c
  a2d782:	88ae                	mv	a7,a1
  a2d784:	05850593          	addi	a1,a0,88
  a2d788:	5d08                	lw	a0,56(a0)
  a2d78a:	4801                	li	a6,0
  a2d78c:	86be                	mv	a3,a5
  a2d78e:	4701                	li	a4,0
  a2d790:	4641                	li	a2,16
  a2d792:	e32fc0ef          	jal	ra,a29dc4 <drv_rom_cipher_symc_decrypt>
  a2d796:	842a                	mv	s0,a0
  a2d798:	c519                	beqz	a0,a2d7a6 <upg_encry_fota_pkt+0x3c>
  a2d79a:	85aa                	mv	a1,a0
  a2d79c:	00a3 32c8 051f      	l.li	a0,0xa332c8
  a2d7a2:	92ffe0ef          	jal	ra,a2c0d0 <print_str>
  a2d7a6:	8522                	mv	a0,s0
  a2d7a8:	8024                	popret	{ra,s0},16

00a2d7aa <mfg_malloc>:
  a2d7aa:	8038                	push	{ra,s0-s1},-16
  a2d7ac:	842a                	mv	s0,a0
  a2d7ae:	4ba040ef          	jal	ra,a31c68 <global_interrupt_lock>
  a2d7b2:	84aa                	mv	s1,a0
  a2d7b4:	8522                	mv	a0,s0
  a2d7b6:	952fc0ef          	jal	ra,a29908 <malloc>
  a2d7ba:	842a                	mv	s0,a0
  a2d7bc:	8526                	mv	a0,s1
  a2d7be:	4c2040ef          	jal	ra,a31c80 <global_interrupt_restore>
  a2d7c2:	8522                	mv	a0,s0
  a2d7c4:	8034                	popret	{ra,s0-s1},16

00a2d7c6 <mfg_free>:
  a2d7c6:	8038                	push	{ra,s0-s1},-16
  a2d7c8:	84aa                	mv	s1,a0
  a2d7ca:	49e040ef          	jal	ra,a31c68 <global_interrupt_lock>
  a2d7ce:	842a                	mv	s0,a0
  a2d7d0:	8526                	mv	a0,s1
  a2d7d2:	96cfc0ef          	jal	ra,a2993e <free>
  a2d7d6:	8522                	mv	a0,s0
  a2d7d8:	8030                	pop	{ra,s0-s1},16
  a2d7da:	4a60406f          	j	a31c80 <global_interrupt_restore>

00a2d7de <mfg_flash_read>:
  a2d7de:	8138                	push	{ra,s0-s1},-32
  a2d7e0:	84aa                	mv	s1,a0
  a2d7e2:	842e                	mv	s0,a1
  a2d7e4:	46b1                	li	a3,12
  a2d7e6:	45b1                	li	a1,12
  a2d7e8:	4601                	li	a2,0
  a2d7ea:	0048                	addi	a0,sp,4
  a2d7ec:	276030ef          	jal	ra,a30a62 <memset_s>
  a2d7f0:	004c                	addi	a1,sp,4
  a2d7f2:	02100513          	li	a0,33
  a2d7f6:	2915                	jal	ra,a2dc2a <uapi_partition_get_info>
  a2d7f8:	e505                	bnez	a0,a2d820 <mfg_flash_read+0x42>
  a2d7fa:	4532                	lw	a0,12(sp)
  a2d7fc:	47a2                	lw	a5,8(sp)
  a2d7fe:	004006b7          	lui	a3,0x400
  a2d802:	97aa                	add	a5,a5,a0
  a2d804:	7579                	lui	a0,0xffffe
  a2d806:	97aa                	add	a5,a5,a0
  a2d808:	557d                	li	a0,-1
  a2d80a:	00f6eb63          	bltu	a3,a5,a2d820 <mfg_flash_read+0x42>
  a2d80e:	00878733          	add	a4,a5,s0
  a2d812:	00e6e763          	bltu	a3,a4,a2d820 <mfg_flash_read+0x42>
  a2d816:	8622                	mv	a2,s0
  a2d818:	85a6                	mv	a1,s1
  a2d81a:	853e                	mv	a0,a5
  a2d81c:	debfe0ef          	jal	ra,a2c606 <uapi_sfc_reg_read>
  a2d820:	8134                	popret	{ra,s0-s1},32

00a2d822 <mfg_flash_write_info>:
  a2d822:	80c8                	push	{ra,s0-s10},-48
  a2d824:	8baa                	mv	s7,a0
  a2d826:	8aae                	mv	s5,a1
  a2d828:	89b2                	mv	s3,a2
  a2d82a:	ea99                	bnez	a3,a2d840 <mfg_flash_write_info+0x1e>
  a2d82c:	854e                	mv	a0,s3
  a2d82e:	f7dff0ef          	jal	ra,a2d7aa <mfg_malloc>
  a2d832:	84aa                	mv	s1,a0
  a2d834:	e955                	bnez	a0,a2d8e8 <mfg_flash_write_info+0xc6>
  a2d836:	80000437          	lui	s0,0x80000
  a2d83a:	0415                	addi	s0,s0,5 # 80000005 <_gp_+0x7f5cb77d>
  a2d83c:	8522                	mv	a0,s0
  a2d83e:	80c4                	popret	{ra,s0-s10},48
  a2d840:	00c58a33          	add	s4,a1,a2
  a2d844:	014a1793          	slli	a5,s4,0x14
  a2d848:	8952                	mv	s2,s4
  a2d84a:	c791                	beqz	a5,a2d856 <mfg_flash_write_info+0x34>
  a2d84c:	797d                	lui	s2,0xfffff
  a2d84e:	012a7933          	and	s2,s4,s2
  a2d852:	6785                	lui	a5,0x1
  a2d854:	993e                	add	s2,s2,a5
  a2d856:	6505                	lui	a0,0x1
  a2d858:	f53ff0ef          	jal	ra,a2d7aa <mfg_malloc>
  a2d85c:	8b2a                	mv	s6,a0
  a2d85e:	dd61                	beqz	a0,a2d836 <mfg_flash_write_info+0x14>
  a2d860:	6505                	lui	a0,0x1
  a2d862:	f49ff0ef          	jal	ra,a2d7aa <mfg_malloc>
  a2d866:	8c2a                	mv	s8,a0
  a2d868:	e509                	bnez	a0,a2d872 <mfg_flash_write_info+0x50>
  a2d86a:	855a                	mv	a0,s6
  a2d86c:	f5bff0ef          	jal	ra,a2d7c6 <mfg_free>
  a2d870:	b7d9                	j	a2d836 <mfg_flash_write_info+0x14>
  a2d872:	74fd                	lui	s1,0xfffff
  a2d874:	009af4b3          	and	s1,s5,s1
  a2d878:	409a8d33          	sub	s10,s5,s1
  a2d87c:	020d1763          	bnez	s10,a2d8aa <mfg_flash_write_info+0x88>
  a2d880:	41490cb3          	sub	s9,s2,s4
  a2d884:	040c9263          	bnez	s9,a2d8c8 <mfg_flash_write_info+0xa6>
  a2d888:	409905b3          	sub	a1,s2,s1
  a2d88c:	8526                	mv	a0,s1
  a2d88e:	f4bfe0ef          	jal	ra,a2c7d8 <uapi_sfc_reg_erase>
  a2d892:	842a                	mv	s0,a0
  a2d894:	e115                	bnez	a0,a2d8b8 <mfg_flash_write_info+0x96>
  a2d896:	040d1163          	bnez	s10,a2d8d8 <mfg_flash_write_info+0xb6>
  a2d89a:	000c8f63          	beqz	s9,a2d8b8 <mfg_flash_write_info+0x96>
  a2d89e:	4681                	li	a3,0
  a2d8a0:	8666                	mv	a2,s9
  a2d8a2:	85d2                	mv	a1,s4
  a2d8a4:	8562                	mv	a0,s8
  a2d8a6:	3fb5                	jal	ra,a2d822 <mfg_flash_write_info>
  a2d8a8:	a835                	j	a2d8e4 <mfg_flash_write_info+0xc2>
  a2d8aa:	866a                	mv	a2,s10
  a2d8ac:	85da                	mv	a1,s6
  a2d8ae:	8526                	mv	a0,s1
  a2d8b0:	d57fe0ef          	jal	ra,a2c606 <uapi_sfc_reg_read>
  a2d8b4:	842a                	mv	s0,a0
  a2d8b6:	d569                	beqz	a0,a2d880 <mfg_flash_write_info+0x5e>
  a2d8b8:	855a                	mv	a0,s6
  a2d8ba:	f0dff0ef          	jal	ra,a2d7c6 <mfg_free>
  a2d8be:	8562                	mv	a0,s8
  a2d8c0:	f07ff0ef          	jal	ra,a2d7c6 <mfg_free>
  a2d8c4:	d425                	beqz	s0,a2d82c <mfg_flash_write_info+0xa>
  a2d8c6:	bf9d                	j	a2d83c <mfg_flash_write_info+0x1a>
  a2d8c8:	8666                	mv	a2,s9
  a2d8ca:	85e2                	mv	a1,s8
  a2d8cc:	8552                	mv	a0,s4
  a2d8ce:	d39fe0ef          	jal	ra,a2c606 <uapi_sfc_reg_read>
  a2d8d2:	842a                	mv	s0,a0
  a2d8d4:	f175                	bnez	a0,a2d8b8 <mfg_flash_write_info+0x96>
  a2d8d6:	bf4d                	j	a2d888 <mfg_flash_write_info+0x66>
  a2d8d8:	4681                	li	a3,0
  a2d8da:	866a                	mv	a2,s10
  a2d8dc:	85a6                	mv	a1,s1
  a2d8de:	855a                	mv	a0,s6
  a2d8e0:	3789                	jal	ra,a2d822 <mfg_flash_write_info>
  a2d8e2:	dd45                	beqz	a0,a2d89a <mfg_flash_write_info+0x78>
  a2d8e4:	842a                	mv	s0,a0
  a2d8e6:	bfc9                	j	a2d8b8 <mfg_flash_write_info+0x96>
  a2d8e8:	864e                	mv	a2,s3
  a2d8ea:	85de                	mv	a1,s7
  a2d8ec:	8556                	mv	a0,s5
  a2d8ee:	dedfe0ef          	jal	ra,a2c6da <uapi_sfc_reg_write>
  a2d8f2:	842a                	mv	s0,a0
  a2d8f4:	e10d                	bnez	a0,a2d916 <mfg_flash_write_info+0xf4>
  a2d8f6:	00200637          	lui	a2,0x200
  a2d8fa:	86ce                	mv	a3,s3
  a2d8fc:	9656                	add	a2,a2,s5
  a2d8fe:	85ce                	mv	a1,s3
  a2d900:	8526                	mv	a0,s1
  a2d902:	0e4030ef          	jal	ra,a309e6 <memcpy_s>
  a2d906:	842a                	mv	s0,a0
  a2d908:	e519                	bnez	a0,a2d916 <mfg_flash_write_info+0xf4>
  a2d90a:	864e                	mv	a2,s3
  a2d90c:	85de                	mv	a1,s7
  a2d90e:	8526                	mv	a0,s1
  a2d910:	bdefb0ef          	jal	ra,a28cee <memcmp>
  a2d914:	842a                	mv	s0,a0
  a2d916:	8526                	mv	a0,s1
  a2d918:	eafff0ef          	jal	ra,a2d7c6 <mfg_free>
  a2d91c:	b705                	j	a2d83c <mfg_flash_write_info+0x1a>

00a2d91e <mfg_flash_write>:
  a2d91e:	8138                	push	{ra,s0-s1},-32
  a2d920:	84aa                	mv	s1,a0
  a2d922:	842e                	mv	s0,a1
  a2d924:	46b1                	li	a3,12
  a2d926:	45b1                	li	a1,12
  a2d928:	4601                	li	a2,0
  a2d92a:	0048                	addi	a0,sp,4
  a2d92c:	136030ef          	jal	ra,a30a62 <memset_s>
  a2d930:	004c                	addi	a1,sp,4
  a2d932:	02100513          	li	a0,33
  a2d936:	2cd5                	jal	ra,a2dc2a <uapi_partition_get_info>
  a2d938:	e505                	bnez	a0,a2d960 <mfg_flash_write+0x42>
  a2d93a:	47b2                	lw	a5,12(sp)
  a2d93c:	45a2                	lw	a1,8(sp)
  a2d93e:	00400737          	lui	a4,0x400
  a2d942:	557d                	li	a0,-1
  a2d944:	95be                	add	a1,a1,a5
  a2d946:	77f9                	lui	a5,0xffffe
  a2d948:	95be                	add	a1,a1,a5
  a2d94a:	00b76b63          	bltu	a4,a1,a2d960 <mfg_flash_write+0x42>
  a2d94e:	008587b3          	add	a5,a1,s0
  a2d952:	00f76763          	bltu	a4,a5,a2d960 <mfg_flash_write+0x42>
  a2d956:	4685                	li	a3,1
  a2d958:	8622                	mv	a2,s0
  a2d95a:	8526                	mv	a0,s1
  a2d95c:	ec7ff0ef          	jal	ra,a2d822 <mfg_flash_write_info>
  a2d960:	8134                	popret	{ra,s0-s1},32

00a2d962 <mfg_get_ftm_run_region>:
  a2d962:	8328                	push	{ra,s0},-64
  a2d964:	c402                	sw	zero,8(sp)
  a2d966:	c602                	sw	zero,12(sp)
  a2d968:	c802                	sw	zero,16(sp)
  a2d96a:	c92d                	beqz	a0,a2d9dc <mfg_get_ftm_run_region+0x7a>
  a2d96c:	842a                	mv	s0,a0
  a2d96e:	002c                	addi	a1,sp,8
  a2d970:	02100513          	li	a0,33
  a2d974:	2c5d                	jal	ra,a2dc2a <uapi_partition_get_info>
  a2d976:	e13d                	bnez	a0,a2d9dc <mfg_get_ftm_run_region+0x7a>
  a2d978:	45f1                	li	a1,28
  a2d97a:	8522                	mv	a0,s0
  a2d97c:	e63ff0ef          	jal	ra,a2d7de <mfg_flash_read>
  a2d980:	ed31                	bnez	a0,a2d9dc <mfg_get_ftm_run_region+0x7a>
  a2d982:	4732                	lw	a4,12(sp)
  a2d984:	4c14                	lw	a3,24(s0)
  a2d986:	002007b7          	lui	a5,0x200
  a2d98a:	8f45 ba2f 061f      	l.li	a2,0x8f45ba2f
  a2d990:	97ba                	add	a5,a5,a4
  a2d992:	04c68763          	beq	a3,a2,a2d9e0 <mfg_get_ftm_run_region+0x7e>
  a2d996:	438c                	lw	a1,0(a5)
  a2d998:	4b7c f333 069f      	l.li	a3,0x4b7cf333
  a2d99e:	04d59163          	bne	a1,a3,a2d9e0 <mfg_get_ftm_run_region+0x7e>
  a2d9a2:	478c                	lw	a1,8(a5)
  a2d9a4:	10000693          	li	a3,256
  a2d9a8:	02d59c63          	bne	a1,a3,a2d9e0 <mfg_get_ftm_run_region+0x7e>
  a2d9ac:	1247a683          	lw	a3,292(a5) # 200124 <__heap_size+0x1e2b2c>
  a2d9b0:	4585                	li	a1,1
  a2d9b2:	cc3e                	sw	a5,24(sp)
  a2d9b4:	30068693          	addi	a3,a3,768 # 400300 <__heap_size+0x3e2d08>
  a2d9b8:	ce3e                	sw	a5,28(sp)
  a2d9ba:	ca2e                	sw	a1,20(sp)
  a2d9bc:	d036                	sw	a3,32(sp)
  a2d9be:	d236                	sw	a3,36(sp)
  a2d9c0:	d402                	sw	zero,40(sp)
  a2d9c2:	d632                	sw	a2,44(sp)
  a2d9c4:	004007b7          	lui	a5,0x400
  a2d9c8:	00e7ea63          	bltu	a5,a4,a2d9dc <mfg_get_ftm_run_region+0x7a>
  a2d9cc:	9736                	add	a4,a4,a3
  a2d9ce:	00e7e763          	bltu	a5,a4,a2d9dc <mfg_get_ftm_run_region+0x7a>
  a2d9d2:	45f1                	li	a1,28
  a2d9d4:	0848                	addi	a0,sp,20
  a2d9d6:	f49ff0ef          	jal	ra,a2d91e <mfg_flash_write>
  a2d9da:	c119                	beqz	a0,a2d9e0 <mfg_get_ftm_run_region+0x7e>
  a2d9dc:	4501                	li	a0,0
  a2d9de:	a809                	j	a2d9f0 <mfg_get_ftm_run_region+0x8e>
  a2d9e0:	45f1                	li	a1,28
  a2d9e2:	8522                	mv	a0,s0
  a2d9e4:	dfbff0ef          	jal	ra,a2d7de <mfg_flash_read>
  a2d9e8:	f975                	bnez	a0,a2d9dc <mfg_get_ftm_run_region+0x7a>
  a2d9ea:	4008                	lw	a0,0(s0)
  a2d9ec:	02f57c3b          	bgeui	a0,2,a2d9dc <mfg_get_ftm_run_region+0x7a>
  a2d9f0:	8324                	popret	{ra,s0},64

00a2d9f2 <cpu_utils_set_system_status_by_cause>:
  a2d9f2:	8018                	push	{ra},-16
  a2d9f4:	223d                	jal	ra,a2db22 <set_cpu_utils_reset_cause>
  a2d9f6:	8010                	pop	{ra},16
  a2d9f8:	a8e9                	j	a2dad2 <set_cpu_utils_system_boot_magic>

00a2d9fa <cpu_utils_reset_chip_with_log>:
  a2d9fa:	8118                	push	{ra},-32
  a2d9fc:	4501                	li	a0,0
  a2d9fe:	c62e                	sw	a1,12(sp)
  a2da00:	2a15                	jal	ra,a2db34 <set_update_reset_cause_on_boot>
  a2da02:	45b2                	lw	a1,12(sp)
  a2da04:	852e                	mv	a0,a1
  a2da06:	fedff0ef          	jal	ra,a2d9f2 <cpu_utils_set_system_status_by_cause>
  a2da0a:	8110                	pop	{ra},32
  a2da0c:	b36fd06f          	j	a2ad42 <hal_reboot_chip>

00a2da10 <panic_deal>:
  a2da10:	8458                	push	{ra,s0-s3},-96
  a2da12:	86b2                	mv	a3,a2
  a2da14:	892a                	mv	s2,a0
  a2da16:	84ae                	mv	s1,a1
  a2da18:	8432                	mv	s0,a2
  a2da1a:	862e                	mv	a2,a1
  a2da1c:	85aa                	mv	a1,a0
  a2da1e:	00a3 3314 051f      	l.li	a0,0xa33314
  a2da24:	eacfe0ef          	jal	ra,a2c0d0 <print_str>
  a2da28:	f19fb0ef          	jal	ra,a29940 <osal_irq_lock>
  a2da2c:	00a0 58c4 079f      	l.li	a5,0xa058c4
  a2da32:	2398                	lbu	a4,0(a5)
  a2da34:	89aa                	mv	s3,a0
  a2da36:	e321                	bnez	a4,a2da76 <panic_deal+0x66>
  a2da38:	4705                	li	a4,1
  a2da3a:	a398                	sb	a4,0(a5)
  a2da3c:	03210023          	sb	s2,32(sp)
  a2da40:	d226                	sw	s1,36(sp)
  a2da42:	fdcfc0ef          	jal	ra,a2a21e <uapi_systick_get_us>
  a2da46:	d42a                	sw	a0,40(sp)
  a2da48:	1008                	addi	a0,sp,32
  a2da4a:	d622                	sw	s0,44(sp)
  a2da4c:	28d5                	jal	ra,a2db40 <set_last_panic>
  a2da4e:	02000613          	li	a2,32
  a2da52:	4581                	li	a1,0
  a2da54:	1008                	addi	a0,sp,32
  a2da56:	c802                	sw	zero,16(sp)
  a2da58:	ca02                	sw	zero,20(sp)
  a2da5a:	cc02                	sw	zero,24(sp)
  a2da5c:	ce02                	sw	zero,28(sp)
  a2da5e:	f47fa0ef          	jal	ra,a289a4 <memset>
  a2da62:	da22                	sw	s0,52(sp)
  a2da64:	341027f3          	csrr	a5,mepc
  a2da68:	dc3e                	sw	a5,56(sp)
  a2da6a:	878a                	mv	a5,sp
  a2da6c:	0068                	addi	a0,sp,12
  a2da6e:	c63e                	sw	a5,12(sp)
  a2da70:	2221                	jal	ra,a2db78 <set_exception_info>
  a2da72:	1008                	addi	a0,sp,32
  a2da74:	2215                	jal	ra,a2db98 <set_exception_stack_frame>
  a2da76:	00a0 58c8 079f      	l.li	a5,0xa058c8
  a2da7c:	439c                	lw	a5,0(a5)
  a2da7e:	c391                	beqz	a5,a2da82 <panic_deal+0x72>
  a2da80:	9782                	jalr	a5
  a2da82:	6589                	lui	a1,0x2
  a2da84:	058d                	addi	a1,a1,3 # 2003 <ccause+0x1041>
  a2da86:	4509                	li	a0,2
  a2da88:	f73ff0ef          	jal	ra,a2d9fa <cpu_utils_reset_chip_with_log>
  a2da8c:	854e                	mv	a0,s3
  a2da8e:	ebbfb0ef          	jal	ra,a29948 <osal_irq_restore>
  a2da92:	8454                	popret	{ra,s0-s3},96

00a2da94 <panic>:
  a2da94:	00a3 4044 079f      	l.li	a5,0xa34044
  a2da9a:	0007a303          	lw	t1,0(a5) # 400000 <__heap_size+0x3e2a08>
  a2da9e:	00030563          	beqz	t1,a2daa8 <panic+0x14>
  a2daa2:	ffb08613          	addi	a2,ra,-5
  a2daa6:	8302                	jr	t1
  a2daa8:	8118                	push	{ra},-32
  a2daaa:	4785                	li	a5,1
  a2daac:	00f107a3          	sb	a5,15(sp)
  a2dab0:	00f14783          	lbu	a5,15(sp)
  a2dab4:	9f81                	uxtb	a5
  a2dab6:	ffed                	bnez	a5,a2dab0 <panic+0x1c>
  a2dab8:	8114                	popret	{ra},32

00a2daba <duplicate_preserve_mem>:
  a2daba:	0fc00693          	li	a3,252
  a2dabe:	00a3 4088 061f      	l.li	a2,0xa34088
  a2dac4:	0fc00593          	li	a1,252
  a2dac8:	00a0 58cc 051f      	l.li	a0,0xa058cc
  a2dace:	7190206f          	j	a309e6 <memcpy_s>

00a2dad2 <set_cpu_utils_system_boot_magic>:
  a2dad2:	00a34737          	lui	a4,0xa34
  a2dad6:	08870793          	addi	a5,a4,136 # a34088 <g_preserve_data_lib>
  a2dada:	0d87d783          	lhu	a5,216(a5)
  a2dade:	6689                	lui	a3,0x2
  a2dae0:	04068613          	addi	a2,a3,64 # 2040 <ccause+0x107e>
  a2dae4:	08870713          	addi	a4,a4,136
  a2dae8:	02c78963          	beq	a5,a2,a2db1a <set_cpu_utils_system_boot_magic+0x48>
  a2daec:	00f66c63          	bltu	a2,a5,a2db04 <set_cpu_utils_system_boot_magic+0x32>
  a2daf0:	c78d                	beqz	a5,a2db1a <set_cpu_utils_system_boot_magic+0x48>
  a2daf2:	0685                	addi	a3,a3,1
  a2daf4:	02d78363          	beq	a5,a3,a2db1a <set_cpu_utils_system_boot_magic+0x48>
  a2daf8:	dead beaf 079f      	l.li	a5,0xdeadbeaf
  a2dafe:	0ef72423          	sw	a5,232(a4)
  a2db02:	8082                	ret
  a2db04:	66a1                	lui	a3,0x8
  a2db06:	0685                	addi	a3,a3,1 # 8001 <ccause+0x703f>
  a2db08:	00d78963          	beq	a5,a3,a2db1a <set_cpu_utils_system_boot_magic+0x48>
  a2db0c:	0000 f0f0 069f      	l.li	a3,0xf0f0
  a2db12:	00d78463          	beq	a5,a3,a2db1a <set_cpu_utils_system_boot_magic+0x48>
  a2db16:	6691                	lui	a3,0x4
  a2db18:	bfe9                	j	a2daf2 <set_cpu_utils_system_boot_magic+0x20>
  a2db1a:	dead dead 079f      	l.li	a5,0xdeaddead
  a2db20:	bff9                	j	a2dafe <set_cpu_utils_system_boot_magic+0x2c>

00a2db22 <set_cpu_utils_reset_cause>:
  a2db22:	00a3 4088 079f      	l.li	a5,0xa34088
  a2db28:	0c078d23          	sb	zero,218(a5)
  a2db2c:	0ca79c23          	sh	a0,216(a5)
  a2db30:	f8bff06f          	j	a2daba <duplicate_preserve_mem>

00a2db34 <set_update_reset_cause_on_boot>:
  a2db34:	00a3 4088 079f      	l.li	a5,0xa34088
  a2db3a:	0ca78d23          	sb	a0,218(a5)
  a2db3e:	8082                	ret

00a2db40 <set_last_panic>:
  a2db40:	8018                	push	{ra},-16
  a2db42:	862a                	mv	a2,a0
  a2db44:	00a3 4088 051f      	l.li	a0,0xa34088
  a2db4a:	46c1                	li	a3,16
  a2db4c:	45c1                	li	a1,16
  a2db4e:	0a450513          	addi	a0,a0,164 # 10a4 <ccause+0xe2>
  a2db52:	695020ef          	jal	ra,a309e6 <memcpy_s>
  a2db56:	8010                	pop	{ra},16
  a2db58:	f63ff06f          	j	a2daba <duplicate_preserve_mem>

00a2db5c <set_exception_info_riscv>:
  a2db5c:	8018                	push	{ra},-16
  a2db5e:	862a                	mv	a2,a0
  a2db60:	09000693          	li	a3,144
  a2db64:	09000593          	li	a1,144
  a2db68:	00a3 4088 051f      	l.li	a0,0xa34088
  a2db6e:	679020ef          	jal	ra,a309e6 <memcpy_s>
  a2db72:	8010                	pop	{ra},16
  a2db74:	f47ff06f          	j	a2daba <duplicate_preserve_mem>

00a2db78 <set_exception_info>:
  a2db78:	cd19                	beqz	a0,a2db96 <set_exception_info+0x1e>
  a2db7a:	8018                	push	{ra},-16
  a2db7c:	862a                	mv	a2,a0
  a2db7e:	00a3 4088 051f      	l.li	a0,0xa34088
  a2db84:	46d1                	li	a3,20
  a2db86:	45d1                	li	a1,20
  a2db88:	09050513          	addi	a0,a0,144
  a2db8c:	65b020ef          	jal	ra,a309e6 <memcpy_s>
  a2db90:	8010                	pop	{ra},16
  a2db92:	f29ff06f          	j	a2daba <duplicate_preserve_mem>
  a2db96:	8082                	ret

00a2db98 <set_exception_stack_frame>:
  a2db98:	4958                	lw	a4,20(a0)
  a2db9a:	00a3 4088 079f      	l.li	a5,0xa34088
  a2dba0:	08e7a623          	sw	a4,140(a5)
  a2dba4:	4d18                	lw	a4,24(a0)
  a2dba6:	cbd8                	sw	a4,20(a5)
  a2dba8:	f13ff06f          	j	a2daba <duplicate_preserve_mem>

00a2dbac <uapi_partition_init>:
  a2dbac:	8048                	push	{ra,s0-s2},-16
  a2dbae:	ef4ff0ef          	jal	ra,a2d2a2 <partition_get_addr>
  a2dbb2:	4118                	lw	a4,0(a0)
  a2dbb4:	4b87 a54b 079f      	l.li	a5,0x4b87a54b
  a2dbba:	06f71563          	bne	a4,a5,a2dc24 <uapi_partition_init+0x78>
  a2dbbe:	842a                	mv	s0,a0
  a2dbc0:	ee2ff0ef          	jal	ra,a2d2a2 <partition_get_addr>
  a2dbc4:	892a                	mv	s2,a0
  a2dbc6:	2446                	lhu	s1,12(s0)
  a2dbc8:	edaff0ef          	jal	ra,a2d2a2 <partition_get_addr>
  a2dbcc:	4014                	lw	a3,0(s0)
  a2dbce:	00a06737          	lui	a4,0xa06
  a2dbd2:	9c870793          	addi	a5,a4,-1592 # a059c8 <g_partition_info>
  a2dbd6:	c394                	sw	a3,0(a5)
  a2dbd8:	4054                	lw	a3,4(s0)
  a2dbda:	9c870313          	addi	t1,a4,-1592
  a2dbde:	c3d4                	sw	a3,4(a5)
  a2dbe0:	4414                	lw	a3,8(s0)
  a2dbe2:	c794                	sw	a3,8(a5)
  a2dbe4:	2474                	lbu	a3,14(s0)
  a2dbe6:	c7d4                	sw	a3,12(a5)
  a2dbe8:	1006ef3b          	bltui	a3,16,a2dc24 <uapi_partition_init+0x78>
  a2dbec:	9c870713          	addi	a4,a4,-1592
  a2dbf0:	4781                	li	a5,0
  a2dbf2:	94ca                	add	s1,s1,s2
  a2dbf4:	4841                	li	a6,16
  a2dbf6:	06f4861b          	addshf	a2,s1,a5,sll,3
  a2dbfa:	4214                	lw	a3,0(a2)
  a2dbfc:	00178593          	addi	a1,a5,1
  a2dc00:	97aa                	add	a5,a5,a0
  a2dc02:	cb14                	sw	a3,16(a4)
  a2dc04:	08b3069b          	addshf	a3,t1,a1,sll,4
  a2dc08:	00462883          	lw	a7,4(a2) # 200004 <__heap_size+0x1e2a0c>
  a2dc0c:	2690                	lbu	a2,8(a3)
  a2dc0e:	0741                	addi	a4,a4,16
  a2dc10:	1116261b          	orshf	a2,a2,a7,sll,8
  a2dc14:	c690                	sw	a2,8(a3)
  a2dc16:	37fc                	lbu	a5,15(a5)
  a2dc18:	a69c                	sb	a5,8(a3)
  a2dc1a:	87ae                	mv	a5,a1
  a2dc1c:	fd059de3          	bne	a1,a6,a2dbf6 <uapi_partition_init+0x4a>
  a2dc20:	4501                	li	a0,0
  a2dc22:	8044                	popret	{ra,s0-s2},16
  a2dc24:	80003537          	lui	a0,0x80003
  a2dc28:	bfed                	j	a2dc22 <uapi_partition_init+0x76>

00a2dc2a <uapi_partition_get_info>:
  a2dc2a:	c1bd                	beqz	a1,a2dc90 <uapi_partition_get_info+0x66>
  a2dc2c:	00a06737          	lui	a4,0xa06
  a2dc30:	9c870793          	addi	a5,a4,-1592 # a059c8 <g_partition_info>
  a2dc34:	47d0                	lw	a2,12(a5)
  a2dc36:	9c870713          	addi	a4,a4,-1592
  a2dc3a:	4781                	li	a5,0
  a2dc3c:	02c7e863          	bltu	a5,a2,a2dc6c <uapi_partition_get_info+0x42>
  a2dc40:	8138                	push	{ra,s0-s1},-32
  a2dc42:	84aa                	mv	s1,a0
  a2dc44:	0068                	addi	a0,sp,12
  a2dc46:	842e                	mv	s0,a1
  a2dc48:	c602                	sw	zero,12(sp)
  a2dc4a:	e60ff0ef          	jal	ra,a2d2aa <partition_get_path_map>
  a2dc4e:	c919                	beqz	a0,a2dc64 <uapi_partition_get_info+0x3a>
  a2dc50:	47b2                	lw	a5,12(sp)
  a2dc52:	cb89                	beqz	a5,a2dc64 <uapi_partition_get_info+0x3a>
  a2dc54:	4701                	li	a4,0
  a2dc56:	86be                	mv	a3,a5
  a2dc58:	4290                	lw	a2,0(a3)
  a2dc5a:	07a1                	addi	a5,a5,8
  a2dc5c:	02c49163          	bne	s1,a2,a2dc7e <uapi_partition_get_info+0x54>
  a2dc60:	42dc                	lw	a5,4(a3)
  a2dc62:	e395                	bnez	a5,a2dc86 <uapi_partition_get_info+0x5c>
  a2dc64:	8000 3003 051f      	l.li	a0,0x80003003
  a2dc6a:	8134                	popret	{ra,s0-s1},32
  a2dc6c:	0785                	addi	a5,a5,1
  a2dc6e:	08f7069b          	addshf	a3,a4,a5,sll,4
  a2dc72:	0086c803          	lbu	a6,8(a3) # 4008 <ccause+0x3046>
  a2dc76:	02a80163          	beq	a6,a0,a2dc98 <uapi_partition_get_info+0x6e>
  a2dc7a:	9f81                	uxtb	a5
  a2dc7c:	b7c1                	j	a2dc3c <uapi_partition_get_info+0x12>
  a2dc7e:	0705                	addi	a4,a4,1
  a2dc80:	fce51be3          	bne	a0,a4,a2dc56 <uapi_partition_get_info+0x2c>
  a2dc84:	b7c5                	j	a2dc64 <uapi_partition_get_info+0x3a>
  a2dc86:	4705                	li	a4,1
  a2dc88:	a018                	sb	a4,0(s0)
  a2dc8a:	c05c                	sw	a5,4(s0)
  a2dc8c:	4501                	li	a0,0
  a2dc8e:	bff1                	j	a2dc6a <uapi_partition_get_info+0x40>
  a2dc90:	8000 3002 051f      	l.li	a0,0x80003002
  a2dc96:	8082                	ret
  a2dc98:	00058023          	sb	zero,0(a1)
  a2dc9c:	429c                	lw	a5,0(a3)
  a2dc9e:	4501                	li	a0,0
  a2dca0:	c1dc                	sw	a5,4(a1)
  a2dca2:	469c                	lw	a5,8(a3)
  a2dca4:	83a1                	srli	a5,a5,0x8
  a2dca6:	c59c                	sw	a5,8(a1)
  a2dca8:	8082                	ret

00a2dcaa <upg_malloc>:
  a2dcaa:	8028                	push	{ra,s0},-16
  a2dcac:	842a                	mv	s0,a0
  a2dcae:	2b8d                	jal	ra,a2e220 <upg_get_func_list>
  a2dcb0:	411c                	lw	a5,0(a0)
  a2dcb2:	c799                	beqz	a5,a2dcc0 <upg_malloc+0x16>
  a2dcb4:	23b5                	jal	ra,a2e220 <upg_get_func_list>
  a2dcb6:	00052303          	lw	t1,0(a0) # 80003000 <_gp_+0x7f5ce778>
  a2dcba:	8522                	mv	a0,s0
  a2dcbc:	8020                	pop	{ra,s0},16
  a2dcbe:	8302                	jr	t1
  a2dcc0:	4501                	li	a0,0
  a2dcc2:	8024                	popret	{ra,s0},16

00a2dcc4 <upg_free>:
  a2dcc4:	c51d                	beqz	a0,a2dcf2 <upg_free+0x2e>
  a2dcc6:	8038                	push	{ra,s0-s1},-16
  a2dcc8:	842a                	mv	s0,a0
  a2dcca:	f7aff0ef          	jal	ra,a2d444 <upg_get_flash_base_addr>
  a2dcce:	84aa                	mv	s1,a0
  a2dcd0:	f7aff0ef          	jal	ra,a2d44a <upg_get_flash_size>
  a2dcd4:	00946563          	bltu	s0,s1,a2dcde <upg_free+0x1a>
  a2dcd8:	94aa                	add	s1,s1,a0
  a2dcda:	00946b63          	bltu	s0,s1,a2dcf0 <upg_free+0x2c>
  a2dcde:	2389                	jal	ra,a2e220 <upg_get_func_list>
  a2dce0:	415c                	lw	a5,4(a0)
  a2dce2:	c799                	beqz	a5,a2dcf0 <upg_free+0x2c>
  a2dce4:	2b35                	jal	ra,a2e220 <upg_get_func_list>
  a2dce6:	00452303          	lw	t1,4(a0)
  a2dcea:	8522                	mv	a0,s0
  a2dcec:	8030                	pop	{ra,s0-s1},16
  a2dcee:	8302                	jr	t1
  a2dcf0:	8034                	popret	{ra,s0-s1},16
  a2dcf2:	8082                	ret

00a2dcf4 <upg_get_ctx>:
  a2dcf4:	00a0 5ad8 051f      	l.li	a0,0xa05ad8
  a2dcfa:	8082                	ret

00a2dcfc <upg_alloc_and_get_upgrade_flag>:
  a2dcfc:	8138                	push	{ra,s0-s1},-32
  a2dcfe:	84aa                	mv	s1,a0
  a2dd00:	0068                	addi	a0,sp,12
  a2dd02:	c602                	sw	zero,12(sp)
  a2dd04:	eb2ff0ef          	jal	ra,a2d3b6 <upg_get_upgrade_flag_flash_start_addr>
  a2dd08:	c909                	beqz	a0,a2dd1a <upg_alloc_and_get_upgrade_flag+0x1e>
  a2dd0a:	842a                	mv	s0,a0
  a2dd0c:	00a3 333c 051f      	l.li	a0,0xa3333c
  a2dd12:	bbefe0ef          	jal	ra,a2c0d0 <print_str>
  a2dd16:	8522                	mv	a0,s0
  a2dd18:	8134                	popret	{ra,s0-s1},32
  a2dd1a:	06c00513          	li	a0,108
  a2dd1e:	f8dff0ef          	jal	ra,a2dcaa <upg_malloc>
  a2dd22:	c088                	sw	a0,0(s1)
  a2dd24:	862a                	mv	a2,a0
  a2dd26:	e911                	bnez	a0,a2dd3a <upg_alloc_and_get_upgrade_flag+0x3e>
  a2dd28:	00a3 3370 051f      	l.li	a0,0xa33370
  a2dd2e:	80000437          	lui	s0,0x80000
  a2dd32:	b9efe0ef          	jal	ra,a2c0d0 <print_str>
  a2dd36:	0415                	addi	s0,s0,5 # 80000005 <_gp_+0x7f5cb77d>
  a2dd38:	bff9                	j	a2dd16 <upg_alloc_and_get_upgrade_flag+0x1a>
  a2dd3a:	4532                	lw	a0,12(sp)
  a2dd3c:	06c00593          	li	a1,108
  a2dd40:	f10ff0ef          	jal	ra,a2d450 <upg_flash_read>
  a2dd44:	842a                	mv	s0,a0
  a2dd46:	d961                	beqz	a0,a2dd16 <upg_alloc_and_get_upgrade_flag+0x1a>
  a2dd48:	00a3 33a8 051f      	l.li	a0,0xa333a8
  a2dd4e:	b82fe0ef          	jal	ra,a2c0d0 <print_str>
  a2dd52:	4088                	lw	a0,0(s1)
  a2dd54:	f71ff0ef          	jal	ra,a2dcc4 <upg_free>
  a2dd58:	0004a023          	sw	zero,0(s1) # fffff000 <_gp_+0xff5ca778>
  a2dd5c:	bf6d                	j	a2dd16 <upg_alloc_and_get_upgrade_flag+0x1a>

00a2dd5e <upg_get_image_info>:
  a2dd5e:	cd9d                	beqz	a1,a2dd9c <upg_get_image_info+0x3e>
  a2dd60:	8228                	push	{ra,s0},-48
  a2dd62:	842a                	mv	s0,a0
  a2dd64:	0868                	addi	a0,sp,28
  a2dd66:	c62e                	sw	a1,12(sp)
  a2dd68:	ce02                	sw	zero,28(sp)
  a2dd6a:	e1aff0ef          	jal	ra,a2d384 <upg_get_ids_map>
  a2dd6e:	45b2                	lw	a1,12(sp)
  a2dd70:	e509                	bnez	a0,a2dd7a <upg_get_image_info+0x1c>
  a2dd72:	8000 3002 051f      	l.li	a0,0x80003002
  a2dd78:	8224                	popret	{ra,s0},48
  a2dd7a:	47f2                	lw	a5,28(sp)
  a2dd7c:	dbfd                	beqz	a5,a2dd72 <upg_get_image_info+0x14>
  a2dd7e:	4701                	li	a4,0
  a2dd80:	86be                	mv	a3,a5
  a2dd82:	07a1                	addi	a5,a5,8
  a2dd84:	ff87a603          	lw	a2,-8(a5)
  a2dd88:	00c41663          	bne	s0,a2,a2dd94 <upg_get_image_info+0x36>
  a2dd8c:	22c8                	lbu	a0,4(a3)
  a2dd8e:	e9dff0ef          	jal	ra,a2dc2a <uapi_partition_get_info>
  a2dd92:	b7dd                	j	a2dd78 <upg_get_image_info+0x1a>
  a2dd94:	0705                	addi	a4,a4,1
  a2dd96:	fee515e3          	bne	a0,a4,a2dd80 <upg_get_image_info+0x22>
  a2dd9a:	bfe1                	j	a2dd72 <upg_get_image_info+0x14>
  a2dd9c:	8000 3002 051f      	l.li	a0,0x80003002
  a2dda2:	8082                	ret

00a2dda4 <upg_read_fota_pkg_data>:
  a2dda4:	8158                	push	{ra,s0-s3},-48
  a2dda6:	842a                	mv	s0,a0
  a2dda8:	89ae                	mv	s3,a1
  a2ddaa:	0028                	addi	a0,sp,8
  a2ddac:	006c                	addi	a1,sp,12
  a2ddae:	8932                	mv	s2,a2
  a2ddb0:	c402                	sw	zero,8(sp)
  a2ddb2:	c602                	sw	zero,12(sp)
  a2ddb4:	e44ff0ef          	jal	ra,a2d3f8 <upg_get_fota_partiton_area_addr>
  a2ddb8:	e51d                	bnez	a0,a2dde6 <upg_read_fota_pkg_data+0x42>
  a2ddba:	47b2                	lw	a5,12(sp)
  a2ddbc:	02f47663          	bgeu	s0,a5,a2dde8 <upg_read_fota_pkg_data+0x44>
  a2ddc0:	00092483          	lw	s1,0(s2) # fffff000 <_gp_+0xff5ca778>
  a2ddc4:	c095                	beqz	s1,a2dde8 <upg_read_fota_pkg_data+0x44>
  a2ddc6:	00848733          	add	a4,s1,s0
  a2ddca:	00e7f463          	bgeu	a5,a4,a2ddd2 <upg_read_fota_pkg_data+0x2e>
  a2ddce:	408784b3          	sub	s1,a5,s0
  a2ddd2:	4522                	lw	a0,8(sp)
  a2ddd4:	864e                	mv	a2,s3
  a2ddd6:	85a6                	mv	a1,s1
  a2ddd8:	9522                	add	a0,a0,s0
  a2ddda:	c42a                	sw	a0,8(sp)
  a2dddc:	e74ff0ef          	jal	ra,a2d450 <upg_flash_read>
  a2dde0:	e119                	bnez	a0,a2dde6 <upg_read_fota_pkg_data+0x42>
  a2dde2:	00992023          	sw	s1,0(s2)
  a2dde6:	8154                	popret	{ra,s0-s3},48
  a2dde8:	8000 3042 051f      	l.li	a0,0x80003042
  a2ddee:	bfe5                	j	a2dde6 <upg_read_fota_pkg_data+0x42>

00a2ddf0 <uapi_upg_get_storage_size>:
  a2ddf0:	8128                	push	{ra,s0},-32
  a2ddf2:	00a0 5ad8 079f      	l.li	a5,0xa05ad8
  a2ddf8:	239c                	lbu	a5,0(a5)
  a2ddfa:	4401                	li	s0,0
  a2ddfc:	cb99                	beqz	a5,a2de12 <uapi_upg_get_storage_size+0x22>
  a2ddfe:	006c                	addi	a1,sp,12
  a2de00:	0028                	addi	a0,sp,8
  a2de02:	c402                	sw	zero,8(sp)
  a2de04:	c602                	sw	zero,12(sp)
  a2de06:	df2ff0ef          	jal	ra,a2d3f8 <upg_get_fota_partiton_area_addr>
  a2de0a:	e501                	bnez	a0,a2de12 <uapi_upg_get_storage_size+0x22>
  a2de0c:	47b2                	lw	a5,12(sp)
  a2de0e:	7475                	lui	s0,0xffffd
  a2de10:	943e                	add	s0,s0,a5
  a2de12:	8522                	mv	a0,s0
  a2de14:	8124                	popret	{ra,s0},32

00a2de16 <upg_get_partition_info>:
  a2de16:	8138                	push	{ra,s0-s1},-32
  a2de18:	c202                	sw	zero,4(sp)
  a2de1a:	c402                	sw	zero,8(sp)
  a2de1c:	c602                	sw	zero,12(sp)
  a2de1e:	4b87 a52d 079f      	l.li	a5,0x4b87a52d
  a2de24:	84ae                	mv	s1,a1
  a2de26:	8432                	mv	s0,a2
  a2de28:	02f51163          	bne	a0,a5,a2de4a <upg_get_partition_info+0x34>
  a2de2c:	002007b7          	lui	a5,0x200
  a2de30:	c43e                	sw	a5,8(sp)
  a2de32:	78000793          	li	a5,1920
  a2de36:	c63e                	sw	a5,12(sp)
  a2de38:	00414783          	lbu	a5,4(sp)
  a2de3c:	ef81                	bnez	a5,a2de54 <upg_get_partition_info+0x3e>
  a2de3e:	47a2                	lw	a5,8(sp)
  a2de40:	c09c                	sw	a5,0(s1)
  a2de42:	47b2                	lw	a5,12(sp)
  a2de44:	c01c                	sw	a5,0(s0)
  a2de46:	4501                	li	a0,0
  a2de48:	a029                	j	a2de52 <upg_get_partition_info+0x3c>
  a2de4a:	004c                	addi	a1,sp,4
  a2de4c:	f13ff0ef          	jal	ra,a2dd5e <upg_get_image_info>
  a2de50:	d565                	beqz	a0,a2de38 <upg_get_partition_info+0x22>
  a2de52:	8134                	popret	{ra,s0-s1},32
  a2de54:	0004a023          	sw	zero,0(s1)
  a2de58:	f99ff0ef          	jal	ra,a2ddf0 <uapi_upg_get_storage_size>
  a2de5c:	c008                	sw	a0,0(s0)
  a2de5e:	b7e5                	j	a2de46 <upg_get_partition_info+0x30>

00a2de60 <upg_get_package_header>:
  a2de60:	8138                	push	{ra,s0-s1},-32
  a2de62:	84aa                	mv	s1,a0
  a2de64:	006c                	addi	a1,sp,12
  a2de66:	0028                	addi	a0,sp,8
  a2de68:	c402                	sw	zero,8(sp)
  a2de6a:	c602                	sw	zero,12(sp)
  a2de6c:	d8cff0ef          	jal	ra,a2d3f8 <upg_get_fota_partiton_area_addr>
  a2de70:	842a                	mv	s0,a0
  a2de72:	e511                	bnez	a0,a2de7e <upg_get_package_header+0x1e>
  a2de74:	dd0ff0ef          	jal	ra,a2d444 <upg_get_flash_base_addr>
  a2de78:	47a2                	lw	a5,8(sp)
  a2de7a:	953e                	add	a0,a0,a5
  a2de7c:	c088                	sw	a0,0(s1)
  a2de7e:	8522                	mv	a0,s0
  a2de80:	8134                	popret	{ra,s0-s1},32

00a2de82 <upg_get_pkg_image_hash_table>:
  a2de82:	8148                	push	{ra,s0-s2},-32
  a2de84:	12052403          	lw	s0,288(a0)
  a2de88:	892e                	mv	s2,a1
  a2de8a:	e019                	bnez	s0,a2de90 <upg_get_pkg_image_hash_table+0xe>
  a2de8c:	20000413          	li	s0,512
  a2de90:	006c                	addi	a1,sp,12
  a2de92:	0028                	addi	a0,sp,8
  a2de94:	c402                	sw	zero,8(sp)
  a2de96:	c602                	sw	zero,12(sp)
  a2de98:	d60ff0ef          	jal	ra,a2d3f8 <upg_get_fota_partiton_area_addr>
  a2de9c:	84aa                	mv	s1,a0
  a2de9e:	e911                	bnez	a0,a2deb2 <upg_get_pkg_image_hash_table+0x30>
  a2dea0:	47a2                	lw	a5,8(sp)
  a2dea2:	97a2                	add	a5,a5,s0
  a2dea4:	c43e                	sw	a5,8(sp)
  a2dea6:	d9eff0ef          	jal	ra,a2d444 <upg_get_flash_base_addr>
  a2deaa:	47a2                	lw	a5,8(sp)
  a2deac:	953e                	add	a0,a0,a5
  a2deae:	00a92023          	sw	a0,0(s2)
  a2deb2:	8526                	mv	a0,s1
  a2deb4:	8144                	popret	{ra,s0-s2},32

00a2deb6 <upg_get_pkg_image_header>:
  a2deb6:	8148                	push	{ra,s0-s2},-32
  a2deb8:	892a                	mv	s2,a0
  a2deba:	84ae                	mv	s1,a1
  a2debc:	0028                	addi	a0,sp,8
  a2debe:	006c                	addi	a1,sp,12
  a2dec0:	c402                	sw	zero,8(sp)
  a2dec2:	c602                	sw	zero,12(sp)
  a2dec4:	d34ff0ef          	jal	ra,a2d3f8 <upg_get_fota_partiton_area_addr>
  a2dec8:	842a                	mv	s0,a0
  a2deca:	e919                	bnez	a0,a2dee0 <upg_get_pkg_image_header+0x2a>
  a2decc:	47a2                	lw	a5,8(sp)
  a2dece:	00492703          	lw	a4,4(s2)
  a2ded2:	97ba                	add	a5,a5,a4
  a2ded4:	c43e                	sw	a5,8(sp)
  a2ded6:	d6eff0ef          	jal	ra,a2d444 <upg_get_flash_base_addr>
  a2deda:	47a2                	lw	a5,8(sp)
  a2dedc:	953e                	add	a0,a0,a5
  a2dede:	c088                	sw	a0,0(s1)
  a2dee0:	8522                	mv	a0,s0
  a2dee2:	8144                	popret	{ra,s0-s2},32

00a2dee4 <upg_get_pkg_image_data>:
  a2dee4:	8178                	push	{ra,s0-s5},-48
  a2dee6:	4544                	lw	s1,12(a0)
  a2dee8:	8aaa                	mv	s5,a0
  a2deea:	842e                	mv	s0,a1
  a2deec:	0028                	addi	a0,sp,8
  a2deee:	006c                	addi	a1,sp,12
  a2def0:	89b2                	mv	s3,a2
  a2def2:	8a36                	mv	s4,a3
  a2def4:	c402                	sw	zero,8(sp)
  a2def6:	c602                	sw	zero,12(sp)
  a2def8:	d00ff0ef          	jal	ra,a2d3f8 <upg_get_fota_partiton_area_addr>
  a2defc:	892a                	mv	s2,a0
  a2defe:	e121                	bnez	a0,a2df3e <upg_get_pkg_image_data+0x5a>
  a2df00:	00f48793          	addi	a5,s1,15
  a2df04:	9bc1                	andi	a5,a5,-16
  a2df06:	02f47e63          	bgeu	s0,a5,a2df42 <upg_get_pkg_image_data+0x5e>
  a2df0a:	020a0c63          	beqz	s4,a2df42 <upg_get_pkg_image_data+0x5e>
  a2df0e:	02098a63          	beqz	s3,a2df42 <upg_get_pkg_image_data+0x5e>
  a2df12:	0009a483          	lw	s1,0(s3) # fffff000 <_gp_+0xff5ca778>
  a2df16:	c495                	beqz	s1,a2df42 <upg_get_pkg_image_data+0x5e>
  a2df18:	00848733          	add	a4,s1,s0
  a2df1c:	00e7f463          	bgeu	a5,a4,a2df24 <upg_get_pkg_image_data+0x40>
  a2df20:	408784b3          	sub	s1,a5,s0
  a2df24:	47a2                	lw	a5,8(sp)
  a2df26:	008aa503          	lw	a0,8(s5)
  a2df2a:	953e                	add	a0,a0,a5
  a2df2c:	942a                	add	s0,s0,a0
  a2df2e:	c42a                	sw	a0,8(sp)
  a2df30:	d14ff0ef          	jal	ra,a2d444 <upg_get_flash_base_addr>
  a2df34:	9522                	add	a0,a0,s0
  a2df36:	00aa2023          	sw	a0,0(s4)
  a2df3a:	0099a023          	sw	s1,0(s3)
  a2df3e:	854a                	mv	a0,s2
  a2df40:	8174                	popret	{ra,s0-s5},48
  a2df42:	8000 3042 091f      	l.li	s2,0x80003042
  a2df48:	bfdd                	j	a2df3e <upg_get_pkg_image_data+0x5a>

00a2df4a <upg_copy_pkg_image_data>:
  a2df4a:	455c                	lw	a5,12(a0)
  a2df4c:	07bd                	addi	a5,a5,15 # 20000f <__heap_size+0x1e2a17>
  a2df4e:	9bc1                	andi	a5,a5,-16
  a2df50:	02f5fb63          	bgeu	a1,a5,a2df86 <upg_copy_pkg_image_data+0x3c>
  a2df54:	ca8d                	beqz	a3,a2df86 <upg_copy_pkg_image_data+0x3c>
  a2df56:	ca05                	beqz	a2,a2df86 <upg_copy_pkg_image_data+0x3c>
  a2df58:	00062803          	lw	a6,0(a2)
  a2df5c:	02080563          	beqz	a6,a2df86 <upg_copy_pkg_image_data+0x3c>
  a2df60:	8128                	push	{ra,s0},-32
  a2df62:	872e                	mv	a4,a1
  a2df64:	95c2                	add	a1,a1,a6
  a2df66:	00b7f463          	bgeu	a5,a1,a2df6e <upg_copy_pkg_image_data+0x24>
  a2df6a:	40e78833          	sub	a6,a5,a4
  a2df6e:	4508                	lw	a0,8(a0)
  a2df70:	8432                	mv	s0,a2
  a2df72:	85b6                	mv	a1,a3
  a2df74:	0070                	addi	a2,sp,12
  a2df76:	953a                	add	a0,a0,a4
  a2df78:	c642                	sw	a6,12(sp)
  a2df7a:	e2bff0ef          	jal	ra,a2dda4 <upg_read_fota_pkg_data>
  a2df7e:	e119                	bnez	a0,a2df84 <upg_copy_pkg_image_data+0x3a>
  a2df80:	47b2                	lw	a5,12(sp)
  a2df82:	c01c                	sw	a5,0(s0)
  a2df84:	8124                	popret	{ra,s0},32
  a2df86:	8000 3042 051f      	l.li	a0,0x80003042
  a2df8c:	8082                	ret

00a2df8e <upg_set_firmware_update_status>:
  a2df8e:	8168                	push	{ra,s0-s4},-48
  a2df90:	cb9e 063c 079f      	l.li	a5,0xcb9e063c
  a2df96:	02f59163          	bne	a1,a5,a2dfb8 <upg_set_firmware_update_status+0x2a>
  a2df9a:	04c50513          	addi	a0,a0,76
  a2df9e:	211c                	lbu	a5,0(a0)
  a2dfa0:	efb5                	bnez	a5,a2e01c <upg_set_firmware_update_status+0x8e>
  a2dfa2:	311c                	lbu	a5,1(a0)
  a2dfa4:	00150913          	addi	s2,a0,1
  a2dfa8:	ebe1                	bnez	a5,a2e078 <upg_set_firmware_update_status+0xea>
  a2dfaa:	213c                	lbu	a5,2(a0)
  a2dfac:	00250913          	addi	s2,a0,2
  a2dfb0:	e7f1                	bnez	a5,a2e07c <upg_set_firmware_update_status+0xee>
  a2dfb2:	4401                	li	s0,0
  a2dfb4:	8522                	mv	a0,s0
  a2dfb6:	8164                	popret	{ra,s0-s4},48
  a2dfb8:	02b5555b          	muliadd	a0,a0,a1,3
  a2dfbc:	0541                	addi	a0,a0,16
  a2dfbe:	b7c5                	j	a2df9e <upg_set_firmware_update_status+0x10>
  a2dfc0:	0441                	addi	s0,s0,16 # ffffd010 <_gp_+0xff5c8788>
  a2dfc2:	029455db          	muliadd	a1,s0,s1,3
  a2dfc6:	00b98433          	add	s0,s3,a1
  a2dfca:	a8a5                	j	a2e042 <upg_set_firmware_update_status+0xb4>
  a2dfcc:	010a14bb          	bnei	s4,1,a2dfde <upg_set_firmware_update_status+0x50>
  a2dfd0:	00094783          	lbu	a5,0(s2)
  a2dfd4:	0ff797bb          	bnei	a5,15,a2dfb2 <upg_set_firmware_update_status+0x24>
  a2dfd8:	00090023          	sb	zero,0(s2)
  a2dfdc:	a8b5                	j	a2e058 <upg_set_firmware_update_status+0xca>
  a2dfde:	02fa153b          	bnei	s4,2,a2dfb2 <upg_set_firmware_update_status+0x24>
  a2dfe2:	448d                	li	s1,3
  a2dfe4:	413484b3          	sub	s1,s1,s3
  a2dfe8:	86a6                	mv	a3,s1
  a2dfea:	4601                	li	a2,0
  a2dfec:	85a6                	mv	a1,s1
  a2dfee:	854a                	mv	a0,s2
  a2dff0:	273020ef          	jal	ra,a30a62 <memset_s>
  a2dff4:	a09d                	j	a2e05a <upg_set_firmware_update_status+0xcc>
  a2dff6:	02e99f3b          	bnei	s3,2,a2dfb2 <upg_set_firmware_update_status+0x24>
  a2dffa:	00094783          	lbu	a5,0(s2)
  a2dffe:	fbd5                	bnez	a5,a2dfb2 <upg_set_firmware_update_status+0x24>
  a2e000:	00a3 345c 051f      	l.li	a0,0xa3345c
  a2e006:	8cafe0ef          	jal	ra,a2c0d0 <print_str>
  a2e00a:	00a0 5ad8 079f      	l.li	a5,0xa05ad8
  a2e010:	4735                	li	a4,13
  a2e012:	b3d8                	sb	a4,5(a5)
  a2e014:	8000 3067 041f      	l.li	s0,0x80003067
  a2e01a:	bf69                	j	a2dfb4 <upg_set_firmware_update_status+0x26>
  a2e01c:	892a                	mv	s2,a0
  a2e01e:	4981                	li	s3,0
  a2e020:	0068                	addi	a0,sp,12
  a2e022:	8a32                	mv	s4,a2
  a2e024:	84ae                	mv	s1,a1
  a2e026:	c602                	sw	zero,12(sp)
  a2e028:	b8eff0ef          	jal	ra,a2d3b6 <upg_get_upgrade_flag_flash_start_addr>
  a2e02c:	842a                	mv	s0,a0
  a2e02e:	f159                	bnez	a0,a2dfb4 <upg_set_firmware_update_status+0x26>
  a2e030:	cb9e 063c 079f      	l.li	a5,0xcb9e063c
  a2e036:	4432                	lw	s0,12(sp)
  a2e038:	f8f494e3          	bne	s1,a5,a2dfc0 <upg_set_firmware_update_status+0x32>
  a2e03c:	04c40413          	addi	s0,s0,76
  a2e040:	944e                	add	s0,s0,s3
  a2e042:	f80a15e3          	bnez	s4,a2dfcc <upg_set_firmware_update_status+0x3e>
  a2e046:	00094703          	lbu	a4,0(s2)
  a2e04a:	0ff00793          	li	a5,255
  a2e04e:	f6f712e3          	bne	a4,a5,a2dfb2 <upg_set_firmware_update_status+0x24>
  a2e052:	47bd                	li	a5,15
  a2e054:	00f90023          	sb	a5,0(s2)
  a2e058:	4485                	li	s1,1
  a2e05a:	8522                	mv	a0,s0
  a2e05c:	4681                	li	a3,0
  a2e05e:	864a                	mv	a2,s2
  a2e060:	85a6                	mv	a1,s1
  a2e062:	cb2ff0ef          	jal	ra,a2d514 <upg_flash_write>
  a2e066:	842a                	mv	s0,a0
  a2e068:	d559                	beqz	a0,a2dff6 <upg_set_firmware_update_status+0x68>
  a2e06a:	85aa                	mv	a1,a0
  a2e06c:	00a3 3424 051f      	l.li	a0,0xa33424
  a2e072:	85efe0ef          	jal	ra,a2c0d0 <print_str>
  a2e076:	bf3d                	j	a2dfb4 <upg_set_firmware_update_status+0x26>
  a2e078:	4985                	li	s3,1
  a2e07a:	b75d                	j	a2e020 <upg_set_firmware_update_status+0x92>
  a2e07c:	4989                	li	s3,2
  a2e07e:	b74d                	j	a2e020 <upg_set_firmware_update_status+0x92>

00a2e080 <upg_get_image_update_status>:
  a2e080:	8128                	push	{ra,s0},-32
  a2e082:	00a3 1c88 079f      	l.li	a5,0xa31c88
  a2e088:	239a                	lhu	a4,0(a5)
  a2e08a:	23bc                	lbu	a5,2(a5)
  a2e08c:	00011423          	sh	zero,8(sp)
  a2e090:	00010523          	sb	zero,10(sp)
  a2e094:	00f10723          	sb	a5,14(sp)
  a2e098:	00e11623          	sh	a4,12(sp)
  a2e09c:	cb9e 063c 079f      	l.li	a5,0xcb9e063c
  a2e0a2:	04c50413          	addi	s0,a0,76
  a2e0a6:	00f60563          	beq	a2,a5,a2e0b0 <upg_get_image_update_status+0x30>
  a2e0aa:	02b5545b          	muliadd	s0,a0,a1,3
  a2e0ae:	0441                	addi	s0,s0,16
  a2e0b0:	460d                	li	a2,3
  a2e0b2:	002c                	addi	a1,sp,8
  a2e0b4:	8522                	mv	a0,s0
  a2e0b6:	c39fa0ef          	jal	ra,a28cee <memcmp>
  a2e0ba:	478d                	li	a5,3
  a2e0bc:	cd0d                	beqz	a0,a2e0f6 <upg_get_image_update_status+0x76>
  a2e0be:	460d                	li	a2,3
  a2e0c0:	006c                	addi	a1,sp,12
  a2e0c2:	8522                	mv	a0,s0
  a2e0c4:	c2bfa0ef          	jal	ra,a28cee <memcmp>
  a2e0c8:	4781                	li	a5,0
  a2e0ca:	c515                	beqz	a0,a2e0f6 <upg_get_image_update_status+0x76>
  a2e0cc:	201c                	lbu	a5,0(s0)
  a2e0ce:	4501                	li	a0,0
  a2e0d0:	eb81                	bnez	a5,a2e0e0 <upg_get_image_update_status+0x60>
  a2e0d2:	301c                	lbu	a5,1(s0)
  a2e0d4:	4505                	li	a0,1
  a2e0d6:	e789                	bnez	a5,a2e0e0 <upg_get_image_update_status+0x60>
  a2e0d8:	2028                	lbu	a0,2(s0)
  a2e0da:	00153513          	seqz	a0,a0
  a2e0de:	0509                	addi	a0,a0,2
  a2e0e0:	942a                	add	s0,s0,a0
  a2e0e2:	2018                	lbu	a4,0(s0)
  a2e0e4:	4785                	li	a5,1
  a2e0e6:	0f07043b          	beqi	a4,15,a2e0f6 <upg_get_image_update_status+0x76>
  a2e0ea:	0ff00693          	li	a3,255
  a2e0ee:	4789                	li	a5,2
  a2e0f0:	00d70363          	beq	a4,a3,a2e0f6 <upg_get_image_update_status+0x76>
  a2e0f4:	4791                	li	a5,4
  a2e0f6:	853e                	mv	a0,a5
  a2e0f8:	8124                	popret	{ra,s0},32

00a2e0fa <upg_flash_erase_metadata_pages>:
  a2e0fa:	4501                	li	a0,0
  a2e0fc:	8082                	ret

00a2e0fe <upg_set_temporary_result>:
  a2e0fe:	00a0 5ad8 079f      	l.li	a5,0xa05ad8
  a2e104:	b3c8                	sb	a0,5(a5)
  a2e106:	8082                	ret

00a2e108 <upg_set_update_result>:
  a2e108:	8118                	push	{ra},-32
  a2e10a:	c62a                	sw	a0,12(sp)
  a2e10c:	0028                	addi	a0,sp,8
  a2e10e:	c402                	sw	zero,8(sp)
  a2e110:	aa6ff0ef          	jal	ra,a2d3b6 <upg_get_upgrade_flag_flash_start_addr>
  a2e114:	e909                	bnez	a0,a2e126 <upg_set_update_result+0x1e>
  a2e116:	4522                	lw	a0,8(sp)
  a2e118:	4681                	li	a3,0
  a2e11a:	0070                	addi	a2,sp,12
  a2e11c:	4591                	li	a1,4
  a2e11e:	05050513          	addi	a0,a0,80
  a2e122:	bf2ff0ef          	jal	ra,a2d514 <upg_flash_write>
  a2e126:	8114                	popret	{ra},32

00a2e128 <upg_check_image_update_complete>:
  a2e128:	8158                	push	{ra,s0-s3},-48
  a2e12a:	842a                	mv	s0,a0
  a2e12c:	89ae                	mv	s3,a1
  a2e12e:	00011623          	sh	zero,12(sp)
  a2e132:	00010723          	sb	zero,14(sp)
  a2e136:	01050913          	addi	s2,a0,16
  a2e13a:	4481                	li	s1,0
  a2e13c:	445c                	lw	a5,12(s0)
  a2e13e:	00f4ea63          	bltu	s1,a5,a2e152 <upg_check_image_update_complete+0x2a>
  a2e142:	4505                	li	a0,1
  a2e144:	01378f63          	beq	a5,s3,a2e162 <upg_check_image_update_complete+0x3a>
  a2e148:	04c44783          	lbu	a5,76(s0)
  a2e14c:	0f07953b          	bnei	a5,15,a2e160 <upg_check_image_update_complete+0x38>
  a2e150:	a809                	j	a2e162 <upg_check_image_update_complete+0x3a>
  a2e152:	854a                	mv	a0,s2
  a2e154:	460d                	li	a2,3
  a2e156:	006c                	addi	a1,sp,12
  a2e158:	b97fa0ef          	jal	ra,a28cee <memcmp>
  a2e15c:	090d                	addi	s2,s2,3
  a2e15e:	c119                	beqz	a0,a2e164 <upg_check_image_update_complete+0x3c>
  a2e160:	4501                	li	a0,0
  a2e162:	8154                	popret	{ra,s0-s3},48
  a2e164:	0485                	addi	s1,s1,1
  a2e166:	bfd9                	j	a2e13c <upg_check_image_update_complete+0x14>

00a2e168 <upg_set_complete_flag>:
  a2e168:	8848                	push	{ra,s0-s2},-144
  a2e16a:	84aa                	mv	s1,a0
  a2e16c:	0068                	addi	a0,sp,12
  a2e16e:	842e                	mv	s0,a1
  a2e170:	8932                	mv	s2,a2
  a2e172:	c602                	sw	zero,12(sp)
  a2e174:	a42ff0ef          	jal	ra,a2d3b6 <upg_get_upgrade_flag_flash_start_addr>
  a2e178:	ed09                	bnez	a0,a2e192 <upg_set_complete_flag+0x2a>
  a2e17a:	4532                	lw	a0,12(sp)
  a2e17c:	0850                	addi	a2,sp,20
  a2e17e:	06c00593          	li	a1,108
  a2e182:	aceff0ef          	jal	ra,a2d450 <upg_flash_read>
  a2e186:	c519                	beqz	a0,a2e194 <upg_set_complete_flag+0x2c>
  a2e188:	00a3 33e0 051f      	l.li	a0,0xa333e0
  a2e18e:	f43fd0ef          	jal	ra,a2c0d0 <print_str>
  a2e192:	8844                	popret	{ra,s0-s2},144
  a2e194:	00090c63          	beqz	s2,a2e1ac <upg_set_complete_flag+0x44>
  a2e198:	57e6                	lw	a5,120(sp)
  a2e19a:	cb89                	beqz	a5,a2e1ac <upg_set_complete_flag+0x44>
  a2e19c:	00a0 5ad8 079f      	l.li	a5,0xa05ad8
  a2e1a2:	33c8                	lbu	a0,5(a5)
  a2e1a4:	f65ff0ef          	jal	ra,a2e108 <upg_set_update_result>
  a2e1a8:	4581                	li	a1,0
  a2e1aa:	a821                	j	a2e1c2 <upg_set_complete_flag+0x5a>
  a2e1ac:	85a6                	mv	a1,s1
  a2e1ae:	0848                	addi	a0,sp,20
  a2e1b0:	f79ff0ef          	jal	ra,a2e128 <upg_check_image_update_complete>
  a2e1b4:	e81d                	bnez	s0,a2e1ea <upg_set_complete_flag+0x82>
  a2e1b6:	e91d                	bnez	a0,a2e1ec <upg_set_complete_flag+0x84>
  a2e1b8:	57e6                	lw	a5,120(sp)
  a2e1ba:	65c1                	lui	a1,0x10
  a2e1bc:	15fd                	addi	a1,a1,-1 # ffff <ccause+0xf03d>
  a2e1be:	04b78d63          	beq	a5,a1,a2e218 <upg_set_complete_flag+0xb0>
  a2e1c2:	c82e                	sw	a1,16(sp)
  a2e1c4:	5a5a 5a5a 079f      	l.li	a5,0x5a5a5a5a
  a2e1ca:	4432                	lw	s0,12(sp)
  a2e1cc:	fcf583e3          	beq	a1,a5,a2e192 <upg_set_complete_flag+0x2a>
  a2e1d0:	00a3 3404 051f      	l.li	a0,0xa33404
  a2e1d6:	efbfd0ef          	jal	ra,a2c0d0 <print_str>
  a2e1da:	4681                	li	a3,0
  a2e1dc:	0810                	addi	a2,sp,16
  a2e1de:	4591                	li	a1,4
  a2e1e0:	06440513          	addi	a0,s0,100
  a2e1e4:	b30ff0ef          	jal	ra,a2d514 <upg_flash_write>
  a2e1e8:	b76d                	j	a2e192 <upg_set_complete_flag+0x2a>
  a2e1ea:	c911                	beqz	a0,a2e1fe <upg_set_complete_flag+0x96>
  a2e1ec:	57e6                	lw	a5,120(sp)
  a2e1ee:	cb81                	beqz	a5,a2e1fe <upg_set_complete_flag+0x96>
  a2e1f0:	00a0 5ad8 079f      	l.li	a5,0xa05ad8
  a2e1f6:	f455                	bnez	s0,a2e1a2 <upg_set_complete_flag+0x3a>
  a2e1f8:	000782a3          	sb	zero,5(a5)
  a2e1fc:	b75d                	j	a2e1a2 <upg_set_complete_flag+0x3a>
  a2e1fe:	00a0 5ad8 079f      	l.li	a5,0xa05ad8
  a2e204:	33dc                	lbu	a5,5(a5)
  a2e206:	5a5a 5a5a 059f      	l.li	a1,0x5a5a5a5a
  a2e20c:	0de79dbb          	bnei	a5,13,a2e1c2 <upg_set_complete_flag+0x5a>
  a2e210:	57e6                	lw	a5,120(sp)
  a2e212:	dbc5                	beqz	a5,a2e1c2 <upg_set_complete_flag+0x5a>
  a2e214:	4535                	li	a0,13
  a2e216:	b779                	j	a2e1a4 <upg_set_complete_flag+0x3c>
  a2e218:	5a5a 5a5a 059f      	l.li	a1,0x5a5a5a5a
  a2e21e:	b755                	j	a2e1c2 <upg_set_complete_flag+0x5a>

00a2e220 <upg_get_func_list>:
  a2e220:	00a0 5ad8 051f      	l.li	a0,0xa05ad8
  a2e226:	0521                	addi	a0,a0,8
  a2e228:	8082                	ret

00a2e22a <upg_is_inited>:
  a2e22a:	00a0 5ad8 079f      	l.li	a5,0xa05ad8
  a2e230:	2388                	lbu	a0,0(a5)
  a2e232:	8082                	ret

00a2e234 <uapi_upg_init>:
  a2e234:	8138                	push	{ra,s0-s1},-32
  a2e236:	00a06437          	lui	s0,0xa06
  a2e23a:	ad844783          	lbu	a5,-1320(s0) # a05ad8 <g_upg_ctx>
  a2e23e:	e7c9                	bnez	a5,a2e2c8 <uapi_upg_init+0x94>
  a2e240:	ad840413          	addi	s0,s0,-1320
  a2e244:	c519                	beqz	a0,a2e252 <uapi_upg_init+0x1e>
  a2e246:	411c                	lw	a5,0(a0)
  a2e248:	c41c                	sw	a5,8(s0)
  a2e24a:	415c                	lw	a5,4(a0)
  a2e24c:	c45c                	sw	a5,12(s0)
  a2e24e:	451c                	lw	a5,8(a0)
  a2e250:	c81c                	sw	a5,16(s0)
  a2e252:	47b9                	li	a5,14
  a2e254:	b05c                	sb	a5,5(s0)
  a2e256:	0068                	addi	a0,sp,12
  a2e258:	4785                	li	a5,1
  a2e25a:	00042a23          	sw	zero,20(s0)
  a2e25e:	a01c                	sb	a5,0(s0)
  a2e260:	000103a3          	sb	zero,7(sp)
  a2e264:	c402                	sw	zero,8(sp)
  a2e266:	c602                	sw	zero,12(sp)
  a2e268:	a95ff0ef          	jal	ra,a2dcfc <upg_alloc_and_get_upgrade_flag>
  a2e26c:	448d                	li	s1,3
  a2e26e:	e931                	bnez	a0,a2e2c2 <uapi_upg_init+0x8e>
  a2e270:	47b2                	lw	a5,12(sp)
  a2e272:	55aa 55aa 071f      	l.li	a4,0x55aa55aa
  a2e278:	4394                	lw	a3,0(a5)
  a2e27a:	04e69063          	bne	a3,a4,a2e2ba <uapi_upg_init+0x86>
  a2e27e:	57b4                	lw	a3,104(a5)
  a2e280:	aa55 aa55 071f      	l.li	a4,0xaa55aa55
  a2e286:	02e69a63          	bne	a3,a4,a2e2ba <uapi_upg_init+0x86>
  a2e28a:	53f8                	lw	a4,100(a5)
  a2e28c:	4489                	li	s1,2
  a2e28e:	e71d                	bnez	a4,a2e2bc <uapi_upg_init+0x88>
  a2e290:	04f7c703          	lbu	a4,79(a5)
  a2e294:	c31d                	beqz	a4,a2e2ba <uapi_upg_init+0x86>
  a2e296:	0028                	addi	a0,sp,8
  a2e298:	4ba4                	lw	s1,80(a5)
  a2e29a:	91cff0ef          	jal	ra,a2d3b6 <upg_get_upgrade_flag_flash_start_addr>
  a2e29e:	ed11                	bnez	a0,a2e2ba <uapi_upg_init+0x86>
  a2e2a0:	4522                	lw	a0,8(sp)
  a2e2a2:	4681                	li	a3,0
  a2e2a4:	00710613          	addi	a2,sp,7
  a2e2a8:	04f50513          	addi	a0,a0,79
  a2e2ac:	4585                	li	a1,1
  a2e2ae:	c42a                	sw	a0,8(sp)
  a2e2b0:	a64ff0ef          	jal	ra,a2d514 <upg_flash_write>
  a2e2b4:	009034b3          	snez	s1,s1
  a2e2b8:	c111                	beqz	a0,a2e2bc <uapi_upg_init+0x88>
  a2e2ba:	448d                	li	s1,3
  a2e2bc:	4532                	lw	a0,12(sp)
  a2e2be:	a07ff0ef          	jal	ra,a2dcc4 <upg_free>
  a2e2c2:	a044                	sb	s1,4(s0)
  a2e2c4:	4501                	li	a0,0
  a2e2c6:	8134                	popret	{ra,s0-s1},32
  a2e2c8:	8000 3041 051f      	l.li	a0,0x80003041
  a2e2ce:	bfe5                	j	a2e2c6 <uapi_upg_init+0x92>

00a2e2d0 <hash_operation.isra.1.constprop.11>:
  a2e2d0:	8028                	push	{ra,s0},-16
  a2e2d2:	4108                	lw	a0,0(a0)
  a2e2d4:	02000693          	li	a3,32
  a2e2d8:	ee7fb0ef          	jal	ra,a2a1be <drv_rom_cipher_sha256>
  a2e2dc:	842a                	mv	s0,a0
  a2e2de:	c519                	beqz	a0,a2e2ec <hash_operation.isra.1.constprop.11+0x1c>
  a2e2e0:	85aa                	mv	a1,a0
  a2e2e2:	00a3 347c 051f      	l.li	a0,0xa3347c
  a2e2e8:	de9fd0ef          	jal	ra,a2c0d0 <print_str>
  a2e2ec:	8522                	mv	a0,s0
  a2e2ee:	8024                	popret	{ra,s0},16

00a2e2f0 <verify_hash_cmp>:
  a2e2f0:	8018                	push	{ra},-16
  a2e2f2:	9fdfa0ef          	jal	ra,a28cee <memcmp>
  a2e2f6:	c901                	beqz	a0,a2e306 <verify_hash_cmp+0x16>
  a2e2f8:	00a3 37a0 051f      	l.li	a0,0xa337a0
  a2e2fe:	dd3fd0ef          	jal	ra,a2c0d0 <print_str>
  a2e302:	557d                	li	a0,-1
  a2e304:	8014                	popret	{ra},16
  a2e306:	4501                	li	a0,0
  a2e308:	bff5                	j	a2e304 <verify_hash_cmp+0x14>

00a2e30a <upg_verify_hash>:
  a2e30a:	8548                	push	{ra,s0-s2},-96
  a2e30c:	892a                	mv	s2,a0
  a2e30e:	84ae                	mv	s1,a1
  a2e310:	8432                	mv	s0,a2
  a2e312:	4581                	li	a1,0
  a2e314:	02000613          	li	a2,32
  a2e318:	1808                	addi	a0,sp,48
  a2e31a:	c636                	sw	a3,12(sp)
  a2e31c:	e88fa0ef          	jal	ra,a289a4 <memset>
  a2e320:	4785                	li	a5,1
  a2e322:	1810                	addi	a2,sp,48
  a2e324:	85a6                	mv	a1,s1
  a2e326:	1028                	addi	a0,sp,40
  a2e328:	d44a                	sw	s2,40(sp)
  a2e32a:	02f10623          	sb	a5,44(sp)
  a2e32e:	fa3ff0ef          	jal	ra,a2e2d0 <hash_operation.isra.1.constprop.11>
  a2e332:	46b2                	lw	a3,12(sp)
  a2e334:	c909                	beqz	a0,a2e346 <upg_verify_hash+0x3c>
  a2e336:	85aa                	mv	a1,a0
  a2e338:	00a3 370c 051f      	l.li	a0,0xa3370c
  a2e33e:	d93fd0ef          	jal	ra,a2c0d0 <print_str>
  a2e342:	557d                	li	a0,-1
  a2e344:	8544                	popret	{ra,s0-s2},96
  a2e346:	8636                	mv	a2,a3
  a2e348:	180c                	addi	a1,sp,48
  a2e34a:	8522                	mv	a0,s0
  a2e34c:	fa5ff0ef          	jal	ra,a2e2f0 <verify_hash_cmp>
  a2e350:	d975                	beqz	a0,a2e344 <upg_verify_hash+0x3a>
  a2e352:	00a3 37a0 051f      	l.li	a0,0xa337a0
  a2e358:	d79fd0ef          	jal	ra,a2c0d0 <print_str>
  a2e35c:	b7dd                	j	a2e342 <upg_verify_hash+0x38>

00a2e35e <secure_authenticate>:
  a2e35e:	8748                	push	{ra,s0-s2},-128
  a2e360:	57fd                	li	a5,-1
  a2e362:	c63e                	sw	a5,12(sp)
  a2e364:	c149                	beqz	a0,a2e3e6 <secure_authenticate+0x88>
  a2e366:	c5bd                	beqz	a1,a2e3d4 <secure_authenticate+0x76>
  a2e368:	c635                	beqz	a2,a2e3d4 <secure_authenticate+0x76>
  a2e36a:	0884                	addi	s1,sp,80
  a2e36c:	cc2a                	sw	a0,24(sp)
  a2e36e:	d232                	sw	a2,36(sp)
  a2e370:	02050513          	addi	a0,a0,32
  a2e374:	02060613          	addi	a2,a2,32
  a2e378:	842e                	mv	s0,a1
  a2e37a:	02000913          	li	s2,32
  a2e37e:	ce2a                	sw	a0,28(sp)
  a2e380:	d432                	sw	a2,40(sp)
  a2e382:	02000693          	li	a3,32
  a2e386:	05a00613          	li	a2,90
  a2e38a:	02000593          	li	a1,32
  a2e38e:	8526                	mv	a0,s1
  a2e390:	d04a                	sw	s2,32(sp)
  a2e392:	d64a                	sw	s2,44(sp)
  a2e394:	6ce020ef          	jal	ra,a30a62 <memset_s>
  a2e398:	405c                	lw	a5,4(s0)
  a2e39a:	400c                	lw	a1,0(s0)
  a2e39c:	8626                	mv	a2,s1
  a2e39e:	c4be                	sw	a5,72(sp)
  a2e3a0:	00a8                	addi	a0,sp,72
  a2e3a2:	4785                	li	a5,1
  a2e3a4:	ca26                	sw	s1,20(sp)
  a2e3a6:	c84a                	sw	s2,16(sp)
  a2e3a8:	04f10623          	sb	a5,76(sp)
  a2e3ac:	f25ff0ef          	jal	ra,a2e2d0 <hash_operation.isra.1.constprop.11>
  a2e3b0:	842a                	mv	s0,a0
  a2e3b2:	c11d                	beqz	a0,a2e3d8 <secure_authenticate+0x7a>
  a2e3b4:	85aa                	mv	a1,a0
  a2e3b6:	00a3 34bc 051f      	l.li	a0,0xa334bc
  a2e3bc:	d15fd0ef          	jal	ra,a2c0d0 <print_str>
  a2e3c0:	c622                	sw	s0,12(sp)
  a2e3c2:	47b2                	lw	a5,12(sp)
  a2e3c4:	c799                	beqz	a5,a2e3d2 <secure_authenticate+0x74>
  a2e3c6:	45b2                	lw	a1,12(sp)
  a2e3c8:	00a3 34e0 051f      	l.li	a0,0xa334e0
  a2e3ce:	d03fd0ef          	jal	ra,a2c0d0 <print_str>
  a2e3d2:	47b2                	lw	a5,12(sp)
  a2e3d4:	853e                	mv	a0,a5
  a2e3d6:	8744                	popret	{ra,s0-s2},128
  a2e3d8:	1050                	addi	a2,sp,36
  a2e3da:	080c                	addi	a1,sp,16
  a2e3dc:	0828                	addi	a0,sp,24
  a2e3de:	dd9fb0ef          	jal	ra,a2a1b6 <drv_rom_cipher_pke_bp256r_verify>
  a2e3e2:	842a                	mv	s0,a0
  a2e3e4:	bff1                	j	a2e3c0 <secure_authenticate+0x62>
  a2e3e6:	57fd                	li	a5,-1
  a2e3e8:	b7f5                	j	a2e3d4 <secure_authenticate+0x76>

00a2e3ea <verify_fota_info.isra.4>:
  a2e3ea:	8238                	push	{ra,s0-s1},-48
  a2e3ec:	455c                	lw	a5,12(a0)
  a2e3ee:	842a                	mv	s0,a0
  a2e3f0:	0c050613          	addi	a2,a0,192
  a2e3f4:	200798bb          	bnei	a5,32,a2e416 <verify_fota_info.isra.4+0x2c>
  a2e3f8:	00a3 3748 051f      	l.li	a0,0xa33748
  a2e3fe:	c632                	sw	a2,12(sp)
  a2e400:	cd1fd0ef          	jal	ra,a2c0d0 <print_str>
  a2e404:	4632                	lw	a2,12(sp)
  a2e406:	02000693          	li	a3,32
  a2e40a:	0c000593          	li	a1,192
  a2e40e:	8522                	mv	a0,s0
  a2e410:	efbff0ef          	jal	ra,a2e30a <upg_verify_hash>
  a2e414:	8234                	popret	{ra,s0-s1},48
  a2e416:	00a3 3774 051f      	l.li	a0,0xa33774
  a2e41c:	84ae                	mv	s1,a1
  a2e41e:	c632                	sw	a2,12(sp)
  a2e420:	cb1fd0ef          	jal	ra,a2c0d0 <print_str>
  a2e424:	4632                	lw	a2,12(sp)
  a2e426:	0c000793          	li	a5,192
  a2e42a:	082c                	addi	a1,sp,24
  a2e42c:	8526                	mv	a0,s1
  a2e42e:	ce22                	sw	s0,28(sp)
  a2e430:	cc3e                	sw	a5,24(sp)
  a2e432:	f2dff0ef          	jal	ra,a2e35e <secure_authenticate>
  a2e436:	bff9                	j	a2e414 <verify_fota_info.isra.4+0x2a>

00a2e438 <uapi_upg_verify_file_head>:
  a2e438:	8238                	push	{ra,s0-s1},-48
  a2e43a:	84aa                	mv	s1,a0
  a2e43c:	defff0ef          	jal	ra,a2e22a <upg_is_inited>
  a2e440:	c169                	beqz	a0,a2e502 <uapi_upg_verify_file_head+0xca>
  a2e442:	902ff0ef          	jal	ra,a2d544 <upg_get_root_public_key>
  a2e446:	c171                	beqz	a0,a2e50a <uapi_upg_verify_file_head+0xd2>
  a2e448:	409c                	lw	a5,0(s1)
  a2e44a:	cb8d 154e 071f      	l.li	a4,0xcb8d154e
  a2e450:	04e79263          	bne	a5,a4,a2e494 <uapi_upg_verify_file_head+0x5c>
  a2e454:	1004a703          	lw	a4,256(s1)
  a2e458:	02f71e63          	bne	a4,a5,a2e494 <uapi_upg_verify_file_head+0x5c>
  a2e45c:	44dc                	lw	a5,12(s1)
  a2e45e:	0c048613          	addi	a2,s1,192
  a2e462:	201790bb          	bnei	a5,32,a2e4a4 <uapi_upg_verify_file_head+0x6c>
  a2e466:	00a3 35cc 051f      	l.li	a0,0xa335cc
  a2e46c:	c632                	sw	a2,12(sp)
  a2e46e:	c63fd0ef          	jal	ra,a2c0d0 <print_str>
  a2e472:	4632                	lw	a2,12(sp)
  a2e474:	02000693          	li	a3,32
  a2e478:	0c000593          	li	a1,192
  a2e47c:	8526                	mv	a0,s1
  a2e47e:	e8dff0ef          	jal	ra,a2e30a <upg_verify_hash>
  a2e482:	842a                	mv	s0,a0
  a2e484:	c905                	beqz	a0,a2e4b4 <uapi_upg_verify_file_head+0x7c>
  a2e486:	85aa                	mv	a1,a0
  a2e488:	00a3 35fc 051f      	l.li	a0,0xa335fc
  a2e48e:	c43fd0ef          	jal	ra,a2c0d0 <print_str>
  a2e492:	a039                	j	a2e4a0 <uapi_upg_verify_file_head+0x68>
  a2e494:	00a3 35a8 051f      	l.li	a0,0xa335a8
  a2e49a:	c37fd0ef          	jal	ra,a2c0d0 <print_str>
  a2e49e:	547d                	li	s0,-1
  a2e4a0:	8522                	mv	a0,s0
  a2e4a2:	8234                	popret	{ra,s0-s1},48
  a2e4a4:	0c000793          	li	a5,192
  a2e4a8:	082c                	addi	a1,sp,24
  a2e4aa:	ce26                	sw	s1,28(sp)
  a2e4ac:	cc3e                	sw	a5,24(sp)
  a2e4ae:	eb1ff0ef          	jal	ra,a2e35e <secure_authenticate>
  a2e4b2:	bfc1                	j	a2e482 <uapi_upg_verify_file_head+0x4a>
  a2e4b4:	08048593          	addi	a1,s1,128
  a2e4b8:	10048513          	addi	a0,s1,256
  a2e4bc:	f2fff0ef          	jal	ra,a2e3ea <verify_fota_info.isra.4>
  a2e4c0:	842a                	mv	s0,a0
  a2e4c2:	c511                	beqz	a0,a2e4ce <uapi_upg_verify_file_head+0x96>
  a2e4c4:	85aa                	mv	a1,a0
  a2e4c6:	00a3 362c 051f      	l.li	a0,0xa3362c
  a2e4cc:	b7c9                	j	a2e48e <uapi_upg_verify_file_head+0x56>
  a2e4ce:	8526                	mv	a0,s1
  a2e4d0:	892ff0ef          	jal	ra,a2d562 <upg_check_fota_information>
  a2e4d4:	842a                	mv	s0,a0
  a2e4d6:	c511                	beqz	a0,a2e4e2 <uapi_upg_verify_file_head+0xaa>
  a2e4d8:	85aa                	mv	a1,a0
  a2e4da:	00a3 365c 051f      	l.li	a0,0xa3365c
  a2e4e0:	b77d                	j	a2e48e <uapi_upg_verify_file_head+0x56>
  a2e4e2:	00a0 5afc 079f      	l.li	a5,0xa05afc
  a2e4e8:	439c                	lw	a5,0(a5)
  a2e4ea:	dbdd                	beqz	a5,a2e4a0 <uapi_upg_verify_file_head+0x68>
  a2e4ec:	00a0 5b00 071f      	l.li	a4,0xa05b00
  a2e4f2:	4310                	lw	a2,0(a4)
  a2e4f4:	07000593          	li	a1,112
  a2e4f8:	15048513          	addi	a0,s1,336
  a2e4fc:	9782                	jalr	a5
  a2e4fe:	842a                	mv	s0,a0
  a2e500:	b745                	j	a2e4a0 <uapi_upg_verify_file_head+0x68>
  a2e502:	8000 3040 041f      	l.li	s0,0x80003040
  a2e508:	bf61                	j	a2e4a0 <uapi_upg_verify_file_head+0x68>
  a2e50a:	8000 3063 041f      	l.li	s0,0x80003063
  a2e510:	bf41                	j	a2e4a0 <uapi_upg_verify_file_head+0x68>

00a2e512 <uapi_upg_verify_file_image>:
  a2e512:	8148                	push	{ra,s0-s2},-32
  a2e514:	411c                	lw	a5,0(a0)
  a2e516:	464f 5451 071f      	l.li	a4,0x464f5451
  a2e51c:	00e78e63          	beq	a5,a4,a2e538 <uapi_upg_verify_file_image+0x26>
  a2e520:	85be                	mv	a1,a5
  a2e522:	00a3 3698 051f      	l.li	a0,0xa33698
  a2e528:	ba9fd0ef          	jal	ra,a2c0d0 <print_str>
  a2e52c:	450d                	li	a0,3
  a2e52e:	bd1ff0ef          	jal	ra,a2e0fe <upg_set_temporary_result>
  a2e532:	547d                	li	s0,-1
  a2e534:	8522                	mv	a0,s0
  a2e536:	8144                	popret	{ra,s0-s2},32
  a2e538:	86b2                	mv	a3,a2
  a2e53a:	862e                	mv	a2,a1
  a2e53c:	0a000593          	li	a1,160
  a2e540:	84aa                	mv	s1,a0
  a2e542:	dc9ff0ef          	jal	ra,a2e30a <upg_verify_hash>
  a2e546:	842a                	mv	s0,a0
  a2e548:	c509                	beqz	a0,a2e552 <uapi_upg_verify_file_image+0x40>
  a2e54a:	450d                	li	a0,3
  a2e54c:	bb3ff0ef          	jal	ra,a2e0fe <upg_set_temporary_result>
  a2e550:	b7d5                	j	a2e534 <uapi_upg_verify_file_image+0x22>
  a2e552:	44dc                	lw	a5,12(s1)
  a2e554:	0034                	addi	a3,sp,8
  a2e556:	0070                	addi	a2,sp,12
  a2e558:	07bd                	addi	a5,a5,15
  a2e55a:	9bc1                	andi	a5,a5,-16
  a2e55c:	4581                	li	a1,0
  a2e55e:	8526                	mv	a0,s1
  a2e560:	c402                	sw	zero,8(sp)
  a2e562:	c63e                	sw	a5,12(sp)
  a2e564:	981ff0ef          	jal	ra,a2dee4 <upg_get_pkg_image_data>
  a2e568:	842a                	mv	s0,a0
  a2e56a:	e905                	bnez	a0,a2e59a <uapi_upg_verify_file_image+0x88>
  a2e56c:	4522                	lw	a0,8(sp)
  a2e56e:	e901                	bnez	a0,a2e57e <uapi_upg_verify_file_image+0x6c>
  a2e570:	40cc                	lw	a1,4(s1)
  a2e572:	00a3 36d8 051f      	l.li	a0,0xa336d8
  a2e578:	b59fd0ef          	jal	ra,a2c0d0 <print_str>
  a2e57c:	bf65                	j	a2e534 <uapi_upg_verify_file_image+0x22>
  a2e57e:	45b2                	lw	a1,12(sp)
  a2e580:	02000693          	li	a3,32
  a2e584:	01048613          	addi	a2,s1,16
  a2e588:	d83ff0ef          	jal	ra,a2e30a <upg_verify_hash>
  a2e58c:	892a                	mv	s2,a0
  a2e58e:	d16d                	beqz	a0,a2e570 <uapi_upg_verify_file_image+0x5e>
  a2e590:	450d                	li	a0,3
  a2e592:	b6dff0ef          	jal	ra,a2e0fe <upg_set_temporary_result>
  a2e596:	844a                	mv	s0,s2
  a2e598:	bf71                	j	a2e534 <uapi_upg_verify_file_image+0x22>
  a2e59a:	892a                	mv	s2,a0
  a2e59c:	bfd5                	j	a2e590 <uapi_upg_verify_file_image+0x7e>

00a2e59e <uapi_upg_verify_file>:
  a2e59e:	8158                	push	{ra,s0-s3},-48
  a2e5a0:	892a                	mv	s2,a0
  a2e5a2:	c402                	sw	zero,8(sp)
  a2e5a4:	c87ff0ef          	jal	ra,a2e22a <upg_is_inited>
  a2e5a8:	c161                	beqz	a0,a2e668 <uapi_upg_verify_file+0xca>
  a2e5aa:	854a                	mv	a0,s2
  a2e5ac:	e8dff0ef          	jal	ra,a2e438 <uapi_upg_verify_file_head>
  a2e5b0:	842a                	mv	s0,a0
  a2e5b2:	c511                	beqz	a0,a2e5be <uapi_upg_verify_file+0x20>
  a2e5b4:	4505                	li	a0,1
  a2e5b6:	b49ff0ef          	jal	ra,a2e0fe <upg_set_temporary_result>
  a2e5ba:	8522                	mv	a0,s0
  a2e5bc:	8154                	popret	{ra,s0-s3},48
  a2e5be:	00a3 3510 051f      	l.li	a0,0xa33510
  a2e5c4:	b0dfd0ef          	jal	ra,a2c0d0 <print_str>
  a2e5c8:	002c                	addi	a1,sp,8
  a2e5ca:	854a                	mv	a0,s2
  a2e5cc:	8b7ff0ef          	jal	ra,a2de82 <upg_get_pkg_image_hash_table>
  a2e5d0:	842a                	mv	s0,a0
  a2e5d2:	e119                	bnez	a0,a2e5d8 <uapi_upg_verify_file+0x3a>
  a2e5d4:	4522                	lw	a0,8(sp)
  a2e5d6:	e519                	bnez	a0,a2e5e4 <uapi_upg_verify_file+0x46>
  a2e5d8:	00a3 352c 051f      	l.li	a0,0xa3352c
  a2e5de:	af3fd0ef          	jal	ra,a2c0d0 <print_str>
  a2e5e2:	bfe1                	j	a2e5ba <uapi_upg_verify_file+0x1c>
  a2e5e4:	12492583          	lw	a1,292(s2)
  a2e5e8:	02000693          	li	a3,32
  a2e5ec:	12890613          	addi	a2,s2,296
  a2e5f0:	d1bff0ef          	jal	ra,a2e30a <upg_verify_hash>
  a2e5f4:	842a                	mv	s0,a0
  a2e5f6:	c901                	beqz	a0,a2e606 <uapi_upg_verify_file+0x68>
  a2e5f8:	4509                	li	a0,2
  a2e5fa:	b05ff0ef          	jal	ra,a2e0fe <upg_set_temporary_result>
  a2e5fe:	4522                	lw	a0,8(sp)
  a2e600:	ec4ff0ef          	jal	ra,a2dcc4 <upg_free>
  a2e604:	bf5d                	j	a2e5ba <uapi_upg_verify_file+0x1c>
  a2e606:	00a3 3558 051f      	l.li	a0,0xa33558
  a2e60c:	ac5fd0ef          	jal	ra,a2c0d0 <print_str>
  a2e610:	44a2                	lw	s1,8(sp)
  a2e612:	c602                	sw	zero,12(sp)
  a2e614:	4981                	li	s3,0
  a2e616:	04b1                	addi	s1,s1,12
  a2e618:	14892783          	lw	a5,328(s2)
  a2e61c:	00f9e463          	bltu	s3,a5,a2e624 <uapi_upg_verify_file+0x86>
  a2e620:	4401                	li	s0,0
  a2e622:	a839                	j	a2e640 <uapi_upg_verify_file+0xa2>
  a2e624:	006c                	addi	a1,sp,12
  a2e626:	ff448513          	addi	a0,s1,-12
  a2e62a:	88dff0ef          	jal	ra,a2deb6 <upg_get_pkg_image_header>
  a2e62e:	842a                	mv	s0,a0
  a2e630:	e119                	bnez	a0,a2e636 <uapi_upg_verify_file+0x98>
  a2e632:	4532                	lw	a0,12(sp)
  a2e634:	e911                	bnez	a0,a2e648 <uapi_upg_verify_file+0xaa>
  a2e636:	00a3 3580 051f      	l.li	a0,0xa33580
  a2e63c:	a95fd0ef          	jal	ra,a2c0d0 <print_str>
  a2e640:	4532                	lw	a0,12(sp)
  a2e642:	e82ff0ef          	jal	ra,a2dcc4 <upg_free>
  a2e646:	bf65                	j	a2e5fe <uapi_upg_verify_file+0x60>
  a2e648:	85a6                	mv	a1,s1
  a2e64a:	4685                	li	a3,1
  a2e64c:	02000613          	li	a2,32
  a2e650:	ec3ff0ef          	jal	ra,a2e512 <uapi_upg_verify_file_image>
  a2e654:	842a                	mv	s0,a0
  a2e656:	02c48493          	addi	s1,s1,44
  a2e65a:	f17d                	bnez	a0,a2e640 <uapi_upg_verify_file+0xa2>
  a2e65c:	4532                	lw	a0,12(sp)
  a2e65e:	0985                	addi	s3,s3,1
  a2e660:	e64ff0ef          	jal	ra,a2dcc4 <upg_free>
  a2e664:	c602                	sw	zero,12(sp)
  a2e666:	bf4d                	j	a2e618 <uapi_upg_verify_file+0x7a>
  a2e668:	8000 3040 041f      	l.li	s0,0x80003040
  a2e66e:	b7b1                	j	a2e5ba <uapi_upg_verify_file+0x1c>

00a2e670 <uapi_upg_reset_upgrade_flag>:
  a2e670:	8218                	push	{ra},-48
  a2e672:	c602                	sw	zero,12(sp)
  a2e674:	bb7ff0ef          	jal	ra,a2e22a <upg_is_inited>
  a2e678:	c13d                	beqz	a0,a2e6de <uapi_upg_reset_upgrade_flag+0x6e>
  a2e67a:	080c                	addi	a1,sp,16
  a2e67c:	0068                	addi	a0,sp,12
  a2e67e:	d57fe0ef          	jal	ra,a2d3d4 <upg_get_progress_status_start_addr>
  a2e682:	ed29                	bnez	a0,a2e6dc <uapi_upg_reset_upgrade_flag+0x6c>
  a2e684:	0028                	addi	a0,sp,8
  a2e686:	d31fe0ef          	jal	ra,a2d3b6 <upg_get_upgrade_flag_flash_start_addr>
  a2e68a:	e929                	bnez	a0,a2e6dc <uapi_upg_reset_upgrade_flag+0x6c>
  a2e68c:	4522                	lw	a0,8(sp)
  a2e68e:	0850                	addi	a2,sp,20
  a2e690:	4591                	li	a1,4
  a2e692:	0521                	addi	a0,a0,8
  a2e694:	ca02                	sw	zero,20(sp)
  a2e696:	dbbfe0ef          	jal	ra,a2d450 <upg_flash_read>
  a2e69a:	e129                	bnez	a0,a2e6dc <uapi_upg_reset_upgrade_flag+0x6c>
  a2e69c:	45c2                	lw	a1,16(sp)
  a2e69e:	4532                	lw	a0,12(sp)
  a2e6a0:	dc7fe0ef          	jal	ra,a2d466 <upg_flash_erase>
  a2e6a4:	ed05                	bnez	a0,a2e6dc <uapi_upg_reset_upgrade_flag+0x6c>
  a2e6a6:	4522                	lw	a0,8(sp)
  a2e6a8:	4681                	li	a3,0
  a2e6aa:	0830                	addi	a2,sp,24
  a2e6ac:	4591                	li	a1,4
  a2e6ae:	0511                	addi	a0,a0,4
  a2e6b0:	cc02                	sw	zero,24(sp)
  a2e6b2:	e63fe0ef          	jal	ra,a2d514 <upg_flash_write>
  a2e6b6:	e11d                	bnez	a0,a2e6dc <uapi_upg_reset_upgrade_flag+0x6c>
  a2e6b8:	4522                	lw	a0,8(sp)
  a2e6ba:	55aa 55aa 079f      	l.li	a5,0x55aa55aa
  a2e6c0:	4681                	li	a3,0
  a2e6c2:	0870                	addi	a2,sp,28
  a2e6c4:	4591                	li	a1,4
  a2e6c6:	ce3e                	sw	a5,28(sp)
  a2e6c8:	e4dfe0ef          	jal	ra,a2d514 <upg_flash_write>
  a2e6cc:	e901                	bnez	a0,a2e6dc <uapi_upg_reset_upgrade_flag+0x6c>
  a2e6ce:	4522                	lw	a0,8(sp)
  a2e6d0:	4681                	li	a3,0
  a2e6d2:	0850                	addi	a2,sp,20
  a2e6d4:	4591                	li	a1,4
  a2e6d6:	0521                	addi	a0,a0,8
  a2e6d8:	e3dfe0ef          	jal	ra,a2d514 <upg_flash_write>
  a2e6dc:	8214                	popret	{ra},48
  a2e6de:	8000 3040 051f      	l.li	a0,0x80003040
  a2e6e4:	bfe5                	j	a2e6dc <uapi_upg_reset_upgrade_flag+0x6c>

00a2e6e6 <uapi_upg_request_upgrade>:
  a2e6e6:	8148                	push	{ra,s0-s2},-32
  a2e6e8:	892a                	mv	s2,a0
  a2e6ea:	c002                	sw	zero,0(sp)
  a2e6ec:	b3fff0ef          	jal	ra,a2e22a <upg_is_inited>
  a2e6f0:	0e050363          	beqz	a0,a2e7d6 <uapi_upg_request_upgrade+0xf0>
  a2e6f4:	850a                	mv	a0,sp
  a2e6f6:	f6aff0ef          	jal	ra,a2de60 <upg_get_package_header>
  a2e6fa:	842a                	mv	s0,a0
  a2e6fc:	e119                	bnez	a0,a2e702 <uapi_upg_request_upgrade+0x1c>
  a2e6fe:	4502                	lw	a0,0(sp)
  a2e700:	e901                	bnez	a0,a2e710 <uapi_upg_request_upgrade+0x2a>
  a2e702:	00a3 37cc 051f      	l.li	a0,0xa337cc
  a2e708:	9c9fd0ef          	jal	ra,a2c0d0 <print_str>
  a2e70c:	8522                	mv	a0,s0
  a2e70e:	8144                	popret	{ra,s0-s2},32
  a2e710:	e8fff0ef          	jal	ra,a2e59e <uapi_upg_verify_file>
  a2e714:	842a                	mv	s0,a0
  a2e716:	4502                	lw	a0,0(sp)
  a2e718:	c811                	beqz	s0,a2e72c <uapi_upg_request_upgrade+0x46>
  a2e71a:	daaff0ef          	jal	ra,a2dcc4 <upg_free>
  a2e71e:	85a2                	mv	a1,s0
  a2e720:	00a3 37f0 051f      	l.li	a0,0xa337f0
  a2e726:	9abfd0ef          	jal	ra,a2c0d0 <print_str>
  a2e72a:	b7cd                	j	a2e70c <uapi_upg_request_upgrade+0x26>
  a2e72c:	c602                	sw	zero,12(sp)
  a2e72e:	14852483          	lw	s1,328(a0)
  a2e732:	1504e6bb          	bltui	s1,21,a2e74c <uapi_upg_request_upgrade+0x66>
  a2e736:	8000 3043 041f      	l.li	s0,0x80003043
  a2e73c:	4502                	lw	a0,0(sp)
  a2e73e:	d86ff0ef          	jal	ra,a2dcc4 <upg_free>
  a2e742:	85a2                	mv	a1,s0
  a2e744:	00a3 3820 051f      	l.li	a0,0xa33820
  a2e74a:	bff1                	j	a2e726 <uapi_upg_request_upgrade+0x40>
  a2e74c:	006c                	addi	a1,sp,12
  a2e74e:	f34ff0ef          	jal	ra,a2de82 <upg_get_pkg_image_hash_table>
  a2e752:	842a                	mv	s0,a0
  a2e754:	ed11                	bnez	a0,a2e770 <uapi_upg_request_upgrade+0x8a>
  a2e756:	4532                	lw	a0,12(sp)
  a2e758:	cd01                	beqz	a0,a2e770 <uapi_upg_request_upgrade+0x8a>
  a2e75a:	87aa                	mv	a5,a0
  a2e75c:	2c9514db          	muliadd	s1,a0,s1,44
  a2e760:	cb9e 063c 071f      	l.li	a4,0xcb9e063c
  a2e766:	06979163          	bne	a5,s1,a2e7c8 <uapi_upg_request_upgrade+0xe2>
  a2e76a:	d5aff0ef          	jal	ra,a2dcc4 <upg_free>
  a2e76e:	a039                	j	a2e77c <uapi_upg_request_upgrade+0x96>
  a2e770:	00a3 352c 051f      	l.li	a0,0xa3352c
  a2e776:	95bfd0ef          	jal	ra,a2c0d0 <print_str>
  a2e77a:	f069                	bnez	s0,a2e73c <uapi_upg_request_upgrade+0x56>
  a2e77c:	4502                	lw	a0,0(sp)
  a2e77e:	d46ff0ef          	jal	ra,a2dcc4 <upg_free>
  a2e782:	0028                	addi	a0,sp,8
  a2e784:	c222                	sw	s0,4(sp)
  a2e786:	c402                	sw	zero,8(sp)
  a2e788:	c2ffe0ef          	jal	ra,a2d3b6 <upg_get_upgrade_flag_flash_start_addr>
  a2e78c:	842a                	mv	s0,a0
  a2e78e:	e921                	bnez	a0,a2e7de <uapi_upg_request_upgrade+0xf8>
  a2e790:	4522                	lw	a0,8(sp)
  a2e792:	4681                	li	a3,0
  a2e794:	0050                	addi	a2,sp,4
  a2e796:	4591                	li	a1,4
  a2e798:	0531                	addi	a0,a0,12
  a2e79a:	d7bfe0ef          	jal	ra,a2d514 <upg_flash_write>
  a2e79e:	842a                	mv	s0,a0
  a2e7a0:	ed1d                	bnez	a0,a2e7de <uapi_upg_request_upgrade+0xf8>
  a2e7a2:	4522                	lw	a0,8(sp)
  a2e7a4:	aa55 aa55 079f      	l.li	a5,0xaa55aa55
  a2e7aa:	4681                	li	a3,0
  a2e7ac:	0070                	addi	a2,sp,12
  a2e7ae:	4591                	li	a1,4
  a2e7b0:	06850513          	addi	a0,a0,104
  a2e7b4:	c63e                	sw	a5,12(sp)
  a2e7b6:	d5ffe0ef          	jal	ra,a2d514 <upg_flash_write>
  a2e7ba:	842a                	mv	s0,a0
  a2e7bc:	e10d                	bnez	a0,a2e7de <uapi_upg_request_upgrade+0xf8>
  a2e7be:	f40907e3          	beqz	s2,a2e70c <uapi_upg_request_upgrade+0x26>
  a2e7c2:	c53fe0ef          	jal	ra,a2d414 <upg_reboot>
  a2e7c6:	b799                	j	a2e70c <uapi_upg_request_upgrade+0x26>
  a2e7c8:	4394                	lw	a3,0(a5)
  a2e7ca:	00e68363          	beq	a3,a4,a2e7d0 <uapi_upg_request_upgrade+0xea>
  a2e7ce:	0405                	addi	s0,s0,1
  a2e7d0:	02c78793          	addi	a5,a5,44
  a2e7d4:	bf49                	j	a2e766 <uapi_upg_request_upgrade+0x80>
  a2e7d6:	8000 3040 041f      	l.li	s0,0x80003040
  a2e7dc:	bf05                	j	a2e70c <uapi_upg_request_upgrade+0x26>
  a2e7de:	85a2                	mv	a1,s0
  a2e7e0:	00a3 385c 051f      	l.li	a0,0xa3385c
  a2e7e6:	b781                	j	a2e726 <uapi_upg_request_upgrade+0x40>

00a2e7e8 <upg_encry_and_write_pkt>:
  a2e7e8:	8158                	push	{ra,s0-s3},-48
  a2e7ea:	51f4                	lw	a3,100(a1)
  a2e7ec:	c402                	sw	zero,8(sp)
  a2e7ee:	c602                	sw	zero,12(sp)
  a2e7f0:	3c78 96e1 071f      	l.li	a4,0x3c7896e1
  a2e7f6:	08e69563          	bne	a3,a4,a2e880 <upg_encry_and_write_pkt+0x98>
  a2e7fa:	892e                	mv	s2,a1
  a2e7fc:	842a                	mv	s0,a0
  a2e7fe:	85b2                	mv	a1,a2
  a2e800:	0028                	addi	a0,sp,8
  a2e802:	f11fe0ef          	jal	ra,a2d712 <upg_process_cryto_info>
  a2e806:	84aa                	mv	s1,a0
  a2e808:	e905                	bnez	a0,a2e838 <upg_encry_and_write_pkt+0x50>
  a2e80a:	4c5c                	lw	a5,28(s0)
  a2e80c:	00f7f993          	andi	s3,a5,15
  a2e810:	9bc1                	andi	a5,a5,-16
  a2e812:	c63e                	sw	a5,12(sp)
  a2e814:	c3a1                	beqz	a5,a2e854 <upg_encry_and_write_pkt+0x6c>
  a2e816:	4722                	lw	a4,8(sp)
  a2e818:	4c08                	lw	a0,24(s0)
  a2e81a:	864a                	mv	a2,s2
  a2e81c:	40e785b3          	sub	a1,a5,a4
  a2e820:	953a                	add	a0,a0,a4
  a2e822:	f49fe0ef          	jal	ra,a2d76a <upg_encry_fota_pkt>
  a2e826:	892a                	mv	s2,a0
  a2e828:	c911                	beqz	a0,a2e83c <upg_encry_and_write_pkt+0x54>
  a2e82a:	85aa                	mv	a1,a0
  a2e82c:	00a3 32c8 051f      	l.li	a0,0xa332c8
  a2e832:	89ffd0ef          	jal	ra,a2c0d0 <print_str>
  a2e836:	84ca                	mv	s1,s2
  a2e838:	8526                	mv	a0,s1
  a2e83a:	8154                	popret	{ra,s0-s3},48
  a2e83c:	4014                	lw	a3,0(s0)
  a2e83e:	4c0c                	lw	a1,24(s0)
  a2e840:	4408                	lw	a0,8(s0)
  a2e842:	4701                	li	a4,0
  a2e844:	0070                	addi	a2,sp,12
  a2e846:	790000ef          	jal	ra,a2efd6 <upg_write_new_image_data>
  a2e84a:	ed0d                	bnez	a0,a2e884 <upg_encry_and_write_pkt+0x9c>
  a2e84c:	441c                	lw	a5,8(s0)
  a2e84e:	4732                	lw	a4,12(sp)
  a2e850:	97ba                	add	a5,a5,a4
  a2e852:	c41c                	sw	a5,8(s0)
  a2e854:	02098463          	beqz	s3,a2e87c <upg_encry_and_write_pkt+0x94>
  a2e858:	4c08                	lw	a0,24(s0)
  a2e85a:	4632                	lw	a2,12(sp)
  a2e85c:	86ce                	mv	a3,s3
  a2e85e:	6591                	lui	a1,0x4
  a2e860:	962a                	add	a2,a2,a0
  a2e862:	1bc020ef          	jal	ra,a30a1e <memmove_s>
  a2e866:	c901                	beqz	a0,a2e876 <upg_encry_and_write_pkt+0x8e>
  a2e868:	00a3 388c 051f      	l.li	a0,0xa3388c
  a2e86e:	863fd0ef          	jal	ra,a2c0d0 <print_str>
  a2e872:	54fd                	li	s1,-1
  a2e874:	b7d1                	j	a2e838 <upg_encry_and_write_pkt+0x50>
  a2e876:	01342e23          	sw	s3,28(s0)
  a2e87a:	bf7d                	j	a2e838 <upg_encry_and_write_pkt+0x50>
  a2e87c:	00042e23          	sw	zero,28(s0)
  a2e880:	4481                	li	s1,0
  a2e882:	bf5d                	j	a2e838 <upg_encry_and_write_pkt+0x50>
  a2e884:	4485                	li	s1,1
  a2e886:	bf4d                	j	a2e838 <upg_encry_and_write_pkt+0x50>

00a2e888 <upg_lzma_alloc>:
  a2e888:	8128                	push	{ra,s0},-32
  a2e88a:	852e                	mv	a0,a1
  a2e88c:	c62e                	sw	a1,12(sp)
  a2e88e:	c1cff0ef          	jal	ra,a2dcaa <upg_malloc>
  a2e892:	842a                	mv	s0,a0
  a2e894:	45b2                	lw	a1,12(sp)
  a2e896:	e511                	bnez	a0,a2e8a2 <upg_lzma_alloc+0x1a>
  a2e898:	00a3 38bc 051f      	l.li	a0,0xa338bc
  a2e89e:	833fd0ef          	jal	ra,a2c0d0 <print_str>
  a2e8a2:	8522                	mv	a0,s0
  a2e8a4:	8124                	popret	{ra,s0},32

00a2e8a6 <upg_lzma_free>:
  a2e8a6:	c581                	beqz	a1,a2e8ae <upg_lzma_free+0x8>
  a2e8a8:	852e                	mv	a0,a1
  a2e8aa:	c1aff06f          	j	a2dcc4 <upg_free>
  a2e8ae:	8082                	ret

00a2e8b0 <upg_lzma_init_buf>:
  a2e8b0:	8128                	push	{ra,s0},-32
  a2e8b2:	842a                	mv	s0,a0
  a2e8b4:	02052023          	sw	zero,32(a0)
  a2e8b8:	00052e23          	sw	zero,28(a0)
  a2e8bc:	6585                	lui	a1,0x1
  a2e8be:	0028                	addi	a0,sp,8
  a2e8c0:	fc9ff0ef          	jal	ra,a2e888 <upg_lzma_alloc>
  a2e8c4:	c848                	sw	a0,20(s0)
  a2e8c6:	cd11                	beqz	a0,a2e8e2 <upg_lzma_init_buf+0x32>
  a2e8c8:	6591                	lui	a1,0x4
  a2e8ca:	0028                	addi	a0,sp,8
  a2e8cc:	fbdff0ef          	jal	ra,a2e888 <upg_lzma_alloc>
  a2e8d0:	cc08                	sw	a0,24(s0)
  a2e8d2:	4781                	li	a5,0
  a2e8d4:	e911                	bnez	a0,a2e8e8 <upg_lzma_init_buf+0x38>
  a2e8d6:	484c                	lw	a1,20(s0)
  a2e8d8:	0028                	addi	a0,sp,8
  a2e8da:	fcdff0ef          	jal	ra,a2e8a6 <upg_lzma_free>
  a2e8de:	00042a23          	sw	zero,20(s0)
  a2e8e2:	800007b7          	lui	a5,0x80000
  a2e8e6:	0795                	addi	a5,a5,5 # 80000005 <_gp_+0x7f5cb77d>
  a2e8e8:	853e                	mv	a0,a5
  a2e8ea:	8124                	popret	{ra,s0},32

00a2e8ec <upg_lzma_init>:
  a2e8ec:	8168                	push	{ra,s0-s4},-48
  a2e8ee:	00a2 e888 079f      	l.li	a5,0xa2e888
  a2e8f4:	c43e                	sw	a5,8(sp)
  a2e8f6:	00a2 e8a6 079f      	l.li	a5,0xa2e8a6
  a2e8fc:	00052823          	sw	zero,16(a0)
  a2e900:	00052423          	sw	zero,8(a0)
  a2e904:	c63e                	sw	a5,12(sp)
  a2e906:	0506f3bb          	bgeui	a3,5,a2e914 <upg_lzma_init+0x28>
  a2e90a:	8000 3042 041f      	l.li	s0,0x80003042
  a2e910:	8522                	mv	a0,s0
  a2e912:	8164                	popret	{ra,s0-s4},48
  a2e914:	89b2                	mv	s3,a2
  a2e916:	8436                	mv	s0,a3
  a2e918:	8a2e                	mv	s4,a1
  a2e91a:	0034                	addi	a3,sp,8
  a2e91c:	4615                	li	a2,5
  a2e91e:	85ce                	mv	a1,s3
  a2e920:	84aa                	mv	s1,a0
  a2e922:	03c020ef          	jal	ra,a3095e <LzmaDec_AllocateProbs>
  a2e926:	c939                	beqz	a0,a2e97c <upg_lzma_init+0x90>
  a2e928:	842a                	mv	s0,a0
  a2e92a:	b7dd                	j	a2e910 <upg_lzma_init+0x24>
  a2e92c:	00f98733          	add	a4,s3,a5
  a2e930:	3358                	lbu	a4,5(a4)
  a2e932:	00379613          	slli	a2,a5,0x3
  a2e936:	0785                	addi	a5,a5,1
  a2e938:	00c71733          	sll	a4,a4,a2
  a2e93c:	993a                	add	s2,s2,a4
  a2e93e:	fed7e7e3          	bltu	a5,a3,a2e92c <upg_lzma_init+0x40>
  a2e942:	40c0                	lw	s0,4(s1)
  a2e944:	00897363          	bgeu	s2,s0,a2e94a <upg_lzma_init+0x5e>
  a2e948:	844a                	mv	s0,s2
  a2e94a:	d061                	beqz	s0,a2e90a <upg_lzma_init+0x1e>
  a2e94c:	85a2                	mv	a1,s0
  a2e94e:	0028                	addi	a0,sp,8
  a2e950:	f39ff0ef          	jal	ra,a2e888 <upg_lzma_alloc>
  a2e954:	c888                	sw	a0,16(s1)
  a2e956:	cd19                	beqz	a0,a2e974 <upg_lzma_init+0x88>
  a2e958:	c8c0                	sw	s0,20(s1)
  a2e95a:	012a2823          	sw	s2,16(s4)
  a2e95e:	8552                	mv	a0,s4
  a2e960:	f51ff0ef          	jal	ra,a2e8b0 <upg_lzma_init_buf>
  a2e964:	842a                	mv	s0,a0
  a2e966:	c105                	beqz	a0,a2e986 <upg_lzma_init+0x9a>
  a2e968:	488c                	lw	a1,16(s1)
  a2e96a:	0028                	addi	a0,sp,8
  a2e96c:	f3bff0ef          	jal	ra,a2e8a6 <upg_lzma_free>
  a2e970:	0004a823          	sw	zero,16(s1)
  a2e974:	80000437          	lui	s0,0x80000
  a2e978:	0415                	addi	s0,s0,5 # 80000005 <_gp_+0x7f5cb77d>
  a2e97a:	bf59                	j	a2e910 <upg_lzma_init+0x24>
  a2e97c:	4781                	li	a5,0
  a2e97e:	4901                	li	s2,0
  a2e980:	ffb40693          	addi	a3,s0,-5
  a2e984:	bf6d                	j	a2e93e <upg_lzma_init+0x52>
  a2e986:	8526                	mv	a0,s1
  a2e988:	351010ef          	jal	ra,a304d8 <LzmaDec_Init>
  a2e98c:	b751                	j	a2e910 <upg_lzma_init+0x24>

00a2e98e <upg_lzma_deinit>:
  a2e98e:	8138                	push	{ra,s0-s1},-32
  a2e990:	842e                	mv	s0,a1
  a2e992:	490c                	lw	a1,16(a0)
  a2e994:	00a2 e888 079f      	l.li	a5,0xa2e888
  a2e99a:	84aa                	mv	s1,a0
  a2e99c:	c43e                	sw	a5,8(sp)
  a2e99e:	0028                	addi	a0,sp,8
  a2e9a0:	00a2 e8a6 079f      	l.li	a5,0xa2e8a6
  a2e9a6:	c63e                	sw	a5,12(sp)
  a2e9a8:	effff0ef          	jal	ra,a2e8a6 <upg_lzma_free>
  a2e9ac:	002c                	addi	a1,sp,8
  a2e9ae:	8526                	mv	a0,s1
  a2e9b0:	0004a823          	sw	zero,16(s1)
  a2e9b4:	6ff010ef          	jal	ra,a308b2 <LzmaDec_FreeProbs>
  a2e9b8:	484c                	lw	a1,20(s0)
  a2e9ba:	0028                	addi	a0,sp,8
  a2e9bc:	eebff0ef          	jal	ra,a2e8a6 <upg_lzma_free>
  a2e9c0:	4c0c                	lw	a1,24(s0)
  a2e9c2:	00042a23          	sw	zero,20(s0)
  a2e9c6:	0028                	addi	a0,sp,8
  a2e9c8:	edfff0ef          	jal	ra,a2e8a6 <upg_lzma_free>
  a2e9cc:	00042c23          	sw	zero,24(s0)
  a2e9d0:	8134                	popret	{ra,s0-s1},32

00a2e9d2 <upg_lzma_write_image>:
  a2e9d2:	8028                	push	{ra,s0},-16
  a2e9d4:	51f8                	lw	a4,100(a1)
  a2e9d6:	3c78 96e1 079f      	l.li	a5,0x3c7896e1
  a2e9dc:	02f70263          	beq	a4,a5,a2ea00 <upg_lzma_write_image+0x2e>
  a2e9e0:	842a                	mv	s0,a0
  a2e9e2:	4114                	lw	a3,0(a0)
  a2e9e4:	01c50613          	addi	a2,a0,28
  a2e9e8:	4d0c                	lw	a1,24(a0)
  a2e9ea:	4508                	lw	a0,8(a0)
  a2e9ec:	4701                	li	a4,0
  a2e9ee:	23e5                	jal	ra,a2efd6 <upg_write_new_image_data>
  a2e9f0:	e11d                	bnez	a0,a2ea16 <upg_lzma_write_image+0x44>
  a2e9f2:	441c                	lw	a5,8(s0)
  a2e9f4:	4c58                	lw	a4,28(s0)
  a2e9f6:	00042e23          	sw	zero,28(s0)
  a2e9fa:	97ba                	add	a5,a5,a4
  a2e9fc:	c41c                	sw	a5,8(s0)
  a2e9fe:	8024                	popret	{ra,s0},16
  a2ea00:	de9ff0ef          	jal	ra,a2e7e8 <upg_encry_and_write_pkt>
  a2ea04:	dd6d                	beqz	a0,a2e9fe <upg_lzma_write_image+0x2c>
  a2ea06:	85aa                	mv	a1,a0
  a2ea08:	00a3 39a4 051f      	l.li	a0,0xa339a4
  a2ea0e:	ec2fd0ef          	jal	ra,a2c0d0 <print_str>
  a2ea12:	557d                	li	a0,-1
  a2ea14:	b7ed                	j	a2e9fe <upg_lzma_write_image+0x2c>
  a2ea16:	4505                	li	a0,1
  a2ea18:	b7dd                	j	a2e9fe <upg_lzma_write_image+0x2c>

00a2ea1a <upg_lzma_decode_to_midbuf>:
  a2ea1a:	81a8                	push	{ra,s0-s8},-64
  a2ea1c:	0205a983          	lw	s3,32(a1) # 4020 <ccause+0x305e>
  a2ea20:	8aaa                	mv	s5,a0
  a2ea22:	84ae                	mv	s1,a1
  a2ea24:	8b32                	mv	s6,a2
  a2ea26:	8bb6                	mv	s7,a3
  a2ea28:	000103a3          	sb	zero,7(sp)
  a2ea2c:	4901                	li	s2,0
  a2ea2e:	6a11                	lui	s4,0x4
  a2ea30:	6c05                	lui	s8,0x1
  a2ea32:	01396463          	bltu	s2,s3,a2ea3a <upg_lzma_decode_to_midbuf+0x20>
  a2ea36:	4501                	li	a0,0
  a2ea38:	a041                	j	a2eab8 <upg_lzma_decode_to_midbuf+0x9e>
  a2ea3a:	4898                	lw	a4,16(s1)
  a2ea3c:	412987b3          	sub	a5,s3,s2
  a2ea40:	c43e                	sw	a5,8(sp)
  a2ea42:	c652                	sw	s4,12(sp)
  a2ea44:	4781                	li	a5,0
  a2ea46:	01477463          	bgeu	a4,s4,a2ea4e <upg_lzma_decode_to_midbuf+0x34>
  a2ea4a:	c63a                	sw	a4,12(sp)
  a2ea4c:	4785                	li	a5,1
  a2ea4e:	4c88                	lw	a0,24(s1)
  a2ea50:	48d4                	lw	a3,20(s1)
  a2ea52:	4ccc                	lw	a1,28(s1)
  a2ea54:	00710813          	addi	a6,sp,7
  a2ea58:	0038                	addi	a4,sp,8
  a2ea5a:	95aa                	add	a1,a1,a0
  a2ea5c:	96ca                	add	a3,a3,s2
  a2ea5e:	0070                	addi	a2,sp,12
  a2ea60:	8556                	mv	a0,s5
  a2ea62:	5bd010ef          	jal	ra,a3081e <LzmaDec_DecodeToBuf>
  a2ea66:	842a                	mv	s0,a0
  a2ea68:	c909                	beqz	a0,a2ea7a <upg_lzma_decode_to_midbuf+0x60>
  a2ea6a:	85aa                	mv	a1,a0
  a2ea6c:	00a3 3950 051f      	l.li	a0,0xa33950
  a2ea72:	e5efd0ef          	jal	ra,a2c0d0 <print_str>
  a2ea76:	8522                	mv	a0,s0
  a2ea78:	a081                	j	a2eab8 <upg_lzma_decode_to_midbuf+0x9e>
  a2ea7a:	47a2                	lw	a5,8(sp)
  a2ea7c:	4532                	lw	a0,12(sp)
  a2ea7e:	993e                	add	s2,s2,a5
  a2ea80:	489c                	lw	a5,16(s1)
  a2ea82:	8f89                	sub	a5,a5,a0
  a2ea84:	c89c                	sw	a5,16(s1)
  a2ea86:	4cdc                	lw	a5,28(s1)
  a2ea88:	97aa                	add	a5,a5,a0
  a2ea8a:	ccdc                	sw	a5,28(s1)
  a2ea8c:	2321                	jal	ra,a2ef94 <upg_calculate_and_notify_process>
  a2ea8e:	4cdc                	lw	a5,28(s1)
  a2ea90:	40fa07b3          	sub	a5,s4,a5
  a2ea94:	0187e663          	bltu	a5,s8,a2eaa0 <upg_lzma_decode_to_midbuf+0x86>
  a2ea98:	489c                	lw	a5,16(s1)
  a2ea9a:	c399                	beqz	a5,a2eaa0 <upg_lzma_decode_to_midbuf+0x86>
  a2ea9c:	01299f63          	bne	s3,s2,a2eaba <upg_lzma_decode_to_midbuf+0xa0>
  a2eaa0:	865e                	mv	a2,s7
  a2eaa2:	85da                	mv	a1,s6
  a2eaa4:	8526                	mv	a0,s1
  a2eaa6:	f2dff0ef          	jal	ra,a2e9d2 <upg_lzma_write_image>
  a2eaaa:	c901                	beqz	a0,a2eaba <upg_lzma_decode_to_midbuf+0xa0>
  a2eaac:	00a3 3980 051f      	l.li	a0,0xa33980
  a2eab2:	e1efd0ef          	jal	ra,a2c0d0 <print_str>
  a2eab6:	557d                	li	a0,-1
  a2eab8:	81a4                	popret	{ra,s0-s8},64
  a2eaba:	4722                	lw	a4,8(sp)
  a2eabc:	489c                	lw	a5,16(s1)
  a2eabe:	e319                	bnez	a4,a2eac4 <upg_lzma_decode_to_midbuf+0xaa>
  a2eac0:	4732                	lw	a4,12(sp)
  a2eac2:	c319                	beqz	a4,a2eac8 <upg_lzma_decode_to_midbuf+0xae>
  a2eac4:	dbcd                	beqz	a5,a2ea76 <upg_lzma_decode_to_midbuf+0x5c>
  a2eac6:	b7b5                	j	a2ea32 <upg_lzma_decode_to_midbuf+0x18>
  a2eac8:	d7dd                	beqz	a5,a2ea76 <upg_lzma_decode_to_midbuf+0x5c>
  a2eaca:	00714403          	lbu	s0,7(sp)
  a2eace:	147d                	addi	s0,s0,-1
  a2ead0:	00803433          	snez	s0,s0
  a2ead4:	b74d                	j	a2ea76 <upg_lzma_decode_to_midbuf+0x5c>

00a2ead6 <upg_lzma_decode>:
  a2ead6:	8168                	push	{ra,s0-s4},-48
  a2ead8:	4785                	li	a5,1
  a2eada:	89aa                	mv	s3,a0
  a2eadc:	84ae                	mv	s1,a1
  a2eade:	8932                	mv	s2,a2
  a2eae0:	00f105a3          	sb	a5,11(sp)
  a2eae4:	6a05                	lui	s4,0x1
  a2eae6:	44c0                	lw	s0,12(s1)
  a2eae8:	c015                	beqz	s0,a2eb0c <upg_lzma_decode+0x36>
  a2eaea:	008a7363          	bgeu	s4,s0,a2eaf0 <upg_lzma_decode+0x1a>
  a2eaee:	6405                	lui	s0,0x1
  a2eaf0:	48cc                	lw	a1,20(s1)
  a2eaf2:	40c8                	lw	a0,4(s1)
  a2eaf4:	0070                	addi	a2,sp,12
  a2eaf6:	c622                	sw	s0,12(sp)
  a2eaf8:	aacff0ef          	jal	ra,a2dda4 <upg_read_fota_pkg_data>
  a2eafc:	c911                	beqz	a0,a2eb10 <upg_lzma_decode+0x3a>
  a2eafe:	4405                	li	s0,1
  a2eb00:	85a2                	mv	a1,s0
  a2eb02:	00a3 38ec 051f      	l.li	a0,0xa338ec
  a2eb08:	dc8fd0ef          	jal	ra,a2c0d0 <print_str>
  a2eb0c:	8522                	mv	a0,s0
  a2eb0e:	8164                	popret	{ra,s0-s4},48
  a2eb10:	45b2                	lw	a1,12(sp)
  a2eb12:	48c8                	lw	a0,20(s1)
  a2eb14:	864a                	mv	a2,s2
  a2eb16:	c15fe0ef          	jal	ra,a2d72a <upg_decry_fota_pkt>
  a2eb1a:	e51d                	bnez	a0,a2eb48 <upg_lzma_decode+0x72>
  a2eb1c:	4732                	lw	a4,12(sp)
  a2eb1e:	40dc                	lw	a5,4(s1)
  a2eb20:	00b10693          	addi	a3,sp,11
  a2eb24:	d098                	sw	a4,32(s1)
  a2eb26:	97ba                	add	a5,a5,a4
  a2eb28:	c0dc                	sw	a5,4(s1)
  a2eb2a:	44dc                	lw	a5,12(s1)
  a2eb2c:	864a                	mv	a2,s2
  a2eb2e:	85a6                	mv	a1,s1
  a2eb30:	8f99                	sub	a5,a5,a4
  a2eb32:	c4dc                	sw	a5,12(s1)
  a2eb34:	854e                	mv	a0,s3
  a2eb36:	ee5ff0ef          	jal	ra,a2ea1a <upg_lzma_decode_to_midbuf>
  a2eb3a:	842a                	mv	s0,a0
  a2eb3c:	c901                	beqz	a0,a2eb4c <upg_lzma_decode+0x76>
  a2eb3e:	85aa                	mv	a1,a0
  a2eb40:	00a3 3920 051f      	l.li	a0,0xa33920
  a2eb46:	b7c9                	j	a2eb08 <upg_lzma_decode+0x32>
  a2eb48:	547d                	li	s0,-1
  a2eb4a:	bf5d                	j	a2eb00 <upg_lzma_decode+0x2a>
  a2eb4c:	8f5fe0ef          	jal	ra,a2d440 <upg_watchdog_kick>
  a2eb50:	bf59                	j	a2eae6 <upg_lzma_decode+0x10>

00a2eb52 <upg_check_first_entry>:
  a2eb52:	8148                	push	{ra,s0-s2},-32
  a2eb54:	00a3 1c8c 079f      	l.li	a5,0xa31c8c
  a2eb5a:	239a                	lhu	a4,0(a5)
  a2eb5c:	23bc                	lbu	a5,2(a5)
  a2eb5e:	892a                	mv	s2,a0
  a2eb60:	00e11623          	sh	a4,12(sp)
  a2eb64:	00f10723          	sb	a5,14(sp)
  a2eb68:	01050493          	addi	s1,a0,16
  a2eb6c:	4401                	li	s0,0
  a2eb6e:	00c92783          	lw	a5,12(s2)
  a2eb72:	00f46463          	bltu	s0,a5,a2eb7a <upg_check_first_entry+0x28>
  a2eb76:	4505                	li	a0,1
  a2eb78:	8144                	popret	{ra,s0-s2},32
  a2eb7a:	8526                	mv	a0,s1
  a2eb7c:	460d                	li	a2,3
  a2eb7e:	006c                	addi	a1,sp,12
  a2eb80:	96efa0ef          	jal	ra,a28cee <memcmp>
  a2eb84:	048d                	addi	s1,s1,3
  a2eb86:	e119                	bnez	a0,a2eb8c <upg_check_first_entry+0x3a>
  a2eb88:	0405                	addi	s0,s0,1 # 1001 <ccause+0x3f>
  a2eb8a:	b7d5                	j	a2eb6e <upg_check_first_entry+0x1c>
  a2eb8c:	4501                	li	a0,0
  a2eb8e:	b7ed                	j	a2eb78 <upg_check_first_entry+0x26>

00a2eb90 <uapi_upg_start>:
  a2eb90:	82d8                	push	{ra,s0-s11},-96
  a2eb92:	c602                	sw	zero,12(sp)
  a2eb94:	c802                	sw	zero,16(sp)
  a2eb96:	e94ff0ef          	jal	ra,a2e22a <upg_is_inited>
  a2eb9a:	3e050063          	beqz	a0,a2ef7a <uapi_upg_start+0x3ea>
  a2eb9e:	84aa                	mv	s1,a0
  a2eba0:	0068                	addi	a0,sp,12
  a2eba2:	95aff0ef          	jal	ra,a2dcfc <upg_alloc_and_get_upgrade_flag>
  a2eba6:	892a                	mv	s2,a0
  a2eba8:	4501                	li	a0,0
  a2ebaa:	02091b63          	bnez	s2,a2ebe0 <uapi_upg_start+0x50>
  a2ebae:	47b2                	lw	a5,12(sp)
  a2ebb0:	cb85                	beqz	a5,a2ebe0 <uapi_upg_start+0x50>
  a2ebb2:	4394                	lw	a3,0(a5)
  a2ebb4:	55aa 55aa 071f      	l.li	a4,0x55aa55aa
  a2ebba:	00e69a63          	bne	a3,a4,a2ebce <uapi_upg_start+0x3e>
  a2ebbe:	57b4                	lw	a3,104(a5)
  a2ebc0:	aa55 aa55 071f      	l.li	a4,0xaa55aa55
  a2ebc6:	00e69463          	bne	a3,a4,a2ebce <uapi_upg_start+0x3e>
  a2ebca:	53fc                	lw	a5,100(a5)
  a2ebcc:	e795                	bnez	a5,a2ebf8 <uapi_upg_start+0x68>
  a2ebce:	00a3 39d4 051f      	l.li	a0,0xa339d4
  a2ebd4:	cfcfd0ef          	jal	ra,a2c0d0 <print_str>
  a2ebd8:	4501                	li	a0,0
  a2ebda:	8000 3047 091f      	l.li	s2,0x80003047
  a2ebe0:	8626                	mv	a2,s1
  a2ebe2:	85ca                	mv	a1,s2
  a2ebe4:	d84ff0ef          	jal	ra,a2e168 <upg_set_complete_flag>
  a2ebe8:	4532                	lw	a0,12(sp)
  a2ebea:	8daff0ef          	jal	ra,a2dcc4 <upg_free>
  a2ebee:	4542                	lw	a0,16(sp)
  a2ebf0:	8d4ff0ef          	jal	ra,a2dcc4 <upg_free>
  a2ebf4:	854a                	mv	a0,s2
  a2ebf6:	82d4                	popret	{ra,s0-s11},96
  a2ebf8:	0808                	addi	a0,sp,16
  a2ebfa:	a66ff0ef          	jal	ra,a2de60 <upg_get_package_header>
  a2ebfe:	892a                	mv	s2,a0
  a2ec00:	e119                	bnez	a0,a2ec06 <uapi_upg_start+0x76>
  a2ec02:	47c2                	lw	a5,16(sp)
  a2ec04:	eb81                	bnez	a5,a2ec14 <uapi_upg_start+0x84>
  a2ec06:	00a3 37cc 051f      	l.li	a0,0xa337cc
  a2ec0c:	cc4fd0ef          	jal	ra,a2c0d0 <print_str>
  a2ec10:	4501                	li	a0,0
  a2ec12:	b7f9                	j	a2ebe0 <uapi_upg_start+0x50>
  a2ec14:	4532                	lw	a0,12(sp)
  a2ec16:	f3dff0ef          	jal	ra,a2eb52 <upg_check_first_entry>
  a2ec1a:	842a                	mv	s0,a0
  a2ec1c:	ed05                	bnez	a0,a2ec54 <uapi_upg_start+0xc4>
  a2ec1e:	8d6ff0ef          	jal	ra,a2dcf4 <upg_get_ctx>
  a2ec22:	49c2                	lw	s3,16(sp)
  a2ec24:	cc02                	sw	zero,24(sp)
  a2ec26:	00052e23          	sw	zero,28(a0)
  a2ec2a:	02052023          	sw	zero,32(a0)
  a2ec2e:	842a                	mv	s0,a0
  a2ec30:	082c                	addi	a1,sp,24
  a2ec32:	854e                	mv	a0,s3
  a2ec34:	4b32                	lw	s6,12(sp)
  a2ec36:	a4cff0ef          	jal	ra,a2de82 <upg_get_pkg_image_hash_table>
  a2ec3a:	892a                	mv	s2,a0
  a2ec3c:	c11d                	beqz	a0,a2ec62 <uapi_upg_start+0xd2>
  a2ec3e:	00a3 352c 051f      	l.li	a0,0xa3352c
  a2ec44:	c8cfd0ef          	jal	ra,a2c0d0 <print_str>
  a2ec48:	04090563          	beqz	s2,a2ec92 <uapi_upg_start+0x102>
  a2ec4c:	4505                	li	a0,1
  a2ec4e:	cb0ff0ef          	jal	ra,a2e0fe <upg_set_temporary_result>
  a2ec52:	bf7d                	j	a2ec10 <uapi_upg_start+0x80>
  a2ec54:	4542                	lw	a0,16(sp)
  a2ec56:	949ff0ef          	jal	ra,a2e59e <uapi_upg_verify_file>
  a2ec5a:	892a                	mv	s2,a0
  a2ec5c:	d169                	beqz	a0,a2ec1e <uapi_upg_start+0x8e>
  a2ec5e:	84a2                	mv	s1,s0
  a2ec60:	bf45                	j	a2ec10 <uapi_upg_start+0x80>
  a2ec62:	47e2                	lw	a5,24(sp)
  a2ec64:	dfe9                	beqz	a5,a2ec3e <uapi_upg_start+0xae>
  a2ec66:	1489aa83          	lw	s5,328(s3)
  a2ec6a:	4a01                	li	s4,0
  a2ec6c:	4981                	li	s3,0
  a2ec6e:	02c00b93          	li	s7,44
  a2ec72:	cb9e 063c 0c1f      	l.li	s8,0xcb9e063c
  a2ec78:	4c8d                	li	s9,3
  a2ec7a:	4562                	lw	a0,24(sp)
  a2ec7c:	075a4863          	blt	s4,s5,a2ecec <uapi_upg_start+0x15c>
  a2ec80:	844ff0ef          	jal	ra,a2dcc4 <upg_free>
  a2ec84:	5010                	lw	a2,32(s0)
  a2ec86:	4c4c                	lw	a1,28(s0)
  a2ec88:	00a3 39f4 051f      	l.li	a0,0xa339f4
  a2ec8e:	c42fd0ef          	jal	ra,a2c0d0 <print_str>
  a2ec92:	44c2                	lw	s1,16(sp)
  a2ec94:	4432                	lw	s0,12(sp)
  a2ec96:	00a3 3a28 051f      	l.li	a0,0xa33a28
  a2ec9c:	1484aa83          	lw	s5,328(s1)
  a2eca0:	ca02                	sw	zero,20(sp)
  a2eca2:	85d6                	mv	a1,s5
  a2eca4:	c2cfd0ef          	jal	ra,a2c0d0 <print_str>
  a2eca8:	444c                	lw	a1,12(s0)
  a2ecaa:	00a3 3a4c 051f      	l.li	a0,0xa33a4c
  a2ecb0:	c20fd0ef          	jal	ra,a2c0d0 <print_str>
  a2ecb4:	445c                	lw	a5,12(s0)
  a2ecb6:	00fa8663          	beq	s5,a5,a2ecc2 <uapi_upg_start+0x132>
  a2ecba:	fffa8713          	addi	a4,s5,-1
  a2ecbe:	2ae79a63          	bne	a5,a4,a2ef72 <uapi_upg_start+0x3e2>
  a2ecc2:	4755                	li	a4,21
  a2ecc4:	2ae7f763          	bgeu	a5,a4,a2ef72 <uapi_upg_start+0x3e2>
  a2ecc8:	084c                	addi	a1,sp,20
  a2ecca:	8526                	mv	a0,s1
  a2eccc:	9b6ff0ef          	jal	ra,a2de82 <upg_get_pkg_image_hash_table>
  a2ecd0:	892a                	mv	s2,a0
  a2ecd2:	e119                	bnez	a0,a2ecd8 <uapi_upg_start+0x148>
  a2ecd4:	44d2                	lw	s1,20(sp)
  a2ecd6:	eca5                	bnez	s1,a2ed4e <uapi_upg_start+0x1be>
  a2ecd8:	00a3 352c 051f      	l.li	a0,0xa3352c
  a2ecde:	bf2fd0ef          	jal	ra,a2c0d0 <print_str>
  a2ece2:	47c2                	lw	a5,16(sp)
  a2ece4:	4481                	li	s1,0
  a2ece6:	1487a503          	lw	a0,328(a5)
  a2ecea:	bddd                	j	a2ebe0 <uapi_upg_start+0x50>
  a2ecec:	037a0d33          	mul	s10,s4,s7
  a2ecf0:	956a                	add	a0,a0,s10
  a2ecf2:	411c                	lw	a5,0(a0)
  a2ecf4:	01879663          	bne	a5,s8,a2ed00 <uapi_upg_start+0x170>
  a2ecf8:	19fd                	addi	s3,s3,-1
  a2ecfa:	0a05                	addi	s4,s4,1 # 1001 <ccause+0x3f>
  a2ecfc:	0985                	addi	s3,s3,1
  a2ecfe:	bfb5                	j	a2ec7a <uapi_upg_start+0xea>
  a2ed00:	086c                	addi	a1,sp,28
  a2ed02:	ce02                	sw	zero,28(sp)
  a2ed04:	9b2ff0ef          	jal	ra,a2deb6 <upg_get_pkg_image_header>
  a2ed08:	892a                	mv	s2,a0
  a2ed0a:	e119                	bnez	a0,a2ed10 <uapi_upg_start+0x180>
  a2ed0c:	47f2                	lw	a5,28(sp)
  a2ed0e:	eb91                	bnez	a5,a2ed22 <uapi_upg_start+0x192>
  a2ed10:	00a3 3580 051f      	l.li	a0,0xa33580
  a2ed16:	bbafd0ef          	jal	ra,a2c0d0 <print_str>
  a2ed1a:	4562                	lw	a0,24(sp)
  a2ed1c:	fa9fe0ef          	jal	ra,a2dcc4 <upg_free>
  a2ed20:	b725                	j	a2ec48 <uapi_upg_start+0xb8>
  a2ed22:	4bfc                	lw	a5,84(a5)
  a2ed24:	4c58                	lw	a4,28(s0)
  a2ed26:	85ce                	mv	a1,s3
  a2ed28:	855a                	mv	a0,s6
  a2ed2a:	973e                	add	a4,a4,a5
  a2ed2c:	cc58                	sw	a4,28(s0)
  a2ed2e:	47e2                	lw	a5,24(sp)
  a2ed30:	97ea                	add	a5,a5,s10
  a2ed32:	4390                	lw	a2,0(a5)
  a2ed34:	b4cff0ef          	jal	ra,a2e080 <upg_get_image_update_status>
  a2ed38:	01951763          	bne	a0,s9,a2ed46 <uapi_upg_start+0x1b6>
  a2ed3c:	4772                	lw	a4,28(sp)
  a2ed3e:	501c                	lw	a5,32(s0)
  a2ed40:	4b78                	lw	a4,84(a4)
  a2ed42:	97ba                	add	a5,a5,a4
  a2ed44:	d01c                	sw	a5,32(s0)
  a2ed46:	4572                	lw	a0,28(sp)
  a2ed48:	f7dfe0ef          	jal	ra,a2dcc4 <upg_free>
  a2ed4c:	b77d                	j	a2ecfa <uapi_upg_start+0x16a>
  a2ed4e:	cc02                	sw	zero,24(sp)
  a2ed50:	4981                	li	s3,0
  a2ed52:	4b01                	li	s6,0
  a2ed54:	cb9e 063c 0a1f      	l.li	s4,0xcb9e063c
  a2ed5a:	80003bb7          	lui	s7,0x80003
  a2ed5e:	00a34d37          	lui	s10,0xa34
  a2ed62:	00a34db7          	lui	s11,0xa34
  a2ed66:	055b5963          	bge	s6,s5,a2edb8 <uapi_upg_start+0x228>
  a2ed6a:	4088                	lw	a0,0(s1)
  a2ed6c:	01451363          	bne	a0,s4,a2ed72 <uapi_upg_start+0x1e2>
  a2ed70:	19fd                	addi	s3,s3,-1
  a2ed72:	e1efe0ef          	jal	ra,a2d390 <upg_img_in_set>
  a2ed76:	cd19                	beqz	a0,a2ed94 <uapi_upg_start+0x204>
  a2ed78:	4090                	lw	a2,0(s1)
  a2ed7a:	85ce                	mv	a1,s3
  a2ed7c:	8522                	mv	a0,s0
  a2ed7e:	b02ff0ef          	jal	ra,a2e080 <upg_get_image_update_status>
  a2ed82:	8c2a                	mv	s8,a0
  a2ed84:	030516bb          	bnei	a0,3,a2ed9e <uapi_upg_start+0x20e>
  a2ed88:	408c                	lw	a1,0(s1)
  a2ed8a:	00a3 3a74 051f      	l.li	a0,0xa33a74
  a2ed90:	b40fd0ef          	jal	ra,a2c0d0 <print_str>
  a2ed94:	0b05                	addi	s6,s6,1
  a2ed96:	0985                	addi	s3,s3,1
  a2ed98:	02c48493          	addi	s1,s1,44
  a2ed9c:	b7e9                	j	a2ed66 <uapi_upg_start+0x1d6>
  a2ed9e:	082c                	addi	a1,sp,24
  a2eda0:	8526                	mv	a0,s1
  a2eda2:	914ff0ef          	jal	ra,a2deb6 <upg_get_pkg_image_header>
  a2eda6:	892a                	mv	s2,a0
  a2eda8:	e119                	bnez	a0,a2edae <uapi_upg_start+0x21e>
  a2edaa:	47e2                	lw	a5,24(sp)
  a2edac:	e795                	bnez	a5,a2edd8 <uapi_upg_start+0x248>
  a2edae:	00a3 3aa4 051f      	l.li	a0,0xa33aa4
  a2edb4:	b1cfd0ef          	jal	ra,a2c0d0 <print_str>
  a2edb8:	4562                	lw	a0,24(sp)
  a2edba:	c119                	beqz	a0,a2edc0 <uapi_upg_start+0x230>
  a2edbc:	f09fe0ef          	jal	ra,a2dcc4 <upg_free>
  a2edc0:	00090863          	beqz	s2,a2edd0 <uapi_upg_start+0x240>
  a2edc4:	85ca                	mv	a1,s2
  a2edc6:	00a3 3c5c 051f      	l.li	a0,0xa33c5c
  a2edcc:	b04fd0ef          	jal	ra,a2c0d0 <print_str>
  a2edd0:	4552                	lw	a0,20(sp)
  a2edd2:	ef3fe0ef          	jal	ra,a2dcc4 <upg_free>
  a2edd6:	b731                	j	a2ece2 <uapi_upg_start+0x152>
  a2edd8:	43dc                	lw	a5,4(a5)
  a2edda:	13478163          	beq	a5,s4,a2eefc <uapi_upg_start+0x36c>
  a2edde:	4601                	li	a2,0
  a2ede0:	85ce                	mv	a1,s3
  a2ede2:	8522                	mv	a0,s0
  a2ede4:	9aaff0ef          	jal	ra,a2df8e <upg_set_firmware_update_status>
  a2ede8:	892a                	mv	s2,a0
  a2edea:	c509                	beqz	a0,a2edf4 <uapi_upg_start+0x264>
  a2edec:	00a3 3acc 051f      	l.li	a0,0xa33acc
  a2edf2:	b7c9                	j	a2edb4 <uapi_upg_start+0x224>
  a2edf4:	47e2                	lw	a5,24(sp)
  a2edf6:	af8d0513          	addi	a0,s10,-1288 # a33af8 <g_efuse_cfg+0x1238>
  a2edfa:	43cc                	lw	a1,4(a5)
  a2edfc:	ad4fd0ef          	jal	ra,a2c0d0 <print_str>
  a2ee00:	4962                	lw	s2,24(sp)
  a2ee02:	040c1963          	bnez	s8,a2ee54 <uapi_upg_start+0x2c4>
  a2ee06:	af4ff0ef          	jal	ra,a2e0fa <upg_flash_erase_metadata_pages>
  a2ee0a:	8caa                	mv	s9,a0
  a2ee0c:	c521                	beqz	a0,a2ee54 <uapi_upg_start+0x2c4>
  a2ee0e:	00a3 3b24 051f      	l.li	a0,0xa33b24
  a2ee14:	abcfd0ef          	jal	ra,a2c0d0 <print_str>
  a2ee18:	4c05                	li	s8,1
  a2ee1a:	85e2                	mv	a1,s8
  a2ee1c:	bb8d8513          	addi	a0,s11,-1096 # a33bb8 <g_efuse_cfg+0x12f8>
  a2ee20:	ab0fd0ef          	jal	ra,a2c0d0 <print_str>
  a2ee24:	8662                	mv	a2,s8
  a2ee26:	85ce                	mv	a1,s3
  a2ee28:	8522                	mv	a0,s0
  a2ee2a:	964ff0ef          	jal	ra,a2df8e <upg_set_firmware_update_status>
  a2ee2e:	892a                	mv	s2,a0
  a2ee30:	000c8363          	beqz	s9,a2ee36 <uapi_upg_start+0x2a6>
  a2ee34:	8966                	mv	s2,s9
  a2ee36:	85ca                	mv	a1,s2
  a2ee38:	00a3 3bd8 051f      	l.li	a0,0xa33bd8
  a2ee3e:	a92fd0ef          	jal	ra,a2c0d0 <print_str>
  a2ee42:	f6091be3          	bnez	s2,a2edb8 <uapi_upg_start+0x228>
  a2ee46:	4562                	lw	a0,24(sp)
  a2ee48:	e7dfe0ef          	jal	ra,a2dcc4 <upg_free>
  a2ee4c:	cc02                	sw	zero,24(sp)
  a2ee4e:	df2fe0ef          	jal	ra,a2d440 <upg_watchdog_kick>
  a2ee52:	b789                	j	a2ed94 <uapi_upg_start+0x204>
  a2ee54:	001c3693          	seqz	a3,s8
  a2ee58:	02000613          	li	a2,32
  a2ee5c:	00c48593          	addi	a1,s1,12
  a2ee60:	854a                	mv	a0,s2
  a2ee62:	eb0ff0ef          	jal	ra,a2e512 <uapi_upg_verify_file_image>
  a2ee66:	8caa                	mv	s9,a0
  a2ee68:	4c05                	li	s8,1
  a2ee6a:	f945                	bnez	a0,a2ee1a <uapi_upg_start+0x28a>
  a2ee6c:	00492683          	lw	a3,4(s2)
  a2ee70:	cb9e1737          	lui	a4,0xcb9e1
  a2ee74:	82670613          	addi	a2,a4,-2010 # cb9e0826 <_gp_+0xcafabf9e>
  a2ee78:	046b8c93          	addi	s9,s7,70 # 80003046 <_gp_+0x7f5ce7be>
  a2ee7c:	f8c68fe3          	beq	a3,a2,a2ee1a <uapi_upg_start+0x28a>
  a2ee80:	83270713          	addi	a4,a4,-1998
  a2ee84:	f8e68be3          	beq	a3,a4,a2ee1a <uapi_upg_start+0x28a>
  a2ee88:	06092583          	lw	a1,96(s2)
  a2ee8c:	00a3 3b54 051f      	l.li	a0,0xa33b54
  a2ee92:	a3efd0ef          	jal	ra,a2c0d0 <print_str>
  a2ee96:	06092783          	lw	a5,96(s2)
  a2ee9a:	3c78 96e1 071f      	l.li	a4,0x3c7896e1
  a2eea0:	02e79363          	bne	a5,a4,a2eec6 <uapi_upg_start+0x336>
  a2eea4:	00a3 3b78 051f      	l.li	a0,0xa33b78
  a2eeaa:	a26fd0ef          	jal	ra,a2c0d0 <print_str>
  a2eeae:	854a                	mv	a0,s2
  a2eeb0:	f0efe0ef          	jal	ra,a2d5be <upg_erase_whole_image>
  a2eeb4:	8caa                	mv	s9,a0
  a2eeb6:	f135                	bnez	a0,a2ee1a <uapi_upg_start+0x28a>
  a2eeb8:	854a                	mv	a0,s2
  a2eeba:	2add                	jal	ra,a2f0b0 <uapi_upg_compress_image_update>
  a2eebc:	00153c13          	seqz	s8,a0
  a2eec0:	8caa                	mv	s9,a0
  a2eec2:	0c05                	addi	s8,s8,1 # 1001 <ccause+0x3f>
  a2eec4:	bf99                	j	a2ee1a <uapi_upg_start+0x28a>
  a2eec6:	4449 4646 071f      	l.li	a4,0x44494646
  a2eecc:	00e79a63          	bne	a5,a4,a2eee0 <uapi_upg_start+0x350>
  a2eed0:	00a3 3b90 051f      	l.li	a0,0xa33b90
  a2eed6:	9fafd0ef          	jal	ra,a2c0d0 <print_str>
  a2eeda:	854a                	mv	a0,s2
  a2eedc:	2c3d                	jal	ra,a2f11a <uapi_upg_diff_image_update>
  a2eede:	bff9                	j	a2eebc <uapi_upg_start+0x32c>
  a2eee0:	00a3 3ba4 051f      	l.li	a0,0xa33ba4
  a2eee6:	9eafd0ef          	jal	ra,a2c0d0 <print_str>
  a2eeea:	854a                	mv	a0,s2
  a2eeec:	ed2fe0ef          	jal	ra,a2d5be <upg_erase_whole_image>
  a2eef0:	8caa                	mv	s9,a0
  a2eef2:	f20514e3          	bnez	a0,a2ee1a <uapi_upg_start+0x28a>
  a2eef6:	854a                	mv	a0,s2
  a2eef8:	242d                	jal	ra,a2f122 <uapi_upg_full_image_update>
  a2eefa:	b7c9                	j	a2eebc <uapi_upg_start+0x32c>
  a2eefc:	00a347b7          	lui	a5,0xa34
  a2ef00:	c0878513          	addi	a0,a5,-1016 # a33c08 <g_efuse_cfg+0x1348>
  a2ef04:	85d2                	mv	a1,s4
  a2ef06:	9cafd0ef          	jal	ra,a2c0d0 <print_str>
  a2ef0a:	47e2                	lw	a5,24(sp)
  a2ef0c:	00a346b7          	lui	a3,0xa34
  a2ef10:	9d06a903          	lw	s2,-1584(a3) # a339d0 <g_efuse_cfg+0x1110>
  a2ef14:	43d8                	lw	a4,4(a5)
  a2ef16:	05471663          	bne	a4,s4,a2ef62 <uapi_upg_start+0x3d2>
  a2ef1a:	4794                	lw	a3,8(a5)
  a2ef1c:	40d8                	lw	a4,4(s1)
  a2ef1e:	0868                	addi	a0,sp,28
  a2ef20:	c874                	sw	a3,84(s0)
  a2ef22:	47dc                	lw	a5,12(a5)
  a2ef24:	07bd                	addi	a5,a5,15
  a2ef26:	9bc1                	andi	a5,a5,-16
  a2ef28:	cc3c                	sw	a5,88(s0)
  a2ef2a:	01070793          	addi	a5,a4,16
  a2ef2e:	cc7c                	sw	a5,92(s0)
  a2ef30:	02000793          	li	a5,32
  a2ef34:	d03c                	sw	a5,96(s0)
  a2ef36:	ce02                	sw	zero,28(sp)
  a2ef38:	c7efe0ef          	jal	ra,a2d3b6 <upg_get_upgrade_flag_flash_start_addr>
  a2ef3c:	892a                	mv	s2,a0
  a2ef3e:	e115                	bnez	a0,a2ef62 <uapi_upg_start+0x3d2>
  a2ef40:	4572                	lw	a0,28(sp)
  a2ef42:	4681                	li	a3,0
  a2ef44:	05440613          	addi	a2,s0,84
  a2ef48:	45c1                	li	a1,16
  a2ef4a:	05450513          	addi	a0,a0,84
  a2ef4e:	dc6fe0ef          	jal	ra,a2d514 <upg_flash_write>
  a2ef52:	892a                	mv	s2,a0
  a2ef54:	e519                	bnez	a0,a2ef62 <uapi_upg_start+0x3d2>
  a2ef56:	4601                	li	a2,0
  a2ef58:	85d2                	mv	a1,s4
  a2ef5a:	8522                	mv	a0,s0
  a2ef5c:	832ff0ef          	jal	ra,a2df8e <upg_set_firmware_update_status>
  a2ef60:	892a                	mv	s2,a0
  a2ef62:	00a347b7          	lui	a5,0xa34
  a2ef66:	85ca                	mv	a1,s2
  a2ef68:	c3078513          	addi	a0,a5,-976 # a33c30 <g_efuse_cfg+0x1370>
  a2ef6c:	964fd0ef          	jal	ra,a2c0d0 <print_str>
  a2ef70:	bdd9                	j	a2ee46 <uapi_upg_start+0x2b6>
  a2ef72:	8000 3043 091f      	l.li	s2,0x80003043
  a2ef78:	b3ad                	j	a2ece2 <uapi_upg_start+0x152>
  a2ef7a:	4485                	li	s1,1
  a2ef7c:	4501                	li	a0,0
  a2ef7e:	8000 3040 091f      	l.li	s2,0x80003040
  a2ef84:	b9b1                	j	a2ebe0 <uapi_upg_start+0x50>

00a2ef86 <uapi_upg_register_progress_callback>:
  a2ef86:	8028                	push	{ra,s0},-16
  a2ef88:	842a                	mv	s0,a0
  a2ef8a:	d6bfe0ef          	jal	ra,a2dcf4 <upg_get_ctx>
  a2ef8e:	cd00                	sw	s0,24(a0)
  a2ef90:	4501                	li	a0,0
  a2ef92:	8024                	popret	{ra,s0},16

00a2ef94 <upg_calculate_and_notify_process>:
  a2ef94:	8038                	push	{ra,s0-s1},-16
  a2ef96:	842a                	mv	s0,a0
  a2ef98:	d5dfe0ef          	jal	ra,a2dcf4 <upg_get_ctx>
  a2ef9c:	84aa                	mv	s1,a0
  a2ef9e:	d57fe0ef          	jal	ra,a2dcf4 <upg_get_ctx>
  a2efa2:	4d1c                	lw	a5,24(a0)
  a2efa4:	cb85                	beqz	a5,a2efd4 <upg_calculate_and_notify_process+0x40>
  a2efa6:	5088                	lw	a0,32(s1)
  a2efa8:	9522                	add	a0,a0,s0
  a2efaa:	4cc0                	lw	s0,28(s1)
  a2efac:	d088                	sw	a0,32(s1)
  a2efae:	c419                	beqz	s0,a2efbc <upg_calculate_and_notify_process+0x28>
  a2efb0:	06400793          	li	a5,100
  a2efb4:	02f50533          	mul	a0,a0,a5
  a2efb8:	02855433          	divu	s0,a0,s0
  a2efbc:	00a0 5b04 049f      	l.li	s1,0xa05b04
  a2efc2:	409c                	lw	a5,0(s1)
  a2efc4:	00878863          	beq	a5,s0,a2efd4 <upg_calculate_and_notify_process+0x40>
  a2efc8:	d2dfe0ef          	jal	ra,a2dcf4 <upg_get_ctx>
  a2efcc:	4d1c                	lw	a5,24(a0)
  a2efce:	8522                	mv	a0,s0
  a2efd0:	9782                	jalr	a5
  a2efd2:	c080                	sw	s0,0(s1)
  a2efd4:	8034                	popret	{ra,s0-s1},16

00a2efd6 <upg_write_new_image_data>:
  a2efd6:	8248                	push	{ra,s0-s2},-48
  a2efd8:	ca02                	sw	zero,20(sp)
  a2efda:	cc02                	sw	zero,24(sp)
  a2efdc:	ce02                	sw	zero,28(sp)
  a2efde:	4b87 a52d 079f      	l.li	a5,0x4b87a52d
  a2efe4:	842a                	mv	s0,a0
  a2efe6:	892e                	mv	s2,a1
  a2efe8:	84b2                	mv	s1,a2
  a2efea:	02f69363          	bne	a3,a5,a2f010 <upg_write_new_image_data+0x3a>
  a2efee:	002007b7          	lui	a5,0x200
  a2eff2:	cc3e                	sw	a5,24(sp)
  a2eff4:	78000793          	li	a5,1920
  a2eff8:	ce3e                	sw	a5,28(sp)
  a2effa:	01414783          	lbu	a5,20(sp)
  a2effe:	e38d                	bnez	a5,a2f020 <upg_write_new_image_data+0x4a>
  a2f000:	4562                	lw	a0,24(sp)
  a2f002:	408c                	lw	a1,0(s1)
  a2f004:	86ba                	mv	a3,a4
  a2f006:	864a                	mv	a2,s2
  a2f008:	9522                	add	a0,a0,s0
  a2f00a:	d0afe0ef          	jal	ra,a2d514 <upg_flash_write>
  a2f00e:	a801                	j	a2f01e <upg_write_new_image_data+0x48>
  a2f010:	8536                	mv	a0,a3
  a2f012:	084c                	addi	a1,sp,20
  a2f014:	c63a                	sw	a4,12(sp)
  a2f016:	d49fe0ef          	jal	ra,a2dd5e <upg_get_image_info>
  a2f01a:	4732                	lw	a4,12(sp)
  a2f01c:	dd79                	beqz	a0,a2effa <upg_write_new_image_data+0x24>
  a2f01e:	8244                	popret	{ra,s0-s2},48
  a2f020:	8000 3004 051f      	l.li	a0,0x80003004
  a2f026:	bfe5                	j	a2f01e <upg_write_new_image_data+0x48>

00a2f028 <uapi_upg_lzma_ota_image>:
  a2f028:	8a58                	push	{ra,s0-s3},-192
  a2f02a:	842e                	mv	s0,a1
  a2f02c:	89b2                	mv	s3,a2
  a2f02e:	4581                	li	a1,0
  a2f030:	02400613          	li	a2,36
  a2f034:	84aa                	mv	s1,a0
  a2f036:	0828                	addi	a0,sp,24
  a2f038:	8936                	mv	s2,a3
  a2f03a:	c63a                	sw	a4,12(sp)
  a2f03c:	969f90ef          	jal	ra,a289a4 <memset>
  a2f040:	8622                	mv	a2,s0
  a2f042:	86ce                	mv	a3,s3
  a2f044:	082c                	addi	a1,sp,24
  a2f046:	1868                	addi	a0,sp,60
  a2f048:	8a5ff0ef          	jal	ra,a2e8ec <upg_lzma_init>
  a2f04c:	842a                	mv	s0,a0
  a2f04e:	e915                	bnez	a0,a2f082 <uapi_upg_lzma_ota_image+0x5a>
  a2f050:	44d0                	lw	a2,12(s1)
  a2f052:	40dc                	lw	a5,4(s1)
  a2f054:	4732                	lw	a4,12(sp)
  a2f056:	41360633          	sub	a2,a2,s3
  a2f05a:	d232                	sw	a2,36(sp)
  a2f05c:	5622                	lw	a2,40(sp)
  a2f05e:	cc3e                	sw	a5,24(sp)
  a2f060:	ce3a                	sw	a4,28(sp)
  a2f062:	d002                	sw	zero,32(sp)
  a2f064:	02c97163          	bgeu	s2,a2,a2f086 <uapi_upg_lzma_ota_image+0x5e>
  a2f068:	85ca                	mv	a1,s2
  a2f06a:	00a3 3c94 051f      	l.li	a0,0xa33c94
  a2f070:	860fd0ef          	jal	ra,a2c0d0 <print_str>
  a2f074:	082c                	addi	a1,sp,24
  a2f076:	1868                	addi	a0,sp,60
  a2f078:	917ff0ef          	jal	ra,a2e98e <upg_lzma_deinit>
  a2f07c:	8000 3051 041f      	l.li	s0,0x80003051
  a2f082:	8522                	mv	a0,s0
  a2f084:	8a54                	popret	{ra,s0-s3},192
  a2f086:	8626                	mv	a2,s1
  a2f088:	082c                	addi	a1,sp,24
  a2f08a:	1868                	addi	a0,sp,60
  a2f08c:	a4bff0ef          	jal	ra,a2ead6 <upg_lzma_decode>
  a2f090:	842a                	mv	s0,a0
  a2f092:	c911                	beqz	a0,a2f0a6 <uapi_upg_lzma_ota_image+0x7e>
  a2f094:	85aa                	mv	a1,a0
  a2f096:	00a3 3cdc 051f      	l.li	a0,0xa33cdc
  a2f09c:	834fd0ef          	jal	ra,a2c0d0 <print_str>
  a2f0a0:	8000 3062 041f      	l.li	s0,0x80003062
  a2f0a6:	082c                	addi	a1,sp,24
  a2f0a8:	1868                	addi	a0,sp,60
  a2f0aa:	8e5ff0ef          	jal	ra,a2e98e <upg_lzma_deinit>
  a2f0ae:	bfd1                	j	a2f082 <uapi_upg_lzma_ota_image+0x5a>

00a2f0b0 <uapi_upg_compress_image_update>:
  a2f0b0:	8258                	push	{ra,s0-s3},-64
  a2f0b2:	47c1                	li	a5,16
  a2f0b4:	0814                	addi	a3,sp,16
  a2f0b6:	0050                	addi	a2,sp,4
  a2f0b8:	4581                	li	a1,0
  a2f0ba:	84aa                	mv	s1,a0
  a2f0bc:	00852903          	lw	s2,8(a0)
  a2f0c0:	c802                	sw	zero,16(sp)
  a2f0c2:	ca02                	sw	zero,20(sp)
  a2f0c4:	cc02                	sw	zero,24(sp)
  a2f0c6:	ce02                	sw	zero,28(sp)
  a2f0c8:	c23e                	sw	a5,4(sp)
  a2f0ca:	c402                	sw	zero,8(sp)
  a2f0cc:	c602                	sw	zero,12(sp)
  a2f0ce:	e7dfe0ef          	jal	ra,a2df4a <upg_copy_pkg_image_data>
  a2f0d2:	842a                	mv	s0,a0
  a2f0d4:	e129                	bnez	a0,a2f116 <uapi_upg_compress_image_update+0x66>
  a2f0d6:	8526                	mv	a0,s1
  a2f0d8:	cfcfe0ef          	jal	ra,a2d5d4 <upg_cryto_init>
  a2f0dc:	842a                	mv	s0,a0
  a2f0de:	ed05                	bnez	a0,a2f116 <uapi_upg_compress_image_update+0x66>
  a2f0e0:	4592                	lw	a1,4(sp)
  a2f0e2:	8626                	mv	a2,s1
  a2f0e4:	0808                	addi	a0,sp,16
  a2f0e6:	e44fe0ef          	jal	ra,a2d72a <upg_decry_fota_pkt>
  a2f0ea:	842a                	mv	s0,a0
  a2f0ec:	e115                	bnez	a0,a2f110 <uapi_upg_compress_image_update+0x60>
  a2f0ee:	40c8                	lw	a0,4(s1)
  a2f0f0:	0070                	addi	a2,sp,12
  a2f0f2:	002c                	addi	a1,sp,8
  a2f0f4:	4992                	lw	s3,4(sp)
  a2f0f6:	d21fe0ef          	jal	ra,a2de16 <upg_get_partition_info>
  a2f0fa:	842a                	mv	s0,a0
  a2f0fc:	e911                	bnez	a0,a2f110 <uapi_upg_compress_image_update+0x60>
  a2f0fe:	46b2                	lw	a3,12(sp)
  a2f100:	01298733          	add	a4,s3,s2
  a2f104:	4641                	li	a2,16
  a2f106:	080c                	addi	a1,sp,16
  a2f108:	8526                	mv	a0,s1
  a2f10a:	f1fff0ef          	jal	ra,a2f028 <uapi_upg_lzma_ota_image>
  a2f10e:	842a                	mv	s0,a0
  a2f110:	8526                	mv	a0,s1
  a2f112:	dd0fe0ef          	jal	ra,a2d6e2 <upg_cryto_deinit>
  a2f116:	8522                	mv	a0,s0
  a2f118:	8254                	popret	{ra,s0-s3},64

00a2f11a <uapi_upg_diff_image_update>:
  a2f11a:	8000 3046 051f      	l.li	a0,0x80003046
  a2f120:	8082                	ret

00a2f122 <uapi_upg_full_image_update>:
  a2f122:	8188                	push	{ra,s0-s6},-48
  a2f124:	00852a83          	lw	s5,8(a0)
  a2f128:	8a2a                	mv	s4,a0
  a2f12a:	4148                	lw	a0,4(a0)
  a2f12c:	0030                	addi	a2,sp,8
  a2f12e:	004c                	addi	a1,sp,4
  a2f130:	c202                	sw	zero,4(sp)
  a2f132:	c402                	sw	zero,8(sp)
  a2f134:	ce3fe0ef          	jal	ra,a2de16 <upg_get_partition_info>
  a2f138:	842a                	mv	s0,a0
  a2f13a:	e921                	bnez	a0,a2f18a <uapi_upg_full_image_update+0x68>
  a2f13c:	00ca2703          	lw	a4,12(s4)
  a2f140:	47a2                	lw	a5,8(sp)
  a2f142:	06e7e963          	bltu	a5,a4,a2f1b4 <uapi_upg_full_image_update+0x92>
  a2f146:	6505                	lui	a0,0x1
  a2f148:	c602                	sw	zero,12(sp)
  a2f14a:	b61fe0ef          	jal	ra,a2dcaa <upg_malloc>
  a2f14e:	84aa                	mv	s1,a0
  a2f150:	c525                	beqz	a0,a2f1b8 <uapi_upg_full_image_update+0x96>
  a2f152:	4901                	li	s2,0
  a2f154:	6b05                	lui	s6,0x1
  a2f156:	00ca2783          	lw	a5,12(s4)
  a2f15a:	00f96663          	bltu	s2,a5,a2f166 <uapi_upg_full_image_update+0x44>
  a2f15e:	8526                	mv	a0,s1
  a2f160:	b65fe0ef          	jal	ra,a2dcc4 <upg_free>
  a2f164:	a01d                	j	a2f18a <uapi_upg_full_image_update+0x68>
  a2f166:	412787b3          	sub	a5,a5,s2
  a2f16a:	00fb7363          	bgeu	s6,a5,a2f170 <uapi_upg_full_image_update+0x4e>
  a2f16e:	6785                	lui	a5,0x1
  a2f170:	0070                	addi	a2,sp,12
  a2f172:	85a6                	mv	a1,s1
  a2f174:	01590533          	add	a0,s2,s5
  a2f178:	c63e                	sw	a5,12(sp)
  a2f17a:	c2bfe0ef          	jal	ra,a2dda4 <upg_read_fota_pkg_data>
  a2f17e:	89aa                	mv	s3,a0
  a2f180:	c519                	beqz	a0,a2f18e <uapi_upg_full_image_update+0x6c>
  a2f182:	8526                	mv	a0,s1
  a2f184:	b41fe0ef          	jal	ra,a2dcc4 <upg_free>
  a2f188:	844e                	mv	s0,s3
  a2f18a:	8522                	mv	a0,s0
  a2f18c:	8184                	popret	{ra,s0-s6},48
  a2f18e:	004a2683          	lw	a3,4(s4)
  a2f192:	4701                	li	a4,0
  a2f194:	0070                	addi	a2,sp,12
  a2f196:	85a6                	mv	a1,s1
  a2f198:	854a                	mv	a0,s2
  a2f19a:	e3dff0ef          	jal	ra,a2efd6 <upg_write_new_image_data>
  a2f19e:	89aa                	mv	s3,a0
  a2f1a0:	f16d                	bnez	a0,a2f182 <uapi_upg_full_image_update+0x60>
  a2f1a2:	47b2                	lw	a5,12(sp)
  a2f1a4:	dff9                	beqz	a5,a2f182 <uapi_upg_full_image_update+0x60>
  a2f1a6:	993e                	add	s2,s2,a5
  a2f1a8:	a98fe0ef          	jal	ra,a2d440 <upg_watchdog_kick>
  a2f1ac:	4532                	lw	a0,12(sp)
  a2f1ae:	de7ff0ef          	jal	ra,a2ef94 <upg_calculate_and_notify_process>
  a2f1b2:	b755                	j	a2f156 <uapi_upg_full_image_update+0x34>
  a2f1b4:	547d                	li	s0,-1
  a2f1b6:	bfd1                	j	a2f18a <uapi_upg_full_image_update+0x68>
  a2f1b8:	80000437          	lui	s0,0x80000
  a2f1bc:	0415                	addi	s0,s0,5 # 80000005 <_gp_+0x7f5cb77d>
  a2f1be:	b7f1                	j	a2f18a <uapi_upg_full_image_update+0x68>

00a2f1c0 <LzmaDec_TryDummy>:
  a2f1c0:	2138                	lbu	a4,2(a0)
  a2f1c2:	02852f83          	lw	t6,40(a0) # 1028 <ccause+0x66>
  a2f1c6:	5e7d                	li	t3,-1
  a2f1c8:	00ee1e33          	sll	t3,t3,a4
  a2f1cc:	04052e83          	lw	t4,64(a0)
  a2f1d0:	fffe4e13          	not	t3,t3
  a2f1d4:	00c52303          	lw	t1,12(a0)
  a2f1d8:	01fe7e33          	and	t3,t3,t6
  a2f1dc:	0e12                	slli	t3,t3,0x4
  a2f1de:	02052803          	lw	a6,32(a0)
  a2f1e2:	01ce8f33          	add	t5,t4,t3
  a2f1e6:	03e30f1b          	addshf	t5,t1,t5,sll,1
  a2f1ea:	86aa                	mv	a3,a0
  a2f1ec:	515c                	lw	a5,36(a0)
  a2f1ee:	e00f0f13          	addi	t5,t5,-512
  a2f1f2:	01000537          	lui	a0,0x1000
  a2f1f6:	00062883          	lw	a7,0(a2)
  a2f1fa:	000f5703          	lhu	a4,0(t5)
  a2f1fe:	00a87a63          	bgeu	a6,a0,a2f212 <LzmaDec_TryDummy+0x52>
  a2f202:	4501                	li	a0,0
  a2f204:	4115f963          	bgeu	a1,a7,a2f616 <LzmaDec_TryDummy+0x456>
  a2f208:	2188                	lbu	a0,0(a1)
  a2f20a:	0822                	slli	a6,a6,0x8
  a2f20c:	0585                	addi	a1,a1,1
  a2f20e:	10f5279b          	orshf	a5,a0,a5,sll,8
  a2f212:	00b85513          	srli	a0,a6,0xb
  a2f216:	02e50733          	mul	a4,a0,a4
  a2f21a:	12e7f963          	bgeu	a5,a4,a2f34c <LzmaDec_TryDummy+0x18c>
  a2f21e:	56c8                	lw	a0,44(a3)
  a2f220:	28030313          	addi	t1,t1,640
  a2f224:	e119                	bnez	a0,a2f22a <LzmaDec_TryDummy+0x6a>
  a2f226:	040f8863          	beqz	t6,a2f276 <LzmaDec_TryDummy+0xb6>
  a2f22a:	0016c803          	lbu	a6,1(a3)
  a2f22e:	557d                	li	a0,-1
  a2f230:	0006c283          	lbu	t0,0(a3)
  a2f234:	01051533          	sll	a0,a0,a6
  a2f238:	0186a803          	lw	a6,24(a3)
  a2f23c:	fff54513          	not	a0,a0
  a2f240:	01f57533          	and	a0,a0,t6
  a2f244:	00551533          	sll	a0,a0,t0
  a2f248:	0106af03          	lw	t5,16(a3)
  a2f24c:	fff80e13          	addi	t3,a6,-1
  a2f250:	00081563          	bnez	a6,a2f25a <LzmaDec_TryDummy+0x9a>
  a2f254:	0146ae03          	lw	t3,20(a3)
  a2f258:	1e7d                	addi	t3,t3,-1
  a2f25a:	9e7a                	add	t3,t3,t5
  a2f25c:	000e4803          	lbu	a6,0(t3)
  a2f260:	4e21                	li	t3,8
  a2f262:	405e0e33          	sub	t3,t3,t0
  a2f266:	01c85833          	srl	a6,a6,t3
  a2f26a:	9542                	add	a0,a0,a6
  a2f26c:	60000813          	li	a6,1536
  a2f270:	03050533          	mul	a0,a0,a6
  a2f274:	932a                	add	t1,t1,a0
  a2f276:	071ef63b          	bgeui	t4,7,a2f2ce <LzmaDec_TryDummy+0x10e>
  a2f27a:	4685                	li	a3,1
  a2f27c:	01000e37          	lui	t3,0x1000
  a2f280:	0ff00813          	li	a6,255
  a2f284:	0686                	slli	a3,a3,0x1
  a2f286:	00d30533          	add	a0,t1,a3
  a2f28a:	00055e83          	lhu	t4,0(a0) # 1000000 <_gp_+0x5cb778>
  a2f28e:	01c77963          	bgeu	a4,t3,a2f2a0 <LzmaDec_TryDummy+0xe0>
  a2f292:	3915f163          	bgeu	a1,a7,a2f614 <LzmaDec_TryDummy+0x454>
  a2f296:	2188                	lbu	a0,0(a1)
  a2f298:	0722                	slli	a4,a4,0x8
  a2f29a:	0585                	addi	a1,a1,1
  a2f29c:	10f5279b          	orshf	a5,a0,a5,sll,8
  a2f2a0:	00b75513          	srli	a0,a4,0xb
  a2f2a4:	03d50533          	mul	a0,a0,t4
  a2f2a8:	02a7e163          	bltu	a5,a0,a2f2ca <LzmaDec_TryDummy+0x10a>
  a2f2ac:	8f09                	sub	a4,a4,a0
  a2f2ae:	8f89                	sub	a5,a5,a0
  a2f2b0:	0685                	addi	a3,a3,1
  a2f2b2:	fcd879e3          	bgeu	a6,a3,a2f284 <LzmaDec_TryDummy+0xc4>
  a2f2b6:	4505                	li	a0,1
  a2f2b8:	010007b7          	lui	a5,0x1000
  a2f2bc:	00f77563          	bgeu	a4,a5,a2f2c6 <LzmaDec_TryDummy+0x106>
  a2f2c0:	3515fa63          	bgeu	a1,a7,a2f614 <LzmaDec_TryDummy+0x454>
  a2f2c4:	0585                	addi	a1,a1,1
  a2f2c6:	c20c                	sw	a1,0(a2)
  a2f2c8:	8082                	ret
  a2f2ca:	872a                	mv	a4,a0
  a2f2cc:	b7dd                	j	a2f2b2 <LzmaDec_TryDummy+0xf2>
  a2f2ce:	0186ae83          	lw	t4,24(a3)
  a2f2d2:	0306ae03          	lw	t3,48(a3)
  a2f2d6:	4a88                	lw	a0,16(a3)
  a2f2d8:	4801                	li	a6,0
  a2f2da:	41ce8f33          	sub	t5,t4,t3
  a2f2de:	01cef463          	bgeu	t4,t3,a2f2e6 <LzmaDec_TryDummy+0x126>
  a2f2e2:	0146a803          	lw	a6,20(a3)
  a2f2e6:	01e506b3          	add	a3,a0,t5
  a2f2ea:	96c2                	add	a3,a3,a6
  a2f2ec:	0006ce03          	lbu	t3,0(a3)
  a2f2f0:	10000813          	li	a6,256
  a2f2f4:	4685                	li	a3,1
  a2f2f6:	01000fb7          	lui	t6,0x1000
  a2f2fa:	0ff00f13          	li	t5,255
  a2f2fe:	0e06                	slli	t3,t3,0x1
  a2f300:	01c87eb3          	and	t4,a6,t3
  a2f304:	00d80533          	add	a0,a6,a3
  a2f308:	9576                	add	a0,a0,t4
  a2f30a:	02a3051b          	addshf	a0,t1,a0,sll,1
  a2f30e:	00055283          	lhu	t0,0(a0)
  a2f312:	01f77963          	bgeu	a4,t6,a2f324 <LzmaDec_TryDummy+0x164>
  a2f316:	2f15ff63          	bgeu	a1,a7,a2f614 <LzmaDec_TryDummy+0x454>
  a2f31a:	2188                	lbu	a0,0(a1)
  a2f31c:	0722                	slli	a4,a4,0x8
  a2f31e:	0585                	addi	a1,a1,1
  a2f320:	10f5279b          	orshf	a5,a0,a5,sll,8
  a2f324:	00b75513          	srli	a0,a4,0xb
  a2f328:	02550533          	mul	a0,a0,t0
  a2f32c:	0686                	slli	a3,a3,0x1
  a2f32e:	00a7fa63          	bgeu	a5,a0,a2f342 <LzmaDec_TryDummy+0x182>
  a2f332:	fffe4713          	not	a4,t3
  a2f336:	00e87833          	and	a6,a6,a4
  a2f33a:	872a                	mv	a4,a0
  a2f33c:	fcdf71e3          	bgeu	t5,a3,a2f2fe <LzmaDec_TryDummy+0x13e>
  a2f340:	bf9d                	j	a2f2b6 <LzmaDec_TryDummy+0xf6>
  a2f342:	8f09                	sub	a4,a4,a0
  a2f344:	8f89                	sub	a5,a5,a0
  a2f346:	0685                	addi	a3,a3,1
  a2f348:	8876                	mv	a6,t4
  a2f34a:	bfcd                	j	a2f33c <LzmaDec_TryDummy+0x17c>
  a2f34c:	0ec1                	addi	t4,t4,16
  a2f34e:	40e80833          	sub	a6,a6,a4
  a2f352:	03d30e9b          	addshf	t4,t1,t4,sll,1
  a2f356:	010006b7          	lui	a3,0x1000
  a2f35a:	8f99                	sub	a5,a5,a4
  a2f35c:	000ed703          	lhu	a4,0(t4)
  a2f360:	00d87a63          	bgeu	a6,a3,a2f374 <LzmaDec_TryDummy+0x1b4>
  a2f364:	4501                	li	a0,0
  a2f366:	2b15f863          	bgeu	a1,a7,a2f616 <LzmaDec_TryDummy+0x456>
  a2f36a:	2194                	lbu	a3,0(a1)
  a2f36c:	0822                	slli	a6,a6,0x8
  a2f36e:	0585                	addi	a1,a1,1
  a2f370:	10f6a79b          	orshf	a5,a3,a5,sll,8
  a2f374:	00b85693          	srli	a3,a6,0xb
  a2f378:	02e686b3          	mul	a3,a3,a4
  a2f37c:	14d7f063          	bgeu	a5,a3,a2f4bc <LzmaDec_TryDummy+0x2fc>
  a2f380:	a0030813          	addi	a6,t1,-1536
  a2f384:	4509                	li	a0,2
  a2f386:	4f81                	li	t6,0
  a2f388:	01000eb7          	lui	t4,0x1000
  a2f38c:	00085703          	lhu	a4,0(a6)
  a2f390:	01d6fa63          	bgeu	a3,t4,a2f3a4 <LzmaDec_TryDummy+0x1e4>
  a2f394:	2915f063          	bgeu	a1,a7,a2f614 <LzmaDec_TryDummy+0x454>
  a2f398:	0005ce83          	lbu	t4,0(a1)
  a2f39c:	06a2                	slli	a3,a3,0x8
  a2f39e:	0585                	addi	a1,a1,1
  a2f3a0:	10fea79b          	orshf	a5,t4,a5,sll,8
  a2f3a4:	00b6de93          	srli	t4,a3,0xb
  a2f3a8:	02ee8733          	mul	a4,t4,a4
  a2f3ac:	1ce7fe63          	bgeu	a5,a4,a2f588 <LzmaDec_TryDummy+0x3c8>
  a2f3b0:	03c8081b          	addshf	a6,a6,t3,sll,1
  a2f3b4:	4681                	li	a3,0
  a2f3b6:	4f21                	li	t5,8
  a2f3b8:	4e05                	li	t3,1
  a2f3ba:	010002b7          	lui	t0,0x1000
  a2f3be:	0e06                	slli	t3,t3,0x1
  a2f3c0:	01c80eb3          	add	t4,a6,t3
  a2f3c4:	000ed383          	lhu	t2,0(t4) # 1000000 <_gp_+0x5cb778>
  a2f3c8:	00577a63          	bgeu	a4,t0,a2f3dc <LzmaDec_TryDummy+0x21c>
  a2f3cc:	2515f463          	bgeu	a1,a7,a2f614 <LzmaDec_TryDummy+0x454>
  a2f3d0:	0005ce83          	lbu	t4,0(a1)
  a2f3d4:	0722                	slli	a4,a4,0x8
  a2f3d6:	0585                	addi	a1,a1,1
  a2f3d8:	10fea79b          	orshf	a5,t4,a5,sll,8
  a2f3dc:	00b75e93          	srli	t4,a4,0xb
  a2f3e0:	027e8eb3          	mul	t4,t4,t2
  a2f3e4:	1fd7e663          	bltu	a5,t4,a2f5d0 <LzmaDec_TryDummy+0x410>
  a2f3e8:	41d70733          	sub	a4,a4,t4
  a2f3ec:	41d787b3          	sub	a5,a5,t4
  a2f3f0:	0e05                	addi	t3,t3,1 # 1000001 <_gp_+0x5cb779>
  a2f3f2:	fdee66e3          	bltu	t3,t5,a2f3be <LzmaDec_TryDummy+0x1fe>
  a2f3f6:	04bff0bb          	bgeui	t6,4,a2f2b8 <LzmaDec_TryDummy+0xf8>
  a2f3fa:	41e686b3          	sub	a3,a3,t5
  a2f3fe:	96f2                	add	a3,a3,t3
  a2f400:	20000e13          	li	t3,512
  a2f404:	0306f2bb          	bgeui	a3,3,a2f40e <LzmaDec_TryDummy+0x24e>
  a2f408:	0685                	addi	a3,a3,1 # 1000001 <_gp_+0x5cb779>
  a2f40a:	00769e13          	slli	t3,a3,0x7
  a2f40e:	4685                	li	a3,1
  a2f410:	01000f37          	lui	t5,0x1000
  a2f414:	03f00e93          	li	t4,63
  a2f418:	0686                	slli	a3,a3,0x1
  a2f41a:	00d30833          	add	a6,t1,a3
  a2f41e:	9872                	add	a6,a6,t3
  a2f420:	00085f83          	lhu	t6,0(a6)
  a2f424:	01e77a63          	bgeu	a4,t5,a2f438 <LzmaDec_TryDummy+0x278>
  a2f428:	1f15f663          	bgeu	a1,a7,a2f614 <LzmaDec_TryDummy+0x454>
  a2f42c:	0005c803          	lbu	a6,0(a1)
  a2f430:	0722                	slli	a4,a4,0x8
  a2f432:	0585                	addi	a1,a1,1
  a2f434:	10f8279b          	orshf	a5,a6,a5,sll,8
  a2f438:	00b75813          	srli	a6,a4,0xb
  a2f43c:	03f80833          	mul	a6,a6,t6
  a2f440:	1907ea63          	bltu	a5,a6,a2f5d4 <LzmaDec_TryDummy+0x414>
  a2f444:	41070733          	sub	a4,a4,a6
  a2f448:	410787b3          	sub	a5,a5,a6
  a2f44c:	0685                	addi	a3,a3,1
  a2f44e:	fcdef5e3          	bgeu	t4,a3,a2f418 <LzmaDec_TryDummy+0x258>
  a2f452:	fc068693          	addi	a3,a3,-64
  a2f456:	0496e8bb          	bltui	a3,4,a2f2b8 <LzmaDec_TryDummy+0xf8>
  a2f45a:	0016d813          	srli	a6,a3,0x1
  a2f45e:	0e56febb          	bgeui	a3,14,a2f5d8 <LzmaDec_TryDummy+0x418>
  a2f462:	8a85                	andi	a3,a3,1
  a2f464:	187d                	addi	a6,a6,-1
  a2f466:	0026e693          	ori	a3,a3,2
  a2f46a:	80000e37          	lui	t3,0x80000
  a2f46e:	010696b3          	sll	a3,a3,a6
  a2f472:	980e4e13          	xori	t3,t3,-1664
  a2f476:	96f2                	add	a3,a3,t3
  a2f478:	02d3031b          	addshf	t1,t1,a3,sll,1
  a2f47c:	4e85                	li	t4,1
  a2f47e:	4e05                	li	t3,1
  a2f480:	01000fb7          	lui	t6,0x1000
  a2f484:	03c3069b          	addshf	a3,t1,t3,sll,1
  a2f488:	0006df03          	lhu	t5,0(a3)
  a2f48c:	01f77963          	bgeu	a4,t6,a2f49e <LzmaDec_TryDummy+0x2de>
  a2f490:	1915f263          	bgeu	a1,a7,a2f614 <LzmaDec_TryDummy+0x454>
  a2f494:	2194                	lbu	a3,0(a1)
  a2f496:	0722                	slli	a4,a4,0x8
  a2f498:	0585                	addi	a1,a1,1
  a2f49a:	10f6a79b          	orshf	a5,a3,a5,sll,8
  a2f49e:	00b75693          	srli	a3,a4,0xb
  a2f4a2:	03e686b3          	mul	a3,a3,t5
  a2f4a6:	001e9f13          	slli	t5,t4,0x1
  a2f4aa:	14d7ff63          	bgeu	a5,a3,a2f608 <LzmaDec_TryDummy+0x448>
  a2f4ae:	9e76                	add	t3,t3,t4
  a2f4b0:	8736                	mv	a4,a3
  a2f4b2:	187d                	addi	a6,a6,-1
  a2f4b4:	8efa                	mv	t4,t5
  a2f4b6:	fc0817e3          	bnez	a6,a2f484 <LzmaDec_TryDummy+0x2c4>
  a2f4ba:	bbfd                	j	a2f2b8 <LzmaDec_TryDummy+0xf8>
  a2f4bc:	40d80733          	sub	a4,a6,a3
  a2f4c0:	8f95                	sub	a5,a5,a3
  a2f4c2:	010006b7          	lui	a3,0x1000
  a2f4c6:	018ed803          	lhu	a6,24(t4)
  a2f4ca:	00d77a63          	bgeu	a4,a3,a2f4de <LzmaDec_TryDummy+0x31e>
  a2f4ce:	4501                	li	a0,0
  a2f4d0:	1515f363          	bgeu	a1,a7,a2f616 <LzmaDec_TryDummy+0x456>
  a2f4d4:	2194                	lbu	a3,0(a1)
  a2f4d6:	0722                	slli	a4,a4,0x8
  a2f4d8:	0585                	addi	a1,a1,1
  a2f4da:	10f6a79b          	orshf	a5,a3,a5,sll,8
  a2f4de:	00b75693          	srli	a3,a4,0xb
  a2f4e2:	030686b3          	mul	a3,a3,a6
  a2f4e6:	04d7f163          	bgeu	a5,a3,a2f528 <LzmaDec_TryDummy+0x368>
  a2f4ea:	777d                	lui	a4,0xfffff
  a2f4ec:	9f3a                	add	t5,t5,a4
  a2f4ee:	01000537          	lui	a0,0x1000
  a2f4f2:	600f5703          	lhu	a4,1536(t5) # 1000600 <_gp_+0x5cbd78>
  a2f4f6:	00a6fa63          	bgeu	a3,a0,a2f50a <LzmaDec_TryDummy+0x34a>
  a2f4fa:	4501                	li	a0,0
  a2f4fc:	1115fd63          	bgeu	a1,a7,a2f616 <LzmaDec_TryDummy+0x456>
  a2f500:	2188                	lbu	a0,0(a1)
  a2f502:	06a2                	slli	a3,a3,0x8
  a2f504:	0585                	addi	a1,a1,1
  a2f506:	10f5279b          	orshf	a5,a0,a5,sll,8
  a2f50a:	00b6d513          	srli	a0,a3,0xb
  a2f50e:	02e50733          	mul	a4,a0,a4
  a2f512:	0ee7ef63          	bltu	a5,a4,a2f610 <LzmaDec_TryDummy+0x450>
  a2f516:	8e99                	sub	a3,a3,a4
  a2f518:	8f99                	sub	a5,a5,a4
  a2f51a:	ffff f600 081f      	l.li	a6,0xfffff600
  a2f520:	981a                	add	a6,a6,t1
  a2f522:	450d                	li	a0,3
  a2f524:	4fb1                	li	t6,12
  a2f526:	b58d                	j	a2f388 <LzmaDec_TryDummy+0x1c8>
  a2f528:	8f15                	sub	a4,a4,a3
  a2f52a:	8f95                	sub	a5,a5,a3
  a2f52c:	010006b7          	lui	a3,0x1000
  a2f530:	030ed803          	lhu	a6,48(t4)
  a2f534:	00d77a63          	bgeu	a4,a3,a2f548 <LzmaDec_TryDummy+0x388>
  a2f538:	4501                	li	a0,0
  a2f53a:	0d15fe63          	bgeu	a1,a7,a2f616 <LzmaDec_TryDummy+0x456>
  a2f53e:	2194                	lbu	a3,0(a1)
  a2f540:	0722                	slli	a4,a4,0x8
  a2f542:	0585                	addi	a1,a1,1
  a2f544:	10f6a79b          	orshf	a5,a3,a5,sll,8
  a2f548:	00b75693          	srli	a3,a4,0xb
  a2f54c:	030686b3          	mul	a3,a3,a6
  a2f550:	fcd7e5e3          	bltu	a5,a3,a2f51a <LzmaDec_TryDummy+0x35a>
  a2f554:	8f15                	sub	a4,a4,a3
  a2f556:	8f95                	sub	a5,a5,a3
  a2f558:	010006b7          	lui	a3,0x1000
  a2f55c:	048ed803          	lhu	a6,72(t4)
  a2f560:	00d77a63          	bgeu	a4,a3,a2f574 <LzmaDec_TryDummy+0x3b4>
  a2f564:	4501                	li	a0,0
  a2f566:	0b15f863          	bgeu	a1,a7,a2f616 <LzmaDec_TryDummy+0x456>
  a2f56a:	2194                	lbu	a3,0(a1)
  a2f56c:	0722                	slli	a4,a4,0x8
  a2f56e:	0585                	addi	a1,a1,1
  a2f570:	10f6a79b          	orshf	a5,a3,a5,sll,8
  a2f574:	00b75693          	srli	a3,a4,0xb
  a2f578:	030686b3          	mul	a3,a3,a6
  a2f57c:	f8d7efe3          	bltu	a5,a3,a2f51a <LzmaDec_TryDummy+0x35a>
  a2f580:	8f95                	sub	a5,a5,a3
  a2f582:	40d706b3          	sub	a3,a4,a3
  a2f586:	bf51                	j	a2f51a <LzmaDec_TryDummy+0x35a>
  a2f588:	8e99                	sub	a3,a3,a4
  a2f58a:	01000eb7          	lui	t4,0x1000
  a2f58e:	8f99                	sub	a5,a5,a4
  a2f590:	01085703          	lhu	a4,16(a6)
  a2f594:	01d6fa63          	bgeu	a3,t4,a2f5a8 <LzmaDec_TryDummy+0x3e8>
  a2f598:	0715fe63          	bgeu	a1,a7,a2f614 <LzmaDec_TryDummy+0x454>
  a2f59c:	0005ce83          	lbu	t4,0(a1)
  a2f5a0:	06a2                	slli	a3,a3,0x8
  a2f5a2:	0585                	addi	a1,a1,1
  a2f5a4:	10fea79b          	orshf	a5,t4,a5,sll,8
  a2f5a8:	00b6de93          	srli	t4,a3,0xb
  a2f5ac:	02ee8733          	mul	a4,t4,a4
  a2f5b0:	00e7f763          	bgeu	a5,a4,a2f5be <LzmaDec_TryDummy+0x3fe>
  a2f5b4:	0e21                	addi	t3,t3,8 # 80000008 <_gp_+0x7f5cb780>
  a2f5b6:	03c8081b          	addshf	a6,a6,t3,sll,1
  a2f5ba:	46a1                	li	a3,8
  a2f5bc:	bbed                	j	a2f3b6 <LzmaDec_TryDummy+0x1f6>
  a2f5be:	8f99                	sub	a5,a5,a4
  a2f5c0:	20080813          	addi	a6,a6,512
  a2f5c4:	40e68733          	sub	a4,a3,a4
  a2f5c8:	10000f13          	li	t5,256
  a2f5cc:	46c1                	li	a3,16
  a2f5ce:	b3ed                	j	a2f3b8 <LzmaDec_TryDummy+0x1f8>
  a2f5d0:	8776                	mv	a4,t4
  a2f5d2:	b505                	j	a2f3f2 <LzmaDec_TryDummy+0x232>
  a2f5d4:	8742                	mv	a4,a6
  a2f5d6:	bda5                	j	a2f44e <LzmaDec_TryDummy+0x28e>
  a2f5d8:	186d                	addi	a6,a6,-5
  a2f5da:	01000e37          	lui	t3,0x1000
  a2f5de:	01c77963          	bgeu	a4,t3,a2f5f0 <LzmaDec_TryDummy+0x430>
  a2f5e2:	0315f963          	bgeu	a1,a7,a2f614 <LzmaDec_TryDummy+0x454>
  a2f5e6:	2194                	lbu	a3,0(a1)
  a2f5e8:	0722                	slli	a4,a4,0x8
  a2f5ea:	0585                	addi	a1,a1,1
  a2f5ec:	10f6a79b          	orshf	a5,a3,a5,sll,8
  a2f5f0:	8305                	srli	a4,a4,0x1
  a2f5f2:	40e786b3          	sub	a3,a5,a4
  a2f5f6:	82fd                	srli	a3,a3,0x1f
  a2f5f8:	16fd                	addi	a3,a3,-1 # ffffff <_gp_+0x5cb777>
  a2f5fa:	8ef9                	and	a3,a3,a4
  a2f5fc:	187d                	addi	a6,a6,-1
  a2f5fe:	8f95                	sub	a5,a5,a3
  a2f600:	fc081fe3          	bnez	a6,a2f5de <LzmaDec_TryDummy+0x41e>
  a2f604:	4811                	li	a6,4
  a2f606:	bd9d                	j	a2f47c <LzmaDec_TryDummy+0x2bc>
  a2f608:	8f15                	sub	a4,a4,a3
  a2f60a:	8f95                	sub	a5,a5,a3
  a2f60c:	9e7a                	add	t3,t3,t5
  a2f60e:	b555                	j	a2f4b2 <LzmaDec_TryDummy+0x2f2>
  a2f610:	450d                	li	a0,3
  a2f612:	b15d                	j	a2f2b8 <LzmaDec_TryDummy+0xf8>
  a2f614:	4501                	li	a0,0
  a2f616:	8082                	ret

00a2f618 <LzmaDec_DecodeReal2>:
  a2f618:	711d                	addi	sp,sp,-96
  a2f61a:	03010293          	addi	t0,sp,48
  a2f61e:	7fe2960b          	stmia	{s0-s11},(t0)
  a2f622:	02c52d83          	lw	s11,44(a0) # 100002c <_gp_+0x5cb7a4>
  a2f626:	ce32                	sw	a2,28(sp)
  a2f628:	8e2a                	mv	t3,a0
  a2f62a:	02852383          	lw	t2,40(a0)
  a2f62e:	01852e83          	lw	t4,24(a0)
  a2f632:	000d9b63          	bnez	s11,a2f648 <LzmaDec_DecodeReal2+0x30>
  a2f636:	415c                	lw	a5,4(a0)
  a2f638:	41d58733          	sub	a4,a1,t4
  a2f63c:	407787b3          	sub	a5,a5,t2
  a2f640:	00e7f463          	bgeu	a5,a4,a2f648 <LzmaDec_DecodeReal2+0x30>
  a2f644:	01d785b3          	add	a1,a5,t4
  a2f648:	000e4783          	lbu	a5,0(t3) # 1000000 <_gp_+0x5cb778>
  a2f64c:	001e4703          	lbu	a4,1(t3)
  a2f650:	002e4603          	lbu	a2,2(t3)
  a2f654:	c63e                	sw	a5,12(sp)
  a2f656:	46b2                	lw	a3,12(sp)
  a2f658:	10000793          	li	a5,256
  a2f65c:	00e79733          	sll	a4,a5,a4
  a2f660:	00d7d7b3          	srl	a5,a5,a3
  a2f664:	56fd                	li	a3,-1
  a2f666:	00c696b3          	sll	a3,a3,a2
  a2f66a:	fff6c693          	not	a3,a3
  a2f66e:	cc36                	sw	a3,24(sp)
  a2f670:	800006b7          	lui	a3,0x80000
  a2f674:	00ce2f83          	lw	t6,12(t3)
  a2f678:	f006c693          	xori	a3,a3,-256
  a2f67c:	d036                	sw	a3,32(sp)
  a2f67e:	76fd                	lui	a3,0xfffff
  a2f680:	60068693          	addi	a3,a3,1536 # fffff600 <_gp_+0xff5cad78>
  a2f684:	014e2c83          	lw	s9,20(t3)
  a2f688:	40f707b3          	sub	a5,a4,a5
  a2f68c:	c836                	sw	a3,16(sp)
  a2f68e:	96fe                	add	a3,a3,t6
  a2f690:	ca3e                	sw	a5,20(sp)
  a2f692:	d236                	sw	a3,36(sp)
  a2f694:	040e2f03          	lw	t5,64(t3)
  a2f698:	a00f8693          	addi	a3,t6,-1536 # fffa00 <_gp_+0x5cb178>
  a2f69c:	030e2283          	lw	t0,48(t3)
  a2f6a0:	034e2403          	lw	s0,52(t3)
  a2f6a4:	038e2983          	lw	s3,56(t3)
  a2f6a8:	03ce2d03          	lw	s10,60(t3)
  a2f6ac:	010e2a03          	lw	s4,16(t3)
  a2f6b0:	01ce2703          	lw	a4,28(t3)
  a2f6b4:	020e2903          	lw	s2,32(t3)
  a2f6b8:	024e2783          	lw	a5,36(t3)
  a2f6bc:	d436                	sw	a3,40(sp)
  a2f6be:	fffc8693          	addi	a3,s9,-1
  a2f6c2:	4881                	li	a7,0
  a2f6c4:	01000637          	lui	a2,0x1000
  a2f6c8:	0000 0800 081f      	l.li	a6,0x800
  a2f6ce:	d636                	sw	a3,44(sp)
  a2f6d0:	46e2                	lw	a3,24(sp)
  a2f6d2:	0076f533          	and	a0,a3,t2
  a2f6d6:	5682                	lw	a3,32(sp)
  a2f6d8:	0512                	slli	a0,a0,0x4
  a2f6da:	01e504b3          	add	s1,a0,t5
  a2f6de:	94b6                	add	s1,s1,a3
  a2f6e0:	0486                	slli	s1,s1,0x1
  a2f6e2:	009f8ab3          	add	s5,t6,s1
  a2f6e6:	000ad303          	lhu	t1,0(s5)
  a2f6ea:	00c97763          	bgeu	s2,a2,a2f6f8 <LzmaDec_DecodeReal2+0xe0>
  a2f6ee:	2314                	lbu	a3,0(a4)
  a2f6f0:	0922                	slli	s2,s2,0x8
  a2f6f2:	0705                	addi	a4,a4,1 # fffff001 <_gp_+0xff5ca779>
  a2f6f4:	10f6a79b          	orshf	a5,a3,a5,sll,8
  a2f6f8:	00b95693          	srli	a3,s2,0xb
  a2f6fc:	026686b3          	mul	a3,a3,t1
  a2f700:	54d7fb63          	bgeu	a5,a3,a2fc56 <LzmaDec_DecodeReal2+0x63e>
  a2f704:	40680533          	sub	a0,a6,t1
  a2f708:	4aa3031b          	addshf	t1,t1,a0,srl,5
  a2f70c:	006a9023          	sh	t1,0(s5)
  a2f710:	280f8513          	addi	a0,t6,640
  a2f714:	00039463          	bnez	t2,a2f71c <LzmaDec_DecodeReal2+0x104>
  a2f718:	020d8563          	beqz	s11,a2f742 <LzmaDec_DecodeReal2+0x12a>
  a2f71c:	00839493          	slli	s1,t2,0x8
  a2f720:	fffe8313          	addi	t1,t4,-1 # ffffff <_gp_+0x5cb777>
  a2f724:	000e9363          	bnez	t4,a2f72a <LzmaDec_DecodeReal2+0x112>
  a2f728:	5332                	lw	t1,44(sp)
  a2f72a:	9352                	add	t1,t1,s4
  a2f72c:	00034303          	lbu	t1,0(t1)
  a2f730:	9326                	add	t1,t1,s1
  a2f732:	44d2                	lw	s1,20(sp)
  a2f734:	00937333          	and	t1,t1,s1
  a2f738:	44b2                	lw	s1,12(sp)
  a2f73a:	00931333          	sll	t1,t1,s1
  a2f73e:	0665155b          	muliadd	a0,a0,t1,6
  a2f742:	0385                	addi	t2,t2,1
  a2f744:	431d                	li	t1,7
  a2f746:	246f7163          	bgeu	t5,t1,a2f988 <LzmaDec_DecodeReal2+0x370>
  a2f74a:	448d                	li	s1,3
  a2f74c:	837a                	mv	t1,t5
  a2f74e:	01e4f363          	bgeu	s1,t5,a2f754 <LzmaDec_DecodeReal2+0x13c>
  a2f752:	430d                	li	t1,3
  a2f754:	406f0f33          	sub	t5,t5,t1
  a2f758:	00255303          	lhu	t1,2(a0)
  a2f75c:	00c6f763          	bgeu	a3,a2,a2f76a <LzmaDec_DecodeReal2+0x152>
  a2f760:	2304                	lbu	s1,0(a4)
  a2f762:	06a2                	slli	a3,a3,0x8
  a2f764:	0705                	addi	a4,a4,1
  a2f766:	10f4a79b          	orshf	a5,s1,a5,sll,8
  a2f76a:	00b6d493          	srli	s1,a3,0xb
  a2f76e:	026484b3          	mul	s1,s1,t1
  a2f772:	1697ff63          	bgeu	a5,s1,a2f8f0 <LzmaDec_DecodeReal2+0x2d8>
  a2f776:	406806b3          	sub	a3,a6,t1
  a2f77a:	4ad3031b          	addshf	t1,t1,a3,srl,5
  a2f77e:	00651123          	sh	t1,2(a0)
  a2f782:	4689                	li	a3,2
  a2f784:	0686                	slli	a3,a3,0x1
  a2f786:	00d50ab3          	add	s5,a0,a3
  a2f78a:	000ad903          	lhu	s2,0(s5)
  a2f78e:	00c4f863          	bgeu	s1,a2,a2f79e <LzmaDec_DecodeReal2+0x186>
  a2f792:	00074303          	lbu	t1,0(a4)
  a2f796:	04a2                	slli	s1,s1,0x8
  a2f798:	0705                	addi	a4,a4,1
  a2f79a:	10f3279b          	orshf	a5,t1,a5,sll,8
  a2f79e:	00b4d313          	srli	t1,s1,0xb
  a2f7a2:	03230333          	mul	t1,t1,s2
  a2f7a6:	1467fe63          	bgeu	a5,t1,a2f902 <LzmaDec_DecodeReal2+0x2ea>
  a2f7aa:	412804b3          	sub	s1,a6,s2
  a2f7ae:	4a99091b          	addshf	s2,s2,s1,srl,5
  a2f7b2:	012a9023          	sh	s2,0(s5)
  a2f7b6:	0686                	slli	a3,a3,0x1
  a2f7b8:	00d50ab3          	add	s5,a0,a3
  a2f7bc:	000ad903          	lhu	s2,0(s5)
  a2f7c0:	00c37763          	bgeu	t1,a2,a2f7ce <LzmaDec_DecodeReal2+0x1b6>
  a2f7c4:	2304                	lbu	s1,0(a4)
  a2f7c6:	0322                	slli	t1,t1,0x8
  a2f7c8:	0705                	addi	a4,a4,1
  a2f7ca:	10f4a79b          	orshf	a5,s1,a5,sll,8
  a2f7ce:	00b35493          	srli	s1,t1,0xb
  a2f7d2:	032484b3          	mul	s1,s1,s2
  a2f7d6:	1497f063          	bgeu	a5,s1,a2f916 <LzmaDec_DecodeReal2+0x2fe>
  a2f7da:	41280333          	sub	t1,a6,s2
  a2f7de:	4a69091b          	addshf	s2,s2,t1,srl,5
  a2f7e2:	012a9023          	sh	s2,0(s5)
  a2f7e6:	0686                	slli	a3,a3,0x1
  a2f7e8:	00d50ab3          	add	s5,a0,a3
  a2f7ec:	000ad903          	lhu	s2,0(s5)
  a2f7f0:	00c4f863          	bgeu	s1,a2,a2f800 <LzmaDec_DecodeReal2+0x1e8>
  a2f7f4:	00074303          	lbu	t1,0(a4)
  a2f7f8:	04a2                	slli	s1,s1,0x8
  a2f7fa:	0705                	addi	a4,a4,1
  a2f7fc:	10f3279b          	orshf	a5,t1,a5,sll,8
  a2f800:	00b4d313          	srli	t1,s1,0xb
  a2f804:	03230333          	mul	t1,t1,s2
  a2f808:	1267f063          	bgeu	a5,t1,a2f928 <LzmaDec_DecodeReal2+0x310>
  a2f80c:	412804b3          	sub	s1,a6,s2
  a2f810:	4a99091b          	addshf	s2,s2,s1,srl,5
  a2f814:	012a9023          	sh	s2,0(s5)
  a2f818:	0686                	slli	a3,a3,0x1
  a2f81a:	00d50ab3          	add	s5,a0,a3
  a2f81e:	000ad903          	lhu	s2,0(s5)
  a2f822:	00c37763          	bgeu	t1,a2,a2f830 <LzmaDec_DecodeReal2+0x218>
  a2f826:	2304                	lbu	s1,0(a4)
  a2f828:	0322                	slli	t1,t1,0x8
  a2f82a:	0705                	addi	a4,a4,1
  a2f82c:	10f4a79b          	orshf	a5,s1,a5,sll,8
  a2f830:	00b35493          	srli	s1,t1,0xb
  a2f834:	032484b3          	mul	s1,s1,s2
  a2f838:	1097f263          	bgeu	a5,s1,a2f93c <LzmaDec_DecodeReal2+0x324>
  a2f83c:	41280333          	sub	t1,a6,s2
  a2f840:	4a69091b          	addshf	s2,s2,t1,srl,5
  a2f844:	012a9023          	sh	s2,0(s5)
  a2f848:	0686                	slli	a3,a3,0x1
  a2f84a:	00d50ab3          	add	s5,a0,a3
  a2f84e:	000ad903          	lhu	s2,0(s5)
  a2f852:	00c4f863          	bgeu	s1,a2,a2f862 <LzmaDec_DecodeReal2+0x24a>
  a2f856:	00074303          	lbu	t1,0(a4)
  a2f85a:	04a2                	slli	s1,s1,0x8
  a2f85c:	0705                	addi	a4,a4,1
  a2f85e:	10f3279b          	orshf	a5,t1,a5,sll,8
  a2f862:	00b4d313          	srli	t1,s1,0xb
  a2f866:	03230333          	mul	t1,t1,s2
  a2f86a:	0e67f263          	bgeu	a5,t1,a2f94e <LzmaDec_DecodeReal2+0x336>
  a2f86e:	412804b3          	sub	s1,a6,s2
  a2f872:	4a99091b          	addshf	s2,s2,s1,srl,5
  a2f876:	012a9023          	sh	s2,0(s5)
  a2f87a:	0686                	slli	a3,a3,0x1
  a2f87c:	00d50ab3          	add	s5,a0,a3
  a2f880:	000ad903          	lhu	s2,0(s5)
  a2f884:	00c37763          	bgeu	t1,a2,a2f892 <LzmaDec_DecodeReal2+0x27a>
  a2f888:	2304                	lbu	s1,0(a4)
  a2f88a:	0322                	slli	t1,t1,0x8
  a2f88c:	0705                	addi	a4,a4,1
  a2f88e:	10f4a79b          	orshf	a5,s1,a5,sll,8
  a2f892:	00b35493          	srli	s1,t1,0xb
  a2f896:	032484b3          	mul	s1,s1,s2
  a2f89a:	0c97f463          	bgeu	a5,s1,a2f962 <LzmaDec_DecodeReal2+0x34a>
  a2f89e:	41280333          	sub	t1,a6,s2
  a2f8a2:	4a69091b          	addshf	s2,s2,t1,srl,5
  a2f8a6:	012a9023          	sh	s2,0(s5)
  a2f8aa:	0686                	slli	a3,a3,0x1
  a2f8ac:	9536                	add	a0,a0,a3
  a2f8ae:	00055a83          	lhu	s5,0(a0)
  a2f8b2:	00c4f863          	bgeu	s1,a2,a2f8c2 <LzmaDec_DecodeReal2+0x2aa>
  a2f8b6:	00074303          	lbu	t1,0(a4)
  a2f8ba:	04a2                	slli	s1,s1,0x8
  a2f8bc:	0705                	addi	a4,a4,1
  a2f8be:	10f3279b          	orshf	a5,t1,a5,sll,8
  a2f8c2:	00b4d913          	srli	s2,s1,0xb
  a2f8c6:	03590933          	mul	s2,s2,s5
  a2f8ca:	0b27f563          	bgeu	a5,s2,a2f974 <LzmaDec_DecodeReal2+0x35c>
  a2f8ce:	41580333          	sub	t1,a6,s5
  a2f8d2:	4a6a8a9b          	addshf	s5,s5,t1,srl,5
  a2f8d6:	01551023          	sh	s5,0(a0)
  a2f8da:	01da0533          	add	a0,s4,t4
  a2f8de:	a114                	sb	a3,0(a0)
  a2f8e0:	0e85                	addi	t4,t4,1
  a2f8e2:	30bef9e3          	bgeu	t4,a1,a303f4 <LzmaDec_DecodeReal2+0xddc>
  a2f8e6:	46f2                	lw	a3,28(sp)
  a2f8e8:	ded764e3          	bltu	a4,a3,a2f6d0 <LzmaDec_DecodeReal2+0xb8>
  a2f8ec:	3090006f          	j	a303f4 <LzmaDec_DecodeReal2+0xddc>
  a2f8f0:	4a63131b          	subshf	t1,t1,t1,srl,5
  a2f8f4:	8f85                	sub	a5,a5,s1
  a2f8f6:	00651123          	sh	t1,2(a0)
  a2f8fa:	409684b3          	sub	s1,a3,s1
  a2f8fe:	468d                	li	a3,3
  a2f900:	b551                	j	a2f784 <LzmaDec_DecodeReal2+0x16c>
  a2f902:	4b29191b          	subshf	s2,s2,s2,srl,5
  a2f906:	406787b3          	sub	a5,a5,t1
  a2f90a:	012a9023          	sh	s2,0(s5)
  a2f90e:	0685                	addi	a3,a3,1
  a2f910:	40648333          	sub	t1,s1,t1
  a2f914:	b54d                	j	a2f7b6 <LzmaDec_DecodeReal2+0x19e>
  a2f916:	4b29191b          	subshf	s2,s2,s2,srl,5
  a2f91a:	8f85                	sub	a5,a5,s1
  a2f91c:	012a9023          	sh	s2,0(s5)
  a2f920:	0685                	addi	a3,a3,1
  a2f922:	409304b3          	sub	s1,t1,s1
  a2f926:	b5c1                	j	a2f7e6 <LzmaDec_DecodeReal2+0x1ce>
  a2f928:	4b29191b          	subshf	s2,s2,s2,srl,5
  a2f92c:	406787b3          	sub	a5,a5,t1
  a2f930:	012a9023          	sh	s2,0(s5)
  a2f934:	0685                	addi	a3,a3,1
  a2f936:	40648333          	sub	t1,s1,t1
  a2f93a:	bdf9                	j	a2f818 <LzmaDec_DecodeReal2+0x200>
  a2f93c:	4b29191b          	subshf	s2,s2,s2,srl,5
  a2f940:	8f85                	sub	a5,a5,s1
  a2f942:	012a9023          	sh	s2,0(s5)
  a2f946:	0685                	addi	a3,a3,1
  a2f948:	409304b3          	sub	s1,t1,s1
  a2f94c:	bdf5                	j	a2f848 <LzmaDec_DecodeReal2+0x230>
  a2f94e:	4b29191b          	subshf	s2,s2,s2,srl,5
  a2f952:	406787b3          	sub	a5,a5,t1
  a2f956:	012a9023          	sh	s2,0(s5)
  a2f95a:	0685                	addi	a3,a3,1
  a2f95c:	40648333          	sub	t1,s1,t1
  a2f960:	bf29                	j	a2f87a <LzmaDec_DecodeReal2+0x262>
  a2f962:	4b29191b          	subshf	s2,s2,s2,srl,5
  a2f966:	8f85                	sub	a5,a5,s1
  a2f968:	012a9023          	sh	s2,0(s5)
  a2f96c:	0685                	addi	a3,a3,1
  a2f96e:	409304b3          	sub	s1,t1,s1
  a2f972:	bf25                	j	a2f8aa <LzmaDec_DecodeReal2+0x292>
  a2f974:	4b5a9a9b          	subshf	s5,s5,s5,srl,5
  a2f978:	412787b3          	sub	a5,a5,s2
  a2f97c:	01551023          	sh	s5,0(a0)
  a2f980:	0685                	addi	a3,a3,1
  a2f982:	41248933          	sub	s2,s1,s2
  a2f986:	bf91                	j	a2f8da <LzmaDec_DecodeReal2+0x2c2>
  a2f988:	405e8333          	sub	t1,t4,t0
  a2f98c:	4481                	li	s1,0
  a2f98e:	005ef363          	bgeu	t4,t0,a2f994 <LzmaDec_DecodeReal2+0x37c>
  a2f992:	84e6                	mv	s1,s9
  a2f994:	9352                	add	t1,t1,s4
  a2f996:	9326                	add	t1,t1,s1
  a2f998:	00034303          	lbu	t1,0(t1)
  a2f99c:	4499                	li	s1,6
  a2f99e:	0a0f71bb          	bgeui	t5,10,a2f9a4 <LzmaDec_DecodeReal2+0x38c>
  a2f9a2:	448d                	li	s1,3
  a2f9a4:	0306                	slli	t1,t1,0x1
  a2f9a6:	10037b93          	andi	s7,t1,256
  a2f9aa:	101b8a93          	addi	s5,s7,257
  a2f9ae:	03550a9b          	addshf	s5,a0,s5,sll,1
  a2f9b2:	409f0f33          	sub	t5,t5,s1
  a2f9b6:	000ad903          	lhu	s2,0(s5)
  a2f9ba:	00c6f763          	bgeu	a3,a2,a2f9c8 <LzmaDec_DecodeReal2+0x3b0>
  a2f9be:	2304                	lbu	s1,0(a4)
  a2f9c0:	06a2                	slli	a3,a3,0x8
  a2f9c2:	0705                	addi	a4,a4,1
  a2f9c4:	10f4a79b          	orshf	a5,s1,a5,sll,8
  a2f9c8:	00b6d493          	srli	s1,a3,0xb
  a2f9cc:	032484b3          	mul	s1,s1,s2
  a2f9d0:	1e97fa63          	bgeu	a5,s1,a2fbc4 <LzmaDec_DecodeReal2+0x5ac>
  a2f9d4:	412806b3          	sub	a3,a6,s2
  a2f9d8:	4ad9091b          	addshf	s2,s2,a3,srl,5
  a2f9dc:	fff34b93          	not	s7,t1
  a2f9e0:	012a9023          	sh	s2,0(s5)
  a2f9e4:	100bfb93          	andi	s7,s7,256
  a2f9e8:	4689                	li	a3,2
  a2f9ea:	0306                	slli	t1,t1,0x1
  a2f9ec:	01737c33          	and	s8,t1,s7
  a2f9f0:	00db8ab3          	add	s5,s7,a3
  a2f9f4:	9ae2                	add	s5,s5,s8
  a2f9f6:	03550a9b          	addshf	s5,a0,s5,sll,1
  a2f9fa:	000adb03          	lhu	s6,0(s5)
  a2f9fe:	00c4f863          	bgeu	s1,a2,a2fa0e <LzmaDec_DecodeReal2+0x3f6>
  a2fa02:	00074903          	lbu	s2,0(a4)
  a2fa06:	04a2                	slli	s1,s1,0x8
  a2fa08:	0705                	addi	a4,a4,1
  a2fa0a:	10f9279b          	orshf	a5,s2,a5,sll,8
  a2fa0e:	00b4d913          	srli	s2,s1,0xb
  a2fa12:	03690933          	mul	s2,s2,s6
  a2fa16:	0686                	slli	a3,a3,0x1
  a2fa18:	1b27ff63          	bgeu	a5,s2,a2fbd6 <LzmaDec_DecodeReal2+0x5be>
  a2fa1c:	416804b3          	sub	s1,a6,s6
  a2fa20:	4a9b0b1b          	addshf	s6,s6,s1,srl,5
  a2fa24:	fff34c13          	not	s8,t1
  a2fa28:	016a9023          	sh	s6,0(s5)
  a2fa2c:	017c7c33          	and	s8,s8,s7
  a2fa30:	0306                	slli	t1,t1,0x1
  a2fa32:	01837bb3          	and	s7,t1,s8
  a2fa36:	00dc0ab3          	add	s5,s8,a3
  a2fa3a:	9ade                	add	s5,s5,s7
  a2fa3c:	03550a9b          	addshf	s5,a0,s5,sll,1
  a2fa40:	000adb03          	lhu	s6,0(s5)
  a2fa44:	00c97763          	bgeu	s2,a2,a2fa52 <LzmaDec_DecodeReal2+0x43a>
  a2fa48:	2304                	lbu	s1,0(a4)
  a2fa4a:	0922                	slli	s2,s2,0x8
  a2fa4c:	0705                	addi	a4,a4,1
  a2fa4e:	10f4a79b          	orshf	a5,s1,a5,sll,8
  a2fa52:	00b95493          	srli	s1,s2,0xb
  a2fa56:	036484b3          	mul	s1,s1,s6
  a2fa5a:	0686                	slli	a3,a3,0x1
  a2fa5c:	1897f763          	bgeu	a5,s1,a2fbea <LzmaDec_DecodeReal2+0x5d2>
  a2fa60:	41680933          	sub	s2,a6,s6
  a2fa64:	4b2b0b1b          	addshf	s6,s6,s2,srl,5
  a2fa68:	fff34b93          	not	s7,t1
  a2fa6c:	016a9023          	sh	s6,0(s5)
  a2fa70:	018bfbb3          	and	s7,s7,s8
  a2fa74:	0306                	slli	t1,t1,0x1
  a2fa76:	01737c33          	and	s8,t1,s7
  a2fa7a:	00db8ab3          	add	s5,s7,a3
  a2fa7e:	9ae2                	add	s5,s5,s8
  a2fa80:	03550a9b          	addshf	s5,a0,s5,sll,1
  a2fa84:	000adb03          	lhu	s6,0(s5)
  a2fa88:	00c4f863          	bgeu	s1,a2,a2fa98 <LzmaDec_DecodeReal2+0x480>
  a2fa8c:	00074903          	lbu	s2,0(a4)
  a2fa90:	04a2                	slli	s1,s1,0x8
  a2fa92:	0705                	addi	a4,a4,1
  a2fa94:	10f9279b          	orshf	a5,s2,a5,sll,8
  a2fa98:	00b4d913          	srli	s2,s1,0xb
  a2fa9c:	03690933          	mul	s2,s2,s6
  a2faa0:	0686                	slli	a3,a3,0x1
  a2faa2:	1527fd63          	bgeu	a5,s2,a2fbfc <LzmaDec_DecodeReal2+0x5e4>
  a2faa6:	416804b3          	sub	s1,a6,s6
  a2faaa:	4a9b0b1b          	addshf	s6,s6,s1,srl,5
  a2faae:	fff34c13          	not	s8,t1
  a2fab2:	016a9023          	sh	s6,0(s5)
  a2fab6:	017c7c33          	and	s8,s8,s7
  a2faba:	0306                	slli	t1,t1,0x1
  a2fabc:	01837bb3          	and	s7,t1,s8
  a2fac0:	00dc0ab3          	add	s5,s8,a3
  a2fac4:	9ade                	add	s5,s5,s7
  a2fac6:	03550a9b          	addshf	s5,a0,s5,sll,1
  a2faca:	000adb03          	lhu	s6,0(s5)
  a2face:	00c97763          	bgeu	s2,a2,a2fadc <LzmaDec_DecodeReal2+0x4c4>
  a2fad2:	2304                	lbu	s1,0(a4)
  a2fad4:	0922                	slli	s2,s2,0x8
  a2fad6:	0705                	addi	a4,a4,1
  a2fad8:	10f4a79b          	orshf	a5,s1,a5,sll,8
  a2fadc:	00b95493          	srli	s1,s2,0xb
  a2fae0:	036484b3          	mul	s1,s1,s6
  a2fae4:	0686                	slli	a3,a3,0x1
  a2fae6:	1297f563          	bgeu	a5,s1,a2fc10 <LzmaDec_DecodeReal2+0x5f8>
  a2faea:	41680933          	sub	s2,a6,s6
  a2faee:	4b2b0b1b          	addshf	s6,s6,s2,srl,5
  a2faf2:	fff34b93          	not	s7,t1
  a2faf6:	016a9023          	sh	s6,0(s5)
  a2fafa:	018bfbb3          	and	s7,s7,s8
  a2fafe:	0306                	slli	t1,t1,0x1
  a2fb00:	01737c33          	and	s8,t1,s7
  a2fb04:	00db8ab3          	add	s5,s7,a3
  a2fb08:	9ae2                	add	s5,s5,s8
  a2fb0a:	03550a9b          	addshf	s5,a0,s5,sll,1
  a2fb0e:	000adb03          	lhu	s6,0(s5)
  a2fb12:	00c4f863          	bgeu	s1,a2,a2fb22 <LzmaDec_DecodeReal2+0x50a>
  a2fb16:	00074903          	lbu	s2,0(a4)
  a2fb1a:	04a2                	slli	s1,s1,0x8
  a2fb1c:	0705                	addi	a4,a4,1
  a2fb1e:	10f9279b          	orshf	a5,s2,a5,sll,8
  a2fb22:	00b4d913          	srli	s2,s1,0xb
  a2fb26:	03690933          	mul	s2,s2,s6
  a2fb2a:	0686                	slli	a3,a3,0x1
  a2fb2c:	0f27fb63          	bgeu	a5,s2,a2fc22 <LzmaDec_DecodeReal2+0x60a>
  a2fb30:	416804b3          	sub	s1,a6,s6
  a2fb34:	4a9b0b1b          	addshf	s6,s6,s1,srl,5
  a2fb38:	fff34c13          	not	s8,t1
  a2fb3c:	016a9023          	sh	s6,0(s5)
  a2fb40:	017c7c33          	and	s8,s8,s7
  a2fb44:	0306                	slli	t1,t1,0x1
  a2fb46:	01837ab3          	and	s5,t1,s8
  a2fb4a:	00dc0b33          	add	s6,s8,a3
  a2fb4e:	9b56                	add	s6,s6,s5
  a2fb50:	03650b1b          	addshf	s6,a0,s6,sll,1
  a2fb54:	000b5b83          	lhu	s7,0(s6) # 1000 <ccause+0x3e>
  a2fb58:	00c97763          	bgeu	s2,a2,a2fb66 <LzmaDec_DecodeReal2+0x54e>
  a2fb5c:	2304                	lbu	s1,0(a4)
  a2fb5e:	0922                	slli	s2,s2,0x8
  a2fb60:	0705                	addi	a4,a4,1
  a2fb62:	10f4a79b          	orshf	a5,s1,a5,sll,8
  a2fb66:	00b95493          	srli	s1,s2,0xb
  a2fb6a:	037484b3          	mul	s1,s1,s7
  a2fb6e:	0686                	slli	a3,a3,0x1
  a2fb70:	0c97f363          	bgeu	a5,s1,a2fc36 <LzmaDec_DecodeReal2+0x61e>
  a2fb74:	41780933          	sub	s2,a6,s7
  a2fb78:	4b2b8b9b          	addshf	s7,s7,s2,srl,5
  a2fb7c:	fff34a93          	not	s5,t1
  a2fb80:	017b1023          	sh	s7,0(s6)
  a2fb84:	018afab3          	and	s5,s5,s8
  a2fb88:	026ac31b          	andshf	t1,s5,t1,sll,1
  a2fb8c:	9ab6                	add	s5,s5,a3
  a2fb8e:	9356                	add	t1,t1,s5
  a2fb90:	0265051b          	addshf	a0,a0,t1,sll,1
  a2fb94:	00055303          	lhu	t1,0(a0)
  a2fb98:	00c4f863          	bgeu	s1,a2,a2fba8 <LzmaDec_DecodeReal2+0x590>
  a2fb9c:	00074903          	lbu	s2,0(a4)
  a2fba0:	04a2                	slli	s1,s1,0x8
  a2fba2:	0705                	addi	a4,a4,1
  a2fba4:	10f9279b          	orshf	a5,s2,a5,sll,8
  a2fba8:	00b4d913          	srli	s2,s1,0xb
  a2fbac:	02690933          	mul	s2,s2,t1
  a2fbb0:	0686                	slli	a3,a3,0x1
  a2fbb2:	0927fb63          	bgeu	a5,s2,a2fc48 <LzmaDec_DecodeReal2+0x630>
  a2fbb6:	406804b3          	sub	s1,a6,t1
  a2fbba:	4a93031b          	addshf	t1,t1,s1,srl,5
  a2fbbe:	00651023          	sh	t1,0(a0)
  a2fbc2:	bb21                	j	a2f8da <LzmaDec_DecodeReal2+0x2c2>
  a2fbc4:	4b29191b          	subshf	s2,s2,s2,srl,5
  a2fbc8:	8f85                	sub	a5,a5,s1
  a2fbca:	012a9023          	sh	s2,0(s5)
  a2fbce:	409684b3          	sub	s1,a3,s1
  a2fbd2:	468d                	li	a3,3
  a2fbd4:	bd19                	j	a2f9ea <LzmaDec_DecodeReal2+0x3d2>
  a2fbd6:	4b6b1b1b          	subshf	s6,s6,s6,srl,5
  a2fbda:	412787b3          	sub	a5,a5,s2
  a2fbde:	016a9023          	sh	s6,0(s5)
  a2fbe2:	0685                	addi	a3,a3,1
  a2fbe4:	41248933          	sub	s2,s1,s2
  a2fbe8:	b5a1                	j	a2fa30 <LzmaDec_DecodeReal2+0x418>
  a2fbea:	4b6b1b1b          	subshf	s6,s6,s6,srl,5
  a2fbee:	8f85                	sub	a5,a5,s1
  a2fbf0:	016a9023          	sh	s6,0(s5)
  a2fbf4:	0685                	addi	a3,a3,1
  a2fbf6:	409904b3          	sub	s1,s2,s1
  a2fbfa:	bdad                	j	a2fa74 <LzmaDec_DecodeReal2+0x45c>
  a2fbfc:	4b6b1b1b          	subshf	s6,s6,s6,srl,5
  a2fc00:	412787b3          	sub	a5,a5,s2
  a2fc04:	016a9023          	sh	s6,0(s5)
  a2fc08:	0685                	addi	a3,a3,1
  a2fc0a:	41248933          	sub	s2,s1,s2
  a2fc0e:	b575                	j	a2faba <LzmaDec_DecodeReal2+0x4a2>
  a2fc10:	4b6b1b1b          	subshf	s6,s6,s6,srl,5
  a2fc14:	8f85                	sub	a5,a5,s1
  a2fc16:	016a9023          	sh	s6,0(s5)
  a2fc1a:	0685                	addi	a3,a3,1
  a2fc1c:	409904b3          	sub	s1,s2,s1
  a2fc20:	bdf9                	j	a2fafe <LzmaDec_DecodeReal2+0x4e6>
  a2fc22:	4b6b1b1b          	subshf	s6,s6,s6,srl,5
  a2fc26:	412787b3          	sub	a5,a5,s2
  a2fc2a:	016a9023          	sh	s6,0(s5)
  a2fc2e:	0685                	addi	a3,a3,1
  a2fc30:	41248933          	sub	s2,s1,s2
  a2fc34:	bf01                	j	a2fb44 <LzmaDec_DecodeReal2+0x52c>
  a2fc36:	4b7b9b9b          	subshf	s7,s7,s7,srl,5
  a2fc3a:	8f85                	sub	a5,a5,s1
  a2fc3c:	017b1023          	sh	s7,0(s6)
  a2fc40:	0685                	addi	a3,a3,1
  a2fc42:	409904b3          	sub	s1,s2,s1
  a2fc46:	b789                	j	a2fb88 <LzmaDec_DecodeReal2+0x570>
  a2fc48:	4a63131b          	subshf	t1,t1,t1,srl,5
  a2fc4c:	412787b3          	sub	a5,a5,s2
  a2fc50:	00651023          	sh	t1,0(a0)
  a2fc54:	b335                	j	a2f980 <LzmaDec_DecodeReal2+0x368>
  a2fc56:	4a63131b          	subshf	t1,t1,t1,srl,5
  a2fc5a:	006a9023          	sh	t1,0(s5)
  a2fc5e:	010f0313          	addi	t1,t5,16
  a2fc62:	0306                	slli	t1,t1,0x1
  a2fc64:	006f8b33          	add	s6,t6,t1
  a2fc68:	40d90933          	sub	s2,s2,a3
  a2fc6c:	8f95                	sub	a5,a5,a3
  a2fc6e:	000b5a83          	lhu	s5,0(s6)
  a2fc72:	00c97763          	bgeu	s2,a2,a2fc80 <LzmaDec_DecodeReal2+0x668>
  a2fc76:	2314                	lbu	a3,0(a4)
  a2fc78:	0922                	slli	s2,s2,0x8
  a2fc7a:	0705                	addi	a4,a4,1
  a2fc7c:	10f6a79b          	orshf	a5,a3,a5,sll,8
  a2fc80:	00b95693          	srli	a3,s2,0xb
  a2fc84:	035686b3          	mul	a3,a3,s5
  a2fc88:	12d7f363          	bgeu	a5,a3,a2fdae <LzmaDec_DecodeReal2+0x796>
  a2fc8c:	415808b3          	sub	a7,a6,s5
  a2fc90:	5322                	lw	t1,40(sp)
  a2fc92:	4b1a8a9b          	addshf	s5,s5,a7,srl,5
  a2fc96:	015b1023          	sh	s5,0(s6)
  a2fc9a:	0f31                	addi	t5,t5,12
  a2fc9c:	00035483          	lhu	s1,0(t1)
  a2fca0:	00c6f863          	bgeu	a3,a2,a2fcb0 <LzmaDec_DecodeReal2+0x698>
  a2fca4:	00074883          	lbu	a7,0(a4)
  a2fca8:	06a2                	slli	a3,a3,0x8
  a2fcaa:	0705                	addi	a4,a4,1
  a2fcac:	10f8a79b          	orshf	a5,a7,a5,sll,8
  a2fcb0:	00b6d893          	srli	a7,a3,0xb
  a2fcb4:	029888b3          	mul	a7,a7,s1
  a2fcb8:	2917f463          	bgeu	a5,a7,a2ff40 <LzmaDec_DecodeReal2+0x928>
  a2fcbc:	409806b3          	sub	a3,a6,s1
  a2fcc0:	4ad4849b          	addshf	s1,s1,a3,srl,5
  a2fcc4:	00931023          	sh	s1,0(t1)
  a2fcc8:	02a3051b          	addshf	a0,t1,a0,sll,1
  a2fccc:	2136                	lhu	a3,2(a0)
  a2fcce:	00c8f863          	bgeu	a7,a2,a2fcde <LzmaDec_DecodeReal2+0x6c6>
  a2fcd2:	00074303          	lbu	t1,0(a4)
  a2fcd6:	08a2                	slli	a7,a7,0x8
  a2fcd8:	0705                	addi	a4,a4,1
  a2fcda:	10f3279b          	orshf	a5,t1,a5,sll,8
  a2fcde:	00b8d493          	srli	s1,a7,0xb
  a2fce2:	02d484b3          	mul	s1,s1,a3
  a2fce6:	2297f263          	bgeu	a5,s1,a2ff0a <LzmaDec_DecodeReal2+0x8f2>
  a2fcea:	40d808b3          	sub	a7,a6,a3
  a2fcee:	4b16869b          	addshf	a3,a3,a7,srl,5
  a2fcf2:	a136                	sh	a3,2(a0)
  a2fcf4:	4689                	li	a3,2
  a2fcf6:	0686                	slli	a3,a3,0x1
  a2fcf8:	00d50933          	add	s2,a0,a3
  a2fcfc:	00095303          	lhu	t1,0(s2)
  a2fd00:	00c4f863          	bgeu	s1,a2,a2fd10 <LzmaDec_DecodeReal2+0x6f8>
  a2fd04:	00074883          	lbu	a7,0(a4)
  a2fd08:	04a2                	slli	s1,s1,0x8
  a2fd0a:	0705                	addi	a4,a4,1
  a2fd0c:	10f8a79b          	orshf	a5,a7,a5,sll,8
  a2fd10:	00b4d893          	srli	a7,s1,0xb
  a2fd14:	026888b3          	mul	a7,a7,t1
  a2fd18:	2117f163          	bgeu	a5,a7,a2ff1a <LzmaDec_DecodeReal2+0x902>
  a2fd1c:	406804b3          	sub	s1,a6,t1
  a2fd20:	4a93031b          	addshf	t1,t1,s1,srl,5
  a2fd24:	00691023          	sh	t1,0(s2)
  a2fd28:	0686                	slli	a3,a3,0x1
  a2fd2a:	9536                	add	a0,a0,a3
  a2fd2c:	2106                	lhu	s1,0(a0)
  a2fd2e:	00c8f863          	bgeu	a7,a2,a2fd3e <LzmaDec_DecodeReal2+0x726>
  a2fd32:	00074303          	lbu	t1,0(a4)
  a2fd36:	08a2                	slli	a7,a7,0x8
  a2fd38:	0705                	addi	a4,a4,1
  a2fd3a:	10f3279b          	orshf	a5,t1,a5,sll,8
  a2fd3e:	00b8d913          	srli	s2,a7,0xb
  a2fd42:	02990933          	mul	s2,s2,s1
  a2fd46:	1f27f463          	bgeu	a5,s2,a2ff2e <LzmaDec_DecodeReal2+0x916>
  a2fd4a:	409808b3          	sub	a7,a6,s1
  a2fd4e:	4b14849b          	addshf	s1,s1,a7,srl,5
  a2fd52:	a106                	sh	s1,0(a0)
  a2fd54:	452d                	li	a0,11
  a2fd56:	ff868893          	addi	a7,a3,-8
  a2fd5a:	35e56a63          	bltu	a0,t5,a300ae <LzmaDec_DecodeReal2+0xa96>
  a2fd5e:	41d586b3          	sub	a3,a1,t4
  a2fd62:	0889                	addi	a7,a7,2
  a2fd64:	68068863          	beqz	a3,a303f4 <LzmaDec_DecodeReal2+0xddc>
  a2fd68:	8546                	mv	a0,a7
  a2fd6a:	0116f363          	bgeu	a3,a7,a2fd70 <LzmaDec_DecodeReal2+0x758>
  a2fd6e:	8536                	mv	a0,a3
  a2fd70:	405e8333          	sub	t1,t4,t0
  a2fd74:	4681                	li	a3,0
  a2fd76:	005ef363          	bgeu	t4,t0,a2fd7c <LzmaDec_DecodeReal2+0x764>
  a2fd7a:	86e6                	mv	a3,s9
  a2fd7c:	969a                	add	a3,a3,t1
  a2fd7e:	40dc8333          	sub	t1,s9,a3
  a2fd82:	93aa                	add	t2,t2,a0
  a2fd84:	40a888b3          	sub	a7,a7,a0
  a2fd88:	00ae84b3          	add	s1,t4,a0
  a2fd8c:	72a36263          	bltu	t1,a0,a304b0 <LzmaDec_DecodeReal2+0xe98>
  a2fd90:	01da0333          	add	t1,s4,t4
  a2fd94:	41d686b3          	sub	a3,a3,t4
  a2fd98:	951a                	add	a0,a0,t1
  a2fd9a:	8ea6                	mv	t4,s1
  a2fd9c:	00d304b3          	add	s1,t1,a3
  a2fda0:	2084                	lbu	s1,0(s1)
  a2fda2:	0305                	addi	t1,t1,1
  a2fda4:	fe930fa3          	sb	s1,-1(t1)
  a2fda8:	fe651ae3          	bne	a0,t1,a2fd9c <LzmaDec_DecodeReal2+0x784>
  a2fdac:	be1d                	j	a2f8e2 <LzmaDec_DecodeReal2+0x2ca>
  a2fdae:	4b5a9a9b          	subshf	s5,s5,s5,srl,5
  a2fdb2:	015b1023          	sh	s5,0(s6)
  a2fdb6:	01830b13          	addi	s6,t1,24
  a2fdba:	9b7e                	add	s6,s6,t6
  a2fdbc:	40d90933          	sub	s2,s2,a3
  a2fdc0:	8f95                	sub	a5,a5,a3
  a2fdc2:	000b5a83          	lhu	s5,0(s6)
  a2fdc6:	00c97763          	bgeu	s2,a2,a2fdd4 <LzmaDec_DecodeReal2+0x7bc>
  a2fdca:	2314                	lbu	a3,0(a4)
  a2fdcc:	0922                	slli	s2,s2,0x8
  a2fdce:	0705                	addi	a4,a4,1
  a2fdd0:	10f6a79b          	orshf	a5,a3,a5,sll,8
  a2fdd4:	00b95693          	srli	a3,s2,0xb
  a2fdd8:	035686b3          	mul	a3,a3,s5
  a2fddc:	08d7f763          	bgeu	a5,a3,a2fe6a <LzmaDec_DecodeReal2+0x852>
  a2fde0:	41580333          	sub	t1,a6,s5
  a2fde4:	4a6a8a9b          	addshf	s5,s5,t1,srl,5
  a2fde8:	4342                	lw	t1,16(sp)
  a2fdea:	015b1023          	sh	s5,0(s6)
  a2fdee:	949a                	add	s1,s1,t1
  a2fdf0:	94fe                	add	s1,s1,t6
  a2fdf2:	0004d303          	lhu	t1,0(s1)
  a2fdf6:	00c6f863          	bgeu	a3,a2,a2fe06 <LzmaDec_DecodeReal2+0x7ee>
  a2fdfa:	00074903          	lbu	s2,0(a4)
  a2fdfe:	06a2                	slli	a3,a3,0x8
  a2fe00:	0705                	addi	a4,a4,1
  a2fe02:	10f9279b          	orshf	a5,s2,a5,sll,8
  a2fe06:	00b6d913          	srli	s2,a3,0xb
  a2fe0a:	02690933          	mul	s2,s2,t1
  a2fe0e:	0327fb63          	bgeu	a5,s2,a2fe44 <LzmaDec_DecodeReal2+0x82c>
  a2fe12:	406806b3          	sub	a3,a6,t1
  a2fe16:	4ad3031b          	addshf	t1,t1,a3,srl,5
  a2fe1a:	00649023          	sh	t1,0(s1)
  a2fe1e:	405e86b3          	sub	a3,t4,t0
  a2fe22:	4501                	li	a0,0
  a2fe24:	005ef363          	bgeu	t4,t0,a2fe2a <LzmaDec_DecodeReal2+0x812>
  a2fe28:	8566                	mv	a0,s9
  a2fe2a:	96d2                	add	a3,a3,s4
  a2fe2c:	96aa                	add	a3,a3,a0
  a2fe2e:	2288                	lbu	a0,0(a3)
  a2fe30:	01da06b3          	add	a3,s4,t4
  a2fe34:	0385                	addi	t2,t2,1
  a2fe36:	a288                	sb	a0,0(a3)
  a2fe38:	0e85                	addi	t4,t4,1
  a2fe3a:	469d                	li	a3,7
  a2fe3c:	68df7b63          	bgeu	t5,a3,a304d2 <LzmaDec_DecodeReal2+0xeba>
  a2fe40:	4f25                	li	t5,9
  a2fe42:	b445                	j	a2f8e2 <LzmaDec_DecodeReal2+0x2ca>
  a2fe44:	88a2                	mv	a7,s0
  a2fe46:	4a63131b          	subshf	t1,t1,t1,srl,5
  a2fe4a:	8416                	mv	s0,t0
  a2fe4c:	412686b3          	sub	a3,a3,s2
  a2fe50:	412787b3          	sub	a5,a5,s2
  a2fe54:	00649023          	sh	t1,0(s1)
  a2fe58:	82c6                	mv	t0,a7
  a2fe5a:	072f7b3b          	bgeui	t5,7,a2ff06 <LzmaDec_DecodeReal2+0x8ee>
  a2fe5e:	4f21                	li	t5,8
  a2fe60:	8896                	mv	a7,t0
  a2fe62:	5312                	lw	t1,36(sp)
  a2fe64:	82a2                	mv	t0,s0
  a2fe66:	8446                	mv	s0,a7
  a2fe68:	bd15                	j	a2fc9c <LzmaDec_DecodeReal2+0x684>
  a2fe6a:	4b5a9a9b          	subshf	s5,s5,s5,srl,5
  a2fe6e:	03030493          	addi	s1,t1,48
  a2fe72:	015b1023          	sh	s5,0(s6)
  a2fe76:	94fe                	add	s1,s1,t6
  a2fe78:	40d90933          	sub	s2,s2,a3
  a2fe7c:	8f95                	sub	a5,a5,a3
  a2fe7e:	0004d883          	lhu	a7,0(s1)
  a2fe82:	00c97763          	bgeu	s2,a2,a2fe90 <LzmaDec_DecodeReal2+0x878>
  a2fe86:	2314                	lbu	a3,0(a4)
  a2fe88:	0922                	slli	s2,s2,0x8
  a2fe8a:	0705                	addi	a4,a4,1
  a2fe8c:	10f6a79b          	orshf	a5,a3,a5,sll,8
  a2fe90:	00b95693          	srli	a3,s2,0xb
  a2fe94:	031686b3          	mul	a3,a3,a7
  a2fe98:	00d7f963          	bgeu	a5,a3,a2feaa <LzmaDec_DecodeReal2+0x892>
  a2fe9c:	41180333          	sub	t1,a6,a7
  a2fea0:	4a68889b          	addshf	a7,a7,t1,srl,5
  a2fea4:	01149023          	sh	a7,0(s1)
  a2fea8:	bf4d                	j	a2fe5a <LzmaDec_DecodeReal2+0x842>
  a2feaa:	4b18989b          	subshf	a7,a7,a7,srl,5
  a2feae:	04830313          	addi	t1,t1,72
  a2feb2:	01149023          	sh	a7,0(s1)
  a2feb6:	937e                	add	t1,t1,t6
  a2feb8:	40d90933          	sub	s2,s2,a3
  a2febc:	8f95                	sub	a5,a5,a3
  a2febe:	00035883          	lhu	a7,0(t1)
  a2fec2:	00c97763          	bgeu	s2,a2,a2fed0 <LzmaDec_DecodeReal2+0x8b8>
  a2fec6:	2314                	lbu	a3,0(a4)
  a2fec8:	0922                	slli	s2,s2,0x8
  a2feca:	0705                	addi	a4,a4,1
  a2fecc:	10f6a79b          	orshf	a5,a3,a5,sll,8
  a2fed0:	00b95693          	srli	a3,s2,0xb
  a2fed4:	031686b3          	mul	a3,a3,a7
  a2fed8:	00d7fc63          	bgeu	a5,a3,a2fef0 <LzmaDec_DecodeReal2+0x8d8>
  a2fedc:	411804b3          	sub	s1,a6,a7
  a2fee0:	4a98889b          	addshf	a7,a7,s1,srl,5
  a2fee4:	01131023          	sh	a7,0(t1)
  a2fee8:	88a2                	mv	a7,s0
  a2feea:	844e                	mv	s0,s3
  a2feec:	89c6                	mv	s3,a7
  a2feee:	b7b5                	j	a2fe5a <LzmaDec_DecodeReal2+0x842>
  a2fef0:	4b18989b          	subshf	a7,a7,a7,srl,5
  a2fef4:	8f95                	sub	a5,a5,a3
  a2fef6:	01131023          	sh	a7,0(t1)
  a2fefa:	40d906b3          	sub	a3,s2,a3
  a2fefe:	88a2                	mv	a7,s0
  a2ff00:	846a                	mv	s0,s10
  a2ff02:	8d4e                	mv	s10,s3
  a2ff04:	b7e5                	j	a2feec <LzmaDec_DecodeReal2+0x8d4>
  a2ff06:	4f2d                	li	t5,11
  a2ff08:	bfa1                	j	a2fe60 <LzmaDec_DecodeReal2+0x848>
  a2ff0a:	4ad6969b          	subshf	a3,a3,a3,srl,5
  a2ff0e:	8f85                	sub	a5,a5,s1
  a2ff10:	a136                	sh	a3,2(a0)
  a2ff12:	409884b3          	sub	s1,a7,s1
  a2ff16:	468d                	li	a3,3
  a2ff18:	bbf9                	j	a2fcf6 <LzmaDec_DecodeReal2+0x6de>
  a2ff1a:	4a63131b          	subshf	t1,t1,t1,srl,5
  a2ff1e:	411787b3          	sub	a5,a5,a7
  a2ff22:	00691023          	sh	t1,0(s2)
  a2ff26:	0685                	addi	a3,a3,1
  a2ff28:	411488b3          	sub	a7,s1,a7
  a2ff2c:	bbf5                	j	a2fd28 <LzmaDec_DecodeReal2+0x710>
  a2ff2e:	4a94949b          	subshf	s1,s1,s1,srl,5
  a2ff32:	412787b3          	sub	a5,a5,s2
  a2ff36:	a106                	sh	s1,0(a0)
  a2ff38:	0685                	addi	a3,a3,1
  a2ff3a:	41288933          	sub	s2,a7,s2
  a2ff3e:	bd19                	j	a2fd54 <LzmaDec_DecodeReal2+0x73c>
  a2ff40:	4a94949b          	subshf	s1,s1,s1,srl,5
  a2ff44:	00931023          	sh	s1,0(t1)
  a2ff48:	41168933          	sub	s2,a3,a7
  a2ff4c:	411787b3          	sub	a5,a5,a7
  a2ff50:	01035483          	lhu	s1,16(t1)
  a2ff54:	00c97763          	bgeu	s2,a2,a2ff62 <LzmaDec_DecodeReal2+0x94a>
  a2ff58:	2314                	lbu	a3,0(a4)
  a2ff5a:	0922                	slli	s2,s2,0x8
  a2ff5c:	0705                	addi	a4,a4,1
  a2ff5e:	10f6a79b          	orshf	a5,a3,a5,sll,8
  a2ff62:	00b95893          	srli	a7,s2,0xb
  a2ff66:	029888b3          	mul	a7,a7,s1
  a2ff6a:	0f17f263          	bgeu	a5,a7,a3004e <LzmaDec_DecodeReal2+0xa36>
  a2ff6e:	409806b3          	sub	a3,a6,s1
  a2ff72:	4ad4849b          	addshf	s1,s1,a3,srl,5
  a2ff76:	0521                	addi	a0,a0,8
  a2ff78:	00931823          	sh	s1,16(t1)
  a2ff7c:	02a3031b          	addshf	t1,t1,a0,sll,1
  a2ff80:	00235683          	lhu	a3,2(t1)
  a2ff84:	00c8f763          	bgeu	a7,a2,a2ff92 <LzmaDec_DecodeReal2+0x97a>
  a2ff88:	2308                	lbu	a0,0(a4)
  a2ff8a:	08a2                	slli	a7,a7,0x8
  a2ff8c:	0705                	addi	a4,a4,1
  a2ff8e:	10f5279b          	orshf	a5,a0,a5,sll,8
  a2ff92:	00b8d493          	srli	s1,a7,0xb
  a2ff96:	02d484b3          	mul	s1,s1,a3
  a2ff9a:	0697fe63          	bgeu	a5,s1,a30016 <LzmaDec_DecodeReal2+0x9fe>
  a2ff9e:	40d80533          	sub	a0,a6,a3
  a2ffa2:	4aa6869b          	addshf	a3,a3,a0,srl,5
  a2ffa6:	00d31123          	sh	a3,2(t1)
  a2ffaa:	4889                	li	a7,2
  a2ffac:	0886                	slli	a7,a7,0x1
  a2ffae:	01130933          	add	s2,t1,a7
  a2ffb2:	00095503          	lhu	a0,0(s2)
  a2ffb6:	00c4f763          	bgeu	s1,a2,a2ffc4 <LzmaDec_DecodeReal2+0x9ac>
  a2ffba:	2314                	lbu	a3,0(a4)
  a2ffbc:	04a2                	slli	s1,s1,0x8
  a2ffbe:	0705                	addi	a4,a4,1
  a2ffc0:	10f6a79b          	orshf	a5,a3,a5,sll,8
  a2ffc4:	00b4d693          	srli	a3,s1,0xb
  a2ffc8:	02a686b3          	mul	a3,a3,a0
  a2ffcc:	04d7fe63          	bgeu	a5,a3,a30028 <LzmaDec_DecodeReal2+0xa10>
  a2ffd0:	40a804b3          	sub	s1,a6,a0
  a2ffd4:	4a95051b          	addshf	a0,a0,s1,srl,5
  a2ffd8:	00a91023          	sh	a0,0(s2)
  a2ffdc:	0886                	slli	a7,a7,0x1
  a2ffde:	9346                	add	t1,t1,a7
  a2ffe0:	00035483          	lhu	s1,0(t1)
  a2ffe4:	00c6f763          	bgeu	a3,a2,a2fff2 <LzmaDec_DecodeReal2+0x9da>
  a2ffe8:	2308                	lbu	a0,0(a4)
  a2ffea:	06a2                	slli	a3,a3,0x8
  a2ffec:	0705                	addi	a4,a4,1
  a2ffee:	10f5279b          	orshf	a5,a0,a5,sll,8
  a2fff2:	00b6d913          	srli	s2,a3,0xb
  a2fff6:	02990933          	mul	s2,s2,s1
  a2fffa:	0527f063          	bgeu	a5,s2,a3003a <LzmaDec_DecodeReal2+0xa22>
  a2fffe:	409806b3          	sub	a3,a6,s1
  a30002:	4ad4849b          	addshf	s1,s1,a3,srl,5
  a30006:	00931023          	sh	s1,0(t1)
  a3000a:	46ad                	li	a3,11
  a3000c:	d5e6f9e3          	bgeu	a3,t5,a2fd5e <LzmaDec_DecodeReal2+0x746>
  a30010:	20000313          	li	t1,512
  a30014:	a06d                	j	a300be <LzmaDec_DecodeReal2+0xaa6>
  a30016:	4ad6969b          	subshf	a3,a3,a3,srl,5
  a3001a:	8f85                	sub	a5,a5,s1
  a3001c:	00d31123          	sh	a3,2(t1)
  a30020:	409884b3          	sub	s1,a7,s1
  a30024:	488d                	li	a7,3
  a30026:	b759                	j	a2ffac <LzmaDec_DecodeReal2+0x994>
  a30028:	4aa5151b          	subshf	a0,a0,a0,srl,5
  a3002c:	8f95                	sub	a5,a5,a3
  a3002e:	00a91023          	sh	a0,0(s2)
  a30032:	0885                	addi	a7,a7,1
  a30034:	40d486b3          	sub	a3,s1,a3
  a30038:	b755                	j	a2ffdc <LzmaDec_DecodeReal2+0x9c4>
  a3003a:	4a94949b          	subshf	s1,s1,s1,srl,5
  a3003e:	412787b3          	sub	a5,a5,s2
  a30042:	00931023          	sh	s1,0(t1)
  a30046:	0885                	addi	a7,a7,1
  a30048:	41268933          	sub	s2,a3,s2
  a3004c:	bf7d                	j	a3000a <LzmaDec_DecodeReal2+0x9f2>
  a3004e:	4a94949b          	subshf	s1,s1,s1,srl,5
  a30052:	41190933          	sub	s2,s2,a7
  a30056:	411787b3          	sub	a5,a5,a7
  a3005a:	00931823          	sh	s1,16(t1)
  a3005e:	4885                	li	a7,1
  a30060:	0ff00a93          	li	s5,255
  a30064:	0886                	slli	a7,a7,0x1
  a30066:	20088493          	addi	s1,a7,512
  a3006a:	949a                	add	s1,s1,t1
  a3006c:	2096                	lhu	a3,0(s1)
  a3006e:	00c97763          	bgeu	s2,a2,a3007c <LzmaDec_DecodeReal2+0xa64>
  a30072:	2308                	lbu	a0,0(a4)
  a30074:	0922                	slli	s2,s2,0x8
  a30076:	0705                	addi	a4,a4,1
  a30078:	10f5279b          	orshf	a5,a0,a5,sll,8
  a3007c:	00b95513          	srli	a0,s2,0xb
  a30080:	02d50533          	mul	a0,a0,a3
  a30084:	00a7fd63          	bgeu	a5,a0,a3009e <LzmaDec_DecodeReal2+0xa86>
  a30088:	40d80933          	sub	s2,a6,a3
  a3008c:	4b26869b          	addshf	a3,a3,s2,srl,5
  a30090:	a096                	sh	a3,0(s1)
  a30092:	892a                	mv	s2,a0
  a30094:	fd1af8e3          	bgeu	s5,a7,a30064 <LzmaDec_DecodeReal2+0xa4c>
  a30098:	f1088893          	addi	a7,a7,-240
  a3009c:	b7bd                	j	a3000a <LzmaDec_DecodeReal2+0x9f2>
  a3009e:	4ad6969b          	subshf	a3,a3,a3,srl,5
  a300a2:	40a90933          	sub	s2,s2,a0
  a300a6:	8f89                	sub	a5,a5,a0
  a300a8:	a096                	sh	a3,0(s1)
  a300aa:	0885                	addi	a7,a7,1
  a300ac:	b7e5                	j	a30094 <LzmaDec_DecodeReal2+0xa7c>
  a300ae:	450d                	li	a0,3
  a300b0:	20000313          	li	t1,512
  a300b4:	01156563          	bltu	a0,a7,a300be <LzmaDec_DecodeReal2+0xaa6>
  a300b8:	16e5                	addi	a3,a3,-7
  a300ba:	00769313          	slli	t1,a3,0x7
  a300be:	937e                	add	t1,t1,t6
  a300c0:	00235683          	lhu	a3,2(t1)
  a300c4:	00c97763          	bgeu	s2,a2,a300d2 <LzmaDec_DecodeReal2+0xaba>
  a300c8:	2308                	lbu	a0,0(a4)
  a300ca:	0922                	slli	s2,s2,0x8
  a300cc:	0705                	addi	a4,a4,1
  a300ce:	10f5279b          	orshf	a5,a0,a5,sll,8
  a300d2:	00b95493          	srli	s1,s2,0xb
  a300d6:	02d484b3          	mul	s1,s1,a3
  a300da:	1897fc63          	bgeu	a5,s1,a30272 <LzmaDec_DecodeReal2+0xc5a>
  a300de:	40d80533          	sub	a0,a6,a3
  a300e2:	4aa6869b          	addshf	a3,a3,a0,srl,5
  a300e6:	00d31123          	sh	a3,2(t1)
  a300ea:	4689                	li	a3,2
  a300ec:	0686                	slli	a3,a3,0x1
  a300ee:	00d30ab3          	add	s5,t1,a3
  a300f2:	000ad903          	lhu	s2,0(s5)
  a300f6:	00c4f763          	bgeu	s1,a2,a30104 <LzmaDec_DecodeReal2+0xaec>
  a300fa:	2308                	lbu	a0,0(a4)
  a300fc:	04a2                	slli	s1,s1,0x8
  a300fe:	0705                	addi	a4,a4,1
  a30100:	10f5279b          	orshf	a5,a0,a5,sll,8
  a30104:	00b4d513          	srli	a0,s1,0xb
  a30108:	03250533          	mul	a0,a0,s2
  a3010c:	16a7fc63          	bgeu	a5,a0,a30284 <LzmaDec_DecodeReal2+0xc6c>
  a30110:	412804b3          	sub	s1,a6,s2
  a30114:	4a99091b          	addshf	s2,s2,s1,srl,5
  a30118:	012a9023          	sh	s2,0(s5)
  a3011c:	0686                	slli	a3,a3,0x1
  a3011e:	00d30ab3          	add	s5,t1,a3
  a30122:	000ad903          	lhu	s2,0(s5)
  a30126:	00c57763          	bgeu	a0,a2,a30134 <LzmaDec_DecodeReal2+0xb1c>
  a3012a:	2304                	lbu	s1,0(a4)
  a3012c:	0522                	slli	a0,a0,0x8
  a3012e:	0705                	addi	a4,a4,1
  a30130:	10f4a79b          	orshf	a5,s1,a5,sll,8
  a30134:	00b55493          	srli	s1,a0,0xb
  a30138:	032484b3          	mul	s1,s1,s2
  a3013c:	1497fd63          	bgeu	a5,s1,a30296 <LzmaDec_DecodeReal2+0xc7e>
  a30140:	41280533          	sub	a0,a6,s2
  a30144:	4aa9091b          	addshf	s2,s2,a0,srl,5
  a30148:	012a9023          	sh	s2,0(s5)
  a3014c:	0686                	slli	a3,a3,0x1
  a3014e:	00d30ab3          	add	s5,t1,a3
  a30152:	000ad903          	lhu	s2,0(s5)
  a30156:	00c4f763          	bgeu	s1,a2,a30164 <LzmaDec_DecodeReal2+0xb4c>
  a3015a:	2308                	lbu	a0,0(a4)
  a3015c:	04a2                	slli	s1,s1,0x8
  a3015e:	0705                	addi	a4,a4,1
  a30160:	10f5279b          	orshf	a5,a0,a5,sll,8
  a30164:	00b4d513          	srli	a0,s1,0xb
  a30168:	03250533          	mul	a0,a0,s2
  a3016c:	12a7fe63          	bgeu	a5,a0,a302a8 <LzmaDec_DecodeReal2+0xc90>
  a30170:	412804b3          	sub	s1,a6,s2
  a30174:	4a99091b          	addshf	s2,s2,s1,srl,5
  a30178:	012a9023          	sh	s2,0(s5)
  a3017c:	0686                	slli	a3,a3,0x1
  a3017e:	00d30ab3          	add	s5,t1,a3
  a30182:	000ad903          	lhu	s2,0(s5)
  a30186:	00c57763          	bgeu	a0,a2,a30194 <LzmaDec_DecodeReal2+0xb7c>
  a3018a:	2304                	lbu	s1,0(a4)
  a3018c:	0522                	slli	a0,a0,0x8
  a3018e:	0705                	addi	a4,a4,1
  a30190:	10f4a79b          	orshf	a5,s1,a5,sll,8
  a30194:	00b55493          	srli	s1,a0,0xb
  a30198:	032484b3          	mul	s1,s1,s2
  a3019c:	1097ff63          	bgeu	a5,s1,a302ba <LzmaDec_DecodeReal2+0xca2>
  a301a0:	41280533          	sub	a0,a6,s2
  a301a4:	4aa9091b          	addshf	s2,s2,a0,srl,5
  a301a8:	012a9023          	sh	s2,0(s5)
  a301ac:	0686                	slli	a3,a3,0x1
  a301ae:	9336                	add	t1,t1,a3
  a301b0:	00035503          	lhu	a0,0(t1)
  a301b4:	00c4f863          	bgeu	s1,a2,a301c4 <LzmaDec_DecodeReal2+0xbac>
  a301b8:	00074903          	lbu	s2,0(a4)
  a301bc:	04a2                	slli	s1,s1,0x8
  a301be:	0705                	addi	a4,a4,1
  a301c0:	10f9279b          	orshf	a5,s2,a5,sll,8
  a301c4:	00b4d913          	srli	s2,s1,0xb
  a301c8:	02a90933          	mul	s2,s2,a0
  a301cc:	1127f063          	bgeu	a5,s2,a302cc <LzmaDec_DecodeReal2+0xcb4>
  a301d0:	40a804b3          	sub	s1,a6,a0
  a301d4:	4a95051b          	addshf	a0,a0,s1,srl,5
  a301d8:	00a31023          	sh	a0,0(t1)
  a301dc:	fc068693          	addi	a3,a3,-64
  a301e0:	450d                	li	a0,3
  a301e2:	06d57563          	bgeu	a0,a3,a3024c <LzmaDec_DecodeReal2+0xc34>
  a301e6:	0016f513          	andi	a0,a3,1
  a301ea:	44b5                	li	s1,13
  a301ec:	0016d313          	srli	t1,a3,0x1
  a301f0:	00256513          	ori	a0,a0,2
  a301f4:	10d4e063          	bltu	s1,a3,a302f4 <LzmaDec_DecodeReal2+0xcdc>
  a301f8:	137d                	addi	t1,t1,-1
  a301fa:	00651533          	sll	a0,a0,t1
  a301fe:	0505                	addi	a0,a0,1
  a30200:	4b85                	li	s7,1
  a30202:	76fd                	lui	a3,0xfffff
  a30204:	30068693          	addi	a3,a3,768 # fffff300 <_gp_+0xff5caa78>
  a30208:	02a68b1b          	addshf	s6,a3,a0,sll,1
  a3020c:	9b7e                	add	s6,s6,t6
  a3020e:	000b5483          	lhu	s1,0(s6)
  a30212:	00c97763          	bgeu	s2,a2,a30220 <LzmaDec_DecodeReal2+0xc08>
  a30216:	2314                	lbu	a3,0(a4)
  a30218:	0922                	slli	s2,s2,0x8
  a3021a:	0705                	addi	a4,a4,1
  a3021c:	10f6a79b          	orshf	a5,a3,a5,sll,8
  a30220:	00b95a93          	srli	s5,s2,0xb
  a30224:	029a8ab3          	mul	s5,s5,s1
  a30228:	001b9693          	slli	a3,s7,0x1
  a3022c:	0b57fa63          	bgeu	a5,s5,a302e0 <LzmaDec_DecodeReal2+0xcc8>
  a30230:	40980933          	sub	s2,a6,s1
  a30234:	4b24849b          	addshf	s1,s1,s2,srl,5
  a30238:	009b1023          	sh	s1,0(s6)
  a3023c:	955e                	add	a0,a0,s7
  a3023e:	8956                	mv	s2,s5
  a30240:	137d                	addi	t1,t1,-1
  a30242:	8bb6                	mv	s7,a3
  a30244:	fa031fe3          	bnez	t1,a30202 <LzmaDec_DecodeReal2+0xbea>
  a30248:	40d506b3          	sub	a3,a0,a3
  a3024c:	44c9                	li	s1,18
  a3024e:	00168513          	addi	a0,a3,1
  a30252:	25e4e863          	bltu	s1,t5,a304a2 <LzmaDec_DecodeReal2+0xe8a>
  a30256:	4f1d                	li	t5,7
  a30258:	831e                	mv	t1,t2
  a3025a:	000d8363          	beqz	s11,a30260 <LzmaDec_DecodeReal2+0xc48>
  a3025e:	836e                	mv	t1,s11
  a30260:	2466e363          	bltu	a3,t1,a304a6 <LzmaDec_DecodeReal2+0xe8e>
  a30264:	8d4e                	mv	s10,s3
  a30266:	20288893          	addi	a7,a7,514
  a3026a:	89a2                	mv	s3,s0
  a3026c:	8416                	mv	s0,t0
  a3026e:	82aa                	mv	t0,a0
  a30270:	a251                	j	a303f4 <LzmaDec_DecodeReal2+0xddc>
  a30272:	4ad6969b          	subshf	a3,a3,a3,srl,5
  a30276:	8f85                	sub	a5,a5,s1
  a30278:	00d31123          	sh	a3,2(t1)
  a3027c:	409904b3          	sub	s1,s2,s1
  a30280:	468d                	li	a3,3
  a30282:	b5ad                	j	a300ec <LzmaDec_DecodeReal2+0xad4>
  a30284:	4b29191b          	subshf	s2,s2,s2,srl,5
  a30288:	8f89                	sub	a5,a5,a0
  a3028a:	012a9023          	sh	s2,0(s5)
  a3028e:	0685                	addi	a3,a3,1
  a30290:	40a48533          	sub	a0,s1,a0
  a30294:	b561                	j	a3011c <LzmaDec_DecodeReal2+0xb04>
  a30296:	4b29191b          	subshf	s2,s2,s2,srl,5
  a3029a:	8f85                	sub	a5,a5,s1
  a3029c:	012a9023          	sh	s2,0(s5)
  a302a0:	0685                	addi	a3,a3,1
  a302a2:	409504b3          	sub	s1,a0,s1
  a302a6:	b55d                	j	a3014c <LzmaDec_DecodeReal2+0xb34>
  a302a8:	4b29191b          	subshf	s2,s2,s2,srl,5
  a302ac:	8f89                	sub	a5,a5,a0
  a302ae:	012a9023          	sh	s2,0(s5)
  a302b2:	0685                	addi	a3,a3,1
  a302b4:	40a48533          	sub	a0,s1,a0
  a302b8:	b5d1                	j	a3017c <LzmaDec_DecodeReal2+0xb64>
  a302ba:	4b29191b          	subshf	s2,s2,s2,srl,5
  a302be:	8f85                	sub	a5,a5,s1
  a302c0:	012a9023          	sh	s2,0(s5)
  a302c4:	0685                	addi	a3,a3,1
  a302c6:	409504b3          	sub	s1,a0,s1
  a302ca:	b5cd                	j	a301ac <LzmaDec_DecodeReal2+0xb94>
  a302cc:	4aa5151b          	subshf	a0,a0,a0,srl,5
  a302d0:	412787b3          	sub	a5,a5,s2
  a302d4:	00a31023          	sh	a0,0(t1)
  a302d8:	0685                	addi	a3,a3,1
  a302da:	41248933          	sub	s2,s1,s2
  a302de:	bdfd                	j	a301dc <LzmaDec_DecodeReal2+0xbc4>
  a302e0:	4a94949b          	subshf	s1,s1,s1,srl,5
  a302e4:	41590933          	sub	s2,s2,s5
  a302e8:	415787b3          	sub	a5,a5,s5
  a302ec:	009b1023          	sh	s1,0(s6)
  a302f0:	9536                	add	a0,a0,a3
  a302f2:	b7b9                	j	a30240 <LzmaDec_DecodeReal2+0xc28>
  a302f4:	136d                	addi	t1,t1,-5
  a302f6:	00c97763          	bgeu	s2,a2,a30304 <LzmaDec_DecodeReal2+0xcec>
  a302fa:	2314                	lbu	a3,0(a4)
  a302fc:	0922                	slli	s2,s2,0x8
  a302fe:	0705                	addi	a4,a4,1
  a30300:	10f6a79b          	orshf	a5,a3,a5,sll,8
  a30304:	00195913          	srli	s2,s2,0x1
  a30308:	412787b3          	sub	a5,a5,s2
  a3030c:	41f7d493          	srai	s1,a5,0x1f
  a30310:	02a4851b          	addshf	a0,s1,a0,sll,1
  a30314:	137d                	addi	t1,t1,-1
  a30316:	009974b3          	and	s1,s2,s1
  a3031a:	0505                	addi	a0,a0,1
  a3031c:	97a6                	add	a5,a5,s1
  a3031e:	fc031ce3          	bnez	t1,a302f6 <LzmaDec_DecodeReal2+0xcde>
  a30322:	0512                	slli	a0,a0,0x4
  a30324:	002fd683          	lhu	a3,2(t6)
  a30328:	00c97863          	bgeu	s2,a2,a30338 <LzmaDec_DecodeReal2+0xd20>
  a3032c:	00074303          	lbu	t1,0(a4)
  a30330:	0922                	slli	s2,s2,0x8
  a30332:	0705                	addi	a4,a4,1
  a30334:	10f3279b          	orshf	a5,t1,a5,sll,8
  a30338:	00b95493          	srli	s1,s2,0xb
  a3033c:	02d484b3          	mul	s1,s1,a3
  a30340:	1097fc63          	bgeu	a5,s1,a30458 <LzmaDec_DecodeReal2+0xe40>
  a30344:	40d80333          	sub	t1,a6,a3
  a30348:	4a66869b          	addshf	a3,a3,t1,srl,5
  a3034c:	00df9123          	sh	a3,2(t6)
  a30350:	4689                	li	a3,2
  a30352:	02df8a9b          	addshf	s5,t6,a3,sll,1
  a30356:	000ad903          	lhu	s2,0(s5)
  a3035a:	00c4f863          	bgeu	s1,a2,a3036a <LzmaDec_DecodeReal2+0xd52>
  a3035e:	00074303          	lbu	t1,0(a4)
  a30362:	04a2                	slli	s1,s1,0x8
  a30364:	0705                	addi	a4,a4,1
  a30366:	10f3279b          	orshf	a5,t1,a5,sll,8
  a3036a:	00b4d313          	srli	t1,s1,0xb
  a3036e:	03230333          	mul	t1,t1,s2
  a30372:	0e67fc63          	bgeu	a5,t1,a3046a <LzmaDec_DecodeReal2+0xe52>
  a30376:	412804b3          	sub	s1,a6,s2
  a3037a:	4a99091b          	addshf	s2,s2,s1,srl,5
  a3037e:	012a9023          	sh	s2,0(s5)
  a30382:	0689                	addi	a3,a3,2
  a30384:	02df8a9b          	addshf	s5,t6,a3,sll,1
  a30388:	000ad903          	lhu	s2,0(s5)
  a3038c:	00c37763          	bgeu	t1,a2,a3039a <LzmaDec_DecodeReal2+0xd82>
  a30390:	2304                	lbu	s1,0(a4)
  a30392:	0322                	slli	t1,t1,0x8
  a30394:	0705                	addi	a4,a4,1
  a30396:	10f4a79b          	orshf	a5,s1,a5,sll,8
  a3039a:	00b35493          	srli	s1,t1,0xb
  a3039e:	032484b3          	mul	s1,s1,s2
  a303a2:	0c97fe63          	bgeu	a5,s1,a3047e <LzmaDec_DecodeReal2+0xe66>
  a303a6:	41280333          	sub	t1,a6,s2
  a303aa:	4a69091b          	addshf	s2,s2,t1,srl,5
  a303ae:	012a9023          	sh	s2,0(s5)
  a303b2:	0691                	addi	a3,a3,4
  a303b4:	02df8a9b          	addshf	s5,t6,a3,sll,1
  a303b8:	000ad303          	lhu	t1,0(s5)
  a303bc:	00c4f863          	bgeu	s1,a2,a303cc <LzmaDec_DecodeReal2+0xdb4>
  a303c0:	00074903          	lbu	s2,0(a4)
  a303c4:	04a2                	slli	s1,s1,0x8
  a303c6:	0705                	addi	a4,a4,1
  a303c8:	10f9279b          	orshf	a5,s2,a5,sll,8
  a303cc:	00b4d913          	srli	s2,s1,0xb
  a303d0:	02690933          	mul	s2,s2,t1
  a303d4:	0b27fe63          	bgeu	a5,s2,a30490 <LzmaDec_DecodeReal2+0xe78>
  a303d8:	406804b3          	sub	s1,a6,t1
  a303dc:	4a93031b          	addshf	t1,t1,s1,srl,5
  a303e0:	006a9023          	sh	t1,0(s5)
  a303e4:	16e1                	addi	a3,a3,-8
  a303e6:	8ec9                	or	a3,a3,a0
  a303e8:	557d                	li	a0,-1
  a303ea:	e6a691e3          	bne	a3,a0,a3024c <LzmaDec_DecodeReal2+0xc34>
  a303ee:	1f51                	addi	t5,t5,-12
  a303f0:	11200893          	li	a7,274
  a303f4:	010006b7          	lui	a3,0x1000
  a303f8:	00d97763          	bgeu	s2,a3,a30406 <LzmaDec_DecodeReal2+0xdee>
  a303fc:	2314                	lbu	a3,0(a4)
  a303fe:	0922                	slli	s2,s2,0x8
  a30400:	0705                	addi	a4,a4,1
  a30402:	10f6a79b          	orshf	a5,a3,a5,sll,8
  a30406:	02fe2223          	sw	a5,36(t3)
  a3040a:	02ce2783          	lw	a5,44(t3)
  a3040e:	2008b513          	sltiu	a0,a7,512
  a30412:	00ee2e23          	sw	a4,28(t3)
  a30416:	032e2023          	sw	s2,32(t3)
  a3041a:	051e2223          	sw	a7,68(t3)
  a3041e:	01de2c23          	sw	t4,24(t3)
  a30422:	027e2423          	sw	t2,40(t3)
  a30426:	025e2823          	sw	t0,48(t3)
  a3042a:	028e2a23          	sw	s0,52(t3)
  a3042e:	033e2c23          	sw	s3,56(t3)
  a30432:	03ae2e23          	sw	s10,60(t3)
  a30436:	05ee2023          	sw	t5,64(t3)
  a3043a:	00154513          	xori	a0,a0,1
  a3043e:	e799                	bnez	a5,a3044c <LzmaDec_DecodeReal2+0xe34>
  a30440:	004e2783          	lw	a5,4(t3)
  a30444:	00f3e463          	bltu	t2,a5,a3044c <LzmaDec_DecodeReal2+0xe34>
  a30448:	02fe2623          	sw	a5,44(t3)
  a3044c:	03010293          	addi	t0,sp,48
  a30450:	7fe2860b          	ldmia	{s0-s11},(t0)
  a30454:	6125                	addi	sp,sp,96
  a30456:	8082                	ret
  a30458:	4ad6969b          	subshf	a3,a3,a3,srl,5
  a3045c:	8f85                	sub	a5,a5,s1
  a3045e:	00df9123          	sh	a3,2(t6)
  a30462:	409904b3          	sub	s1,s2,s1
  a30466:	468d                	li	a3,3
  a30468:	b5ed                	j	a30352 <LzmaDec_DecodeReal2+0xd3a>
  a3046a:	4b29191b          	subshf	s2,s2,s2,srl,5
  a3046e:	406787b3          	sub	a5,a5,t1
  a30472:	012a9023          	sh	s2,0(s5)
  a30476:	0691                	addi	a3,a3,4 # 1000004 <_gp_+0x5cb77c>
  a30478:	40648333          	sub	t1,s1,t1
  a3047c:	b721                	j	a30384 <LzmaDec_DecodeReal2+0xd6c>
  a3047e:	4b29191b          	subshf	s2,s2,s2,srl,5
  a30482:	8f85                	sub	a5,a5,s1
  a30484:	012a9023          	sh	s2,0(s5)
  a30488:	06a1                	addi	a3,a3,8
  a3048a:	409304b3          	sub	s1,t1,s1
  a3048e:	b71d                	j	a303b4 <LzmaDec_DecodeReal2+0xd9c>
  a30490:	4a63131b          	subshf	t1,t1,t1,srl,5
  a30494:	412787b3          	sub	a5,a5,s2
  a30498:	006a9023          	sh	t1,0(s5)
  a3049c:	41248933          	sub	s2,s1,s2
  a304a0:	b799                	j	a303e6 <LzmaDec_DecodeReal2+0xdce>
  a304a2:	4f29                	li	t5,10
  a304a4:	bb55                	j	a30258 <LzmaDec_DecodeReal2+0xc40>
  a304a6:	8d4e                	mv	s10,s3
  a304a8:	89a2                	mv	s3,s0
  a304aa:	8416                	mv	s0,t0
  a304ac:	82aa                	mv	t0,a0
  a304ae:	b845                	j	a2fd5e <LzmaDec_DecodeReal2+0x746>
  a304b0:	00da0533          	add	a0,s4,a3
  a304b4:	00054303          	lbu	t1,0(a0)
  a304b8:	0e85                	addi	t4,t4,1
  a304ba:	01da0533          	add	a0,s4,t4
  a304be:	fe650fa3          	sb	t1,-1(a0)
  a304c2:	0685                	addi	a3,a3,1
  a304c4:	00dc9363          	bne	s9,a3,a304ca <LzmaDec_DecodeReal2+0xeb2>
  a304c8:	4681                	li	a3,0
  a304ca:	fe9e93e3          	bne	t4,s1,a304b0 <LzmaDec_DecodeReal2+0xe98>
  a304ce:	c14ff06f          	j	a2f8e2 <LzmaDec_DecodeReal2+0x2ca>
  a304d2:	4f2d                	li	t5,11
  a304d4:	c0eff06f          	j	a2f8e2 <LzmaDec_DecodeReal2+0x2ca>

00a304d8 <LzmaDec_Init>:
  a304d8:	11400793          	li	a5,276
  a304dc:	00052c23          	sw	zero,24(a0)
  a304e0:	04052623          	sw	zero,76(a0)
  a304e4:	02052423          	sw	zero,40(a0)
  a304e8:	02052623          	sw	zero,44(a0)
  a304ec:	c17c                	sw	a5,68(a0)
  a304ee:	8082                	ret

00a304f0 <LzmaDec_DecodeToDic>:
  a304f0:	82d8                	push	{ra,s0-s11},-96
  a304f2:	0006a983          	lw	s3,0(a3)
  a304f6:	0006a023          	sw	zero,0(a3)
  a304fa:	00078023          	sb	zero,0(a5) # 1000000 <_gp_+0x5cb778>
  a304fe:	8dbe                	mv	s11,a5
  a30500:	417c                	lw	a5,68(a0)
  a30502:	8bba                	mv	s7,a4
  a30504:	11200713          	li	a4,274
  a30508:	842a                	mv	s0,a0
  a3050a:	8b2e                	mv	s6,a1
  a3050c:	84b2                	mv	s1,a2
  a3050e:	8936                	mv	s2,a3
  a30510:	08f77a63          	bgeu	a4,a5,a305a4 <LzmaDec_DecodeToDic+0xb4>
  a30514:	11400713          	li	a4,276
  a30518:	0af76663          	bltu	a4,a5,a305c4 <LzmaDec_DecodeToDic+0xd4>
  a3051c:	4711                	li	a4,4
  a3051e:	447c                	lw	a5,76(s0)
  a30520:	0c098963          	beqz	s3,a305f2 <LzmaDec_DecodeToDic+0x102>
  a30524:	0af77763          	bgeu	a4,a5,a305d2 <LzmaDec_DecodeToDic+0xe2>
  a30528:	05044703          	lbu	a4,80(s0)
  a3052c:	e34d                	bnez	a4,a305ce <LzmaDec_DecodeToDic+0xde>
  a3052e:	0537e1bb          	bltui	a5,5,a305f4 <LzmaDec_DecodeToDic+0x104>
  a30532:	05244783          	lbu	a5,82(s0)
  a30536:	05144703          	lbu	a4,81(s0)
  a3053a:	07c2                	slli	a5,a5,0x10
  a3053c:	30e7a79b          	orshf	a5,a5,a4,sll,24
  a30540:	05444703          	lbu	a4,84(s0)
  a30544:	8fd9                	or	a5,a5,a4
  a30546:	05344703          	lbu	a4,83(s0)
  a3054a:	10e7a79b          	orshf	a5,a5,a4,sll,8
  a3054e:	5458                	lw	a4,44(s0)
  a30550:	d05c                	sw	a5,36(s0)
  a30552:	eb01                	bnez	a4,a30562 <LzmaDec_DecodeToDic+0x72>
  a30554:	5418                	lw	a4,40(s0)
  a30556:	e711                	bnez	a4,a30562 <LzmaDec_DecodeToDic+0x72>
  a30558:	bfff fbff 071f      	l.li	a4,0xbffffbff
  a3055e:	06f76863          	bltu	a4,a5,a305ce <LzmaDec_DecodeToDic+0xde>
  a30562:	4078                	lw	a4,68(s0)
  a30564:	57fd                	li	a5,-1
  a30566:	d01c                	sw	a5,32(s0)
  a30568:	04042623          	sw	zero,76(s0)
  a3056c:	11300793          	li	a5,275
  a30570:	02e7f863          	bgeu	a5,a4,a305a0 <LzmaDec_DecodeToDic+0xb0>
  a30574:	201c                	lbu	a5,0(s0)
  a30576:	3018                	lbu	a4,1(s0)
  a30578:	4414                	lw	a3,8(s0)
  a3057a:	40000613          	li	a2,1024
  a3057e:	973e                	add	a4,a4,a5
  a30580:	30000793          	li	a5,768
  a30584:	00e797b3          	sll	a5,a5,a4
  a30588:	7c078793          	addi	a5,a5,1984
  a3058c:	4701                	li	a4,0
  a3058e:	06f76563          	bltu	a4,a5,a305f8 <LzmaDec_DecodeToDic+0x108>
  a30592:	4785                	li	a5,1
  a30594:	dc5c                	sw	a5,60(s0)
  a30596:	dc1c                	sw	a5,56(s0)
  a30598:	d85c                	sw	a5,52(s0)
  a3059a:	d81c                	sw	a5,48(s0)
  a3059c:	04042023          	sw	zero,64(s0)
  a305a0:	04042223          	sw	zero,68(s0)
  a305a4:	4c4d                	li	s8,19
  a305a6:	5d7d                	li	s10,-1
  a305a8:	05040a93          	addi	s5,s0,80
  a305ac:	4074                	lw	a3,68(s0)
  a305ae:	11200793          	li	a5,274
  a305b2:	04f69b63          	bne	a3,a5,a30608 <LzmaDec_DecodeToDic+0x118>
  a305b6:	505c                	lw	a5,36(s0)
  a305b8:	eb99                	bnez	a5,a305ce <LzmaDec_DecodeToDic+0xde>
  a305ba:	4785                	li	a5,1
  a305bc:	00fd8023          	sb	a5,0(s11)
  a305c0:	4501                	li	a0,0
  a305c2:	82d4                	popret	{ra,s0-s11},96
  a305c4:	1ff00713          	li	a4,511
  a305c8:	452d                	li	a0,11
  a305ca:	fee78ce3          	beq	a5,a4,a305c2 <LzmaDec_DecodeToDic+0xd2>
  a305ce:	4505                	li	a0,1
  a305d0:	bfcd                	j	a305c2 <LzmaDec_DecodeToDic+0xd2>
  a305d2:	00178693          	addi	a3,a5,1
  a305d6:	c474                	sw	a3,76(s0)
  a305d8:	0485                	addi	s1,s1,1
  a305da:	fff4c683          	lbu	a3,-1(s1)
  a305de:	97a2                	add	a5,a5,s0
  a305e0:	19fd                	addi	s3,s3,-1
  a305e2:	04d78823          	sb	a3,80(a5)
  a305e6:	00092783          	lw	a5,0(s2)
  a305ea:	0785                	addi	a5,a5,1
  a305ec:	00f92023          	sw	a5,0(s2)
  a305f0:	b73d                	j	a3051e <LzmaDec_DecodeToDic+0x2e>
  a305f2:	fb9d                	bnez	a5,a30528 <LzmaDec_DecodeToDic+0x38>
  a305f4:	478d                	li	a5,3
  a305f6:	b7d9                	j	a305bc <LzmaDec_DecodeToDic+0xcc>
  a305f8:	a292                	sh	a2,0(a3)
  a305fa:	0705                	addi	a4,a4,1
  a305fc:	0689                	addi	a3,a3,2
  a305fe:	bf41                	j	a3058e <LzmaDec_DecodeToDic+0x9e>
  a30600:	409989b3          	sub	s3,s3,s1
  a30604:	84b6                	mv	s1,a3
  a30606:	b75d                	j	a305ac <LzmaDec_DecodeToDic+0xbc>
  a30608:	c699                	beqz	a3,a30616 <LzmaDec_DecodeToDic+0x126>
  a3060a:	4c1c                	lw	a5,24(s0)
  a3060c:	40fb0733          	sub	a4,s6,a5
  a30610:	00d77d63          	bgeu	a4,a3,a3062a <LzmaDec_DecodeToDic+0x13a>
  a30614:	ef01                	bnez	a4,a3062c <LzmaDec_DecodeToDic+0x13c>
  a30616:	4c1c                	lw	a5,24(s0)
  a30618:	0767e163          	bltu	a5,s6,a3067a <LzmaDec_DecodeToDic+0x18a>
  a3061c:	407c                	lw	a5,68(s0)
  a3061e:	1a079a63          	bnez	a5,a307d2 <LzmaDec_DecodeToDic+0x2e2>
  a30622:	505c                	lw	a5,36(s0)
  a30624:	e7b9                	bnez	a5,a30672 <LzmaDec_DecodeToDic+0x182>
  a30626:	4791                	li	a5,4
  a30628:	bf51                	j	a305bc <LzmaDec_DecodeToDic+0xcc>
  a3062a:	8736                	mv	a4,a3
  a3062c:	544c                	lw	a1,44(s0)
  a3062e:	5410                	lw	a2,40(s0)
  a30630:	e599                	bnez	a1,a3063e <LzmaDec_DecodeToDic+0x14e>
  a30632:	404c                	lw	a1,4(s0)
  a30634:	40c58533          	sub	a0,a1,a2
  a30638:	00a76363          	bltu	a4,a0,a3063e <LzmaDec_DecodeToDic+0x14e>
  a3063c:	d44c                	sw	a1,44(s0)
  a3063e:	963a                	add	a2,a2,a4
  a30640:	d410                	sw	a2,40(s0)
  a30642:	580c                	lw	a1,48(s0)
  a30644:	4810                	lw	a2,16(s0)
  a30646:	01442803          	lw	a6,20(s0)
  a3064a:	8e99                	sub	a3,a3,a4
  a3064c:	c074                	sw	a3,68(s0)
  a3064e:	973e                	add	a4,a4,a5
  a30650:	40b78533          	sub	a0,a5,a1
  a30654:	4681                	li	a3,0
  a30656:	00b7f363          	bgeu	a5,a1,a3065c <LzmaDec_DecodeToDic+0x16c>
  a3065a:	86c2                	mv	a3,a6
  a3065c:	96b2                	add	a3,a3,a2
  a3065e:	96aa                	add	a3,a3,a0
  a30660:	2288                	lbu	a0,0(a3)
  a30662:	00f606b3          	add	a3,a2,a5
  a30666:	0785                	addi	a5,a5,1
  a30668:	a288                	sb	a0,0(a3)
  a3066a:	fee793e3          	bne	a5,a4,a30650 <LzmaDec_DecodeToDic+0x160>
  a3066e:	cc1c                	sw	a5,24(s0)
  a30670:	b75d                	j	a30616 <LzmaDec_DecodeToDic+0x126>
  a30672:	040b9863          	bnez	s7,a306c2 <LzmaDec_DecodeToDic+0x1d2>
  a30676:	4789                	li	a5,2
  a30678:	b791                	j	a305bc <LzmaDec_DecodeToDic+0xcc>
  a3067a:	4c81                	li	s9,0
  a3067c:	4478                	lw	a4,76(s0)
  a3067e:	10071f63          	bnez	a4,a3079c <LzmaDec_DecodeToDic+0x2ac>
  a30682:	013c7463          	bgeu	s8,s3,a3068a <LzmaDec_DecodeToDic+0x19a>
  a30686:	0a0c8163          	beqz	s9,a30728 <LzmaDec_DecodeToDic+0x238>
  a3068a:	01348a33          	add	s4,s1,s3
  a3068e:	0870                	addi	a2,sp,28
  a30690:	85a6                	mv	a1,s1
  a30692:	8522                	mv	a0,s0
  a30694:	ce52                	sw	s4,28(sp)
  a30696:	b2bfe0ef          	jal	ra,a2f1c0 <LzmaDec_TryDummy>
  a3069a:	e515                	bnez	a0,a306c6 <LzmaDec_DecodeToDic+0x1d6>
  a3069c:	1429f0bb          	bgeui	s3,20,a3071e <LzmaDec_DecodeToDic+0x22e>
  a306a0:	00092783          	lw	a5,0(s2)
  a306a4:	05040413          	addi	s0,s0,80
  a306a8:	97ce                	add	a5,a5,s3
  a306aa:	00f92023          	sw	a5,0(s2)
  a306ae:	ff342e23          	sw	s3,-4(s0)
  a306b2:	f49a01e3          	beq	s4,s1,a305f4 <LzmaDec_DecodeToDic+0x104>
  a306b6:	209c                	lbu	a5,0(s1)
  a306b8:	0405                	addi	s0,s0,1
  a306ba:	0485                	addi	s1,s1,1
  a306bc:	fef40fa3          	sb	a5,-1(s0)
  a306c0:	bfcd                	j	a306b2 <LzmaDec_DecodeToDic+0x1c2>
  a306c2:	4c85                	li	s9,1
  a306c4:	bf65                	j	a3067c <LzmaDec_DecodeToDic+0x18c>
  a306c6:	4a72                	lw	s4,28(sp)
  a306c8:	409a0a33          	sub	s4,s4,s1
  a306cc:	151a74bb          	bgeui	s4,21,a3071e <LzmaDec_DecodeToDic+0x22e>
  a306d0:	020c8a63          	beqz	s9,a30704 <LzmaDec_DecodeToDic+0x214>
  a306d4:	02050c3b          	beqi	a0,2,a30704 <LzmaDec_DecodeToDic+0x214>
  a306d8:	00092783          	lw	a5,0(s2)
  a306dc:	05040413          	addi	s0,s0,80
  a306e0:	97d2                	add	a5,a5,s4
  a306e2:	00f92023          	sw	a5,0(s2)
  a306e6:	ff442e23          	sw	s4,-4(s0)
  a306ea:	9a26                	add	s4,s4,s1
  a306ec:	01449663          	bne	s1,s4,a306f8 <LzmaDec_DecodeToDic+0x208>
  a306f0:	4789                	li	a5,2
  a306f2:	00fd8023          	sb	a5,0(s11)
  a306f6:	bde1                	j	a305ce <LzmaDec_DecodeToDic+0xde>
  a306f8:	209c                	lbu	a5,0(s1)
  a306fa:	0405                	addi	s0,s0,1
  a306fc:	0485                	addi	s1,s1,1
  a306fe:	fef40fa3          	sb	a5,-1(s0)
  a30702:	b7ed                	j	a306ec <LzmaDec_DecodeToDic+0x1fc>
  a30704:	8626                	mv	a2,s1
  a30706:	cc44                	sw	s1,28(s0)
  a30708:	85da                	mv	a1,s6
  a3070a:	8522                	mv	a0,s0
  a3070c:	f0dfe0ef          	jal	ra,a2f618 <LzmaDec_DecodeReal2>
  a30710:	4c54                	lw	a3,28(s0)
  a30712:	409684b3          	sub	s1,a3,s1
  a30716:	01aa1e63          	bne	s4,s10,a30732 <LzmaDec_DecodeToDic+0x242>
  a3071a:	0099fe63          	bgeu	s3,s1,a30736 <LzmaDec_DecodeToDic+0x246>
  a3071e:	1ff00793          	li	a5,511
  a30722:	c07c                	sw	a5,68(s0)
  a30724:	452d                	li	a0,11
  a30726:	bd71                	j	a305c2 <LzmaDec_DecodeToDic+0xd2>
  a30728:	fec98613          	addi	a2,s3,-20
  a3072c:	9626                	add	a2,a2,s1
  a3072e:	5a7d                	li	s4,-1
  a30730:	bfd9                	j	a30706 <LzmaDec_DecodeToDic+0x216>
  a30732:	ff4496e3          	bne	s1,s4,a3071e <LzmaDec_DecodeToDic+0x22e>
  a30736:	00092783          	lw	a5,0(s2)
  a3073a:	97a6                	add	a5,a5,s1
  a3073c:	00f92023          	sw	a5,0(s2)
  a30740:	ec0500e3          	beqz	a0,a30600 <LzmaDec_DecodeToDic+0x110>
  a30744:	20000793          	li	a5,512
  a30748:	c07c                	sw	a5,68(s0)
  a3074a:	b551                	j	a305ce <LzmaDec_DecodeToDic+0xde>
  a3074c:	0a05                	addi	s4,s4,1
  a3074e:	40ea06b3          	sub	a3,s4,a4
  a30752:	96a6                	add	a3,a3,s1
  a30754:	fff6c603          	lbu	a2,-1(a3)
  a30758:	014406b3          	add	a3,s0,s4
  a3075c:	04c687a3          	sb	a2,79(a3)
  a30760:	40ea06b3          	sub	a3,s4,a4
  a30764:	074c6a63          	bltu	s8,s4,a307d8 <LzmaDec_DecodeToDic+0x2e8>
  a30768:	ff36e2e3          	bltu	a3,s3,a3074c <LzmaDec_DecodeToDic+0x25c>
  a3076c:	014a8733          	add	a4,s5,s4
  a30770:	0870                	addi	a2,sp,28
  a30772:	85d6                	mv	a1,s5
  a30774:	8522                	mv	a0,s0
  a30776:	c636                	sw	a3,12(sp)
  a30778:	ce3a                	sw	a4,28(sp)
  a3077a:	a47fe0ef          	jal	ra,a2f1c0 <LzmaDec_TryDummy>
  a3077e:	46b2                	lw	a3,12(sp)
  a30780:	e105                	bnez	a0,a307a0 <LzmaDec_DecodeToDic+0x2b0>
  a30782:	14ea773b          	bgeui	s4,20,a3071e <LzmaDec_DecodeToDic+0x22e>
  a30786:	05442623          	sw	s4,76(s0)
  a3078a:	00092783          	lw	a5,0(s2)
  a3078e:	97b6                	add	a5,a5,a3
  a30790:	00f92023          	sw	a5,0(s2)
  a30794:	478d                	li	a5,3
  a30796:	00fd8023          	sb	a5,0(s11)
  a3079a:	b525                	j	a305c2 <LzmaDec_DecodeToDic+0xd2>
  a3079c:	8a3a                	mv	s4,a4
  a3079e:	b7c9                	j	a30760 <LzmaDec_DecodeToDic+0x270>
  a307a0:	4a72                	lw	s4,28(sp)
  a307a2:	4474                	lw	a3,76(s0)
  a307a4:	415a0a33          	sub	s4,s4,s5
  a307a8:	f6da6be3          	bltu	s4,a3,a3071e <LzmaDec_DecodeToDic+0x22e>
  a307ac:	020c8963          	beqz	s9,a307de <LzmaDec_DecodeToDic+0x2ee>
  a307b0:	4709                	li	a4,2
  a307b2:	02e50663          	beq	a0,a4,a307de <LzmaDec_DecodeToDic+0x2ee>
  a307b6:	00092783          	lw	a5,0(s2)
  a307ba:	97d2                	add	a5,a5,s4
  a307bc:	8f95                	sub	a5,a5,a3
  a307be:	00f92023          	sw	a5,0(s2)
  a307c2:	05442623          	sw	s4,76(s0)
  a307c6:	00ed8023          	sb	a4,0(s11)
  a307ca:	b511                	j	a305ce <LzmaDec_DecodeToDic+0xde>
  a307cc:	03478a63          	beq	a5,s4,a30800 <LzmaDec_DecodeToDic+0x310>
  a307d0:	b7b9                	j	a3071e <LzmaDec_DecodeToDic+0x22e>
  a307d2:	ea0b82e3          	beqz	s7,a30676 <LzmaDec_DecodeToDic+0x186>
  a307d6:	bf29                	j	a306f0 <LzmaDec_DecodeToDic+0x200>
  a307d8:	f80c9ae3          	bnez	s9,a3076c <LzmaDec_DecodeToDic+0x27c>
  a307dc:	5a7d                	li	s4,-1
  a307de:	01542e23          	sw	s5,28(s0)
  a307e2:	8656                	mv	a2,s5
  a307e4:	85da                	mv	a1,s6
  a307e6:	8522                	mv	a0,s0
  a307e8:	e31fe0ef          	jal	ra,a2f618 <LzmaDec_DecodeReal2>
  a307ec:	4c5c                	lw	a5,28(s0)
  a307ee:	4478                	lw	a4,76(s0)
  a307f0:	415787b3          	sub	a5,a5,s5
  a307f4:	fc0a5ce3          	bgez	s4,a307cc <LzmaDec_DecodeToDic+0x2dc>
  a307f8:	15c7f9bb          	bgeui	a5,21,a3071e <LzmaDec_DecodeToDic+0x22e>
  a307fc:	f2e7e1e3          	bltu	a5,a4,a3071e <LzmaDec_DecodeToDic+0x22e>
  a30800:	8f99                	sub	a5,a5,a4
  a30802:	00092703          	lw	a4,0(s2)
  a30806:	00f486b3          	add	a3,s1,a5
  a3080a:	40f989b3          	sub	s3,s3,a5
  a3080e:	97ba                	add	a5,a5,a4
  a30810:	00f92023          	sw	a5,0(s2)
  a30814:	04042623          	sw	zero,76(s0)
  a30818:	de0506e3          	beqz	a0,a30604 <LzmaDec_DecodeToDic+0x114>
  a3081c:	b725                	j	a30744 <LzmaDec_DecodeToDic+0x254>

00a3081e <LzmaDec_DecodeToBuf>:
  a3081e:	82c8                	push	{ra,s0-s10},-80
  a30820:	00062903          	lw	s2,0(a2) # 1000000 <_gp_+0x5cb778>
  a30824:	00072b03          	lw	s6,0(a4)
  a30828:	00062023          	sw	zero,0(a2)
  a3082c:	842a                	mv	s0,a0
  a3082e:	8bae                	mv	s7,a1
  a30830:	89b2                	mv	s3,a2
  a30832:	8c36                	mv	s8,a3
  a30834:	8a3a                	mv	s4,a4
  a30836:	8d3e                	mv	s10,a5
  a30838:	00072023          	sw	zero,0(a4)
  a3083c:	484c                	lw	a1,20(s0)
  a3083e:	4c1c                	lw	a5,24(s0)
  a30840:	ce5a                	sw	s6,28(sp)
  a30842:	00b79463          	bne	a5,a1,a3084a <LzmaDec_DecodeToBuf+0x2c>
  a30846:	00042c23          	sw	zero,24(s0)
  a3084a:	01842a83          	lw	s5,24(s0)
  a3084e:	4701                	li	a4,0
  a30850:	415587b3          	sub	a5,a1,s5
  a30854:	0127e563          	bltu	a5,s2,a3085e <LzmaDec_DecodeToBuf+0x40>
  a30858:	015905b3          	add	a1,s2,s5
  a3085c:	876a                	mv	a4,s10
  a3085e:	87c2                	mv	a5,a6
  a30860:	8662                	mv	a2,s8
  a30862:	0874                	addi	a3,sp,28
  a30864:	8522                	mv	a0,s0
  a30866:	c642                	sw	a6,12(sp)
  a30868:	c89ff0ef          	jal	ra,a304f0 <LzmaDec_DecodeToDic>
  a3086c:	4772                	lw	a4,28(sp)
  a3086e:	000a2783          	lw	a5,0(s4)
  a30872:	8caa                	mv	s9,a0
  a30874:	855e                	mv	a0,s7
  a30876:	97ba                	add	a5,a5,a4
  a30878:	00fa2023          	sw	a5,0(s4)
  a3087c:	4c04                	lw	s1,24(s0)
  a3087e:	480c                	lw	a1,16(s0)
  a30880:	9c3a                	add	s8,s8,a4
  a30882:	415484b3          	sub	s1,s1,s5
  a30886:	8626                	mv	a2,s1
  a30888:	95d6                	add	a1,a1,s5
  a3088a:	40eb0b33          	sub	s6,s6,a4
  a3088e:	9c4f80ef          	jal	ra,a28a52 <memcpy>
  a30892:	0009a783          	lw	a5,0(s3)
  a30896:	9ba6                	add	s7,s7,s1
  a30898:	40990933          	sub	s2,s2,s1
  a3089c:	97a6                	add	a5,a5,s1
  a3089e:	00f9a023          	sw	a5,0(s3)
  a308a2:	000c9663          	bnez	s9,a308ae <LzmaDec_DecodeToBuf+0x90>
  a308a6:	c481                	beqz	s1,a308ae <LzmaDec_DecodeToBuf+0x90>
  a308a8:	4832                	lw	a6,12(sp)
  a308aa:	f80919e3          	bnez	s2,a3083c <LzmaDec_DecodeToBuf+0x1e>
  a308ae:	8566                	mv	a0,s9
  a308b0:	82c4                	popret	{ra,s0-s10},80

00a308b2 <LzmaDec_FreeProbs>:
  a308b2:	8028                	push	{ra,s0},-16
  a308b4:	842a                	mv	s0,a0
  a308b6:	41dc                	lw	a5,4(a1)
  a308b8:	852e                	mv	a0,a1
  a308ba:	440c                	lw	a1,8(s0)
  a308bc:	9782                	jalr	a5
  a308be:	00042423          	sw	zero,8(s0)
  a308c2:	8024                	popret	{ra,s0},16

00a308c4 <LzmaDec_AllocateProbs2.isra.2>:
  a308c4:	8048                	push	{ra,s0-s2},-16
  a308c6:	451c                	lw	a5,8(a0)
  a308c8:	962e                	add	a2,a2,a1
  a308ca:	30000493          	li	s1,768
  a308ce:	00c494b3          	sll	s1,s1,a2
  a308d2:	842a                	mv	s0,a0
  a308d4:	7c048493          	addi	s1,s1,1984
  a308d8:	c789                	beqz	a5,a308e2 <LzmaDec_AllocateProbs2.isra.2+0x1e>
  a308da:	453c                	lw	a5,72(a0)
  a308dc:	4501                	li	a0,0
  a308de:	02f48863          	beq	s1,a5,a3090e <LzmaDec_AllocateProbs2.isra.2+0x4a>
  a308e2:	85b6                	mv	a1,a3
  a308e4:	8522                	mv	a0,s0
  a308e6:	8936                	mv	s2,a3
  a308e8:	fcbff0ef          	jal	ra,a308b2 <LzmaDec_FreeProbs>
  a308ec:	00092783          	lw	a5,0(s2)
  a308f0:	00149593          	slli	a1,s1,0x1
  a308f4:	854a                	mv	a0,s2
  a308f6:	9782                	jalr	a5
  a308f8:	87aa                	mv	a5,a0
  a308fa:	c408                	sw	a0,8(s0)
  a308fc:	4509                	li	a0,2
  a308fe:	cb81                	beqz	a5,a3090e <LzmaDec_AllocateProbs2.isra.2+0x4a>
  a30900:	0000 0d00 051f      	l.li	a0,0xd00
  a30906:	97aa                	add	a5,a5,a0
  a30908:	c45c                	sw	a5,12(s0)
  a3090a:	c424                	sw	s1,72(s0)
  a3090c:	4501                	li	a0,0
  a3090e:	8044                	popret	{ra,s0-s2},16

00a30910 <LzmaProps_Decode>:
  a30910:	0506723b          	bgeui	a2,5,a30918 <LzmaProps_Decode+0x8>
  a30914:	4511                	li	a0,4
  a30916:	8082                	ret
  a30918:	21b8                	lbu	a4,2(a1)
  a3091a:	319c                	lbu	a5,1(a1)
  a3091c:	10e7a79b          	orshf	a5,a5,a4,sll,8
  a30920:	31b8                	lbu	a4,3(a1)
  a30922:	20e7a79b          	orshf	a5,a5,a4,sll,16
  a30926:	21d8                	lbu	a4,4(a1)
  a30928:	30e7a79b          	orshf	a5,a5,a4,sll,24
  a3092c:	6705                	lui	a4,0x1
  a3092e:	00e7f363          	bgeu	a5,a4,a30934 <LzmaProps_Decode+0x24>
  a30932:	6785                	lui	a5,0x1
  a30934:	c15c                	sw	a5,4(a0)
  a30936:	219c                	lbu	a5,0(a1)
  a30938:	e1f7f73b          	bgeui	a5,225,a30914 <LzmaProps_Decode+0x4>
  a3093c:	46a5                	li	a3,9
  a3093e:	02d7f733          	remu	a4,a5,a3
  a30942:	a118                	sb	a4,0(a0)
  a30944:	02d00713          	li	a4,45
  a30948:	02e7d733          	divu	a4,a5,a4
  a3094c:	02d7d7b3          	divu	a5,a5,a3
  a30950:	a138                	sb	a4,2(a0)
  a30952:	4715                	li	a4,5
  a30954:	02e7f7b3          	remu	a5,a5,a4
  a30958:	b11c                	sb	a5,1(a0)
  a3095a:	4501                	li	a0,0
  a3095c:	8082                	ret

00a3095e <LzmaDec_AllocateProbs>:
  a3095e:	8228                	push	{ra,s0},-48
  a30960:	842a                	mv	s0,a0
  a30962:	0828                	addi	a0,sp,24
  a30964:	c636                	sw	a3,12(sp)
  a30966:	fabff0ef          	jal	ra,a30910 <LzmaProps_Decode>
  a3096a:	46b2                	lw	a3,12(sp)
  a3096c:	ed09                	bnez	a0,a30986 <LzmaDec_AllocateProbs+0x28>
  a3096e:	01914603          	lbu	a2,25(sp)
  a30972:	01814583          	lbu	a1,24(sp)
  a30976:	8522                	mv	a0,s0
  a30978:	f4dff0ef          	jal	ra,a308c4 <LzmaDec_AllocateProbs2.isra.2>
  a3097c:	e509                	bnez	a0,a30986 <LzmaDec_AllocateProbs+0x28>
  a3097e:	47e2                	lw	a5,24(sp)
  a30980:	c01c                	sw	a5,0(s0)
  a30982:	47f2                	lw	a5,28(sp)
  a30984:	c05c                	sw	a5,4(s0)
  a30986:	8224                	popret	{ra,s0},48

00a30988 <SecMemcpyError>:
  a30988:	04b05b63          	blez	a1,a309de <SecMemcpyError+0x56>
  a3098c:	87aa                	mv	a5,a0
  a3098e:	4859                	li	a6,22
  a30990:	c929                	beqz	a0,a309e2 <SecMemcpyError+0x5a>
  a30992:	8018                	push	{ra},-16
  a30994:	8732                	mv	a4,a2
  a30996:	862e                	mv	a2,a1
  a30998:	eb01                	bnez	a4,a309a8 <SecMemcpyError+0x20>
  a3099a:	4581                	li	a1,0
  a3099c:	808f80ef          	jal	ra,a289a4 <memset>
  a309a0:	09600813          	li	a6,150
  a309a4:	8542                	mv	a0,a6
  a309a6:	8014                	popret	{ra},16
  a309a8:	00d5f863          	bgeu	a1,a3,a309b8 <SecMemcpyError+0x30>
  a309ac:	4581                	li	a1,0
  a309ae:	ff7f70ef          	jal	ra,a289a4 <memset>
  a309b2:	0a200813          	li	a6,162
  a309b6:	b7fd                	j	a309a4 <SecMemcpyError+0x1c>
  a309b8:	00a77663          	bgeu	a4,a0,a309c4 <SecMemcpyError+0x3c>
  a309bc:	00d705b3          	add	a1,a4,a3
  a309c0:	00b56863          	bltu	a0,a1,a309d0 <SecMemcpyError+0x48>
  a309c4:	4801                	li	a6,0
  a309c6:	fce7ffe3          	bgeu	a5,a4,a309a4 <SecMemcpyError+0x1c>
  a309ca:	96be                	add	a3,a3,a5
  a309cc:	fcd77ce3          	bgeu	a4,a3,a309a4 <SecMemcpyError+0x1c>
  a309d0:	4581                	li	a1,0
  a309d2:	853e                	mv	a0,a5
  a309d4:	fd1f70ef          	jal	ra,a289a4 <memset>
  a309d8:	0b600813          	li	a6,182
  a309dc:	b7e1                	j	a309a4 <SecMemcpyError+0x1c>
  a309de:	02200813          	li	a6,34
  a309e2:	8542                	mv	a0,a6
  a309e4:	8082                	ret

00a309e6 <memcpy_s>:
  a309e6:	02d5e363          	bltu	a1,a3,a30a0c <memcpy_s+0x26>
  a309ea:	c10d                	beqz	a0,a30a0c <memcpy_s+0x26>
  a309ec:	c205                	beqz	a2,a30a0c <memcpy_s+0x26>
  a309ee:	0005cf63          	bltz	a1,a30a0c <memcpy_s+0x26>
  a309f2:	ce89                	beqz	a3,a30a0c <memcpy_s+0x26>
  a309f4:	00a67663          	bgeu	a2,a0,a30a00 <memcpy_s+0x1a>
  a309f8:	00d607b3          	add	a5,a2,a3
  a309fc:	00f57a63          	bgeu	a0,a5,a30a10 <memcpy_s+0x2a>
  a30a00:	00c57663          	bgeu	a0,a2,a30a0c <memcpy_s+0x26>
  a30a04:	00d507b3          	add	a5,a0,a3
  a30a08:	00f67463          	bgeu	a2,a5,a30a10 <memcpy_s+0x2a>
  a30a0c:	f7dff06f          	j	a30988 <SecMemcpyError>
  a30a10:	8018                	push	{ra},-16
  a30a12:	85b2                	mv	a1,a2
  a30a14:	8636                	mv	a2,a3
  a30a16:	83cf80ef          	jal	ra,a28a52 <memcpy>
  a30a1a:	4501                	li	a0,0
  a30a1c:	8014                	popret	{ra},16

00a30a1e <memmove_s>:
  a30a1e:	8028                	push	{ra,s0},-16
  a30a20:	02200413          	li	s0,34
  a30a24:	00b05c63          	blez	a1,a30a3c <memmove_s+0x1e>
  a30a28:	4459                	li	s0,22
  a30a2a:	c909                	beqz	a0,a30a3c <memmove_s+0x1e>
  a30a2c:	87b2                	mv	a5,a2
  a30a2e:	862e                	mv	a2,a1
  a30a30:	eb81                	bnez	a5,a30a40 <memmove_s+0x22>
  a30a32:	4581                	li	a1,0
  a30a34:	f71f70ef          	jal	ra,a289a4 <memset>
  a30a38:	09600413          	li	s0,150
  a30a3c:	8522                	mv	a0,s0
  a30a3e:	8024                	popret	{ra,s0},16
  a30a40:	00d5f863          	bgeu	a1,a3,a30a50 <memmove_s+0x32>
  a30a44:	4581                	li	a1,0
  a30a46:	f5ff70ef          	jal	ra,a289a4 <memset>
  a30a4a:	0a200413          	li	s0,162
  a30a4e:	b7fd                	j	a30a3c <memmove_s+0x1e>
  a30a50:	4401                	li	s0,0
  a30a52:	fef505e3          	beq	a0,a5,a30a3c <memmove_s+0x1e>
  a30a56:	d2fd                	beqz	a3,a30a3c <memmove_s+0x1e>
  a30a58:	8636                	mv	a2,a3
  a30a5a:	85be                	mv	a1,a5
  a30a5c:	aeef80ef          	jal	ra,a28d4a <memmove>
  a30a60:	bff1                	j	a30a3c <memmove_s+0x1e>

00a30a62 <memset_s>:
  a30a62:	87ae                	mv	a5,a1
  a30a64:	0205c363          	bltz	a1,a30a8a <memset_s+0x28>
  a30a68:	8028                	push	{ra,s0},-16
  a30a6a:	842a                	mv	s0,a0
  a30a6c:	c911                	beqz	a0,a30a80 <memset_s+0x1e>
  a30a6e:	85b2                	mv	a1,a2
  a30a70:	8636                	mv	a2,a3
  a30a72:	02d7e063          	bltu	a5,a3,a30a92 <memset_s+0x30>
  a30a76:	f2ff70ef          	jal	ra,a289a4 <memset>
  a30a7a:	4701                	li	a4,0
  a30a7c:	853a                	mv	a0,a4
  a30a7e:	8024                	popret	{ra,s0},16
  a30a80:	02200713          	li	a4,34
  a30a84:	dde5                	beqz	a1,a30a7c <memset_s+0x1a>
  a30a86:	4759                	li	a4,22
  a30a88:	bfd5                	j	a30a7c <memset_s+0x1a>
  a30a8a:	02200713          	li	a4,34
  a30a8e:	853a                	mv	a0,a4
  a30a90:	8082                	ret
  a30a92:	02200713          	li	a4,34
  a30a96:	d3fd                	beqz	a5,a30a7c <memset_s+0x1a>
  a30a98:	863e                	mv	a2,a5
  a30a9a:	f0bf70ef          	jal	ra,a289a4 <memset>
  a30a9e:	0a200713          	li	a4,162
  a30aa2:	bfe9                	j	a30a7c <memset_s+0x1a>

00a30aa4 <SecWriteMultiChar>:
  a30aa4:	8732                	mv	a4,a2
  a30aa6:	00e04663          	bgtz	a4,a30ab2 <SecWriteMultiChar+0xe>
  a30aaa:	429c                	lw	a5,0(a3)
  a30aac:	963e                	add	a2,a2,a5
  a30aae:	c290                	sw	a2,0(a3)
  a30ab0:	8082                	ret
  a30ab2:	411c                	lw	a5,0(a0)
  a30ab4:	17fd                	addi	a5,a5,-1 # fff <ccause+0x3d>
  a30ab6:	c11c                	sw	a5,0(a0)
  a30ab8:	0007d563          	bgez	a5,a30ac2 <SecWriteMultiChar+0x1e>
  a30abc:	57fd                	li	a5,-1
  a30abe:	c29c                	sw	a5,0(a3)
  a30ac0:	8082                	ret
  a30ac2:	415c                	lw	a5,4(a0)
  a30ac4:	177d                	addi	a4,a4,-1 # fff <ccause+0x3d>
  a30ac6:	a38c                	sb	a1,0(a5)
  a30ac8:	415c                	lw	a5,4(a0)
  a30aca:	0785                	addi	a5,a5,1
  a30acc:	c15c                	sw	a5,4(a0)
  a30ace:	bfe1                	j	a30aa6 <SecWriteMultiChar+0x2>

00a30ad0 <SecOutput>:
  a30ad0:	9fd8                	push	{ra,s0-s11},-560
  a30ad2:	00a34ab7          	lui	s5,0xa34
  a30ad6:	d38a8793          	addi	a5,s5,-712 # a33d38 <g_itoaUpperDigits>
  a30ada:	711d                	addi	sp,sp,-96
  a30adc:	cc3e                	sw	a5,24(sp)
  a30ade:	00a34b37          	lui	s6,0xa34
  a30ae2:	47a9                	li	a5,10
  a30ae4:	8caa                	mv	s9,a0
  a30ae6:	8432                	mv	s0,a2
  a30ae8:	ce02                	sw	zero,28(sp)
  a30aea:	d002                	sw	zero,32(sp)
  a30aec:	d202                	sw	zero,36(sp)
  a30aee:	d43e                	sw	a5,40(sp)
  a30af0:	d602                	sw	zero,44(sp)
  a30af2:	d802                	sw	zero,48(sp)
  a30af4:	da02                	sw	zero,52(sp)
  a30af6:	dc02                	sw	zero,56(sp)
  a30af8:	de02                	sw	zero,60(sp)
  a30afa:	c082                	sw	zero,64(sp)
  a30afc:	c282                	sw	zero,68(sp)
  a30afe:	04011423          	sh	zero,72(sp)
  a30b02:	ca02                	sw	zero,20(sp)
  a30b04:	4701                	li	a4,0
  a30b06:	d38a8a93          	addi	s5,s5,-712
  a30b0a:	00a3 3d4c 0b9f      	l.li	s7,0xa33d4c
  a30b10:	d04b0b13          	addi	s6,s6,-764 # a33d04 <g_efuse_cfg+0x1444>
  a30b14:	00a3 4048 0c1f      	l.li	s8,0xa34048
  a30b1a:	00a3 3d24 091f      	l.li	s2,0xa33d24
  a30b20:	219c                	lbu	a5,0(a1)
  a30b22:	c781                	beqz	a5,a30b2a <SecOutput+0x5a>
  a30b24:	46d2                	lw	a3,20(sp)
  a30b26:	0006d963          	bgez	a3,a30b38 <SecOutput+0x68>
  a30b2a:	c319                	beqz	a4,a30b30 <SecOutput+0x60>
  a30b2c:	0737163b          	bnei	a4,7,a30c04 <SecOutput+0x134>
  a30b30:	4552                	lw	a0,20(sp)
  a30b32:	25010113          	addi	sp,sp,592
  a30b36:	80d4                	popret	{ra,s0-s11},64
  a30b38:	00fb86b3          	add	a3,s7,a5
  a30b3c:	2294                	lbu	a3,0(a3)
  a30b3e:	00158a13          	addi	s4,a1,1
  a30b42:	08dbd6db          	muliadd	a3,s7,a3,9
  a30b46:	96ba                	add	a3,a3,a4
  a30b48:	1006c983          	lbu	s3,256(a3)
  a30b4c:	0829fe3b          	bgeui	s3,8,a30c04 <SecOutput+0x134>
  a30b50:	053b069b          	addshf	a3,s6,s3,sll,2
  a30b54:	4294                	lw	a3,0(a3)
  a30b56:	8682                	jr	a3
  a30b58:	000ca703          	lw	a4,0(s9)
  a30b5c:	177d                	addi	a4,a4,-1
  a30b5e:	00eca023          	sw	a4,0(s9)
  a30b62:	02074063          	bltz	a4,a30b82 <SecOutput+0xb2>
  a30b66:	004ca703          	lw	a4,4(s9)
  a30b6a:	a31c                	sb	a5,0(a4)
  a30b6c:	004ca783          	lw	a5,4(s9)
  a30b70:	0785                	addi	a5,a5,1
  a30b72:	00fca223          	sw	a5,4(s9)
  a30b76:	47d2                	lw	a5,20(sp)
  a30b78:	0785                	addi	a5,a5,1
  a30b7a:	ca3e                	sw	a5,20(sp)
  a30b7c:	85d2                	mv	a1,s4
  a30b7e:	874e                	mv	a4,s3
  a30b80:	b745                	j	a30b20 <SecOutput+0x50>
  a30b82:	57fd                	li	a5,-1
  a30b84:	bfdd                	j	a30b7a <SecOutput+0xaa>
  a30b86:	57fd                	li	a5,-1
  a30b88:	c282                	sw	zero,68(sp)
  a30b8a:	d002                	sw	zero,32(sp)
  a30b8c:	d602                	sw	zero,44(sp)
  a30b8e:	d802                	sw	zero,48(sp)
  a30b90:	da3e                	sw	a5,52(sp)
  a30b92:	d202                	sw	zero,36(sp)
  a30b94:	dc02                	sw	zero,56(sp)
  a30b96:	de02                	sw	zero,60(sp)
  a30b98:	b7d5                	j	a30b7c <SecOutput+0xac>
  a30b9a:	02b00713          	li	a4,43
  a30b9e:	02e78963          	beq	a5,a4,a30bd0 <SecOutput+0x100>
  a30ba2:	00f76a63          	bltu	a4,a5,a30bb6 <SecOutput+0xe6>
  a30ba6:	2007883b          	beqi	a5,32,a30bc6 <SecOutput+0xf6>
  a30baa:	23f794bb          	bnei	a5,35,a30b7c <SecOutput+0xac>
  a30bae:	57b2                	lw	a5,44(sp)
  a30bb0:	0807e793          	ori	a5,a5,128
  a30bb4:	a821                	j	a30bcc <SecOutput+0xfc>
  a30bb6:	2d0788bb          	beqi	a5,45,a30bd8 <SecOutput+0x108>
  a30bba:	30f790bb          	bnei	a5,48,a30b7c <SecOutput+0xac>
  a30bbe:	57b2                	lw	a5,44(sp)
  a30bc0:	0087e793          	ori	a5,a5,8
  a30bc4:	a021                	j	a30bcc <SecOutput+0xfc>
  a30bc6:	57b2                	lw	a5,44(sp)
  a30bc8:	0027e793          	ori	a5,a5,2
  a30bcc:	d63e                	sw	a5,44(sp)
  a30bce:	b77d                	j	a30b7c <SecOutput+0xac>
  a30bd0:	57b2                	lw	a5,44(sp)
  a30bd2:	0017e793          	ori	a5,a5,1
  a30bd6:	bfdd                	j	a30bcc <SecOutput+0xfc>
  a30bd8:	57b2                	lw	a5,44(sp)
  a30bda:	0047e793          	ori	a5,a5,4
  a30bde:	b7fd                	j	a30bcc <SecOutput+0xfc>
  a30be0:	2a0793bb          	bnei	a5,42,a30bee <SecOutput+0x11e>
  a30be4:	4014                	lw	a3,0(s0)
  a30be6:	0411                	addi	s0,s0,4
  a30be8:	d836                	sw	a3,48(sp)
  a30bea:	4685                	li	a3,1
  a30bec:	dc36                	sw	a3,56(sp)
  a30bee:	56e2                	lw	a3,56(sp)
  a30bf0:	e695                	bnez	a3,a30c1c <SecOutput+0x14c>
  a30bf2:	030701bb          	beqi	a4,3,a30bf8 <SecOutput+0x128>
  a30bf6:	d802                	sw	zero,48(sp)
  a30bf8:	56c2                	lw	a3,48(sp)
  a30bfa:	0147 ae14 071f      	l.li	a4,0x147ae14
  a30c00:	00d75463          	bge	a4,a3,a30c08 <SecOutput+0x138>
  a30c04:	557d                	li	a0,-1
  a30c06:	b735                	j	a30b32 <SecOutput+0x62>
  a30c08:	00269713          	slli	a4,a3,0x2
  a30c0c:	fd078793          	addi	a5,a5,-48
  a30c10:	9736                	add	a4,a4,a3
  a30c12:	9f81                	uxtb	a5
  a30c14:	02e7879b          	addshf	a5,a5,a4,sll,1
  a30c18:	d83e                	sw	a5,48(sp)
  a30c1a:	b78d                	j	a30b7c <SecOutput+0xac>
  a30c1c:	57c2                	lw	a5,48(sp)
  a30c1e:	0007d963          	bgez	a5,a30c30 <SecOutput+0x160>
  a30c22:	5732                	lw	a4,44(sp)
  a30c24:	40f007b3          	neg	a5,a5
  a30c28:	d83e                	sw	a5,48(sp)
  a30c2a:	00476713          	ori	a4,a4,4
  a30c2e:	d63a                	sw	a4,44(sp)
  a30c30:	5742                	lw	a4,48(sp)
  a30c32:	0ccc ccc8 079f      	l.li	a5,0xcccccc8
  a30c38:	f4e7d2e3          	bge	a5,a4,a30b7c <SecOutput+0xac>
  a30c3c:	b7e1                	j	a30c04 <SecOutput+0x134>
  a30c3e:	da02                	sw	zero,52(sp)
  a30c40:	bf35                	j	a30b7c <SecOutput+0xac>
  a30c42:	2a0793bb          	bnei	a5,42,a30c50 <SecOutput+0x180>
  a30c46:	4018                	lw	a4,0(s0)
  a30c48:	0411                	addi	s0,s0,4
  a30c4a:	da3a                	sw	a4,52(sp)
  a30c4c:	4705                	li	a4,1
  a30c4e:	de3a                	sw	a4,60(sp)
  a30c50:	56f2                	lw	a3,60(sp)
  a30c52:	5752                	lw	a4,52(sp)
  a30c54:	e285                	bnez	a3,a30c74 <SecOutput+0x1a4>
  a30c56:	0147 ae14 069f      	l.li	a3,0x147ae14
  a30c5c:	fae6c4e3          	blt	a3,a4,a30c04 <SecOutput+0x134>
  a30c60:	00271693          	slli	a3,a4,0x2
  a30c64:	fd078793          	addi	a5,a5,-48
  a30c68:	9736                	add	a4,a4,a3
  a30c6a:	9f81                	uxtb	a5
  a30c6c:	02e7879b          	addshf	a5,a5,a4,sll,1
  a30c70:	da3e                	sw	a5,52(sp)
  a30c72:	b729                	j	a30b7c <SecOutput+0xac>
  a30c74:	00075463          	bgez	a4,a30c7c <SecOutput+0x1ac>
  a30c78:	57fd                	li	a5,-1
  a30c7a:	da3e                	sw	a5,52(sp)
  a30c7c:	5752                	lw	a4,52(sp)
  a30c7e:	bf55                	j	a30c32 <SecOutput+0x162>
  a30c80:	06a00713          	li	a4,106
  a30c84:	08e78763          	beq	a5,a4,a30d12 <SecOutput+0x242>
  a30c88:	04f76063          	bltu	a4,a5,a30cc8 <SecOutput+0x1f8>
  a30c8c:	04c00713          	li	a4,76
  a30c90:	04e78663          	beq	a5,a4,a30cdc <SecOutput+0x20c>
  a30c94:	00f76e63          	bltu	a4,a5,a30cb0 <SecOutput+0x1e0>
  a30c98:	49b7993b          	bnei	a5,73,a30b7c <SecOutput+0xac>
  a30c9c:	319c                	lbu	a5,1(a1)
  a30c9e:	36179fbb          	bnei	a5,54,a30d1c <SecOutput+0x24c>
  a30ca2:	21bc                	lbu	a5,2(a1)
  a30ca4:	34279d3b          	bnei	a5,52,a30d58 <SecOutput+0x288>
  a30ca8:	00358a13          	addi	s4,a1,3
  a30cac:	6721                	lui	a4,0x8
  a30cae:	a091                	j	a30cf2 <SecOutput+0x222>
  a30cb0:	5a078fbb          	beqi	a5,90,a30cee <SecOutput+0x21e>
  a30cb4:	68b7923b          	bnei	a5,104,a30b7c <SecOutput+0xac>
  a30cb8:	3194                	lbu	a3,1(a1)
  a30cba:	5732                	lw	a4,44(sp)
  a30cbc:	0af69763          	bne	a3,a5,a30d6a <SecOutput+0x29a>
  a30cc0:	00258a13          	addi	s4,a1,2
  a30cc4:	6789                	lui	a5,0x2
  a30cc6:	a081                	j	a30d06 <SecOutput+0x236>
  a30cc8:	07400713          	li	a4,116
  a30ccc:	04e78663          	beq	a5,a4,a30d18 <SecOutput+0x248>
  a30cd0:	00f76b63          	bltu	a4,a5,a30ce6 <SecOutput+0x216>
  a30cd4:	6c07893b          	beqi	a5,108,a30cf8 <SecOutput+0x228>
  a30cd8:	71a7993b          	bnei	a5,113,a30b7c <SecOutput+0xac>
  a30cdc:	57b2                	lw	a5,44(sp)
  a30cde:	0000 1400 071f      	l.li	a4,0x1400
  a30ce4:	a801                	j	a30cf4 <SecOutput+0x224>
  a30ce6:	772782bb          	beqi	a5,119,a30d70 <SecOutput+0x2a0>
  a30cea:	7aa794bb          	bnei	a5,122,a30b7c <SecOutput+0xac>
  a30cee:	00020737          	lui	a4,0x20
  a30cf2:	57b2                	lw	a5,44(sp)
  a30cf4:	8fd9                	or	a5,a5,a4
  a30cf6:	bdd9                	j	a30bcc <SecOutput+0xfc>
  a30cf8:	3194                	lbu	a3,1(a1)
  a30cfa:	5732                	lw	a4,44(sp)
  a30cfc:	00f69763          	bne	a3,a5,a30d0a <SecOutput+0x23a>
  a30d00:	00258a13          	addi	s4,a1,2
  a30d04:	6785                	lui	a5,0x1
  a30d06:	8f5d                	or	a4,a4,a5
  a30d08:	a019                	j	a30d0e <SecOutput+0x23e>
  a30d0a:	01076713          	ori	a4,a4,16
  a30d0e:	d63a                	sw	a4,44(sp)
  a30d10:	b5b5                	j	a30b7c <SecOutput+0xac>
  a30d12:	00040737          	lui	a4,0x40
  a30d16:	bff1                	j	a30cf2 <SecOutput+0x222>
  a30d18:	6741                	lui	a4,0x10
  a30d1a:	bfe1                	j	a30cf2 <SecOutput+0x222>
  a30d1c:	3307963b          	bnei	a5,51,a30d34 <SecOutput+0x264>
  a30d20:	21bc                	lbu	a5,2(a1)
  a30d22:	32079dbb          	bnei	a5,50,a30d58 <SecOutput+0x288>
  a30d26:	57b2                	lw	a5,44(sp)
  a30d28:	7761                	lui	a4,0xffff8
  a30d2a:	177d                	addi	a4,a4,-1 # ffff7fff <_gp_+0xff5c3777>
  a30d2c:	00358a13          	addi	s4,a1,3
  a30d30:	8ff9                	and	a5,a5,a4
  a30d32:	bd69                	j	a30bcc <SecOutput+0xfc>
  a30d34:	f9c78713          	addi	a4,a5,-100 # f9c <__bss_size__+0x994>
  a30d38:	0ff77693          	andi	a3,a4,255
  a30d3c:	1206f53b          	bgeui	a3,18,a30d50 <SecOutput+0x280>
  a30d40:	0002 0821 071f      	l.li	a4,0x20821
  a30d46:	00d75733          	srl	a4,a4,a3
  a30d4a:	8b05                	andi	a4,a4,1
  a30d4c:	e20718e3          	bnez	a4,a30b7c <SecOutput+0xac>
  a30d50:	0df7f793          	andi	a5,a5,223
  a30d54:	58878a3b          	beqi	a5,88,a30b7c <SecOutput+0xac>
  a30d58:	000ca783          	lw	a5,0(s9)
  a30d5c:	17fd                	addi	a5,a5,-1
  a30d5e:	00fca023          	sw	a5,0(s9)
  a30d62:	0007dc63          	bgez	a5,a30d7a <SecOutput+0x2aa>
  a30d66:	57fd                	li	a5,-1
  a30d68:	a02d                	j	a30d92 <SecOutput+0x2c2>
  a30d6a:	02076713          	ori	a4,a4,32
  a30d6e:	b745                	j	a30d0e <SecOutput+0x23e>
  a30d70:	57b2                	lw	a5,44(sp)
  a30d72:	0000 0800 071f      	l.li	a4,0x800
  a30d78:	bfb5                	j	a30cf4 <SecOutput+0x224>
  a30d7a:	004ca783          	lw	a5,4(s9)
  a30d7e:	04900713          	li	a4,73
  a30d82:	a398                	sb	a4,0(a5)
  a30d84:	004ca783          	lw	a5,4(s9)
  a30d88:	0785                	addi	a5,a5,1
  a30d8a:	00fca223          	sw	a5,4(s9)
  a30d8e:	47d2                	lw	a5,20(sp)
  a30d90:	0785                	addi	a5,a5,1
  a30d92:	ca3e                	sw	a5,20(sp)
  a30d94:	4981                	li	s3,0
  a30d96:	b3dd                	j	a30b7c <SecOutput+0xac>
  a30d98:	6847f23b          	bgeui	a5,104,a30ea0 <SecOutput+0x3d0>
  a30d9c:	06500713          	li	a4,101
  a30da0:	e6e7f2e3          	bgeu	a5,a4,a30c04 <SecOutput+0x134>
  a30da4:	05300713          	li	a4,83
  a30da8:	1ae78963          	beq	a5,a4,a30f5a <SecOutput+0x48a>
  a30dac:	08f76f63          	bltu	a4,a5,a30e4a <SecOutput+0x37a>
  a30db0:	04300713          	li	a4,67
  a30db4:	14e78f63          	beq	a5,a4,a30f12 <SecOutput+0x442>
  a30db8:	00e7e663          	bltu	a5,a4,a30dc4 <SecOutput+0x2f4>
  a30dbc:	fbb78793          	addi	a5,a5,-69
  a30dc0:	0397e13b          	bltui	a5,3,a30c04 <SecOutput+0x134>
  a30dc4:	5782                	lw	a5,32(sp)
  a30dc6:	5642                	lw	a2,48(sp)
  a30dc8:	8e1d                	sub	a2,a2,a5
  a30dca:	4796                	lw	a5,68(sp)
  a30dcc:	8e1d                	sub	a2,a2,a5
  a30dce:	57b2                	lw	a5,44(sp)
  a30dd0:	c0b2                	sw	a2,64(sp)
  a30dd2:	8bb1                	andi	a5,a5,12
  a30dd4:	eb89                	bnez	a5,a30de6 <SecOutput+0x316>
  a30dd6:	00c05863          	blez	a2,a30de6 <SecOutput+0x316>
  a30dda:	0854                	addi	a3,sp,20
  a30ddc:	02000593          	li	a1,32
  a30de0:	8566                	mv	a0,s9
  a30de2:	cc3ff0ef          	jal	ra,a30aa4 <SecWriteMultiChar>
  a30de6:	4696                	lw	a3,68(sp)
  a30de8:	00d05e63          	blez	a3,a30e04 <SecOutput+0x334>
  a30dec:	083c                	addi	a5,sp,24
  a30dee:	00f68633          	add	a2,a3,a5
  a30df2:	000ca703          	lw	a4,0(s9)
  a30df6:	177d                	addi	a4,a4,-1
  a30df8:	00eca023          	sw	a4,0(s9)
  a30dfc:	4a075e63          	bgez	a4,a312b8 <SecOutput+0x7e8>
  a30e00:	57fd                	li	a5,-1
  a30e02:	ca3e                	sw	a5,20(sp)
  a30e04:	57b2                	lw	a5,44(sp)
  a30e06:	8bb1                	andi	a5,a5,12
  a30e08:	080795bb          	bnei	a5,8,a30e1e <SecOutput+0x34e>
  a30e0c:	4606                	lw	a2,64(sp)
  a30e0e:	00c05863          	blez	a2,a30e1e <SecOutput+0x34e>
  a30e12:	0854                	addi	a3,sp,20
  a30e14:	03000593          	li	a1,48
  a30e18:	8566                	mv	a0,s9
  a30e1a:	c8bff0ef          	jal	ra,a30aa4 <SecWriteMultiChar>
  a30e1e:	5792                	lw	a5,36(sp)
  a30e20:	4a078c63          	beqz	a5,a312d8 <SecOutput+0x808>
  a30e24:	57fd                	li	a5,-1
  a30e26:	ca3e                	sw	a5,20(sp)
  a30e28:	47d2                	lw	a5,20(sp)
  a30e2a:	d407c9e3          	bltz	a5,a30b7c <SecOutput+0xac>
  a30e2e:	57b2                	lw	a5,44(sp)
  a30e30:	8b91                	andi	a5,a5,4
  a30e32:	d40785e3          	beqz	a5,a30b7c <SecOutput+0xac>
  a30e36:	4606                	lw	a2,64(sp)
  a30e38:	d4c052e3          	blez	a2,a30b7c <SecOutput+0xac>
  a30e3c:	0854                	addi	a3,sp,20
  a30e3e:	02000593          	li	a1,32
  a30e42:	8566                	mv	a0,s9
  a30e44:	c61ff0ef          	jal	ra,a30aa4 <SecWriteMultiChar>
  a30e48:	bb15                	j	a30b7c <SecOutput+0xac>
  a30e4a:	06300713          	li	a4,99
  a30e4e:	0ce78c63          	beq	a5,a4,a30f26 <SecOutput+0x456>
  a30e52:	06f76163          	bltu	a4,a5,a30eb4 <SecOutput+0x3e4>
  a30e56:	58d79bbb          	bnei	a5,88,a30dc4 <SecOutput+0x2f4>
  a30e5a:	4741                	li	a4,16
  a30e5c:	d43a                	sw	a4,40(sp)
  a30e5e:	cc4a                	sw	s2,24(sp)
  a30e60:	5732                	lw	a4,44(sp)
  a30e62:	585785bb          	beqi	a5,88,a30fb8 <SecOutput+0x4e8>
  a30e66:	7057953b          	bnei	a5,112,a30fba <SecOutput+0x4ea>
  a30e6a:	0000 4090 079f      	l.li	a5,0x4090
  a30e70:	8f5d                	or	a4,a4,a5
  a30e72:	4789                	li	a5,2
  a30e74:	c2be                	sw	a5,68(sp)
  a30e76:	77e1                	lui	a5,0xffff8
  a30e78:	8307c793          	xori	a5,a5,-2000
  a30e7c:	da02                	sw	zero,52(sp)
  a30e7e:	d63a                	sw	a4,44(sp)
  a30e80:	04f11423          	sh	a5,72(sp)
  a30e84:	57b2                	lw	a5,44(sp)
  a30e86:	6725                	lui	a4,0x9
  a30e88:	8f7d                	and	a4,a4,a5
  a30e8a:	16070a63          	beqz	a4,a30ffe <SecOutput+0x52e>
  a30e8e:	041d                	addi	s0,s0,7
  a30e90:	ff847793          	andi	a5,s0,-8
  a30e94:	00878413          	addi	s0,a5,8 # ffff8008 <_gp_+0xff5c3780>
  a30e98:	4384                	lw	s1,0(a5)
  a30e9a:	0047ad03          	lw	s10,4(a5)
  a30e9e:	a245                	j	a3103e <SecOutput+0x56e>
  a30ea0:	07000713          	li	a4,112
  a30ea4:	fae78be3          	beq	a5,a4,a30e5a <SecOutput+0x38a>
  a30ea8:	02f76363          	bltu	a4,a5,a30ece <SecOutput+0x3fe>
  a30eac:	6907823b          	beqi	a5,105,a30eb4 <SecOutput+0x3e4>
  a30eb0:	6fc7953b          	bnei	a5,111,a30dc4 <SecOutput+0x2f4>
  a30eb4:	06900693          	li	a3,105
  a30eb8:	5732                	lw	a4,44(sp)
  a30eba:	00d78663          	beq	a5,a3,a30ec6 <SecOutput+0x3f6>
  a30ebe:	10f6ed63          	bltu	a3,a5,a30fd8 <SecOutput+0x508>
  a30ec2:	64f790bb          	bnei	a5,100,a30e84 <SecOutput+0x3b4>
  a30ec6:	04076713          	ori	a4,a4,64
  a30eca:	d63a                	sw	a4,44(sp)
  a30ecc:	aa11                	j	a30fe0 <SecOutput+0x510>
  a30ece:	75f789bb          	beqi	a5,117,a30eb4 <SecOutput+0x3e4>
  a30ed2:	78e7823b          	beqi	a5,120,a30e5a <SecOutput+0x38a>
  a30ed6:	73b79bbb          	bnei	a5,115,a30dc4 <SecOutput+0x2f4>
  a30eda:	57b2                	lw	a5,44(sp)
  a30edc:	4014                	lw	a3,0(s0)
  a30ede:	00440493          	addi	s1,s0,4
  a30ee2:	ff77f713          	andi	a4,a5,-9
  a30ee6:	d63a                	sw	a4,44(sp)
  a30ee8:	0000 0810 071f      	l.li	a4,0x810
  a30eee:	8ff9                	and	a5,a5,a4
  a30ef0:	ce36                	sw	a3,28(sp)
  a30ef2:	5752                	lw	a4,52(sp)
  a30ef4:	ebd9                	bnez	a5,a30f8a <SecOutput+0x4ba>
  a30ef6:	e689                	bnez	a3,a30f00 <SecOutput+0x430>
  a30ef8:	00a3 4050 079f      	l.li	a5,0xa34050
  a30efe:	ce3e                	sw	a5,28(sp)
  a30f00:	4572                	lw	a0,28(sp)
  a30f02:	ff171bbb          	bnei	a4,-1,a30f70 <SecOutput+0x4a0>
  a30f06:	e07f70ef          	jal	ra,a28d0c <strlen>
  a30f0a:	06055b63          	bgez	a0,a30f80 <SecOutput+0x4b0>
  a30f0e:	4501                	li	a0,0
  a30f10:	a885                	j	a30f80 <SecOutput+0x4b0>
  a30f12:	57b2                	lw	a5,44(sp)
  a30f14:	6705                	lui	a4,0x1
  a30f16:	83070693          	addi	a3,a4,-2000 # 830 <__bss_size__+0x228>
  a30f1a:	8efd                	and	a3,a3,a5
  a30f1c:	e689                	bnez	a3,a30f26 <SecOutput+0x456>
  a30f1e:	80070713          	addi	a4,a4,-2048
  a30f22:	8fd9                	or	a5,a5,a4
  a30f24:	d63e                	sw	a5,44(sp)
  a30f26:	57b2                	lw	a5,44(sp)
  a30f28:	4605                	li	a2,1
  a30f2a:	d032                	sw	a2,32(sp)
  a30f2c:	ff77f593          	andi	a1,a5,-9
  a30f30:	d62e                	sw	a1,44(sp)
  a30f32:	0000 0810 059f      	l.li	a1,0x810
  a30f38:	8fed                	and	a5,a5,a1
  a30f3a:	00440713          	addi	a4,s0,4
  a30f3e:	4014                	lw	a3,0(s0)
  a30f40:	c799                	beqz	a5,a30f4e <SecOutput+0x47e>
  a30f42:	00fc                	addi	a5,sp,76
  a30f44:	c6b6                	sw	a3,76(sp)
  a30f46:	ce3e                	sw	a5,28(sp)
  a30f48:	d232                	sw	a2,36(sp)
  a30f4a:	843a                	mv	s0,a4
  a30f4c:	bda5                	j	a30dc4 <SecOutput+0x2f4>
  a30f4e:	00fc                	addi	a5,sp,76
  a30f50:	04d10623          	sb	a3,76(sp)
  a30f54:	ce3e                	sw	a5,28(sp)
  a30f56:	d202                	sw	zero,36(sp)
  a30f58:	bfcd                	j	a30f4a <SecOutput+0x47a>
  a30f5a:	57b2                	lw	a5,44(sp)
  a30f5c:	6705                	lui	a4,0x1
  a30f5e:	83070693          	addi	a3,a4,-2000 # 830 <__bss_size__+0x228>
  a30f62:	8efd                	and	a3,a3,a5
  a30f64:	fabd                	bnez	a3,a30eda <SecOutput+0x40a>
  a30f66:	80070713          	addi	a4,a4,-2048
  a30f6a:	8fd9                	or	a5,a5,a4
  a30f6c:	d63e                	sw	a5,44(sp)
  a30f6e:	b7b5                	j	a30eda <SecOutput+0x40a>
  a30f70:	972a                	add	a4,a4,a0
  a30f72:	87aa                	mv	a5,a0
  a30f74:	00e78463          	beq	a5,a4,a30f7c <SecOutput+0x4ac>
  a30f78:	2394                	lbu	a3,0(a5)
  a30f7a:	e691                	bnez	a3,a30f86 <SecOutput+0x4b6>
  a30f7c:	40a78533          	sub	a0,a5,a0
  a30f80:	d02a                	sw	a0,32(sp)
  a30f82:	8426                	mv	s0,s1
  a30f84:	b581                	j	a30dc4 <SecOutput+0x2f4>
  a30f86:	0785                	addi	a5,a5,1
  a30f88:	b7f5                	j	a30f74 <SecOutput+0x4a4>
  a30f8a:	4785                	li	a5,1
  a30f8c:	d23e                	sw	a5,36(sp)
  a30f8e:	e689                	bnez	a3,a30f98 <SecOutput+0x4c8>
  a30f90:	00a3 4058 079f      	l.li	a5,0xa34058
  a30f96:	ce3e                	sw	a5,28(sp)
  a30f98:	46f2                	lw	a3,28(sp)
  a30f9a:	4781                	li	a5,0
  a30f9c:	00e78463          	beq	a5,a4,a30fa4 <SecOutput+0x4d4>
  a30fa0:	4290                	lw	a2,0(a3)
  a30fa2:	ea01                	bnez	a2,a30fb2 <SecOutput+0x4e2>
  a30fa4:	20000737          	lui	a4,0x20000
  a30fa8:	00e7e363          	bltu	a5,a4,a30fae <SecOutput+0x4de>
  a30fac:	4781                	li	a5,0
  a30fae:	d03e                	sw	a5,32(sp)
  a30fb0:	bfc9                	j	a30f82 <SecOutput+0x4b2>
  a30fb2:	0785                	addi	a5,a5,1
  a30fb4:	0691                	addi	a3,a3,4
  a30fb6:	b7dd                	j	a30f9c <SecOutput+0x4cc>
  a30fb8:	cc56                	sw	s5,24(sp)
  a30fba:	08077713          	andi	a4,a4,128
  a30fbe:	ee070be3          	beqz	a4,a30eb4 <SecOutput+0x3e4>
  a30fc2:	03000713          	li	a4,48
  a30fc6:	04e10423          	sb	a4,72(sp)
  a30fca:	4762                	lw	a4,24(sp)
  a30fcc:	2b18                	lbu	a4,16(a4)
  a30fce:	04e104a3          	sb	a4,73(sp)
  a30fd2:	4709                	li	a4,2
  a30fd4:	c2ba                	sw	a4,68(sp)
  a30fd6:	bdf9                	j	a30eb4 <SecOutput+0x3e4>
  a30fd8:	6f07843b          	beqi	a5,111,a30fe8 <SecOutput+0x518>
  a30fdc:	75a79a3b          	bnei	a5,117,a30e84 <SecOutput+0x3b4>
  a30fe0:	47a9                	li	a5,10
  a30fe2:	d43e                	sw	a5,40(sp)
  a30fe4:	cc4a                	sw	s2,24(sp)
  a30fe6:	bd79                	j	a30e84 <SecOutput+0x3b4>
  a30fe8:	47a1                	li	a5,8
  a30fea:	d43e                	sw	a5,40(sp)
  a30fec:	cc4a                	sw	s2,24(sp)
  a30fee:	08077793          	andi	a5,a4,128
  a30ff2:	e80789e3          	beqz	a5,a30e84 <SecOutput+0x3b4>
  a30ff6:	20076713          	ori	a4,a4,512
  a30ffa:	d63a                	sw	a4,44(sp)
  a30ffc:	b561                	j	a30e84 <SecOutput+0x3b4>
  a30ffe:	0107f693          	andi	a3,a5,16
  a31002:	0407f713          	andi	a4,a5,64
  a31006:	c689                	beqz	a3,a31010 <SecOutput+0x540>
  a31008:	4004                	lw	s1,0(s0)
  a3100a:	0411                	addi	s0,s0,4
  a3100c:	cb4d                	beqz	a4,a310be <SecOutput+0x5ee>
  a3100e:	a065                	j	a310b6 <SecOutput+0x5e6>
  a31010:	01279693          	slli	a3,a5,0x12
  a31014:	0806d963          	bgez	a3,a310a6 <SecOutput+0x5d6>
  a31018:	4014                	lw	a3,0(s0)
  a3101a:	4d01                	li	s10,0
  a3101c:	0411                	addi	s0,s0,4
  a3101e:	0ff6f493          	andi	s1,a3,255
  a31022:	cf11                	beqz	a4,a3103e <SecOutput+0x56e>
  a31024:	06e2                	slli	a3,a3,0x18
  a31026:	86e1                	srai	a3,a3,0x18
  a31028:	0006db63          	bgez	a3,a3103e <SecOutput+0x56e>
  a3102c:	fff4c493          	not	s1,s1
  a31030:	9c81                	uxtb	s1
  a31032:	0485                	addi	s1,s1,1
  a31034:	1007e793          	ori	a5,a5,256
  a31038:	41f4dd13          	srai	s10,s1,0x1f
  a3103c:	d63e                	sw	a5,44(sp)
  a3103e:	57b2                	lw	a5,44(sp)
  a31040:	8da6                	mv	s11,s1
  a31042:	876a                	mv	a4,s10
  a31044:	0407f693          	andi	a3,a5,64
  a31048:	ce89                	beqz	a3,a31062 <SecOutput+0x592>
  a3104a:	000d5c63          	bgez	s10,a31062 <SecOutput+0x592>
  a3104e:	40900db3          	neg	s11,s1
  a31052:	01b036b3          	snez	a3,s11
  a31056:	41a00733          	neg	a4,s10
  a3105a:	1007e793          	ori	a5,a5,256
  a3105e:	8f15                	sub	a4,a4,a3
  a31060:	d63e                	sw	a5,44(sp)
  a31062:	56b2                	lw	a3,44(sp)
  a31064:	000497b7          	lui	a5,0x49
  a31068:	8ff5                	and	a5,a5,a3
  a3106a:	e391                	bnez	a5,a3106e <SecOutput+0x59e>
  a3106c:	4701                	li	a4,0
  a3106e:	24c10813          	addi	a6,sp,588
  a31072:	ce42                	sw	a6,28(sp)
  a31074:	00ede7b3          	or	a5,s11,a4
  a31078:	e3c1                	bnez	a5,a310f8 <SecOutput+0x628>
  a3107a:	c282                	sw	zero,68(sp)
  a3107c:	d002                	sw	zero,32(sp)
  a3107e:	5752                	lw	a4,52(sp)
  a31080:	4685                	li	a3,1
  a31082:	00074f63          	bltz	a4,a310a0 <SecOutput+0x5d0>
  a31086:	57b2                	lw	a5,44(sp)
  a31088:	01179693          	slli	a3,a5,0x11
  a3108c:	0006c463          	bltz	a3,a31094 <SecOutput+0x5c4>
  a31090:	9bdd                	andi	a5,a5,-9
  a31092:	d63e                	sw	a5,44(sp)
  a31094:	20000793          	li	a5,512
  a31098:	00e7d363          	bge	a5,a4,a3109e <SecOutput+0x5ce>
  a3109c:	da3e                	sw	a5,52(sp)
  a3109e:	56d2                	lw	a3,52(sp)
  a310a0:	03000613          	li	a2,48
  a310a4:	aa69                	j	a3123e <SecOutput+0x76e>
  a310a6:	0207f693          	andi	a3,a5,32
  a310aa:	ce81                	beqz	a3,a310c2 <SecOutput+0x5f2>
  a310ac:	4004                	lw	s1,0(s0)
  a310ae:	0411                	addi	s0,s0,4
  a310b0:	c711                	beqz	a4,a310bc <SecOutput+0x5ec>
  a310b2:	04c2                	slli	s1,s1,0x10
  a310b4:	84c1                	srai	s1,s1,0x10
  a310b6:	41f4dd13          	srai	s10,s1,0x1f
  a310ba:	b751                	j	a3103e <SecOutput+0x56e>
  a310bc:	9ca1                	uxth	s1
  a310be:	4d01                	li	s10,0
  a310c0:	bfbd                	j	a3103e <SecOutput+0x56e>
  a310c2:	00f79693          	slli	a3,a5,0xf
  a310c6:	0006d763          	bgez	a3,a310d4 <SecOutput+0x604>
  a310ca:	4004                	lw	s1,0(s0)
  a310cc:	0411                	addi	s0,s0,4
  a310ce:	41f4dd13          	srai	s10,s1,0x1f
  a310d2:	b7b5                	j	a3103e <SecOutput+0x56e>
  a310d4:	00e79693          	slli	a3,a5,0xe
  a310d8:	0006db63          	bgez	a3,a310ee <SecOutput+0x61e>
  a310dc:	4004                	lw	s1,0(s0)
  a310de:	00440793          	addi	a5,s0,4
  a310e2:	41f4dd13          	srai	s10,s1,0x1f
  a310e6:	e311                	bnez	a4,a310ea <SecOutput+0x61a>
  a310e8:	4d01                	li	s10,0
  a310ea:	843e                	mv	s0,a5
  a310ec:	bf89                	j	a3103e <SecOutput+0x56e>
  a310ee:	00d79693          	slli	a3,a5,0xd
  a310f2:	f006dbe3          	bgez	a3,a31008 <SecOutput+0x538>
  a310f6:	bb61                	j	a30e8e <SecOutput+0x3be>
  a310f8:	57a2                	lw	a5,40(sp)
  a310fa:	ef49                	bnez	a4,a31194 <SecOutput+0x6c4>
  a310fc:	0a1791bb          	bnei	a5,10,a31142 <SecOutput+0x672>
  a31100:	46a9                	li	a3,10
  a31102:	4625                	li	a2,9
  a31104:	4772                	lw	a4,28(sp)
  a31106:	fff70793          	addi	a5,a4,-1 # 1fffffff <_gp_+0x1f5cb777>
  a3110a:	ce3e                	sw	a5,28(sp)
  a3110c:	02ddf7b3          	remu	a5,s11,a3
  a31110:	97ca                	add	a5,a5,s2
  a31112:	239c                	lbu	a5,0(a5)
  a31114:	fef70fa3          	sb	a5,-1(a4)
  a31118:	002dd793          	srli	a5,s11,0x2
  a3111c:	43b7879b          	addshf	a5,a5,s11,srl,1
  a31120:	48f7879b          	addshf	a5,a5,a5,srl,4
  a31124:	50f7879b          	addshf	a5,a5,a5,srl,8
  a31128:	60f7879b          	addshf	a5,a5,a5,srl,16
  a3112c:	838d                	srli	a5,a5,0x3
  a3112e:	00279513          	slli	a0,a5,0x2
  a31132:	953e                	add	a0,a0,a5
  a31134:	02ad951b          	subshf	a0,s11,a0,sll,1
  a31138:	04a67c63          	bgeu	a2,a0,a31190 <SecOutput+0x6c0>
  a3113c:	0785                	addi	a5,a5,1 # 49001 <__heap_size+0x2ba09>
  a3113e:	8dbe                	mv	s11,a5
  a31140:	b7d1                	j	a31104 <SecOutput+0x634>
  a31142:	100789bb          	beqi	a5,16,a31168 <SecOutput+0x698>
  a31146:	0817903b          	bnei	a5,8,a31186 <SecOutput+0x6b6>
  a3114a:	4772                	lw	a4,28(sp)
  a3114c:	fff70793          	addi	a5,a4,-1
  a31150:	ce3e                	sw	a5,28(sp)
  a31152:	007df793          	andi	a5,s11,7
  a31156:	97ca                	add	a5,a5,s2
  a31158:	239c                	lbu	a5,0(a5)
  a3115a:	003ddd93          	srli	s11,s11,0x3
  a3115e:	fef70fa3          	sb	a5,-1(a4)
  a31162:	fe0d94e3          	bnez	s11,a3114a <SecOutput+0x67a>
  a31166:	a005                	j	a31186 <SecOutput+0x6b6>
  a31168:	4772                	lw	a4,28(sp)
  a3116a:	00fdf693          	andi	a3,s11,15
  a3116e:	004ddd93          	srli	s11,s11,0x4
  a31172:	fff70793          	addi	a5,a4,-1
  a31176:	ce3e                	sw	a5,28(sp)
  a31178:	47e2                	lw	a5,24(sp)
  a3117a:	97b6                	add	a5,a5,a3
  a3117c:	239c                	lbu	a5,0(a5)
  a3117e:	fef70fa3          	sb	a5,-1(a4)
  a31182:	fe0d93e3          	bnez	s11,a31168 <SecOutput+0x698>
  a31186:	47f2                	lw	a5,28(sp)
  a31188:	40f80833          	sub	a6,a6,a5
  a3118c:	d042                	sw	a6,32(sp)
  a3118e:	bdc5                	j	a3107e <SecOutput+0x5ae>
  a31190:	f7dd                	bnez	a5,a3113e <SecOutput+0x66e>
  a31192:	bfd5                	j	a31186 <SecOutput+0x6b6>
  a31194:	0a078cbb          	beqi	a5,10,a311c6 <SecOutput+0x6f6>
  a31198:	10178b3b          	beqi	a5,16,a31204 <SecOutput+0x734>
  a3119c:	08f79abb          	bnei	a5,8,a31186 <SecOutput+0x6b6>
  a311a0:	46f2                	lw	a3,28(sp)
  a311a2:	fff68793          	addi	a5,a3,-1
  a311a6:	ce3e                	sw	a5,28(sp)
  a311a8:	007df793          	andi	a5,s11,7
  a311ac:	97ca                	add	a5,a5,s2
  a311ae:	239c                	lbu	a5,0(a5)
  a311b0:	003ddd93          	srli	s11,s11,0x3
  a311b4:	3aedad9b          	orshf	s11,s11,a4,sll,29
  a311b8:	830d                	srli	a4,a4,0x3
  a311ba:	fef68fa3          	sb	a5,-1(a3)
  a311be:	00ede7b3          	or	a5,s11,a4
  a311c2:	fff9                	bnez	a5,a311a0 <SecOutput+0x6d0>
  a311c4:	b7c9                	j	a31186 <SecOutput+0x6b6>
  a311c6:	47f2                	lw	a5,28(sp)
  a311c8:	4629                	li	a2,10
  a311ca:	856e                	mv	a0,s11
  a311cc:	fff78693          	addi	a3,a5,-1
  a311d0:	ce36                	sw	a3,28(sp)
  a311d2:	85ba                	mv	a1,a4
  a311d4:	4681                	li	a3,0
  a311d6:	c642                	sw	a6,12(sp)
  a311d8:	c43e                	sw	a5,8(sp)
  a311da:	c23a                	sw	a4,4(sp)
  a311dc:	bc4f70ef          	jal	ra,a285a0 <__umoddi3>
  a311e0:	954a                	add	a0,a0,s2
  a311e2:	2114                	lbu	a3,0(a0)
  a311e4:	4712                	lw	a4,4(sp)
  a311e6:	47a2                	lw	a5,8(sp)
  a311e8:	856e                	mv	a0,s11
  a311ea:	85ba                	mv	a1,a4
  a311ec:	fed78fa3          	sb	a3,-1(a5)
  a311f0:	4629                	li	a2,10
  a311f2:	4681                	li	a3,0
  a311f4:	ba8f70ef          	jal	ra,a2859c <__udivdi3>
  a311f8:	872e                	mv	a4,a1
  a311fa:	8dc9                	or	a1,a1,a0
  a311fc:	8daa                	mv	s11,a0
  a311fe:	4832                	lw	a6,12(sp)
  a31200:	f1f9                	bnez	a1,a311c6 <SecOutput+0x6f6>
  a31202:	b751                	j	a31186 <SecOutput+0x6b6>
  a31204:	46f2                	lw	a3,28(sp)
  a31206:	00fdf613          	andi	a2,s11,15
  a3120a:	004ddd93          	srli	s11,s11,0x4
  a3120e:	fff68793          	addi	a5,a3,-1
  a31212:	ce3e                	sw	a5,28(sp)
  a31214:	47e2                	lw	a5,24(sp)
  a31216:	38edad9b          	orshf	s11,s11,a4,sll,28
  a3121a:	8311                	srli	a4,a4,0x4
  a3121c:	97b2                	add	a5,a5,a2
  a3121e:	239c                	lbu	a5,0(a5)
  a31220:	fef68fa3          	sb	a5,-1(a3)
  a31224:	00ede7b3          	or	a5,s11,a4
  a31228:	fff1                	bnez	a5,a31204 <SecOutput+0x734>
  a3122a:	bfb1                	j	a31186 <SecOutput+0x6b6>
  a3122c:	47f2                	lw	a5,28(sp)
  a3122e:	fff78713          	addi	a4,a5,-1
  a31232:	ce3a                	sw	a4,28(sp)
  a31234:	fec78fa3          	sb	a2,-1(a5)
  a31238:	5782                	lw	a5,32(sp)
  a3123a:	0785                	addi	a5,a5,1
  a3123c:	d03e                	sw	a5,32(sp)
  a3123e:	5702                	lw	a4,32(sp)
  a31240:	fed746e3          	blt	a4,a3,a3122c <SecOutput+0x75c>
  a31244:	57b2                	lw	a5,44(sp)
  a31246:	2007f793          	andi	a5,a5,512
  a3124a:	c385                	beqz	a5,a3126a <SecOutput+0x79a>
  a3124c:	47f2                	lw	a5,28(sp)
  a3124e:	c701                	beqz	a4,a31256 <SecOutput+0x786>
  a31250:	2398                	lbu	a4,0(a5)
  a31252:	3007063b          	beqi	a4,48,a3126a <SecOutput+0x79a>
  a31256:	fff78713          	addi	a4,a5,-1
  a3125a:	ce3a                	sw	a4,28(sp)
  a3125c:	03000713          	li	a4,48
  a31260:	fee78fa3          	sb	a4,-1(a5)
  a31264:	5782                	lw	a5,32(sp)
  a31266:	0785                	addi	a5,a5,1
  a31268:	d03e                	sw	a5,32(sp)
  a3126a:	57b2                	lw	a5,44(sp)
  a3126c:	0407f713          	andi	a4,a5,64
  a31270:	cb11                	beqz	a4,a31284 <SecOutput+0x7b4>
  a31272:	1007f713          	andi	a4,a5,256
  a31276:	c70d                	beqz	a4,a312a0 <SecOutput+0x7d0>
  a31278:	02d00713          	li	a4,45
  a3127c:	04e10423          	sb	a4,72(sp)
  a31280:	4705                	li	a4,1
  a31282:	c2ba                	sw	a4,68(sp)
  a31284:	01a4e4b3          	or	s1,s1,s10
  a31288:	b2049ee3          	bnez	s1,a30dc4 <SecOutput+0x2f4>
  a3128c:	01179713          	slli	a4,a5,0x11
  a31290:	b2075ae3          	bgez	a4,a30dc4 <SecOutput+0x2f4>
  a31294:	4715                	li	a4,5
  a31296:	9bdd                	andi	a5,a5,-9
  a31298:	ce62                	sw	s8,28(sp)
  a3129a:	d03a                	sw	a4,32(sp)
  a3129c:	d63e                	sw	a5,44(sp)
  a3129e:	b61d                	j	a30dc4 <SecOutput+0x2f4>
  a312a0:	0017f713          	andi	a4,a5,1
  a312a4:	c701                	beqz	a4,a312ac <SecOutput+0x7dc>
  a312a6:	02b00713          	li	a4,43
  a312aa:	bfc9                	j	a3127c <SecOutput+0x7ac>
  a312ac:	0027f713          	andi	a4,a5,2
  a312b0:	db71                	beqz	a4,a31284 <SecOutput+0x7b4>
  a312b2:	02000713          	li	a4,32
  a312b6:	b7d9                	j	a3127c <SecOutput+0x7ac>
  a312b8:	004ca703          	lw	a4,4(s9)
  a312bc:	0307c583          	lbu	a1,48(a5)
  a312c0:	0785                	addi	a5,a5,1
  a312c2:	a30c                	sb	a1,0(a4)
  a312c4:	004ca703          	lw	a4,4(s9)
  a312c8:	0705                	addi	a4,a4,1
  a312ca:	00eca223          	sw	a4,4(s9)
  a312ce:	b2f612e3          	bne	a2,a5,a30df2 <SecOutput+0x322>
  a312d2:	47d2                	lw	a5,20(sp)
  a312d4:	97b6                	add	a5,a5,a3
  a312d6:	b635                	j	a30e02 <SecOutput+0x332>
  a312d8:	45f2                	lw	a1,28(sp)
  a312da:	5482                	lw	s1,32(sp)
  a312dc:	000ca703          	lw	a4,0(s9)
  a312e0:	87ae                	mv	a5,a1
  a312e2:	009586b3          	add	a3,a1,s1
  a312e6:	06974963          	blt	a4,s1,a31358 <SecOutput+0x888>
  a312ea:	0c04ddbb          	bgei	s1,12,a31320 <SecOutput+0x850>
  a312ee:	87ae                	mv	a5,a1
  a312f0:	a819                	j	a31306 <SecOutput+0x836>
  a312f2:	004ca703          	lw	a4,4(s9)
  a312f6:	2394                	lbu	a3,0(a5)
  a312f8:	0785                	addi	a5,a5,1
  a312fa:	a314                	sb	a3,0(a4)
  a312fc:	004ca703          	lw	a4,4(s9)
  a31300:	0705                	addi	a4,a4,1
  a31302:	00eca223          	sw	a4,4(s9)
  a31306:	40b78733          	sub	a4,a5,a1
  a3130a:	fe9744e3          	blt	a4,s1,a312f2 <SecOutput+0x822>
  a3130e:	000ca783          	lw	a5,0(s9)
  a31312:	8f85                	sub	a5,a5,s1
  a31314:	00fca023          	sw	a5,0(s9)
  a31318:	47d2                	lw	a5,20(sp)
  a3131a:	94be                	add	s1,s1,a5
  a3131c:	ca26                	sw	s1,20(sp)
  a3131e:	b629                	j	a30e28 <SecOutput+0x358>
  a31320:	004ca503          	lw	a0,4(s9)
  a31324:	8626                	mv	a2,s1
  a31326:	f2cf70ef          	jal	ra,a28a52 <memcpy>
  a3132a:	004ca783          	lw	a5,4(s9)
  a3132e:	97a6                	add	a5,a5,s1
  a31330:	00fca223          	sw	a5,4(s9)
  a31334:	bfe9                	j	a3130e <SecOutput+0x83e>
  a31336:	000ca703          	lw	a4,0(s9)
  a3133a:	177d                	addi	a4,a4,-1
  a3133c:	00eca023          	sw	a4,0(s9)
  a31340:	ae0742e3          	bltz	a4,a30e24 <SecOutput+0x354>
  a31344:	004ca703          	lw	a4,4(s9)
  a31348:	2390                	lbu	a2,0(a5)
  a3134a:	0785                	addi	a5,a5,1
  a3134c:	a310                	sb	a2,0(a4)
  a3134e:	004ca703          	lw	a4,4(s9)
  a31352:	0705                	addi	a4,a4,1
  a31354:	00eca223          	sw	a4,4(s9)
  a31358:	40f68733          	sub	a4,a3,a5
  a3135c:	fce04de3          	bgtz	a4,a31336 <SecOutput+0x866>
  a31360:	bf65                	j	a31318 <SecOutput+0x848>

00a31362 <SecVsnprintfImpl>:
  a31362:	8138                	push	{ra,s0-s1},-32
  a31364:	84ae                	mv	s1,a1
  a31366:	842a                	mv	s0,a0
  a31368:	85b2                	mv	a1,a2
  a3136a:	c62a                	sw	a0,12(sp)
  a3136c:	8636                	mv	a2,a3
  a3136e:	0028                	addi	a0,sp,8
  a31370:	c426                	sw	s1,8(sp)
  a31372:	f5eff0ef          	jal	ra,a30ad0 <SecOutput>
  a31376:	00054b63          	bltz	a0,a3138c <SecVsnprintfImpl+0x2a>
  a3137a:	47a2                	lw	a5,8(sp)
  a3137c:	17fd                	addi	a5,a5,-1
  a3137e:	c43e                	sw	a5,8(sp)
  a31380:	0007c663          	bltz	a5,a3138c <SecVsnprintfImpl+0x2a>
  a31384:	47b2                	lw	a5,12(sp)
  a31386:	00078023          	sb	zero,0(a5)
  a3138a:	8134                	popret	{ra,s0-s1},32
  a3138c:	47a2                	lw	a5,8(sp)
  a3138e:	0007d763          	bgez	a5,a3139c <SecVsnprintfImpl+0x3a>
  a31392:	9426                	add	s0,s0,s1
  a31394:	fe040fa3          	sb	zero,-1(s0)
  a31398:	5579                	li	a0,-2
  a3139a:	bfc5                	j	a3138a <SecVsnprintfImpl+0x28>
  a3139c:	00040023          	sb	zero,0(s0)
  a313a0:	557d                	li	a0,-1
  a313a2:	b7e5                	j	a3138a <SecVsnprintfImpl+0x28>

00a313a4 <vsnprintf_s>:
  a313a4:	8028                	push	{ra,s0},-16
  a313a6:	8832                	mv	a6,a2
  a313a8:	842a                	mv	s0,a0
  a313aa:	87ae                	mv	a5,a1
  a313ac:	8636                	mv	a2,a3
  a313ae:	ca8d                	beqz	a3,a313e0 <vsnprintf_s+0x3c>
  a313b0:	e119                	bnez	a0,a313b6 <vsnprintf_s+0x12>
  a313b2:	557d                	li	a0,-1
  a313b4:	8024                	popret	{ra,s0},16
  a313b6:	ddf5                	beqz	a1,a313b2 <vsnprintf_s+0xe>
  a313b8:	fe05cde3          	bltz	a1,a313b2 <vsnprintf_s+0xe>
  a313bc:	800008b7          	lui	a7,0x80000
  a313c0:	ffe8c893          	xori	a7,a7,-2
  a313c4:	0308e063          	bltu	a7,a6,a313e4 <vsnprintf_s+0x40>
  a313c8:	86ba                	mv	a3,a4
  a313ca:	02b87263          	bgeu	a6,a1,a313ee <vsnprintf_s+0x4a>
  a313ce:	00180593          	addi	a1,a6,1
  a313d2:	f91ff0ef          	jal	ra,a31362 <SecVsnprintfImpl>
  a313d6:	fef5073b          	beqi	a0,-2,a313b2 <vsnprintf_s+0xe>
  a313da:	fc055de3          	bgez	a0,a313b4 <vsnprintf_s+0x10>
  a313de:	a029                	j	a313e8 <vsnprintf_s+0x44>
  a313e0:	d969                	beqz	a0,a313b2 <vsnprintf_s+0xe>
  a313e2:	d9e1                	beqz	a1,a313b2 <vsnprintf_s+0xe>
  a313e4:	fc07c7e3          	bltz	a5,a313b2 <vsnprintf_s+0xe>
  a313e8:	00040023          	sb	zero,0(s0)
  a313ec:	b7d9                	j	a313b2 <vsnprintf_s+0xe>
  a313ee:	f75ff0ef          	jal	ra,a31362 <SecVsnprintfImpl>
  a313f2:	b7e5                	j	a313da <vsnprintf_s+0x36>
  a313f4:	04f9                	addi	s1,s1,30
  a313f6:	0000                	unimp
  a313f8:	00000003          	lb	zero,0(zero) # 0 <__data_size__-0x1e8>
  a313fc:	0000                	unimp
	...

00a31400 <excp_vect_table>:
  a31400:	d11a                	sw	t1,160(sp)
  a31402:	00a2                	slli	ra,ra,0x8
  a31404:	d130                	sw	a2,96(a0)
  a31406:	00a2                	slli	ra,ra,0x8
  a31408:	d146                	sw	a7,160(sp)
  a3140a:	00a2                	slli	ra,ra,0x8
  a3140c:	d1f6                	sw	t4,224(sp)
  a3140e:	00a2                	slli	ra,ra,0x8
  a31410:	d15c                	sw	a5,36(a0)
  a31412:	00a2                	slli	ra,ra,0x8
  a31414:	d172                	sw	t3,160(sp)
  a31416:	00a2                	slli	ra,ra,0x8
  a31418:	d188                	sw	a0,32(a1)
  a3141a:	00a2                	slli	ra,ra,0x8
  a3141c:	d19e                	sw	t2,224(sp)
  a3141e:	00a2                	slli	ra,ra,0x8
  a31420:	d1b4                	sw	a3,96(a1)
  a31422:	00a2                	slli	ra,ra,0x8
  a31424:	d1ca                	sw	s2,224(sp)
  a31426:	00a2                	slli	ra,ra,0x8
  a31428:	d104                	sw	s1,32(a0)
  a3142a:	00a2                	slli	ra,ra,0x8
  a3142c:	d1e0                	sw	s0,100(a1)
  a3142e:	00a2                	slli	ra,ra,0x8
  a31430:	d20c                	sw	a1,32(a2)
  a31432:	00a2                	slli	ra,ra,0x8
  a31434:	d222                	sw	s0,36(sp)
  a31436:	00a2                	slli	ra,ra,0x8
  a31438:	d104                	sw	s1,32(a0)
  a3143a:	00a2                	slli	ra,ra,0x8
  a3143c:	d238                	sw	a4,96(a2)
  a3143e:	00a2                	slli	ra,ra,0x8
  a31440:	d24e                	sw	s3,36(sp)
  a31442:	00a2                	slli	ra,ra,0x8
  a31444:	d264                	sw	s1,100(a2)
  a31446:	00a2                	slli	ra,ra,0x8

00a31448 <excp_vect_table_end>:
	...

00a31450 <trap_entry>:
  a31450:	7175                	addi	sp,sp,-144
  a31452:	d06e                	sw	s11,32(sp)
  a31454:	d26a                	sw	s10,36(sp)
  a31456:	d466                	sw	s9,40(sp)
  a31458:	d662                	sw	s8,44(sp)
  a3145a:	d85e                	sw	s7,48(sp)
  a3145c:	da5a                	sw	s6,52(sp)
  a3145e:	dc56                	sw	s5,56(sp)
  a31460:	de52                	sw	s4,60(sp)
  a31462:	c0ce                	sw	s3,64(sp)
  a31464:	c2ca                	sw	s2,68(sp)
  a31466:	c4a6                	sw	s1,72(sp)
  a31468:	c6a2                	sw	s0,76(sp)
  a3146a:	c8fe                	sw	t6,80(sp)
  a3146c:	cafa                	sw	t5,84(sp)
  a3146e:	ccf6                	sw	t4,88(sp)
  a31470:	cef2                	sw	t3,92(sp)
  a31472:	d0c6                	sw	a7,96(sp)
  a31474:	d2c2                	sw	a6,100(sp)
  a31476:	d4be                	sw	a5,104(sp)
  a31478:	d6ba                	sw	a4,108(sp)
  a3147a:	d8b6                	sw	a3,112(sp)
  a3147c:	dab2                	sw	a2,116(sp)
  a3147e:	dcae                	sw	a1,120(sp)
  a31480:	deaa                	sw	a0,124(sp)
  a31482:	c11e                	sw	t2,128(sp)
  a31484:	c31a                	sw	t1,132(sp)
  a31486:	c516                	sw	t0,136(sp)
  a31488:	c706                	sw	ra,140(sp)
  a3148a:	fc202a73          	csrr	s4,0xfc2
  a3148e:	c052                	sw	s4,0(sp)
  a31490:	342029f3          	csrr	s3,mcause
  a31494:	c24e                	sw	s3,4(sp)
  a31496:	34302973          	csrr	s2,mtval
  a3149a:	c44a                	sw	s2,8(sp)
  a3149c:	c60e                	sw	gp,12(sp)
  a3149e:	300024f3          	csrr	s1,mstatus
  a314a2:	c826                	sw	s1,16(sp)
  a314a4:	34102473          	csrr	s0,mepc
  a314a8:	ca22                	sw	s0,20(sp)
  a314aa:	cc12                	sw	tp,24(sp)
  a314ac:	ce0a                	sw	sp,28(sp)
  a314ae:	30047073          	csrci	mstatus,8
  a314b2:	34011073          	csrw	mscratch,sp
  a314b6:	fffd4117          	auipc	sp,0xfffd4
  a314ba:	04a10113          	addi	sp,sp,74 # a05500 <g_flash_cmd_funcs>
  a314be:	42a1                	li	t0,8
  a314c0:	00599463          	bne	s3,t0,a314c8 <trap_entry+0x78>
  a314c4:	88ef706f          	j	a28552 <handle_syscall>
  a314c8:	00299293          	slli	t0,s3,0x2
  a314cc:	00000317          	auipc	t1,0x0
  a314d0:	f3430313          	addi	t1,t1,-204 # a31400 <excp_vect_table>
  a314d4:	00000397          	auipc	t2,0x0
  a314d8:	f7438393          	addi	t2,t2,-140 # a31448 <excp_vect_table_end>
  a314dc:	34002573          	csrr	a0,mscratch
  a314e0:	929a                	add	t0,t0,t1
  a314e2:	0472ff63          	bgeu	t0,t2,a31540 <trap_entry+0xf0>
  a314e6:	0002a283          	lw	t0,0(t0) # 1000000 <_gp_+0x5cb778>
  a314ea:	977fb0ef          	jal	ra,a2ce60 <do_hard_fault_handler>
  a314ee:	34002173          	csrr	sp,mscratch
  a314f2:	6289                	lui	t0,0x2
  a314f4:	80028293          	addi	t0,t0,-2048 # 1800 <ccause+0x83e>
  a314f8:	3002a073          	csrs	mstatus,t0
  a314fc:	42d2                	lw	t0,20(sp)
  a314fe:	34129073          	csrw	mepc,t0
  a31502:	5d82                	lw	s11,32(sp)
  a31504:	5d12                	lw	s10,36(sp)
  a31506:	5ca2                	lw	s9,40(sp)
  a31508:	5c32                	lw	s8,44(sp)
  a3150a:	5bc2                	lw	s7,48(sp)
  a3150c:	5b52                	lw	s6,52(sp)
  a3150e:	5ae2                	lw	s5,56(sp)
  a31510:	5a72                	lw	s4,60(sp)
  a31512:	4986                	lw	s3,64(sp)
  a31514:	4916                	lw	s2,68(sp)
  a31516:	44a6                	lw	s1,72(sp)
  a31518:	4436                	lw	s0,76(sp)
  a3151a:	4fc6                	lw	t6,80(sp)
  a3151c:	4f56                	lw	t5,84(sp)
  a3151e:	4ee6                	lw	t4,88(sp)
  a31520:	4e76                	lw	t3,92(sp)
  a31522:	5886                	lw	a7,96(sp)
  a31524:	5816                	lw	a6,100(sp)
  a31526:	57a6                	lw	a5,104(sp)
  a31528:	5736                	lw	a4,108(sp)
  a3152a:	56c6                	lw	a3,112(sp)
  a3152c:	5656                	lw	a2,116(sp)
  a3152e:	55e6                	lw	a1,120(sp)
  a31530:	5576                	lw	a0,124(sp)
  a31532:	438a                	lw	t2,128(sp)
  a31534:	431a                	lw	t1,132(sp)
  a31536:	42aa                	lw	t0,136(sp)
  a31538:	40ba                	lw	ra,140(sp)
  a3153a:	6149                	addi	sp,sp,144
  a3153c:	30200073          	mret
  a31540:	bc5fb06f          	j	a2d104 <do_trap_unknown>
	...

00a3154c <trap_vector>:
  a3154c:	f05ff06f          	j	a31450 <trap_entry>
  a31550:	d2bfb06f          	j	a2d27a <default_handler>
  a31554:	d27fb06f          	j	a2d27a <default_handler>
  a31558:	d23fb06f          	j	a2d27a <default_handler>
  a3155c:	d1ffb06f          	j	a2d27a <default_handler>
  a31560:	d1bfb06f          	j	a2d27a <default_handler>
  a31564:	d17fb06f          	j	a2d27a <default_handler>
  a31568:	d13fb06f          	j	a2d27a <default_handler>
  a3156c:	d0ffb06f          	j	a2d27a <default_handler>
  a31570:	d0bfb06f          	j	a2d27a <default_handler>
  a31574:	d07fb06f          	j	a2d27a <default_handler>
  a31578:	d03fb06f          	j	a2d27a <default_handler>
  a3157c:	1700006f          	j	a316ec <nmi_vector>
  a31580:	cfbfb06f          	j	a2d27a <default_handler>
  a31584:	cf7fb06f          	j	a2d27a <default_handler>
  a31588:	cf3fb06f          	j	a2d27a <default_handler>
  a3158c:	ceffb06f          	j	a2d27a <default_handler>
  a31590:	cebfb06f          	j	a2d27a <default_handler>
  a31594:	ce7fb06f          	j	a2d27a <default_handler>
  a31598:	ce3fb06f          	j	a2d27a <default_handler>
  a3159c:	cdffb06f          	j	a2d27a <default_handler>
  a315a0:	cdbfb06f          	j	a2d27a <default_handler>
  a315a4:	cd7fb06f          	j	a2d27a <default_handler>
  a315a8:	cd3fb06f          	j	a2d27a <default_handler>
  a315ac:	ccffb06f          	j	a2d27a <default_handler>
  a315b0:	ccbfb06f          	j	a2d27a <default_handler>
  a315b4:	2000006f          	j	a317b4 <default_interrupt0_handler>
  a315b8:	2a80006f          	j	a31860 <default_interrupt1_handler>
  a315bc:	3500006f          	j	a3190c <default_interrupt2_handler>
  a315c0:	3f80006f          	j	a319b8 <default_interrupt3_handler>
  a315c4:	4a00006f          	j	a31a64 <default_interrupt4_handler>
  a315c8:	5480006f          	j	a31b10 <default_interrupt5_handler>
  a315cc:	5f00006f          	j	a31bbc <default_local_interrupt_handler>
  a315d0:	5ec0006f          	j	a31bbc <default_local_interrupt_handler>
  a315d4:	5e80006f          	j	a31bbc <default_local_interrupt_handler>
  a315d8:	5e40006f          	j	a31bbc <default_local_interrupt_handler>
  a315dc:	5e00006f          	j	a31bbc <default_local_interrupt_handler>
  a315e0:	5dc0006f          	j	a31bbc <default_local_interrupt_handler>
  a315e4:	5d80006f          	j	a31bbc <default_local_interrupt_handler>
  a315e8:	5d40006f          	j	a31bbc <default_local_interrupt_handler>
  a315ec:	5d00006f          	j	a31bbc <default_local_interrupt_handler>
  a315f0:	5cc0006f          	j	a31bbc <default_local_interrupt_handler>
  a315f4:	5c80006f          	j	a31bbc <default_local_interrupt_handler>
  a315f8:	5c40006f          	j	a31bbc <default_local_interrupt_handler>
  a315fc:	5c00006f          	j	a31bbc <default_local_interrupt_handler>
  a31600:	5bc0006f          	j	a31bbc <default_local_interrupt_handler>
  a31604:	5b80006f          	j	a31bbc <default_local_interrupt_handler>
  a31608:	5b40006f          	j	a31bbc <default_local_interrupt_handler>
  a3160c:	5b00006f          	j	a31bbc <default_local_interrupt_handler>
  a31610:	5ac0006f          	j	a31bbc <default_local_interrupt_handler>
  a31614:	5a80006f          	j	a31bbc <default_local_interrupt_handler>
  a31618:	5a40006f          	j	a31bbc <default_local_interrupt_handler>
  a3161c:	5a00006f          	j	a31bbc <default_local_interrupt_handler>
  a31620:	59c0006f          	j	a31bbc <default_local_interrupt_handler>
  a31624:	5980006f          	j	a31bbc <default_local_interrupt_handler>
  a31628:	5940006f          	j	a31bbc <default_local_interrupt_handler>
  a3162c:	5900006f          	j	a31bbc <default_local_interrupt_handler>
  a31630:	58c0006f          	j	a31bbc <default_local_interrupt_handler>
  a31634:	5880006f          	j	a31bbc <default_local_interrupt_handler>
  a31638:	5840006f          	j	a31bbc <default_local_interrupt_handler>
  a3163c:	5800006f          	j	a31bbc <default_local_interrupt_handler>
  a31640:	57c0006f          	j	a31bbc <default_local_interrupt_handler>
  a31644:	5780006f          	j	a31bbc <default_local_interrupt_handler>
  a31648:	5740006f          	j	a31bbc <default_local_interrupt_handler>
  a3164c:	5700006f          	j	a31bbc <default_local_interrupt_handler>
  a31650:	56c0006f          	j	a31bbc <default_local_interrupt_handler>
  a31654:	5680006f          	j	a31bbc <default_local_interrupt_handler>
  a31658:	5640006f          	j	a31bbc <default_local_interrupt_handler>
  a3165c:	5600006f          	j	a31bbc <default_local_interrupt_handler>
  a31660:	55c0006f          	j	a31bbc <default_local_interrupt_handler>
  a31664:	5580006f          	j	a31bbc <default_local_interrupt_handler>
  a31668:	5540006f          	j	a31bbc <default_local_interrupt_handler>
  a3166c:	5500006f          	j	a31bbc <default_local_interrupt_handler>
  a31670:	54c0006f          	j	a31bbc <default_local_interrupt_handler>
  a31674:	5480006f          	j	a31bbc <default_local_interrupt_handler>
  a31678:	5440006f          	j	a31bbc <default_local_interrupt_handler>
  a3167c:	5400006f          	j	a31bbc <default_local_interrupt_handler>
  a31680:	53c0006f          	j	a31bbc <default_local_interrupt_handler>
  a31684:	5380006f          	j	a31bbc <default_local_interrupt_handler>
  a31688:	5340006f          	j	a31bbc <default_local_interrupt_handler>
  a3168c:	5300006f          	j	a31bbc <default_local_interrupt_handler>
  a31690:	52c0006f          	j	a31bbc <default_local_interrupt_handler>
  a31694:	5280006f          	j	a31bbc <default_local_interrupt_handler>
  a31698:	5240006f          	j	a31bbc <default_local_interrupt_handler>
  a3169c:	5200006f          	j	a31bbc <default_local_interrupt_handler>
  a316a0:	51c0006f          	j	a31bbc <default_local_interrupt_handler>
  a316a4:	5180006f          	j	a31bbc <default_local_interrupt_handler>
  a316a8:	5140006f          	j	a31bbc <default_local_interrupt_handler>
  a316ac:	5100006f          	j	a31bbc <default_local_interrupt_handler>
  a316b0:	50c0006f          	j	a31bbc <default_local_interrupt_handler>
  a316b4:	5080006f          	j	a31bbc <default_local_interrupt_handler>
  a316b8:	5040006f          	j	a31bbc <default_local_interrupt_handler>
  a316bc:	5000006f          	j	a31bbc <default_local_interrupt_handler>
  a316c0:	4fc0006f          	j	a31bbc <default_local_interrupt_handler>
  a316c4:	4f80006f          	j	a31bbc <default_local_interrupt_handler>
  a316c8:	4f40006f          	j	a31bbc <default_local_interrupt_handler>
  a316cc:	4f00006f          	j	a31bbc <default_local_interrupt_handler>
  a316d0:	4ec0006f          	j	a31bbc <default_local_interrupt_handler>
  a316d4:	4e80006f          	j	a31bbc <default_local_interrupt_handler>
  a316d8:	4e40006f          	j	a31bbc <default_local_interrupt_handler>
  a316dc:	4e00006f          	j	a31bbc <default_local_interrupt_handler>
  a316e0:	4dc0006f          	j	a31bbc <default_local_interrupt_handler>
  a316e4:	4d80006f          	j	a31bbc <default_local_interrupt_handler>
  a316e8:	0000                	unimp
	...

00a316ec <nmi_vector>:
  a316ec:	30047073          	csrci	mstatus,8
  a316f0:	7175                	addi	sp,sp,-144
  a316f2:	d06e                	sw	s11,32(sp)
  a316f4:	d26a                	sw	s10,36(sp)
  a316f6:	d466                	sw	s9,40(sp)
  a316f8:	d662                	sw	s8,44(sp)
  a316fa:	d85e                	sw	s7,48(sp)
  a316fc:	da5a                	sw	s6,52(sp)
  a316fe:	dc56                	sw	s5,56(sp)
  a31700:	de52                	sw	s4,60(sp)
  a31702:	c0ce                	sw	s3,64(sp)
  a31704:	c2ca                	sw	s2,68(sp)
  a31706:	c4a6                	sw	s1,72(sp)
  a31708:	c6a2                	sw	s0,76(sp)
  a3170a:	c8fe                	sw	t6,80(sp)
  a3170c:	cafa                	sw	t5,84(sp)
  a3170e:	ccf6                	sw	t4,88(sp)
  a31710:	cef2                	sw	t3,92(sp)
  a31712:	d0c6                	sw	a7,96(sp)
  a31714:	d2c2                	sw	a6,100(sp)
  a31716:	d4be                	sw	a5,104(sp)
  a31718:	d6ba                	sw	a4,108(sp)
  a3171a:	d8b6                	sw	a3,112(sp)
  a3171c:	dab2                	sw	a2,116(sp)
  a3171e:	dcae                	sw	a1,120(sp)
  a31720:	deaa                	sw	a0,124(sp)
  a31722:	c11e                	sw	t2,128(sp)
  a31724:	c31a                	sw	t1,132(sp)
  a31726:	c516                	sw	t0,136(sp)
  a31728:	c706                	sw	ra,140(sp)
  a3172a:	fc202a73          	csrr	s4,0xfc2
  a3172e:	c052                	sw	s4,0(sp)
  a31730:	342029f3          	csrr	s3,mcause
  a31734:	c24e                	sw	s3,4(sp)
  a31736:	34302973          	csrr	s2,mtval
  a3173a:	c44a                	sw	s2,8(sp)
  a3173c:	c60e                	sw	gp,12(sp)
  a3173e:	300024f3          	csrr	s1,mstatus
  a31742:	c826                	sw	s1,16(sp)
  a31744:	34102473          	csrr	s0,mepc
  a31748:	ca22                	sw	s0,20(sp)
  a3174a:	cc12                	sw	tp,24(sp)
  a3174c:	ce0a                	sw	sp,28(sp)
  a3174e:	34011073          	csrw	mscratch,sp
  a31752:	fffd4117          	auipc	sp,0xfffd4
  a31756:	9ae10113          	addi	sp,sp,-1618 # a05100 <__irq_stack_top__>
  a3175a:	34002573          	csrr	a0,mscratch
  a3175e:	f02fb0ef          	jal	ra,a2ce60 <do_hard_fault_handler>
  a31762:	34002173          	csrr	sp,mscratch
  a31766:	6289                	lui	t0,0x2
  a31768:	88028293          	addi	t0,t0,-1920 # 1880 <ccause+0x8be>
  a3176c:	3002a073          	csrs	mstatus,t0
  a31770:	42d2                	lw	t0,20(sp)
  a31772:	34129073          	csrw	mepc,t0
  a31776:	5d82                	lw	s11,32(sp)
  a31778:	5d12                	lw	s10,36(sp)
  a3177a:	5ca2                	lw	s9,40(sp)
  a3177c:	5c32                	lw	s8,44(sp)
  a3177e:	5bc2                	lw	s7,48(sp)
  a31780:	5b52                	lw	s6,52(sp)
  a31782:	5ae2                	lw	s5,56(sp)
  a31784:	5a72                	lw	s4,60(sp)
  a31786:	4986                	lw	s3,64(sp)
  a31788:	4916                	lw	s2,68(sp)
  a3178a:	44a6                	lw	s1,72(sp)
  a3178c:	4436                	lw	s0,76(sp)
  a3178e:	4fc6                	lw	t6,80(sp)
  a31790:	4f56                	lw	t5,84(sp)
  a31792:	4ee6                	lw	t4,88(sp)
  a31794:	4e76                	lw	t3,92(sp)
  a31796:	5886                	lw	a7,96(sp)
  a31798:	5816                	lw	a6,100(sp)
  a3179a:	57a6                	lw	a5,104(sp)
  a3179c:	5736                	lw	a4,108(sp)
  a3179e:	56c6                	lw	a3,112(sp)
  a317a0:	5656                	lw	a2,116(sp)
  a317a2:	55e6                	lw	a1,120(sp)
  a317a4:	5576                	lw	a0,124(sp)
  a317a6:	438a                	lw	t2,128(sp)
  a317a8:	431a                	lw	t1,132(sp)
  a317aa:	42aa                	lw	t0,136(sp)
  a317ac:	40ba                	lw	ra,140(sp)
  a317ae:	6149                	addi	sp,sp,144
  a317b0:	30200073          	mret

00a317b4 <default_interrupt0_handler>:
  a317b4:	30047073          	csrci	mstatus,8
  a317b8:	7119                	addi	sp,sp,-128
  a317ba:	c006                	sw	ra,0(sp)
  a317bc:	c20a                	sw	sp,4(sp)
  a317be:	c40e                	sw	gp,8(sp)
  a317c0:	c612                	sw	tp,12(sp)
  a317c2:	c816                	sw	t0,16(sp)
  a317c4:	ca1a                	sw	t1,20(sp)
  a317c6:	cc1e                	sw	t2,24(sp)
  a317c8:	ce22                	sw	s0,28(sp)
  a317ca:	d026                	sw	s1,32(sp)
  a317cc:	d22a                	sw	a0,36(sp)
  a317ce:	d42e                	sw	a1,40(sp)
  a317d0:	d632                	sw	a2,44(sp)
  a317d2:	d836                	sw	a3,48(sp)
  a317d4:	da3a                	sw	a4,52(sp)
  a317d6:	dc3e                	sw	a5,56(sp)
  a317d8:	de42                	sw	a6,60(sp)
  a317da:	c0c6                	sw	a7,64(sp)
  a317dc:	c2ca                	sw	s2,68(sp)
  a317de:	c4ce                	sw	s3,72(sp)
  a317e0:	c6d2                	sw	s4,76(sp)
  a317e2:	c8d6                	sw	s5,80(sp)
  a317e4:	cada                	sw	s6,84(sp)
  a317e6:	ccde                	sw	s7,88(sp)
  a317e8:	cee2                	sw	s8,92(sp)
  a317ea:	d0e6                	sw	s9,96(sp)
  a317ec:	d2ea                	sw	s10,100(sp)
  a317ee:	d4ee                	sw	s11,104(sp)
  a317f0:	d6f2                	sw	t3,108(sp)
  a317f2:	d8f6                	sw	t4,112(sp)
  a317f4:	dafa                	sw	t5,116(sp)
  a317f6:	dcfe                	sw	t6,120(sp)
  a317f8:	341022f3          	csrr	t0,mepc
  a317fc:	de96                	sw	t0,124(sp)
  a317fe:	34011073          	csrw	mscratch,sp
  a31802:	fffd4117          	auipc	sp,0xfffd4
  a31806:	8fe10113          	addi	sp,sp,-1794 # a05100 <__irq_stack_top__>
  a3180a:	c70fb0ef          	jal	ra,a2cc7a <interrupt0_handler>
  a3180e:	34002173          	csrr	sp,mscratch
  a31812:	6289                	lui	t0,0x2
  a31814:	88028293          	addi	t0,t0,-1920 # 1880 <ccause+0x8be>
  a31818:	3002a073          	csrs	mstatus,t0
  a3181c:	52f6                	lw	t0,124(sp)
  a3181e:	34129073          	csrw	mepc,t0
  a31822:	4082                	lw	ra,0(sp)
  a31824:	42c2                	lw	t0,16(sp)
  a31826:	4352                	lw	t1,20(sp)
  a31828:	43e2                	lw	t2,24(sp)
  a3182a:	4472                	lw	s0,28(sp)
  a3182c:	5482                	lw	s1,32(sp)
  a3182e:	5512                	lw	a0,36(sp)
  a31830:	55a2                	lw	a1,40(sp)
  a31832:	5632                	lw	a2,44(sp)
  a31834:	56c2                	lw	a3,48(sp)
  a31836:	5752                	lw	a4,52(sp)
  a31838:	57e2                	lw	a5,56(sp)
  a3183a:	5872                	lw	a6,60(sp)
  a3183c:	4886                	lw	a7,64(sp)
  a3183e:	4916                	lw	s2,68(sp)
  a31840:	49a6                	lw	s3,72(sp)
  a31842:	4a36                	lw	s4,76(sp)
  a31844:	4ac6                	lw	s5,80(sp)
  a31846:	4b56                	lw	s6,84(sp)
  a31848:	4be6                	lw	s7,88(sp)
  a3184a:	4c76                	lw	s8,92(sp)
  a3184c:	5c86                	lw	s9,96(sp)
  a3184e:	5d16                	lw	s10,100(sp)
  a31850:	5da6                	lw	s11,104(sp)
  a31852:	5e36                	lw	t3,108(sp)
  a31854:	5ec6                	lw	t4,112(sp)
  a31856:	5f56                	lw	t5,116(sp)
  a31858:	5fe6                	lw	t6,120(sp)
  a3185a:	6109                	addi	sp,sp,128
  a3185c:	30200073          	mret

00a31860 <default_interrupt1_handler>:
  a31860:	30047073          	csrci	mstatus,8
  a31864:	7119                	addi	sp,sp,-128
  a31866:	c006                	sw	ra,0(sp)
  a31868:	c20a                	sw	sp,4(sp)
  a3186a:	c40e                	sw	gp,8(sp)
  a3186c:	c612                	sw	tp,12(sp)
  a3186e:	c816                	sw	t0,16(sp)
  a31870:	ca1a                	sw	t1,20(sp)
  a31872:	cc1e                	sw	t2,24(sp)
  a31874:	ce22                	sw	s0,28(sp)
  a31876:	d026                	sw	s1,32(sp)
  a31878:	d22a                	sw	a0,36(sp)
  a3187a:	d42e                	sw	a1,40(sp)
  a3187c:	d632                	sw	a2,44(sp)
  a3187e:	d836                	sw	a3,48(sp)
  a31880:	da3a                	sw	a4,52(sp)
  a31882:	dc3e                	sw	a5,56(sp)
  a31884:	de42                	sw	a6,60(sp)
  a31886:	c0c6                	sw	a7,64(sp)
  a31888:	c2ca                	sw	s2,68(sp)
  a3188a:	c4ce                	sw	s3,72(sp)
  a3188c:	c6d2                	sw	s4,76(sp)
  a3188e:	c8d6                	sw	s5,80(sp)
  a31890:	cada                	sw	s6,84(sp)
  a31892:	ccde                	sw	s7,88(sp)
  a31894:	cee2                	sw	s8,92(sp)
  a31896:	d0e6                	sw	s9,96(sp)
  a31898:	d2ea                	sw	s10,100(sp)
  a3189a:	d4ee                	sw	s11,104(sp)
  a3189c:	d6f2                	sw	t3,108(sp)
  a3189e:	d8f6                	sw	t4,112(sp)
  a318a0:	dafa                	sw	t5,116(sp)
  a318a2:	dcfe                	sw	t6,120(sp)
  a318a4:	341022f3          	csrr	t0,mepc
  a318a8:	de96                	sw	t0,124(sp)
  a318aa:	34011073          	csrw	mscratch,sp
  a318ae:	fffd4117          	auipc	sp,0xfffd4
  a318b2:	85210113          	addi	sp,sp,-1966 # a05100 <__irq_stack_top__>
  a318b6:	c04fb0ef          	jal	ra,a2ccba <interrupt1_handler>
  a318ba:	34002173          	csrr	sp,mscratch
  a318be:	6289                	lui	t0,0x2
  a318c0:	88028293          	addi	t0,t0,-1920 # 1880 <ccause+0x8be>
  a318c4:	3002a073          	csrs	mstatus,t0
  a318c8:	52f6                	lw	t0,124(sp)
  a318ca:	34129073          	csrw	mepc,t0
  a318ce:	4082                	lw	ra,0(sp)
  a318d0:	42c2                	lw	t0,16(sp)
  a318d2:	4352                	lw	t1,20(sp)
  a318d4:	43e2                	lw	t2,24(sp)
  a318d6:	4472                	lw	s0,28(sp)
  a318d8:	5482                	lw	s1,32(sp)
  a318da:	5512                	lw	a0,36(sp)
  a318dc:	55a2                	lw	a1,40(sp)
  a318de:	5632                	lw	a2,44(sp)
  a318e0:	56c2                	lw	a3,48(sp)
  a318e2:	5752                	lw	a4,52(sp)
  a318e4:	57e2                	lw	a5,56(sp)
  a318e6:	5872                	lw	a6,60(sp)
  a318e8:	4886                	lw	a7,64(sp)
  a318ea:	4916                	lw	s2,68(sp)
  a318ec:	49a6                	lw	s3,72(sp)
  a318ee:	4a36                	lw	s4,76(sp)
  a318f0:	4ac6                	lw	s5,80(sp)
  a318f2:	4b56                	lw	s6,84(sp)
  a318f4:	4be6                	lw	s7,88(sp)
  a318f6:	4c76                	lw	s8,92(sp)
  a318f8:	5c86                	lw	s9,96(sp)
  a318fa:	5d16                	lw	s10,100(sp)
  a318fc:	5da6                	lw	s11,104(sp)
  a318fe:	5e36                	lw	t3,108(sp)
  a31900:	5ec6                	lw	t4,112(sp)
  a31902:	5f56                	lw	t5,116(sp)
  a31904:	5fe6                	lw	t6,120(sp)
  a31906:	6109                	addi	sp,sp,128
  a31908:	30200073          	mret

00a3190c <default_interrupt2_handler>:
  a3190c:	30047073          	csrci	mstatus,8
  a31910:	7119                	addi	sp,sp,-128
  a31912:	c006                	sw	ra,0(sp)
  a31914:	c20a                	sw	sp,4(sp)
  a31916:	c40e                	sw	gp,8(sp)
  a31918:	c612                	sw	tp,12(sp)
  a3191a:	c816                	sw	t0,16(sp)
  a3191c:	ca1a                	sw	t1,20(sp)
  a3191e:	cc1e                	sw	t2,24(sp)
  a31920:	ce22                	sw	s0,28(sp)
  a31922:	d026                	sw	s1,32(sp)
  a31924:	d22a                	sw	a0,36(sp)
  a31926:	d42e                	sw	a1,40(sp)
  a31928:	d632                	sw	a2,44(sp)
  a3192a:	d836                	sw	a3,48(sp)
  a3192c:	da3a                	sw	a4,52(sp)
  a3192e:	dc3e                	sw	a5,56(sp)
  a31930:	de42                	sw	a6,60(sp)
  a31932:	c0c6                	sw	a7,64(sp)
  a31934:	c2ca                	sw	s2,68(sp)
  a31936:	c4ce                	sw	s3,72(sp)
  a31938:	c6d2                	sw	s4,76(sp)
  a3193a:	c8d6                	sw	s5,80(sp)
  a3193c:	cada                	sw	s6,84(sp)
  a3193e:	ccde                	sw	s7,88(sp)
  a31940:	cee2                	sw	s8,92(sp)
  a31942:	d0e6                	sw	s9,96(sp)
  a31944:	d2ea                	sw	s10,100(sp)
  a31946:	d4ee                	sw	s11,104(sp)
  a31948:	d6f2                	sw	t3,108(sp)
  a3194a:	d8f6                	sw	t4,112(sp)
  a3194c:	dafa                	sw	t5,116(sp)
  a3194e:	dcfe                	sw	t6,120(sp)
  a31950:	341022f3          	csrr	t0,mepc
  a31954:	de96                	sw	t0,124(sp)
  a31956:	34011073          	csrw	mscratch,sp
  a3195a:	fffd3117          	auipc	sp,0xfffd3
  a3195e:	7a610113          	addi	sp,sp,1958 # a05100 <__irq_stack_top__>
  a31962:	b98fb0ef          	jal	ra,a2ccfa <interrupt2_handler>
  a31966:	34002173          	csrr	sp,mscratch
  a3196a:	6289                	lui	t0,0x2
  a3196c:	88028293          	addi	t0,t0,-1920 # 1880 <ccause+0x8be>
  a31970:	3002a073          	csrs	mstatus,t0
  a31974:	52f6                	lw	t0,124(sp)
  a31976:	34129073          	csrw	mepc,t0
  a3197a:	4082                	lw	ra,0(sp)
  a3197c:	42c2                	lw	t0,16(sp)
  a3197e:	4352                	lw	t1,20(sp)
  a31980:	43e2                	lw	t2,24(sp)
  a31982:	4472                	lw	s0,28(sp)
  a31984:	5482                	lw	s1,32(sp)
  a31986:	5512                	lw	a0,36(sp)
  a31988:	55a2                	lw	a1,40(sp)
  a3198a:	5632                	lw	a2,44(sp)
  a3198c:	56c2                	lw	a3,48(sp)
  a3198e:	5752                	lw	a4,52(sp)
  a31990:	57e2                	lw	a5,56(sp)
  a31992:	5872                	lw	a6,60(sp)
  a31994:	4886                	lw	a7,64(sp)
  a31996:	4916                	lw	s2,68(sp)
  a31998:	49a6                	lw	s3,72(sp)
  a3199a:	4a36                	lw	s4,76(sp)
  a3199c:	4ac6                	lw	s5,80(sp)
  a3199e:	4b56                	lw	s6,84(sp)
  a319a0:	4be6                	lw	s7,88(sp)
  a319a2:	4c76                	lw	s8,92(sp)
  a319a4:	5c86                	lw	s9,96(sp)
  a319a6:	5d16                	lw	s10,100(sp)
  a319a8:	5da6                	lw	s11,104(sp)
  a319aa:	5e36                	lw	t3,108(sp)
  a319ac:	5ec6                	lw	t4,112(sp)
  a319ae:	5f56                	lw	t5,116(sp)
  a319b0:	5fe6                	lw	t6,120(sp)
  a319b2:	6109                	addi	sp,sp,128
  a319b4:	30200073          	mret

00a319b8 <default_interrupt3_handler>:
  a319b8:	30047073          	csrci	mstatus,8
  a319bc:	7119                	addi	sp,sp,-128
  a319be:	c006                	sw	ra,0(sp)
  a319c0:	c20a                	sw	sp,4(sp)
  a319c2:	c40e                	sw	gp,8(sp)
  a319c4:	c612                	sw	tp,12(sp)
  a319c6:	c816                	sw	t0,16(sp)
  a319c8:	ca1a                	sw	t1,20(sp)
  a319ca:	cc1e                	sw	t2,24(sp)
  a319cc:	ce22                	sw	s0,28(sp)
  a319ce:	d026                	sw	s1,32(sp)
  a319d0:	d22a                	sw	a0,36(sp)
  a319d2:	d42e                	sw	a1,40(sp)
  a319d4:	d632                	sw	a2,44(sp)
  a319d6:	d836                	sw	a3,48(sp)
  a319d8:	da3a                	sw	a4,52(sp)
  a319da:	dc3e                	sw	a5,56(sp)
  a319dc:	de42                	sw	a6,60(sp)
  a319de:	c0c6                	sw	a7,64(sp)
  a319e0:	c2ca                	sw	s2,68(sp)
  a319e2:	c4ce                	sw	s3,72(sp)
  a319e4:	c6d2                	sw	s4,76(sp)
  a319e6:	c8d6                	sw	s5,80(sp)
  a319e8:	cada                	sw	s6,84(sp)
  a319ea:	ccde                	sw	s7,88(sp)
  a319ec:	cee2                	sw	s8,92(sp)
  a319ee:	d0e6                	sw	s9,96(sp)
  a319f0:	d2ea                	sw	s10,100(sp)
  a319f2:	d4ee                	sw	s11,104(sp)
  a319f4:	d6f2                	sw	t3,108(sp)
  a319f6:	d8f6                	sw	t4,112(sp)
  a319f8:	dafa                	sw	t5,116(sp)
  a319fa:	dcfe                	sw	t6,120(sp)
  a319fc:	341022f3          	csrr	t0,mepc
  a31a00:	de96                	sw	t0,124(sp)
  a31a02:	34011073          	csrw	mscratch,sp
  a31a06:	fffd3117          	auipc	sp,0xfffd3
  a31a0a:	6fa10113          	addi	sp,sp,1786 # a05100 <__irq_stack_top__>
  a31a0e:	b2cfb0ef          	jal	ra,a2cd3a <interrupt3_handler>
  a31a12:	34002173          	csrr	sp,mscratch
  a31a16:	6289                	lui	t0,0x2
  a31a18:	88028293          	addi	t0,t0,-1920 # 1880 <ccause+0x8be>
  a31a1c:	3002a073          	csrs	mstatus,t0
  a31a20:	52f6                	lw	t0,124(sp)
  a31a22:	34129073          	csrw	mepc,t0
  a31a26:	4082                	lw	ra,0(sp)
  a31a28:	42c2                	lw	t0,16(sp)
  a31a2a:	4352                	lw	t1,20(sp)
  a31a2c:	43e2                	lw	t2,24(sp)
  a31a2e:	4472                	lw	s0,28(sp)
  a31a30:	5482                	lw	s1,32(sp)
  a31a32:	5512                	lw	a0,36(sp)
  a31a34:	55a2                	lw	a1,40(sp)
  a31a36:	5632                	lw	a2,44(sp)
  a31a38:	56c2                	lw	a3,48(sp)
  a31a3a:	5752                	lw	a4,52(sp)
  a31a3c:	57e2                	lw	a5,56(sp)
  a31a3e:	5872                	lw	a6,60(sp)
  a31a40:	4886                	lw	a7,64(sp)
  a31a42:	4916                	lw	s2,68(sp)
  a31a44:	49a6                	lw	s3,72(sp)
  a31a46:	4a36                	lw	s4,76(sp)
  a31a48:	4ac6                	lw	s5,80(sp)
  a31a4a:	4b56                	lw	s6,84(sp)
  a31a4c:	4be6                	lw	s7,88(sp)
  a31a4e:	4c76                	lw	s8,92(sp)
  a31a50:	5c86                	lw	s9,96(sp)
  a31a52:	5d16                	lw	s10,100(sp)
  a31a54:	5da6                	lw	s11,104(sp)
  a31a56:	5e36                	lw	t3,108(sp)
  a31a58:	5ec6                	lw	t4,112(sp)
  a31a5a:	5f56                	lw	t5,116(sp)
  a31a5c:	5fe6                	lw	t6,120(sp)
  a31a5e:	6109                	addi	sp,sp,128
  a31a60:	30200073          	mret

00a31a64 <default_interrupt4_handler>:
  a31a64:	30047073          	csrci	mstatus,8
  a31a68:	7119                	addi	sp,sp,-128
  a31a6a:	c006                	sw	ra,0(sp)
  a31a6c:	c20a                	sw	sp,4(sp)
  a31a6e:	c40e                	sw	gp,8(sp)
  a31a70:	c612                	sw	tp,12(sp)
  a31a72:	c816                	sw	t0,16(sp)
  a31a74:	ca1a                	sw	t1,20(sp)
  a31a76:	cc1e                	sw	t2,24(sp)
  a31a78:	ce22                	sw	s0,28(sp)
  a31a7a:	d026                	sw	s1,32(sp)
  a31a7c:	d22a                	sw	a0,36(sp)
  a31a7e:	d42e                	sw	a1,40(sp)
  a31a80:	d632                	sw	a2,44(sp)
  a31a82:	d836                	sw	a3,48(sp)
  a31a84:	da3a                	sw	a4,52(sp)
  a31a86:	dc3e                	sw	a5,56(sp)
  a31a88:	de42                	sw	a6,60(sp)
  a31a8a:	c0c6                	sw	a7,64(sp)
  a31a8c:	c2ca                	sw	s2,68(sp)
  a31a8e:	c4ce                	sw	s3,72(sp)
  a31a90:	c6d2                	sw	s4,76(sp)
  a31a92:	c8d6                	sw	s5,80(sp)
  a31a94:	cada                	sw	s6,84(sp)
  a31a96:	ccde                	sw	s7,88(sp)
  a31a98:	cee2                	sw	s8,92(sp)
  a31a9a:	d0e6                	sw	s9,96(sp)
  a31a9c:	d2ea                	sw	s10,100(sp)
  a31a9e:	d4ee                	sw	s11,104(sp)
  a31aa0:	d6f2                	sw	t3,108(sp)
  a31aa2:	d8f6                	sw	t4,112(sp)
  a31aa4:	dafa                	sw	t5,116(sp)
  a31aa6:	dcfe                	sw	t6,120(sp)
  a31aa8:	341022f3          	csrr	t0,mepc
  a31aac:	de96                	sw	t0,124(sp)
  a31aae:	34011073          	csrw	mscratch,sp
  a31ab2:	fffd3117          	auipc	sp,0xfffd3
  a31ab6:	64e10113          	addi	sp,sp,1614 # a05100 <__irq_stack_top__>
  a31aba:	ac0fb0ef          	jal	ra,a2cd7a <interrupt4_handler>
  a31abe:	34002173          	csrr	sp,mscratch
  a31ac2:	6289                	lui	t0,0x2
  a31ac4:	88028293          	addi	t0,t0,-1920 # 1880 <ccause+0x8be>
  a31ac8:	3002a073          	csrs	mstatus,t0
  a31acc:	52f6                	lw	t0,124(sp)
  a31ace:	34129073          	csrw	mepc,t0
  a31ad2:	4082                	lw	ra,0(sp)
  a31ad4:	42c2                	lw	t0,16(sp)
  a31ad6:	4352                	lw	t1,20(sp)
  a31ad8:	43e2                	lw	t2,24(sp)
  a31ada:	4472                	lw	s0,28(sp)
  a31adc:	5482                	lw	s1,32(sp)
  a31ade:	5512                	lw	a0,36(sp)
  a31ae0:	55a2                	lw	a1,40(sp)
  a31ae2:	5632                	lw	a2,44(sp)
  a31ae4:	56c2                	lw	a3,48(sp)
  a31ae6:	5752                	lw	a4,52(sp)
  a31ae8:	57e2                	lw	a5,56(sp)
  a31aea:	5872                	lw	a6,60(sp)
  a31aec:	4886                	lw	a7,64(sp)
  a31aee:	4916                	lw	s2,68(sp)
  a31af0:	49a6                	lw	s3,72(sp)
  a31af2:	4a36                	lw	s4,76(sp)
  a31af4:	4ac6                	lw	s5,80(sp)
  a31af6:	4b56                	lw	s6,84(sp)
  a31af8:	4be6                	lw	s7,88(sp)
  a31afa:	4c76                	lw	s8,92(sp)
  a31afc:	5c86                	lw	s9,96(sp)
  a31afe:	5d16                	lw	s10,100(sp)
  a31b00:	5da6                	lw	s11,104(sp)
  a31b02:	5e36                	lw	t3,108(sp)
  a31b04:	5ec6                	lw	t4,112(sp)
  a31b06:	5f56                	lw	t5,116(sp)
  a31b08:	5fe6                	lw	t6,120(sp)
  a31b0a:	6109                	addi	sp,sp,128
  a31b0c:	30200073          	mret

00a31b10 <default_interrupt5_handler>:
  a31b10:	30047073          	csrci	mstatus,8
  a31b14:	7119                	addi	sp,sp,-128
  a31b16:	c006                	sw	ra,0(sp)
  a31b18:	c20a                	sw	sp,4(sp)
  a31b1a:	c40e                	sw	gp,8(sp)
  a31b1c:	c612                	sw	tp,12(sp)
  a31b1e:	c816                	sw	t0,16(sp)
  a31b20:	ca1a                	sw	t1,20(sp)
  a31b22:	cc1e                	sw	t2,24(sp)
  a31b24:	ce22                	sw	s0,28(sp)
  a31b26:	d026                	sw	s1,32(sp)
  a31b28:	d22a                	sw	a0,36(sp)
  a31b2a:	d42e                	sw	a1,40(sp)
  a31b2c:	d632                	sw	a2,44(sp)
  a31b2e:	d836                	sw	a3,48(sp)
  a31b30:	da3a                	sw	a4,52(sp)
  a31b32:	dc3e                	sw	a5,56(sp)
  a31b34:	de42                	sw	a6,60(sp)
  a31b36:	c0c6                	sw	a7,64(sp)
  a31b38:	c2ca                	sw	s2,68(sp)
  a31b3a:	c4ce                	sw	s3,72(sp)
  a31b3c:	c6d2                	sw	s4,76(sp)
  a31b3e:	c8d6                	sw	s5,80(sp)
  a31b40:	cada                	sw	s6,84(sp)
  a31b42:	ccde                	sw	s7,88(sp)
  a31b44:	cee2                	sw	s8,92(sp)
  a31b46:	d0e6                	sw	s9,96(sp)
  a31b48:	d2ea                	sw	s10,100(sp)
  a31b4a:	d4ee                	sw	s11,104(sp)
  a31b4c:	d6f2                	sw	t3,108(sp)
  a31b4e:	d8f6                	sw	t4,112(sp)
  a31b50:	dafa                	sw	t5,116(sp)
  a31b52:	dcfe                	sw	t6,120(sp)
  a31b54:	341022f3          	csrr	t0,mepc
  a31b58:	de96                	sw	t0,124(sp)
  a31b5a:	34011073          	csrw	mscratch,sp
  a31b5e:	fffd3117          	auipc	sp,0xfffd3
  a31b62:	5a210113          	addi	sp,sp,1442 # a05100 <__irq_stack_top__>
  a31b66:	a54fb0ef          	jal	ra,a2cdba <interrupt5_handler>
  a31b6a:	34002173          	csrr	sp,mscratch
  a31b6e:	6289                	lui	t0,0x2
  a31b70:	88028293          	addi	t0,t0,-1920 # 1880 <ccause+0x8be>
  a31b74:	3002a073          	csrs	mstatus,t0
  a31b78:	52f6                	lw	t0,124(sp)
  a31b7a:	34129073          	csrw	mepc,t0
  a31b7e:	4082                	lw	ra,0(sp)
  a31b80:	42c2                	lw	t0,16(sp)
  a31b82:	4352                	lw	t1,20(sp)
  a31b84:	43e2                	lw	t2,24(sp)
  a31b86:	4472                	lw	s0,28(sp)
  a31b88:	5482                	lw	s1,32(sp)
  a31b8a:	5512                	lw	a0,36(sp)
  a31b8c:	55a2                	lw	a1,40(sp)
  a31b8e:	5632                	lw	a2,44(sp)
  a31b90:	56c2                	lw	a3,48(sp)
  a31b92:	5752                	lw	a4,52(sp)
  a31b94:	57e2                	lw	a5,56(sp)
  a31b96:	5872                	lw	a6,60(sp)
  a31b98:	4886                	lw	a7,64(sp)
  a31b9a:	4916                	lw	s2,68(sp)
  a31b9c:	49a6                	lw	s3,72(sp)
  a31b9e:	4a36                	lw	s4,76(sp)
  a31ba0:	4ac6                	lw	s5,80(sp)
  a31ba2:	4b56                	lw	s6,84(sp)
  a31ba4:	4be6                	lw	s7,88(sp)
  a31ba6:	4c76                	lw	s8,92(sp)
  a31ba8:	5c86                	lw	s9,96(sp)
  a31baa:	5d16                	lw	s10,100(sp)
  a31bac:	5da6                	lw	s11,104(sp)
  a31bae:	5e36                	lw	t3,108(sp)
  a31bb0:	5ec6                	lw	t4,112(sp)
  a31bb2:	5f56                	lw	t5,116(sp)
  a31bb4:	5fe6                	lw	t6,120(sp)
  a31bb6:	6109                	addi	sp,sp,128
  a31bb8:	30200073          	mret

00a31bbc <default_local_interrupt_handler>:
  a31bbc:	30047073          	csrci	mstatus,8
  a31bc0:	7119                	addi	sp,sp,-128
  a31bc2:	c006                	sw	ra,0(sp)
  a31bc4:	c20a                	sw	sp,4(sp)
  a31bc6:	c40e                	sw	gp,8(sp)
  a31bc8:	c612                	sw	tp,12(sp)
  a31bca:	c816                	sw	t0,16(sp)
  a31bcc:	ca1a                	sw	t1,20(sp)
  a31bce:	cc1e                	sw	t2,24(sp)
  a31bd0:	ce22                	sw	s0,28(sp)
  a31bd2:	d026                	sw	s1,32(sp)
  a31bd4:	d22a                	sw	a0,36(sp)
  a31bd6:	d42e                	sw	a1,40(sp)
  a31bd8:	d632                	sw	a2,44(sp)
  a31bda:	d836                	sw	a3,48(sp)
  a31bdc:	da3a                	sw	a4,52(sp)
  a31bde:	dc3e                	sw	a5,56(sp)
  a31be0:	de42                	sw	a6,60(sp)
  a31be2:	c0c6                	sw	a7,64(sp)
  a31be4:	c2ca                	sw	s2,68(sp)
  a31be6:	c4ce                	sw	s3,72(sp)
  a31be8:	c6d2                	sw	s4,76(sp)
  a31bea:	c8d6                	sw	s5,80(sp)
  a31bec:	cada                	sw	s6,84(sp)
  a31bee:	ccde                	sw	s7,88(sp)
  a31bf0:	cee2                	sw	s8,92(sp)
  a31bf2:	d0e6                	sw	s9,96(sp)
  a31bf4:	d2ea                	sw	s10,100(sp)
  a31bf6:	d4ee                	sw	s11,104(sp)
  a31bf8:	d6f2                	sw	t3,108(sp)
  a31bfa:	d8f6                	sw	t4,112(sp)
  a31bfc:	dafa                	sw	t5,116(sp)
  a31bfe:	dcfe                	sw	t6,120(sp)
  a31c00:	341022f3          	csrr	t0,mepc
  a31c04:	de96                	sw	t0,124(sp)
  a31c06:	34011073          	csrw	mscratch,sp
  a31c0a:	fffd3117          	auipc	sp,0xfffd3
  a31c0e:	4f610113          	addi	sp,sp,1270 # a05100 <__irq_stack_top__>
  a31c12:	9e8fb0ef          	jal	ra,a2cdfa <local_interrupt_handler>
  a31c16:	34002173          	csrr	sp,mscratch
  a31c1a:	6289                	lui	t0,0x2
  a31c1c:	88028293          	addi	t0,t0,-1920 # 1880 <ccause+0x8be>
  a31c20:	3002a073          	csrs	mstatus,t0
  a31c24:	52f6                	lw	t0,124(sp)
  a31c26:	34129073          	csrw	mepc,t0
  a31c2a:	4082                	lw	ra,0(sp)
  a31c2c:	42c2                	lw	t0,16(sp)
  a31c2e:	4352                	lw	t1,20(sp)
  a31c30:	43e2                	lw	t2,24(sp)
  a31c32:	4472                	lw	s0,28(sp)
  a31c34:	5482                	lw	s1,32(sp)
  a31c36:	5512                	lw	a0,36(sp)
  a31c38:	55a2                	lw	a1,40(sp)
  a31c3a:	5632                	lw	a2,44(sp)
  a31c3c:	56c2                	lw	a3,48(sp)
  a31c3e:	5752                	lw	a4,52(sp)
  a31c40:	57e2                	lw	a5,56(sp)
  a31c42:	5872                	lw	a6,60(sp)
  a31c44:	4886                	lw	a7,64(sp)
  a31c46:	4916                	lw	s2,68(sp)
  a31c48:	49a6                	lw	s3,72(sp)
  a31c4a:	4a36                	lw	s4,76(sp)
  a31c4c:	4ac6                	lw	s5,80(sp)
  a31c4e:	4b56                	lw	s6,84(sp)
  a31c50:	4be6                	lw	s7,88(sp)
  a31c52:	4c76                	lw	s8,92(sp)
  a31c54:	5c86                	lw	s9,96(sp)
  a31c56:	5d16                	lw	s10,100(sp)
  a31c58:	5da6                	lw	s11,104(sp)
  a31c5a:	5e36                	lw	t3,108(sp)
  a31c5c:	5ec6                	lw	t4,112(sp)
  a31c5e:	5f56                	lw	t5,116(sp)
  a31c60:	5fe6                	lw	t6,120(sp)
  a31c62:	6109                	addi	sp,sp,128
  a31c64:	30200073          	mret

00a31c68 <global_interrupt_lock>:
  a31c68:	30002573          	csrr	a0,mstatus
  a31c6c:	42a1                	li	t0,8
  a31c6e:	3002b073          	csrc	mstatus,t0
  a31c72:	8082                	ret

00a31c74 <global_interrupt_unlock>:
  a31c74:	30002573          	csrr	a0,mstatus
  a31c78:	42a1                	li	t0,8
  a31c7a:	3002a073          	csrs	mstatus,t0
  a31c7e:	8082                	ret

00a31c80 <global_interrupt_restore>:
  a31c80:	30051073          	csrw	mstatus,a0
  a31c84:	8082                	ret
  a31c86:	0000                	unimp
  a31c88:	ffff                	.2byte	0xffff
  a31c8a:	00ff                	.2byte	0xff
  a31c8c:	ffff                	.2byte	0xffff
  a31c8e:	00ff                	.2byte	0xff

00a31c90 <__clz_tab>:
  a31c90:	0100 0202 0303 0303 0404 0404 0404 0404     ................
  a31ca0:	0505 0505 0505 0505 0505 0505 0505 0505     ................
  a31cb0:	0606 0606 0606 0606 0606 0606 0606 0606     ................
  a31cc0:	0606 0606 0606 0606 0606 0606 0606 0606     ................
  a31cd0:	0707 0707 0707 0707 0707 0707 0707 0707     ................
  a31ce0:	0707 0707 0707 0707 0707 0707 0707 0707     ................
  a31cf0:	0707 0707 0707 0707 0707 0707 0707 0707     ................
  a31d00:	0707 0707 0707 0707 0707 0707 0707 0707     ................
  a31d10:	0808 0808 0808 0808 0808 0808 0808 0808     ................
  a31d20:	0808 0808 0808 0808 0808 0808 0808 0808     ................
  a31d30:	0808 0808 0808 0808 0808 0808 0808 0808     ................
  a31d40:	0808 0808 0808 0808 0808 0808 0808 0808     ................
  a31d50:	0808 0808 0808 0808 0808 0808 0808 0808     ................
  a31d60:	0808 0808 0808 0808 0808 0808 0808 0808     ................
  a31d70:	0808 0808 0808 0808 0808 0808 0808 0808     ................
  a31d80:	0808 0808 0808 0808 0808 0808 0808 0808     ................

00a31d90 <sfc_cfg>:
  a31d90:	0104 0000 0000 0020 0000 0080 6c46 7361     ...... .....Flas
  a31da0:	6268 6f6f 2074 6155 7472 4920 696e 2074     hboot Uart Init 
  a31db0:	7553 6363 0021 0000 6c46 7361 6268 6f6f     Succ!...Flashboo
  a31dc0:	2074 614d 6c6c 636f 4920 696e 2074 7553     t Malloc Init Su
  a31dd0:	6363 0021 6c46 7361 2068 6e49 7469 4620     cc!.Flash Init F
  a31de0:	6961 216c 7220 7465 3d20 0020 6c46 7361     ail! ret = .Flas
  a31df0:	2068 6e49 7469 5320 6375 2163 0000 0000     h Init Succ!....
  a31e00:	4653 2043 6966 2078 5253 7220 7465 3d20     SFC fix SR ret =
  a31e10:	0000 0000 6f69 6c20 7665 6c65 7720 726f     ....io level wor
  a31e20:	206b 6e69 7320 2077 6f6d 6564 202c 656c     k in sw mode, le
  a31e30:	6576 5b6c 7773 633a 6968 5d70 003a 0000     vel[sw:chip]:...
  a31e40:	6f69 6c20 7665 6c65 7720 726f 206b 6e69     io level work in
  a31e50:	6820 2077 6f6d 6564 202c 656c 6576 5b6c      hw mode, level[
  a31e60:	6863 7069 3a5d 0000 2e31 3031 312e 3230     chip]:..1.10.102
  a31e70:	0000 0000 6c66 7361 6268 6f6f 2074 6576     ....flashboot ve
  a31e80:	7372 6f69 206e 203a 7325 0a0d 0000 0000     rsion : %s......
  a31e90:	6175 6970 705f 7261 6974 6974 6e6f 675f     uapi_partition_g
  a31ea0:	7465 695f 666e 206f 6166 6c69 6465 0020     et_info failed .
  a31eb0:	7075 5f67 6c66 7361 5f68 6572 6461 6620     upg_flash_read f
  a31ec0:	6961 656c 2064 0000 6f4e 6e20 6565 2064     ailed ..No need 
  a31ed0:	6f74 7520 6770 6172 6564 2e2e 002e 0000     to upgrade......
  a31ee0:	656e 6465 7520 6770 6172 6564 0000 0000     need upgrade....
  a31ef0:	2d2d 2d2d 2d2d 2d2d 2d2d 2d2d 2d2d 2d2d     ----------------
  a31f00:	2d2d 2d2d 2d2d 2d2d 2d2d 0000 7075 7267     ----------..upgr
  a31f10:	6461 2065 6166 6c69 6465 202c 6572 6573     ade failed, rese
  a31f20:	2074 6f6e 0077 0000 7075 7267 6461 2065     t now...upgrade 
  a31f30:	7573 6363 7365 2c73 7220 7365 7465 6e20     success, reset n
  a31f40:	776f 0000 6c46 7361 6268 6f6f 2074 6567     ow..Flashboot ge
  a31f50:	2074 7061 2070 6170 7472 7469 6f69 206e     t app partition 
  a31f60:	6166 6c69 6465 2c21 6220 6f6f 2074 6261     failed!, boot ab
  a31f70:	726f 2174 0000 0000 6c66 7361 5f68 6e65     ort!....flash_en
  a31f80:	7263 7079 2074 6964 6173 6c62 2e65 0000     crypt disable...
  a31f90:	7061 5f70 6d69 6761 2065 7473 7261 2074     app_image start 
  a31fa0:	726f 6520 646e 6120 6464 2072 7265 2c72     or end addr err,
  a31fb0:	6d20 7375 2074 3532 6236 7479 2065 6c61      must 256byte al
  a31fc0:	6769 6d6e 6e65 2074 0000 0000 6c66 7361     ignment ....flas
  a31fd0:	5f68 6e65 7263 7079 2074 6e65 6261 656c     h_encrypt enable
  a31fe0:	002e 0000 6166 6370 735f 7465 635f 6e6f     ....fapc_set_con
  a31ff0:	6966 2067 7264 5f76 6f72 5f6d 6963 6870     fig drv_rom_ciph
  a32000:	7265 635f 6e6f 6966 5f67 646f 6b72 2031     er_config_odrk1 
  a32010:	7265 2072 203d 0000 6166 6370 735f 7465     err = ..fapc_set
  a32020:	635f 6e6f 6966 2067 7264 5f76 6f72 5f6d     _config drv_rom_
  a32030:	6963 6870 7265 665f 7061 5f63 6f63 666e     cipher_fapc_conf
  a32040:	6769 6520 7272 3d20 0020 0000 6166 6370     ig err = ...fapc
  a32050:	735f 7465 635f 6e6f 6966 2067 7264 5f76     _set_config drv_
  a32060:	6f72 5f6d 6963 6870 7265 665f 7061 5f63     rom_cipher_fapc_
  a32070:	7962 6170 7373 635f 6e6f 6966 2067 7265     bypass_config er
  a32080:	2072 203d 0000 0000 6c66 7361 6268 6f6f     r = ....flashboo
  a32090:	2074 6576 6972 7966 695f 616d 6567 615f     t verify_image_a
  a320a0:	7070 685f 6165 2064 6166 6c69 6465 2121     pp_head failed!!
  a320b0:	7220 7465 3d20 0020 6576 6972 7966 695f      ret = .verify_i
  a320c0:	616d 6567 615f 7070 625f 646f 2079 6166     mage_app_body fa
  a320d0:	6c69 6465 2121 7220 7465 3d20 0020 0000     iled!! ret = ...
  a320e0:	6572 6573 5f74 7075 7267 6461 5f65 6c66     reset_upgrade_fl
  a320f0:	6761 6620 6961 2c6c 7220 7465 3d20 0020     ag fail, ret = .
  a32100:	6572 7571 7365 5f74 7075 7267 6461 2065     request_upgrade 
  a32110:	6166 6c69 202c 6f66 6174 705f 746b 6e5f     fail, fota_pkt_n
  a32120:	746f 655f 6978 2e74 0000 0000 6f66 6174     ot_exit.....fota
  a32130:	705f 746b 6520 6978 2c74 7420 7972 665f     _pkt exit, try_f
  a32140:	746f 5f61 6966 5f78 7061 2e70 0000 0000     ota_fix_app.....
  a32150:	6c46 7361 6268 6f6f 2074 6162 6b63 7075     Flashboot backup
  a32160:	6920 2073 6f77 6b72 6e69 2167 0000 0000      is working!....
  a32170:	6c46 7361 6268 6f6f 2074 6170 7472 7469     Flashboot partit
  a32180:	6f69 206e 6e69 6f66 6720 7465 6620 6961     ion info get fai
  a32190:	216c 0000 6c66 7361 6268 6f6f 2074 6572     l!..flashboot re
  a321a0:	6f63 6576 7972 6520 6172 6573 6620 6961     covery erase fai
  a321b0:	656c 2164 2021 6572 2074 203d 0000 0000     led!! ret = ....
  a321c0:	6c66 7361 6268 6f6f 2074 6572 6f63 6576     flashboot recove
  a321d0:	7972 7720 6972 6574 6620 6961 656c 2164     ry write failed!
  a321e0:	2021 6572 2074 203d 0000 0000 6c46 7361     ! ret = ....Flas
  a321f0:	6268 6f6f 2074 6966 2078 6b6f 0021 0000     hboot fix ok!...
  a32200:	6964 5f65 6469 6520 7566 6573 725f 6165     die_id efuse_rea
  a32210:	5f64 7469 6d65 6620 6961 216c 0000 0000     d_item fail!....
  a32220:	6964 2065 6469 6d20 6d65 6d63 2070 6166     die id memcmp fa
  a32230:	6c69 0021 6d69 6761 2065 6469 6520 7272     il!.image id err
  a32240:	726f 0021 6576 7372 6f69 206e 6665 7375     or!.version efus
  a32250:	5f65 6572 6461 695f 6574 206d 6166 6c69     e_read_item fail
  a32260:	0021 0000 736d 6469 6320 6d6f 6170 6572     !...msid compare
  a32270:	6620 6961 216c 0000 6665 7375 5f65 6572      fail!..efuse_re
  a32280:	6461 695f 6574 206d 6576 6972 7966 6520     ad_item verify e
  a32290:	616e 6c62 2065 6166 6c69 0021 6576 7372     nable fail!.vers
  a322a0:	6f69 206e 6f63 706d 7261 2065 6166 6c69     ion compare fail
  a322b0:	0021 0000                                   !...

00a322b4 <g_verify_table>:
  a322b4:	0000 0000 f01e 4bd2 0000 0000 0100 0000     .......K........
  a322c4:	f02d 4bd2 0000 0000 0002 0000 3c1e 4b1e     -..K.........<.K
  a322d4:	0003 0000 0102 0000 3c2d 4b1e 0003 0000     ........-<.K....
  a322e4:	0003 0000 871e 4b69 0003 0000 0103 0000     ......iK........
  a322f4:	872d 4b69 0003 0000 0004 0000 3c1e 4b1e     -.iK.........<.K
  a32304:	0003 0000 0104 0000 3c2d 4b1e 0003 0000     ........-<.K....
  a32314:	0005 0000 871e 4b69 0003 0000 0105 0000     ......iK........
  a32324:	872d 4b69 0003 0000 0201 0000 a51e 4b87     -.iK...........K
  a32334:	0004 0000 0301 0000 a52d 4b87 0004 0000     ........-..K....
  a32344:	0006 0000 2d1e 4b0f 0002 0000 0106 0000     .....-.K........
  a32354:	2d2d 4b0f 0002 0000 6573 7563 6572 615f     --.K....secure_a
  a32364:	7475 6568 746e 6369 7461 2065 7264 5f76     uthenticate drv_
  a32374:	6f72 5f6d 6963 6870 7265 735f 6168 3532     rom_cipher_sha25
  a32384:	2036 6166 6c69 0021 6573 7563 6572 615f     6 fail!.secure_a
  a32394:	7475 6568 746e 6369 7461 2065 7264 5f76     uthenticate drv_
  a323a4:	6f72 5f6d 6963 6870 7265 705f 656b 625f     rom_cipher_pke_b
  a323b4:	3270 3635 5f72 6576 6972 7966 6620 6961     p256r_verify fai
  a323c4:	216c 0000 6576 6972 7966 695f 616d 6567     l!..verify_image
  a323d4:	635f 646f 5f65 7261 6165 6420 7672 725f     _code_area drv_r
  a323e4:	6d6f 635f 7069 6568 5f72 6873 3261 3635     om_cipher_sha256
  a323f4:	0021 0000 6576 6972 7966 695f 616d 6567     !...verify_image
  a32404:	635f 646f 5f65 7261 6165 6820 7361 2068     _code_area hash 
  a32414:	656d 636d 706d 6620 6961 216c 0000 0000     memcmp fail!....
  a32424:	6576 6972 7966 695f 616d 6567 635f 646f     verify_image_cod
  a32434:	5f65 7261 6165 6620 6961 216c 0000 0000     e_area fail!....
  a32444:	6576 6972 7966 695f 616d 6567 6b5f 7965     verify_image_key
  a32454:	615f 6572 2061 6573 7563 6572 7620 7265     _area secure ver
  a32464:	6669 2079 6964 6173 6c62 2165 0000 0000     ify disable!....
  a32474:	6576 6972 7966 695f 616d 6567 6b5f 7965     verify_image_key
  a32484:	615f 6572 2061 6573 7563 6572 7620 7265     _area secure ver
  a32494:	6669 2079 7265 6f72 2172 0000 6576 6972     ify error!..veri
  a324a4:	7966 695f 616d 6567 6b5f 7965 615f 6572     fy_image_key_are
  a324b4:	2061 6f72 746f 656b 5f79 7473 7461 7375     a rootkey_status
  a324c4:	6920 766e 6c61 6469 0021 0000 6576 6972      invalid!...veri
  a324d4:	7966 695f 616d 6567 6b5f 7965 615f 6572     fy_image_key_are
  a324e4:	2061 6d69 6761 2065 6469 6520 7272 726f     a image id error
  a324f4:	0021 0000 6576 6972 7966 695f 616d 6567     !...verify_image
  a32504:	6b5f 7965 615f 6572 2061 6573 7563 6572     _key_area secure
  a32514:	615f 7475 6568 746e 6369 7461 2165 0000     _authenticate!..
  a32524:	6576 6972 7966 695f 616d 6567 6b5f 7965     verify_image_key
  a32534:	615f 6572 2061 656b 2079 6576 7372 6f69     _area key versio
  a32544:	206e 7265 6f72 2172 0000 0000 6576 6972     n error!....veri
  a32554:	7966 695f 616d 6567 6b5f 7965 615f 6572     fy_image_key_are
  a32564:	2061 736d 6469 6520 7272 726f 0021 0000     a msid error!...
  a32574:	6576 6972 7966 695f 616d 6567 6b5f 7965     verify_image_key
  a32584:	615f 6572 2061 6964 2065 6469 6520 7272     _area die id err
  a32594:	726f 0021 6576 6972 7966 695f 616d 6567     or!.verify_image
  a325a4:	6b5f 7965 615f 6572 2061 6166 6c69 0021     _key_area fail!.
  a325b4:	6576 6972 7966 695f 616d 6567 635f 646f     verify_image_cod
  a325c4:	5f65 6e69 6f66 7320 6365 7275 2065 6576     e_info secure ve
  a325d4:	6972 7966 6420 7369 6261 656c 0021 0000     rify disable!...
  a325e4:	6576 6972 7966 695f 616d 6567 635f 646f     verify_image_cod
  a325f4:	5f65 6e69 6f66 7320 6365 7275 2065 6576     e_info secure ve
  a32604:	6972 7966 6520 7272 726f 0021 6576 6972     rify error!.veri
  a32614:	7966 695f 616d 6567 635f 646f 5f65 6e69     fy_image_code_in
  a32624:	6f66 6920 616d 6567 6920 2064 7265 6f72     fo image id erro
  a32634:	2172 0000 6576 6972 7966 695f 616d 6567     r!..verify_image
  a32644:	635f 646f 5f65 6e69 6f66 7320 6365 7275     _code_info secur
  a32654:	5f65 7561 6874 6e65 6974 6163 6574 0021     e_authenticate!.
  a32664:	6576 6972 7966 695f 616d 6567 635f 646f     verify_image_cod
  a32674:	5f65 6e69 6f66 6b20 7965 7620 7265 6973     e_info key versi
  a32684:	6e6f 6520 7272 726f 0021 0000 6576 6972     on error!...veri
  a32694:	7966 695f 616d 6567 635f 646f 5f65 6e69     fy_image_code_in
  a326a4:	6f66 6d20 6973 2064 7265 6f72 2172 0000     fo msid error!..
  a326b4:	6576 6972 7966 695f 616d 6567 635f 646f     verify_image_cod
  a326c4:	5f65 6e69 6f66 6620 6961 216c 0000 0000     e_info fail!....

00a326d4 <g_sha256_ival>:
  a326d4:	096a 67e6 67bb 85ae 6e3c 72f3 4fa5 3af5     j..g.g..<n.r.O.:
  a326e4:	0e51 7f52 059b 8c68 831f abd9 e05b 19cd     Q.R...h.....[...

00a326f4 <g_sm3_ival>:
  a326f4:	8073 6f16 1449 b9b2 2417 d742 8ada 0006     s..oI....$B.....
  a32704:	6fa9 bc30 3116 aa38 8de3 4dee fbb0 4e0e     .o0..18....M...N
  a32714:	a4a8 00a2 a466 00a2 a542 00a2 a5e4 00a2     ....f...B.......
  a32724:	a5fe 00a2 b830 00a2 b81a 00a2 b812 00a2     ....0...........
  a32734:	b81a 00a2 b81e 00a2 b81a 00a2 b828 00a2     ............(...
  a32744:	b81a 00a2 b81a 00a2 b81a 00a2 b81a 00a2     ................
  a32754:	b81a 00a2 b81e 00a2 b828 00a2               ........(...

00a32760 <CSWTCH.8>:
  a32760:	1001 0020                                   .. .

00a32764 <g_hal_uart_ctrl_func_array>:
  a32764:	b8ce 00a2 0000 0000 b864 00a2 b856 00a2     ........d...V...
  a32774:	b848 00a2 b83a 00a2 b83a 00a2 b610 00a2     H...:...:.......
  a32784:	b626 00a2 b65c 00a2 0000 0000 b73a 00a2     &...\.......:...
  a32794:	b71a 00a2 0000 0000 0000 0000 0000 0000     ................
  a327a4:	0000 0000 b63e 00a2 b5b2 00a2 b5c4 00a2     ....>...........
  a327b4:	0000 0000                                   ....

00a327b8 <g_uart_base_addrs>:
  a327b8:	0000 4401 1000 4401 2000 4401               ...D...D. .D

00a327c4 <g_default_erase_cmds>:
  a327c4:	c639 ffff 06c1 4000 0101 0400               9......@....

00a327d0 <g_default_quad_enable>:
  a327d0:	0002 0000 0000 0000                         ........

00a327d8 <g_default_read_cmds>:
  a327d8:	0019 0000                                   ....

00a327dc <g_default_write_cmds>:
  a327dc:	0001 0000 0011 0000                         ........

00a327e4 <g_flash_common_erase_cmds>:
  a327e4:	c639 ffff 06c1 4000 0291 2000 0101 0400     9......@... ....

00a327f4 <g_flash_common_read_cmds>:
  a327f4:	0019 0000 4059 0000 49d9 0000 55d9 0000     ....Y@...I...U..
  a32804:	6b59 0000 f759 0000                         Yk..Y...

00a3280c <g_flash_common_write_cmds>:
  a3280c:	0001 0000 0011 0000 4000 0000 4000 0000     .........@...@..
  a3281c:	2991 0000 4000 0000                         .)...@..

00a32824 <g_flash_gd_bus_enable>:
  a32824:	0301 0005 0000 0301 0135 0001 0002 0000     ........5.......
  a32834:	0000 0000                                   ....

00a32838 <g_flash_spi_info_list>:
  a32838:	40c8 0016 0000 0040 0004 0000 27f4 00a3     .@....@......'..
  a32848:	280c 00a3 27e4 00a3 2824 00a3               .(...'..$(..

00a32854 <g_flash_spi_unknown_info>:
  a32854:	ffff 00ff 0000 0008 0003 0000 27d8 00a3     .............'..
  a32864:	27dc 00a3 27c4 00a3 27d0 00a3 6f4e 6e20     .'...'...'..No n
  a32874:	6565 2064 6f74 6620 7869 5320 2152 0a0d     eed to fix SR!..
  a32884:	0000 0000 5253 6620 7869 6f20 216b 0a0d     ....SR fix ok!..
  a32894:	0000 0000 5253 6425 305b 2578 5d78 6e20     ....SR%d[0x%x] n
  a328a4:	6565 7364 6620 7869 6e69 2c67 6520 7078     eeds fixing, exp
  a328b4:	6365 5b74 7830 7825 0d5d 000a               ect[0x%x]...

00a328c0 <g_efuse_cfg>:
  a328c0:	0000 0008 0003 0008 00a0 0003 0270 0020     ............p. .
  a328d0:	0003 0290 0008 0003 0298 0008 0003 02a0     ................
  a328e0:	0100 0003 03a0 0020 0003 03c0 0001 0003     ...... .........
  a328f0:	03e8 0008 0003 0630 0030 0003 0660 0030     ......0.0...`.0.
  a32900:	0003 0690 0030 0003 06c0 0030 0003 06f0     ....0.....0.....
  a32910:	0080 0003 02a0 0100 0003 046f 0001 0003     ..........o.....
  a32920:	0460 000f 0003 0470 0010 0003 0770 0030     `.....p.....p.0.
  a32930:	0003 0000 7830 0000 7075 6164 6574 725f     ....0x..update_r
  a32940:	7365 7465 635f 756f 746e 0020 4f52 7c4d     eset_count .ROM|
  a32950:	6564 6166 6c75 5f74 6168 646e 656c 2072     default_handler 
  a32960:	203a 6e69 6574 7272 7075 2074 6469 5b78     : interrupt idx[
  a32970:	6425 0a5d 0000 0000 4f52 7c4d 6f4f 7370     %d].....ROM|Oops
  a32980:	2d20 6820 7261 2064 6166 6c75 0d74 000a      - hard fault...
  a32990:	4f52 7c4d 7865 6563 7470 6f69 3a6e 7825     ROM|exception:%x
  a329a0:	0a0d 0000 4f52 7c4d 6f4f 7370 4e3a 494d     ....ROM|Oops:NMI
  a329b0:	000a 0000 4f52 7c4d 6f4f 7370 2d20 6920     ....ROM|Oops - i
  a329c0:	736e 206e 6170 6567 6620 7561 746c 0a0d     nsn page fault..
  a329d0:	0000 0000 4f52 7c4d 6f4f 7370 2d20 6c20     ....ROM|Oops - l
  a329e0:	616f 2064 6170 6567 6620 7561 746c 0a0d     oad page fault..
  a329f0:	0000 0000 4f52 7c4d 6f4f 7370 2d20 6c20     ....ROM|Oops - l
  a32a00:	636f 206b 7075 0a0d 0000 0000 4f52 7c4d     ock up......ROM|
  a32a10:	6f4f 7370 2d20 7320 6f74 6572 7020 6761     Oops - store pag
  a32a20:	2065 6166 6c75 0d74 000a 0000 4f52 7c4d     e fault.....ROM|
  a32a30:	6f4f 7370 2d20 6520 7262 6165 0d6b 000a     Oops - ebreak...
  a32a40:	4f52 7c4d 6f4f 7370 2d20 6520 766e 7269     ROM|Oops - envir
  a32a50:	6e6f 656d 746e 6320 6c61 206c 7266 6d6f     onment call from
  a32a60:	4d20 6d2d 646f 0d65 000a 0000 4f52 7c4d      M-mode.....ROM|
  a32a70:	6f4f 7370 2d20 6520 766e 7269 6e6f 656d     Oops - environme
  a32a80:	746e 6320 6c61 206c 7266 6d6f 5320 6d2d     nt call from S-m
  a32a90:	646f 0d65 000a 0000 4f52 7c4d 6f4f 7370     ode.....ROM|Oops
  a32aa0:	2d20 6520 766e 7269 6e6f 656d 746e 6320      - environment c
  a32ab0:	6c61 206c 7266 6d6f 5520 6d2d 646f 0d65     all from U-mode.
  a32ac0:	000a 0000 4f52 7c4d 6f4f 7370 2d20 6920     ....ROM|Oops - i
  a32ad0:	736e 7274 6375 6974 6e6f 6120 6363 7365     nstruction acces
  a32ae0:	2073 6166 6c75 0d74 000a 0000 4f52 7c4d     s fault.....ROM|
  a32af0:	6f4f 7370 2d20 6920 6c6c 6765 6c61 6920     Oops - illegal i
  a32b00:	736e 7274 6375 6974 6e6f 0a0d 0000 0000     nstruction......
  a32b10:	4f52 7c4d 6f4f 7370 2d20 6920 736e 7274     ROM|Oops - instr
  a32b20:	6375 6974 6e6f 6120 6464 6572 7373 6d20     uction address m
  a32b30:	7369 6c61 6769 656e 0d64 000a 4f52 7c4d     isaligned...ROM|
  a32b40:	6f4f 7370 2d20 6c20 616f 2064 6361 6563     Oops - load acce
  a32b50:	7373 6620 7561 746c 0a0d 0000 4f52 7c4d     ss fault....ROM|
  a32b60:	6f4f 7370 2d20 6c20 616f 2064 6461 7264     Oops - load addr
  a32b70:	7365 2073 696d 6173 696c 6e67 6465 0a0d     ess misaligned..
  a32b80:	0000 0000 4f52 7c4d 6f4f 7370 2d20 7320     ....ROM|Oops - s
  a32b90:	6f74 6572 2820 726f 4120 4f4d 2029 6361     tore (or AMO) ac
  a32ba0:	6563 7373 6620 7561 746c 0a0d 0000 0000     cess fault......
  a32bb0:	4f52 7c4d 6f4f 7370 2d20 7320 6f74 6572     ROM|Oops - store
  a32bc0:	2820 726f 4120 4f4d 2029 6461 7264 7365      (or AMO) addres
  a32bd0:	2073 696d 6173 696c 6e67 6465 0a0d 0000     s misaligned....
  a32be0:	4f52 7c4d 6f4f 7370 2d20 7520 6b6e 6f6e     ROM|Oops - unkno
  a32bf0:	6e77 6520 6378 7065 6974 6e6f 0a0d 0000     wn exception....
  a32c00:	4f52 7c4d 2a2a 2a2a 2a2a 2a2a 2a2a 2a2a     ROM|************
  a32c10:	2a2a 7845 6563 7470 6f69 206e 6e49 6f66     **Exception Info
  a32c20:	6d72 7461 6f69 2a6e 2a2a 2a2a 2a2a 2a2a     rmation*********
  a32c30:	2a2a 2a2a 202a 000a 4f52 7c4d 7775 7845     ***** ..ROM|uwEx
  a32c40:	5463 7079 2065 203d 7830 7825 000a 0000     cType = 0x%x....
  a32c50:	4f52 7c4d 656d 6370 2020 2020 2020 3d20     ROM|mepc       =
  a32c60:	3020 2578 0a78 0000 4f52 7c4d 736d 6174      0x%x...ROM|msta
  a32c70:	7574 2073 2020 3d20 3020 2578 0a78 0000     tus    = 0x%x...
  a32c80:	4f52 7c4d 746d 6176 206c 2020 2020 3d20     ROM|mtval      =
  a32c90:	3020 2578 0a78 0000 4f52 7c4d 636d 7561      0x%x...ROM|mcau
  a32ca0:	6573 2020 2020 3d20 3020 2578 0a78 0000     se     = 0x%x...
  a32cb0:	4f52 7c4d 6363 7561 6573 2020 2020 3d20     ROM|ccause     =
  a32cc0:	3020 2578 0a78 0000 4f52 7c4d 6172 2020      0x%x...ROM|ra  
  a32cd0:	2020 2020 2020 3d20 3020 2578 0a78 0000            = 0x%x...
  a32ce0:	4f52 7c4d 7073 2020 2020 2020 2020 3d20     ROM|sp         =
  a32cf0:	3020 2578 0a78 0000 4f52 7c4d 7067 2020      0x%x...ROM|gp  
  a32d00:	2020 2020 2020 3d20 3020 2578 0a78 0000            = 0x%x...
  a32d10:	4f52 7c4d 7074 2020 2020 2020 2020 3d20     ROM|tp         =
  a32d20:	3020 2578 0a78 0000 4f52 7c4d 3074 2020      0x%x...ROM|t0  
  a32d30:	2020 2020 2020 3d20 3020 2578 0a78 0000            = 0x%x...
  a32d40:	4f52 7c4d 3174 2020 2020 2020 2020 3d20     ROM|t1         =
  a32d50:	3020 2578 0a78 0000 4f52 7c4d 3274 2020      0x%x...ROM|t2  
  a32d60:	2020 2020 2020 3d20 3020 2578 0a78 0000            = 0x%x...
  a32d70:	4f52 7c4d 3073 2020 2020 2020 2020 3d20     ROM|s0         =
  a32d80:	3020 2578 0a78 0000 4f52 7c4d 3173 2020      0x%x...ROM|s1  
  a32d90:	2020 2020 2020 3d20 3020 2578 0a78 0000            = 0x%x...
  a32da0:	4f52 7c4d 3061 2020 2020 2020 2020 3d20     ROM|a0         =
  a32db0:	3020 2578 0a78 0000 4f52 7c4d 3161 2020      0x%x...ROM|a1  
  a32dc0:	2020 2020 2020 3d20 3020 2578 0a78 0000            = 0x%x...
  a32dd0:	4f52 7c4d 3261 2020 2020 2020 2020 3d20     ROM|a2         =
  a32de0:	3020 2578 0a78 0000 4f52 7c4d 3361 2020      0x%x...ROM|a3  
  a32df0:	2020 2020 2020 3d20 3020 2578 0a78 0000            = 0x%x...
  a32e00:	4f52 7c4d 3461 2020 2020 2020 2020 3d20     ROM|a4         =
  a32e10:	3020 2578 0a78 0000 4f52 7c4d 3561 2020      0x%x...ROM|a5  
  a32e20:	2020 2020 2020 3d20 3020 2578 0a78 0000            = 0x%x...
  a32e30:	4f52 7c4d 3661 2020 2020 2020 2020 3d20     ROM|a6         =
  a32e40:	3020 2578 0a78 0000 4f52 7c4d 3761 2020      0x%x...ROM|a7  
  a32e50:	2020 2020 2020 3d20 3020 2578 0a78 0000            = 0x%x...
  a32e60:	4f52 7c4d 3273 2020 2020 2020 2020 3d20     ROM|s2         =
  a32e70:	3020 2578 0a78 0000 4f52 7c4d 3373 2020      0x%x...ROM|s3  
  a32e80:	2020 2020 2020 3d20 3020 2578 0a78 0000            = 0x%x...
  a32e90:	4f52 7c4d 3473 2020 2020 2020 2020 3d20     ROM|s4         =
  a32ea0:	3020 2578 0a78 0000 4f52 7c4d 3573 2020      0x%x...ROM|s5  
  a32eb0:	2020 2020 2020 3d20 3020 2578 0a78 0000            = 0x%x...
  a32ec0:	4f52 7c4d 3673 2020 2020 2020 2020 3d20     ROM|s6         =
  a32ed0:	3020 2578 0a78 0000 4f52 7c4d 3773 2020      0x%x...ROM|s7  
  a32ee0:	2020 2020 2020 3d20 3020 2578 0a78 0000            = 0x%x...
  a32ef0:	4f52 7c4d 3873 2020 2020 2020 2020 3d20     ROM|s8         =
  a32f00:	3020 2578 0a78 0000 4f52 7c4d 3973 2020      0x%x...ROM|s9  
  a32f10:	2020 2020 2020 3d20 3020 2578 0a78 0000            = 0x%x...
  a32f20:	4f52 7c4d 3173 2030 2020 2020 2020 3d20     ROM|s10        =
  a32f30:	3020 2578 0a78 0000 4f52 7c4d 3173 2031      0x%x...ROM|s11 
  a32f40:	2020 2020 2020 3d20 3020 2578 0a78 0000            = 0x%x...
  a32f50:	4f52 7c4d 3374 2020 2020 2020 2020 3d20     ROM|t3         =
  a32f60:	3020 2578 0a78 0000 4f52 7c4d 3474 2020      0x%x...ROM|t4  
  a32f70:	2020 2020 2020 3d20 3020 2578 0a78 0000            = 0x%x...
  a32f80:	4f52 7c4d 3574 2020 2020 2020 2020 3d20     ROM|t5         =
  a32f90:	3020 2578 0a78 0000 4f52 7c4d 3674 2020      0x%x...ROM|t6  
  a32fa0:	2020 2020 2020 3d20 3020 2578 0a78 0000            = 0x%x...
  a32fb0:	4f52 7c4d 2a2a 2a2a 2a2a 2a2a 2a2a 2a2a     ROM|************
  a32fc0:	2a2a 7845 6563 7470 6f69 206e 6e49 6f66     **Exception Info
  a32fd0:	6d72 7461 6f69 206e 6e65 2a64 2a2a 2a2a     rmation end*****
  a32fe0:	2a2a 2a2a 2a2a 2a2a 202a 000a 4f52 7c4d     ********* ..ROM|
  a32ff0:	6d6e 5f69 6168 646e 656c 2072 203a 6e69     nmi_handler : in
  a33000:	6574 7272 7075 2074 6469 5b78 6425 0a5d     terrupt idx[%d].
  a33010:	0000 0000 555b 4750 205d 6567 2074 736d     ....[UPG] get ms
  a33020:	6469 6620 6961 656c 2e64 7220 7465 3d20     id failed. ret =
  a33030:	3020 2578 0d78 000a 555b 4750 205d 7075      0x%x...[UPG] up
  a33040:	2067 6576 6972 7966 203a 736d 6469 6920     g verify: msid i
  a33050:	2073 7277 6e6f 2167 0a0d 0000 555b 4750     s wrong!....[UPG
  a33060:	205d 7075 7267 6461 2065 7270 676f 6572     ] upgrade progre
  a33070:	7373 6320 6c61 626c 6361 206b 6572 6967     ss callback regi
  a33080:	7473 6620 6961 656c 0d64 000a 555b 4750     st failed...[UPG
  a33090:	205d 7075 2067 6570 6372 6e65 2074 203a     ] upg percent : 
  a330a0:	0000 0000 0031 0000 2520 000d 555b 4750     ....1... %..[UPG
  a330b0:	205d 7075 7267 6461 2065 6e69 7469 6620     ] upgrade init f
  a330c0:	6961 656c 2164 0a0d 0000 0000 555b 4750     ailed!......[UPG
  a330d0:	205d 7075 7267 6461 2065 6e69 7469 4f20     ] upgrade init O
  a330e0:	214b 0a0d 0000 0000 555b 4750 205d 7075     K!......[UPG] up
  a330f0:	5f67 6e69 7469 635f 7972 6f74 635f 6766     g_init_cryto_cfg
  a33100:	6d20 6d65 7063 5f79 2073 6e65 7263 2079      memcpy_s encry 
  a33110:	6173 746c 6620 6961 2e6c 0d20 000a 0000     salt fail. .....
  a33120:	555b 4750 205d 7075 5f67 6e69 7469 635f     [UPG] upg_init_c
  a33130:	7972 6f74 635f 6766 6d20 6d65 7063 5f79     ryto_cfg memcpy_
  a33140:	2073 6564 7263 2079 6173 746c 6620 6961     s decry salt fai
  a33150:	2e6c 0d20 000a 0000 555b 4750 205d 7075     l. .....[UPG] up
  a33160:	5f67 6e69 7469 635f 7972 6f74 635f 6766     g_init_cryto_cfg
  a33170:	6d20 6d65 7063 5f79 2073 6e65 7263 2079      memcpy_s encry 
  a33180:	7669 6620 6961 2e6c 0d20 000a 555b 4750     iv fail. ...[UPG
  a33190:	205d 7075 5f67 6e69 7469 635f 7972 6f74     ] upg_init_cryto
  a331a0:	635f 6766 6d20 6d65 7063 5f79 2073 6564     _cfg memcpy_s de
  a331b0:	7263 2079 7669 6620 6961 2e6c 0d20 000a     cry iv fail. ...
  a331c0:	555b 4750 205d 7264 5f76 6f72 5f6d 6963     [UPG] drv_rom_ci
  a331d0:	6870 7265 735f 6d79 5f63 6e69 7469 6620     pher_symc_init f
  a331e0:	6961 2c6c 7220 7465 3d20 3020 2578 2e78     ail, ret = 0x%x.
  a331f0:	0d20 000a 555b 4750 205d 7264 5f76 6f72      ...[UPG] drv_ro
  a33200:	5f6d 6963 6870 7265 635f 6572 7461 5f65     m_cipher_create_
  a33210:	656b 7379 6f6c 2074 6e65 7263 2079 6166     keyslot encry fa
  a33220:	6c69 6465 202c 6572 2074 203d 7830 7825     iled, ret = 0x%x
  a33230:	202e 0a0d 0000 0000 555b 4750 205d 7264     . ......[UPG] dr
  a33240:	5f76 6f72 5f6d 6963 6870 7265 635f 6572     v_rom_cipher_cre
  a33250:	7461 5f65 656b 7379 6f6c 2074 6564 7263     ate_keyslot decr
  a33260:	2079 6166 6c69 6465 202c 6572 2074 203d     y failed, ret = 
  a33270:	7830 7825 202e 0a0d 0000 0000 555b 4750     0x%x. ......[UPG
  a33280:	205d 7075 5f67 6564 7263 5f79 6f66 6174     ] upg_decry_fota
  a33290:	705f 746b 643a 7672 725f 6d6f 635f 7069     _pkt:drv_rom_cip
  a332a0:	6568 5f72 7973 636d 645f 6365 7972 7470     her_symc_decrypt
  a332b0:	6620 6961 656c 2c64 7220 7465 3d20 3020      failed, ret = 0
  a332c0:	2578 2078 0a0d 0000 555b 4750 205d 7075     x%x ....[UPG] up
  a332d0:	5f67 6e65 7263 5f79 6f66 6174 705f 746b     g_encry_fota_pkt
  a332e0:	643a 7672 725f 6d6f 635f 7069 6568 5f72     :drv_rom_cipher_
  a332f0:	7973 636d 645f 6365 7972 7470 6620 6961     symc_decrypt fai
  a33300:	656c 2c64 7220 7465 3d20 3020 2578 2078     led, ret = 0x%x 
  a33310:	0a0d 0000 4f52 7c4d 705b 6e61 6369 695d     ....ROM|[panic]i
  a33320:	3a64 6425 632c 646f 3a65 7830 7825 632c     d:%d,code:0x%x,c
  a33330:	6c61 3a6c 7830 7825 0000 0000 555b 4750     all:0x%x....[UPG
  a33340:	205d 7075 5f67 6567 5f74 7075 7267 6461     ] upg_get_upgrad
  a33350:	5f65 6c66 6761 665f 616c 6873 735f 6174     e_flag_flash_sta
  a33360:	7472 615f 6464 2072 6166 6c69 0a0d 0000     rt_addr fail....
  a33370:	555b 4750 205d 7075 5f67 6c61 6f6c 5f63     [UPG] upg_alloc_
  a33380:	6e61 5f64 6567 5f74 7075 7267 6461 5f65     and_get_upgrade_
  a33390:	6c66 6761 7520 6770 6d5f 6c61 6f6c 2063     flag upg_malloc 
  a333a0:	6166 6c69 0a0d 0000 555b 4750 205d 7075     fail....[UPG] up
  a333b0:	5f67 6c61 6f6c 5f63 6e61 5f64 6567 5f74     g_alloc_and_get_
  a333c0:	7075 7267 6461 5f65 6c66 6761 7220 6165     upgrade_flag rea
  a333d0:	2064 6c66 7361 2068 6166 6c69 0a0d 0000     d flash fail....
  a333e0:	555b 4750 205d 7075 5f67 6c66 7361 5f68     [UPG] upg_flash_
  a333f0:	6572 6461 6620 616c 2067 6166 6c69 0a0d     read flag fail..
  a33400:	0000 0000 555b 4750 205d 7277 7469 2065     ....[UPG] write 
  a33410:	6f63 706d 656c 6574 203a 7830 7825 0a0d     complete: 0x%x..
  a33420:	0000 0000 555b 4750 205d 7075 5f67 6c66     ....[UPG] upg_fl
  a33430:	7361 5f68 7277 7469 2065 7075 7267 6461     ash_write upgrad
  a33440:	7265 6620 616c 2067 6166 6c69 202e 6572     er flag fail. re
  a33450:	2074 203d 7830 7825 0a0d 0000 555b 4750     t = 0x%x....[UPG
  a33460:	205d 6572 7274 2079 6974 656d 2073 6c61     ] retry times al
  a33470:	206c 6166 6c69 6465 0a0d 0000 555b 4750     l failed....[UPG
  a33480:	205d 6168 6873 6f5f 6570 6172 6974 6e6f     ] hash_operation
  a33490:	203a 7264 5f76 6f72 5f6d 6963 6870 7265     : drv_rom_cipher
  a334a0:	685f 7361 2068 6166 6c69 7220 7465 765f     _hash fail ret_v
  a334b0:	6c61 3d20 3020 2578 0d78 000a 555b 4750     al = 0x%x...[UPG
  a334c0:	205d 6163 636c 685f 7361 2068 6166 6c69     ] calc_hash fail
  a334d0:	7220 7465 3d20 3020 2578 0d78 000a 0000      ret = 0x%x.....
  a334e0:	555b 4750 205d 6576 6972 7966 735f 6769     [UPG] verify_sig
  a334f0:	616e 7574 6572 6920 2073 6166 6c69 202c     nature is fail, 
  a33500:	6572 2074 203d 7830 7825 0a0d 0000 0000     ret = 0x%x......
  a33510:	555b 4750 205d 7075 2067 6576 6972 7966     [UPG] upg verify
  a33520:	6820 6165 2064 4b4f 0a0d 0000 555b 4750      head OK....[UPG
  a33530:	205d 7075 5f67 6567 5f74 6b70 5f67 6d69     ] upg_get_pkg_im
  a33540:	6761 5f65 6168 6873 745f 6261 656c 6620     age_hash_table f
  a33550:	6961 0d6c 000a 0000 555b 4750 205d 7075     ail.....[UPG] up
  a33560:	5f67 6576 6972 7966 685f 7361 2068 6d69     g_verify_hash im
  a33570:	6761 2065 6174 6c62 2065 4b4f 0a0d 0000     age table OK....
  a33580:	555b 4750 205d 7075 5f67 6567 5f74 6b70     [UPG] upg_get_pk
  a33590:	5f67 6d69 6761 5f65 6568 6461 7265 6620     g_image_header f
  a335a0:	6961 0d6c 000a 0000 555b 4750 205d 7075     ail.....[UPG] up
  a335b0:	2067 6576 6972 7966 203a 6d69 6761 2065     g verify: image 
  a335c0:	4449 6520 7272 726f 0a0d 0000 555b 4750     ID error....[UPG
  a335d0:	205d 6576 6972 7966 665f 746f 5f61 656b     ] verify_fota_ke
  a335e0:	5f79 7261 6165 2d20 203e 6576 6972 7966     y_area -> verify
  a335f0:	5320 4148 3532 0d36 000a 0000 555b 4750      SHA256.....[UPG
  a33600:	205d 7075 2067 6576 6972 7966 203a 656b     ] upg verify: ke
  a33610:	2079 7261 6165 6520 7272 726f 202e 6572     y area error. re
  a33620:	2074 203d 7830 7825 0a0d 0000 555b 4750     t = 0x%x....[UPG
  a33630:	205d 7075 2067 6576 6972 7966 203a 6f66     ] upg verify: fo
  a33640:	6174 6920 666e 206f 7265 6f72 2e72 7220     ta info error. r
  a33650:	7465 3d20 3020 2578 0d78 000a 555b 4750     et = 0x%x...[UPG
  a33660:	205d 7075 2067 6576 6972 7966 203a 7075     ] upg verify: up
  a33670:	5f67 6863 6365 5f6b 6f66 6174 695f 666e     g_check_fota_inf
  a33680:	726f 616d 6974 6e6f 202e 6572 2074 203d     ormation. ret = 
  a33690:	7830 7825 0a0d 0000 555b 4750 205d 7075     0x%x....[UPG] up
  a336a0:	2067 6576 6972 7966 203a 6966 656c 6920     g verify: file i
  a336b0:	616d 6567 6320 6568 6b63 6520 7272 726f     mage check error
  a336c0:	202e 6568 6461 7265 6d5f 6761 6369 3d20     . header_magic =
  a336d0:	3020 2578 0d78 000a 555b 4750 205d 7075      0x%x...[UPG] up
  a336e0:	2067 6576 6972 7966 203a 6d69 6761 2065     g verify: image 
  a336f0:	6863 6365 206b 4b4f 202e 6d69 6761 5f65     check OK. image_
  a33700:	6469 3d20 3020 2578 0d78 000a 555b 4750     id = 0x%x...[UPG
  a33710:	205d 7075 5f67 6576 6972 7966 685f 7361     ] upg_verify_has
  a33720:	3a68 6820 7361 5f68 706f 7265 7461 6f69     h: hash_operatio
  a33730:	206e 6166 6c69 7220 7465 765f 6c61 3d20     n fail ret_val =
  a33740:	3020 2578 0d78 000a 555b 4750 205d 6576      0x%x...[UPG] ve
  a33750:	6972 7966 665f 746f 5f61 6e69 6f66 2d20     rify_fota_info -
  a33760:	203e 6576 6972 7966 5320 4148 3532 0d36     > verify SHA256.
  a33770:	000a 0000 555b 4750 205d 6576 6972 7966     ....[UPG] verify
  a33780:	665f 746f 5f61 6e69 6f66 2d20 203e 6576     _fota_info -> ve
  a33790:	6972 7966 7320 6769 656e 0d64 000a 0000     rify signed.....
  a337a0:	555b 4750 205d 7075 5f67 6576 6972 7966     [UPG] upg_verify
  a337b0:	685f 7361 3a68 6d20 6d65 6d63 2070 6168     _hash: memcmp ha
  a337c0:	6873 6620 6961 2e6c 0a0d 0000 555b 4750     sh fail.....[UPG
  a337d0:	205d 7075 5f67 6567 5f74 6170 6b63 6761     ] upg_get_packag
  a337e0:	5f65 6568 6461 7265 6620 6961 0d6c 000a     e_header fail...
  a337f0:	555b 4750 205d 6175 6970 755f 6770 765f     [UPG] uapi_upg_v
  a33800:	7265 6669 5f79 6966 656c 6620 6961 2c6c     erify_file fail,
  a33810:	7220 7465 3d20 3020 2578 0d78 000a 0000      ret = 0x%x.....
  a33820:	555b 4750 205d 7075 5f67 6567 5f74 6966     [UPG] upg_get_fi
  a33830:	6d72 6177 6572 6e5f 6d75 6562 5f72 6e69     rmware_number_in
  a33840:	705f 6361 616b 6567 6620 6961 2c6c 7220     _package fail, r
  a33850:	7465 3d20 3020 2578 0d78 000a 555b 4750     et = 0x%x...[UPG
  a33860:	205d 7075 5f67 7075 7267 6461 5f65 6572     ] upg_upgrade_re
  a33870:	7571 7365 2074 6166 6c69 202e 6572 2074     quest fail. ret 
  a33880:	203d 7830 7825 0a0d 0000 0000 555b 4750     = 0x%x......[UPG
  a33890:	205d 7075 5f67 6e65 7263 5f79 6f66 6174     ] upg_encry_fota
  a338a0:	705f 746b 6d3a 6d65 6f6d 6576 735f 6620     _pkt:memmove_s f
  a338b0:	6961 656c 2e64 0a0d 0000 0000 555b 4750     ailed.......[UPG
  a338c0:	205d 7075 5f67 7a6c 616d 615f 6c6c 636f     ] upg_lzma_alloc
  a338d0:	6620 6961 656c 2164 2121 7320 7a69 2065      failed!!! size 
  a338e0:	203d 7830 7825 0a0d 0000 0000 555b 4750     = 0x%x......[UPG
  a338f0:	205d 7075 5f67 7a6c 616d 725f 6165 5f64     ] upg_lzma_read_
  a33900:	6b70 5f74 6564 7263 2079 6166 6c69 7220     pkt_decry fail r
  a33910:	7465 3d20 3020 2578 2e78 0a0d 0000 0000     et = 0x%x.......
  a33920:	555b 4750 205d 7075 5f67 7a6c 616d 645f     [UPG] upg_lzma_d
  a33930:	6365 646f 5f65 6f74 625f 6675 6620 6961     ecode_to_buf fai
  a33940:	206c 6572 2074 203d 7830 7825 0d2e 000a     l ret = 0x%x....
  a33950:	555b 4750 205d 7a6c 616d 6564 5f63 6564     [UPG] lzmadec_de
  a33960:	6f63 6564 6f74 7562 2066 6166 6c69 7220     codetobuf fail r
  a33970:	7465 3d20 3020 2578 2e78 0d20 000a 0000     et = 0x%x. .....
  a33980:	555b 4750 205d 7075 5f67 7a6c 616d 775f     [UPG] upg_lzma_w
  a33990:	6972 6574 695f 616d 6567 6620 6961 2e6c     rite_image fail.
  a339a0:	0a0d 0000 555b 4750 205d 7075 5f67 6e65     ....[UPG] upg_en
  a339b0:	7263 5f79 6f66 6174 705f 746b 6620 6961     cry_fota_pkt fai
  a339c0:	206c 6572 2074 203d 7830 7825 0d20 000a     l ret = 0x%x ...
  a339d0:	3044 8000 555b 4750 205d 6f4e 2074 656e     D0..[UPG] Not ne
  a339e0:	6465 7420 206f 7075 7267 6461 2e65 2e2e     ed to upgrade...
  a339f0:	0a0d 0000 555b 4750 205d 6170 6b63 6761     ....[UPG] packag
  a33a00:	2065 6e69 6f66 7420 746f 6c61 203d 7830     e info total= 0x
  a33a10:	7825 202c 6966 696e 6873 6465 3d20 3020     %x, finished = 0
  a33a20:	2578 0d78 000a 0000 555b 4750 205d 7075     x%x.....[UPG] up
  a33a30:	6164 6574 6920 616d 6567 6e20 6d75 6562     date image numbe
  a33a40:	2072 203d 7830 7825 0a0d 0000 555b 4750     r = 0x%x....[UPG
  a33a50:	205d 7075 6164 6574 6620 7269 776d 7261     ] update firmwar
  a33a60:	2065 756e 626d 7265 3d20 3020 2578 0d78     e number = 0x%x.
  a33a70:	000a 0000 555b 4750 205d 6854 2065 6d69     ....[UPG] The im
  a33a80:	6761 2065 6168 2073 6966 696e 6873 6465     age has finished
  a33a90:	202e 6d69 6761 5f65 6469 3d20 3020 2578     . image_id = 0x%
  a33aa0:	0d78 000a 555b 4750 205d 7075 5f67 6567     x...[UPG] upg_ge
  a33ab0:	5f74 6b70 5f67 6d69 6761 5f65 6568 6461     t_pkg_image_head
  a33ac0:	7265 6620 6961 2e6c 0a0d 0000 555b 4750     er fail.....[UPG
  a33ad0:	205d 7075 5f67 6573 5f74 6966 6d72 6177     ] upg_set_firmwa
  a33ae0:	6572 755f 6470 7461 5f65 7473 7461 7375     re_update_status
  a33af0:	6620 6961 0d6c 000a 555b 4750 205d 7473      fail...[UPG] st
  a33b00:	7261 2074 6570 6672 726f 206d 7075 6164     art perform upda
  a33b10:	6574 6920 616d 6567 3a20 3020 2578 0d78     te image : 0x%x.
  a33b20:	000a 0000 555b 4750 205d 7075 5f67 6c66     ....[UPG] upg_fl
  a33b30:	7361 5f68 7265 7361 5f65 656d 6174 6164     ash_erase_metada
  a33b40:	6174 705f 6761 7365 6620 6961 2e6c 0a0d     ta_pages fail...
  a33b50:	0000 0000 555b 4750 205d 6d69 6761 2065     ....[UPG] image 
  a33b60:	6564 6f63 706d 6572 7373 665f 616c 3a67     decompress_flag:
  a33b70:	3020 2578 0d78 000a 555b 4750 205d 6564      0x%x...[UPG] de
  a33b80:	6f63 706d 6572 7373 7520 6770 0a0d 0000     compress upg....
  a33b90:	555b 4750 205d 6964 6666 7520 6770 0a0d     [UPG] diff upg..
  a33ba0:	0000 0000 555b 4750 205d 7566 6c6c 7520     ....[UPG] full u
  a33bb0:	6770 0a0d 0000 0000 555b 4750 205d 7773     pg......[UPG] sw
  a33bc0:	7469 6863 7320 6174 7574 2073 203d 7830     itch status = 0x
  a33bd0:	7825 0a0d 0000 0000 555b 4750 205d 6570     %x......[UPG] pe
  a33be0:	6672 726f 206d 7075 6164 6574 6920 616d     rform update ima
  a33bf0:	6567 6f20 6576 2e72 7220 7465 3d20 3020     ge over. ret = 0
  a33c00:	2578 0d78 000a 0000 555b 4750 205d 7473     x%x.....[UPG] st
  a33c10:	7261 2074 6570 6672 726f 206d 564e 6920     art perform NV i
  a33c20:	616d 6567 3a20 3020 2578 0d78 000a 0000     mage : 0x%x.....
  a33c30:	555b 4750 205d 6570 6672 726f 206d 564e     [UPG] perform NV
  a33c40:	6920 616d 6567 6f20 6576 2e72 7220 7465      image over. ret
  a33c50:	3d20 3020 2578 0d78 000a 0000 555b 4750      = 0x%x.....[UPG
  a33c60:	205d 7075 5f67 7270 636f 7365 5f73 7075     ] upg_process_up
  a33c70:	6164 6574 695f 616d 6567 745f 7361 736b     date_image_tasks
  a33c80:	6620 6961 2c6c 7220 7465 3d20 3020 2578      fail, ret = 0x%
  a33c90:	0d78 000a 555b 4750 205d 7061 2070 6973     x...[UPG] app si
  a33ca0:	657a 6920 2073 6f6e 2074 6e65 756f 6867     ze is not enough
  a33cb0:	2021 7061 5f70 6973 657a 3d20 3020 2578     ! app_size = 0x%
  a33cc0:	2c78 6420 6365 6d6f 7270 7365 5f73 656c     x, decompress_le
  a33cd0:	206e 203d 7830 7825 0a0d 0000 555b 4750     n = 0x%x....[UPG
  a33ce0:	205d 7075 5f67 7a6c 616d 645f 6365 646f     ] upg_lzma_decod
  a33cf0:	2065 6166 6c69 7220 7465 3d20 3020 2578     e fail ret = 0x%
  a33d00:	0d78 000a 0b58 00a3 0b86 00a3 0b9a 00a3     x...X...........
  a33d10:	0be0 00a3 0c3e 00a3 0c42 00a3 0c80 00a3     ....>...B.......
  a33d20:	0d98 00a3                                   ....

00a33d24 <g_itoaLowerDigits>:
  a33d24:	3130 3332 3534 3736 3938 6261 6463 6665     0123456789abcdef
  a33d34:	0078 0000                                   x...

00a33d38 <g_itoaUpperDigits>:
  a33d38:	3130 3332 3534 3736 3938 4241 4443 4645     0123456789ABCDEF
  a33d48:	0058 0000                                   X...

00a33d4c <stateTable.1749>:
	...
  a33d6c:	0006 0600 0100 0000 0000 0603 0600 0002     ................
  a33d7c:	0504 0505 0505 0505 0505 0000 0000 0000     ................
  a33d8c:	0000 0800 0800 0808 0700 0000 0007 0007     ................
  a33d9c:	0000 0800 0000 0000 0008 0007 0000 0000     ................
  a33dac:	0000 0800 0808 0808 0807 0007 0007 0800     ................
  a33dbc:	0708 0800 0807 0700 0008 0007 0000 0000     ................
	...
  a33e4c:	0800 0808 0808 0008 0100 0800 0808 0808     ................
  a33e5c:	0001 0400 0404 0808 0008 0000 0303 0508     ................
  a33e6c:	0808 0000 0200 0302 0505 0008 0000 0303     ................
  a33e7c:	0503 0805 0000 0200 0202 0808 0008 0000     ................
  a33e8c:	0606 0606 0606 0000 0700 0707 0707 0007     ................
  a33e9c:	0000 0000                                   ....
