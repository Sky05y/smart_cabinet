
loaderboot.elf:     file format elf32-littleriscv


Disassembly of section .text.entry:

00a20380 <_start>:
  a20380:	0040006f          	j	a20384 <Reset_Handler>

00a20384 <Reset_Handler>:
  a20384:	fffe6297          	auipc	t0,0xfffe6
  a20388:	71028293          	addi	t0,t0,1808 # a06a94 <g_uart_prag>
  a2038c:	00050313          	mv	t1,a0
  a20390:	00058393          	mv	t2,a1

00a20394 <set_arg_loop>:
  a20394:	00032e03          	lw	t3,0(t1)
  a20398:	01c2a023          	sw	t3,0(t0)
  a2039c:	00428293          	addi	t0,t0,4
  a203a0:	00430313          	addi	t1,t1,4
  a203a4:	ffc38393          	addi	t2,t2,-4
  a203a8:	fe7046e3          	bgtz	t2,a20394 <set_arg_loop>
  a203ac:	00006297          	auipc	t0,0x6
  a203b0:	bf028293          	addi	t0,t0,-1040 # a25f9c <trap_vector>
  a203b4:	00128293          	addi	t0,t0,1
  a203b8:	30529073          	csrw	mtvec,t0
  a203bc:	30005073          	csrwi	mstatus,0
  a203c0:	30405073          	csrwi	mie,0
  a203c4:	fffe3197          	auipc	gp,0xfffe3
  a203c8:	91818193          	addi	gp,gp,-1768 # a02cdc <_gp_>
  a203cc:	fffe2117          	auipc	sp,0xfffe2
  a203d0:	83410113          	addi	sp,sp,-1996 # a01c00 <__stack_top__>
  a203d4:	fffe0297          	auipc	t0,0xfffe0
  a203d8:	c2c28293          	addi	t0,t0,-980 # a00000 <g_system_stack_begin>
  a203dc:	fffe2317          	auipc	t1,0xfffe2
  a203e0:	02430313          	addi	t1,t1,36 # a02400 <g_efuse_clock_period>
  a203e4:	00628c63          	beq	t0,t1,a203fc <end_set_stack_loop>
  a203e8:	efbeb3b7          	lui	t2,0xefbeb
  a203ec:	dde38393          	addi	t2,t2,-546 # efbeadde <__data_load__+0xef1c350e>

00a203f0 <set_stack_loop>:
  a203f0:	0072a023          	sw	t2,0(t0)
  a203f4:	00428293          	addi	t0,t0,4
  a203f8:	fe62cce3          	blt	t0,t1,a203f0 <set_stack_loop>

00a203fc <end_set_stack_loop>:
  a203fc:	00000093          	li	ra,0
  a20400:	00000213          	li	tp,0
  a20404:	00000413          	li	s0,0
  a20408:	00000493          	li	s1,0
  a2040c:	00000513          	li	a0,0
  a20410:	00000593          	li	a1,0
  a20414:	00000613          	li	a2,0
  a20418:	00000693          	li	a3,0
  a2041c:	00000713          	li	a4,0
  a20420:	00000793          	li	a5,0
  a20424:	00000813          	li	a6,0
  a20428:	00000893          	li	a7,0
  a2042c:	00000913          	li	s2,0
  a20430:	00000993          	li	s3,0
  a20434:	00000a13          	li	s4,0
  a20438:	00000a93          	li	s5,0
  a2043c:	00000b13          	li	s6,0
  a20440:	00000b93          	li	s7,0
  a20444:	00000c13          	li	s8,0
  a20448:	00000c93          	li	s9,0
  a2044c:	00000d13          	li	s10,0
  a20450:	00000d93          	li	s11,0
  a20454:	00000e13          	li	t3,0
  a20458:	00000e93          	li	t4,0
  a2045c:	00000f13          	li	t5,0
  a20460:	00000f93          	li	t6,0
  a20464:	fffe2297          	auipc	t0,0xfffe2
  a20468:	f9c28293          	addi	t0,t0,-100 # a02400 <g_efuse_clock_period>
  a2046c:	00007317          	auipc	t1,0x7
  a20470:	46430313          	addi	t1,t1,1124 # a278d0 <__data_load__>
  a20474:	0dc00393          	li	t2,220
  a20478:	00038e63          	beqz	t2,a20494 <end_set_data_loop>

00a2047c <set_data_loop>:
  a2047c:	00032e03          	lw	t3,0(t1)
  a20480:	01c2a023          	sw	t3,0(t0)
  a20484:	00428293          	addi	t0,t0,4
  a20488:	00430313          	addi	t1,t1,4
  a2048c:	ffc38393          	addi	t2,t2,-4
  a20490:	fe7046e3          	bgtz	t2,a2047c <set_data_loop>

00a20494 <end_set_data_loop>:
  a20494:	fffe2297          	auipc	t0,0xfffe2
  a20498:	14428293          	addi	t0,t0,324 # a025d8 <g_flash_cmd_funcs>
  a2049c:	fffe6317          	auipc	t1,0xfffe6
  a204a0:	5f830313          	addi	t1,t1,1528 # a06a94 <g_uart_prag>
  a204a4:	00628a63          	beq	t0,t1,a204b8 <end_clear_bss_loop>
  a204a8:	00000393          	li	t2,0

00a204ac <clear_bss_loop>:
  a204ac:	0072a023          	sw	t2,0(t0)
  a204b0:	00428293          	addi	t0,t0,4
  a204b4:	fe62cce3          	blt	t0,t1,a204ac <clear_bss_loop>

00a204b8 <end_clear_bss_loop>:
  a204b8:	76a0106f          	j	a21c22 <start_loaderboot>

00a204bc <g_ram_exception_table>:
  a204bc:	00a25ea0 00a25236 00a25236 00a25236     .^..6R..6R..6R..
  a204cc:	00a25236 00a25236 00a25236 00a25236     6R..6R..6R..6R..
  a204dc:	00a25236 00a25236 00a25236 00a25236     6R..6R..6R..6R..
  a204ec:	00a2524a 00a25236 00a25236 00a25236     JR..6R..6R..6R..
  a204fc:	00a25236 00a25236 00a25236 00a25236     6R..6R..6R..6R..
  a2050c:	00a25236 00a25236 00a25236 00a25236     6R..6R..6R..6R..
  a2051c:	00a25236 00a25236 00a24e22 00a24e22     6R..6R.."N.."N..
  a2052c:	00a24e22 00a24e22 00a24e22 00a24e22     "N.."N.."N.."N..
  a2053c:	00a24e22 00a24e22 00a24e22 00a24e22     "N.."N.."N.."N..
  a2054c:	00a24e22 00a24e22 00a24e22 00a24e22     "N.."N.."N.."N..
  a2055c:	00a24e22 00a24e22 00a24e22 00a24e22     "N.."N.."N.."N..
  a2056c:	00a24e22 00a24e22 00a24e22 00a24e22     "N.."N.."N.."N..
  a2057c:	00a24e22 00a24e22 00a24e22 00a24e22     "N.."N.."N.."N..
  a2058c:	00a24e22 00a24e22 00a24e22 00a24e22     "N.."N.."N.."N..
  a2059c:	00a24e22 00a24e22 00a24e22 00a24e22     "N.."N.."N.."N..
  a205ac:	00a24e22 00a24e22 00a24e22 00a24e22     "N.."N.."N.."N..
  a205bc:	00a24e22 00a24e22 00a24e22 00a24e22     "N.."N.."N.."N..
  a205cc:	00a24e22 00a24e22 00a24e22 00a24e22     "N.."N.."N.."N..
  a205dc:	00a24e22 00a24e22                       "N.."N..

Disassembly of section .text:

00a205f0 <exc_syscall>:
  a205f0:	8082                	ret

00a205f2 <handle_syscall>:
  a205f2:	0411                	addi	s0,s0,4
  a205f4:	c022                	sw	s0,0(sp)
  a205f6:	3fed                	jal	ra,a205f0 <exc_syscall>
  a205f8:	42d2                	lw	t0,20(sp)
  a205fa:	34129073          	csrw	mepc,t0
  a205fe:	5d82                	lw	s11,32(sp)
  a20600:	5d12                	lw	s10,36(sp)
  a20602:	5ca2                	lw	s9,40(sp)
  a20604:	5c32                	lw	s8,44(sp)
  a20606:	5bc2                	lw	s7,48(sp)
  a20608:	5b52                	lw	s6,52(sp)
  a2060a:	5ae2                	lw	s5,56(sp)
  a2060c:	5a72                	lw	s4,60(sp)
  a2060e:	4986                	lw	s3,64(sp)
  a20610:	4916                	lw	s2,68(sp)
  a20612:	44a6                	lw	s1,72(sp)
  a20614:	4436                	lw	s0,76(sp)
  a20616:	4fc6                	lw	t6,80(sp)
  a20618:	4f56                	lw	t5,84(sp)
  a2061a:	4ee6                	lw	t4,88(sp)
  a2061c:	4e76                	lw	t3,92(sp)
  a2061e:	5886                	lw	a7,96(sp)
  a20620:	5816                	lw	a6,100(sp)
  a20622:	57a6                	lw	a5,104(sp)
  a20624:	5736                	lw	a4,108(sp)
  a20626:	56c6                	lw	a3,112(sp)
  a20628:	5656                	lw	a2,116(sp)
  a2062a:	55e6                	lw	a1,120(sp)
  a2062c:	5576                	lw	a0,124(sp)
  a2062e:	438a                	lw	t2,128(sp)
  a20630:	431a                	lw	t1,132(sp)
  a20632:	42aa                	lw	t0,136(sp)
  a20634:	40ba                	lw	ra,140(sp)
  a20636:	6149                	addi	sp,sp,144
  a20638:	30200073          	mret

00a2063c <__udivdi3>:
  a2063c:	4701                	li	a4,0
  a2063e:	a039                	j	a2064c <__udivmoddi4>

00a20640 <__umoddi3>:
  a20640:	8118                	push	{ra},-32
  a20642:	0038                	addi	a4,sp,8
  a20644:	2021                	jal	ra,a2064c <__udivmoddi4>
  a20646:	4522                	lw	a0,8(sp)
  a20648:	45b2                	lw	a1,12(sp)
  a2064a:	8114                	popret	{ra},32

00a2064c <__udivmoddi4>:
  a2064c:	88b6                	mv	a7,a3
  a2064e:	8832                	mv	a6,a2
  a20650:	87aa                	mv	a5,a0
  a20652:	8e2e                	mv	t3,a1
  a20654:	eedd                	bnez	a3,a20712 <__udivmoddi4+0xc6>
  a20656:	12c5f163          	bgeu	a1,a2,a20778 <__udivmoddi4+0x12c>
  a2065a:	66c1                	lui	a3,0x10
  a2065c:	1cd66a63          	bltu	a2,a3,a20830 <__udivmoddi4+0x1e4>
  a20660:	010006b7          	lui	a3,0x1000
  a20664:	3ad66563          	bltu	a2,a3,a20a0e <__udivmoddi4+0x3c2>
  a20668:	01865313          	srli	t1,a2,0x18
  a2066c:	48e1                	li	a7,24
  a2066e:	fffe2697          	auipc	a3,0xfffe2
  a20672:	e626a683          	lw	a3,-414(a3) # a024d0 <_GLOBAL_OFFSET_TABLE_+0x4>
  a20676:	969a                	add	a3,a3,t1
  a20678:	2294                	lbu	a3,0(a3)
  a2067a:	02000313          	li	t1,32
  a2067e:	98b6                	add	a7,a7,a3
  a20680:	41130333          	sub	t1,t1,a7
  a20684:	00030c63          	beqz	t1,a2069c <__udivmoddi4+0x50>
  a20688:	006595b3          	sll	a1,a1,t1
  a2068c:	011558b3          	srl	a7,a0,a7
  a20690:	00661833          	sll	a6,a2,t1
  a20694:	00b8ee33          	or	t3,a7,a1
  a20698:	006517b3          	sll	a5,a0,t1
  a2069c:	01085e93          	srli	t4,a6,0x10
  a206a0:	03de5f33          	divu	t5,t3,t4
  a206a4:	01081613          	slli	a2,a6,0x10
  a206a8:	8241                	srli	a2,a2,0x10
  a206aa:	0107d693          	srli	a3,a5,0x10
  a206ae:	03de75b3          	remu	a1,t3,t4
  a206b2:	03e60fb3          	mul	t6,a2,t5
  a206b6:	20b6a69b          	orshf	a3,a3,a1,sll,16
  a206ba:	01f6fa63          	bgeu	a3,t6,a206ce <__udivmoddi4+0x82>
  a206be:	96c2                	add	a3,a3,a6
  a206c0:	ffff0593          	addi	a1,t5,-1
  a206c4:	0106e463          	bltu	a3,a6,a206cc <__udivmoddi4+0x80>
  a206c8:	37f6e563          	bltu	a3,t6,a20a32 <__udivmoddi4+0x3e6>
  a206cc:	8f2e                	mv	t5,a1
  a206ce:	41f685b3          	sub	a1,a3,t6
  a206d2:	03d5d533          	divu	a0,a1,t4
  a206d6:	01079693          	slli	a3,a5,0x10
  a206da:	82c1                	srli	a3,a3,0x10
  a206dc:	03d5f5b3          	remu	a1,a1,t4
  a206e0:	02a60633          	mul	a2,a2,a0
  a206e4:	20b6a79b          	orshf	a5,a3,a1,sll,16
  a206e8:	00c7fa63          	bgeu	a5,a2,a206fc <__udivmoddi4+0xb0>
  a206ec:	97c2                	add	a5,a5,a6
  a206ee:	fff50693          	addi	a3,a0,-1
  a206f2:	0107e463          	bltu	a5,a6,a206fa <__udivmoddi4+0xae>
  a206f6:	32c7eb63          	bltu	a5,a2,a20a2c <__udivmoddi4+0x3e0>
  a206fa:	8536                	mv	a0,a3
  a206fc:	8f91                	sub	a5,a5,a2
  a206fe:	21e5251b          	orshf	a0,a0,t5,sll,16
  a20702:	4581                	li	a1,0
  a20704:	c711                	beqz	a4,a20710 <__udivmoddi4+0xc4>
  a20706:	0067d7b3          	srl	a5,a5,t1
  a2070a:	c31c                	sw	a5,0(a4)
  a2070c:	00072223          	sw	zero,4(a4)
  a20710:	8082                	ret
  a20712:	00d5f963          	bgeu	a1,a3,a20724 <__udivmoddi4+0xd8>
  a20716:	12070f63          	beqz	a4,a20854 <__udivmoddi4+0x208>
  a2071a:	c308                	sw	a0,0(a4)
  a2071c:	c34c                	sw	a1,4(a4)
  a2071e:	4501                	li	a0,0
  a20720:	4581                	li	a1,0
  a20722:	8082                	ret
  a20724:	67c1                	lui	a5,0x10
  a20726:	0ef6ed63          	bltu	a3,a5,a20820 <__udivmoddi4+0x1d4>
  a2072a:	010007b7          	lui	a5,0x1000
  a2072e:	2cf6ea63          	bltu	a3,a5,a20a02 <__udivmoddi4+0x3b6>
  a20732:	0186d893          	srli	a7,a3,0x18
  a20736:	4861                	li	a6,24
  a20738:	fffe2797          	auipc	a5,0xfffe2
  a2073c:	d987a783          	lw	a5,-616(a5) # a024d0 <_GLOBAL_OFFSET_TABLE_+0x4>
  a20740:	97c6                	add	a5,a5,a7
  a20742:	0007c303          	lbu	t1,0(a5)
  a20746:	02000e93          	li	t4,32
  a2074a:	9342                	add	t1,t1,a6
  a2074c:	406e8eb3          	sub	t4,t4,t1
  a20750:	180e9563          	bnez	t4,a208da <__udivmoddi4+0x28e>
  a20754:	00b6e463          	bltu	a3,a1,a2075c <__udivmoddi4+0x110>
  a20758:	2ec56363          	bltu	a0,a2,a20a3e <__udivmoddi4+0x3f2>
  a2075c:	40c50633          	sub	a2,a0,a2
  a20760:	00c53533          	sltu	a0,a0,a2
  a20764:	8d95                	sub	a1,a1,a3
  a20766:	40a58e33          	sub	t3,a1,a0
  a2076a:	4505                	li	a0,1
  a2076c:	4581                	li	a1,0
  a2076e:	d34d                	beqz	a4,a20710 <__udivmoddi4+0xc4>
  a20770:	c310                	sw	a2,0(a4)
  a20772:	01c72223          	sw	t3,4(a4)
  a20776:	8082                	ret
  a20778:	e601                	bnez	a2,a20780 <__udivmoddi4+0x134>
  a2077a:	4685                	li	a3,1
  a2077c:	02c6d833          	divu	a6,a3,a2
  a20780:	66c1                	lui	a3,0x10
  a20782:	0cd86063          	bltu	a6,a3,a20842 <__udivmoddi4+0x1f6>
  a20786:	010006b7          	lui	a3,0x1000
  a2078a:	26d86863          	bltu	a6,a3,a209fa <__udivmoddi4+0x3ae>
  a2078e:	01885613          	srli	a2,a6,0x18
  a20792:	48e1                	li	a7,24
  a20794:	fffe2697          	auipc	a3,0xfffe2
  a20798:	d3c6a683          	lw	a3,-708(a3) # a024d0 <_GLOBAL_OFFSET_TABLE_+0x4>
  a2079c:	96b2                	add	a3,a3,a2
  a2079e:	2290                	lbu	a2,0(a3)
  a207a0:	02000313          	li	t1,32
  a207a4:	9646                	add	a2,a2,a7
  a207a6:	40c30333          	sub	t1,t1,a2
  a207aa:	0a031863          	bnez	t1,a2085a <__udivmoddi4+0x20e>
  a207ae:	01081e93          	slli	t4,a6,0x10
  a207b2:	410586b3          	sub	a3,a1,a6
  a207b6:	01085f13          	srli	t5,a6,0x10
  a207ba:	010ede93          	srli	t4,t4,0x10
  a207be:	4585                	li	a1,1
  a207c0:	0107d893          	srli	a7,a5,0x10
  a207c4:	03e6de33          	divu	t3,a3,t5
  a207c8:	03e6f6b3          	remu	a3,a3,t5
  a207cc:	03de0633          	mul	a2,t3,t4
  a207d0:	20d8a69b          	orshf	a3,a7,a3,sll,16
  a207d4:	00c6fa63          	bgeu	a3,a2,a207e8 <__udivmoddi4+0x19c>
  a207d8:	96c2                	add	a3,a3,a6
  a207da:	fffe0513          	addi	a0,t3,-1
  a207de:	0106e463          	bltu	a3,a6,a207e6 <__udivmoddi4+0x19a>
  a207e2:	24c6eb63          	bltu	a3,a2,a20a38 <__udivmoddi4+0x3ec>
  a207e6:	8e2a                	mv	t3,a0
  a207e8:	40c68633          	sub	a2,a3,a2
  a207ec:	03e65533          	divu	a0,a2,t5
  a207f0:	01079693          	slli	a3,a5,0x10
  a207f4:	82c1                	srli	a3,a3,0x10
  a207f6:	03e67633          	remu	a2,a2,t5
  a207fa:	03d508b3          	mul	a7,a0,t4
  a207fe:	20c6a79b          	orshf	a5,a3,a2,sll,16
  a20802:	0117fa63          	bgeu	a5,a7,a20816 <__udivmoddi4+0x1ca>
  a20806:	97c2                	add	a5,a5,a6
  a20808:	fff50693          	addi	a3,a0,-1
  a2080c:	0107e463          	bltu	a5,a6,a20814 <__udivmoddi4+0x1c8>
  a20810:	2117eb63          	bltu	a5,a7,a20a26 <__udivmoddi4+0x3da>
  a20814:	8536                	mv	a0,a3
  a20816:	411787b3          	sub	a5,a5,a7
  a2081a:	21c5251b          	orshf	a0,a0,t3,sll,16
  a2081e:	b5dd                	j	a20704 <__udivmoddi4+0xb8>
  a20820:	0ff00793          	li	a5,255
  a20824:	1ed7f363          	bgeu	a5,a3,a20a0a <__udivmoddi4+0x3be>
  a20828:	0086d893          	srli	a7,a3,0x8
  a2082c:	4821                	li	a6,8
  a2082e:	b729                	j	a20738 <__udivmoddi4+0xec>
  a20830:	8332                	mv	t1,a2
  a20832:	0ff00693          	li	a3,255
  a20836:	e2c6fce3          	bgeu	a3,a2,a2066e <__udivmoddi4+0x22>
  a2083a:	00865313          	srli	t1,a2,0x8
  a2083e:	48a1                	li	a7,8
  a20840:	b53d                	j	a2066e <__udivmoddi4+0x22>
  a20842:	8642                	mv	a2,a6
  a20844:	0ff00693          	li	a3,255
  a20848:	f506f6e3          	bgeu	a3,a6,a20794 <__udivmoddi4+0x148>
  a2084c:	00885613          	srli	a2,a6,0x8
  a20850:	48a1                	li	a7,8
  a20852:	b789                	j	a20794 <__udivmoddi4+0x148>
  a20854:	4581                	li	a1,0
  a20856:	4501                	li	a0,0
  a20858:	8082                	ret
  a2085a:	00681833          	sll	a6,a6,t1
  a2085e:	00c5d8b3          	srl	a7,a1,a2
  a20862:	01085f13          	srli	t5,a6,0x10
  a20866:	03e8dfb3          	divu	t6,a7,t5
  a2086a:	01081e93          	slli	t4,a6,0x10
  a2086e:	006595b3          	sll	a1,a1,t1
  a20872:	00c55633          	srl	a2,a0,a2
  a20876:	010ede93          	srli	t4,t4,0x10
  a2087a:	8e4d                	or	a2,a2,a1
  a2087c:	01065e13          	srli	t3,a2,0x10
  a20880:	006517b3          	sll	a5,a0,t1
  a20884:	03e8f8b3          	remu	a7,a7,t5
  a20888:	03fe85b3          	mul	a1,t4,t6
  a2088c:	211e251b          	orshf	a0,t3,a7,sll,16
  a20890:	00b57b63          	bgeu	a0,a1,a208a6 <__udivmoddi4+0x25a>
  a20894:	9542                	add	a0,a0,a6
  a20896:	ffff8693          	addi	a3,t6,-1
  a2089a:	19056463          	bltu	a0,a6,a20a22 <__udivmoddi4+0x3d6>
  a2089e:	18b57263          	bgeu	a0,a1,a20a22 <__udivmoddi4+0x3d6>
  a208a2:	1ff9                	addi	t6,t6,-2
  a208a4:	9542                	add	a0,a0,a6
  a208a6:	8d0d                	sub	a0,a0,a1
  a208a8:	03e558b3          	divu	a7,a0,t5
  a208ac:	9e21                	uxth	a2
  a208ae:	03e57533          	remu	a0,a0,t5
  a208b2:	031e86b3          	mul	a3,t4,a7
  a208b6:	20a6259b          	orshf	a1,a2,a0,sll,16
  a208ba:	00d5fb63          	bgeu	a1,a3,a208d0 <__udivmoddi4+0x284>
  a208be:	95c2                	add	a1,a1,a6
  a208c0:	fff88613          	addi	a2,a7,-1
  a208c4:	1505eb63          	bltu	a1,a6,a20a1a <__udivmoddi4+0x3ce>
  a208c8:	14d5f963          	bgeu	a1,a3,a20a1a <__udivmoddi4+0x3ce>
  a208cc:	18f9                	addi	a7,a7,-2
  a208ce:	95c2                	add	a1,a1,a6
  a208d0:	40d586b3          	sub	a3,a1,a3
  a208d4:	21f8a59b          	orshf	a1,a7,t6,sll,16
  a208d8:	b5e5                	j	a207c0 <__udivmoddi4+0x174>
  a208da:	00665833          	srl	a6,a2,t1
  a208de:	01d696b3          	sll	a3,a3,t4
  a208e2:	00d866b3          	or	a3,a6,a3
  a208e6:	0065d7b3          	srl	a5,a1,t1
  a208ea:	0106de13          	srli	t3,a3,0x10
  a208ee:	03c7dfb3          	divu	t6,a5,t3
  a208f2:	01069893          	slli	a7,a3,0x10
  a208f6:	0108d893          	srli	a7,a7,0x10
  a208fa:	00655833          	srl	a6,a0,t1
  a208fe:	01d51f33          	sll	t5,a0,t4
  a20902:	01d595b3          	sll	a1,a1,t4
  a20906:	00b865b3          	or	a1,a6,a1
  a2090a:	0105d813          	srli	a6,a1,0x10
  a2090e:	01d61633          	sll	a2,a2,t4
  a20912:	03c7f7b3          	remu	a5,a5,t3
  a20916:	03f88533          	mul	a0,a7,t6
  a2091a:	20f8279b          	orshf	a5,a6,a5,sll,16
  a2091e:	00a7fb63          	bgeu	a5,a0,a20934 <__udivmoddi4+0x2e8>
  a20922:	97b6                	add	a5,a5,a3
  a20924:	ffff8813          	addi	a6,t6,-1
  a20928:	0ed7eb63          	bltu	a5,a3,a20a1e <__udivmoddi4+0x3d2>
  a2092c:	0ea7f963          	bgeu	a5,a0,a20a1e <__udivmoddi4+0x3d2>
  a20930:	1ff9                	addi	t6,t6,-2
  a20932:	97b6                	add	a5,a5,a3
  a20934:	8f89                	sub	a5,a5,a0
  a20936:	03c7d533          	divu	a0,a5,t3
  a2093a:	9da1                	uxth	a1
  a2093c:	03c7f7b3          	remu	a5,a5,t3
  a20940:	02a888b3          	mul	a7,a7,a0
  a20944:	20f5a59b          	orshf	a1,a1,a5,sll,16
  a20948:	0115fb63          	bgeu	a1,a7,a2095e <__udivmoddi4+0x312>
  a2094c:	95b6                	add	a1,a1,a3
  a2094e:	fff50793          	addi	a5,a0,-1
  a20952:	0cd5e263          	bltu	a1,a3,a20a16 <__udivmoddi4+0x3ca>
  a20956:	0d15f063          	bgeu	a1,a7,a20a16 <__udivmoddi4+0x3ca>
  a2095a:	1579                	addi	a0,a0,-2
  a2095c:	95b6                	add	a1,a1,a3
  a2095e:	63c1                	lui	t2,0x10
  a20960:	21f5251b          	orshf	a0,a0,t6,sll,16
  a20964:	fff38793          	addi	a5,t2,-1 # ffff <ccause+0xf03d>
  a20968:	00f57833          	and	a6,a0,a5
  a2096c:	01055e13          	srli	t3,a0,0x10
  a20970:	8ff1                	and	a5,a5,a2
  a20972:	01065f93          	srli	t6,a2,0x10
  a20976:	02fe02b3          	mul	t0,t3,a5
  a2097a:	411588b3          	sub	a7,a1,a7
  a2097e:	03f805b3          	mul	a1,a6,t6
  a20982:	02f80833          	mul	a6,a6,a5
  a20986:	9596                	add	a1,a1,t0
  a20988:	6105859b          	addshf	a1,a1,a6,srl,16
  a2098c:	03fe0e33          	mul	t3,t3,t6
  a20990:	0055f363          	bgeu	a1,t0,a20996 <__udivmoddi4+0x34a>
  a20994:	9e1e                	add	t3,t3,t2
  a20996:	67c1                	lui	a5,0x10
  a20998:	17fd                	addi	a5,a5,-1 # ffff <ccause+0xf03d>
  a2099a:	00f5ffb3          	and	t6,a1,a5
  a2099e:	00f877b3          	and	a5,a6,a5
  a209a2:	60be081b          	addshf	a6,t3,a1,srl,16
  a209a6:	21f7879b          	addshf	a5,a5,t6,sll,16
  a209aa:	0308ed63          	bltu	a7,a6,a209e4 <__udivmoddi4+0x398>
  a209ae:	03088963          	beq	a7,a6,a209e0 <__udivmoddi4+0x394>
  a209b2:	4581                	li	a1,0
  a209b4:	d4070ee3          	beqz	a4,a20710 <__udivmoddi4+0xc4>
  a209b8:	40ff07b3          	sub	a5,t5,a5
  a209bc:	00ff3f33          	sltu	t5,t5,a5
  a209c0:	410888b3          	sub	a7,a7,a6
  a209c4:	41e888b3          	sub	a7,a7,t5
  a209c8:	00689333          	sll	t1,a7,t1
  a209cc:	01d7d7b3          	srl	a5,a5,t4
  a209d0:	00f367b3          	or	a5,t1,a5
  a209d4:	01d8d8b3          	srl	a7,a7,t4
  a209d8:	c31c                	sw	a5,0(a4)
  a209da:	01172223          	sw	a7,4(a4)
  a209de:	8082                	ret
  a209e0:	fcff79e3          	bgeu	t5,a5,a209b2 <__udivmoddi4+0x366>
  a209e4:	40c78633          	sub	a2,a5,a2
  a209e8:	00c7b7b3          	sltu	a5,a5,a2
  a209ec:	40d80833          	sub	a6,a6,a3
  a209f0:	40f80833          	sub	a6,a6,a5
  a209f4:	157d                	addi	a0,a0,-1
  a209f6:	87b2                	mv	a5,a2
  a209f8:	bf6d                	j	a209b2 <__udivmoddi4+0x366>
  a209fa:	01085613          	srli	a2,a6,0x10
  a209fe:	48c1                	li	a7,16
  a20a00:	bb51                	j	a20794 <__udivmoddi4+0x148>
  a20a02:	0106d893          	srli	a7,a3,0x10
  a20a06:	4841                	li	a6,16
  a20a08:	bb05                	j	a20738 <__udivmoddi4+0xec>
  a20a0a:	4801                	li	a6,0
  a20a0c:	b335                	j	a20738 <__udivmoddi4+0xec>
  a20a0e:	01065313          	srli	t1,a2,0x10
  a20a12:	48c1                	li	a7,16
  a20a14:	b9a9                	j	a2066e <__udivmoddi4+0x22>
  a20a16:	853e                	mv	a0,a5
  a20a18:	b799                	j	a2095e <__udivmoddi4+0x312>
  a20a1a:	88b2                	mv	a7,a2
  a20a1c:	bd55                	j	a208d0 <__udivmoddi4+0x284>
  a20a1e:	8fc2                	mv	t6,a6
  a20a20:	bf11                	j	a20934 <__udivmoddi4+0x2e8>
  a20a22:	8fb6                	mv	t6,a3
  a20a24:	b549                	j	a208a6 <__udivmoddi4+0x25a>
  a20a26:	1579                	addi	a0,a0,-2
  a20a28:	97c2                	add	a5,a5,a6
  a20a2a:	b3f5                	j	a20816 <__udivmoddi4+0x1ca>
  a20a2c:	1579                	addi	a0,a0,-2
  a20a2e:	97c2                	add	a5,a5,a6
  a20a30:	b1f1                	j	a206fc <__udivmoddi4+0xb0>
  a20a32:	1f79                	addi	t5,t5,-2
  a20a34:	96c2                	add	a3,a3,a6
  a20a36:	b961                	j	a206ce <__udivmoddi4+0x82>
  a20a38:	1e79                	addi	t3,t3,-2
  a20a3a:	96c2                	add	a3,a3,a6
  a20a3c:	b375                	j	a207e8 <__udivmoddi4+0x19c>
  a20a3e:	862a                	mv	a2,a0
  a20a40:	4501                	li	a0,0
  a20a42:	b32d                	j	a2076c <__udivmoddi4+0x120>

00a20a44 <memset>:
  a20a44:	ca59                	beqz	a2,a20ada <memset+0x96>
  a20a46:	0ff5f793          	andi	a5,a1,255
  a20a4a:	a11c                	sb	a5,0(a0)
  a20a4c:	00c50733          	add	a4,a0,a2
  a20a50:	fef70fa3          	sb	a5,-1(a4)
  a20a54:	032661bb          	bltui	a2,3,a20ada <memset+0x96>
  a20a58:	b11c                	sb	a5,1(a0)
  a20a5a:	a13c                	sb	a5,2(a0)
  a20a5c:	fef70f23          	sb	a5,-2(a4)
  a20a60:	fef70ea3          	sb	a5,-3(a4)
  a20a64:	07166dbb          	bltui	a2,7,a20ada <memset+0x96>
  a20a68:	b13c                	sb	a5,3(a0)
  a20a6a:	fef70e23          	sb	a5,-4(a4)
  a20a6e:	46a1                	li	a3,8
  a20a70:	06c6f563          	bgeu	a3,a2,a20ada <memset+0x96>
  a20a74:	40a007b3          	neg	a5,a0
  a20a78:	8b8d                	andi	a5,a5,3
  a20a7a:	00f50733          	add	a4,a0,a5
  a20a7e:	8e1d                	sub	a2,a2,a5
  a20a80:	0ff5f593          	andi	a1,a1,255
  a20a84:	0101 0101 079f      	l.li	a5,0x1010101
  a20a8a:	02f585b3          	mul	a1,a1,a5
  a20a8e:	9a71                	andi	a2,a2,-4
  a20a90:	00c707b3          	add	a5,a4,a2
  a20a94:	c30c                	sw	a1,0(a4)
  a20a96:	feb7ae23          	sw	a1,-4(a5)
  a20a9a:	04c6f063          	bgeu	a3,a2,a20ada <memset+0x96>
  a20a9e:	c34c                	sw	a1,4(a4)
  a20aa0:	c70c                	sw	a1,8(a4)
  a20aa2:	feb7aa23          	sw	a1,-12(a5)
  a20aa6:	feb7ac23          	sw	a1,-8(a5)
  a20aaa:	19066c3b          	bltui	a2,25,a20ada <memset+0x96>
  a20aae:	c74c                	sw	a1,12(a4)
  a20ab0:	cb0c                	sw	a1,16(a4)
  a20ab2:	cb4c                	sw	a1,20(a4)
  a20ab4:	cf0c                	sw	a1,24(a4)
  a20ab6:	feb7a223          	sw	a1,-28(a5)
  a20aba:	feb7a423          	sw	a1,-24(a5)
  a20abe:	feb7a623          	sw	a1,-20(a5)
  a20ac2:	feb7a823          	sw	a1,-16(a5)
  a20ac6:	00477793          	andi	a5,a4,4
  a20aca:	07e1                	addi	a5,a5,24
  a20acc:	97ba                	add	a5,a5,a4
  a20ace:	46fd                	li	a3,31
  a20ad0:	9732                	add	a4,a4,a2
  a20ad2:	40f70633          	sub	a2,a4,a5
  a20ad6:	00c6e363          	bltu	a3,a2,a20adc <memset+0x98>
  a20ada:	8082                	ret
  a20adc:	c38c                	sw	a1,0(a5)
  a20ade:	c3cc                	sw	a1,4(a5)
  a20ae0:	c78c                	sw	a1,8(a5)
  a20ae2:	c7cc                	sw	a1,12(a5)
  a20ae4:	cb8c                	sw	a1,16(a5)
  a20ae6:	cbcc                	sw	a1,20(a5)
  a20ae8:	cf8c                	sw	a1,24(a5)
  a20aea:	cfcc                	sw	a1,28(a5)
  a20aec:	02078793          	addi	a5,a5,32
  a20af0:	b7cd                	j	a20ad2 <memset+0x8e>

00a20af2 <memcpy>:
  a20af2:	87aa                	mv	a5,a0
  a20af4:	0035f713          	andi	a4,a1,3
  a20af8:	c319                	beqz	a4,a20afe <memcpy+0xc>
  a20afa:	16061963          	bnez	a2,a20c6c <memcpy+0x17a>
  a20afe:	0037f813          	andi	a6,a5,3
  a20b02:	473d                	li	a4,15
  a20b04:	18080e63          	beqz	a6,a20ca0 <memcpy+0x1ae>
  a20b08:	20166abb          	bltui	a2,32,a20b72 <memcpy+0x80>
  a20b0c:	2194                	lbu	a3,0(a1)
  a20b0e:	4198                	lw	a4,0(a1)
  a20b10:	027807bb          	beqi	a6,2,a20cee <memcpy+0x1fc>
  a20b14:	488d                	li	a7,3
  a20b16:	23180563          	beq	a6,a7,a20d40 <memcpy+0x24e>
  a20b1a:	a394                	sb	a3,0(a5)
  a20b1c:	3194                	lbu	a3,1(a1)
  a20b1e:	1675                	addi	a2,a2,-3
  a20b20:	058d                	addi	a1,a1,3
  a20b22:	b394                	sb	a3,1(a5)
  a20b24:	fff5c683          	lbu	a3,-1(a1)
  a20b28:	078d                	addi	a5,a5,3
  a20b2a:	4e41                	li	t3,16
  a20b2c:	fed78fa3          	sb	a3,-1(a5)
  a20b30:	0015a303          	lw	t1,1(a1)
  a20b34:	0055a883          	lw	a7,5(a1)
  a20b38:	1641                	addi	a2,a2,-16
  a20b3a:	00831813          	slli	a6,t1,0x8
  a20b3e:	70e8271b          	orshf	a4,a6,a4,srl,24
  a20b42:	0095a803          	lw	a6,9(a1)
  a20b46:	c398                	sw	a4,0(a5)
  a20b48:	00889693          	slli	a3,a7,0x8
  a20b4c:	00881713          	slli	a4,a6,0x8
  a20b50:	7117271b          	orshf	a4,a4,a7,srl,24
  a20b54:	c798                	sw	a4,8(a5)
  a20b56:	00d5a703          	lw	a4,13(a1)
  a20b5a:	7066a69b          	orshf	a3,a3,t1,srl,24
  a20b5e:	c3d4                	sw	a3,4(a5)
  a20b60:	00871693          	slli	a3,a4,0x8
  a20b64:	7106a69b          	orshf	a3,a3,a6,srl,24
  a20b68:	c7d4                	sw	a3,12(a5)
  a20b6a:	05c1                	addi	a1,a1,16
  a20b6c:	07c1                	addi	a5,a5,16
  a20b6e:	fcce61e3          	bltu	t3,a2,a20b30 <memcpy+0x3e>
  a20b72:	01067713          	andi	a4,a2,16
  a20b76:	c351                	beqz	a4,a20bfa <memcpy+0x108>
  a20b78:	2198                	lbu	a4,0(a1)
  a20b7a:	07c1                	addi	a5,a5,16
  a20b7c:	05c1                	addi	a1,a1,16
  a20b7e:	fee78823          	sb	a4,-16(a5)
  a20b82:	ff15c703          	lbu	a4,-15(a1)
  a20b86:	fee788a3          	sb	a4,-15(a5)
  a20b8a:	ff25c703          	lbu	a4,-14(a1)
  a20b8e:	fee78923          	sb	a4,-14(a5)
  a20b92:	ff35c703          	lbu	a4,-13(a1)
  a20b96:	fee789a3          	sb	a4,-13(a5)
  a20b9a:	ff45c703          	lbu	a4,-12(a1)
  a20b9e:	fee78a23          	sb	a4,-12(a5)
  a20ba2:	ff55c703          	lbu	a4,-11(a1)
  a20ba6:	fee78aa3          	sb	a4,-11(a5)
  a20baa:	ff65c703          	lbu	a4,-10(a1)
  a20bae:	fee78b23          	sb	a4,-10(a5)
  a20bb2:	ff75c703          	lbu	a4,-9(a1)
  a20bb6:	fee78ba3          	sb	a4,-9(a5)
  a20bba:	ff85c703          	lbu	a4,-8(a1)
  a20bbe:	fee78c23          	sb	a4,-8(a5)
  a20bc2:	ff95c703          	lbu	a4,-7(a1)
  a20bc6:	fee78ca3          	sb	a4,-7(a5)
  a20bca:	ffa5c703          	lbu	a4,-6(a1)
  a20bce:	fee78d23          	sb	a4,-6(a5)
  a20bd2:	ffb5c703          	lbu	a4,-5(a1)
  a20bd6:	fee78da3          	sb	a4,-5(a5)
  a20bda:	ffc5c703          	lbu	a4,-4(a1)
  a20bde:	fee78e23          	sb	a4,-4(a5)
  a20be2:	ffd5c703          	lbu	a4,-3(a1)
  a20be6:	fee78ea3          	sb	a4,-3(a5)
  a20bea:	ffe5c703          	lbu	a4,-2(a1)
  a20bee:	fee78f23          	sb	a4,-2(a5)
  a20bf2:	fff5c703          	lbu	a4,-1(a1)
  a20bf6:	fee78fa3          	sb	a4,-1(a5)
  a20bfa:	00867713          	andi	a4,a2,8
  a20bfe:	c331                	beqz	a4,a20c42 <memcpy+0x150>
  a20c00:	2198                	lbu	a4,0(a1)
  a20c02:	07a1                	addi	a5,a5,8
  a20c04:	05a1                	addi	a1,a1,8
  a20c06:	fee78c23          	sb	a4,-8(a5)
  a20c0a:	ff95c703          	lbu	a4,-7(a1)
  a20c0e:	fee78ca3          	sb	a4,-7(a5)
  a20c12:	ffa5c703          	lbu	a4,-6(a1)
  a20c16:	fee78d23          	sb	a4,-6(a5)
  a20c1a:	ffb5c703          	lbu	a4,-5(a1)
  a20c1e:	fee78da3          	sb	a4,-5(a5)
  a20c22:	ffc5c703          	lbu	a4,-4(a1)
  a20c26:	fee78e23          	sb	a4,-4(a5)
  a20c2a:	ffd5c703          	lbu	a4,-3(a1)
  a20c2e:	fee78ea3          	sb	a4,-3(a5)
  a20c32:	ffe5c703          	lbu	a4,-2(a1)
  a20c36:	fee78f23          	sb	a4,-2(a5)
  a20c3a:	fff5c703          	lbu	a4,-1(a1)
  a20c3e:	fee78fa3          	sb	a4,-1(a5)
  a20c42:	00467713          	andi	a4,a2,4
  a20c46:	c359                	beqz	a4,a20ccc <memcpy+0x1da>
  a20c48:	2198                	lbu	a4,0(a1)
  a20c4a:	0791                	addi	a5,a5,4
  a20c4c:	0591                	addi	a1,a1,4
  a20c4e:	fee78e23          	sb	a4,-4(a5)
  a20c52:	ffd5c703          	lbu	a4,-3(a1)
  a20c56:	fee78ea3          	sb	a4,-3(a5)
  a20c5a:	ffe5c703          	lbu	a4,-2(a1)
  a20c5e:	fee78f23          	sb	a4,-2(a5)
  a20c62:	fff5c703          	lbu	a4,-1(a1)
  a20c66:	fee78fa3          	sb	a4,-1(a5)
  a20c6a:	a08d                	j	a20ccc <memcpy+0x1da>
  a20c6c:	0585                	addi	a1,a1,1
  a20c6e:	fff5c703          	lbu	a4,-1(a1)
  a20c72:	0785                	addi	a5,a5,1
  a20c74:	167d                	addi	a2,a2,-1
  a20c76:	fee78fa3          	sb	a4,-1(a5)
  a20c7a:	bdad                	j	a20af4 <memcpy+0x2>
  a20c7c:	4194                	lw	a3,0(a1)
  a20c7e:	07c1                	addi	a5,a5,16
  a20c80:	05c1                	addi	a1,a1,16
  a20c82:	fed7a823          	sw	a3,-16(a5)
  a20c86:	ff45a683          	lw	a3,-12(a1)
  a20c8a:	1641                	addi	a2,a2,-16
  a20c8c:	fed7aa23          	sw	a3,-12(a5)
  a20c90:	ff85a683          	lw	a3,-8(a1)
  a20c94:	fed7ac23          	sw	a3,-8(a5)
  a20c98:	ffc5a683          	lw	a3,-4(a1)
  a20c9c:	fed7ae23          	sw	a3,-4(a5)
  a20ca0:	fcc76ee3          	bltu	a4,a2,a20c7c <memcpy+0x18a>
  a20ca4:	00867713          	andi	a4,a2,8
  a20ca8:	cb11                	beqz	a4,a20cbc <memcpy+0x1ca>
  a20caa:	4198                	lw	a4,0(a1)
  a20cac:	07a1                	addi	a5,a5,8
  a20cae:	05a1                	addi	a1,a1,8
  a20cb0:	fee7ac23          	sw	a4,-8(a5)
  a20cb4:	ffc5a703          	lw	a4,-4(a1)
  a20cb8:	fee7ae23          	sw	a4,-4(a5)
  a20cbc:	00467713          	andi	a4,a2,4
  a20cc0:	c711                	beqz	a4,a20ccc <memcpy+0x1da>
  a20cc2:	4198                	lw	a4,0(a1)
  a20cc4:	0791                	addi	a5,a5,4
  a20cc6:	0591                	addi	a1,a1,4
  a20cc8:	fee7ae23          	sw	a4,-4(a5)
  a20ccc:	00267713          	andi	a4,a2,2
  a20cd0:	cb11                	beqz	a4,a20ce4 <memcpy+0x1f2>
  a20cd2:	2198                	lbu	a4,0(a1)
  a20cd4:	0789                	addi	a5,a5,2
  a20cd6:	0589                	addi	a1,a1,2
  a20cd8:	fee78f23          	sb	a4,-2(a5)
  a20cdc:	fff5c703          	lbu	a4,-1(a1)
  a20ce0:	fee78fa3          	sb	a4,-1(a5)
  a20ce4:	8a05                	andi	a2,a2,1
  a20ce6:	c219                	beqz	a2,a20cec <memcpy+0x1fa>
  a20ce8:	2198                	lbu	a4,0(a1)
  a20cea:	a398                	sb	a4,0(a5)
  a20cec:	8082                	ret
  a20cee:	a394                	sb	a3,0(a5)
  a20cf0:	3194                	lbu	a3,1(a1)
  a20cf2:	1679                	addi	a2,a2,-2
  a20cf4:	0589                	addi	a1,a1,2
  a20cf6:	b394                	sb	a3,1(a5)
  a20cf8:	4e45                	li	t3,17
  a20cfa:	0789                	addi	a5,a5,2
  a20cfc:	0025a303          	lw	t1,2(a1)
  a20d00:	0065a883          	lw	a7,6(a1)
  a20d04:	1641                	addi	a2,a2,-16
  a20d06:	01031813          	slli	a6,t1,0x10
  a20d0a:	60e8271b          	orshf	a4,a6,a4,srl,16
  a20d0e:	00a5a803          	lw	a6,10(a1)
  a20d12:	c398                	sw	a4,0(a5)
  a20d14:	01089693          	slli	a3,a7,0x10
  a20d18:	01081713          	slli	a4,a6,0x10
  a20d1c:	6117271b          	orshf	a4,a4,a7,srl,16
  a20d20:	c798                	sw	a4,8(a5)
  a20d22:	00e5a703          	lw	a4,14(a1)
  a20d26:	6066a69b          	orshf	a3,a3,t1,srl,16
  a20d2a:	c3d4                	sw	a3,4(a5)
  a20d2c:	01071693          	slli	a3,a4,0x10
  a20d30:	6106a69b          	orshf	a3,a3,a6,srl,16
  a20d34:	c7d4                	sw	a3,12(a5)
  a20d36:	05c1                	addi	a1,a1,16
  a20d38:	07c1                	addi	a5,a5,16
  a20d3a:	fcce61e3          	bltu	t3,a2,a20cfc <memcpy+0x20a>
  a20d3e:	bd15                	j	a20b72 <memcpy+0x80>
  a20d40:	a394                	sb	a3,0(a5)
  a20d42:	0585                	addi	a1,a1,1
  a20d44:	167d                	addi	a2,a2,-1
  a20d46:	0785                	addi	a5,a5,1
  a20d48:	4e49                	li	t3,18
  a20d4a:	0035a303          	lw	t1,3(a1)
  a20d4e:	0075a883          	lw	a7,7(a1)
  a20d52:	1641                	addi	a2,a2,-16
  a20d54:	01831813          	slli	a6,t1,0x18
  a20d58:	50e8271b          	orshf	a4,a6,a4,srl,8
  a20d5c:	00b5a803          	lw	a6,11(a1)
  a20d60:	c398                	sw	a4,0(a5)
  a20d62:	01889693          	slli	a3,a7,0x18
  a20d66:	01881713          	slli	a4,a6,0x18
  a20d6a:	5117271b          	orshf	a4,a4,a7,srl,8
  a20d6e:	c798                	sw	a4,8(a5)
  a20d70:	00f5a703          	lw	a4,15(a1)
  a20d74:	5066a69b          	orshf	a3,a3,t1,srl,8
  a20d78:	c3d4                	sw	a3,4(a5)
  a20d7a:	01871693          	slli	a3,a4,0x18
  a20d7e:	5106a69b          	orshf	a3,a3,a6,srl,8
  a20d82:	c7d4                	sw	a3,12(a5)
  a20d84:	05c1                	addi	a1,a1,16
  a20d86:	07c1                	addi	a5,a5,16
  a20d88:	fcce61e3          	bltu	t3,a2,a20d4a <memcpy+0x258>
  a20d8c:	b3dd                	j	a20b72 <memcpy+0x80>

00a20d8e <memcmp>:
  a20d8e:	962a                	add	a2,a2,a0
  a20d90:	00c50c63          	beq	a0,a2,a20da8 <memcmp+0x1a>
  a20d94:	211c                	lbu	a5,0(a0)
  a20d96:	2198                	lbu	a4,0(a1)
  a20d98:	00e78563          	beq	a5,a4,a20da2 <memcmp+0x14>
  a20d9c:	40e78533          	sub	a0,a5,a4
  a20da0:	8082                	ret
  a20da2:	0505                	addi	a0,a0,1
  a20da4:	0585                	addi	a1,a1,1
  a20da6:	b7ed                	j	a20d90 <memcmp+0x2>
  a20da8:	4501                	li	a0,0
  a20daa:	8082                	ret

00a20dac <strlen>:
  a20dac:	87aa                	mv	a5,a0
  a20dae:	0037f713          	andi	a4,a5,3
  a20db2:	e31d                	bnez	a4,a20dd8 <strlen+0x2c>
  a20db4:	fefe feff 059f      	l.li	a1,0xfefefeff
  a20dba:	8080 8080 061f      	l.li	a2,0x80808080
  a20dc0:	4394                	lw	a3,0(a5)
  a20dc2:	00b68733          	add	a4,a3,a1
  a20dc6:	fff6c693          	not	a3,a3
  a20dca:	8f75                	and	a4,a4,a3
  a20dcc:	8f71                	and	a4,a4,a2
  a20dce:	cf01                	beqz	a4,a20de6 <strlen+0x3a>
  a20dd0:	2398                	lbu	a4,0(a5)
  a20dd2:	c709                	beqz	a4,a20ddc <strlen+0x30>
  a20dd4:	0785                	addi	a5,a5,1
  a20dd6:	bfed                	j	a20dd0 <strlen+0x24>
  a20dd8:	2398                	lbu	a4,0(a5)
  a20dda:	e701                	bnez	a4,a20de2 <strlen+0x36>
  a20ddc:	40a78533          	sub	a0,a5,a0
  a20de0:	8082                	ret
  a20de2:	0785                	addi	a5,a5,1
  a20de4:	b7e9                	j	a20dae <strlen+0x2>
  a20de6:	0791                	addi	a5,a5,4
  a20de8:	bfe1                	j	a20dc0 <strlen+0x14>

00a20dea <reset>:
  a20dea:	8018                	push	{ra},-16
  a20dec:	619030ef          	jal	ra,a24c04 <update_reset_count>
  a20df0:	400027b7          	lui	a5,0x40002
  a20df4:	4711                	li	a4,4
  a20df6:	10e79823          	sh	a4,272(a5) # 40002110 <__data_load__+0x3f5da840>
  a20dfa:	a001                	j	a20dfa <reset+0x10>

00a20dfc <boot_get_flash_funcs>:
  a20dfc:	00a0 25d8 051f      	l.li	a0,0xa025d8
  a20e02:	8082                	ret

00a20e04 <boot_regist_flash_cmd>:
  a20e04:	8018                	push	{ra},-16
  a20e06:	862a                	mv	a2,a0
  a20e08:	46d1                	li	a3,20
  a20e0a:	45d1                	li	a1,20
  a20e0c:	00a0 25d8 051f      	l.li	a0,0xa025d8
  a20e12:	65c040ef          	jal	ra,a2546e <memcpy_s>
  a20e16:	c501                	beqz	a0,a20e1e <boot_regist_flash_cmd+0x1a>
  a20e18:	80000537          	lui	a0,0x80000
  a20e1c:	0511                	addi	a0,a0,4 # 80000004 <__data_load__+0x7f5d8734>
  a20e1e:	8014                	popret	{ra},16

00a20e20 <upload_send_file_info>:
  a20e20:	8058                	push	{ra,s0-s3},-32
  a20e22:	00a0 25ec 079f      	l.li	a5,0xa025ec
  a20e28:	4380                	lw	s0,0(a5)
  a20e2a:	283c                	lbu	a5,18(s0)
  a20e2c:	01340913          	addi	s2,s0,19
  a20e30:	8bbd                	andi	a5,a5,15
  a20e32:	c799                	beqz	a5,a20e40 <upload_send_file_info+0x20>
  a20e34:	08500593          	li	a1,133
  a20e38:	854a                	mv	a0,s2
  a20e3a:	8050                	pop	{ra,s0-s3},32
  a20e3c:	4030306f          	j	a24a3e <serial_put_buf>
  a20e40:	40500693          	li	a3,1029
  a20e44:	4601                	li	a2,0
  a20e46:	40500593          	li	a1,1029
  a20e4a:	854a                	mv	a0,s2
  a20e4c:	4044                	lw	s1,4(s0)
  a20e4e:	658040ef          	jal	ra,a254a6 <memset_s>
  a20e52:	4785                	li	a5,1
  a20e54:	b83c                	sb	a5,19(s0)
  a20e56:	381c                	lbu	a5,17(s0)
  a20e58:	4410                	lw	a2,8(s0)
  a20e5a:	01640993          	addi	s3,s0,22
  a20e5e:	a85c                	sb	a5,20(s0)
  a20e60:	fff7c793          	not	a5,a5
  a20e64:	b85c                	sb	a5,21(s0)
  a20e66:	46ad                	li	a3,11
  a20e68:	08000593          	li	a1,128
  a20e6c:	854e                	mv	a0,s3
  a20e6e:	600040ef          	jal	ra,a2546e <memcpy_s>
  a20e72:	e529                	bnez	a0,a20ebc <upload_send_file_info+0x9c>
  a20e74:	02140793          	addi	a5,s0,33
  a20e78:	8726                	mv	a4,s1
  a20e7a:	86be                	mv	a3,a5
  a20e7c:	863e                	mv	a2,a5
  a20e7e:	4529                	li	a0,10
  a20e80:	40f605b3          	sub	a1,a2,a5
  a20e84:	02e04d63          	bgtz	a4,a20ebe <upload_send_file_info+0x9e>
  a20e88:	00b78733          	add	a4,a5,a1
  a20e8c:	82b7879b          	addshf	a5,a5,a1,sra,1
  a20e90:	177d                	addi	a4,a4,-1
  a20e92:	04f69063          	bne	a3,a5,a20ed2 <upload_send_file_info+0xb2>
  a20e96:	08000613          	li	a2,128
  a20e9a:	85ce                	mv	a1,s3
  a20e9c:	4501                	li	a0,0
  a20e9e:	243000ef          	jal	ra,a218e0 <crc16_ccitt>
  a20ea2:	00855793          	srli	a5,a0,0x8
  a20ea6:	08f40b23          	sb	a5,150(s0)
  a20eaa:	08a40ba3          	sb	a0,151(s0)
  a20eae:	08500593          	li	a1,133
  a20eb2:	854a                	mv	a0,s2
  a20eb4:	38b030ef          	jal	ra,a24a3e <serial_put_buf>
  a20eb8:	4789                	li	a5,2
  a20eba:	a81c                	sb	a5,16(s0)
  a20ebc:	8054                	popret	{ra,s0-s3},32
  a20ebe:	02a765b3          	rem	a1,a4,a0
  a20ec2:	0605                	addi	a2,a2,1
  a20ec4:	03058593          	addi	a1,a1,48
  a20ec8:	feb60fa3          	sb	a1,-1(a2)
  a20ecc:	02a74733          	div	a4,a4,a0
  a20ed0:	bf45                	j	a20e80 <upload_send_file_info+0x60>
  a20ed2:	230c                	lbu	a1,0(a4)
  a20ed4:	2290                	lbu	a2,0(a3)
  a20ed6:	0685                	addi	a3,a3,1
  a20ed8:	feb68fa3          	sb	a1,-1(a3)
  a20edc:	a310                	sb	a2,0(a4)
  a20ede:	bf4d                	j	a20e90 <upload_send_file_info+0x70>

00a20ee0 <upload_send_data>:
  a20ee0:	8058                	push	{ra,s0-s3},-32
  a20ee2:	00a0 25ec 079f      	l.li	a5,0xa025ec
  a20ee8:	4380                	lw	s0,0(a5)
  a20eea:	283c                	lbu	a5,18(s0)
  a20eec:	01340913          	addi	s2,s0,19
  a20ef0:	8bbd                	andi	a5,a5,15
  a20ef2:	cf81                	beqz	a5,a20f0a <upload_send_data+0x2a>
  a20ef4:	383c                	lbu	a5,19(s0)
  a20ef6:	08500593          	li	a1,133
  a20efa:	0107823b          	beqi	a5,1,a20f02 <upload_send_data+0x22>
  a20efe:	40500593          	li	a1,1029
  a20f02:	854a                	mv	a0,s2
  a20f04:	8050                	pop	{ra,s0-s3},32
  a20f06:	3390306f          	j	a24a3e <serial_put_buf>
  a20f0a:	445c                	lw	a5,12(s0)
  a20f0c:	4044                	lw	s1,4(s0)
  a20f0e:	4669                	li	a2,26
  a20f10:	40500693          	li	a3,1029
  a20f14:	8c9d                	sub	s1,s1,a5
  a20f16:	4795                	li	a5,5
  a20f18:	a81c                	sb	a5,16(s0)
  a20f1a:	40500593          	li	a1,1029
  a20f1e:	854a                	mv	a0,s2
  a20f20:	586040ef          	jal	ra,a254a6 <memset_s>
  a20f24:	4789                	li	a5,2
  a20f26:	b83c                	sb	a5,19(s0)
  a20f28:	381c                	lbu	a5,17(s0)
  a20f2a:	01640993          	addi	s3,s0,22
  a20f2e:	4010                	lw	a2,0(s0)
  a20f30:	0785                	addi	a5,a5,1
  a20f32:	9f81                	uxtb	a5
  a20f34:	b81c                	sb	a5,17(s0)
  a20f36:	a85c                	sb	a5,20(s0)
  a20f38:	fff7c793          	not	a5,a5
  a20f3c:	b85c                	sb	a5,21(s0)
  a20f3e:	445c                	lw	a5,12(s0)
  a20f40:	8114f13b          	bgeui	s1,129,a20f84 <upload_send_data+0xa4>
  a20f44:	4705                	li	a4,1
  a20f46:	b838                	sb	a4,19(s0)
  a20f48:	86a6                	mv	a3,s1
  a20f4a:	963e                	add	a2,a2,a5
  a20f4c:	08000593          	li	a1,128
  a20f50:	854e                	mv	a0,s3
  a20f52:	51c040ef          	jal	ra,a2546e <memcpy_s>
  a20f56:	e52d                	bnez	a0,a20fc0 <upload_send_data+0xe0>
  a20f58:	85ce                	mv	a1,s3
  a20f5a:	08000613          	li	a2,128
  a20f5e:	183000ef          	jal	ra,a218e0 <crc16_ccitt>
  a20f62:	00855793          	srli	a5,a0,0x8
  a20f66:	08f40b23          	sb	a5,150(s0)
  a20f6a:	08a40ba3          	sb	a0,151(s0)
  a20f6e:	08500593          	li	a1,133
  a20f72:	854a                	mv	a0,s2
  a20f74:	2cb030ef          	jal	ra,a24a3e <serial_put_buf>
  a20f78:	445c                	lw	a5,12(s0)
  a20f7a:	94be                	add	s1,s1,a5
  a20f7c:	c444                	sw	s1,12(s0)
  a20f7e:	8050                	pop	{ra,s0-s3},32
  a20f80:	46d0306f          	j	a24bec <boot_wdt_kick>
  a20f84:	40000713          	li	a4,1024
  a20f88:	00977663          	bgeu	a4,s1,a20f94 <upload_send_data+0xb4>
  a20f8c:	4711                	li	a4,4
  a20f8e:	a818                	sb	a4,16(s0)
  a20f90:	40000493          	li	s1,1024
  a20f94:	86a6                	mv	a3,s1
  a20f96:	963e                	add	a2,a2,a5
  a20f98:	40000593          	li	a1,1024
  a20f9c:	854e                	mv	a0,s3
  a20f9e:	4d0040ef          	jal	ra,a2546e <memcpy_s>
  a20fa2:	ed19                	bnez	a0,a20fc0 <upload_send_data+0xe0>
  a20fa4:	85ce                	mv	a1,s3
  a20fa6:	40000613          	li	a2,1024
  a20faa:	137000ef          	jal	ra,a218e0 <crc16_ccitt>
  a20fae:	00855793          	srli	a5,a0,0x8
  a20fb2:	40f40b23          	sb	a5,1046(s0)
  a20fb6:	40a40ba3          	sb	a0,1047(s0)
  a20fba:	40500593          	li	a1,1029
  a20fbe:	bf55                	j	a20f72 <upload_send_data+0x92>
  a20fc0:	8054                	popret	{ra,s0-s3},32

00a20fc2 <upload_send_null_info>:
  a20fc2:	8038                	push	{ra,s0-s1},-16
  a20fc4:	00a0 25ec 079f      	l.li	a5,0xa025ec
  a20fca:	4380                	lw	s0,0(a5)
  a20fcc:	08000693          	li	a3,128
  a20fd0:	4601                	li	a2,0
  a20fd2:	01340493          	addi	s1,s0,19
  a20fd6:	40500593          	li	a1,1029
  a20fda:	8526                	mv	a0,s1
  a20fdc:	4ca040ef          	jal	ra,a254a6 <memset_s>
  a20fe0:	4785                	li	a5,1
  a20fe2:	b83c                	sb	a5,19(s0)
  a20fe4:	57fd                	li	a5,-1
  a20fe6:	b85c                	sb	a5,21(s0)
  a20fe8:	08000613          	li	a2,128
  a20fec:	01640593          	addi	a1,s0,22
  a20ff0:	00040a23          	sb	zero,20(s0)
  a20ff4:	4501                	li	a0,0
  a20ff6:	0eb000ef          	jal	ra,a218e0 <crc16_ccitt>
  a20ffa:	00855793          	srli	a5,a0,0x8
  a20ffe:	08f40b23          	sb	a5,150(s0)
  a21002:	08a40ba3          	sb	a0,151(s0)
  a21006:	08500593          	li	a1,133
  a2100a:	8526                	mv	a0,s1
  a2100c:	233030ef          	jal	ra,a24a3e <serial_put_buf>
  a21010:	479d                	li	a5,7
  a21012:	a81c                	sb	a5,16(s0)
  a21014:	8034                	popret	{ra,s0-s1},16

00a21016 <download_image>:
  a21016:	8058                	push	{ra,s0-s3},-32
  a21018:	842e                	mv	s0,a1
  a2101a:	84aa                	mv	s1,a0
  a2101c:	89b2                	mv	s3,a2
  a2101e:	3bf9                	jal	ra,a20dfc <boot_get_flash_funcs>
  a21020:	892a                	mv	s2,a0
  a21022:	3cb030ef          	jal	ra,a24bec <boot_wdt_kick>
  a21026:	ff1416bb          	bnei	s0,-1,a21080 <download_image+0x6a>
  a2102a:	5c5000ef          	jal	ra,a21dee <loader_download_is_flash_all_erased>
  a2102e:	cd11                	beqz	a0,a2104a <download_image+0x34>
  a21030:	00c92783          	lw	a5,12(s2)
  a21034:	85a2                	mv	a1,s0
  a21036:	8526                	mv	a0,s1
  a21038:	9782                	jalr	a5
  a2103a:	cd11                	beqz	a0,a21056 <download_image+0x40>
  a2103c:	0000 3622 051f      	l.li	a0,0x3622
  a21042:	2bd030ef          	jal	ra,a24afe <boot_put_errno>
  a21046:	557d                	li	a0,-1
  a21048:	8054                	popret	{ra,s0-s3},32
  a2104a:	00c92783          	lw	a5,12(s2)
  a2104e:	55fd                	li	a1,-1
  a21050:	9782                	jalr	a5
  a21052:	f56d                	bnez	a0,a2103c <download_image+0x26>
  a21054:	547d                	li	s0,-1
  a21056:	397030ef          	jal	ra,a24bec <boot_wdt_kick>
  a2105a:	00a2 67f0 051f      	l.li	a0,0xa267f0
  a21060:	2c9030ef          	jal	ra,a24b28 <boot_msg0>
  a21064:	05a00513          	li	a0,90
  a21068:	2cb1                	jal	ra,a212c4 <loader_ack>
  a2106a:	86ce                	mv	a3,s3
  a2106c:	4601                	li	a2,0
  a2106e:	85a2                	mv	a1,s0
  a21070:	8526                	mv	a0,s1
  a21072:	09f000ef          	jal	ra,a21910 <loader_serial_ymodem>
  a21076:	00a03533          	snez	a0,a0
  a2107a:	40a00533          	neg	a0,a0
  a2107e:	b7e9                	j	a21048 <download_image+0x32>
  a21080:	f845                	bnez	s0,a21030 <download_image+0x1a>
  a21082:	bfc9                	j	a21054 <download_image+0x3e>

00a21084 <download_factory_image>:
  a21084:	bf49                	j	a21016 <download_image>

00a21086 <upload_data>:
  a21086:	8198                	push	{ra,s0-s7},-64
  a21088:	00a02437          	lui	s0,0xa02
  a2108c:	5ec42783          	lw	a5,1516(s0) # a025ec <g_upload_ctx>
  a21090:	84aa                	mv	s1,a0
  a21092:	892e                	mv	s2,a1
  a21094:	5ec40413          	addi	s0,s0,1516
  a21098:	e791                	bnez	a5,a210a4 <upload_data+0x1e>
  a2109a:	41800513          	li	a0,1048
  a2109e:	3a5030ef          	jal	ra,a24c42 <boot_malloc>
  a210a2:	c008                	sw	a0,0(s0)
  a210a4:	4008                	lw	a0,0(s0)
  a210a6:	5bfd                	li	s7,-1
  a210a8:	c941                	beqz	a0,a21138 <upload_data+0xb2>
  a210aa:	41800693          	li	a3,1048
  a210ae:	4601                	li	a2,0
  a210b0:	41800593          	li	a1,1048
  a210b4:	3f2040ef          	jal	ra,a254a6 <memset_s>
  a210b8:	401c                	lw	a5,0(s0)
  a210ba:	00200737          	lui	a4,0x200
  a210be:	94ba                	add	s1,s1,a4
  a210c0:	c384                	sw	s1,0(a5)
  a210c2:	401c                	lw	a5,0(s0)
  a210c4:	00a2 6804 071f      	l.li	a4,0xa26804
  a210ca:	05a00513          	li	a0,90
  a210ce:	c798                	sw	a4,8(a5)
  a210d0:	4705                	li	a4,1
  a210d2:	0127a223          	sw	s2,4(a5)
  a210d6:	ab98                	sb	a4,16(a5)
  a210d8:	22f5                	jal	ra,a212c4 <loader_ack>
  a210da:	4000                	lw	s0,0(s0)
  a210dc:	0098 9680 049f      	l.li	s1,0x989680
  a210e2:	00a26937          	lui	s2,0xa26
  a210e6:	04300993          	li	s3,67
  a210ea:	7d890913          	addi	s2,s2,2008 # a267d8 <__clz_tab+0x100>
  a210ee:	8a26                	mv	s4,s1
  a210f0:	001e 8480 0a9f      	l.li	s5,0x1e8480
  a210f6:	00f10593          	addi	a1,sp,15
  a210fa:	8526                	mv	a0,s1
  a210fc:	1db030ef          	jal	ra,a24ad6 <serial_getc_timeout>
  a21100:	8baa                	mv	s7,a0
  a21102:	f975                	bnez	a0,a210f6 <upload_data+0x70>
  a21104:	00f14b03          	lbu	s6,15(sp)
  a21108:	013b1d63          	bne	s6,s3,a21122 <upload_data+0x9c>
  a2110c:	281c                	lbu	a5,16(s0)
  a2110e:	00040923          	sb	zero,18(s0)
  a21112:	03178dbb          	beqi	a5,3,a21188 <upload_data+0x102>
  a21116:	062780bb          	beqi	a5,6,a21198 <upload_data+0x112>
  a2111a:	01f7973b          	bnei	a5,1,a210f6 <upload_data+0x70>
  a2111e:	3309                	jal	ra,a20e20 <upload_send_file_info>
  a21120:	bfd9                	j	a210f6 <upload_data+0x70>
  a21122:	060b1ebb          	bnei	s6,6,a2115c <upload_data+0xd6>
  a21126:	281c                	lbu	a5,16(s0)
  a21128:	00040923          	sb	zero,18(s0)
  a2112c:	0707943b          	bnei	a5,7,a2113c <upload_data+0xb6>
  a21130:	06400513          	li	a0,100
  a21134:	0c3030ef          	jal	ra,a249f6 <mdelay>
  a21138:	855e                	mv	a0,s7
  a2113a:	8194                	popret	{ra,s0-s7},64
  a2113c:	0417833b          	beqi	a5,4,a21188 <upload_data+0x102>
  a21140:	0507843b          	beqi	a5,5,a21150 <upload_data+0xca>
  a21144:	02e79cbb          	bnei	a5,2,a210f6 <upload_data+0x70>
  a21148:	478d                	li	a5,3
  a2114a:	a81c                	sb	a5,16(s0)
  a2114c:	84d6                	mv	s1,s5
  a2114e:	b765                	j	a210f6 <upload_data+0x70>
  a21150:	4511                	li	a0,4
  a21152:	0a9030ef          	jal	ra,a249fa <serial_putc>
  a21156:	01640823          	sb	s6,16(s0)
  a2115a:	bf71                	j	a210f6 <upload_data+0x70>
  a2115c:	151b103b          	bnei	s6,21,a2119c <upload_data+0x116>
  a21160:	283c                	lbu	a5,18(s0)
  a21162:	8bbd                	andi	a5,a5,15
  a21164:	a83c                	sb	a5,18(s0)
  a21166:	283e                	lhu	a5,18(s0)
  a21168:	0785                	addi	a5,a5,1
  a2116a:	8bbd                	andi	a5,a5,15
  a2116c:	a83c                	sb	a5,18(s0)
  a2116e:	c7a9                	beqz	a5,a211b8 <upload_data+0x132>
  a21170:	281c                	lbu	a5,16(s0)
  a21172:	17f9                	addi	a5,a5,-2
  a21174:	9f81                	uxtb	a5
  a21176:	06e7f03b          	bgeui	a5,6,a210f6 <upload_data+0x70>
  a2117a:	04f9079b          	addshf	a5,s2,a5,sll,2
  a2117e:	439c                	lw	a5,0(a5)
  a21180:	8782                	jr	a5
  a21182:	3979                	jal	ra,a20e20 <upload_send_file_info>
  a21184:	84d2                	mv	s1,s4
  a21186:	bf85                	j	a210f6 <upload_data+0x70>
  a21188:	3ba1                	jal	ra,a20ee0 <upload_send_data>
  a2118a:	b7b5                	j	a210f6 <upload_data+0x70>
  a2118c:	4511                	li	a0,4
  a2118e:	06d030ef          	jal	ra,a249fa <serial_putc>
  a21192:	4799                	li	a5,6
  a21194:	a81c                	sb	a5,16(s0)
  a21196:	b785                	j	a210f6 <upload_data+0x70>
  a21198:	352d                	jal	ra,a20fc2 <upload_send_null_info>
  a2119a:	bfb1                	j	a210f6 <upload_data+0x70>
  a2119c:	18db16bb          	bnei	s6,24,a210f6 <upload_data+0x70>
  a211a0:	283c                	lbu	a5,18(s0)
  a211a2:	9bc1                	andi	a5,a5,-16
  a211a4:	a83c                	sb	a5,18(s0)
  a211a6:	481c                	lw	a5,16(s0)
  a211a8:	83d1                	srli	a5,a5,0x14
  a211aa:	0785                	addi	a5,a5,1
  a211ac:	8bbd                	andi	a5,a5,15
  a211ae:	00479713          	slli	a4,a5,0x4
  a211b2:	a838                	sb	a4,18(s0)
  a211b4:	03d790bb          	bnei	a5,3,a210f6 <upload_data+0x70>
  a211b8:	5bfd                	li	s7,-1
  a211ba:	bfbd                	j	a21138 <upload_data+0xb2>

00a211bc <loader_download_image>:
  a211bc:	8268                	push	{ra,s0-s4},-64
  a211be:	2d14                	lbu	a3,24(a0)
  a211c0:	01f10593          	addi	a1,sp,31
  a211c4:	892a                	mv	s2,a0
  a211c6:	c636                	sw	a3,12(sp)
  a211c8:	00c52a03          	lw	s4,12(a0)
  a211cc:	01052983          	lw	s3,16(a0)
  a211d0:	4944                	lw	s1,20(a0)
  a211d2:	00010fa3          	sb	zero,31(sp)
  a211d6:	423000ef          	jal	ra,a21df8 <loader_erase_all_process>
  a211da:	842a                	mv	s0,a0
  a211dc:	46b2                	lw	a3,12(sp)
  a211de:	c909                	beqz	a0,a211f0 <loader_download_image+0x34>
  a211e0:	85aa                	mv	a1,a0
  a211e2:	00a2 688c 051f      	l.li	a0,0xa2688c
  a211e8:	153030ef          	jal	ra,a24b3a <boot_msg1>
  a211ec:	8522                	mv	a0,s0
  a211ee:	8264                	popret	{ra,s0-s4},64
  a211f0:	01f14783          	lbu	a5,31(sp)
  a211f4:	dfe5                	beqz	a5,a211ec <loader_download_image+0x30>
  a211f6:	00098963          	beqz	s3,a21208 <loader_download_image+0x4c>
  a211fa:	c099                	beqz	s1,a21200 <loader_download_image+0x44>
  a211fc:	0134e663          	bltu	s1,s3,a21208 <loader_download_image+0x4c>
  a21200:	004007b7          	lui	a5,0x400
  a21204:	0537f963          	bgeu	a5,s3,a21256 <loader_download_image+0x9a>
  a21208:	00a2 68a0 051f      	l.li	a0,0xa268a0
  a2120e:	11b030ef          	jal	ra,a24b28 <boot_msg0>
  a21212:	00a2 68b0 051f      	l.li	a0,0xa268b0
  a21218:	003030ef          	jal	ra,a24a1a <serial_puts>
  a2121c:	4585                	li	a1,1
  a2121e:	8552                	mv	a0,s4
  a21220:	053030ef          	jal	ra,a24a72 <serial_puthex>
  a21224:	00a2 68c0 051f      	l.li	a0,0xa268c0
  a2122a:	7f0030ef          	jal	ra,a24a1a <serial_puts>
  a2122e:	4585                	li	a1,1
  a21230:	854e                	mv	a0,s3
  a21232:	041030ef          	jal	ra,a24a72 <serial_puthex>
  a21236:	00a2 68cc 051f      	l.li	a0,0xa268cc
  a2123c:	7de030ef          	jal	ra,a24a1a <serial_puts>
  a21240:	4585                	li	a1,1
  a21242:	8526                	mv	a0,s1
  a21244:	02f030ef          	jal	ra,a24a72 <serial_puthex>
  a21248:	00a2 72d4 051f      	l.li	a0,0xa272d4
  a2124e:	7cc030ef          	jal	ra,a24a1a <serial_puts>
  a21252:	547d                	li	s0,-1
  a21254:	bf61                	j	a211ec <loader_download_image+0x30>
  a21256:	00a94783          	lbu	a5,10(s2)
  a2125a:	00400637          	lui	a2,0x400
  a2125e:	85a6                	mv	a1,s1
  a21260:	8552                	mv	a0,s4
  a21262:	780792bb          	bnei	a5,120,a2126c <loader_download_image+0xb0>
  a21266:	3d39                	jal	ra,a21084 <download_factory_image>
  a21268:	842a                	mv	s0,a0
  a2126a:	b749                	j	a211ec <loader_download_image+0x30>
  a2126c:	336d                	jal	ra,a21016 <download_image>
  a2126e:	bfed                	j	a21268 <loader_download_image+0xac>

00a21270 <loader_upload_data>:
  a21270:	8018                	push	{ra},-16
  a21272:	454c                	lw	a1,12(a0)
  a21274:	004007b7          	lui	a5,0x400
  a21278:	fff58713          	addi	a4,a1,-1
  a2127c:	00f76963          	bltu	a4,a5,a2128e <loader_upload_data+0x1e>
  a21280:	00a2 68f0 051f      	l.li	a0,0xa268f0
  a21286:	0a3030ef          	jal	ra,a24b28 <boot_msg0>
  a2128a:	557d                	li	a0,-1
  a2128c:	8014                	popret	{ra},16
  a2128e:	4908                	lw	a0,16(a0)
  a21290:	00357713          	andi	a4,a0,3
  a21294:	c709                	beqz	a4,a2129e <loader_upload_data+0x2e>
  a21296:	00a2 6904 051f      	l.li	a0,0xa26904
  a2129c:	b7ed                	j	a21286 <loader_upload_data+0x16>
  a2129e:	00a58733          	add	a4,a1,a0
  a212a2:	00e7f663          	bgeu	a5,a4,a212ae <loader_upload_data+0x3e>
  a212a6:	00a2 6918 051f      	l.li	a0,0xa26918
  a212ac:	bfe9                	j	a21286 <loader_upload_data+0x16>
  a212ae:	8010                	pop	{ra},16
  a212b0:	bbd9                	j	a21086 <upload_data>

00a212b2 <loader_set_baudrate>:
  a212b2:	8018                	push	{ra},-16
  a212b4:	2e9000ef          	jal	ra,a21d9c <uart_baudrate_rcv>
  a212b8:	c501                	beqz	a0,a212c0 <loader_set_baudrate+0xe>
  a212ba:	8010                	pop	{ra},16
  a212bc:	2490006f          	j	a21d04 <serial_port_set_baudrate>
  a212c0:	557d                	li	a0,-1
  a212c2:	8014                	popret	{ra},16

00a212c4 <loader_ack>:
  a212c4:	9f28                	push	{ra,s0},-512
  a212c6:	de010113          	addi	sp,sp,-544
  a212ca:	842a                	mv	s0,a0
  a212cc:	41000613          	li	a2,1040
  a212d0:	4581                	li	a1,0
  a212d2:	850a                	mv	a0,sp
  a212d4:	f70ff0ef          	jal	ra,a20a44 <memset>
  a212d8:	dead beef 079f      	l.li	a5,0xdeadbeef
  a212de:	4629                	li	a2,10
  a212e0:	c23e                	sw	a5,4(sp)
  a212e2:	00810623          	sb	s0,12(sp)
  a212e6:	1ee1 000c 079f      	l.li	a5,0x1ee1000c
  a212ec:	fff44413          	not	s0,s0
  a212f0:	004c                	addi	a1,sp,4
  a212f2:	4501                	li	a0,0
  a212f4:	c43e                	sw	a5,8(sp)
  a212f6:	008106a3          	sb	s0,13(sp)
  a212fa:	23dd                	jal	ra,a218e0 <crc16_ccitt>
  a212fc:	00815583          	lhu	a1,8(sp)
  a21300:	40a11623          	sh	a0,1036(sp)
  a21304:	0048                	addi	a0,sp,4
  a21306:	15f9                	addi	a1,a1,-2
  a21308:	736030ef          	jal	ra,a24a3e <serial_put_buf>
  a2130c:	40c10513          	addi	a0,sp,1036
  a21310:	4589                	li	a1,2
  a21312:	72c030ef          	jal	ra,a24a3e <serial_put_buf>
  a21316:	41010113          	addi	sp,sp,1040
  a2131a:	8024                	popret	{ra,s0},16

00a2131c <loader_reset>:
  a2131c:	8018                	push	{ra},-16
  a2131e:	00a2 68dc 051f      	l.li	a0,0xa268dc
  a21324:	005030ef          	jal	ra,a24b28 <boot_msg0>
  a21328:	05a00513          	li	a0,90
  a2132c:	3f61                	jal	ra,a212c4 <loader_ack>
  a2132e:	4515                	li	a0,5
  a21330:	6c6030ef          	jal	ra,a249f6 <mdelay>
  a21334:	3c5d                	jal	ra,a20dea <reset>
  a21336:	4501                	li	a0,0
  a21338:	8014                	popret	{ra},16

00a2133a <cmd_loop>:
  a2133a:	8198                	push	{ra,s0-s7},-64
  a2133c:	842a                	mv	s0,a0
  a2133e:	001e 8480 099f      	l.li	s3,0x1e8480
  a21344:	dead beef 0a1f      	l.li	s4,0xdeadbeef
  a2134a:	00440913          	addi	s2,s0,4
  a2134e:	00040023          	sb	zero,0(s0)
  a21352:	00041123          	sh	zero,2(s0)
  a21356:	40c00693          	li	a3,1036
  a2135a:	4601                	li	a2,0
  a2135c:	40c00593          	li	a1,1036
  a21360:	854a                	mv	a0,s2
  a21362:	144040ef          	jal	ra,a254a6 <memset_s>
  a21366:	cd49                	beqz	a0,a21400 <cmd_loop+0xc6>
  a21368:	0a500513          	li	a0,165
  a2136c:	3fa1                	jal	ra,a212c4 <loader_ack>
  a2136e:	bff1                	j	a2134a <cmd_loop+0x10>
  a21370:	07d030ef          	jal	ra,a24bec <boot_wdt_kick>
  a21374:	00b10593          	addi	a1,sp,11
  a21378:	854e                	mv	a0,s3
  a2137a:	75c030ef          	jal	ra,a24ad6 <serial_getc_timeout>
  a2137e:	8b2a                	mv	s6,a0
  a21380:	ed05                	bnez	a0,a213b8 <cmd_loop+0x7e>
  a21382:	0a85                	addi	s5,s5,1
  a21384:	0ac2                	slli	s5,s5,0x10
  a21386:	010ada93          	srli	s5,s5,0x10
  a2138a:	c489                	beqz	s1,a21394 <cmd_loop+0x5a>
  a2138c:	00042223          	sw	zero,4(s0)
  a21390:	00040023          	sb	zero,0(s0)
  a21394:	201c                	lbu	a5,0(s0)
  a21396:	00b14703          	lbu	a4,11(sp)
  a2139a:	0407fdbb          	bgeui	a5,4,a213d0 <cmd_loop+0x96>
  a2139e:	0814                	addi	a3,sp,16
  a213a0:	c652                	sw	s4,12(sp)
  a213a2:	96be                	add	a3,a3,a5
  a213a4:	ffc6c683          	lbu	a3,-4(a3)
  a213a8:	00e69b63          	bne	a3,a4,a213be <cmd_loop+0x84>
  a213ac:	97ca                	add	a5,a5,s2
  a213ae:	a394                	sb	a3,0(a5)
  a213b0:	201c                	lbu	a5,0(s0)
  a213b2:	0785                	addi	a5,a5,1 # 400001 <g_intheap_size+0x3e6aa1>
  a213b4:	a01c                	sb	a5,0(s0)
  a213b6:	4481                	li	s1,0
  a213b8:	fb7a9ce3          	bne	s5,s7,a21370 <cmd_loop+0x36>
  a213bc:	b775                	j	a21368 <cmd_loop+0x2e>
  a213be:	0ef00793          	li	a5,239
  a213c2:	4485                	li	s1,1
  a213c4:	fef71ae3          	bne	a4,a5,a213b8 <cmd_loop+0x7e>
  a213c8:	57bd                	li	a5,-17
  a213ca:	a05c                	sb	a5,4(s0)
  a213cc:	a004                	sb	s1,0(s0)
  a213ce:	b7e5                	j	a213b6 <cmd_loop+0x7c>
  a213d0:	97ca                	add	a5,a5,s2
  a213d2:	a398                	sb	a4,0(a5)
  a213d4:	201c                	lbu	a5,0(s0)
  a213d6:	c791                	beqz	a5,a213e2 <cmd_loop+0xa8>
  a213d8:	2416                	lhu	a3,8(s0)
  a213da:	40000713          	li	a4,1024
  a213de:	00d76f63          	bltu	a4,a3,a213fc <cmd_loop+0xc2>
  a213e2:	0785                	addi	a5,a5,1
  a213e4:	9f81                	uxtb	a5
  a213e6:	a01c                	sb	a5,0(s0)
  a213e8:	08f7e3bb          	bltui	a5,8,a213b6 <cmd_loop+0x7c>
  a213ec:	00041123          	sh	zero,2(s0)
  a213f0:	00c40493          	addi	s1,s0,12
  a213f4:	0001 86a0 0a9f      	l.li	s5,0x186a0
  a213fa:	a02d                	j	a21424 <cmd_loop+0xea>
  a213fc:	4485                	li	s1,1
  a213fe:	bf6d                	j	a213b8 <cmd_loop+0x7e>
  a21400:	4a81                	li	s5,0
  a21402:	4481                	li	s1,0
  a21404:	06500b93          	li	s7,101
  a21408:	bf45                	j	a213b8 <cmd_loop+0x7e>
  a2140a:	006c                	addi	a1,sp,12
  a2140c:	8556                	mv	a0,s5
  a2140e:	6c8030ef          	jal	ra,a24ad6 <serial_getc_timeout>
  a21412:	f939                	bnez	a0,a21368 <cmd_loop+0x2e>
  a21414:	203e                	lhu	a5,2(s0)
  a21416:	00178713          	addi	a4,a5,1
  a2141a:	a03a                	sh	a4,2(s0)
  a2141c:	00c14703          	lbu	a4,12(sp)
  a21420:	97a6                	add	a5,a5,s1
  a21422:	a398                	sb	a4,0(a5)
  a21424:	241e                	lhu	a5,8(s0)
  a21426:	2036                	lhu	a3,2(s0)
  a21428:	ff878713          	addi	a4,a5,-8
  a2142c:	fce6efe3          	bltu	a3,a4,a2140a <cmd_loop+0xd0>
  a21430:	ff778713          	addi	a4,a5,-9
  a21434:	9726                	add	a4,a4,s1
  a21436:	97a6                	add	a5,a5,s1
  a21438:	2314                	lbu	a3,0(a4)
  a2143a:	ff67c783          	lbu	a5,-10(a5)
  a2143e:	10d7a79b          	orshf	a5,a5,a3,sll,8
  a21442:	40f41623          	sh	a5,1036(s0)
  a21446:	00070023          	sb	zero,0(a4) # 200000 <g_intheap_size+0x1e6aa0>
  a2144a:	241e                	lhu	a5,8(s0)
  a2144c:	94be                	add	s1,s1,a5
  a2144e:	fe048b23          	sb	zero,-10(s1)
  a21452:	2412                	lhu	a2,8(s0)
  a21454:	203a                	lhu	a4,2(s0)
  a21456:	ff860793          	addi	a5,a2,-8 # 3ffff8 <g_intheap_size+0x3e6a98>
  a2145a:	f0f717e3          	bne	a4,a5,a21368 <cmd_loop+0x2e>
  a2145e:	1679                	addi	a2,a2,-2
  a21460:	85ca                	mv	a1,s2
  a21462:	4501                	li	a0,0
  a21464:	29b5                	jal	ra,a218e0 <crc16_ccitt>
  a21466:	40c45783          	lhu	a5,1036(s0)
  a2146a:	eea79fe3          	bne	a5,a0,a21368 <cmd_loop+0x2e>
  a2146e:	242c                	lbu	a1,10(s0)
  a21470:	00a2 6854 079f      	l.li	a5,0xa26854
  a21476:	469d                	li	a3,7
  a21478:	2398                	lbu	a4,0(a5)
  a2147a:	02b71863          	bne	a4,a1,a214aa <cmd_loop+0x170>
  a2147e:	43d8                	lw	a4,4(a5)
  a21480:	c70d                	beqz	a4,a214aa <cmd_loop+0x170>
  a21482:	8522                	mv	a0,s0
  a21484:	9702                	jalr	a4
  a21486:	ee0511e3          	bnez	a0,a21368 <cmd_loop+0x2e>
  a2148a:	762030ef          	jal	ra,a24bec <boot_wdt_kick>
  a2148e:	05a00513          	li	a0,90
  a21492:	3d0d                	jal	ra,a212c4 <loader_ack>
  a21494:	00a2 6820 051f      	l.li	a0,0xa26820
  a2149a:	68e030ef          	jal	ra,a24b28 <boot_msg0>
  a2149e:	00a2 6838 051f      	l.li	a0,0xa26838
  a214a4:	684030ef          	jal	ra,a24b28 <boot_msg0>
  a214a8:	b54d                	j	a2134a <cmd_loop+0x10>
  a214aa:	0b05                	addi	s6,s6,1
  a214ac:	07a1                	addi	a5,a5,8
  a214ae:	fcdb15e3          	bne	s6,a3,a21478 <cmd_loop+0x13e>
  a214b2:	00a2 6810 051f      	l.li	a0,0xa26810
  a214b8:	682030ef          	jal	ra,a24b3a <boot_msg1>
  a214bc:	b575                	j	a21368 <cmd_loop+0x2e>

00a214be <ymodem_flush>:
  a214be:	8148                	push	{ra,s0-s2},-32
  a214c0:	597d                	li	s2,-1
  a214c2:	000f 4240 049f      	l.li	s1,0xf4240
  a214c8:	547d                	li	s0,-1
  a214ca:	00f10593          	addi	a1,sp,15
  a214ce:	8526                	mv	a0,s1
  a214d0:	012107a3          	sb	s2,15(sp)
  a214d4:	602030ef          	jal	ra,a24ad6 <serial_getc_timeout>
  a214d8:	fe8519e3          	bne	a0,s0,a214ca <ymodem_flush+0xc>
  a214dc:	8144                	popret	{ra,s0-s2},32

00a214de <ymodem_get_packet>:
  a214de:	81c8                	push	{ra,s0-s10},-64
  a214e0:	57fd                	li	a5,-1
  a214e2:	00a02437          	lui	s0,0xa02
  a214e6:	00f105a3          	sb	a5,11(sp)
  a214ea:	00f10623          	sb	a5,12(sp)
  a214ee:	00f106a3          	sb	a5,13(sp)
  a214f2:	00f10723          	sb	a5,14(sp)
  a214f6:	6709                	lui	a4,0x2
  a214f8:	5f040793          	addi	a5,s0,1520 # a025f0 <g_ymodem>
  a214fc:	97ba                	add	a5,a5,a4
  a214fe:	33dc                	lbu	a5,5(a5)
  a21500:	00a04937          	lui	s2,0xa04
  a21504:	5f040413          	addi	s0,s0,1520
  a21508:	5f090913          	addi	s2,s2,1520 # a045f0 <_gp_+0x1914>
  a2150c:	c791                	beqz	a5,a21518 <ymodem_get_packet+0x3a>
  a2150e:	4519                	li	a0,6
  a21510:	4ea030ef          	jal	ra,a249fa <serial_putc>
  a21514:	000902a3          	sb	zero,5(s2)
  a21518:	57fd                	li	a5,-1
  a2151a:	00f107a3          	sb	a5,15(sp)
  a2151e:	4981                	li	s3,0
  a21520:	4481                	li	s1,0
  a21522:	000f 4240 0b1f      	l.li	s6,0xf4240
  a21528:	4a29                	li	s4,10
  a2152a:	4ab1                	li	s5,12
  a2152c:	4be1                	li	s7,24
  a2152e:	4c0d                	li	s8,3
  a21530:	4c89                	li	s9,2
  a21532:	4d11                	li	s10,4
  a21534:	00f10593          	addi	a1,sp,15
  a21538:	855a                	mv	a0,s6
  a2153a:	59c030ef          	jal	ra,a24ad6 <serial_getc_timeout>
  a2153e:	c909                	beqz	a0,a21550 <ymodem_get_packet+0x72>
  a21540:	3fbd                	jal	ra,a214be <ymodem_flush>
  a21542:	4551                	li	a0,20
  a21544:	4b2030ef          	jal	ra,a249f6 <mdelay>
  a21548:	c35a 69a6 051f      	l.li	a0,0xc35a69a6
  a2154e:	a201                	j	a2164e <ymodem_get_packet+0x170>
  a21550:	00f14783          	lbu	a5,15(sp)
  a21554:	0485                	addi	s1,s1,1
  a21556:	0d478c63          	beq	a5,s4,a2162e <ymodem_get_packet+0x150>
  a2155a:	0afa6a63          	bltu	s4,a5,a2160e <ymodem_get_packet+0x130>
  a2155e:	0d978563          	beq	a5,s9,a21628 <ymodem_get_packet+0x14a>
  a21562:	0da78e63          	beq	a5,s10,a2163e <ymodem_get_packet+0x160>
  a21566:	01f793bb          	bnei	a5,1,a21534 <ymodem_get_packet+0x56>
  a2156a:	08000793          	li	a5,128
  a2156e:	000f44b7          	lui	s1,0xf4
  a21572:	00d10593          	addi	a1,sp,13
  a21576:	24048513          	addi	a0,s1,576 # f4240 <g_intheap_size+0xdace0>
  a2157a:	c01c                	sw	a5,0(s0)
  a2157c:	59fd                	li	s3,-1
  a2157e:	558030ef          	jal	ra,a24ad6 <serial_getc_timeout>
  a21582:	fd3503e3          	beq	a0,s3,a21548 <ymodem_get_packet+0x6a>
  a21586:	00e10593          	addi	a1,sp,14
  a2158a:	24048513          	addi	a0,s1,576
  a2158e:	548030ef          	jal	ra,a24ad6 <serial_getc_timeout>
  a21592:	fb350be3          	beq	a0,s3,a21548 <ymodem_get_packet+0x6a>
  a21596:	450d                	li	a0,3
  a21598:	45a030ef          	jal	ra,a249f2 <udelay>
  a2159c:	4981                	li	s3,0
  a2159e:	00440a13          	addi	s4,s0,4
  a215a2:	24048493          	addi	s1,s1,576
  a215a6:	5afd                	li	s5,-1
  a215a8:	401c                	lw	a5,0(s0)
  a215aa:	0af9e363          	bltu	s3,a5,a21650 <ymodem_get_packet+0x172>
  a215ae:	000f49b7          	lui	s3,0xf4
  a215b2:	006c                	addi	a1,sp,12
  a215b4:	24098513          	addi	a0,s3,576 # f4240 <g_intheap_size+0xdace0>
  a215b8:	51e030ef          	jal	ra,a24ad6 <serial_getc_timeout>
  a215bc:	54fd                	li	s1,-1
  a215be:	f89505e3          	beq	a0,s1,a21548 <ymodem_get_packet+0x6a>
  a215c2:	00b10593          	addi	a1,sp,11
  a215c6:	24098513          	addi	a0,s3,576
  a215ca:	50c030ef          	jal	ra,a24ad6 <serial_getc_timeout>
  a215ce:	f6950de3          	beq	a0,s1,a21548 <ymodem_get_packet+0x6a>
  a215d2:	00e14703          	lbu	a4,14(sp)
  a215d6:	00d14783          	lbu	a5,13(sp)
  a215da:	8fb9                	xor	a5,a5,a4
  a215dc:	0ff00713          	li	a4,255
  a215e0:	08e79163          	bne	a5,a4,a21662 <ymodem_get_packet+0x184>
  a215e4:	4010                	lw	a2,0(s0)
  a215e6:	00a025b7          	lui	a1,0xa02
  a215ea:	5f458593          	addi	a1,a1,1524 # a025f4 <g_ymodem+0x4>
  a215ee:	4501                	li	a0,0
  a215f0:	2cc5                	jal	ra,a218e0 <crc16_ccitt>
  a215f2:	00c14703          	lbu	a4,12(sp)
  a215f6:	00b14783          	lbu	a5,11(sp)
  a215fa:	10e7a79b          	orshf	a5,a5,a4,sll,8
  a215fe:	06a79663          	bne	a5,a0,a2166a <ymodem_get_packet+0x18c>
  a21602:	00d14783          	lbu	a5,13(sp)
  a21606:	4501                	li	a0,0
  a21608:	00f90323          	sb	a5,6(s2)
  a2160c:	a089                	j	a2164e <ymodem_get_packet+0x170>
  a2160e:	03578663          	beq	a5,s5,a2163a <ymodem_get_packet+0x15c>
  a21612:	0357e263          	bltu	a5,s5,a21636 <ymodem_get_packet+0x158>
  a21616:	f1779fe3          	bne	a5,s7,a21534 <ymodem_get_packet+0x56>
  a2161a:	0985                	addi	s3,s3,1
  a2161c:	f1899ce3          	bne	s3,s8,a21534 <ymodem_get_packet+0x56>
  a21620:	c35a 69a7 051f      	l.li	a0,0xc35a69a7
  a21626:	a025                	j	a2164e <ymodem_get_packet+0x170>
  a21628:	40000793          	li	a5,1024
  a2162c:	b789                	j	a2156e <ymodem_get_packet+0x90>
  a2162e:	0000 0800 079f      	l.li	a5,0x800
  a21634:	bf2d                	j	a2156e <ymodem_get_packet+0x90>
  a21636:	6785                	lui	a5,0x1
  a21638:	bf1d                	j	a2156e <ymodem_get_packet+0x90>
  a2163a:	6789                	lui	a5,0x2
  a2163c:	bf0d                	j	a2156e <ymodem_get_packet+0x90>
  a2163e:	01b49dbb          	bnei	s1,1,a21534 <ymodem_get_packet+0x56>
  a21642:	4519                	li	a0,6
  a21644:	3b6030ef          	jal	ra,a249fa <serial_putc>
  a21648:	c35a 69aa 051f      	l.li	a0,0xc35a69aa
  a2164e:	81c4                	popret	{ra,s0-s10},64
  a21650:	013a05b3          	add	a1,s4,s3
  a21654:	8526                	mv	a0,s1
  a21656:	480030ef          	jal	ra,a24ad6 <serial_getc_timeout>
  a2165a:	ff550ae3          	beq	a0,s5,a2164e <ymodem_get_packet+0x170>
  a2165e:	0985                	addi	s3,s3,1
  a21660:	b7a1                	j	a215a8 <ymodem_get_packet+0xca>
  a21662:	c35a 69a8 051f      	l.li	a0,0xc35a69a8
  a21668:	b7dd                	j	a2164e <ymodem_get_packet+0x170>
  a2166a:	c35a 69a9 051f      	l.li	a0,0xc35a69a9
  a21670:	bff9                	j	a2164e <ymodem_get_packet+0x170>

00a21672 <ymodem_open>:
  a21672:	8088                	push	{ra,s0-s6},-32
  a21674:	00a02937          	lui	s2,0xa02
  a21678:	5f090793          	addi	a5,s2,1520 # a025f0 <g_ymodem>
  a2167c:	6709                	lui	a4,0x2
  a2167e:	0007a023          	sw	zero,0(a5) # 2000 <ccause+0x103e>
  a21682:	04300513          	li	a0,67
  a21686:	97ba                	add	a5,a5,a4
  a21688:	0007a423          	sw	zero,8(a5)
  a2168c:	0007a623          	sw	zero,12(a5)
  a21690:	000782a3          	sb	zero,5(a5)
  a21694:	00078223          	sb	zero,4(a5)
  a21698:	362030ef          	jal	ra,a249fa <serial_putc>
  a2169c:	550030ef          	jal	ra,a24bec <boot_wdt_kick>
  a216a0:	c35a77b7          	lui	a5,0xc35a7
  a216a4:	00a04437          	lui	s0,0xa04
  a216a8:	4a51                	li	s4,20
  a216aa:	5f090913          	addi	s2,s2,1520
  a216ae:	5f040413          	addi	s0,s0,1520 # a045f0 <_gp_+0x1914>
  a216b2:	5afd                	li	s5,-1
  a216b4:	9a778b13          	addi	s6,a5,-1625 # c35a69a7 <__data_load__+0xc2b7f0d7>
  a216b8:	9a678993          	addi	s3,a5,-1626
  a216bc:	1a7d                	addi	s4,s4,-1
  a216be:	015a1563          	bne	s4,s5,a216c8 <ymodem_open+0x56>
  a216c2:	54fd                	li	s1,-1
  a216c4:	8526                	mv	a0,s1
  a216c6:	8084                	popret	{ra,s0-s6},32
  a216c8:	3d19                	jal	ra,a214de <ymodem_get_packet>
  a216ca:	84aa                	mv	s1,a0
  a216cc:	ed61                	bnez	a0,a217a4 <ymodem_open+0x132>
  a216ce:	207c                	lbu	a5,6(s0)
  a216d0:	ef9d                	bnez	a5,a2170e <ymodem_open+0x9c>
  a216d2:	450d                	li	a0,3
  a216d4:	31e030ef          	jal	ra,a249f2 <udelay>
  a216d8:	00a027b7          	lui	a5,0xa02
  a216dc:	5f478793          	addi	a5,a5,1524 # a025f4 <g_ymodem+0x4>
  a216e0:	08590693          	addi	a3,s2,133
  a216e4:	0785                	addi	a5,a5,1
  a216e6:	fff7c703          	lbu	a4,-1(a5)
  a216ea:	c319                	beqz	a4,a216f0 <ymodem_open+0x7e>
  a216ec:	fed79ce3          	bne	a5,a3,a216e4 <ymodem_open+0x72>
  a216f0:	08000613          	li	a2,128
  a216f4:	02000693          	li	a3,32
  a216f8:	a019                	j	a216fe <ymodem_open+0x8c>
  a216fa:	0785                	addi	a5,a5,1
  a216fc:	167d                	addi	a2,a2,-1
  a216fe:	2398                	lbu	a4,0(a5)
  a21700:	00d71c63          	bne	a4,a3,a21718 <ymodem_open+0xa6>
  a21704:	fa7d                	bnez	a2,a216fa <ymodem_open+0x88>
  a21706:	00042423          	sw	zero,8(s0)
  a2170a:	4785                	li	a5,1
  a2170c:	b05c                	sb	a5,5(s0)
  a2170e:	4785                	li	a5,1
  a21710:	b07c                	sb	a5,7(s0)
  a21712:	00092023          	sw	zero,0(s2)
  a21716:	b77d                	j	a216c4 <ymodem_open+0x52>
  a21718:	4829                	li	a6,10
  a2171a:	3007163b          	bnei	a4,48,a21732 <ymodem_open+0xc0>
  a2171e:	3398                	lbu	a4,1(a5)
  a21720:	0df77713          	andi	a4,a4,223
  a21724:	580713bb          	bnei	a4,88,a21732 <ymodem_open+0xc0>
  a21728:	020662bb          	bltui	a2,2,a21732 <ymodem_open+0xc0>
  a2172c:	0789                	addi	a5,a5,2
  a2172e:	1679                	addi	a2,a2,-2
  a21730:	4841                	li	a6,16
  a21732:	4581                	li	a1,0
  a21734:	4325                	li	t1,9
  a21736:	4895                	li	a7,5
  a21738:	a801                	j	a21748 <ymodem_open+0xd6>
  a2173a:	fd068713          	addi	a4,a3,-48
  a2173e:	00e86563          	bltu	a6,a4,a21748 <ymodem_open+0xd6>
  a21742:	02b805b3          	mul	a1,a6,a1
  a21746:	95ba                	add	a1,a1,a4
  a21748:	2398                	lbu	a4,0(a5)
  a2174a:	e705                	bnez	a4,a21772 <ymodem_open+0x100>
  a2174c:	c40c                	sw	a1,8(s0)
  a2174e:	010007b7          	lui	a5,0x1000
  a21752:	fab7fce3          	bgeu	a5,a1,a2170a <ymodem_open+0x98>
  a21756:	c35a 69ac 049f      	l.li	s1,0xc35a69ac
  a2175c:	b7a5                	j	a216c4 <ymodem_open+0x52>
  a2175e:	fbf70713          	addi	a4,a4,-65 # 1fbf <ccause+0xffd>
  a21762:	9f01                	uxtb	a4
  a21764:	00e8e563          	bltu	a7,a4,a2176e <ymodem_open+0xfc>
  a21768:	fc968713          	addi	a4,a3,-55
  a2176c:	bfc9                	j	a2173e <ymodem_open+0xcc>
  a2176e:	4701                	li	a4,0
  a21770:	bfc9                	j	a21742 <ymodem_open+0xd0>
  a21772:	de69                	beqz	a2,a2174c <ymodem_open+0xda>
  a21774:	fd070513          	addi	a0,a4,-48
  a21778:	01871693          	slli	a3,a4,0x18
  a2177c:	9d01                	uxtb	a0
  a2177e:	0785                	addi	a5,a5,1 # 1000001 <__data_load__+0x5d8731>
  a21780:	86e1                	srai	a3,a3,0x18
  a21782:	faa37ce3          	bgeu	t1,a0,a2173a <ymodem_open+0xc8>
  a21786:	fdf77513          	andi	a0,a4,-33
  a2178a:	fbf50513          	addi	a0,a0,-65
  a2178e:	9d01                	uxtb	a0
  a21790:	f2a8e9e3          	bltu	a7,a0,a216c2 <ymodem_open+0x50>
  a21794:	f9f70513          	addi	a0,a4,-97
  a21798:	9d01                	uxtb	a0
  a2179a:	fca8e2e3          	bltu	a7,a0,a2175e <ymodem_open+0xec>
  a2179e:	fa968713          	addi	a4,a3,-87
  a217a2:	bf71                	j	a2173e <ymodem_open+0xcc>
  a217a4:	f1650fe3          	beq	a0,s6,a216c2 <ymodem_open+0x50>
  a217a8:	f1351ae3          	bne	a0,s3,a216bc <ymodem_open+0x4a>
  a217ac:	440030ef          	jal	ra,a24bec <boot_wdt_kick>
  a217b0:	4551                	li	a0,20
  a217b2:	244030ef          	jal	ra,a249f6 <mdelay>
  a217b6:	04300513          	li	a0,67
  a217ba:	240030ef          	jal	ra,a249fa <serial_putc>
  a217be:	bdfd                	j	a216bc <ymodem_open+0x4a>

00a217c0 <ymodem_close>:
  a217c0:	8028                	push	{ra,s0},-16
  a217c2:	00a02437          	lui	s0,0xa02
  a217c6:	49444503          	lbu	a0,1172(s0) # a02494 <g_hiburn_uart>
  a217ca:	13a010ef          	jal	ra,a22904 <uapi_uart_rx_fifo_is_empty>
  a217ce:	e501                	bnez	a0,a217d6 <ymodem_close+0x16>
  a217d0:	288030ef          	jal	ra,a24a58 <serial_getc>
  a217d4:	bfcd                	j	a217c6 <ymodem_close+0x6>
  a217d6:	8024                	popret	{ra,s0},16

00a217d8 <ymodem_read>:
  a217d8:	80d8                	push	{ra,s0-s11},-64
  a217da:	c35a7bb7          	lui	s7,0xc35a7
  a217de:	00a0 25f0 091f      	l.li	s2,0xa025f0
  a217e4:	6b09                	lui	s6,0x2
  a217e6:	00a04437          	lui	s0,0xa04
  a217ea:	8aaa                	mv	s5,a0
  a217ec:	84ae                	mv	s1,a1
  a217ee:	4a01                	li	s4,0
  a217f0:	9b4a                	add	s6,s6,s2
  a217f2:	5f040413          	addi	s0,s0,1520 # a045f0 <_gp_+0x1914>
  a217f6:	9a7b8c93          	addi	s9,s7,-1625 # c35a69a7 <__data_load__+0xc2b7f0d7>
  a217fa:	9aab8d13          	addi	s10,s7,-1622
  a217fe:	004b4783          	lbu	a5,4(s6) # 2004 <ccause+0x1042>
  a21802:	ebdd                	bnez	a5,a218b8 <ymodem_read+0xe0>
  a21804:	c8d5                	beqz	s1,a218b8 <ymodem_read+0xe0>
  a21806:	00092783          	lw	a5,0(s2)
  a2180a:	ef9d                	bnez	a5,a21848 <ymodem_read+0x70>
  a2180c:	4c55                	li	s8,21
  a2180e:	59fd                	li	s3,-1
  a21810:	9abb8d93          	addi	s11,s7,-1621
  a21814:	a885                	j	a21884 <ymodem_read+0xac>
  a21816:	31e1                	jal	ra,a214de <ymodem_get_packet>
  a21818:	89aa                	mv	s3,a0
  a2181a:	e93d                	bnez	a0,a21890 <ymodem_read+0xb8>
  a2181c:	2078                	lbu	a4,6(s0)
  a2181e:	307c                	lbu	a5,7(s0)
  a21820:	04f71a63          	bne	a4,a5,a21874 <ymodem_read+0x9c>
  a21824:	4785                	li	a5,1
  a21826:	0705                	addi	a4,a4,1
  a21828:	b05c                	sb	a5,5(s0)
  a2182a:	b078                	sb	a4,7(s0)
  a2182c:	00092783          	lw	a5,0(s2)
  a21830:	4458                	lw	a4,12(s0)
  a21832:	4414                	lw	a3,8(s0)
  a21834:	973e                	add	a4,a4,a5
  a21836:	c458                	sw	a4,12(s0)
  a21838:	00e6f663          	bgeu	a3,a4,a21844 <ymodem_read+0x6c>
  a2183c:	97b6                	add	a5,a5,a3
  a2183e:	8f99                	sub	a5,a5,a4
  a21840:	00f92023          	sw	a5,0(s2)
  a21844:	205c                	lbu	a5,4(s0)
  a21846:	ffc5                	bnez	a5,a217fe <ymodem_read+0x26>
  a21848:	00092983          	lw	s3,0(s2)
  a2184c:	0134f363          	bgeu	s1,s3,a21852 <ymodem_read+0x7a>
  a21850:	89a6                	mv	s3,s1
  a21852:	00a02637          	lui	a2,0xa02
  a21856:	86ce                	mv	a3,s3
  a21858:	5f460613          	addi	a2,a2,1524 # a025f4 <g_ymodem+0x4>
  a2185c:	85a6                	mv	a1,s1
  a2185e:	8556                	mv	a0,s5
  a21860:	40f030ef          	jal	ra,a2546e <memcpy_s>
  a21864:	e52d                	bnez	a0,a218ce <ymodem_read+0xf6>
  a21866:	413484b3          	sub	s1,s1,s3
  a2186a:	9ace                	add	s5,s5,s3
  a2186c:	9a4e                	add	s4,s4,s3
  a2186e:	00092023          	sw	zero,0(s2)
  a21872:	b771                	j	a217fe <ymodem_read+0x26>
  a21874:	17fd                	addi	a5,a5,-1
  a21876:	0ff7f793          	andi	a5,a5,255
  a2187a:	04f71163          	bne	a4,a5,a218bc <ymodem_read+0xe4>
  a2187e:	4519                	li	a0,6
  a21880:	17a030ef          	jal	ra,a249fa <serial_putc>
  a21884:	1c7d                	addi	s8,s8,-1
  a21886:	f80c18e3          	bnez	s8,a21816 <ymodem_read+0x3e>
  a2188a:	fa098de3          	beqz	s3,a21844 <ymodem_read+0x6c>
  a2188e:	a02d                	j	a218b8 <ymodem_read+0xe0>
  a21890:	03950463          	beq	a0,s9,a218b8 <ymodem_read+0xe0>
  a21894:	03a51563          	bne	a0,s10,a218be <ymodem_read+0xe6>
  a21898:	4519                	li	a0,6
  a2189a:	160030ef          	jal	ra,a249fa <serial_putc>
  a2189e:	04300513          	li	a0,67
  a218a2:	158030ef          	jal	ra,a249fa <serial_putc>
  a218a6:	3925                	jal	ra,a214de <ymodem_get_packet>
  a218a8:	89aa                	mv	s3,a0
  a218aa:	4519                	li	a0,6
  a218ac:	14e030ef          	jal	ra,a249fa <serial_putc>
  a218b0:	4785                	li	a5,1
  a218b2:	a05c                	sb	a5,4(s0)
  a218b4:	f40985e3          	beqz	s3,a217fe <ymodem_read+0x26>
  a218b8:	8552                	mv	a0,s4
  a218ba:	80d4                	popret	{ra,s0-s11},64
  a218bc:	89ee                	mv	s3,s11
  a218be:	3101                	jal	ra,a214be <ymodem_flush>
  a218c0:	04300513          	li	a0,67
  a218c4:	136030ef          	jal	ra,a249fa <serial_putc>
  a218c8:	324030ef          	jal	ra,a24bec <boot_wdt_kick>
  a218cc:	bf65                	j	a21884 <ymodem_read+0xac>
  a218ce:	5a7d                	li	s4,-1
  a218d0:	b7e5                	j	a218b8 <ymodem_read+0xe0>

00a218d2 <ymodem_get_length>:
  a218d2:	6709                	lui	a4,0x2
  a218d4:	00a0 25f0 079f      	l.li	a5,0xa025f0
  a218da:	97ba                	add	a5,a5,a4
  a218dc:	4788                	lw	a0,8(a5)
  a218de:	8082                	ret

00a218e0 <crc16_ccitt>:
  a218e0:	4781                	li	a5,0
  a218e2:	c989                	beqz	a1,a218f4 <crc16_ccitt+0x14>
  a218e4:	ca01                	beqz	a2,a218f4 <crc16_ccitt+0x14>
  a218e6:	962e                	add	a2,a2,a1
  a218e8:	87aa                	mv	a5,a0
  a218ea:	00a2 693c 069f      	l.li	a3,0xa2693c
  a218f0:	00c59463          	bne	a1,a2,a218f8 <crc16_ccitt+0x18>
  a218f4:	853e                	mv	a0,a5
  a218f6:	8082                	ret
  a218f8:	0585                	addi	a1,a1,1
  a218fa:	fff5c703          	lbu	a4,-1(a1)
  a218fe:	50f7371b          	xorshf	a4,a4,a5,srl,8
  a21902:	02e6871b          	addshf	a4,a3,a4,sll,1
  a21906:	230a                	lhu	a0,0(a4)
  a21908:	10f5379b          	xorshf	a5,a0,a5,sll,8
  a2190c:	9fa1                	uxth	a5
  a2190e:	b7cd                	j	a218f0 <crc16_ccitt+0x10>

00a21910 <loader_serial_ymodem>:
  a21910:	8098                	push	{ra,s0-s7},-48
  a21912:	8aaa                	mv	s5,a0
  a21914:	892e                	mv	s2,a1
  a21916:	8a32                	mv	s4,a2
  a21918:	8436                	mv	s0,a3
  a2191a:	3ba1                	jal	ra,a21672 <ymodem_open>
  a2191c:	e90d                	bnez	a0,a2194e <loader_serial_ymodem+0x3e>
  a2191e:	89aa                	mv	s3,a0
  a21920:	3f4d                	jal	ra,a218d2 <ymodem_get_length>
  a21922:	84aa                	mv	s1,a0
  a21924:	00aa7463          	bgeu	s4,a0,a2192c <loader_serial_ymodem+0x1c>
  a21928:	00a47963          	bgeu	s0,a0,a2193a <loader_serial_ymodem+0x2a>
  a2192c:	85a6                	mv	a1,s1
  a2192e:	00a2 6b3c 051f      	l.li	a0,0xa26b3c
  a21934:	206030ef          	jal	ra,a24b3a <boot_msg1>
  a21938:	a819                	j	a2194e <loader_serial_ymodem+0x3e>
  a2193a:	842a                	mv	s0,a0
  a2193c:	06090d63          	beqz	s2,a219b6 <loader_serial_ymodem+0xa6>
  a21940:	06a97b63          	bgeu	s2,a0,a219b6 <loader_serial_ymodem+0xa6>
  a21944:	00a2 6b50 051f      	l.li	a0,0xa26b50
  a2194a:	1de030ef          	jal	ra,a24b28 <boot_msg0>
  a2194e:	3d8d                	jal	ra,a217c0 <ymodem_close>
  a21950:	547d                	li	s0,-1
  a21952:	a085                	j	a219b2 <loader_serial_ymodem+0xa2>
  a21954:	85a2                	mv	a1,s0
  a21956:	008b7363          	bgeu	s6,s0,a2195c <loader_serial_ymodem+0x4c>
  a2195a:	6589                	lui	a1,0x2
  a2195c:	600a0513          	addi	a0,s4,1536
  a21960:	3da5                	jal	ra,a217d8 <ymodem_read>
  a21962:	892a                	mv	s2,a0
  a21964:	d56d                	beqz	a0,a2194e <loader_serial_ymodem+0x3e>
  a21966:	fea464e3          	bltu	s0,a0,a2194e <loader_serial_ymodem+0x3e>
  a2196a:	c92ff0ef          	jal	ra,a20dfc <boot_get_flash_funcs>
  a2196e:	451c                	lw	a5,8(a0)
  a21970:	85ca                	mv	a1,s2
  a21972:	4681                	li	a3,0
  a21974:	600a0613          	addi	a2,s4,1536
  a21978:	017a8533          	add	a0,s5,s7
  a2197c:	9782                	jalr	a5
  a2197e:	85aa                	mv	a1,a0
  a21980:	c509                	beqz	a0,a2198a <loader_serial_ymodem+0x7a>
  a21982:	00a2 6b68 051f      	l.li	a0,0xa26b68
  a21988:	b775                	j	a21934 <loader_serial_ymodem+0x24>
  a2198a:	41240433          	sub	s0,s0,s2
  a2198e:	99ca                	add	s3,s3,s2
  a21990:	9aca                	add	s5,s5,s2
  a21992:	25a030ef          	jal	ra,a24bec <boot_wdt_kick>
  a21996:	fc5d                	bnez	s0,a21954 <loader_serial_ymodem+0x44>
  a21998:	6589                	lui	a1,0x2
  a2199a:	600a0513          	addi	a0,s4,1536
  a2199e:	3d2d                	jal	ra,a217d8 <ymodem_read>
  a219a0:	fb3497e3          	bne	s1,s3,a2194e <loader_serial_ymodem+0x3e>
  a219a4:	85a6                	mv	a1,s1
  a219a6:	00a2 6b7c 051f      	l.li	a0,0xa26b7c
  a219ac:	18e030ef          	jal	ra,a24b3a <boot_msg1>
  a219b0:	3d01                	jal	ra,a217c0 <ymodem_close>
  a219b2:	8522                	mv	a0,s0
  a219b4:	8094                	popret	{ra,s0-s7},48
  a219b6:	00a04a37          	lui	s4,0xa04
  a219ba:	6b09                	lui	s6,0x2
  a219bc:	ffe00bb7          	lui	s7,0xffe00
  a219c0:	bfd9                	j	a21996 <loader_serial_ymodem+0x86>

00a219c2 <loader_burn_efuse>:
  a219c2:	83d8                	push	{ra,s0-s11},-112
  a219c4:	4540                	lw	s0,12(a0)
  a219c6:	4f700793          	li	a5,1271
  a219ca:	fcf40713          	addi	a4,s0,-49
  a219ce:	00e7fa63          	bgeu	a5,a4,a219e2 <loader_burn_efuse+0x20>
  a219d2:	85a2                	mv	a1,s0
  a219d4:	00a2 6b88 051f      	l.li	a0,0xa26b88
  a219da:	160030ef          	jal	ra,a24b3a <boot_msg1>
  a219de:	5bfd                	li	s7,-1
  a219e0:	a02d                	j	a21a0a <loader_burn_efuse+0x48>
  a219e2:	05a00513          	li	a0,90
  a219e6:	8dfff0ef          	jal	ra,a212c4 <loader_ack>
  a219ea:	52800693          	li	a3,1320
  a219ee:	03000613          	li	a2,48
  a219f2:	4581                	li	a1,0
  a219f4:	00a30537          	lui	a0,0xa30
  a219f8:	3f21                	jal	ra,a21910 <loader_serial_ymodem>
  a219fa:	8baa                	mv	s7,a0
  a219fc:	c909                	beqz	a0,a21a0e <loader_burn_efuse+0x4c>
  a219fe:	85aa                	mv	a1,a0
  a21a00:	00a2 6ba0 051f      	l.li	a0,0xa26ba0
  a21a06:	134030ef          	jal	ra,a24b3a <boot_msg1>
  a21a0a:	855e                	mv	a0,s7
  a21a0c:	83d4                	popret	{ra,s0-s11},112
  a21a0e:	4581                	li	a1,0
  a21a10:	02000613          	li	a2,32
  a21a14:	0808                	addi	a0,sp,16
  a21a16:	82eff0ef          	jal	ra,a20a44 <memset>
  a21a1a:	093000ef          	jal	ra,a222ac <drv_rom_cipher_init>
  a21a1e:	85aa                	mv	a1,a0
  a21a20:	cd01                	beqz	a0,a21a38 <loader_burn_efuse+0x76>
  a21a22:	00a2 6bbc 051f      	l.li	a0,0xa26bbc
  a21a28:	112030ef          	jal	ra,a24b3a <boot_msg1>
  a21a2c:	00a2 6c54 051f      	l.li	a0,0xa26c54
  a21a32:	0f6030ef          	jal	ra,a24b28 <boot_msg0>
  a21a36:	b765                	j	a219de <loader_burn_efuse+0x1c>
  a21a38:	fe040593          	addi	a1,s0,-32
  a21a3c:	00a30437          	lui	s0,0xa30
  a21a40:	02000693          	li	a3,32
  a21a44:	0810                	addi	a2,sp,16
  a21a46:	02040513          	addi	a0,s0,32 # a30020 <__data_load__+0x8750>
  a21a4a:	031000ef          	jal	ra,a2227a <drv_rom_cipher_sha256>
  a21a4e:	85aa                	mv	a1,a0
  a21a50:	c509                	beqz	a0,a21a5a <loader_burn_efuse+0x98>
  a21a52:	00a2 6bdc 051f      	l.li	a0,0xa26bdc
  a21a58:	bfc1                	j	a21a28 <loader_burn_efuse+0x66>
  a21a5a:	07d000ef          	jal	ra,a222d6 <drv_rom_cipher_deinit>
  a21a5e:	8baa                	mv	s7,a0
  a21a60:	c511                	beqz	a0,a21a6c <loader_burn_efuse+0xaa>
  a21a62:	85aa                	mv	a1,a0
  a21a64:	00a2 6c00 051f      	l.li	a0,0xa26c00
  a21a6a:	bf7d                	j	a21a28 <loader_burn_efuse+0x66>
  a21a6c:	02000613          	li	a2,32
  a21a70:	080c                	addi	a1,sp,16
  a21a72:	00a30537          	lui	a0,0xa30
  a21a76:	b18ff0ef          	jal	ra,a20d8e <memcmp>
  a21a7a:	c519                	beqz	a0,a21a88 <loader_burn_efuse+0xc6>
  a21a7c:	00a2 6c24 051f      	l.li	a0,0xa26c24
  a21a82:	0a6030ef          	jal	ra,a24b28 <boot_msg0>
  a21a86:	b75d                	j	a21a2c <loader_burn_efuse+0x6a>
  a21a88:	303e                	lhu	a5,34(s0)
  a21a8a:	1407e33b          	bltui	a5,20,a21a96 <loader_burn_efuse+0xd4>
  a21a8e:	00a2 6c3c 051f      	l.li	a0,0xa26c3c
  a21a94:	b7fd                	j	a21a82 <loader_burn_efuse+0xc0>
  a21a96:	02144783          	lbu	a5,33(s0)
  a21a9a:	4c81                	li	s9,0
  a21a9c:	00a30ab7          	lui	s5,0xa30
  a21aa0:	943e                	add	s0,s0,a5
  a21aa2:	4b05                	li	s6,1
  a21aa4:	00a27a37          	lui	s4,0xa27
  a21aa8:	00a279b7          	lui	s3,0xa27
  a21aac:	00a27937          	lui	s2,0xa27
  a21ab0:	00a274b7          	lui	s1,0xa27
  a21ab4:	022ad783          	lhu	a5,34(s5) # a30022 <__data_load__+0x8752>
  a21ab8:	f4fcf9e3          	bgeu	s9,a5,a21a0a <loader_burn_efuse+0x48>
  a21abc:	f20401e3          	beqz	s0,a219de <loader_burn_efuse+0x1c>
  a21ac0:	00245d83          	lhu	s11,2(s0)
  a21ac4:	00445d03          	lhu	s10,4(s0)
  a21ac8:	00840713          	addi	a4,s0,8
  a21acc:	8c6e                	mv	s8,s11
  a21ace:	9d6e                	add	s10,s10,s11
  a21ad0:	41bc07b3          	sub	a5,s8,s11
  a21ad4:	9fa1                	uxth	a5
  a21ad6:	01ac4a63          	blt	s8,s10,a21aea <loader_burn_efuse+0x128>
  a21ada:	301c                	lbu	a5,1(s0)
  a21adc:	207a                	lhu	a4,6(s0)
  a21ade:	0c85                	addi	s9,s9,1
  a21ae0:	0ffcfc93          	andi	s9,s9,255
  a21ae4:	97ba                	add	a5,a5,a4
  a21ae6:	943e                	add	s0,s0,a5
  a21ae8:	b7f1                	j	a21ab4 <loader_burn_efuse+0xf2>
  a21aea:	46f7069b          	addshf	a3,a4,a5,srl,3
  a21aee:	2294                	lbu	a3,0(a3)
  a21af0:	8b9d                	andi	a5,a5,7
  a21af2:	00fb17b3          	sll	a5,s6,a5
  a21af6:	8ff5                	and	a5,a5,a3
  a21af8:	e791                	bnez	a5,a21b04 <loader_burn_efuse+0x142>
  a21afa:	0c05                	addi	s8,s8,1
  a21afc:	0c42                	slli	s8,s8,0x10
  a21afe:	010c5c13          	srli	s8,s8,0x10
  a21b02:	b7f9                	j	a21ad0 <loader_burn_efuse+0x10e>
  a21b04:	007c7593          	andi	a1,s8,7
  a21b08:	003c5513          	srli	a0,s8,0x3
  a21b0c:	c63a                	sw	a4,12(sp)
  a21b0e:	016010ef          	jal	ra,a22b24 <uapi_efuse_write_bit>
  a21b12:	4732                	lw	a4,12(sp)
  a21b14:	d17d                	beqz	a0,a21afa <loader_burn_efuse+0x138>
  a21b16:	85e6                	mv	a1,s9
  a21b18:	c70a0513          	addi	a0,s4,-912 # a26c70 <g_crc16_tab+0x334>
  a21b1c:	01e030ef          	jal	ra,a24b3a <boot_msg1>
  a21b20:	c8c98513          	addi	a0,s3,-884 # a26c8c <g_crc16_tab+0x350>
  a21b24:	6f7020ef          	jal	ra,a24a1a <serial_puts>
  a21b28:	202a                	lhu	a0,2(s0)
  a21b2a:	4585                	li	a1,1
  a21b2c:	747020ef          	jal	ra,a24a72 <serial_puthex>
  a21b30:	c9890513          	addi	a0,s2,-872 # a26c98 <g_crc16_tab+0x35c>
  a21b34:	6e7020ef          	jal	ra,a24a1a <serial_puts>
  a21b38:	204a                	lhu	a0,4(s0)
  a21b3a:	4585                	li	a1,1
  a21b3c:	737020ef          	jal	ra,a24a72 <serial_puthex>
  a21b40:	d5848513          	addi	a0,s1,-680 # a26d58 <sfc_cfg+0x98>
  a21b44:	6d7020ef          	jal	ra,a24a1a <serial_puts>
  a21b48:	bf49                	j	a21ada <loader_burn_efuse+0x118>

00a21b4a <loader_read_efuse>:
  a21b4a:	8258                	push	{ra,s0-s3},-64
  a21b4c:	2542                	lhu	s0,12(a0)
  a21b4e:	02000613          	li	a2,32
  a21b52:	4581                	li	a1,0
  a21b54:	850a                	mv	a0,sp
  a21b56:	eeffe0ef          	jal	ra,a20a44 <memset>
  a21b5a:	00a2 6ca4 051f      	l.li	a0,0xa26ca4
  a21b60:	7c9020ef          	jal	ra,a24b28 <boot_msg0>
  a21b64:	00a2 6c8c 051f      	l.li	a0,0xa26c8c
  a21b6a:	6b1020ef          	jal	ra,a24a1a <serial_puts>
  a21b6e:	8522                	mv	a0,s0
  a21b70:	4585                	li	a1,1
  a21b72:	701020ef          	jal	ra,a24a72 <serial_puthex>
  a21b76:	00a2 72d4 051f      	l.li	a0,0xa272d4
  a21b7c:	69f020ef          	jal	ra,a24a1a <serial_puts>
  a21b80:	130464bb          	bltui	s0,19,a21b92 <loader_read_efuse+0x48>
  a21b84:	00a2 6cb0 051f      	l.li	a0,0xa26cb0
  a21b8a:	79f020ef          	jal	ra,a24b28 <boot_msg0>
  a21b8e:	547d                	li	s0,-1
  a21b90:	a825                	j	a21bc8 <loader_read_efuse+0x7e>
  a21b92:	0ff47513          	andi	a0,s0,255
  a21b96:	02000613          	li	a2,32
  a21b9a:	858a                	mv	a1,sp
  a21b9c:	4f3020ef          	jal	ra,a2488e <efuse_read_item>
  a21ba0:	842a                	mv	s0,a0
  a21ba2:	f575                	bnez	a0,a21b8e <loader_read_efuse+0x44>
  a21ba4:	4481                	li	s1,0
  a21ba6:	00a279b7          	lui	s3,0xa27
  a21baa:	02000913          	li	s2,32
  a21bae:	009107b3          	add	a5,sp,s1
  a21bb2:	2388                	lbu	a0,0(a5)
  a21bb4:	4585                	li	a1,1
  a21bb6:	0485                	addi	s1,s1,1
  a21bb8:	6bb020ef          	jal	ra,a24a72 <serial_puthex>
  a21bbc:	cbc98513          	addi	a0,s3,-836 # a26cbc <g_crc16_tab+0x380>
  a21bc0:	65b020ef          	jal	ra,a24a1a <serial_puts>
  a21bc4:	ff2495e3          	bne	s1,s2,a21bae <loader_read_efuse+0x64>
  a21bc8:	8522                	mv	a0,s0
  a21bca:	8254                	popret	{ra,s0-s3},64

00a21bcc <sfc_flash_read>:
  a21bcc:	87b2                	mv	a5,a2
  a21bce:	862e                	mv	a2,a1
  a21bd0:	85be                	mv	a1,a5
  a21bd2:	1410206f          	j	a24512 <uapi_sfc_reg_read>

00a21bd6 <sfc_flash_init>:
  a21bd6:	00a2 6cc0 051f      	l.li	a0,0xa26cc0
  a21bdc:	08d0206f          	j	a24468 <uapi_sfc_init>

00a21be0 <sfc_flash_erase>:
  a21be0:	ff05923b          	bnei	a1,-1,a21be8 <sfc_flash_erase+0x8>
  a21be4:	3bf0206f          	j	a247a2 <uapi_sfc_reg_erase_chip>
  a21be8:	ffe007b7          	lui	a5,0xffe00
  a21bec:	953e                	add	a0,a0,a5
  a21bee:	2f70206f          	j	a246e4 <uapi_sfc_reg_erase>

00a21bf2 <sfc_flash_write>:
  a21bf2:	00b508b3          	add	a7,a0,a1
  a21bf6:	00800837          	lui	a6,0x800
  a21bfa:	86ae                	mv	a3,a1
  a21bfc:	0108f763          	bgeu	a7,a6,a21c0a <sfc_flash_write+0x18>
  a21c00:	8732                	mv	a4,a2
  a21c02:	862e                	mv	a2,a1
  a21c04:	85ba                	mv	a1,a4
  a21c06:	1e10206f          	j	a245e6 <uapi_sfc_reg_write>
  a21c0a:	8018                	push	{ra},-16
  a21c0c:	87aa                	mv	a5,a0
  a21c0e:	00200537          	lui	a0,0x200
  a21c12:	953e                	add	a0,a0,a5
  a21c14:	05b030ef          	jal	ra,a2546e <memcpy_s>
  a21c18:	00a03533          	snez	a0,a0
  a21c1c:	40a00533          	neg	a0,a0
  a21c20:	8014                	popret	{ra},16

00a21c22 <start_loaderboot>:
  a21c22:	9f18                	push	{ra},-512
  a21c24:	db010113          	addi	sp,sp,-592
  a21c28:	41000613          	li	a2,1040
  a21c2c:	4581                	li	a1,0
  a21c2e:	1808                	addi	a0,sp,48
  a21c30:	e15fe0ef          	jal	ra,a20a44 <memset>
  a21c34:	4e9020ef          	jal	ra,a2491c <boot_clock_adapt>
  a21c38:	451d                	li	a0,7
  a21c3a:	4f9000ef          	jal	ra,a22932 <uapi_watchdog_init>
  a21c3e:	4501                	li	a0,0
  a21c40:	545000ef          	jal	ra,a22984 <uapi_watchdog_enable>
  a21c44:	6f8000ef          	jal	ra,a2233c <uapi_tcxo_init>
  a21c48:	4631                	li	a2,12
  a21c4a:	00a0 6a94 059f      	l.li	a1,0xa06a94
  a21c50:	850a                	mv	a0,sp
  a21c52:	ea1fe0ef          	jal	ra,a20af2 <memcpy>
  a21c56:	4581                	li	a1,0
  a21c58:	850a                	mv	a0,sp
  a21c5a:	6fd020ef          	jal	ra,a24b56 <hiburn_uart_init>
  a21c5e:	00a2 6ccc 051f      	l.li	a0,0xa26ccc
  a21c64:	6c5020ef          	jal	ra,a24b28 <boot_msg0>
  a21c68:	00a2 1bd6 079f      	l.li	a5,0xa21bd6
  a21c6e:	ce3e                	sw	a5,28(sp)
  a21c70:	00a2 1bcc 079f      	l.li	a5,0xa21bcc
  a21c76:	d03e                	sw	a5,32(sp)
  a21c78:	00a2 1bf2 079f      	l.li	a5,0xa21bf2
  a21c7e:	d23e                	sw	a5,36(sp)
  a21c80:	0868                	addi	a0,sp,28
  a21c82:	00a2 1be0 079f      	l.li	a5,0xa21be0
  a21c88:	d43e                	sw	a5,40(sp)
  a21c8a:	d602                	sw	zero,44(sp)
  a21c8c:	978ff0ef          	jal	ra,a20e04 <boot_regist_flash_cmd>
  a21c90:	40003737          	lui	a4,0x40003
  a21c94:	15472783          	lw	a5,340(a4) # 40003154 <__data_load__+0x3f5db884>
  a21c98:	010006b7          	lui	a3,0x1000
  a21c9c:	4515                	li	a0,5
  a21c9e:	8fd5                	or	a5,a5,a3
  a21ca0:	14f72a23          	sw	a5,340(a4)
  a21ca4:	553020ef          	jal	ra,a249f6 <mdelay>
  a21ca8:	373d                	jal	ra,a21bd6 <sfc_flash_init>
  a21caa:	c539                	beqz	a0,a21cf8 <start_loaderboot+0xd6>
  a21cac:	85aa                	mv	a1,a0
  a21cae:	00a2 6ce8 051f      	l.li	a0,0xa26ce8
  a21cb4:	687020ef          	jal	ra,a24b3a <boot_msg1>
  a21cb8:	4a9020ef          	jal	ra,a24960 <switch_flash_clock_to_pll>
  a21cbc:	4d1020ef          	jal	ra,a2498c <config_sfc_ctrl_ds>
  a21cc0:	5b6020ef          	jal	ra,a24276 <sfc_port_fix_sr>
  a21cc4:	85aa                	mv	a1,a0
  a21cc6:	c511                	beqz	a0,a21cd2 <start_loaderboot+0xb0>
  a21cc8:	00a2 6d14 051f      	l.li	a0,0xa26d14
  a21cce:	66d020ef          	jal	ra,a24b3a <boot_msg1>
  a21cd2:	3cb020ef          	jal	ra,a2489c <set_efuse_period>
  a21cd6:	58f000ef          	jal	ra,a22a64 <uapi_efuse_init>
  a21cda:	765020ef          	jal	ra,a24c3e <boot_malloc_init>
  a21cde:	05a00513          	li	a0,90
  a21ce2:	de2ff0ef          	jal	ra,a212c4 <loader_ack>
  a21ce6:	00a2 6d28 051f      	l.li	a0,0xa26d28
  a21cec:	63d020ef          	jal	ra,a24b28 <boot_msg0>
  a21cf0:	1808                	addi	a0,sp,48
  a21cf2:	e48ff0ef          	jal	ra,a2133a <cmd_loop>
  a21cf6:	a001                	j	a21cf6 <start_loaderboot+0xd4>
  a21cf8:	00a2 6d00 051f      	l.li	a0,0xa26d00
  a21cfe:	62b020ef          	jal	ra,a24b28 <boot_msg0>
  a21d02:	bf5d                	j	a21cb8 <start_loaderboot+0x96>

00a21d04 <serial_port_set_baudrate>:
  a21d04:	8128                	push	{ra,s0},-32
  a21d06:	842a                	mv	s0,a0
  a21d08:	6cb020ef          	jal	ra,a24bd2 <hiburn_uart_deinit>
  a21d0c:	440017b7          	lui	a5,0x44001
  a21d10:	1047a703          	lw	a4,260(a5) # 44001104 <__data_load__+0x435d9834>
  a21d14:	fffb ffff 069f      	l.li	a3,0xfffbffff
  a21d1a:	0989 6800 059f      	l.li	a1,0x9896800
  a21d20:	8f75                	and	a4,a4,a3
  a21d22:	10e7a223          	sw	a4,260(a5)
  a21d26:	1347a703          	lw	a4,308(a5)
  a21d2a:	000406b7          	lui	a3,0x40
  a21d2e:	4501                	li	a0,0
  a21d30:	00276713          	ori	a4,a4,2
  a21d34:	12e7aa23          	sw	a4,308(a5)
  a21d38:	1047a703          	lw	a4,260(a5)
  a21d3c:	8f55                	or	a4,a4,a3
  a21d3e:	10e7a223          	sw	a4,260(a5)
  a21d42:	258020ef          	jal	ra,a23f9a <uart_port_set_clock_value>
  a21d46:	4631                	li	a2,12
  a21d48:	85a2                	mv	a1,s0
  a21d4a:	850a                	mv	a0,sp
  a21d4c:	da7fe0ef          	jal	ra,a20af2 <memcpy>
  a21d50:	850a                	mv	a0,sp
  a21d52:	4581                	li	a1,0
  a21d54:	603020ef          	jal	ra,a24b56 <hiburn_uart_init>
  a21d58:	4501                	li	a0,0
  a21d5a:	8124                	popret	{ra,s0},32

00a21d5c <uart_ack>:
  a21d5c:	8038                	push	{ra,s0-s1},-16
  a21d5e:	dead beef 079f      	l.li	a5,0xdeadbeef
  a21d64:	c15c                	sw	a5,4(a0)
  a21d66:	1ee1 000c 079f      	l.li	a5,0x1ee1000c
  a21d6c:	00450493          	addi	s1,a0,4 # 200004 <g_intheap_size+0x1e6aa4>
  a21d70:	c51c                	sw	a5,8(a0)
  a21d72:	05a00793          	li	a5,90
  a21d76:	842a                	mv	s0,a0
  a21d78:	a55e                	sh	a5,12(a0)
  a21d7a:	4629                	li	a2,10
  a21d7c:	85a6                	mv	a1,s1
  a21d7e:	4501                	li	a0,0
  a21d80:	3685                	jal	ra,a218e0 <crc16_ccitt>
  a21d82:	240e                	lhu	a1,8(s0)
  a21d84:	40a41623          	sh	a0,1036(s0)
  a21d88:	8526                	mv	a0,s1
  a21d8a:	15f9                	addi	a1,a1,-2 # 1ffe <ccause+0x103c>
  a21d8c:	4b3020ef          	jal	ra,a24a3e <serial_put_buf>
  a21d90:	4589                	li	a1,2
  a21d92:	40c40513          	addi	a0,s0,1036
  a21d96:	8030                	pop	{ra,s0-s1},16
  a21d98:	4a70206f          	j	a24a3e <serial_put_buf>

00a21d9c <uart_baudrate_rcv>:
  a21d9c:	9f38                	push	{ra,s0-s1},-512
  a21d9e:	de010113          	addi	sp,sp,-544
  a21da2:	84aa                	mv	s1,a0
  a21da4:	41000613          	li	a2,1040
  a21da8:	4581                	li	a1,0
  a21daa:	850a                	mv	a0,sp
  a21dac:	c99fe0ef          	jal	ra,a20a44 <memset>
  a21db0:	449c                	lw	a5,8(s1)
  a21db2:	00ff ffff 071f      	l.li	a4,0xffffff
  a21db8:	4501                	li	a0,0
  a21dba:	8ff9                	and	a5,a5,a4
  a21dbc:	005a 0012 071f      	l.li	a4,0x5a0012
  a21dc2:	02e79363          	bne	a5,a4,a21de8 <uart_baudrate_rcv+0x4c>
  a21dc6:	00a06437          	lui	s0,0xa06
  a21dca:	46a1                	li	a3,8
  a21dcc:	00c48613          	addi	a2,s1,12
  a21dd0:	45b1                	li	a1,12
  a21dd2:	60040513          	addi	a0,s0,1536 # a06600 <g_uart_param>
  a21dd6:	698030ef          	jal	ra,a2546e <memcpy_s>
  a21dda:	850a                	mv	a0,sp
  a21ddc:	3741                	jal	ra,a21d5c <uart_ack>
  a21dde:	4515                	li	a0,5
  a21de0:	417020ef          	jal	ra,a249f6 <mdelay>
  a21de4:	60040513          	addi	a0,s0,1536
  a21de8:	41010113          	addi	sp,sp,1040
  a21dec:	8034                	popret	{ra,s0-s1},16

00a21dee <loader_download_is_flash_all_erased>:
  a21dee:	00a0 660c 079f      	l.li	a5,0xa0660c
  a21df4:	2388                	lbu	a0,0(a5)
  a21df6:	8082                	ret

00a21df8 <loader_erase_all_process>:
  a21df8:	2538                	lbu	a4,10(a0)
  a21dfa:	0d200793          	li	a5,210
  a21dfe:	00f70663          	beq	a4,a5,a21e0a <loader_erase_all_process+0x12>
  a21e02:	557d                	li	a0,-1
  a21e04:	8082                	ret
  a21e06:	557d                	li	a0,-1
  a21e08:	8134                	popret	{ra,s0-s1},32
  a21e0a:	8138                	push	{ra,s0-s1},-32
  a21e0c:	4904                	lw	s1,16(a0)
  a21e0e:	495c                	lw	a5,20(a0)
  a21e10:	842e                	mv	s0,a1
  a21e12:	009034b3          	snez	s1,s1
  a21e16:	ff0799bb          	bnei	a5,-1,a21e3c <loader_erase_all_process+0x44>
  a21e1a:	fe3fe0ef          	jal	ra,a20dfc <boot_get_flash_funcs>
  a21e1e:	c62a                	sw	a0,12(sp)
  a21e20:	d17d                	beqz	a0,a21e06 <loader_erase_all_process+0xe>
  a21e22:	5cb020ef          	jal	ra,a24bec <boot_wdt_kick>
  a21e26:	4532                	lw	a0,12(sp)
  a21e28:	55fd                	li	a1,-1
  a21e2a:	455c                	lw	a5,12(a0)
  a21e2c:	4501                	li	a0,0
  a21e2e:	9782                	jalr	a5
  a21e30:	fd61                	bnez	a0,a21e08 <loader_erase_all_process+0x10>
  a21e32:	00a0 660c 079f      	l.li	a5,0xa0660c
  a21e38:	4705                	li	a4,1
  a21e3a:	a398                	sb	a4,0(a5)
  a21e3c:	a004                	sb	s1,0(s0)
  a21e3e:	4501                	li	a0,0
  a21e40:	b7e1                	j	a21e08 <loader_erase_all_process+0x10>

00a21e42 <non_os_enter_critical>:
  a21e42:	8038                	push	{ra,s0-s1},-16
  a21e44:	300024f3          	csrr	s1,mstatus
  a21e48:	300477f3          	csrrci	a5,mstatus,8
  a21e4c:	00a06437          	lui	s0,0xa06
  a21e50:	61c40793          	addi	a5,s0,1564 # a0661c <g_non_os_critical_nesting>
  a21e54:	239e                	lhu	a5,0(a5)
  a21e56:	61c40413          	addi	s0,s0,1564
  a21e5a:	9fa1                	uxth	a5
  a21e5c:	eb89                	bnez	a5,a21e6e <non_os_enter_critical+0x2c>
  a21e5e:	00a0 6614 079f      	l.li	a5,0xa06614
  a21e64:	439c                	lw	a5,0(a5)
  a21e66:	c781                	beqz	a5,a21e6e <non_os_enter_critical+0x2c>
  a21e68:	8586                	mv	a1,ra
  a21e6a:	4501                	li	a0,0
  a21e6c:	9782                	jalr	a5
  a21e6e:	00a0 6610 079f      	l.li	a5,0xa06610
  a21e74:	439c                	lw	a5,0(a5)
  a21e76:	c789                	beqz	a5,a21e80 <non_os_enter_critical+0x3e>
  a21e78:	8586                	mv	a1,ra
  a21e7a:	2012                	lhu	a2,0(s0)
  a21e7c:	4501                	li	a0,0
  a21e7e:	9782                	jalr	a5
  a21e80:	201e                	lhu	a5,0(s0)
  a21e82:	9fa1                	uxth	a5
  a21e84:	eb89                	bnez	a5,a21e96 <non_os_enter_critical+0x54>
  a21e86:	808d                	srli	s1,s1,0x3
  a21e88:	0014c493          	xori	s1,s1,1
  a21e8c:	8885                	andi	s1,s1,1
  a21e8e:	00a0 6618 079f      	l.li	a5,0xa06618
  a21e94:	c384                	sw	s1,0(a5)
  a21e96:	201e                	lhu	a5,0(s0)
  a21e98:	0785                	addi	a5,a5,1
  a21e9a:	9fa1                	uxth	a5
  a21e9c:	a01e                	sh	a5,0(s0)
  a21e9e:	201e                	lhu	a5,0(s0)
  a21ea0:	9fa1                	uxth	a5
  a21ea2:	eb81                	bnez	a5,a21eb2 <non_os_enter_critical+0x70>
  a21ea4:	06300593          	li	a1,99
  a21ea8:	03100513          	li	a0,49
  a21eac:	8030                	pop	{ra,s0-s1},16
  a21eae:	4520306f          	j	a25300 <panic>
  a21eb2:	0ff0000f          	fence
  a21eb6:	0ff0000f          	fence
  a21eba:	8034                	popret	{ra,s0-s1},16

00a21ebc <non_os_exit_critical>:
  a21ebc:	8038                	push	{ra,s0-s1},-16
  a21ebe:	00a06437          	lui	s0,0xa06
  a21ec2:	61c40793          	addi	a5,s0,1564 # a0661c <g_non_os_critical_nesting>
  a21ec6:	239e                	lhu	a5,0(a5)
  a21ec8:	9fa1                	uxth	a5
  a21eca:	eb81                	bnez	a5,a21eda <non_os_exit_critical+0x1e>
  a21ecc:	06f00593          	li	a1,111
  a21ed0:	03100513          	li	a0,49
  a21ed4:	8030                	pop	{ra,s0-s1},16
  a21ed6:	42a0306f          	j	a25300 <panic>
  a21eda:	61c40413          	addi	s0,s0,1564
  a21ede:	201e                	lhu	a5,0(s0)
  a21ee0:	8486                	mv	s1,ra
  a21ee2:	17fd                	addi	a5,a5,-1
  a21ee4:	9fa1                	uxth	a5
  a21ee6:	a01e                	sh	a5,0(s0)
  a21ee8:	00a0 6610 079f      	l.li	a5,0xa06610
  a21eee:	439c                	lw	a5,0(a5)
  a21ef0:	c789                	beqz	a5,a21efa <non_os_exit_critical+0x3e>
  a21ef2:	8586                	mv	a1,ra
  a21ef4:	2012                	lhu	a2,0(s0)
  a21ef6:	4505                	li	a0,1
  a21ef8:	9782                	jalr	a5
  a21efa:	201e                	lhu	a5,0(s0)
  a21efc:	9fa1                	uxth	a5
  a21efe:	e785                	bnez	a5,a21f26 <non_os_exit_critical+0x6a>
  a21f00:	00a0 6614 079f      	l.li	a5,0xa06614
  a21f06:	439c                	lw	a5,0(a5)
  a21f08:	c781                	beqz	a5,a21f10 <non_os_exit_critical+0x54>
  a21f0a:	85a6                	mv	a1,s1
  a21f0c:	4505                	li	a0,1
  a21f0e:	9782                	jalr	a5
  a21f10:	00a0 6618 079f      	l.li	a5,0xa06618
  a21f16:	439c                	lw	a5,0(a5)
  a21f18:	e399                	bnez	a5,a21f1e <non_os_exit_critical+0x62>
  a21f1a:	300467f3          	csrrsi	a5,mstatus,8
  a21f1e:	0ff0000f          	fence
  a21f22:	0ff0000f          	fence
  a21f26:	8034                	popret	{ra,s0-s1},16

00a21f28 <malloc_register_funcs>:
  a21f28:	8018                	push	{ra},-16
  a21f2a:	862a                	mv	a2,a0
  a21f2c:	46b1                	li	a3,12
  a21f2e:	45b1                	li	a1,12
  a21f30:	00a0 6620 051f      	l.li	a0,0xa06620
  a21f36:	538030ef          	jal	ra,a2546e <memcpy_s>
  a21f3a:	4501                	li	a0,0
  a21f3c:	8014                	popret	{ra},16

00a21f3e <rom_malloc_init>:
  a21f3e:	8038                	push	{ra,s0-s1},-16
  a21f40:	842e                	mv	s0,a1
  a21f42:	46e1                	li	a3,24
  a21f44:	4601                	li	a2,0
  a21f46:	45e1                	li	a1,24
  a21f48:	84aa                	mv	s1,a0
  a21f4a:	55c030ef          	jal	ra,a254a6 <memset_s>
  a21f4e:	ff840793          	addi	a5,s0,-8
  a21f52:	00a0 662c 071f      	l.li	a4,0xa0662c
  a21f58:	01b48513          	addi	a0,s1,27
  a21f5c:	9bf1                	andi	a5,a5,-4
  a21f5e:	9971                	andi	a0,a0,-4
  a21f60:	cb1c                	sw	a5,16(a4)
  a21f62:	17e1                	addi	a5,a5,-8
  a21f64:	8f89                	sub	a5,a5,a0
  a21f66:	c748                	sw	a0,12(a4)
  a21f68:	9fa1                	uxth	a5
  a21f6a:	a15e                	sh	a5,4(a0)
  a21f6c:	c71c                	sw	a5,8(a4)
  a21f6e:	679d                	lui	a5,0x7
  a21f70:	07478793          	addi	a5,a5,116 # 7074 <ccause+0x60b2>
  a21f74:	a17e                	sh	a5,6(a0)
  a21f76:	00052023          	sw	zero,0(a0)
  a21f7a:	8034                	popret	{ra,s0-s1},16

00a21f7c <malloc_init>:
  a21f7c:	b7c9                	j	a21f3e <rom_malloc_init>

00a21f7e <rom_malloc>:
  a21f7e:	00a066b7          	lui	a3,0xa06
  a21f82:	62c68793          	addi	a5,a3,1580 # a0662c <g_st_dfx>
  a21f86:	47dc                	lw	a5,12(a5)
  a21f88:	62c68693          	addi	a3,a3,1580
  a21f8c:	e399                	bnez	a5,a21f92 <rom_malloc+0x14>
  a21f8e:	4501                	li	a0,0
  a21f90:	8082                	ret
  a21f92:	dd75                	beqz	a0,a21f8e <rom_malloc+0x10>
  a21f94:	23f2                	lhu	a2,6(a5)
  a21f96:	671d                	lui	a4,0x7
  a21f98:	07470813          	addi	a6,a4,116 # 7074 <ccause+0x60b2>
  a21f9c:	01060663          	beq	a2,a6,a21fa8 <rom_malloc+0x2a>
  a21fa0:	c6c70713          	addi	a4,a4,-916
  a21fa4:	fee615e3          	bne	a2,a4,a21f8e <rom_malloc+0x10>
  a21fa8:	050d                	addi	a0,a0,3
  a21faa:	9971                	andi	a0,a0,-4
  a21fac:	671d                	lui	a4,0x7
  a21fae:	9d21                	uxth	a0
  a21fb0:	4881                	li	a7,0
  a21fb2:	07470613          	addi	a2,a4,116 # 7074 <ccause+0x60b2>
  a21fb6:	00850813          	addi	a6,a0,8
  a21fba:	c6c70313          	addi	t1,a4,-916
  a21fbe:	0067de03          	lhu	t3,6(a5)
  a21fc2:	23da                	lhu	a4,4(a5)
  a21fc4:	04ce1263          	bne	t3,a2,a22008 <rom_malloc+0x8a>
  a21fc8:	02e87563          	bgeu	a6,a4,a21ff2 <rom_malloc+0x74>
  a21fcc:	8f09                	sub	a4,a4,a0
  a21fce:	983e                	add	a6,a6,a5
  a21fd0:	1761                	addi	a4,a4,-8
  a21fd2:	00e81223          	sh	a4,4(a6) # 800004 <g_intheap_size+0x7e6aa4>
  a21fd6:	00c81323          	sh	a2,6(a6)
  a21fda:	671d                	lui	a4,0x7
  a21fdc:	c6c70713          	addi	a4,a4,-916 # 6c6c <ccause+0x5caa>
  a21fe0:	c38c                	sw	a1,0(a5)
  a21fe2:	a3fa                	sh	a4,6(a5)
  a21fe4:	4298                	lw	a4,0(a3)
  a21fe6:	a3ca                	sh	a0,4(a5)
  a21fe8:	953a                	add	a0,a0,a4
  a21fea:	c288                	sw	a0,0(a3)
  a21fec:	00878513          	addi	a0,a5,8
  a21ff0:	8082                	ret
  a21ff2:	00a76b63          	bltu	a4,a0,a22008 <rom_malloc+0x8a>
  a21ff6:	661d                	lui	a2,0x7
  a21ff8:	c6c60613          	addi	a2,a2,-916 # 6c6c <ccause+0x5caa>
  a21ffc:	c38c                	sw	a1,0(a5)
  a21ffe:	a3f2                	sh	a2,6(a5)
  a22000:	4290                	lw	a2,0(a3)
  a22002:	9732                	add	a4,a4,a2
  a22004:	c298                	sw	a4,0(a3)
  a22006:	b7dd                	j	a21fec <rom_malloc+0x6e>
  a22008:	0721                	addi	a4,a4,8
  a2200a:	97ba                	add	a5,a5,a4
  a2200c:	4a98                	lw	a4,16(a3)
  a2200e:	00e7ef63          	bltu	a5,a4,a2202c <rom_malloc+0xae>
  a22012:	f6089ee3          	bnez	a7,a21f8e <rom_malloc+0x10>
  a22016:	46d8                	lw	a4,12(a3)
  a22018:	235e                	lhu	a5,4(a4)
  a2201a:	0106ae03          	lw	t3,16(a3)
  a2201e:	07a1                	addi	a5,a5,8
  a22020:	00f708b3          	add	a7,a4,a5
  a22024:	01c8ea63          	bltu	a7,t3,a22038 <rom_malloc+0xba>
  a22028:	46dc                	lw	a5,12(a3)
  a2202a:	4885                	li	a7,1
  a2202c:	23fa                	lhu	a4,6(a5)
  a2202e:	f86708e3          	beq	a4,t1,a21fbe <rom_malloc+0x40>
  a22032:	f8c706e3          	beq	a4,a2,a21fbe <rom_malloc+0x40>
  a22036:	bfa1                	j	a21f8e <rom_malloc+0x10>
  a22038:	00675e03          	lhu	t3,6(a4)
  a2203c:	00ce1b63          	bne	t3,a2,a22052 <rom_malloc+0xd4>
  a22040:	0068de03          	lhu	t3,6(a7)
  a22044:	00ce1763          	bne	t3,a2,a22052 <rom_malloc+0xd4>
  a22048:	0048d883          	lhu	a7,4(a7)
  a2204c:	97c6                	add	a5,a5,a7
  a2204e:	a35e                	sh	a5,4(a4)
  a22050:	88ba                	mv	a7,a4
  a22052:	8746                	mv	a4,a7
  a22054:	b7d1                	j	a22018 <rom_malloc+0x9a>

00a22056 <malloc>:
  a22056:	8018                	push	{ra},-16
  a22058:	8586                	mv	a1,ra
  a2205a:	8010                	pop	{ra},16
  a2205c:	b70d                	j	a21f7e <rom_malloc>

00a2205e <rom_free>:
  a2205e:	c50d                	beqz	a0,a22088 <rom_free+0x2a>
  a22060:	ffe55703          	lhu	a4,-2(a0)
  a22064:	0000 6c6c 079f      	l.li	a5,0x6c6c
  a2206a:	00f71f63          	bne	a4,a5,a22088 <rom_free+0x2a>
  a2206e:	679d                	lui	a5,0x7
  a22070:	07478793          	addi	a5,a5,116 # 7074 <ccause+0x60b2>
  a22074:	fef51f23          	sh	a5,-2(a0)
  a22078:	00a0 662c 071f      	l.li	a4,0xa0662c
  a2207e:	ffc55683          	lhu	a3,-4(a0)
  a22082:	435c                	lw	a5,4(a4)
  a22084:	97b6                	add	a5,a5,a3
  a22086:	c35c                	sw	a5,4(a4)
  a22088:	4501                	li	a0,0
  a2208a:	8082                	ret

00a2208c <free>:
  a2208c:	bfc9                	j	a2205e <rom_free>

00a2208e <osal_irq_lock>:
  a2208e:	8018                	push	{ra},-16
  a22090:	3b4d                	jal	ra,a21e42 <non_os_enter_critical>
  a22092:	4501                	li	a0,0
  a22094:	8014                	popret	{ra},16

00a22096 <osal_irq_restore>:
  a22096:	b51d                	j	a21ebc <non_os_exit_critical>

00a22098 <drv_rom_hash>:
  a22098:	8e78                	push	{ra,s0-s5},-256
  a2209a:	892a                	mv	s2,a0
  a2209c:	8aae                	mv	s5,a1
  a2209e:	84b2                	mv	s1,a2
  a220a0:	4581                	li	a1,0
  a220a2:	04000613          	li	a2,64
  a220a6:	1008                	addi	a0,sp,32
  a220a8:	c63a                	sw	a4,12(sp)
  a220aa:	8a36                	mv	s4,a3
  a220ac:	843e                	mv	s0,a5
  a220ae:	997fe0ef          	jal	ra,a20a44 <memset>
  a220b2:	08000613          	li	a2,128
  a220b6:	4581                	li	a1,0
  a220b8:	1088                	addi	a0,sp,96
  a220ba:	98bfe0ef          	jal	ra,a20a44 <memset>
  a220be:	ce02                	sw	zero,28(sp)
  a220c0:	4732                	lw	a4,12(sp)
  a220c2:	000a9463          	bnez	s5,a220ca <drv_rom_hash+0x32>
  a220c6:	557d                	li	a0,-1
  a220c8:	8e74                	popret	{ra,s0-s5},256
  a220ca:	fe0a0ee3          	beqz	s4,a220c6 <drv_rom_hash+0x2e>
  a220ce:	010007b7          	lui	a5,0x1000
  a220d2:	fef4fae3          	bgeu	s1,a5,a220c6 <drv_rom_hash+0x2e>
  a220d6:	20f71c3b          	bnei	a4,32,a220c6 <drv_rom_hash+0x2e>
  a220da:	0216 9100 079f      	l.li	a5,0x2169100
  a220e0:	0cf90963          	beq	s2,a5,a221b2 <drv_rom_hash+0x11a>
  a220e4:	00a2 6d5c 061f      	l.li	a2,0xa26d5c
  a220ea:	85ca                	mv	a1,s2
  a220ec:	8522                	mv	a0,s0
  a220ee:	609000ef          	jal	ra,a22ef6 <hal_cipher_hash_config>
  a220f2:	f979                	bnez	a0,a220c8 <drv_rom_hash+0x30>
  a220f4:	03f4f913          	andi	s2,s1,63
  a220f8:	412489b3          	sub	s3,s1,s2
  a220fc:	0a099f63          	bnez	s3,a221ba <drv_rom_hash+0x122>
  a22100:	08000693          	li	a3,128
  a22104:	4601                	li	a2,0
  a22106:	08000593          	li	a1,128
  a2210a:	1088                	addi	a0,sp,96
  a2210c:	39a030ef          	jal	ra,a254a6 <memset_s>
  a22110:	86ca                	mv	a3,s2
  a22112:	013a8633          	add	a2,s5,s3
  a22116:	08000593          	li	a1,128
  a2211a:	1088                	addi	a0,sp,96
  a2211c:	352030ef          	jal	ra,a2546e <memcpy_s>
  a22120:	f15d                	bnez	a0,a220c6 <drv_rom_hash+0x2e>
  a22122:	119c                	addi	a5,sp,224
  a22124:	97ca                	add	a5,a5,s2
  a22126:	f8000713          	li	a4,-128
  a2212a:	f8e78023          	sb	a4,-128(a5) # ffff80 <__data_load__+0x5d86b0>
  a2212e:	04000993          	li	s3,64
  a22132:	3809623b          	bltui	s2,56,a2213a <drv_rom_hash+0xa2>
  a22136:	08000993          	li	s3,128
  a2213a:	00349713          	slli	a4,s1,0x3
  a2213e:	01b49613          	slli	a2,s1,0x1b
  a22142:	0000 ff00 079f      	l.li	a5,0xff00
  a22148:	50e7c79b          	andshf	a5,a5,a4,srl,8
  a2214c:	70e6261b          	orshf	a2,a2,a4,srl,24
  a22150:	8e5d                	or	a2,a2,a5
  a22152:	00ff07b7          	lui	a5,0xff0
  a22156:	1697c49b          	andshf	s1,a5,s1,sll,11
  a2215a:	8e45                	or	a2,a2,s1
  a2215c:	ffc98513          	addi	a0,s3,-4
  a22160:	109c                	addi	a5,sp,96
  a22162:	ce32                	sw	a2,28(sp)
  a22164:	4691                	li	a3,4
  a22166:	0870                	addi	a2,sp,28
  a22168:	4591                	li	a1,4
  a2216a:	953e                	add	a0,a0,a5
  a2216c:	302030ef          	jal	ra,a2546e <memcpy_s>
  a22170:	f939                	bnez	a0,a220c6 <drv_rom_hash+0x2e>
  a22172:	4695                	li	a3,5
  a22174:	864e                	mv	a2,s3
  a22176:	108c                	addi	a1,sp,96
  a22178:	8522                	mv	a0,s0
  a2217a:	65f000ef          	jal	ra,a22fd8 <hal_cipher_hash_add_in_node>
  a2217e:	f529                	bnez	a0,a220c8 <drv_rom_hash+0x30>
  a22180:	4581                	li	a1,0
  a22182:	8522                	mv	a0,s0
  a22184:	6c9000ef          	jal	ra,a2304c <hal_cipher_hash_start>
  a22188:	f121                	bnez	a0,a220c8 <drv_rom_hash+0x30>
  a2218a:	04000613          	li	a2,64
  a2218e:	100c                	addi	a1,sp,32
  a22190:	8522                	mv	a0,s0
  a22192:	0a4010ef          	jal	ra,a23236 <hal_cipher_hash_wait_done>
  a22196:	f90d                	bnez	a0,a220c8 <drv_rom_hash+0x30>
  a22198:	02000693          	li	a3,32
  a2219c:	1010                	addi	a2,sp,32
  a2219e:	02000593          	li	a1,32
  a221a2:	8552                	mv	a0,s4
  a221a4:	2ca030ef          	jal	ra,a2546e <memcpy_s>
  a221a8:	00a03533          	snez	a0,a0
  a221ac:	40a00533          	neg	a0,a0
  a221b0:	bf21                	j	a220c8 <drv_rom_hash+0x30>
  a221b2:	00a2 6d7c 061f      	l.li	a2,0xa26d7c
  a221b8:	bf0d                	j	a220ea <drv_rom_hash+0x52>
  a221ba:	4695                	li	a3,5
  a221bc:	864e                	mv	a2,s3
  a221be:	85d6                	mv	a1,s5
  a221c0:	8522                	mv	a0,s0
  a221c2:	617000ef          	jal	ra,a22fd8 <hal_cipher_hash_add_in_node>
  a221c6:	f00511e3          	bnez	a0,a220c8 <drv_rom_hash+0x30>
  a221ca:	4581                	li	a1,0
  a221cc:	8522                	mv	a0,s0
  a221ce:	67f000ef          	jal	ra,a2304c <hal_cipher_hash_start>
  a221d2:	ee051be3          	bnez	a0,a220c8 <drv_rom_hash+0x30>
  a221d6:	4601                	li	a2,0
  a221d8:	4581                	li	a1,0
  a221da:	8522                	mv	a0,s0
  a221dc:	05a010ef          	jal	ra,a23236 <hal_cipher_hash_wait_done>
  a221e0:	f20500e3          	beqz	a0,a22100 <drv_rom_hash+0x68>
  a221e4:	b5d5                	j	a220c8 <drv_rom_hash+0x30>

00a221e6 <crypto_get_phys_addr>:
  a221e6:	00a0 6644 079f      	l.li	a5,0xa06644
  a221ec:	0087a303          	lw	t1,8(a5) # ff0008 <__data_load__+0x5c8738>
  a221f0:	00030363          	beqz	t1,a221f6 <crypto_get_phys_addr+0x10>
  a221f4:	8302                	jr	t1
  a221f6:	8082                	ret

00a221f8 <drv_cipher_register_func>:
  a221f8:	c115                	beqz	a0,a2221c <drv_cipher_register_func+0x24>
  a221fa:	4118                	lw	a4,0(a0)
  a221fc:	00a0 6644 079f      	l.li	a5,0xa06644
  a22202:	c398                	sw	a4,0(a5)
  a22204:	4158                	lw	a4,4(a0)
  a22206:	c3d8                	sw	a4,4(a5)
  a22208:	4518                	lw	a4,8(a0)
  a2220a:	c798                	sw	a4,8(a5)
  a2220c:	4918                	lw	a4,16(a0)
  a2220e:	cb98                	sw	a4,16(a5)
  a22210:	4d58                	lw	a4,28(a0)
  a22212:	cfd8                	sw	a4,28(a5)
  a22214:	5118                	lw	a4,32(a0)
  a22216:	4501                	li	a0,0
  a22218:	d398                	sw	a4,32(a5)
  a2221a:	8082                	ret
  a2221c:	557d                	li	a0,-1
  a2221e:	8082                	ret

00a22220 <crypto_get_cpu_type>:
  a22220:	00a0 6644 079f      	l.li	a5,0xa06644
  a22226:	01c7a303          	lw	t1,28(a5)
  a2222a:	00030363          	beqz	t1,a22230 <crypto_get_cpu_type+0x10>
  a2222e:	8302                	jr	t1
  a22230:	4505                	li	a0,1
  a22232:	8082                	ret

00a22234 <crypto_curve_param_init>:
  a22234:	00a2 6d9c 059f      	l.li	a1,0xa26d9c
  a2223a:	00a2 6da0 051f      	l.li	a0,0xa26da0
  a22240:	a009                	j	a22242 <drv_cipher_pke_init_ecc_param>

00a22242 <drv_cipher_pke_init_ecc_param>:
  a22242:	00a067b7          	lui	a5,0xa06
  a22246:	7aa7ac23          	sw	a0,1976(a5) # a067b8 <g_ecc_params>
  a2224a:	00a067b7          	lui	a5,0xa06
  a2224e:	7ab7aa23          	sw	a1,1972(a5) # a067b4 <g_ecc_num>
  a22252:	8082                	ret

00a22254 <drv_cipher_pke_init>:
  a22254:	8028                	push	{ra,s0},-16
  a22256:	38b000ef          	jal	ra,a22de0 <hal_pke_init>
  a2225a:	842a                	mv	s0,a0
  a2225c:	c119                	beqz	a0,a22262 <drv_cipher_pke_init+0xe>
  a2225e:	397000ef          	jal	ra,a22df4 <hal_pke_deinit>
  a22262:	8522                	mv	a0,s0
  a22264:	8024                	popret	{ra,s0},16

00a22266 <drv_cipher_pke_deinit>:
  a22266:	8118                	push	{ra},-32
  a22268:	38d000ef          	jal	ra,a22df4 <hal_pke_deinit>
  a2226c:	e509                	bnez	a0,a22276 <drv_cipher_pke_deinit+0x10>
  a2226e:	c62a                	sw	a0,12(sp)
  a22270:	3a1000ef          	jal	ra,a22e10 <hal_pke_unlock>
  a22274:	4532                	lw	a0,12(sp)
  a22276:	8114                	popret	{ra},32

00a22278 <inner_get_phys_addr>:
  a22278:	8082                	ret

00a2227a <drv_rom_cipher_sha256>:
  a2227a:	8128                	push	{ra,s0},-32
  a2227c:	842a                	mv	s0,a0
  a2227e:	4505                	li	a0,1
  a22280:	c62e                	sw	a1,12(sp)
  a22282:	c432                	sw	a2,8(sp)
  a22284:	c236                	sw	a3,4(sp)
  a22286:	689000ef          	jal	ra,a2310e <hal_hash_lock>
  a2228a:	4622                	lw	a2,8(sp)
  a2228c:	45b2                	lw	a1,12(sp)
  a2228e:	4712                	lw	a4,4(sp)
  a22290:	86b2                	mv	a3,a2
  a22292:	4785                	li	a5,1
  a22294:	862e                	mv	a2,a1
  a22296:	0116 9100 051f      	l.li	a0,0x1169100
  a2229c:	85a2                	mv	a1,s0
  a2229e:	3bed                	jal	ra,a22098 <drv_rom_hash>
  a222a0:	842a                	mv	s0,a0
  a222a2:	4505                	li	a0,1
  a222a4:	3fb000ef          	jal	ra,a22e9e <hal_hash_unlock>
  a222a8:	8522                	mv	a0,s0
  a222aa:	8124                	popret	{ra,s0},32

00a222ac <drv_rom_cipher_init>:
  a222ac:	8318                	push	{ra},-64
  a222ae:	02400613          	li	a2,36
  a222b2:	4581                	li	a1,0
  a222b4:	0068                	addi	a0,sp,12
  a222b6:	f8efe0ef          	jal	ra,a20a44 <memset>
  a222ba:	0ce010ef          	jal	ra,a23388 <hal_cipher_trng_init>
  a222be:	3f59                	jal	ra,a22254 <drv_cipher_pke_init>
  a222c0:	385000ef          	jal	ra,a22e44 <hal_cipher_hash_init>
  a222c4:	00a2 2278 079f      	l.li	a5,0xa22278
  a222ca:	0068                	addi	a0,sp,12
  a222cc:	ca3e                	sw	a5,20(sp)
  a222ce:	372d                	jal	ra,a221f8 <drv_cipher_register_func>
  a222d0:	3795                	jal	ra,a22234 <crypto_curve_param_init>
  a222d2:	4501                	li	a0,0
  a222d4:	8314                	popret	{ra},64

00a222d6 <drv_rom_cipher_deinit>:
  a222d6:	8018                	push	{ra},-16
  a222d8:	3779                	jal	ra,a22266 <drv_cipher_pke_deinit>
  a222da:	0bc010ef          	jal	ra,a23396 <hal_cipher_trng_deinit>
  a222de:	3e1000ef          	jal	ra,a22ebe <hal_cipher_hash_deinit>
  a222e2:	4501                	li	a0,0
  a222e4:	8014                	popret	{ra},16

00a222e6 <uapi_systick_get_count>:
  a222e6:	8048                	push	{ra,s0-s2},-16
  a222e8:	335d                	jal	ra,a2208e <osal_irq_lock>
  a222ea:	00a0 6668 079f      	l.li	a5,0xa06668
  a222f0:	239c                	lbu	a5,0(a5)
  a222f2:	e799                	bnez	a5,a22300 <uapi_systick_get_count+0x1a>
  a222f4:	334d                	jal	ra,a22096 <osal_irq_restore>
  a222f6:	4401                	li	s0,0
  a222f8:	4481                	li	s1,0
  a222fa:	8522                	mv	a0,s0
  a222fc:	85a6                	mv	a1,s1
  a222fe:	8044                	popret	{ra,s0-s2},16
  a22300:	892a                	mv	s2,a0
  a22302:	531010ef          	jal	ra,a24032 <hal_systick_get_count>
  a22306:	842a                	mv	s0,a0
  a22308:	854a                	mv	a0,s2
  a2230a:	84ae                	mv	s1,a1
  a2230c:	3369                	jal	ra,a22096 <osal_irq_restore>
  a2230e:	b7f5                	j	a222fa <uapi_systick_get_count+0x14>

00a22310 <uapi_systick_get_us>:
  a22310:	8128                	push	{ra,s0},-32
  a22312:	3fd1                	jal	ra,a222e6 <uapi_systick_get_count>
  a22314:	842a                	mv	s0,a0
  a22316:	c62e                	sw	a1,12(sp)
  a22318:	52b010ef          	jal	ra,a24042 <systick_clock_get>
  a2231c:	45b2                	lw	a1,12(sp)
  a2231e:	000f 4240 079f      	l.li	a5,0xf4240
  a22324:	02f43733          	mulhu	a4,s0,a5
  a22328:	862a                	mv	a2,a0
  a2232a:	4681                	li	a3,0
  a2232c:	02f585b3          	mul	a1,a1,a5
  a22330:	02f40533          	mul	a0,s0,a5
  a22334:	95ba                	add	a1,a1,a4
  a22336:	b06fe0ef          	jal	ra,a2063c <__udivdi3>
  a2233a:	8124                	popret	{ra,s0},32

00a2233c <uapi_tcxo_init>:
  a2233c:	8048                	push	{ra,s0-s2},-16
  a2233e:	3b81                	jal	ra,a2208e <osal_irq_lock>
  a22340:	00a0 6669 091f      	l.li	s2,0xa06669
  a22346:	00094783          	lbu	a5,0(s2)
  a2234a:	c789                	beqz	a5,a22354 <uapi_tcxo_init+0x18>
  a2234c:	33a9                	jal	ra,a22096 <osal_irq_restore>
  a2234e:	4401                	li	s0,0
  a22350:	8522                	mv	a0,s0
  a22352:	8044                	popret	{ra,s0-s2},16
  a22354:	84aa                	mv	s1,a0
  a22356:	04e010ef          	jal	ra,a233a4 <hal_tcxo_init>
  a2235a:	842a                	mv	s0,a0
  a2235c:	c501                	beqz	a0,a22364 <uapi_tcxo_init+0x28>
  a2235e:	8526                	mv	a0,s1
  a22360:	3b1d                	jal	ra,a22096 <osal_irq_restore>
  a22362:	b7fd                	j	a22350 <uapi_tcxo_init+0x14>
  a22364:	4785                	li	a5,1
  a22366:	00f90023          	sb	a5,0(s2)
  a2236a:	bfd5                	j	a2235e <uapi_tcxo_init+0x22>

00a2236c <uapi_tcxo_get_count>:
  a2236c:	8048                	push	{ra,s0-s2},-16
  a2236e:	3305                	jal	ra,a2208e <osal_irq_lock>
  a22370:	00a0 6669 079f      	l.li	a5,0xa06669
  a22376:	239c                	lbu	a5,0(a5)
  a22378:	e799                	bnez	a5,a22386 <uapi_tcxo_get_count+0x1a>
  a2237a:	3b31                	jal	ra,a22096 <osal_irq_restore>
  a2237c:	4401                	li	s0,0
  a2237e:	4481                	li	s1,0
  a22380:	8522                	mv	a0,s0
  a22382:	85a6                	mv	a1,s1
  a22384:	8044                	popret	{ra,s0-s2},16
  a22386:	892a                	mv	s2,a0
  a22388:	048010ef          	jal	ra,a233d0 <hal_tcxo_get>
  a2238c:	842a                	mv	s0,a0
  a2238e:	854a                	mv	a0,s2
  a22390:	84ae                	mv	s1,a1
  a22392:	3311                	jal	ra,a22096 <osal_irq_restore>
  a22394:	b7f5                	j	a22380 <uapi_tcxo_get_count+0x14>

00a22396 <uapi_tcxo_delay_ms>:
  a22396:	00a0 6669 079f      	l.li	a5,0xa06669
  a2239c:	239c                	lbu	a5,0(a5)
  a2239e:	c3b1                	beqz	a5,a223e2 <uapi_tcxo_delay_ms+0x4c>
  a223a0:	8048                	push	{ra,s0-s2},-16
  a223a2:	842a                	mv	s0,a0
  a223a4:	4b1010ef          	jal	ra,a24054 <tcxo_porting_ticks_per_usec_get>
  a223a8:	3e800793          	li	a5,1000
  a223ac:	02f405b3          	mul	a1,s0,a5
  a223b0:	02f43433          	mulhu	s0,s0,a5
  a223b4:	02a584b3          	mul	s1,a1,a0
  a223b8:	02a40433          	mul	s0,s0,a0
  a223bc:	02a5b5b3          	mulhu	a1,a1,a0
  a223c0:	942e                	add	s0,s0,a1
  a223c2:	376d                	jal	ra,a2236c <uapi_tcxo_get_count>
  a223c4:	00a48933          	add	s2,s1,a0
  a223c8:	009934b3          	sltu	s1,s2,s1
  a223cc:	95a2                	add	a1,a1,s0
  a223ce:	94ae                	add	s1,s1,a1
  a223d0:	3f71                	jal	ra,a2236c <uapi_tcxo_get_count>
  a223d2:	fe95efe3          	bltu	a1,s1,a223d0 <uapi_tcxo_delay_ms+0x3a>
  a223d6:	00b49463          	bne	s1,a1,a223de <uapi_tcxo_delay_ms+0x48>
  a223da:	ff256be3          	bltu	a0,s2,a223d0 <uapi_tcxo_delay_ms+0x3a>
  a223de:	4501                	li	a0,0
  a223e0:	8044                	popret	{ra,s0-s2},16
  a223e2:	557d                	li	a0,-1
  a223e4:	8082                	ret

00a223e6 <uapi_tcxo_delay_us>:
  a223e6:	00a0 6669 079f      	l.li	a5,0xa06669
  a223ec:	239c                	lbu	a5,0(a5)
  a223ee:	cb8d                	beqz	a5,a22420 <uapi_tcxo_delay_us+0x3a>
  a223f0:	8048                	push	{ra,s0-s2},-16
  a223f2:	842a                	mv	s0,a0
  a223f4:	461010ef          	jal	ra,a24054 <tcxo_porting_ticks_per_usec_get>
  a223f8:	02a404b3          	mul	s1,s0,a0
  a223fc:	02a43433          	mulhu	s0,s0,a0
  a22400:	37b5                	jal	ra,a2236c <uapi_tcxo_get_count>
  a22402:	00a48933          	add	s2,s1,a0
  a22406:	009934b3          	sltu	s1,s2,s1
  a2240a:	942e                	add	s0,s0,a1
  a2240c:	9426                	add	s0,s0,s1
  a2240e:	3fb9                	jal	ra,a2236c <uapi_tcxo_get_count>
  a22410:	fe85efe3          	bltu	a1,s0,a2240e <uapi_tcxo_delay_us+0x28>
  a22414:	00b41463          	bne	s0,a1,a2241c <uapi_tcxo_delay_us+0x36>
  a22418:	ff256be3          	bltu	a0,s2,a2240e <uapi_tcxo_delay_us+0x28>
  a2241c:	4501                	li	a0,0
  a2241e:	8044                	popret	{ra,s0-s2},16
  a22420:	557d                	li	a0,-1
  a22422:	8082                	ret

00a22424 <uart_helper_invoke_current_fragment_callback>:
  a22424:	00a0 66b8 079f      	l.li	a5,0xa066b8
  a2242a:	4ca7955b          	muliadd	a0,a5,a0,76
  a2242e:	411c                	lw	a5,0(a0)
  a22430:	0087a303          	lw	t1,8(a5)
  a22434:	00030663          	beqz	t1,a22440 <uart_helper_invoke_current_fragment_callback+0x1c>
  a22438:	43d0                	lw	a2,4(a5)
  a2243a:	47cc                	lw	a1,12(a5)
  a2243c:	4388                	lw	a0,0(a5)
  a2243e:	8302                	jr	t1
  a22440:	8082                	ret

00a22442 <uart_helper_move_to_next_fragment>:
  a22442:	04c00793          	li	a5,76
  a22446:	02f507b3          	mul	a5,a0,a5
  a2244a:	00a066b7          	lui	a3,0xa06
  a2244e:	6b868713          	addi	a4,a3,1720 # a066b8 <g_uart_tx_state_array>
  a22452:	6b868693          	addi	a3,a3,1720
  a22456:	00f705b3          	add	a1,a4,a5
  a2245a:	4190                	lw	a2,0(a1)
  a2245c:	07b1                	addi	a5,a5,12
  a2245e:	97ba                	add	a5,a5,a4
  a22460:	0641                	addi	a2,a2,16
  a22462:	04078713          	addi	a4,a5,64
  a22466:	00e67b63          	bgeu	a2,a4,a2247c <uart_helper_move_to_next_fragment+0x3a>
  a2246a:	c190                	sw	a2,0(a1)
  a2246c:	4ca6955b          	muliadd	a0,a3,a0,76
  a22470:	251e                	lhu	a5,8(a0)
  a22472:	00051523          	sh	zero,10(a0)
  a22476:	17fd                	addi	a5,a5,-1
  a22478:	a51e                	sh	a5,8(a0)
  a2247a:	8082                	ret
  a2247c:	c19c                	sw	a5,0(a1)
  a2247e:	b7fd                	j	a2246c <uart_helper_move_to_next_fragment+0x2a>

00a22480 <uart_helper_send_next_char>:
  a22480:	8038                	push	{ra,s0-s1},-16
  a22482:	00a0 66b8 041f      	l.li	s0,0xa066b8
  a22488:	4ca4145b          	muliadd	s0,s0,a0,76
  a2248c:	4004                	lw	s1,0(s0)
  a2248e:	243e                	lhu	a5,10(s0)
  a22490:	4605                	li	a2,1
  a22492:	408c                	lw	a1,0(s1)
  a22494:	95be                	add	a1,a1,a5
  a22496:	006010ef          	jal	ra,a2349c <hal_uart_write>
  a2249a:	242a                	lhu	a0,10(s0)
  a2249c:	0505                	addi	a0,a0,1
  a2249e:	9d21                	uxth	a0
  a224a0:	a42a                	sh	a0,10(s0)
  a224a2:	44dc                	lw	a5,12(s1)
  a224a4:	00f53533          	sltu	a0,a0,a5
  a224a8:	00154513          	xori	a0,a0,1
  a224ac:	8034                	popret	{ra,s0-s1},16

00a224ae <uart_error_isr>:
  a224ae:	8148                	push	{ra,s0-s2},-32
  a224b0:	842a                	mv	s0,a0
  a224b2:	00f10613          	addi	a2,sp,15
  a224b6:	45a5                	li	a1,9
  a224b8:	00a0 6670 091f      	l.li	s2,0xa06670
  a224be:	00010723          	sb	zero,14(sp)
  a224c2:	000107a3          	sb	zero,15(sp)
  a224c6:	188914db          	muliadd	s1,s2,s0,24
  a224ca:	7f7000ef          	jal	ra,a234c0 <hal_uart_ctrl>
  a224ce:	00f14783          	lbu	a5,15(sp)
  a224d2:	cf89                	beqz	a5,a224ec <uart_error_isr+0x3e>
  a224d4:	1889145b          	muliadd	s0,s2,s0,24
  a224d8:	284e                	lhu	a1,20(s0)
  a224da:	c981                	beqz	a1,a224ea <uart_error_isr+0x3c>
  a224dc:	401c                	lw	a5,0(s0)
  a224de:	c791                	beqz	a5,a224ea <uart_error_isr+0x3c>
  a224e0:	4448                	lw	a0,12(s0)
  a224e2:	4605                	li	a2,1
  a224e4:	9782                	jalr	a5
  a224e6:	00041a23          	sh	zero,20(s0)
  a224ea:	8144                	popret	{ra,s0-s2},32
  a224ec:	00e10593          	addi	a1,sp,14
  a224f0:	4605                	li	a2,1
  a224f2:	8522                	mv	a0,s0
  a224f4:	7bb000ef          	jal	ra,a234ae <hal_uart_read>
  a224f8:	28d6                	lhu	a3,20(s1)
  a224fa:	44dc                	lw	a5,12(s1)
  a224fc:	00e14703          	lbu	a4,14(sp)
  a22500:	97b6                	add	a5,a5,a3
  a22502:	a398                	sb	a4,0(a5)
  a22504:	28ce                	lhu	a1,20(s1)
  a22506:	289e                	lhu	a5,16(s1)
  a22508:	0585                	addi	a1,a1,1
  a2250a:	9da1                	uxth	a1
  a2250c:	a8ce                	sh	a1,20(s1)
  a2250e:	00f5e963          	bltu	a1,a5,a22520 <uart_error_isr+0x72>
  a22512:	409c                	lw	a5,0(s1)
  a22514:	c781                	beqz	a5,a2251c <uart_error_isr+0x6e>
  a22516:	44c8                	lw	a0,12(s1)
  a22518:	4605                	li	a2,1
  a2251a:	9782                	jalr	a5
  a2251c:	00049a23          	sh	zero,20(s1)
  a22520:	00f10613          	addi	a2,sp,15
  a22524:	45a5                	li	a1,9
  a22526:	8522                	mv	a0,s0
  a22528:	799000ef          	jal	ra,a234c0 <hal_uart_ctrl>
  a2252c:	b74d                	j	a224ce <uart_error_isr+0x20>

00a2252e <uart_evt_callback>:
  a2252e:	8158                	push	{ra,s0-s3},-48
  a22530:	15fd                	addi	a1,a1,-1
  a22532:	0ff5f793          	andi	a5,a1,255
  a22536:	0567fabb          	bgeui	a5,5,a226e0 <uart_evt_callback+0x1b2>
  a2253a:	00a275b7          	lui	a1,0xa27
  a2253e:	da058593          	addi	a1,a1,-608 # a26da0 <g_crypto_ecc_params>
  a22542:	04f5859b          	addshf	a1,a1,a5,sll,2
  a22546:	419c                	lw	a5,0(a1)
  a22548:	842a                	mv	s0,a0
  a2254a:	8782                	jr	a5
  a2254c:	00a0 66b8 049f      	l.li	s1,0xa066b8
  a22552:	000107a3          	sb	zero,15(sp)
  a22556:	4ca494db          	muliadd	s1,s1,a0,76
  a2255a:	249e                	lhu	a5,8(s1)
  a2255c:	eb81                	bnez	a5,a2256c <uart_evt_callback+0x3e>
  a2255e:	4601                	li	a2,0
  a22560:	4589                	li	a1,2
  a22562:	8522                	mv	a0,s0
  a22564:	75d000ef          	jal	ra,a234c0 <hal_uart_ctrl>
  a22568:	4501                	li	a0,0
  a2256a:	8154                	popret	{ra,s0-s3},48
  a2256c:	00f10613          	addi	a2,sp,15
  a22570:	459d                	li	a1,7
  a22572:	8522                	mv	a0,s0
  a22574:	74d000ef          	jal	ra,a234c0 <hal_uart_ctrl>
  a22578:	00f14783          	lbu	a5,15(sp)
  a2257c:	f7f5                	bnez	a5,a22568 <uart_evt_callback+0x3a>
  a2257e:	8522                	mv	a0,s0
  a22580:	3701                	jal	ra,a22480 <uart_helper_send_next_char>
  a22582:	d56d                	beqz	a0,a2256c <uart_evt_callback+0x3e>
  a22584:	8522                	mv	a0,s0
  a22586:	3d79                	jal	ra,a22424 <uart_helper_invoke_current_fragment_callback>
  a22588:	8522                	mv	a0,s0
  a2258a:	3d65                	jal	ra,a22442 <uart_helper_move_to_next_fragment>
  a2258c:	b7f9                	j	a2255a <uart_evt_callback+0x2c>
  a2258e:	00f10613          	addi	a2,sp,15
  a22592:	45a5                	li	a1,9
  a22594:	00a0 6670 091f      	l.li	s2,0xa06670
  a2259a:	00010723          	sb	zero,14(sp)
  a2259e:	000107a3          	sb	zero,15(sp)
  a225a2:	4981                	li	s3,0
  a225a4:	71d000ef          	jal	ra,a234c0 <hal_uart_ctrl>
  a225a8:	188914db          	muliadd	s1,s2,s0,24
  a225ac:	00f14783          	lbu	a5,15(sp)
  a225b0:	c78d                	beqz	a5,a225da <uart_evt_callback+0xac>
  a225b2:	188917db          	muliadd	a5,s2,s0,24
  a225b6:	2bce                	lhu	a1,20(a5)
  a225b8:	d9c5                	beqz	a1,a22568 <uart_evt_callback+0x3a>
  a225ba:	2bf8                	lbu	a4,22(a5)
  a225bc:	8b09                	andi	a4,a4,2
  a225be:	d74d                	beqz	a4,a22568 <uart_evt_callback+0x3a>
  a225c0:	2bba                	lhu	a4,18(a5)
  a225c2:	fae9e3e3          	bltu	s3,a4,a22568 <uart_evt_callback+0x3a>
  a225c6:	4398                	lw	a4,0(a5)
  a225c8:	c701                	beqz	a4,a225d0 <uart_evt_callback+0xa2>
  a225ca:	47c8                	lw	a0,12(a5)
  a225cc:	4601                	li	a2,0
  a225ce:	9702                	jalr	a4
  a225d0:	1889145b          	muliadd	s0,s2,s0,24
  a225d4:	00041a23          	sh	zero,20(s0)
  a225d8:	bf41                	j	a22568 <uart_evt_callback+0x3a>
  a225da:	4605                	li	a2,1
  a225dc:	00e10593          	addi	a1,sp,14
  a225e0:	8522                	mv	a0,s0
  a225e2:	6cd000ef          	jal	ra,a234ae <hal_uart_read>
  a225e6:	409c                	lw	a5,0(s1)
  a225e8:	0985                	addi	s3,s3,1
  a225ea:	09c2                	slli	s3,s3,0x10
  a225ec:	0109d993          	srli	s3,s3,0x10
  a225f0:	eb81                	bnez	a5,a22600 <uart_evt_callback+0xd2>
  a225f2:	00f10613          	addi	a2,sp,15
  a225f6:	45a5                	li	a1,9
  a225f8:	8522                	mv	a0,s0
  a225fa:	6c7000ef          	jal	ra,a234c0 <hal_uart_ctrl>
  a225fe:	b77d                	j	a225ac <uart_evt_callback+0x7e>
  a22600:	28d6                	lhu	a3,20(s1)
  a22602:	44dc                	lw	a5,12(s1)
  a22604:	00e14703          	lbu	a4,14(sp)
  a22608:	97b6                	add	a5,a5,a3
  a2260a:	a398                	sb	a4,0(a5)
  a2260c:	28ce                	lhu	a1,20(s1)
  a2260e:	289e                	lhu	a5,16(s1)
  a22610:	0585                	addi	a1,a1,1
  a22612:	9da1                	uxth	a1
  a22614:	a8ce                	sh	a1,20(s1)
  a22616:	fcf5eee3          	bltu	a1,a5,a225f2 <uart_evt_callback+0xc4>
  a2261a:	409c                	lw	a5,0(s1)
  a2261c:	44c8                	lw	a0,12(s1)
  a2261e:	4601                	li	a2,0
  a22620:	9782                	jalr	a5
  a22622:	00049a23          	sh	zero,20(s1)
  a22626:	b7f1                	j	a225f2 <uart_evt_callback+0xc4>
  a22628:	00f10613          	addi	a2,sp,15
  a2262c:	45a5                	li	a1,9
  a2262e:	00a0 6670 091f      	l.li	s2,0xa06670
  a22634:	00010723          	sb	zero,14(sp)
  a22638:	000107a3          	sb	zero,15(sp)
  a2263c:	4981                	li	s3,0
  a2263e:	683000ef          	jal	ra,a234c0 <hal_uart_ctrl>
  a22642:	188914db          	muliadd	s1,s2,s0,24
  a22646:	00f14783          	lbu	a5,15(sp)
  a2264a:	cb85                	beqz	a5,a2267a <uart_evt_callback+0x14c>
  a2264c:	1889175b          	muliadd	a4,s2,s0,24
  a22650:	2b4e                	lhu	a1,20(a4)
  a22652:	f0058be3          	beqz	a1,a22568 <uart_evt_callback+0x3a>
  a22656:	2b7c                	lbu	a5,22(a4)
  a22658:	0017f693          	andi	a3,a5,1
  a2265c:	e699                	bnez	a3,a2266a <uart_evt_callback+0x13c>
  a2265e:	8b89                	andi	a5,a5,2
  a22660:	f00784e3          	beqz	a5,a22568 <uart_evt_callback+0x3a>
  a22664:	2b3e                	lhu	a5,18(a4)
  a22666:	f0f9e1e3          	bltu	s3,a5,a22568 <uart_evt_callback+0x3a>
  a2266a:	1889175b          	muliadd	a4,s2,s0,24
  a2266e:	431c                	lw	a5,0(a4)
  a22670:	d3a5                	beqz	a5,a225d0 <uart_evt_callback+0xa2>
  a22672:	4748                	lw	a0,12(a4)
  a22674:	4601                	li	a2,0
  a22676:	9782                	jalr	a5
  a22678:	bfa1                	j	a225d0 <uart_evt_callback+0xa2>
  a2267a:	4605                	li	a2,1
  a2267c:	00e10593          	addi	a1,sp,14
  a22680:	8522                	mv	a0,s0
  a22682:	62d000ef          	jal	ra,a234ae <hal_uart_read>
  a22686:	409c                	lw	a5,0(s1)
  a22688:	0985                	addi	s3,s3,1
  a2268a:	09c2                	slli	s3,s3,0x10
  a2268c:	0109d993          	srli	s3,s3,0x10
  a22690:	eb81                	bnez	a5,a226a0 <uart_evt_callback+0x172>
  a22692:	00f10613          	addi	a2,sp,15
  a22696:	45a5                	li	a1,9
  a22698:	8522                	mv	a0,s0
  a2269a:	627000ef          	jal	ra,a234c0 <hal_uart_ctrl>
  a2269e:	b765                	j	a22646 <uart_evt_callback+0x118>
  a226a0:	28d6                	lhu	a3,20(s1)
  a226a2:	44dc                	lw	a5,12(s1)
  a226a4:	00e14703          	lbu	a4,14(sp)
  a226a8:	97b6                	add	a5,a5,a3
  a226aa:	a398                	sb	a4,0(a5)
  a226ac:	28ce                	lhu	a1,20(s1)
  a226ae:	289e                	lhu	a5,16(s1)
  a226b0:	0585                	addi	a1,a1,1
  a226b2:	9da1                	uxth	a1
  a226b4:	a8ce                	sh	a1,20(s1)
  a226b6:	fcf5eee3          	bltu	a1,a5,a22692 <uart_evt_callback+0x164>
  a226ba:	409c                	lw	a5,0(s1)
  a226bc:	c781                	beqz	a5,a226c4 <uart_evt_callback+0x196>
  a226be:	44c8                	lw	a0,12(s1)
  a226c0:	4601                	li	a2,0
  a226c2:	9782                	jalr	a5
  a226c4:	00049a23          	sh	zero,20(s1)
  a226c8:	b7e9                	j	a22692 <uart_evt_callback+0x164>
  a226ca:	00a0 6670 079f      	l.li	a5,0xa06670
  a226d0:	18a797db          	muliadd	a5,a5,a0,24
  a226d4:	43dc                	lw	a5,4(a5)
  a226d6:	c781                	beqz	a5,a226de <uart_evt_callback+0x1b0>
  a226d8:	4581                	li	a1,0
  a226da:	4501                	li	a0,0
  a226dc:	9782                	jalr	a5
  a226de:	8522                	mv	a0,s0
  a226e0:	33f9                	jal	ra,a224ae <uart_error_isr>
  a226e2:	b559                	j	a22568 <uart_evt_callback+0x3a>
  a226e4:	00a0 6670 079f      	l.li	a5,0xa06670
  a226ea:	18a797db          	muliadd	a5,a5,a0,24
  a226ee:	479c                	lw	a5,8(a5)
  a226f0:	b7dd                	j	a226d6 <uart_evt_callback+0x1a8>

00a226f2 <uapi_uart_init>:
  a226f2:	8158                	push	{ra,s0-s3},-48
  a226f4:	4789                	li	a5,2
  a226f6:	0aa7ed63          	bltu	a5,a0,a227b0 <uapi_uart_init+0xbe>
  a226fa:	c9dd                	beqz	a1,a227b0 <uapi_uart_init+0xbe>
  a226fc:	0015c883          	lbu	a7,1(a1)
  a22700:	07200813          	li	a6,114
  a22704:	0b186663          	bltu	a6,a7,a227b0 <uapi_uart_init+0xbe>
  a22708:	0005c883          	lbu	a7,0(a1)
  a2270c:	0b186263          	bltu	a6,a7,a227b0 <uapi_uart_init+0xbe>
  a22710:	c245                	beqz	a2,a227b0 <uapi_uart_init+0xbe>
  a22712:	00464803          	lbu	a6,4(a2)
  a22716:	042876bb          	bgeui	a6,4,a227b0 <uapi_uart_init+0xbe>
  a2271a:	00664803          	lbu	a6,6(a2)
  a2271e:	0907e963          	bltu	a5,a6,a227b0 <uapi_uart_init+0xbe>
  a22722:	325c                	lbu	a5,5(a2)
  a22724:	0227f33b          	bgeui	a5,2,a227b0 <uapi_uart_init+0xbe>
  a22728:	00a06937          	lui	s2,0xa06
  a2272c:	66c90793          	addi	a5,s2,1644 # a0666c <g_uart_inited>
  a22730:	97aa                	add	a5,a5,a0
  a22732:	239c                	lbu	a5,0(a5)
  a22734:	84aa                	mv	s1,a0
  a22736:	66c90913          	addi	s2,s2,1644
  a2273a:	4401                	li	s0,0
  a2273c:	eba5                	bnez	a5,a227ac <uapi_uart_init+0xba>
  a2273e:	89ba                	mv	s3,a4
  a22740:	c636                	sw	a3,12(sp)
  a22742:	8432                	mv	s0,a2
  a22744:	c42e                	sw	a1,8(sp)
  a22746:	069010ef          	jal	ra,a23fae <uart_port_config_pinmux>
  a2274a:	06098763          	beqz	s3,a227b8 <uapi_uart_init+0xc6>
  a2274e:	0009a683          	lw	a3,0(s3)
  a22752:	c2bd                	beqz	a3,a227b8 <uapi_uart_init+0xc6>
  a22754:	0049a703          	lw	a4,4(s3)
  a22758:	c325                	beqz	a4,a227b8 <uapi_uart_init+0xc6>
  a2275a:	04c00513          	li	a0,76
  a2275e:	02a48533          	mul	a0,s1,a0
  a22762:	00a0 6670 071f      	l.li	a4,0xa06670
  a22768:	1897175b          	muliadd	a4,a4,s1,24
  a2276c:	c754                	sw	a3,12(a4)
  a2276e:	0049a683          	lw	a3,4(s3)
  a22772:	47b2                	lw	a5,12(sp)
  a22774:	4622                	lw	a2,8(sp)
  a22776:	ab16                	sh	a3,16(a4)
  a22778:	00a0 66b8 071f      	l.li	a4,0xa066b8
  a2277e:	86a2                	mv	a3,s0
  a22780:	00c50593          	addi	a1,a0,12
  a22784:	95ba                	add	a1,a1,a4
  a22786:	972a                	add	a4,a4,a0
  a22788:	c30c                	sw	a1,0(a4)
  a2278a:	c34c                	sw	a1,4(a4)
  a2278c:	8526                	mv	a0,s1
  a2278e:	4711                	li	a4,4
  a22790:	00a2 252e 059f      	l.li	a1,0xa2252e
  a22796:	4b7000ef          	jal	ra,a2344c <hal_uart_init>
  a2279a:	842a                	mv	s0,a0
  a2279c:	e901                	bnez	a0,a227ac <uapi_uart_init+0xba>
  a2279e:	9926                	add	s2,s2,s1
  a227a0:	4785                	li	a5,1
  a227a2:	8526                	mv	a0,s1
  a227a4:	00f90023          	sb	a5,0(s2)
  a227a8:	017010ef          	jal	ra,a23fbe <uart_port_register_irq>
  a227ac:	8522                	mv	a0,s0
  a227ae:	8154                	popret	{ra,s0-s3},48
  a227b0:	80000437          	lui	s0,0x80000
  a227b4:	0405                	addi	s0,s0,1 # 80000001 <__data_load__+0x7f5d8731>
  a227b6:	bfdd                	j	a227ac <uapi_uart_init+0xba>
  a227b8:	8000 1044 041f      	l.li	s0,0x80001044
  a227be:	b7fd                	j	a227ac <uapi_uart_init+0xba>

00a227c0 <uapi_uart_deinit>:
  a227c0:	8048                	push	{ra,s0-s2},-16
  a227c2:	031575bb          	bgeui	a0,3,a22818 <uapi_uart_deinit+0x58>
  a227c6:	00a0 666c 091f      	l.li	s2,0xa0666c
  a227cc:	992a                	add	s2,s2,a0
  a227ce:	00094783          	lbu	a5,0(s2)
  a227d2:	842a                	mv	s0,a0
  a227d4:	4481                	li	s1,0
  a227d6:	cf9d                	beqz	a5,a22814 <uapi_uart_deinit+0x54>
  a227d8:	4b3000ef          	jal	ra,a2348a <hal_uart_deinit>
  a227dc:	84aa                	mv	s1,a0
  a227de:	8522                	mv	a0,s0
  a227e0:	7e0010ef          	jal	ra,a23fc0 <uart_port_unregister_irq>
  a227e4:	00a0 6670 051f      	l.li	a0,0xa06670
  a227ea:	46e1                	li	a3,24
  a227ec:	4601                	li	a2,0
  a227ee:	45e1                	li	a1,24
  a227f0:	1885155b          	muliadd	a0,a0,s0,24
  a227f4:	4b3020ef          	jal	ra,a254a6 <memset_s>
  a227f8:	00a0 66b8 051f      	l.li	a0,0xa066b8
  a227fe:	04c00693          	li	a3,76
  a22802:	4601                	li	a2,0
  a22804:	04c00593          	li	a1,76
  a22808:	4c85155b          	muliadd	a0,a0,s0,76
  a2280c:	49b020ef          	jal	ra,a254a6 <memset_s>
  a22810:	00090023          	sb	zero,0(s2)
  a22814:	8526                	mv	a0,s1
  a22816:	8044                	popret	{ra,s0-s2},16
  a22818:	800004b7          	lui	s1,0x80000
  a2281c:	0485                	addi	s1,s1,1 # 80000001 <__data_load__+0x7f5d8731>
  a2281e:	bfdd                	j	a22814 <uapi_uart_deinit+0x54>

00a22820 <uapi_uart_write>:
  a22820:	8178                	push	{ra,s0-s5},-48
  a22822:	000107a3          	sb	zero,15(sp)
  a22826:	0315773b          	bgeui	a0,3,a22882 <uapi_uart_write+0x62>
  a2282a:	cda1                	beqz	a1,a22882 <uapi_uart_write+0x62>
  a2282c:	ca39                	beqz	a2,a22882 <uapi_uart_write+0x62>
  a2282e:	00a0 666c 079f      	l.li	a5,0xa0666c
  a22834:	97aa                	add	a5,a5,a0
  a22836:	239c                	lbu	a5,0(a5)
  a22838:	84aa                	mv	s1,a0
  a2283a:	cba1                	beqz	a5,a2288a <uapi_uart_write+0x6a>
  a2283c:	89ae                	mv	s3,a1
  a2283e:	8932                	mv	s2,a2
  a22840:	7e8010ef          	jal	ra,a24028 <uart_porting_lock>
  a22844:	8aaa                	mv	s5,a0
  a22846:	994e                	add	s2,s2,s3
  a22848:	8a4e                	mv	s4,s3
  a2284a:	413a0433          	sub	s0,s4,s3
  a2284e:	012a1863          	bne	s4,s2,a2285e <uapi_uart_write+0x3e>
  a22852:	85d6                	mv	a1,s5
  a22854:	8526                	mv	a0,s1
  a22856:	7d6010ef          	jal	ra,a2402c <uart_porting_unlock>
  a2285a:	8522                	mv	a0,s0
  a2285c:	8174                	popret	{ra,s0-s5},48
  a2285e:	00f10613          	addi	a2,sp,15
  a22862:	459d                	li	a1,7
  a22864:	8526                	mv	a0,s1
  a22866:	45b000ef          	jal	ra,a234c0 <hal_uart_ctrl>
  a2286a:	00f14783          	lbu	a5,15(sp)
  a2286e:	f3e5                	bnez	a5,a2284e <uapi_uart_write+0x2e>
  a22870:	85d2                	mv	a1,s4
  a22872:	001a0413          	addi	s0,s4,1
  a22876:	4605                	li	a2,1
  a22878:	8526                	mv	a0,s1
  a2287a:	423000ef          	jal	ra,a2349c <hal_uart_write>
  a2287e:	8a22                	mv	s4,s0
  a22880:	b7e9                	j	a2284a <uapi_uart_write+0x2a>
  a22882:	80000437          	lui	s0,0x80000
  a22886:	0405                	addi	s0,s0,1 # 80000001 <__data_load__+0x7f5d8731>
  a22888:	bfc9                	j	a2285a <uapi_uart_write+0x3a>
  a2288a:	8000 1040 041f      	l.li	s0,0x80001040
  a22890:	b7e9                	j	a2285a <uapi_uart_write+0x3a>

00a22892 <uapi_uart_read>:
  a22892:	8178                	push	{ra,s0-s5},-48
  a22894:	0315783b          	bgeui	a0,3,a228f4 <uapi_uart_read+0x62>
  a22898:	cdb1                	beqz	a1,a228f4 <uapi_uart_read+0x62>
  a2289a:	ce29                	beqz	a2,a228f4 <uapi_uart_read+0x62>
  a2289c:	00a0 666c 079f      	l.li	a5,0xa0666c
  a228a2:	97aa                	add	a5,a5,a0
  a228a4:	239c                	lbu	a5,0(a5)
  a228a6:	84aa                	mv	s1,a0
  a228a8:	cbb1                	beqz	a5,a228fc <uapi_uart_read+0x6a>
  a228aa:	89ae                	mv	s3,a1
  a228ac:	8932                	mv	s2,a2
  a228ae:	000107a3          	sb	zero,15(sp)
  a228b2:	776010ef          	jal	ra,a24028 <uart_porting_lock>
  a228b6:	8aaa                	mv	s5,a0
  a228b8:	994e                	add	s2,s2,s3
  a228ba:	8a4e                	mv	s4,s3
  a228bc:	413a0433          	sub	s0,s4,s3
  a228c0:	01491863          	bne	s2,s4,a228d0 <uapi_uart_read+0x3e>
  a228c4:	85d6                	mv	a1,s5
  a228c6:	8526                	mv	a0,s1
  a228c8:	764010ef          	jal	ra,a2402c <uart_porting_unlock>
  a228cc:	8522                	mv	a0,s0
  a228ce:	8174                	popret	{ra,s0-s5},48
  a228d0:	00f10613          	addi	a2,sp,15
  a228d4:	45a5                	li	a1,9
  a228d6:	8526                	mv	a0,s1
  a228d8:	3e9000ef          	jal	ra,a234c0 <hal_uart_ctrl>
  a228dc:	00f14783          	lbu	a5,15(sp)
  a228e0:	f3e5                	bnez	a5,a228c0 <uapi_uart_read+0x2e>
  a228e2:	85d2                	mv	a1,s4
  a228e4:	001a0413          	addi	s0,s4,1
  a228e8:	4605                	li	a2,1
  a228ea:	8526                	mv	a0,s1
  a228ec:	3c3000ef          	jal	ra,a234ae <hal_uart_read>
  a228f0:	8a22                	mv	s4,s0
  a228f2:	b7e9                	j	a228bc <uapi_uart_read+0x2a>
  a228f4:	80000437          	lui	s0,0x80000
  a228f8:	0405                	addi	s0,s0,1 # 80000001 <__data_load__+0x7f5d8731>
  a228fa:	bfc9                	j	a228cc <uapi_uart_read+0x3a>
  a228fc:	8000 1040 041f      	l.li	s0,0x80001040
  a22902:	b7e9                	j	a228cc <uapi_uart_read+0x3a>

00a22904 <uapi_uart_rx_fifo_is_empty>:
  a22904:	03057a3b          	bgeui	a0,3,a2292c <uapi_uart_rx_fifo_is_empty+0x28>
  a22908:	00a0 666c 079f      	l.li	a5,0xa0666c
  a2290e:	97aa                	add	a5,a5,a0
  a22910:	239c                	lbu	a5,0(a5)
  a22912:	cf91                	beqz	a5,a2292e <uapi_uart_rx_fifo_is_empty+0x2a>
  a22914:	8118                	push	{ra},-32
  a22916:	00f10613          	addi	a2,sp,15
  a2291a:	45a5                	li	a1,9
  a2291c:	000107a3          	sb	zero,15(sp)
  a22920:	3a1000ef          	jal	ra,a234c0 <hal_uart_ctrl>
  a22924:	00f14783          	lbu	a5,15(sp)
  a22928:	853e                	mv	a0,a5
  a2292a:	8114                	popret	{ra},32
  a2292c:	4781                	li	a5,0
  a2292e:	853e                	mv	a0,a5
  a22930:	8082                	ret

00a22932 <uapi_watchdog_init>:
  a22932:	8058                	push	{ra,s0-s3},-32
  a22934:	89aa                	mv	s3,a0
  a22936:	732010ef          	jal	ra,a24068 <watchdog_port_register_hal_funcs>
  a2293a:	73e010ef          	jal	ra,a24078 <watchdog_port_register_irq>
  a2293e:	f50ff0ef          	jal	ra,a2208e <osal_irq_lock>
  a22942:	84aa                	mv	s1,a0
  a22944:	7c5000ef          	jal	ra,a23908 <hal_watchdog_get_funcs>
  a22948:	411c                	lw	a5,0(a0)
  a2294a:	00a0 679c 091f      	l.li	s2,0xa0679c
  a22950:	00a92023          	sw	a0,0(s2)
  a22954:	9782                	jalr	a5
  a22956:	c519                	beqz	a0,a22964 <uapi_watchdog_init+0x32>
  a22958:	842a                	mv	s0,a0
  a2295a:	8526                	mv	a0,s1
  a2295c:	f3aff0ef          	jal	ra,a22096 <osal_irq_restore>
  a22960:	8522                	mv	a0,s0
  a22962:	8054                	popret	{ra,s0-s3},32
  a22964:	00092783          	lw	a5,0(s2)
  a22968:	854e                	mv	a0,s3
  a2296a:	479c                	lw	a5,8(a5)
  a2296c:	9782                	jalr	a5
  a2296e:	842a                	mv	s0,a0
  a22970:	8526                	mv	a0,s1
  a22972:	f24ff0ef          	jal	ra,a22096 <osal_irq_restore>
  a22976:	f46d                	bnez	s0,a22960 <uapi_watchdog_init+0x2e>
  a22978:	00a0 67a1 079f      	l.li	a5,0xa067a1
  a2297e:	4705                	li	a4,1
  a22980:	a398                	sb	a4,0(a5)
  a22982:	bff9                	j	a22960 <uapi_watchdog_init+0x2e>

00a22984 <uapi_watchdog_enable>:
  a22984:	00a0 67a1 079f      	l.li	a5,0xa067a1
  a2298a:	239c                	lbu	a5,0(a5)
  a2298c:	cb9d                	beqz	a5,a229c2 <uapi_watchdog_enable+0x3e>
  a2298e:	8048                	push	{ra,s0-s2},-16
  a22990:	4485                	li	s1,1
  a22992:	57fd                	li	a5,-1
  a22994:	02a4e563          	bltu	s1,a0,a229be <uapi_watchdog_enable+0x3a>
  a22998:	842a                	mv	s0,a0
  a2299a:	ef4ff0ef          	jal	ra,a2208e <osal_irq_lock>
  a2299e:	00a0 679c 079f      	l.li	a5,0xa0679c
  a229a4:	439c                	lw	a5,0(a5)
  a229a6:	892a                	mv	s2,a0
  a229a8:	8522                	mv	a0,s0
  a229aa:	4b9c                	lw	a5,16(a5)
  a229ac:	9782                	jalr	a5
  a229ae:	854a                	mv	a0,s2
  a229b0:	ee6ff0ef          	jal	ra,a22096 <osal_irq_restore>
  a229b4:	00a0 67a0 079f      	l.li	a5,0xa067a0
  a229ba:	a384                	sb	s1,0(a5)
  a229bc:	4781                	li	a5,0
  a229be:	853e                	mv	a0,a5
  a229c0:	8044                	popret	{ra,s0-s2},16
  a229c2:	57fd                	li	a5,-1
  a229c4:	853e                	mv	a0,a5
  a229c6:	8082                	ret

00a229c8 <uapi_watchdog_disable>:
  a229c8:	00a0 67a1 079f      	l.li	a5,0xa067a1
  a229ce:	239c                	lbu	a5,0(a5)
  a229d0:	e399                	bnez	a5,a229d6 <uapi_watchdog_disable+0xe>
  a229d2:	557d                	li	a0,-1
  a229d4:	8082                	ret
  a229d6:	8118                	push	{ra},-32
  a229d8:	eb6ff0ef          	jal	ra,a2208e <osal_irq_lock>
  a229dc:	00a0 679c 079f      	l.li	a5,0xa0679c
  a229e2:	439c                	lw	a5,0(a5)
  a229e4:	c62a                	sw	a0,12(sp)
  a229e6:	4bdc                	lw	a5,20(a5)
  a229e8:	9782                	jalr	a5
  a229ea:	4532                	lw	a0,12(sp)
  a229ec:	eaaff0ef          	jal	ra,a22096 <osal_irq_restore>
  a229f0:	00a0 67a0 079f      	l.li	a5,0xa067a0
  a229f6:	00078023          	sb	zero,0(a5)
  a229fa:	4501                	li	a0,0
  a229fc:	8114                	popret	{ra},32

00a229fe <uapi_watchdog_deinit>:
  a229fe:	00a067b7          	lui	a5,0xa06
  a22a02:	7a17c703          	lbu	a4,1953(a5) # a067a1 <g_watchdog_inited>
  a22a06:	c71d                	beqz	a4,a22a34 <uapi_watchdog_deinit+0x36>
  a22a08:	8028                	push	{ra,s0},-16
  a22a0a:	7a178413          	addi	s0,a5,1953
  a22a0e:	00a0 67a0 079f      	l.li	a5,0xa067a0
  a22a14:	239c                	lbu	a5,0(a5)
  a22a16:	c391                	beqz	a5,a22a1a <uapi_watchdog_deinit+0x1c>
  a22a18:	3f45                	jal	ra,a229c8 <uapi_watchdog_disable>
  a22a1a:	00a0 679c 079f      	l.li	a5,0xa0679c
  a22a20:	439c                	lw	a5,0(a5)
  a22a22:	c399                	beqz	a5,a22a28 <uapi_watchdog_deinit+0x2a>
  a22a24:	43dc                	lw	a5,4(a5)
  a22a26:	9782                	jalr	a5
  a22a28:	64c010ef          	jal	ra,a24074 <watchdog_port_unregister_hal_funcs>
  a22a2c:	4501                	li	a0,0
  a22a2e:	00040023          	sb	zero,0(s0)
  a22a32:	8024                	popret	{ra,s0},16
  a22a34:	4501                	li	a0,0
  a22a36:	8082                	ret

00a22a38 <uapi_watchdog_kick>:
  a22a38:	00a0 67a0 079f      	l.li	a5,0xa067a0
  a22a3e:	239c                	lbu	a5,0(a5)
  a22a40:	e399                	bnez	a5,a22a46 <uapi_watchdog_kick+0xe>
  a22a42:	557d                	li	a0,-1
  a22a44:	8082                	ret
  a22a46:	8118                	push	{ra},-32
  a22a48:	e46ff0ef          	jal	ra,a2208e <osal_irq_lock>
  a22a4c:	00a0 679c 079f      	l.li	a5,0xa0679c
  a22a52:	439c                	lw	a5,0(a5)
  a22a54:	c62a                	sw	a0,12(sp)
  a22a56:	4f9c                	lw	a5,24(a5)
  a22a58:	9782                	jalr	a5
  a22a5a:	4532                	lw	a0,12(sp)
  a22a5c:	e3aff0ef          	jal	ra,a22096 <osal_irq_restore>
  a22a60:	4501                	li	a0,0
  a22a62:	8114                	popret	{ra},32

00a22a64 <uapi_efuse_init>:
  a22a64:	8018                	push	{ra},-16
  a22a66:	613010ef          	jal	ra,a24878 <efuse_port_register_hal_funcs>
  a22a6a:	22a9                	jal	ra,a22bb4 <hal_efuse_get_funcs>
  a22a6c:	00052303          	lw	t1,0(a0)
  a22a70:	8010                	pop	{ra},16
  a22a72:	8302                	jr	t1

00a22a74 <uapi_efuse_read_bit>:
  a22a74:	8168                	push	{ra,s0-s4},-48
  a22a76:	000107a3          	sb	zero,15(sp)
  a22a7a:	547d                	li	s0,-1
  a22a7c:	0ff00793          	li	a5,255
  a22a80:	02b7ee63          	bltu	a5,a1,a22abc <uapi_efuse_read_bit+0x48>
  a22a84:	cd05                	beqz	a0,a22abc <uapi_efuse_read_bit+0x48>
  a22a86:	08067dbb          	bgeui	a2,8,a22abc <uapi_efuse_read_bit+0x48>
  a22a8a:	842e                	mv	s0,a1
  a22a8c:	8932                	mv	s2,a2
  a22a8e:	84aa                	mv	s1,a0
  a22a90:	2215                	jal	ra,a22bb4 <hal_efuse_get_funcs>
  a22a92:	8a2a                	mv	s4,a0
  a22a94:	dfaff0ef          	jal	ra,a2208e <osal_irq_lock>
  a22a98:	010a2783          	lw	a5,16(s4)
  a22a9c:	89aa                	mv	s3,a0
  a22a9e:	00f10593          	addi	a1,sp,15
  a22aa2:	8522                	mv	a0,s0
  a22aa4:	9782                	jalr	a5
  a22aa6:	842a                	mv	s0,a0
  a22aa8:	ed01                	bnez	a0,a22ac0 <uapi_efuse_read_bit+0x4c>
  a22aaa:	00f14783          	lbu	a5,15(sp)
  a22aae:	854e                	mv	a0,s3
  a22ab0:	4127d633          	sra	a2,a5,s2
  a22ab4:	8a05                	andi	a2,a2,1
  a22ab6:	a090                	sb	a2,0(s1)
  a22ab8:	ddeff0ef          	jal	ra,a22096 <osal_irq_restore>
  a22abc:	8522                	mv	a0,s0
  a22abe:	8164                	popret	{ra,s0-s4},48
  a22ac0:	854e                	mv	a0,s3
  a22ac2:	dd4ff0ef          	jal	ra,a22096 <osal_irq_restore>
  a22ac6:	547d                	li	s0,-1
  a22ac8:	bfd5                	j	a22abc <uapi_efuse_read_bit+0x48>

00a22aca <uapi_efuse_read_buffer>:
  a22aca:	8088                	push	{ra,s0-s6},-32
  a22acc:	547d                	li	s0,-1
  a22ace:	c231                	beqz	a2,a22b12 <uapi_efuse_read_buffer+0x48>
  a22ad0:	0ff00793          	li	a5,255
  a22ad4:	02b7ef63          	bltu	a5,a1,a22b12 <uapi_efuse_read_buffer+0x48>
  a22ad8:	00c587b3          	add	a5,a1,a2
  a22adc:	10000713          	li	a4,256
  a22ae0:	02f76963          	bltu	a4,a5,a22b12 <uapi_efuse_read_buffer+0x48>
  a22ae4:	c51d                	beqz	a0,a22b12 <uapi_efuse_read_buffer+0x48>
  a22ae6:	8932                	mv	s2,a2
  a22ae8:	89ae                	mv	s3,a1
  a22aea:	8a2a                	mv	s4,a0
  a22aec:	20e1                	jal	ra,a22bb4 <hal_efuse_get_funcs>
  a22aee:	8b2a                	mv	s6,a0
  a22af0:	d9eff0ef          	jal	ra,a2208e <osal_irq_lock>
  a22af4:	8aaa                	mv	s5,a0
  a22af6:	4481                	li	s1,0
  a22af8:	010b2783          	lw	a5,16(s6) # 2010 <ccause+0x104e>
  a22afc:	009a05b3          	add	a1,s4,s1
  a22b00:	00998533          	add	a0,s3,s1
  a22b04:	9782                	jalr	a5
  a22b06:	842a                	mv	s0,a0
  a22b08:	c519                	beqz	a0,a22b16 <uapi_efuse_read_buffer+0x4c>
  a22b0a:	8556                	mv	a0,s5
  a22b0c:	d8aff0ef          	jal	ra,a22096 <osal_irq_restore>
  a22b10:	547d                	li	s0,-1
  a22b12:	8522                	mv	a0,s0
  a22b14:	8084                	popret	{ra,s0-s6},32
  a22b16:	0485                	addi	s1,s1,1
  a22b18:	ff24e0e3          	bltu	s1,s2,a22af8 <uapi_efuse_read_buffer+0x2e>
  a22b1c:	8556                	mv	a0,s5
  a22b1e:	d78ff0ef          	jal	ra,a22096 <osal_irq_restore>
  a22b22:	bfc5                	j	a22b12 <uapi_efuse_read_buffer+0x48>

00a22b24 <uapi_efuse_write_bit>:
  a22b24:	8168                	push	{ra,s0-s4},-48
  a22b26:	547d                	li	s0,-1
  a22b28:	0ff00793          	li	a5,255
  a22b2c:	04a7e463          	bltu	a5,a0,a22b74 <uapi_efuse_write_bit+0x50>
  a22b30:	0815f13b          	bgeui	a1,8,a22b74 <uapi_efuse_write_bit+0x50>
  a22b34:	892e                	mv	s2,a1
  a22b36:	84aa                	mv	s1,a0
  a22b38:	000107a3          	sb	zero,15(sp)
  a22b3c:	28a5                	jal	ra,a22bb4 <hal_efuse_get_funcs>
  a22b3e:	8a2a                	mv	s4,a0
  a22b40:	d4eff0ef          	jal	ra,a2208e <osal_irq_lock>
  a22b44:	010a2783          	lw	a5,16(s4)
  a22b48:	89aa                	mv	s3,a0
  a22b4a:	00f10593          	addi	a1,sp,15
  a22b4e:	8526                	mv	a0,s1
  a22b50:	9782                	jalr	a5
  a22b52:	c509                	beqz	a0,a22b5c <uapi_efuse_write_bit+0x38>
  a22b54:	854e                	mv	a0,s3
  a22b56:	d40ff0ef          	jal	ra,a22096 <osal_irq_restore>
  a22b5a:	a829                	j	a22b74 <uapi_efuse_write_bit+0x50>
  a22b5c:	00f14783          	lbu	a5,15(sp)
  a22b60:	0127d7b3          	srl	a5,a5,s2
  a22b64:	8b85                	andi	a5,a5,1
  a22b66:	cb89                	beqz	a5,a22b78 <uapi_efuse_write_bit+0x54>
  a22b68:	854e                	mv	a0,s3
  a22b6a:	80000437          	lui	s0,0x80000
  a22b6e:	d28ff0ef          	jal	ra,a22096 <osal_irq_restore>
  a22b72:	0405                	addi	s0,s0,1 # 80000001 <__data_load__+0x7f5d8731>
  a22b74:	8522                	mv	a0,s0
  a22b76:	8164                	popret	{ra,s0-s4},48
  a22b78:	8526                	mv	a0,s1
  a22b7a:	50b010ef          	jal	ra,a24884 <hal_efuse_get_region>
  a22b7e:	4585                	li	a1,1
  a22b80:	01ca2783          	lw	a5,28(s4)
  a22b84:	012595b3          	sll	a1,a1,s2
  a22b88:	862a                	mv	a2,a0
  a22b8a:	9d81                	uxtb	a1
  a22b8c:	8526                	mv	a0,s1
  a22b8e:	9782                	jalr	a5
  a22b90:	842a                	mv	s0,a0
  a22b92:	854e                	mv	a0,s3
  a22b94:	d069                	beqz	s0,a22b56 <uapi_efuse_write_bit+0x32>
  a22b96:	d00ff0ef          	jal	ra,a22096 <osal_irq_restore>
  a22b9a:	547d                	li	s0,-1
  a22b9c:	bfe1                	j	a22b74 <uapi_efuse_write_bit+0x50>

00a22b9e <hal_efuse_register_funcs>:
  a22b9e:	c519                	beqz	a0,a22bac <hal_efuse_register_funcs+0xe>
  a22ba0:	00a0 67a4 079f      	l.li	a5,0xa067a4
  a22ba6:	c388                	sw	a0,0(a5)
  a22ba8:	4501                	li	a0,0
  a22baa:	8082                	ret
  a22bac:	80000537          	lui	a0,0x80000
  a22bb0:	0505                	addi	a0,a0,1 # 80000001 <__data_load__+0x7f5d8731>
  a22bb2:	8082                	ret

00a22bb4 <hal_efuse_get_funcs>:
  a22bb4:	00a0 67a4 079f      	l.li	a5,0xa067a4
  a22bba:	4388                	lw	a0,0(a5)
  a22bbc:	8082                	ret

00a22bbe <hal_efuse_deinit>:
  a22bbe:	00a0 67a8 079f      	l.li	a5,0xa067a8
  a22bc4:	00078023          	sb	zero,0(a5)
  a22bc8:	8082                	ret

00a22bca <hal_efuse_get_writeread_addr>:
  a22bca:	8038                	push	{ra,s0-s1},-16
  a22bcc:	84aa                	mv	s1,a0
  a22bce:	4b7010ef          	jal	ra,a24884 <hal_efuse_get_region>
  a22bd2:	842a                	mv	s0,a0
  a22bd4:	8526                	mv	a0,s1
  a22bd6:	4b5010ef          	jal	ra,a2488a <hal_efuse_get_byte_offset>
  a22bda:	00a0 2490 079f      	l.li	a5,0xa02490
  a22be0:	0487879b          	addshf	a5,a5,s0,sll,2
  a22be4:	439c                	lw	a5,0(a5)
  a22be6:	8105                	srli	a0,a0,0x1
  a22be8:	9d21                	uxth	a0
  a22bea:	04a7851b          	addshf	a0,a5,a0,sll,2
  a22bee:	8034                	popret	{ra,s0-s1},16

00a22bf0 <hal_efuse_init>:
  a22bf0:	8018                	push	{ra},-16
  a22bf2:	4501                	li	a0,0
  a22bf4:	2255                	jal	ra,a22d98 <hal_efuse_regs_init>
  a22bf6:	00a067b7          	lui	a5,0xa06
  a22bfa:	7b07a703          	lw	a4,1968(a5) # a067b0 <g_efuse_regs>
  a22bfe:	00a0 2400 069f      	l.li	a3,0xa02400
  a22c04:	2294                	lbu	a3,0(a3)
  a22c06:	435c                	lw	a5,4(a4)
  a22c08:	4501                	li	a0,0
  a22c0a:	f007f793          	andi	a5,a5,-256
  a22c0e:	8fd5                	or	a5,a5,a3
  a22c10:	c35c                	sw	a5,4(a4)
  a22c12:	00a0 67a8 079f      	l.li	a5,0xa067a8
  a22c18:	4705                	li	a4,1
  a22c1a:	a398                	sb	a4,0(a5)
  a22c1c:	8014                	popret	{ra},16

00a22c1e <hal_efuse_read_byte>:
  a22c1e:	00a0 67a8 079f      	l.li	a5,0xa067a8
  a22c24:	239c                	lbu	a5,0(a5)
  a22c26:	c7a1                	beqz	a5,a22c6e <hal_efuse_read_byte+0x50>
  a22c28:	8048                	push	{ra,s0-s2},-16
  a22c2a:	842a                	mv	s0,a0
  a22c2c:	0ff00793          	li	a5,255
  a22c30:	04a7e363          	bltu	a5,a0,a22c76 <hal_efuse_read_byte+0x58>
  a22c34:	c1a9                	beqz	a1,a22c76 <hal_efuse_read_byte+0x58>
  a22c36:	84ae                	mv	s1,a1
  a22c38:	3f49                	jal	ra,a22bca <hal_efuse_get_writeread_addr>
  a22c3a:	892a                	mv	s2,a0
  a22c3c:	8522                	mv	a0,s0
  a22c3e:	447010ef          	jal	ra,a24884 <hal_efuse_get_region>
  a22c42:	00a0 67b0 079f      	l.li	a5,0xa067b0
  a22c48:	04a7851b          	addshf	a0,a5,a0,sll,2
  a22c4c:	4118                	lw	a4,0(a0)
  a22c4e:	76c1                	lui	a3,0xffff0
  a22c50:	8805                	andi	s0,s0,1
  a22c52:	431c                	lw	a5,0(a4)
  a22c54:	8ff5                	and	a5,a5,a3
  a22c56:	0000 5a5a 069f      	l.li	a3,0x5a5a
  a22c5c:	8fd5                	or	a5,a5,a3
  a22c5e:	c31c                	sw	a5,0(a4)
  a22c60:	00092783          	lw	a5,0(s2)
  a22c64:	c011                	beqz	s0,a22c68 <hal_efuse_read_byte+0x4a>
  a22c66:	83a1                	srli	a5,a5,0x8
  a22c68:	a09c                	sb	a5,0(s1)
  a22c6a:	4501                	li	a0,0
  a22c6c:	8044                	popret	{ra,s0-s2},16
  a22c6e:	8000 1391 051f      	l.li	a0,0x80001391
  a22c74:	8082                	ret
  a22c76:	80000537          	lui	a0,0x80000
  a22c7a:	0505                	addi	a0,a0,1 # 80000001 <__data_load__+0x7f5d8731>
  a22c7c:	bfc5                	j	a22c6c <hal_efuse_read_byte+0x4e>

00a22c7e <hal_efuse_get_die_id>:
  a22c7e:	00a0 67a8 079f      	l.li	a5,0xa067a8
  a22c84:	239c                	lbu	a5,0(a5)
  a22c86:	ef99                	bnez	a5,a22ca4 <hal_efuse_get_die_id+0x26>
  a22c88:	8000 1391 051f      	l.li	a0,0x80001391
  a22c8e:	8082                	ret
  a22c90:	008905b3          	add	a1,s2,s0
  a22c94:	8522                	mv	a0,s0
  a22c96:	3761                	jal	ra,a22c1e <hal_efuse_read_byte>
  a22c98:	e919                	bnez	a0,a22cae <hal_efuse_get_die_id+0x30>
  a22c9a:	0405                	addi	s0,s0,1
  a22c9c:	fe946ae3          	bltu	s0,s1,a22c90 <hal_efuse_get_die_id+0x12>
  a22ca0:	4501                	li	a0,0
  a22ca2:	8044                	popret	{ra,s0-s2},16
  a22ca4:	8048                	push	{ra,s0-s2},-16
  a22ca6:	892a                	mv	s2,a0
  a22ca8:	84ae                	mv	s1,a1
  a22caa:	4401                	li	s0,0
  a22cac:	bfc5                	j	a22c9c <hal_efuse_get_die_id+0x1e>
  a22cae:	557d                	li	a0,-1
  a22cb0:	bfcd                	j	a22ca2 <hal_efuse_get_die_id+0x24>

00a22cb2 <hal_efuse_write_operation>:
  a22cb2:	00a0 67a8 079f      	l.li	a5,0xa067a8
  a22cb8:	239c                	lbu	a5,0(a5)
  a22cba:	c3c1                	beqz	a5,a22d3a <hal_efuse_write_operation+0x88>
  a22cbc:	8058                	push	{ra,s0-s3},-32
  a22cbe:	842a                	mv	s0,a0
  a22cc0:	0ff00793          	li	a5,255
  a22cc4:	06a7ef63          	bltu	a5,a0,a22d42 <hal_efuse_write_operation+0x90>
  a22cc8:	00a064b7          	lui	s1,0xa06
  a22ccc:	892e                	mv	s2,a1
  a22cce:	7b048993          	addi	s3,s1,1968 # a067b0 <g_efuse_regs>
  a22cd2:	3b3010ef          	jal	ra,a24884 <hal_efuse_get_region>
  a22cd6:	04a9851b          	addshf	a0,s3,a0,sll,2
  a22cda:	4118                	lw	a4,0(a0)
  a22cdc:	76c1                	lui	a3,0xffff0
  a22cde:	8522                	mv	a0,s0
  a22ce0:	431c                	lw	a5,0(a4)
  a22ce2:	7b048493          	addi	s1,s1,1968
  a22ce6:	8ff5                	and	a5,a5,a3
  a22ce8:	0000 a5a5 069f      	l.li	a3,0xa5a5
  a22cee:	8fd5                	or	a5,a5,a3
  a22cf0:	c31c                	sw	a5,0(a4)
  a22cf2:	393010ef          	jal	ra,a24884 <hal_efuse_get_region>
  a22cf6:	04a9851b          	addshf	a0,s3,a0,sll,2
  a22cfa:	4118                	lw	a4,0(a0)
  a22cfc:	06400513          	li	a0,100
  a22d00:	475c                	lw	a5,12(a4)
  a22d02:	0017e793          	ori	a5,a5,1
  a22d06:	c75c                	sw	a5,12(a4)
  a22d08:	edeff0ef          	jal	ra,a223e6 <uapi_tcxo_delay_us>
  a22d0c:	8522                	mv	a0,s0
  a22d0e:	3d75                	jal	ra,a22bca <hal_efuse_get_writeread_addr>
  a22d10:	00147793          	andi	a5,s0,1
  a22d14:	c391                	beqz	a5,a22d18 <hal_efuse_write_operation+0x66>
  a22d16:	0922                	slli	s2,s2,0x8
  a22d18:	01252023          	sw	s2,0(a0)
  a22d1c:	8522                	mv	a0,s0
  a22d1e:	367010ef          	jal	ra,a24884 <hal_efuse_get_region>
  a22d22:	04a4849b          	addshf	s1,s1,a0,sll,2
  a22d26:	4098                	lw	a4,0(s1)
  a22d28:	06400513          	li	a0,100
  a22d2c:	475c                	lw	a5,12(a4)
  a22d2e:	9bf9                	andi	a5,a5,-2
  a22d30:	c75c                	sw	a5,12(a4)
  a22d32:	eb4ff0ef          	jal	ra,a223e6 <uapi_tcxo_delay_us>
  a22d36:	4501                	li	a0,0
  a22d38:	8054                	popret	{ra,s0-s3},32
  a22d3a:	8000 1391 051f      	l.li	a0,0x80001391
  a22d40:	8082                	ret
  a22d42:	80000537          	lui	a0,0x80000
  a22d46:	0505                	addi	a0,a0,1 # 80000001 <__data_load__+0x7f5d8731>
  a22d48:	bfc5                	j	a22d38 <hal_efuse_write_operation+0x86>

00a22d4a <hal_efuse_write_buffer_operation>:
  a22d4a:	00a0 67a8 079f      	l.li	a5,0xa067a8
  a22d50:	239c                	lbu	a5,0(a5)
  a22d52:	c795                	beqz	a5,a22d7e <hal_efuse_write_buffer_operation+0x34>
  a22d54:	8058                	push	{ra,s0-s3},-32
  a22d56:	89b2                	mv	s3,a2
  a22d58:	842e                	mv	s0,a1
  a22d5a:	84ae                	mv	s1,a1
  a22d5c:	40b50933          	sub	s2,a0,a1
  a22d60:	408487b3          	sub	a5,s1,s0
  a22d64:	0137e463          	bltu	a5,s3,a22d6c <hal_efuse_write_buffer_operation+0x22>
  a22d68:	4501                	li	a0,0
  a22d6a:	8054                	popret	{ra,s0-s3},32
  a22d6c:	208c                	lbu	a1,0(s1)
  a22d6e:	00990533          	add	a0,s2,s1
  a22d72:	4601                	li	a2,0
  a22d74:	3f3d                	jal	ra,a22cb2 <hal_efuse_write_operation>
  a22d76:	0485                	addi	s1,s1,1
  a22d78:	d565                	beqz	a0,a22d60 <hal_efuse_write_buffer_operation+0x16>
  a22d7a:	557d                	li	a0,-1
  a22d7c:	b7fd                	j	a22d6a <hal_efuse_write_buffer_operation+0x20>
  a22d7e:	8000 1391 051f      	l.li	a0,0x80001391
  a22d84:	8082                	ret

00a22d86 <hal_efuse_set_clock_period>:
  a22d86:	00a0 2400 079f      	l.li	a5,0xa02400
  a22d8c:	c388                	sw	a0,0(a5)
  a22d8e:	8082                	ret

00a22d90 <hal_efuse_funcs_get>:
  a22d90:	00a0 2404 051f      	l.li	a0,0xa02404
  a22d96:	8082                	ret

00a22d98 <hal_efuse_regs_init>:
  a22d98:	02a04763          	bgtz	a0,a22dc6 <hal_efuse_regs_init+0x2e>
  a22d9c:	050a                	slli	a0,a0,0x2
  a22d9e:	00a0 2488 071f      	l.li	a4,0xa02488
  a22da4:	00a0 67b0 079f      	l.li	a5,0xa067b0
  a22daa:	97aa                	add	a5,a5,a0
  a22dac:	953a                	add	a0,a0,a4
  a22dae:	4118                	lw	a4,0(a0)
  a22db0:	4501                	li	a0,0
  a22db2:	c398                	sw	a4,0(a5)
  a22db4:	00a027b7          	lui	a5,0xa02
  a22db8:	48c7a703          	lw	a4,1164(a5) # a0248c <g_efuse_boot_done_addr>
  a22dbc:	00a0 67ac 079f      	l.li	a5,0xa067ac
  a22dc2:	c398                	sw	a4,0(a5)
  a22dc4:	8082                	ret
  a22dc6:	557d                	li	a0,-1
  a22dc8:	8082                	ret

00a22dca <hal_reboot_chip>:
  a22dca:	8018                	push	{ra},-16
  a22dcc:	ac2ff0ef          	jal	ra,a2208e <osal_irq_lock>
  a22dd0:	56c020ef          	jal	ra,a2533c <set_cpu_utils_system_boot_magic>
  a22dd4:	31d010ef          	jal	ra,a248f0 <reboot_port_reboot_chip>
  a22dd8:	a001                	j	a22dd8 <hal_reboot_chip+0xe>

00a22dda <crypto_cache_flush>:
  a22dda:	8082                	ret

00a22ddc <crypto_wait_func_is_support>:
  a22ddc:	4501                	li	a0,0
  a22dde:	8082                	ret

00a22de0 <hal_pke_init>:
  a22de0:	00a0 67bc 079f      	l.li	a5,0xa067bc
  a22de6:	4394                	lw	a3,0(a5)
  a22de8:	4705                	li	a4,1
  a22dea:	00e68363          	beq	a3,a4,a22df0 <hal_pke_init+0x10>
  a22dee:	c398                	sw	a4,0(a5)
  a22df0:	4501                	li	a0,0
  a22df2:	8082                	ret

00a22df4 <hal_pke_deinit>:
  a22df4:	00a0 67bc 079f      	l.li	a5,0xa067bc
  a22dfa:	4398                	lw	a4,0(a5)
  a22dfc:	0107133b          	bnei	a4,1,a22e08 <hal_pke_deinit+0x14>
  a22e00:	0007a023          	sw	zero,0(a5)
  a22e04:	4501                	li	a0,0
  a22e06:	8082                	ret
  a22e08:	6530 0002 051f      	l.li	a0,0x65300002
  a22e0e:	8082                	ret

00a22e10 <hal_pke_unlock>:
  a22e10:	44111737          	lui	a4,0x44111
  a22e14:	81072783          	lw	a5,-2032(a4) # 44110810 <__data_load__+0x436e8f40>
  a22e18:	0037e793          	ori	a5,a5,3
  a22e1c:	80f72823          	sw	a5,-2032(a4)
  a22e20:	0ff0000f          	fence
  a22e24:	8082                	ret

00a22e26 <hal_hash_condition>:
  a22e26:	411c                	lw	a5,0(a0)
  a22e28:	00a0 67c4 071f      	l.li	a4,0xa067c4
  a22e2e:	1cf717db          	muliadd	a5,a4,a5,28
  a22e32:	3bd8                	lbu	a4,21(a5)
  a22e34:	0107133b          	bnei	a4,1,a22e40 <hal_hash_condition+0x1a>
  a22e38:	00078aa3          	sb	zero,21(a5)
  a22e3c:	4505                	li	a0,1
  a22e3e:	8082                	ret
  a22e40:	4501                	li	a0,0
  a22e42:	8082                	ret

00a22e44 <hal_cipher_hash_init>:
  a22e44:	8048                	push	{ra,s0-s2},-16
  a22e46:	00a0 67c0 049f      	l.li	s1,0xa067c0
  a22e4c:	209c                	lbu	a5,0(s1)
  a22e4e:	4905                	li	s2,1
  a22e50:	05278563          	beq	a5,s2,a22e9a <hal_cipher_hash_init+0x56>
  a22e54:	00a06537          	lui	a0,0xa06
  a22e58:	7c450413          	addi	s0,a0,1988 # a067c4 <g_hash_hard_ctx>
  a22e5c:	05400693          	li	a3,84
  a22e60:	4601                	li	a2,0
  a22e62:	05400593          	li	a1,84
  a22e66:	7c450513          	addi	a0,a0,1988
  a22e6a:	63c020ef          	jal	ra,a254a6 <memset_s>
  a22e6e:	00a0 6818 079f      	l.li	a5,0xa06818
  a22e74:	4709                	li	a4,2
  a22e76:	02078693          	addi	a3,a5,32
  a22e7a:	c01c                	sw	a5,0(s0)
  a22e7c:	04078793          	addi	a5,a5,64
  a22e80:	c418                	sw	a4,8(s0)
  a22e82:	00042223          	sw	zero,4(s0)
  a22e86:	cc54                	sw	a3,28(s0)
  a22e88:	d058                	sw	a4,36(s0)
  a22e8a:	02042023          	sw	zero,32(s0)
  a22e8e:	dc1c                	sw	a5,56(s0)
  a22e90:	c038                	sw	a4,64(s0)
  a22e92:	02042e23          	sw	zero,60(s0)
  a22e96:	01248023          	sb	s2,0(s1)
  a22e9a:	4501                	li	a0,0
  a22e9c:	8044                	popret	{ra,s0-s2},16

00a22e9e <hal_hash_unlock>:
  a22e9e:	441007b7          	lui	a5,0x44100
  a22ea2:	43b8                	lw	a4,64(a5)
  a22ea4:	00251693          	slli	a3,a0,0x2
  a22ea8:	453d                	li	a0,15
  a22eaa:	00d51533          	sll	a0,a0,a3
  a22eae:	fff54513          	not	a0,a0
  a22eb2:	8d79                	and	a0,a0,a4
  a22eb4:	c3a8                	sw	a0,64(a5)
  a22eb6:	0ff0000f          	fence
  a22eba:	4501                	li	a0,0
  a22ebc:	8082                	ret

00a22ebe <hal_cipher_hash_deinit>:
  a22ebe:	8038                	push	{ra,s0-s1},-16
  a22ec0:	00a0 67c0 041f      	l.li	s0,0xa067c0
  a22ec6:	201c                	lbu	a5,0(s0)
  a22ec8:	c78d                	beqz	a5,a22ef2 <hal_cipher_hash_deinit+0x34>
  a22eca:	00a0 67c4 079f      	l.li	a5,0xa067c4
  a22ed0:	4501                	li	a0,0
  a22ed2:	4384                	lw	s1,0(a5)
  a22ed4:	37e9                	jal	ra,a22e9e <hal_hash_unlock>
  a22ed6:	4505                	li	a0,1
  a22ed8:	37d9                	jal	ra,a22e9e <hal_hash_unlock>
  a22eda:	4509                	li	a0,2
  a22edc:	37c9                	jal	ra,a22e9e <hal_hash_unlock>
  a22ede:	06000693          	li	a3,96
  a22ee2:	4601                	li	a2,0
  a22ee4:	06000593          	li	a1,96
  a22ee8:	8526                	mv	a0,s1
  a22eea:	5bc020ef          	jal	ra,a254a6 <memset_s>
  a22eee:	00040023          	sb	zero,0(s0)
  a22ef2:	4501                	li	a0,0
  a22ef4:	8034                	popret	{ra,s0-s1},16

00a22ef6 <hal_cipher_hash_config>:
  a22ef6:	00a0 67c0 079f      	l.li	a5,0xa067c0
  a22efc:	239c                	lbu	a5,0(a5)
  a22efe:	872a                	mv	a4,a0
  a22f00:	557d                	li	a0,-1
  a22f02:	01279a3b          	bnei	a5,1,a22faa <hal_cipher_hash_config+0xb4>
  a22f06:	0437743b          	bgeui	a4,4,a22fd6 <hal_cipher_hash_config+0xe0>
  a22f0a:	c671                	beqz	a2,a22fd6 <hal_cipher_hash_config+0xe0>
  a22f0c:	0125d793          	srli	a5,a1,0x12
  a22f10:	00a276b7          	lui	a3,0xa27
  a22f14:	03c7f793          	andi	a5,a5,60
  a22f18:	db468693          	addi	a3,a3,-588 # a26db4 <g_crypto_ecc_params+0x14>
  a22f1c:	97b6                	add	a5,a5,a3
  a22f1e:	439c                	lw	a5,0(a5)
  a22f20:	8782                	jr	a5
  a22f22:	02000693          	li	a3,32
  a22f26:	45ad                	li	a1,11
  a22f28:	4501                	li	a0,0
  a22f2a:	a829                	j	a22f44 <hal_cipher_hash_config+0x4e>
  a22f2c:	81e1                	srli	a1,a1,0x18
  a22f2e:	89bd                	andi	a1,a1,15
  a22f30:	0125853b          	beqi	a1,1,a22fc4 <hal_cipher_hash_config+0xce>
  a22f34:	022586bb          	beqi	a1,2,a22fce <hal_cipher_hash_config+0xd8>
  a22f38:	557d                	li	a0,-1
  a22f3a:	8082                	ret
  a22f3c:	04000693          	li	a3,64
  a22f40:	45ad                	li	a1,11
  a22f42:	450d                	li	a0,3
  a22f44:	00ff ffff 081f      	l.li	a6,0xffffff
  a22f4a:	010707b3          	add	a5,a4,a6
  a22f4e:	4410 5110 081f      	l.li	a6,0x44105110
  a22f54:	10f8081b          	addshf	a6,a6,a5,sll,8
  a22f58:	00082783          	lw	a5,0(a6)
  a22f5c:	ff0f ffff 089f      	l.li	a7,0xff0fffff
  a22f62:	0117f7b3          	and	a5,a5,a7
  a22f66:	28a7a79b          	orshf	a5,a5,a0,sll,20
  a22f6a:	fff0 ffff 051f      	l.li	a0,0xfff0ffff
  a22f70:	8fe9                	and	a5,a5,a0
  a22f72:	20b7a79b          	orshf	a5,a5,a1,sll,16
  a22f76:	00f82023          	sw	a5,0(a6)
  a22f7a:	0ff0000f          	fence
  a22f7e:	4410a537          	lui	a0,0x4410a
  a22f82:	071e                	slli	a4,a4,0x7
  a22f84:	00450593          	addi	a1,a0,4 # 4410a004 <__data_load__+0x436e2734>
  a22f88:	95ba                	add	a1,a1,a4
  a22f8a:	8289                	srli	a3,a3,0x2
  a22f8c:	972a                	add	a4,a4,a0
  a22f8e:	4781                	li	a5,0
  a22f90:	c19c                	sw	a5,0(a1)
  a22f92:	0ff0000f          	fence
  a22f96:	4208                	lw	a0,0(a2)
  a22f98:	c308                	sw	a0,0(a4)
  a22f9a:	0ff0000f          	fence
  a22f9e:	0785                	addi	a5,a5,1 # 44100001 <__data_load__+0x436d8731>
  a22fa0:	0611                	addi	a2,a2,4
  a22fa2:	fef697e3          	bne	a3,a5,a22f90 <hal_cipher_hash_config+0x9a>
  a22fa6:	4501                	li	a0,0
  a22fa8:	8082                	ret
  a22faa:	8082                	ret
  a22fac:	6520 0003 051f      	l.li	a0,0x65200003
  a22fb2:	8082                	ret
  a22fb4:	46d1                	li	a3,20
  a22fb6:	45a9                	li	a1,10
  a22fb8:	bf85                	j	a22f28 <hal_cipher_hash_config+0x32>
  a22fba:	04000693          	li	a3,64
  a22fbe:	45ad                	li	a1,11
  a22fc0:	4509                	li	a0,2
  a22fc2:	b749                	j	a22f44 <hal_cipher_hash_config+0x4e>
  a22fc4:	02000693          	li	a3,32
  a22fc8:	45ad                	li	a1,11
  a22fca:	4505                	li	a0,1
  a22fcc:	bfa5                	j	a22f44 <hal_cipher_hash_config+0x4e>
  a22fce:	02000693          	li	a3,32
  a22fd2:	45b1                	li	a1,12
  a22fd4:	bf91                	j	a22f28 <hal_cipher_hash_config+0x32>
  a22fd6:	8082                	ret

00a22fd8 <hal_cipher_hash_add_in_node>:
  a22fd8:	c5b5                	beqz	a1,a23044 <hal_cipher_hash_add_in_node+0x6c>
  a22fda:	8068                	push	{ra,s0-s4},-32
  a22fdc:	00a0 67c4 041f      	l.li	s0,0xa067c4
  a22fe2:	1ca4145b          	muliadd	s0,s0,a0,28
  a22fe6:	4058                	lw	a4,4(s0)
  a22fe8:	8936                	mv	s2,a3
  a22fea:	4414                	lw	a3,8(s0)
  a22fec:	00170793          	addi	a5,a4,1
  a22ff0:	4004                	lw	s1,0(s0)
  a22ff2:	02d7f7b3          	remu	a5,a5,a3
  a22ff6:	8a32                	mv	s4,a2
  a22ff8:	08e4849b          	addshf	s1,s1,a4,sll,4
  a22ffc:	89ae                	mv	s3,a1
  a22ffe:	46c1                	li	a3,16
  a23000:	4601                	li	a2,0
  a23002:	45c1                	li	a1,16
  a23004:	8526                	mv	a0,s1
  a23006:	c05c                	sw	a5,4(s0)
  a23008:	49e020ef          	jal	ra,a254a6 <memset_s>
  a2300c:	409c                	lw	a5,0(s1)
  a2300e:	00197693          	andi	a3,s2,1
  a23012:	00497913          	andi	s2,s2,4
  a23016:	9bf1                	andi	a5,a5,-4
  a23018:	01203733          	snez	a4,s2
  a2301c:	8fd5                	or	a5,a5,a3
  a2301e:	02e7a79b          	orshf	a5,a5,a4,sll,1
  a23022:	c09c                	sw	a5,0(s1)
  a23024:	24dc                	lbu	a5,12(s1)
  a23026:	0134a423          	sw	s3,8(s1)
  a2302a:	0144a223          	sw	s4,4(s1)
  a2302e:	9bc1                	andi	a5,a5,-16
  a23030:	a4dc                	sb	a5,12(s1)
  a23032:	00090663          	beqz	s2,a2303e <hal_cipher_hash_add_in_node+0x66>
  a23036:	4785                	li	a5,1
  a23038:	b87c                	sb	a5,23(s0)
  a2303a:	4501                	li	a0,0
  a2303c:	8064                	popret	{ra,s0-s4},32
  a2303e:	00040ba3          	sb	zero,23(s0)
  a23042:	bfe5                	j	a2303a <hal_cipher_hash_add_in_node+0x62>
  a23044:	6520 00a4 051f      	l.li	a0,0x652000a4
  a2304a:	8082                	ret

00a2304c <hal_cipher_hash_start>:
  a2304c:	8068                	push	{ra,s0-s4},-32
  a2304e:	00a069b7          	lui	s3,0xa06
  a23052:	7c498913          	addi	s2,s3,1988 # a067c4 <g_hash_hard_ctx>
  a23056:	1ca9195b          	muliadd	s2,s2,a0,28
  a2305a:	01092783          	lw	a5,16(s2)
  a2305e:	4a05                	li	s4,1
  a23060:	842a                	mv	s0,a0
  a23062:	00aa14b3          	sll	s1,s4,a0
  a23066:	7c498993          	addi	s3,s3,1988
  a2306a:	cbad                	beqz	a5,a230dc <hal_cipher_hash_start+0x90>
  a2306c:	c9a5                	beqz	a1,a230dc <hal_cipher_hash_start+0x90>
  a2306e:	01494783          	lbu	a5,20(s2)
  a23072:	c7ad                	beqz	a5,a230dc <hal_cipher_hash_start+0x90>
  a23074:	d69ff0ef          	jal	ra,a22ddc <crypto_wait_func_is_support>
  a23078:	c135                	beqz	a0,a230dc <hal_cipher_hash_start+0x90>
  a2307a:	00090aa3          	sb	zero,21(s2)
  a2307e:	01490b23          	sb	s4,22(s2)
  a23082:	441087b7          	lui	a5,0x44108
  a23086:	6047a703          	lw	a4,1540(a5) # 44108604 <__data_load__+0x436e0d34>
  a2308a:	8cd9                	or	s1,s1,a4
  a2308c:	6097a223          	sw	s1,1540(a5)
  a23090:	0ff0000f          	fence
  a23094:	00ff ffff 091f      	l.li	s2,0xffffff
  a2309a:	012407b3          	add	a5,s0,s2
  a2309e:	4410 5130 091f      	l.li	s2,0x44105130
  a230a4:	10f9091b          	addshf	s2,s2,a5,sll,8
  a230a8:	00092703          	lw	a4,0(s2)
  a230ac:	1c89945b          	muliadd	s0,s3,s0,28
  a230b0:	4414                	lw	a3,8(s0)
  a230b2:	0ff77793          	andi	a5,a4,255
  a230b6:	0785                	addi	a5,a5,1
  a230b8:	02d7f7b3          	remu	a5,a5,a3
  a230bc:	4008                	lw	a0,0(s0)
  a230be:	f0077713          	andi	a4,a4,-256
  a230c2:	02000593          	li	a1,32
  a230c6:	9f81                	uxtb	a5
  a230c8:	00f764b3          	or	s1,a4,a5
  a230cc:	d0fff0ef          	jal	ra,a22dda <crypto_cache_flush>
  a230d0:	00992023          	sw	s1,0(s2)
  a230d4:	0ff0000f          	fence
  a230d8:	4501                	li	a0,0
  a230da:	8064                	popret	{ra,s0-s4},32
  a230dc:	1c8997db          	muliadd	a5,s3,s0,28
  a230e0:	00078b23          	sb	zero,22(a5)
  a230e4:	441087b7          	lui	a5,0x44108
  a230e8:	6047a703          	lw	a4,1540(a5) # 44108604 <__data_load__+0x436e0d34>
  a230ec:	fff4c493          	not	s1,s1
  a230f0:	8cf9                	and	s1,s1,a4
  a230f2:	bf69                	j	a2308c <hal_cipher_hash_start+0x40>

00a230f4 <hal_cipher_hash_done_try>:
  a230f4:	44108737          	lui	a4,0x44108
  a230f8:	60072683          	lw	a3,1536(a4) # 44108600 <__data_load__+0x436e0d30>
  a230fc:	4785                	li	a5,1
  a230fe:	00a79533          	sll	a0,a5,a0
  a23102:	8d75                	and	a0,a0,a3
  a23104:	60a72023          	sw	a0,1536(a4)
  a23108:	0ff0000f          	fence
  a2310c:	8082                	ret

00a2310e <hal_hash_lock>:
  a2310e:	fff50793          	addi	a5,a0,-1
  a23112:	0347f03b          	bgeui	a5,3,a23212 <hal_hash_lock+0x104>
  a23116:	8058                	push	{ra,s0-s3},-32
  a23118:	842a                	mv	s0,a0
  a2311a:	906ff0ef          	jal	ra,a22220 <crypto_get_cpu_type>
  a2311e:	44100737          	lui	a4,0x44100
  a23122:	432c                	lw	a1,64(a4)
  a23124:	00241693          	slli	a3,s0,0x2
  a23128:	00153513          	seqz	a0,a0
  a2312c:	00d5d633          	srl	a2,a1,a3
  a23130:	8a3d                	andi	a2,a2,15
  a23132:	0505                	addi	a0,a0,1
  a23134:	c609                	beqz	a2,a2313e <hal_hash_lock+0x30>
  a23136:	6520 0005 051f      	l.li	a0,0x65200005
  a2313c:	8054                	popret	{ra,s0-s3},32
  a2313e:	00d517b3          	sll	a5,a0,a3
  a23142:	8fcd                	or	a5,a5,a1
  a23144:	c33c                	sw	a5,64(a4)
  a23146:	0ff0000f          	fence
  a2314a:	433c                	lw	a5,64(a4)
  a2314c:	00d7d7b3          	srl	a5,a5,a3
  a23150:	8bbd                	andi	a5,a5,15
  a23152:	fef512e3          	bne	a0,a5,a23136 <hal_hash_lock+0x28>
  a23156:	441086b7          	lui	a3,0x44108
  a2315a:	6046a603          	lw	a2,1540(a3) # 44108604 <__data_load__+0x436e0d34>
  a2315e:	4485                	li	s1,1
  a23160:	008494b3          	sll	s1,s1,s0
  a23164:	fff4c793          	not	a5,s1
  a23168:	8ff1                	and	a5,a5,a2
  a2316a:	60f6a223          	sw	a5,1540(a3)
  a2316e:	0ff0000f          	fence
  a23172:	d724                	sw	s1,104(a4)
  a23174:	0ff0000f          	fence
  a23178:	0098 9680 091f      	l.li	s2,0x989680
  a2317e:	441009b7          	lui	s3,0x44100
  a23182:	0149a783          	lw	a5,20(s3) # 44100014 <__data_load__+0x436d8744>
  a23186:	8fe5                	and	a5,a5,s1
  a23188:	cba5                	beqz	a5,a231f8 <hal_hash_lock+0xea>
  a2318a:	0099aa23          	sw	s1,20(s3)
  a2318e:	0ff0000f          	fence
  a23192:	80000937          	lui	s2,0x80000
  a23196:	88aff0ef          	jal	ra,a22220 <crypto_get_cpu_type>
  a2319a:	e535                	bnez	a0,a23206 <hal_hash_lock+0xf8>
  a2319c:	50096913          	ori	s2,s2,1280
  a231a0:	0044 1050 049f      	l.li	s1,0x441050
  a231a6:	94a2                	add	s1,s1,s0
  a231a8:	04a2                	slli	s1,s1,0x8
  a231aa:	0124a023          	sw	s2,0(s1)
  a231ae:	0ff0000f          	fence
  a231b2:	00a0 67c4 091f      	l.li	s2,0xa067c4
  a231b8:	1c89195b          	muliadd	s2,s2,s0,28
  a231bc:	00092503          	lw	a0,0(s2) # 80000000 <__data_load__+0x7f5d8730>
  a231c0:	826ff0ef          	jal	ra,a221e6 <crypto_get_phys_addr>
  a231c4:	d0c8                	sw	a0,36(s1)
  a231c6:	0ff0000f          	fence
  a231ca:	0204a023          	sw	zero,32(s1)
  a231ce:	0ff0000f          	fence
  a231d2:	4789                	li	a5,2
  a231d4:	d4dc                	sw	a5,44(s1)
  a231d6:	0ff0000f          	fence
  a231da:	8522                	mv	a0,s0
  a231dc:	3f21                	jal	ra,a230f4 <hal_cipher_hash_done_try>
  a231de:	00092503          	lw	a0,0(s2)
  a231e2:	00092223          	sw	zero,4(s2)
  a231e6:	02000693          	li	a3,32
  a231ea:	4601                	li	a2,0
  a231ec:	02000593          	li	a1,32
  a231f0:	2b6020ef          	jal	ra,a254a6 <memset_s>
  a231f4:	4501                	li	a0,0
  a231f6:	b799                	j	a2313c <hal_hash_lock+0x2e>
  a231f8:	4505                	li	a0,1
  a231fa:	197d                	addi	s2,s2,-1
  a231fc:	9eaff0ef          	jal	ra,a223e6 <uapi_tcxo_delay_us>
  a23200:	f80911e3          	bnez	s2,a23182 <hal_hash_lock+0x74>
  a23204:	b779                	j	a23192 <hal_hash_lock+0x84>
  a23206:	0000 0a00 079f      	l.li	a5,0xa00
  a2320c:	00f96933          	or	s2,s2,a5
  a23210:	bf41                	j	a231a0 <hal_hash_lock+0x92>
  a23212:	557d                	li	a0,-1
  a23214:	8082                	ret

00a23216 <hal_hash_debug_chn>:
  a23216:	030577bb          	bgeui	a0,3,a23234 <hal_hash_debug_chn+0x1e>
  a2321a:	4410 a004 079f      	l.li	a5,0x4410a004
  a23220:	0ea7851b          	addshf	a0,a5,a0,sll,7
  a23224:	4741                	li	a4,16
  a23226:	4781                	li	a5,0
  a23228:	c11c                	sw	a5,0(a0)
  a2322a:	0ff0000f          	fence
  a2322e:	0785                	addi	a5,a5,1
  a23230:	fee79ce3          	bne	a5,a4,a23228 <hal_hash_debug_chn+0x12>
  a23234:	8082                	ret

00a23236 <hal_cipher_hash_wait_done>:
  a23236:	4446783b          	bgeui	a2,68,a23356 <hal_cipher_hash_wait_done+0x120>
  a2323a:	81a8                	push	{ra,s0-s8},-64
  a2323c:	00a0 67c4 079f      	l.li	a5,0xa067c4
  a23242:	1ca797db          	muliadd	a5,a5,a0,28
  a23246:	3bf8                	lbu	a4,23(a5)
  a23248:	89b2                	mv	s3,a2
  a2324a:	892e                	mv	s2,a1
  a2324c:	842a                	mv	s0,a0
  a2324e:	cf41                	beqz	a4,a232e6 <hal_cipher_hash_wait_done+0xb0>
  a23250:	2bf8                	lbu	a4,22(a5)
  a23252:	c62a                	sw	a0,12(sp)
  a23254:	4481                	li	s1,0
  a23256:	0117193b          	bnei	a4,1,a232ba <hal_cipher_hash_wait_done+0x84>
  a2325a:	4b98                	lw	a4,16(a5)
  a2325c:	cf39                	beqz	a4,a232ba <hal_cipher_hash_wait_done+0x84>
  a2325e:	4f94                	lw	a3,24(a5)
  a23260:	47c8                	lw	a0,12(a5)
  a23262:	0070                	addi	a2,sp,12
  a23264:	00a2 2e26 059f      	l.li	a1,0xa22e26
  a2326a:	9702                	jalr	a4
  a2326c:	0ca04663          	bgtz	a0,a23338 <hal_cipher_hash_wait_done+0x102>
  a23270:	441007b7          	lui	a5,0x44100
  a23274:	43bc                	lw	a5,64(a5)
  a23276:	8522                	mv	a0,s0
  a23278:	3f79                	jal	ra,a23216 <hal_hash_debug_chn>
  a2327a:	6520 00b2 051f      	l.li	a0,0x652000b2
  a23280:	44108737          	lui	a4,0x44108
  a23284:	60472683          	lw	a3,1540(a4) # 44108604 <__data_load__+0x436e0d34>
  a23288:	4785                	li	a5,1
  a2328a:	008797b3          	sll	a5,a5,s0
  a2328e:	fff7c793          	not	a5,a5
  a23292:	8ff5                	and	a5,a5,a3
  a23294:	60f72223          	sw	a5,1540(a4)
  a23298:	0ff0000f          	fence
  a2329c:	00090e63          	beqz	s2,a232b8 <hal_cipher_hash_wait_done+0x82>
  a232a0:	4410a7b7          	lui	a5,0x4410a
  a232a4:	041e                	slli	s0,s0,0x7
  a232a6:	00478713          	addi	a4,a5,4 # 4410a004 <__data_load__+0x436e2734>
  a232aa:	9722                	add	a4,a4,s0
  a232ac:	0029d993          	srli	s3,s3,0x2
  a232b0:	943e                	add	s0,s0,a5
  a232b2:	4781                	li	a5,0
  a232b4:	08f99863          	bne	s3,a5,a23344 <hal_cipher_hash_wait_done+0x10e>
  a232b8:	81a4                	popret	{ra,s0-s8},64
  a232ba:	3e800a93          	li	s5,1000
  a232be:	0000 1770 0a1f      	l.li	s4,0x1770
  a232c4:	4532                	lw	a0,12(sp)
  a232c6:	353d                	jal	ra,a230f4 <hal_cipher_hash_done_try>
  a232c8:	c119                	beqz	a0,a232ce <hal_cipher_hash_wait_done+0x98>
  a232ca:	4501                	li	a0,0
  a232cc:	bf55                	j	a23280 <hal_cipher_hash_wait_done+0x4a>
  a232ce:	4505                	li	a0,1
  a232d0:	009ae863          	bltu	s5,s1,a232e0 <hal_cipher_hash_wait_done+0xaa>
  a232d4:	912ff0ef          	jal	ra,a223e6 <uapi_tcxo_delay_us>
  a232d8:	0485                	addi	s1,s1,1
  a232da:	ff4495e3          	bne	s1,s4,a232c4 <hal_cipher_hash_wait_done+0x8e>
  a232de:	bf49                	j	a23270 <hal_cipher_hash_wait_done+0x3a>
  a232e0:	8b6ff0ef          	jal	ra,a22396 <uapi_tcxo_delay_ms>
  a232e4:	bfd5                	j	a232d8 <hal_cipher_hash_wait_done+0xa2>
  a232e6:	00ff ffff 049f      	l.li	s1,0xffffff
  a232ec:	441057b7          	lui	a5,0x44105
  a232f0:	94aa                	add	s1,s1,a0
  a232f2:	04a2                	slli	s1,s1,0x8
  a232f4:	13478b13          	addi	s6,a5,308 # 44105134 <__data_load__+0x436dd864>
  a232f8:	13078793          	addi	a5,a5,304
  a232fc:	9b26                	add	s6,s6,s1
  a232fe:	00f48a33          	add	s4,s1,a5
  a23302:	4a81                	li	s5,0
  a23304:	3e800c13          	li	s8,1000
  a23308:	0000 1770 0b9f      	l.li	s7,0x1770
  a2330e:	000b2703          	lw	a4,0(s6)
  a23312:	000a2783          	lw	a5,0(s4)
  a23316:	4505                	li	a0,1
  a23318:	04f70163          	beq	a4,a5,a2335a <hal_cipher_hash_wait_done+0x124>
  a2331c:	015c6863          	bltu	s8,s5,a2332c <hal_cipher_hash_wait_done+0xf6>
  a23320:	8c6ff0ef          	jal	ra,a223e6 <uapi_tcxo_delay_us>
  a23324:	0a85                	addi	s5,s5,1
  a23326:	ff7a94e3          	bne	s5,s7,a2330e <hal_cipher_hash_wait_done+0xd8>
  a2332a:	b799                	j	a23270 <hal_cipher_hash_wait_done+0x3a>
  a2332c:	86aff0ef          	jal	ra,a22396 <uapi_tcxo_delay_ms>
  a23330:	bfd5                	j	a23324 <hal_cipher_hash_wait_done+0xee>
  a23332:	864ff0ef          	jal	ra,a22396 <uapi_tcxo_delay_ms>
  a23336:	a0a9                	j	a23380 <hal_cipher_hash_wait_done+0x14a>
  a23338:	6520 00b2 079f      	l.li	a5,0x652000b2
  a2333e:	f8f516e3          	bne	a0,a5,a232ca <hal_cipher_hash_wait_done+0x94>
  a23342:	b73d                	j	a23270 <hal_cipher_hash_wait_done+0x3a>
  a23344:	c31c                	sw	a5,0(a4)
  a23346:	0ff0000f          	fence
  a2334a:	4014                	lw	a3,0(s0)
  a2334c:	0785                	addi	a5,a5,1
  a2334e:	0911                	addi	s2,s2,4
  a23350:	fed92e23          	sw	a3,-4(s2)
  a23354:	b785                	j	a232b4 <hal_cipher_hash_wait_done+0x7e>
  a23356:	557d                	li	a0,-1
  a23358:	8082                	ret
  a2335a:	88cff0ef          	jal	ra,a223e6 <uapi_tcxo_delay_us>
  a2335e:	4410 51c0 079f      	l.li	a5,0x441051c0
  a23364:	4a01                	li	s4,0
  a23366:	94be                	add	s1,s1,a5
  a23368:	3e800b13          	li	s6,1000
  a2336c:	0000 1770 0a9f      	l.li	s5,0x1770
  a23372:	409c                	lw	a5,0(s1)
  a23374:	dbb9                	beqz	a5,a232ca <hal_cipher_hash_wait_done+0x94>
  a23376:	4505                	li	a0,1
  a23378:	fb4b6de3          	bltu	s6,s4,a23332 <hal_cipher_hash_wait_done+0xfc>
  a2337c:	86aff0ef          	jal	ra,a223e6 <uapi_tcxo_delay_us>
  a23380:	0a05                	addi	s4,s4,1
  a23382:	ff5a18e3          	bne	s4,s5,a23372 <hal_cipher_hash_wait_done+0x13c>
  a23386:	b5ed                	j	a23270 <hal_cipher_hash_wait_done+0x3a>

00a23388 <hal_cipher_trng_init>:
  a23388:	00a0 6878 079f      	l.li	a5,0xa06878
  a2338e:	4705                	li	a4,1
  a23390:	a398                	sb	a4,0(a5)
  a23392:	4501                	li	a0,0
  a23394:	8082                	ret

00a23396 <hal_cipher_trng_deinit>:
  a23396:	00a0 6878 079f      	l.li	a5,0xa06878
  a2339c:	00078023          	sb	zero,0(a5)
  a233a0:	4501                	li	a0,0
  a233a2:	8082                	ret

00a233a4 <hal_tcxo_init>:
  a233a4:	8018                	push	{ra},-16
  a233a6:	28a9                	jal	ra,a23400 <hal_tcxo_v150_regs_init>
  a233a8:	e105                	bnez	a0,a233c8 <hal_tcxo_init+0x24>
  a233aa:	00a07737          	lui	a4,0xa07
  a233ae:	87c72683          	lw	a3,-1924(a4) # a0687c <g_tcxo_regs>
  a233b2:	429c                	lw	a5,0(a3)
  a233b4:	0047e793          	ori	a5,a5,4
  a233b8:	c29c                	sw	a5,0(a3)
  a233ba:	87c72703          	lw	a4,-1924(a4)
  a233be:	431c                	lw	a5,0(a4)
  a233c0:	0027e793          	ori	a5,a5,2
  a233c4:	c31c                	sw	a5,0(a4)
  a233c6:	8014                	popret	{ra},16
  a233c8:	8000 1180 051f      	l.li	a0,0x80001180
  a233ce:	bfe5                	j	a233c6 <hal_tcxo_init+0x22>

00a233d0 <hal_tcxo_get>:
  a233d0:	00a077b7          	lui	a5,0xa07
  a233d4:	87c7a683          	lw	a3,-1924(a5) # a0687c <g_tcxo_regs>
  a233d8:	4605                	li	a2,1
  a233da:	4298                	lw	a4,0(a3)
  a233dc:	00176713          	ori	a4,a4,1
  a233e0:	c298                	sw	a4,0(a3)
  a233e2:	56fd                	li	a3,-1
  a233e4:	873e                	mv	a4,a5
  a233e6:	87c72783          	lw	a5,-1924(a4)
  a233ea:	439c                	lw	a5,0(a5)
  a233ec:	8391                	srli	a5,a5,0x4
  a233ee:	8b85                	andi	a5,a5,1
  a233f0:	00c78763          	beq	a5,a2,a233fe <hal_tcxo_get+0x2e>
  a233f4:	16fd                	addi	a3,a3,-1
  a233f6:	fae5                	bnez	a3,a233e6 <hal_tcxo_get+0x16>
  a233f8:	4501                	li	a0,0
  a233fa:	4581                	li	a1,0
  a233fc:	8082                	ret
  a233fe:	a00d                	j	a23420 <hal_tcxo_reg_count_get>

00a23400 <hal_tcxo_v150_regs_init>:
  a23400:	8018                	push	{ra},-16
  a23402:	44b000ef          	jal	ra,a2404c <tcxo_porting_base_addr_get>
  a23406:	c909                	beqz	a0,a23418 <hal_tcxo_v150_regs_init+0x18>
  a23408:	445000ef          	jal	ra,a2404c <tcxo_porting_base_addr_get>
  a2340c:	00a0 687c 079f      	l.li	a5,0xa0687c
  a23412:	c388                	sw	a0,0(a5)
  a23414:	4501                	li	a0,0
  a23416:	8014                	popret	{ra},16
  a23418:	8000 1180 051f      	l.li	a0,0x80001180
  a2341e:	bfe5                	j	a23416 <hal_tcxo_v150_regs_init+0x16>

00a23420 <hal_tcxo_reg_count_get>:
  a23420:	00a0 687c 079f      	l.li	a5,0xa0687c
  a23426:	439c                	lw	a5,0(a5)
  a23428:	478c                	lw	a1,8(a5)
  a2342a:	43c8                	lw	a0,4(a5)
  a2342c:	8082                	ret

00a2342e <hal_uart_register_funcs>:
  a2342e:	030575bb          	bgeui	a0,3,a23444 <hal_uart_register_funcs+0x16>
  a23432:	c989                	beqz	a1,a23444 <hal_uart_register_funcs+0x16>
  a23434:	00a0 6880 079f      	l.li	a5,0xa06880
  a2343a:	04a7851b          	addshf	a0,a5,a0,sll,2
  a2343e:	c10c                	sw	a1,0(a0)
  a23440:	4501                	li	a0,0
  a23442:	8082                	ret
  a23444:	80000537          	lui	a0,0x80000
  a23448:	0505                	addi	a0,a0,1 # 80000001 <__data_load__+0x7f5d8731>
  a2344a:	8082                	ret

00a2344c <hal_uart_init>:
  a2344c:	8228                	push	{ra,s0},-48
  a2344e:	842a                	mv	s0,a0
  a23450:	ce2e                	sw	a1,28(sp)
  a23452:	cc32                	sw	a2,24(sp)
  a23454:	ca36                	sw	a3,20(sp)
  a23456:	c83a                	sw	a4,16(sp)
  a23458:	c63e                	sw	a5,12(sp)
  a2345a:	32f000ef          	jal	ra,a23f88 <uart_port_register_hal_funcs>
  a2345e:	00a0 6880 051f      	l.li	a0,0xa06880
  a23464:	0485051b          	addshf	a0,a0,s0,sll,2
  a23468:	4108                	lw	a0,0(a0)
  a2346a:	cd01                	beqz	a0,a23482 <hal_uart_init+0x36>
  a2346c:	46d2                	lw	a3,20(sp)
  a2346e:	ca91                	beqz	a3,a23482 <hal_uart_init+0x36>
  a23470:	00052303          	lw	t1,0(a0)
  a23474:	47b2                	lw	a5,12(sp)
  a23476:	4742                	lw	a4,16(sp)
  a23478:	4662                	lw	a2,24(sp)
  a2347a:	45f2                	lw	a1,28(sp)
  a2347c:	8522                	mv	a0,s0
  a2347e:	8220                	pop	{ra,s0},48
  a23480:	8302                	jr	t1
  a23482:	8000 1047 051f      	l.li	a0,0x80001047
  a23488:	8224                	popret	{ra,s0},48

00a2348a <hal_uart_deinit>:
  a2348a:	00a0 6880 079f      	l.li	a5,0xa06880
  a23490:	04a7879b          	addshf	a5,a5,a0,sll,2
  a23494:	439c                	lw	a5,0(a5)
  a23496:	0047a303          	lw	t1,4(a5)
  a2349a:	8302                	jr	t1

00a2349c <hal_uart_write>:
  a2349c:	00a0 6880 079f      	l.li	a5,0xa06880
  a234a2:	04a7879b          	addshf	a5,a5,a0,sll,2
  a234a6:	439c                	lw	a5,0(a5)
  a234a8:	00c7a303          	lw	t1,12(a5)
  a234ac:	8302                	jr	t1

00a234ae <hal_uart_read>:
  a234ae:	00a0 6880 079f      	l.li	a5,0xa06880
  a234b4:	04a7879b          	addshf	a5,a5,a0,sll,2
  a234b8:	439c                	lw	a5,0(a5)
  a234ba:	0107a303          	lw	t1,16(a5)
  a234be:	8302                	jr	t1

00a234c0 <hal_uart_ctrl>:
  a234c0:	00a0 6880 079f      	l.li	a5,0xa06880
  a234c6:	04a7879b          	addshf	a5,a5,a0,sll,2
  a234ca:	439c                	lw	a5,0(a5)
  a234cc:	c781                	beqz	a5,a234d4 <hal_uart_ctrl+0x14>
  a234ce:	0087a303          	lw	t1,8(a5)
  a234d2:	8302                	jr	t1
  a234d4:	8000 1047 051f      	l.li	a0,0x80001047
  a234da:	8082                	ret

00a234dc <hal_uart_v151_ctrl_get_rxfifo_passnum>:
  a234dc:	c609                	beqz	a2,a234e6 <hal_uart_v151_ctrl_get_rxfifo_passnum+0xa>
  a234de:	57fd                	li	a5,-1
  a234e0:	c21c                	sw	a5,0(a2)
  a234e2:	4501                	li	a0,0
  a234e4:	8082                	ret
  a234e6:	80000537          	lui	a0,0x80000
  a234ea:	0505                	addi	a0,a0,1 # 80000001 <__data_load__+0x7f5d8731>
  a234ec:	8082                	ret

00a234ee <hal_uart_v151_get_uart_rxfifo_threshold>:
  a234ee:	00a0 68a8 079f      	l.li	a5,0xa068a8
  a234f4:	953e                	add	a0,a0,a5
  a234f6:	2114                	lbu	a3,0(a0)
  a234f8:	03e00713          	li	a4,62
  a234fc:	0306f3bb          	bgeui	a3,3,a2350a <hal_uart_v151_get_uart_rxfifo_threshold+0x1c>
  a23500:	00a2 6e2c 079f      	l.li	a5,0xa26e2c
  a23506:	97b6                	add	a5,a5,a3
  a23508:	2398                	lbu	a4,0(a5)
  a2350a:	c218                	sw	a4,0(a2)
  a2350c:	4501                	li	a0,0
  a2350e:	8082                	ret

00a23510 <hal_uart_v151_deinit>:
  a23510:	00a0 688c 079f      	l.li	a5,0xa0688c
  a23516:	04a7851b          	addshf	a0,a5,a0,sll,2
  a2351a:	00052023          	sw	zero,0(a0)
  a2351e:	4501                	li	a0,0
  a23520:	8082                	ret

00a23522 <hal_uart_set_diven>:
  a23522:	00a0 689c 079f      	l.li	a5,0xa0689c
  a23528:	04a7851b          	addshf	a0,a5,a0,sll,2
  a2352c:	4118                	lw	a4,0(a0)
  a2352e:	8985                	andi	a1,a1,1
  a23530:	471c                	lw	a5,8(a4)
  a23532:	9bf9                	andi	a5,a5,-2
  a23534:	8fcd                	or	a5,a5,a1
  a23536:	c71c                	sw	a5,8(a4)
  a23538:	8082                	ret

00a2353a <hal_uart_is_tx_fifo_full>:
  a2353a:	00a0 689c 079f      	l.li	a5,0xa0689c
  a23540:	04a7851b          	addshf	a0,a5,a0,sll,2
  a23544:	411c                	lw	a5,0(a0)
  a23546:	4501                	li	a0,0
  a23548:	43fc                	lw	a5,68(a5)
  a2354a:	8b85                	andi	a5,a5,1
  a2354c:	a21c                	sb	a5,0(a2)
  a2354e:	8082                	ret

00a23550 <hal_uart_is_tx_fifo_empty>:
  a23550:	00a0 689c 079f      	l.li	a5,0xa0689c
  a23556:	04a7851b          	addshf	a0,a5,a0,sll,2
  a2355a:	411c                	lw	a5,0(a0)
  a2355c:	4501                	li	a0,0
  a2355e:	43fc                	lw	a5,68(a5)
  a23560:	8385                	srli	a5,a5,0x1
  a23562:	8b85                	andi	a5,a5,1
  a23564:	a21c                	sb	a5,0(a2)
  a23566:	8082                	ret

00a23568 <hal_uart_is_busy>:
  a23568:	00a0 689c 079f      	l.li	a5,0xa0689c
  a2356e:	04a7851b          	addshf	a0,a5,a0,sll,2
  a23572:	411c                	lw	a5,0(a0)
  a23574:	4501                	li	a0,0
  a23576:	43fc                	lw	a5,68(a5)
  a23578:	9f81                	uxtb	a5
  a2357a:	8385                	srli	a5,a5,0x1
  a2357c:	0017c793          	xori	a5,a5,1
  a23580:	8b85                	andi	a5,a5,1
  a23582:	a21c                	sb	a5,0(a2)
  a23584:	8082                	ret

00a23586 <hal_uart_is_rx_fifo_empty>:
  a23586:	00a0 689c 079f      	l.li	a5,0xa0689c
  a2358c:	04a7851b          	addshf	a0,a5,a0,sll,2
  a23590:	411c                	lw	a5,0(a0)
  a23592:	4501                	li	a0,0
  a23594:	43fc                	lw	a5,68(a5)
  a23596:	838d                	srli	a5,a5,0x3
  a23598:	8b85                	andi	a5,a5,1
  a2359a:	a21c                	sb	a5,0(a2)
  a2359c:	8082                	ret

00a2359e <hal_uart_v151_write>:
  a2359e:	00a0 689c 079f      	l.li	a5,0xa0689c
  a235a4:	04a7851b          	addshf	a0,a5,a0,sll,2
  a235a8:	e219                	bnez	a2,a235ae <hal_uart_v151_write+0x10>
  a235aa:	4501                	li	a0,0
  a235ac:	8082                	ret
  a235ae:	4118                	lw	a4,0(a0)
  a235b0:	437c                	lw	a5,68(a4)
  a235b2:	8b85                	andi	a5,a5,1
  a235b4:	fbf5                	bnez	a5,a235a8 <hal_uart_v151_write+0xa>
  a235b6:	0585                	addi	a1,a1,1
  a235b8:	fff5c783          	lbu	a5,-1(a1)
  a235bc:	167d                	addi	a2,a2,-1
  a235be:	9e21                	uxth	a2
  a235c0:	c35c                	sw	a5,4(a4)
  a235c2:	b7dd                	j	a235a8 <hal_uart_v151_write+0xa>

00a235c4 <hal_uart_v151_read>:
  a235c4:	00a0 689c 071f      	l.li	a4,0xa0689c
  a235ca:	4781                	li	a5,0
  a235cc:	04a7051b          	addshf	a0,a4,a0,sll,2
  a235d0:	00c7c463          	blt	a5,a2,a235d8 <hal_uart_v151_read+0x14>
  a235d4:	853e                	mv	a0,a5
  a235d6:	8082                	ret
  a235d8:	4114                	lw	a3,0(a0)
  a235da:	42f8                	lw	a4,68(a3)
  a235dc:	8b21                	andi	a4,a4,8
  a235de:	fb7d                	bnez	a4,a235d4 <hal_uart_v151_read+0x10>
  a235e0:	42d4                	lw	a3,4(a3)
  a235e2:	00f58733          	add	a4,a1,a5
  a235e6:	0785                	addi	a5,a5,1
  a235e8:	a314                	sb	a3,0(a4)
  a235ea:	b7dd                	j	a235d0 <hal_uart_v151_read+0xc>

00a235ec <hal_uart_v151_ctrl>:
  a235ec:	00a2 6e30 079f      	l.li	a5,0xa26e30
  a235f2:	04b7879b          	addshf	a5,a5,a1,sll,2
  a235f6:	0007a303          	lw	t1,0(a5)
  a235fa:	00030363          	beqz	t1,a23600 <hal_uart_v151_ctrl+0x14>
  a235fe:	8302                	jr	t1
  a23600:	8000 1047 051f      	l.li	a0,0x80001047
  a23606:	8082                	ret

00a23608 <hal_uart_init_fifo>:
  a23608:	00a0 689c 079f      	l.li	a5,0xa0689c
  a2360e:	04a7879b          	addshf	a5,a5,a0,sll,2
  a23612:	4398                	lw	a4,0(a5)
  a23614:	0035f693          	andi	a3,a1,3
  a23618:	535c                	lw	a5,36(a4)
  a2361a:	9bcd                	andi	a5,a5,-13
  a2361c:	04d7a79b          	orshf	a5,a5,a3,sll,2
  a23620:	9bf1                	andi	a5,a5,-4
  a23622:	00367693          	andi	a3,a2,3
  a23626:	8fd5                	or	a5,a5,a3
  a23628:	0107e793          	ori	a5,a5,16
  a2362c:	d35c                	sw	a5,36(a4)
  a2362e:	00a0 68a8 079f      	l.li	a5,0xa068a8
  a23634:	97aa                	add	a5,a5,a0
  a23636:	a38c                	sb	a1,0(a5)
  a23638:	00a0 68ac 079f      	l.li	a5,0xa068ac
  a2363e:	953e                	add	a0,a0,a5
  a23640:	a110                	sb	a2,0(a0)
  a23642:	8082                	ret

00a23644 <hal_uart_v151_ctrl_set_txfifo_int_level>:
  a23644:	0406633b          	bltui	a2,4,a23650 <hal_uart_v151_ctrl_set_txfifo_int_level+0xc>
  a23648:	80000537          	lui	a0,0x80000
  a2364c:	0505                	addi	a0,a0,1 # 80000001 <__data_load__+0x7f5d8731>
  a2364e:	8082                	ret
  a23650:	8018                	push	{ra},-16
  a23652:	00a0 68a8 079f      	l.li	a5,0xa068a8
  a23658:	97aa                	add	a5,a5,a0
  a2365a:	238c                	lbu	a1,0(a5)
  a2365c:	9e01                	uxtb	a2
  a2365e:	376d                	jal	ra,a23608 <hal_uart_init_fifo>
  a23660:	4501                	li	a0,0
  a23662:	8014                	popret	{ra},16

00a23664 <hal_uart_v151_ctrl_set_rxfifo_int_level>:
  a23664:	0406633b          	bltui	a2,4,a23670 <hal_uart_v151_ctrl_set_rxfifo_int_level+0xc>
  a23668:	80000537          	lui	a0,0x80000
  a2366c:	0505                	addi	a0,a0,1 # 80000001 <__data_load__+0x7f5d8731>
  a2366e:	8082                	ret
  a23670:	8018                	push	{ra},-16
  a23672:	00a0 68ac 079f      	l.li	a5,0xa068ac
  a23678:	97aa                	add	a5,a5,a0
  a2367a:	85b2                	mv	a1,a2
  a2367c:	2390                	lbu	a2,0(a5)
  a2367e:	9d81                	uxtb	a1
  a23680:	3761                	jal	ra,a23608 <hal_uart_init_fifo>
  a23682:	4501                	li	a0,0
  a23684:	8014                	popret	{ra},16

00a23686 <hal_uart_set_baud_rate>:
  a23686:	c1a1                	beqz	a1,a236c6 <hal_uart_set_baud_rate+0x40>
  a23688:	8048                	push	{ra,s0-s2},-16
  a2368a:	0592                	slli	a1,a1,0x4
  a2368c:	02b67433          	remu	s0,a2,a1
  a23690:	892a                	mv	s2,a0
  a23692:	02b654b3          	divu	s1,a2,a1
  a23696:	041a                	slli	s0,s0,0x6
  a23698:	02b45433          	divu	s0,s0,a1
  a2369c:	4585                	li	a1,1
  a2369e:	3551                	jal	ra,a23522 <hal_uart_set_diven>
  a236a0:	00a0 689c 079f      	l.li	a5,0xa0689c
  a236a6:	0527879b          	addshf	a5,a5,s2,sll,2
  a236aa:	439c                	lw	a5,0(a5)
  a236ac:	0ff4f713          	andi	a4,s1,255
  a236b0:	9ca1                	uxth	s1
  a236b2:	cb98                	sw	a4,16(a5)
  a236b4:	80a1                	srli	s1,s1,0x8
  a236b6:	c7c4                	sw	s1,12(a5)
  a236b8:	4581                	li	a1,0
  a236ba:	854a                	mv	a0,s2
  a236bc:	03f47413          	andi	s0,s0,63
  a236c0:	cbc0                	sw	s0,20(a5)
  a236c2:	8040                	pop	{ra,s0-s2},16
  a236c4:	bdb9                	j	a23522 <hal_uart_set_diven>
  a236c6:	8082                	ret

00a236c8 <hal_uart_set_data_bits>:
  a236c8:	00a0 689c 079f      	l.li	a5,0xa0689c
  a236ce:	04a7851b          	addshf	a0,a5,a0,sll,2
  a236d2:	4118                	lw	a4,0(a0)
  a236d4:	898d                	andi	a1,a1,3
  a236d6:	471c                	lw	a5,8(a4)
  a236d8:	9bcd                	andi	a5,a5,-13
  a236da:	04b7a79b          	orshf	a5,a5,a1,sll,2
  a236de:	c71c                	sw	a5,8(a4)
  a236e0:	8082                	ret

00a236e2 <hal_uart_set_stop_bits>:
  a236e2:	00a0 689c 079f      	l.li	a5,0xa0689c
  a236e8:	04a7851b          	addshf	a0,a5,a0,sll,2
  a236ec:	4118                	lw	a4,0(a0)
  a236ee:	8985                	andi	a1,a1,1
  a236f0:	471c                	lw	a5,8(a4)
  a236f2:	f7f7f793          	andi	a5,a5,-129
  a236f6:	0eb7a79b          	orshf	a5,a5,a1,sll,7
  a236fa:	c71c                	sw	a5,8(a4)
  a236fc:	8082                	ret

00a236fe <hal_uart_auto_flow_ctl_en>:
  a236fe:	00a0 689c 079f      	l.li	a5,0xa0689c
  a23704:	04a7851b          	addshf	a0,a5,a0,sll,2
  a23708:	4118                	lw	a4,0(a0)
  a2370a:	8985                	andi	a1,a1,1
  a2370c:	575c                	lw	a5,44(a4)
  a2370e:	9be9                	andi	a5,a5,-6
  a23710:	8fcd                	or	a5,a5,a1
  a23712:	04b7a59b          	orshf	a1,a5,a1,sll,2
  a23716:	d74c                	sw	a1,44(a4)
  a23718:	8082                	ret

00a2371a <hal_uart_enable_interrupt>:
  a2371a:	00a0 689c 079f      	l.li	a5,0xa0689c
  a23720:	04a7851b          	addshf	a0,a5,a0,sll,2
  a23724:	4114                	lw	a3,0(a0)
  a23726:	4e9c                	lw	a5,24(a3)
  a23728:	0e05f73b          	bgeui	a1,14,a23744 <hal_uart_enable_interrupt+0x2a>
  a2372c:	00a27737          	lui	a4,0xa27
  a23730:	df470713          	addi	a4,a4,-524 # a26df4 <g_crypto_ecc_params+0x54>
  a23734:	04b7059b          	addshf	a1,a4,a1,sll,2
  a23738:	4198                	lw	a4,0(a1)
  a2373a:	8702                	jr	a4
  a2373c:	8a05                	andi	a2,a2,1
  a2373e:	9bdd                	andi	a5,a5,-9
  a23740:	06c7a79b          	orshf	a5,a5,a2,sll,3
  a23744:	ce9c                	sw	a5,24(a3)
  a23746:	8082                	ret
  a23748:	8a05                	andi	a2,a2,1
  a2374a:	9bed                	andi	a5,a5,-5
  a2374c:	04c7a79b          	orshf	a5,a5,a2,sll,2
  a23750:	bfd5                	j	a23744 <hal_uart_enable_interrupt+0x2a>
  a23752:	8a05                	andi	a2,a2,1
  a23754:	9bf9                	andi	a5,a5,-2
  a23756:	8fd1                	or	a5,a5,a2
  a23758:	b7f5                	j	a23744 <hal_uart_enable_interrupt+0x2a>
  a2375a:	8a05                	andi	a2,a2,1
  a2375c:	9bf5                	andi	a5,a5,-3
  a2375e:	02c7a79b          	orshf	a5,a5,a2,sll,1
  a23762:	b7cd                	j	a23744 <hal_uart_enable_interrupt+0x2a>

00a23764 <hal_uart_en_para_err_int>:
  a23764:	8018                	push	{ra},-16
  a23766:	00c03633          	snez	a2,a2
  a2376a:	45b5                	li	a1,13
  a2376c:	377d                	jal	ra,a2371a <hal_uart_enable_interrupt>
  a2376e:	4501                	li	a0,0
  a23770:	8014                	popret	{ra},16

00a23772 <hal_uart_en_idle_int>:
  a23772:	8018                	push	{ra},-16
  a23774:	00c03633          	snez	a2,a2
  a23778:	45b1                	li	a1,12
  a2377a:	3745                	jal	ra,a2371a <hal_uart_enable_interrupt>
  a2377c:	4501                	li	a0,0
  a2377e:	8014                	popret	{ra},16

00a23780 <hal_uart_en_rx_int>:
  a23780:	8018                	push	{ra},-16
  a23782:	00c03633          	snez	a2,a2
  a23786:	4591                	li	a1,4
  a23788:	3f49                	jal	ra,a2371a <hal_uart_enable_interrupt>
  a2378a:	4501                	li	a0,0
  a2378c:	8014                	popret	{ra},16

00a2378e <hal_uart_en_tx_int>:
  a2378e:	8018                	push	{ra},-16
  a23790:	00c03633          	snez	a2,a2
  a23794:	4589                	li	a1,2
  a23796:	3751                	jal	ra,a2371a <hal_uart_enable_interrupt>
  a23798:	4501                	li	a0,0
  a2379a:	8014                	popret	{ra},16

00a2379c <hal_uart_check_en>:
  a2379c:	00a0 689c 079f      	l.li	a5,0xa0689c
  a237a2:	04a7851b          	addshf	a0,a5,a0,sll,2
  a237a6:	4118                	lw	a4,0(a0)
  a237a8:	8985                	andi	a1,a1,1
  a237aa:	471c                	lw	a5,8(a4)
  a237ac:	fdf7f793          	andi	a5,a5,-33
  a237b0:	0ab7a79b          	orshf	a5,a5,a1,sll,5
  a237b4:	c71c                	sw	a5,8(a4)
  a237b6:	8082                	ret

00a237b8 <hal_uart_parity_en>:
  a237b8:	00a0 689c 079f      	l.li	a5,0xa0689c
  a237be:	04a7851b          	addshf	a0,a5,a0,sll,2
  a237c2:	4118                	lw	a4,0(a0)
  a237c4:	8985                	andi	a1,a1,1
  a237c6:	471c                	lw	a5,8(a4)
  a237c8:	9bbd                	andi	a5,a5,-17
  a237ca:	08b7a79b          	orshf	a5,a5,a1,sll,4
  a237ce:	c71c                	sw	a5,8(a4)
  a237d0:	8082                	ret

00a237d2 <hal_uart_set_parity>:
  a237d2:	8028                	push	{ra,s0},-16
  a237d4:	842a                	mv	s0,a0
  a237d6:	0105873b          	beqi	a1,1,a237f2 <hal_uart_set_parity+0x20>
  a237da:	c581                	beqz	a1,a237e2 <hal_uart_set_parity+0x10>
  a237dc:	020582bb          	beqi	a1,2,a237e6 <hal_uart_set_parity+0x14>
  a237e0:	8024                	popret	{ra,s0},16
  a237e2:	8020                	pop	{ra,s0},16
  a237e4:	bf65                	j	a2379c <hal_uart_check_en>
  a237e6:	4585                	li	a1,1
  a237e8:	3f55                	jal	ra,a2379c <hal_uart_check_en>
  a237ea:	4585                	li	a1,1
  a237ec:	8522                	mv	a0,s0
  a237ee:	8020                	pop	{ra,s0},16
  a237f0:	b7e1                	j	a237b8 <hal_uart_parity_en>
  a237f2:	376d                	jal	ra,a2379c <hal_uart_check_en>
  a237f4:	4581                	li	a1,0
  a237f6:	bfdd                	j	a237ec <hal_uart_set_parity+0x1a>

00a237f8 <hal_uart_v151_ctrl_set_attr>:
  a237f8:	8138                	push	{ra,s0-s1},-32
  a237fa:	224c                	lbu	a1,4(a2)
  a237fc:	84b2                	mv	s1,a2
  a237fe:	842a                	mv	s0,a0
  a23800:	35e1                	jal	ra,a236c8 <hal_uart_set_data_bits>
  a23802:	30cc                	lbu	a1,5(s1)
  a23804:	8522                	mv	a0,s0
  a23806:	3df1                	jal	ra,a236e2 <hal_uart_set_stop_bits>
  a23808:	20ec                	lbu	a1,6(s1)
  a2380a:	8522                	mv	a0,s0
  a2380c:	37d9                	jal	ra,a237d2 <hal_uart_set_parity>
  a2380e:	408c                	lw	a1,0(s1)
  a23810:	8522                	mv	a0,s0
  a23812:	c62e                	sw	a1,12(sp)
  a23814:	790000ef          	jal	ra,a23fa4 <uart_port_get_clock_value>
  a23818:	45b2                	lw	a1,12(sp)
  a2381a:	862a                	mv	a2,a0
  a2381c:	8522                	mv	a0,s0
  a2381e:	e69ff0ef          	jal	ra,a23686 <hal_uart_set_baud_rate>
  a23822:	4501                	li	a0,0
  a23824:	8134                	popret	{ra,s0-s1},32

00a23826 <hal_uart_tx_pause_en>:
  a23826:	00a0 689c 079f      	l.li	a5,0xa0689c
  a2382c:	04a7851b          	addshf	a0,a5,a0,sll,2
  a23830:	4118                	lw	a4,0(a0)
  a23832:	8985                	andi	a1,a1,1
  a23834:	4b3c                	lw	a5,80(a4)
  a23836:	9bf9                	andi	a5,a5,-2
  a23838:	8fcd                	or	a5,a5,a1
  a2383a:	cb3c                	sw	a5,80(a4)
  a2383c:	8082                	ret

00a2383e <hal_uart_v151_init>:
  a2383e:	8168                	push	{ra,s0-s4},-48
  a23840:	84b6                	mv	s1,a3
  a23842:	00251913          	slli	s2,a0,0x2
  a23846:	00a2 6e84 069f      	l.li	a3,0xa26e84
  a2384c:	8a2e                	mv	s4,a1
  a2384e:	012685b3          	add	a1,a3,s2
  a23852:	418c                	lw	a1,0(a1)
  a23854:	4294                	lw	a3,0(a3)
  a23856:	89ba                	mv	s3,a4
  a23858:	00a0 689c 071f      	l.li	a4,0xa0689c
  a2385e:	01270633          	add	a2,a4,s2
  a23862:	c20c                	sw	a1,0(a2)
  a23864:	c314                	sw	a3,0(a4)
  a23866:	20cc                	lbu	a1,4(s1)
  a23868:	00a0 6898 071f      	l.li	a4,0xa06898
  a2386e:	972a                	add	a4,a4,a0
  a23870:	c63e                	sw	a5,12(sp)
  a23872:	00070023          	sb	zero,0(a4)
  a23876:	842a                	mv	s0,a0
  a23878:	e51ff0ef          	jal	ra,a236c8 <hal_uart_set_data_bits>
  a2387c:	30cc                	lbu	a1,5(s1)
  a2387e:	8522                	mv	a0,s0
  a23880:	e63ff0ef          	jal	ra,a236e2 <hal_uart_set_stop_bits>
  a23884:	20ec                	lbu	a1,6(s1)
  a23886:	8522                	mv	a0,s0
  a23888:	37a9                	jal	ra,a237d2 <hal_uart_set_parity>
  a2388a:	4581                	li	a1,0
  a2388c:	8522                	mv	a0,s0
  a2388e:	3f61                	jal	ra,a23826 <hal_uart_tx_pause_en>
  a23890:	408c                	lw	a1,0(s1)
  a23892:	8522                	mv	a0,s0
  a23894:	c42e                	sw	a1,8(sp)
  a23896:	70e000ef          	jal	ra,a23fa4 <uart_port_get_clock_value>
  a2389a:	45a2                	lw	a1,8(sp)
  a2389c:	862a                	mv	a2,a0
  a2389e:	8522                	mv	a0,s0
  a238a0:	de7ff0ef          	jal	ra,a23686 <hal_uart_set_baud_rate>
  a238a4:	4529                	li	a0,10
  a238a6:	b41fe0ef          	jal	ra,a223e6 <uapi_tcxo_delay_us>
  a238aa:	47b2                	lw	a5,12(sp)
  a238ac:	c78d                	beqz	a5,a238d6 <hal_uart_v151_init+0x98>
  a238ae:	3390                	lbu	a2,1(a5)
  a238b0:	33ac                	lbu	a1,3(a5)
  a238b2:	8522                	mv	a0,s0
  a238b4:	d55ff0ef          	jal	ra,a23608 <hal_uart_init_fifo>
  a238b8:	00a0 688c 079f      	l.li	a5,0xa0688c
  a238be:	97ca                	add	a5,a5,s2
  a238c0:	0147a023          	sw	s4,0(a5)
  a238c4:	4585                	li	a1,1
  a238c6:	030981bb          	beqi	s3,3,a238cc <hal_uart_v151_init+0x8e>
  a238ca:	4581                	li	a1,0
  a238cc:	8522                	mv	a0,s0
  a238ce:	e31ff0ef          	jal	ra,a236fe <hal_uart_auto_flow_ctl_en>
  a238d2:	4501                	li	a0,0
  a238d4:	8164                	popret	{ra,s0-s4},48
  a238d6:	4605                	li	a2,1
  a238d8:	4585                	li	a1,1
  a238da:	bfe1                	j	a238b2 <hal_uart_v151_init+0x74>

00a238dc <hal_uart_v151_funcs_get>:
  a238dc:	00a0 2430 051f      	l.li	a0,0xa02430
  a238e2:	8082                	ret

00a238e4 <hal_watchdog_register_funcs>:
  a238e4:	c519                	beqz	a0,a238f2 <hal_watchdog_register_funcs+0xe>
  a238e6:	00a0 68b0 079f      	l.li	a5,0xa068b0
  a238ec:	c388                	sw	a0,0(a5)
  a238ee:	4501                	li	a0,0
  a238f0:	8082                	ret
  a238f2:	80000537          	lui	a0,0x80000
  a238f6:	0505                	addi	a0,a0,1 # 80000001 <__data_load__+0x7f5d8731>
  a238f8:	8082                	ret

00a238fa <hal_watchdog_unregister_funcs>:
  a238fa:	00a0 68b0 079f      	l.li	a5,0xa068b0
  a23900:	0007a023          	sw	zero,0(a5)
  a23904:	4501                	li	a0,0
  a23906:	8082                	ret

00a23908 <hal_watchdog_get_funcs>:
  a23908:	00a0 68b0 079f      	l.li	a5,0xa068b0
  a2390e:	4388                	lw	a0,0(a5)
  a23910:	8082                	ret

00a23912 <hal_watchdog_regs_init>:
  a23912:	00a027b7          	lui	a5,0xa02
  a23916:	4787a783          	lw	a5,1144(a5) # a02478 <g_watchdog_base_addr>
  a2391a:	c799                	beqz	a5,a23928 <hal_watchdog_regs_init+0x16>
  a2391c:	00a0 68b4 071f      	l.li	a4,0xa068b4
  a23922:	c31c                	sw	a5,0(a4)
  a23924:	4501                	li	a0,0
  a23926:	8082                	ret
  a23928:	8000 1200 051f      	l.li	a0,0x80001200
  a2392e:	8082                	ret

00a23930 <hal_watchdog_regs_deinit>:
  a23930:	00a0 68b4 079f      	l.li	a5,0xa068b4
  a23936:	0007a023          	sw	zero,0(a5)
  a2393a:	8082                	ret

00a2393c <hal_watchdog_v151_kick>:
  a2393c:	00a077b7          	lui	a5,0xa07
  a23940:	8b47a783          	lw	a5,-1868(a5) # a068b4 <g_watchdog_regs>
  a23944:	5a5a 5a5a 071f      	l.li	a4,0x5a5a5a5a
  a2394a:	c798                	sw	a4,8(a5)
  a2394c:	8082                	ret

00a2394e <hal_watchdog_v151_get_attr>:
  a2394e:	00a0 68bc 079f      	l.li	a5,0xa068bc
  a23954:	4388                	lw	a0,0(a5)
  a23956:	8082                	ret

00a23958 <hal_register_watchdog_v151_callback>:
  a23958:	00a0 68b8 079f      	l.li	a5,0xa068b8
  a2395e:	c388                	sw	a0,0(a5)
  a23960:	8082                	ret

00a23962 <hal_watchdog_v151_deinit>:
  a23962:	b7f9                	j	a23930 <hal_watchdog_regs_deinit>

00a23964 <hal_watchdog_v151_init>:
  a23964:	b77d                	j	a23912 <hal_watchdog_regs_init>

00a23966 <hal_watchdog_v151_get_left_time>:
  a23966:	8038                	push	{ra,s0-s1},-16
  a23968:	00a077b7          	lui	a5,0xa07
  a2396c:	8b47a683          	lw	a3,-1868(a5) # a068b4 <g_watchdog_regs>
  a23970:	7d100493          	li	s1,2001
  a23974:	843e                	mv	s0,a5
  a23976:	5698                	lw	a4,40(a3)
  a23978:	00176713          	ori	a4,a4,1
  a2397c:	d698                	sw	a4,40(a3)
  a2397e:	8b442703          	lw	a4,-1868(s0)
  a23982:	571c                	lw	a5,40(a4)
  a23984:	8385                	srli	a5,a5,0x1
  a23986:	8b85                	andi	a5,a5,1
  a23988:	cf99                	beqz	a5,a239a6 <hal_watchdog_v151_get_left_time+0x40>
  a2398a:	4b40                	lw	s0,20(a4)
  a2398c:	704000ef          	jal	ra,a24090 <watchdog_port_get_clock>
  a23990:	3e800793          	li	a5,1000
  a23994:	862a                	mv	a2,a0
  a23996:	02f435b3          	mulhu	a1,s0,a5
  a2399a:	4681                	li	a3,0
  a2399c:	02f40533          	mul	a0,s0,a5
  a239a0:	c9dfc0ef          	jal	ra,a2063c <__udivdi3>
  a239a4:	8034                	popret	{ra,s0-s1},16
  a239a6:	14fd                	addi	s1,s1,-1
  a239a8:	c489                	beqz	s1,a239b2 <hal_watchdog_v151_get_left_time+0x4c>
  a239aa:	4505                	li	a0,1
  a239ac:	a3bfe0ef          	jal	ra,a223e6 <uapi_tcxo_delay_us>
  a239b0:	b7f9                	j	a2397e <hal_watchdog_v151_get_left_time+0x18>
  a239b2:	4501                	li	a0,0
  a239b4:	bfc5                	j	a239a4 <hal_watchdog_v151_get_left_time+0x3e>

00a239b6 <hal_watchdog_v151_clear_interrupt>:
  a239b6:	00a077b7          	lui	a5,0xa07
  a239ba:	8b47a703          	lw	a4,-1868(a5) # a068b4 <g_watchdog_regs>
  a239be:	475c                	lw	a5,12(a4)
  a239c0:	0017e793          	ori	a5,a5,1
  a239c4:	c75c                	sw	a5,12(a4)
  a239c6:	8082                	ret

00a239c8 <hal_watchdog_v151_disable>:
  a239c8:	8018                	push	{ra},-16
  a239ca:	37f5                	jal	ra,a239b6 <hal_watchdog_v151_clear_interrupt>
  a239cc:	00a077b7          	lui	a5,0xa07
  a239d0:	8b47a703          	lw	a4,-1868(a5) # a068b4 <g_watchdog_regs>
  a239d4:	4b1c                	lw	a5,16(a4)
  a239d6:	9bf9                	andi	a5,a5,-2
  a239d8:	cb1c                	sw	a5,16(a4)
  a239da:	8014                	popret	{ra},16

00a239dc <hal_watchdog_v151_set_attr>:
  a239dc:	8048                	push	{ra,s0-s2},-16
  a239de:	84aa                	mv	s1,a0
  a239e0:	6b0000ef          	jal	ra,a24090 <watchdog_port_get_clock>
  a239e4:	e489                	bnez	s1,a239ee <hal_watchdog_v151_set_attr+0x12>
  a239e6:	80000537          	lui	a0,0x80000
  a239ea:	0505                	addi	a0,a0,1 # 80000001 <__data_load__+0x7f5d8731>
  a239ec:	8044                	popret	{ra,s0-s2},16
  a239ee:	02950433          	mul	s0,a0,s1
  a239f2:	02945933          	divu	s2,s0,s1
  a239f6:	69a000ef          	jal	ra,a24090 <watchdog_port_get_clock>
  a239fa:	fea916e3          	bne	s2,a0,a239e6 <hal_watchdog_v151_set_attr+0xa>
  a239fe:	fff46a3b          	bltui	s0,255,a239e6 <hal_watchdog_v151_set_attr+0xa>
  a23a02:	00a0 68bc 079f      	l.li	a5,0xa068bc
  a23a08:	00a07937          	lui	s2,0xa07
  a23a0c:	c384                	sw	s1,0(a5)
  a23a0e:	8b492783          	lw	a5,-1868(s2) # a068b4 <g_watchdog_regs>
  a23a12:	5a5a 5a5a 049f      	l.li	s1,0x5a5a5a5a
  a23a18:	f0047413          	andi	s0,s0,-256
  a23a1c:	c384                	sw	s1,0(a5)
  a23a1e:	376d                	jal	ra,a239c8 <hal_watchdog_v151_disable>
  a23a20:	8b492783          	lw	a5,-1868(s2)
  a23a24:	4b98                	lw	a4,16(a5)
  a23a26:	00476713          	ori	a4,a4,4
  a23a2a:	cb98                	sw	a4,16(a5)
  a23a2c:	4b98                	lw	a4,16(a5)
  a23a2e:	fbf77713          	andi	a4,a4,-65
  a23a32:	cb98                	sw	a4,16(a5)
  a23a34:	4b98                	lw	a4,16(a5)
  a23a36:	03876713          	ori	a4,a4,56
  a23a3a:	cb98                	sw	a4,16(a5)
  a23a3c:	43c8                	lw	a0,4(a5)
  a23a3e:	0ff57513          	andi	a0,a0,255
  a23a42:	8c49                	or	s0,s0,a0
  a23a44:	c3c0                	sw	s0,4(a5)
  a23a46:	c784                	sw	s1,8(a5)
  a23a48:	4501                	li	a0,0
  a23a4a:	b74d                	j	a239ec <hal_watchdog_v151_set_attr+0x10>

00a23a4c <hal_watchdog_v151_enable>:
  a23a4c:	8128                	push	{ra,s0},-32
  a23a4e:	c62a                	sw	a0,12(sp)
  a23a50:	3fa5                	jal	ra,a239c8 <hal_watchdog_v151_disable>
  a23a52:	4532                	lw	a0,12(sp)
  a23a54:	00a07437          	lui	s0,0xa07
  a23a58:	e10d                	bnez	a0,a23a7a <hal_watchdog_v151_enable+0x2e>
  a23a5a:	8b442703          	lw	a4,-1868(s0) # a068b4 <g_watchdog_regs>
  a23a5e:	4b1c                	lw	a5,16(a4)
  a23a60:	f7f7f793          	andi	a5,a5,-129
  a23a64:	cb1c                	sw	a5,16(a4)
  a23a66:	3f81                	jal	ra,a239b6 <hal_watchdog_v151_clear_interrupt>
  a23a68:	8b442703          	lw	a4,-1868(s0)
  a23a6c:	4b1c                	lw	a5,16(a4)
  a23a6e:	0017e793          	ori	a5,a5,1
  a23a72:	cb1c                	sw	a5,16(a4)
  a23a74:	8120                	pop	{ra,s0},32
  a23a76:	ec7ff06f          	j	a2393c <hal_watchdog_v151_kick>
  a23a7a:	01f51b3b          	bnei	a0,1,a23a66 <hal_watchdog_v151_enable+0x1a>
  a23a7e:	8b442703          	lw	a4,-1868(s0)
  a23a82:	4b1c                	lw	a5,16(a4)
  a23a84:	0807e793          	ori	a5,a5,128
  a23a88:	bff1                	j	a23a64 <hal_watchdog_v151_enable+0x18>

00a23a8a <hal_watchdog_v151_funcs_get>:
  a23a8a:	00a0 2448 051f      	l.li	a0,0xa02448
  a23a90:	8082                	ret

00a23a92 <hal_sfc_regs_init>:
  a23a92:	8058                	push	{ra,s0-s3},-32
  a23a94:	2525                	jal	ra,a240bc <sfc_port_get_sfc_global_conf_base_addr>
  a23a96:	00a0 68d0 099f      	l.li	s3,0xa068d0
  a23a9c:	00a9a023          	sw	a0,0(s3)
  a23aa0:	00a0 68c4 091f      	l.li	s2,0xa068c4
  a23aa6:	2d39                	jal	ra,a240c4 <sfc_port_get_sfc_bus_regs_base_addr>
  a23aa8:	00a92023          	sw	a0,0(s2)
  a23aac:	00a0 68c0 049f      	l.li	s1,0xa068c0
  a23ab2:	2d29                	jal	ra,a240cc <sfc_port_get_sfc_bus_dma_regs_base_addr>
  a23ab4:	c088                	sw	a0,0(s1)
  a23ab6:	00a0 68cc 041f      	l.li	s0,0xa068cc
  a23abc:	2d21                	jal	ra,a240d4 <sfc_port_get_sfc_cmd_regs_base_addr>
  a23abe:	c008                	sw	a0,0(s0)
  a23ac0:	2d31                	jal	ra,a240dc <sfc_port_get_sfc_cmd_databuf_base_addr>
  a23ac2:	00a0 68c8 079f      	l.li	a5,0xa068c8
  a23ac8:	c388                	sw	a0,0(a5)
  a23aca:	0009a783          	lw	a5,0(s3)
  a23ace:	cb99                	beqz	a5,a23ae4 <hal_sfc_regs_init+0x52>
  a23ad0:	00092783          	lw	a5,0(s2)
  a23ad4:	cb81                	beqz	a5,a23ae4 <hal_sfc_regs_init+0x52>
  a23ad6:	409c                	lw	a5,0(s1)
  a23ad8:	c791                	beqz	a5,a23ae4 <hal_sfc_regs_init+0x52>
  a23ada:	401c                	lw	a5,0(s0)
  a23adc:	c781                	beqz	a5,a23ae4 <hal_sfc_regs_init+0x52>
  a23ade:	c119                	beqz	a0,a23ae4 <hal_sfc_regs_init+0x52>
  a23ae0:	4501                	li	a0,0
  a23ae2:	8054                	popret	{ra,s0-s3},32
  a23ae4:	8000 1343 051f      	l.li	a0,0x80001343
  a23aea:	bfe5                	j	a23ae2 <hal_sfc_regs_init+0x50>

00a23aec <hal_sfc_regs_set_cmd_addr>:
  a23aec:	00a077b7          	lui	a5,0xa07
  a23af0:	8cc7a683          	lw	a3,-1844(a5) # a068cc <g_sfc_cmd_regs>
  a23af4:	3fff ffff 071f      	l.li	a4,0x3fffffff
  a23afa:	8d79                	and	a0,a0,a4
  a23afc:	46dc                	lw	a5,12(a3)
  a23afe:	c0000737          	lui	a4,0xc0000
  a23b02:	8ff9                	and	a5,a5,a4
  a23b04:	8fc9                	or	a5,a5,a0
  a23b06:	c6dc                	sw	a5,12(a3)
  a23b08:	8082                	ret

00a23b0a <hal_sfc_regs_wait_ready.constprop.3>:
  a23b0a:	8158                	push	{ra,s0-s3},-48
  a23b0c:	23cd                	jal	ra,a240ee <sfc_port_get_delay_times>
  a23b0e:	84aa                	mv	s1,a0
  a23b10:	2bd1                	jal	ra,a240e4 <sfc_port_get_delay_once_time>
  a23b12:	4792                	lw	a5,4(sp)
  a23b14:	ffff c7ff 071f      	l.li	a4,0xffffc7ff
  a23b1a:	892a                	mv	s2,a0
  a23b1c:	8077f793          	andi	a5,a5,-2041
  a23b20:	0287e793          	ori	a5,a5,40
  a23b24:	8ff9                	and	a5,a5,a4
  a23b26:	c23e                	sw	a5,4(sp)
  a23b28:	4785                	li	a5,1
  a23b2a:	c43e                	sw	a5,8(sp)
  a23b2c:	c602                	sw	zero,12(sp)
  a23b2e:	4401                	li	s0,0
  a23b30:	00a079b7          	lui	s3,0xa07
  a23b34:	0048                	addi	a0,sp,4
  a23b36:	26ad                	jal	ra,a23ea0 <hal_sfc_regs_set_opt>
  a23b38:	4601                	li	a2,0
  a23b3a:	4585                	li	a1,1
  a23b3c:	4505                	li	a0,1
  a23b3e:	2e69                	jal	ra,a23ed8 <hal_sfc_regs_set_opt_attr>
  a23b40:	26d9                	jal	ra,a23f06 <hal_sfc_regs_wait_config>
  a23b42:	8c89a783          	lw	a5,-1848(s3) # a068c8 <g_sfc_cmd_databuf>
  a23b46:	439c                	lw	a5,0(a5)
  a23b48:	8b85                	andi	a5,a5,1
  a23b4a:	cf91                	beqz	a5,a23b66 <hal_sfc_regs_wait_ready.constprop.3+0x5c>
  a23b4c:	854a                	mv	a0,s2
  a23b4e:	899fe0ef          	jal	ra,a223e6 <uapi_tcxo_delay_us>
  a23b52:	00140793          	addi	a5,s0,1
  a23b56:	00946663          	bltu	s0,s1,a23b62 <hal_sfc_regs_wait_ready.constprop.3+0x58>
  a23b5a:	8000 1344 051f      	l.li	a0,0x80001344
  a23b60:	8154                	popret	{ra,s0-s3},48
  a23b62:	843e                	mv	s0,a5
  a23b64:	bfc1                	j	a23b34 <hal_sfc_regs_wait_ready.constprop.3+0x2a>
  a23b66:	4501                	li	a0,0
  a23b68:	bfe5                	j	a23b60 <hal_sfc_regs_wait_ready.constprop.3+0x56>

00a23b6a <hal_sfc_execute_type_cmd>:
  a23b6a:	8148                	push	{ra,s0-s2},-32
  a23b6c:	219c                	lbu	a5,0(a1)
  a23b6e:	842a                	mv	s0,a0
  a23b70:	892e                	mv	s2,a1
  a23b72:	078e                	slli	a5,a5,0x3
  a23b74:	0017e793          	ori	a5,a5,1
  a23b78:	c23e                	sw	a5,4(sp)
  a23b7a:	fff50793          	addi	a5,a0,-1
  a23b7e:	c43e                	sw	a5,8(sp)
  a23b80:	c602                	sw	zero,12(sp)
  a23b82:	3761                	jal	ra,a23b0a <hal_sfc_regs_wait_ready.constprop.3>
  a23b84:	84aa                	mv	s1,a0
  a23b86:	e50d                	bnez	a0,a23bb0 <hal_sfc_execute_type_cmd+0x46>
  a23b88:	0048                	addi	a0,sp,4
  a23b8a:	2e19                	jal	ra,a23ea0 <hal_sfc_regs_set_opt>
  a23b8c:	4785                	li	a5,1
  a23b8e:	c002                	sw	zero,0(sp)
  a23b90:	0287e263          	bltu	a5,s0,a23bb4 <hal_sfc_execute_type_cmd+0x4a>
  a23b94:	00a077b7          	lui	a5,0xa07
  a23b98:	8c87a783          	lw	a5,-1848(a5) # a068c8 <g_sfc_cmd_databuf>
  a23b9c:	4702                	lw	a4,0(sp)
  a23b9e:	00243593          	sltiu	a1,s0,2
  a23ba2:	4601                	li	a2,0
  a23ba4:	c398                	sw	a4,0(a5)
  a23ba6:	0015c593          	xori	a1,a1,1
  a23baa:	4501                	li	a0,0
  a23bac:	2635                	jal	ra,a23ed8 <hal_sfc_regs_set_opt_attr>
  a23bae:	2ea1                	jal	ra,a23f06 <hal_sfc_regs_wait_config>
  a23bb0:	8526                	mv	a0,s1
  a23bb2:	8144                	popret	{ra,s0-s2},32
  a23bb4:	00f906b3          	add	a3,s2,a5
  a23bb8:	2294                	lbu	a3,0(a3)
  a23bba:	00f10733          	add	a4,sp,a5
  a23bbe:	0785                	addi	a5,a5,1
  a23bc0:	fed70fa3          	sb	a3,-1(a4) # bfffffff <__data_load__+0xbf5d872f>
  a23bc4:	b7f1                	j	a23b90 <hal_sfc_execute_type_cmd+0x26>

00a23bc6 <hal_sfc_write_enable>:
  a23bc6:	8118                	push	{ra},-32
  a23bc8:	f43ff0ef          	jal	ra,a23b0a <hal_sfc_regs_wait_ready.constprop.3>
  a23bcc:	4799                	li	a5,6
  a23bce:	006c                	addi	a1,sp,12
  a23bd0:	4505                	li	a0,1
  a23bd2:	00f10623          	sb	a5,12(sp)
  a23bd6:	3f51                	jal	ra,a23b6a <hal_sfc_execute_type_cmd>
  a23bd8:	e119                	bnez	a0,a23bde <hal_sfc_write_enable+0x18>
  a23bda:	f31ff0ef          	jal	ra,a23b0a <hal_sfc_regs_wait_ready.constprop.3>
  a23bde:	8114                	popret	{ra},32

00a23be0 <hal_sfc_reg_write_once>:
  a23be0:	8648                	push	{ra,s0-s2},-112
  a23be2:	c636                	sw	a3,12(sp)
  a23be4:	892a                	mv	s2,a0
  a23be6:	84ae                	mv	s1,a1
  a23be8:	8432                	mv	s0,a2
  a23bea:	3ff1                	jal	ra,a23bc6 <hal_sfc_write_enable>
  a23bec:	87aa                	mv	a5,a0
  a23bee:	46b2                	lw	a3,12(sp)
  a23bf0:	e939                	bnez	a0,a23c46 <hal_sfc_reg_write_once+0x66>
  a23bf2:	ca36                	sw	a3,20(sp)
  a23bf4:	0848                	addi	a0,sp,20
  a23bf6:	82b9                	srli	a3,a3,0xe
  a23bf8:	ce36                	sw	a3,28(sp)
  a23bfa:	cc22                	sw	s0,24(sp)
  a23bfc:	2455                	jal	ra,a23ea0 <hal_sfc_regs_set_opt>
  a23bfe:	854a                	mv	a0,s2
  a23c00:	eedff0ef          	jal	ra,a23aec <hal_sfc_regs_set_cmd_addr>
  a23c04:	86a2                	mv	a3,s0
  a23c06:	8626                	mv	a2,s1
  a23c08:	04000593          	li	a1,64
  a23c0c:	1008                	addi	a0,sp,32
  a23c0e:	061010ef          	jal	ra,a2546e <memcpy_s>
  a23c12:	57fd                	li	a5,-1
  a23c14:	e90d                	bnez	a0,a23c46 <hal_sfc_reg_write_once+0x66>
  a23c16:	00347613          	andi	a2,s0,3
  a23c1a:	00c03633          	snez	a2,a2
  a23c1e:	4486061b          	addshf	a2,a2,s0,srl,2
  a23c22:	9e21                	uxth	a2
  a23c24:	101c                	addi	a5,sp,32
  a23c26:	4701                	li	a4,0
  a23c28:	00a075b7          	lui	a1,0xa07
  a23c2c:	01071693          	slli	a3,a4,0x10
  a23c30:	82c1                	srli	a3,a3,0x10
  a23c32:	00c6ec63          	bltu	a3,a2,a23c4a <hal_sfc_reg_write_once+0x6a>
  a23c36:	4605                	li	a2,1
  a23c38:	4585                	li	a1,1
  a23c3a:	4501                	li	a0,0
  a23c3c:	2c71                	jal	ra,a23ed8 <hal_sfc_regs_set_opt_attr>
  a23c3e:	24e1                	jal	ra,a23f06 <hal_sfc_regs_wait_config>
  a23c40:	ecbff0ef          	jal	ra,a23b0a <hal_sfc_regs_wait_ready.constprop.3>
  a23c44:	87aa                	mv	a5,a0
  a23c46:	853e                	mv	a0,a5
  a23c48:	8644                	popret	{ra,s0-s2},112
  a23c4a:	8c85a683          	lw	a3,-1848(a1) # a068c8 <g_sfc_cmd_databuf>
  a23c4e:	4388                	lw	a0,0(a5)
  a23c50:	0791                	addi	a5,a5,4
  a23c52:	04e6869b          	addshf	a3,a3,a4,sll,2
  a23c56:	c288                	sw	a0,0(a3)
  a23c58:	0705                	addi	a4,a4,1
  a23c5a:	bfc9                	j	a23c2c <hal_sfc_reg_write_once+0x4c>

00a23c5c <hal_sfc_get_flash_id>:
  a23c5c:	8128                	push	{ra,s0},-32
  a23c5e:	842a                	mv	s0,a0
  a23c60:	e33ff0ef          	jal	ra,a23a92 <hal_sfc_regs_init>
  a23c64:	ea7ff0ef          	jal	ra,a23b0a <hal_sfc_regs_wait_ready.constprop.3>
  a23c68:	e91d                	bnez	a0,a23c9e <hal_sfc_get_flash_id+0x42>
  a23c6a:	4631                	li	a2,12
  a23c6c:	00a2 5e38 059f      	l.li	a1,0xa25e38
  a23c72:	0048                	addi	a0,sp,4
  a23c74:	e7ffc0ef          	jal	ra,a20af2 <memcpy>
  a23c78:	0048                	addi	a0,sp,4
  a23c7a:	241d                	jal	ra,a23ea0 <hal_sfc_regs_set_opt>
  a23c7c:	4601                	li	a2,0
  a23c7e:	4585                	li	a1,1
  a23c80:	4505                	li	a0,1
  a23c82:	2c99                	jal	ra,a23ed8 <hal_sfc_regs_set_opt_attr>
  a23c84:	2449                	jal	ra,a23f06 <hal_sfc_regs_wait_config>
  a23c86:	00a077b7          	lui	a5,0xa07
  a23c8a:	8c87a783          	lw	a5,-1848(a5) # a068c8 <g_sfc_cmd_databuf>
  a23c8e:	00ff ffff 071f      	l.li	a4,0xffffff
  a23c94:	439c                	lw	a5,0(a5)
  a23c96:	8ff9                	and	a5,a5,a4
  a23c98:	c01c                	sw	a5,0(s0)
  a23c9a:	e71ff0ef          	jal	ra,a23b0a <hal_sfc_regs_wait_ready.constprop.3>
  a23c9e:	8124                	popret	{ra,s0},32

00a23ca0 <hal_sfc_init>:
  a23ca0:	67c1                	lui	a5,0x10
  a23ca2:	0cf66c63          	bltu	a2,a5,a23d7a <hal_sfc_init+0xda>
  a23ca6:	8198                	push	{ra,s0-s7},-64
  a23ca8:	4940                	lw	s0,20(a0)
  a23caa:	84b2                	mv	s1,a2
  a23cac:	89ae                	mv	s3,a1
  a23cae:	892a                	mv	s2,a0
  a23cb0:	4a05                	li	s4,1
  a23cb2:	00a07ab7          	lui	s5,0xa07
  a23cb6:	e025                	bnez	s0,a23d16 <hal_sfc_init+0x76>
  a23cb8:	00a077b7          	lui	a5,0xa07
  a23cbc:	8c47a683          	lw	a3,-1852(a5) # a068c4 <g_sfc_bus_regs>
  a23cc0:	0109d993          	srli	s3,s3,0x10
  a23cc4:	00f4d613          	srli	a2,s1,0xf
  a23cc8:	4e9c                	lw	a5,24(a3)
  a23cca:	4701                	li	a4,0
  a23ccc:	01079593          	slli	a1,a5,0x10
  a23cd0:	81c1                	srli	a1,a1,0x10
  a23cd2:	2135a59b          	orshf	a1,a1,s3,sll,16
  a23cd6:	ce8c                	sw	a1,24(a3)
  a23cd8:	00167793          	andi	a5,a2,1
  a23cdc:	cfc1                	beqz	a5,a23d74 <hal_sfc_init+0xd4>
  a23cde:	4a9c                	lw	a5,16(a3)
  a23ce0:	ffff f0ff 061f      	l.li	a2,0xfffff0ff
  a23ce6:	8b3d                	andi	a4,a4,15
  a23ce8:	8ff1                	and	a5,a5,a2
  a23cea:	10e7a79b          	orshf	a5,a5,a4,sll,8
  a23cee:	ca9c                	sw	a5,16(a3)
  a23cf0:	00492503          	lw	a0,4(s2)
  a23cf4:	240d                	jal	ra,a23f16 <hal_sfc_regs_set_bus_read>
  a23cf6:	00c92503          	lw	a0,12(s2)
  a23cfa:	7f857793          	andi	a5,a0,2040
  a23cfe:	c391                	beqz	a5,a23d02 <hal_sfc_init+0x62>
  a23d00:	2c89                	jal	ra,a23f52 <hal_sfc_regs_set_bus_write>
  a23d02:	00a077b7          	lui	a5,0xa07
  a23d06:	8d07a783          	lw	a5,-1840(a5) # a068d0 <g_sfc_global_conf_regs>
  a23d0a:	4705                	li	a4,1
  a23d0c:	cb98                	sw	a4,16(a5)
  a23d0e:	dfdff0ef          	jal	ra,a23b0a <hal_sfc_regs_wait_ready.constprop.3>
  a23d12:	4501                	li	a0,0
  a23d14:	a00d                	j	a23d36 <hal_sfc_init+0x96>
  a23d16:	201c                	lbu	a5,0(s0)
  a23d18:	03478063          	beq	a5,s4,a23d38 <hal_sfc_init+0x98>
  a23d1c:	c799                	beqz	a5,a23d2a <hal_sfc_init+0x8a>
  a23d1e:	02e786bb          	beqi	a5,2,a23cb8 <hal_sfc_init+0x18>
  a23d22:	8000 1345 051f      	l.li	a0,0x80001345
  a23d28:	a039                	j	a23d36 <hal_sfc_init+0x96>
  a23d2a:	3008                	lbu	a0,1(s0)
  a23d2c:	00240593          	addi	a1,s0,2
  a23d30:	e3bff0ef          	jal	ra,a23b6a <hal_sfc_execute_type_cmd>
  a23d34:	cd15                	beqz	a0,a23d70 <hal_sfc_init+0xd0>
  a23d36:	8194                	popret	{ra,s0-s7},64
  a23d38:	2038                	lbu	a4,2(s0)
  a23d3a:	00344b83          	lbu	s7,3(s0)
  a23d3e:	00444b03          	lbu	s6,4(s0)
  a23d42:	070e                	slli	a4,a4,0x3
  a23d44:	00176713          	ori	a4,a4,1
  a23d48:	c23a                	sw	a4,4(sp)
  a23d4a:	c452                	sw	s4,8(sp)
  a23d4c:	c602                	sw	zero,12(sp)
  a23d4e:	dbdff0ef          	jal	ra,a23b0a <hal_sfc_regs_wait_ready.constprop.3>
  a23d52:	0048                	addi	a0,sp,4
  a23d54:	22b1                	jal	ra,a23ea0 <hal_sfc_regs_set_opt>
  a23d56:	4601                	li	a2,0
  a23d58:	4585                	li	a1,1
  a23d5a:	4505                	li	a0,1
  a23d5c:	2ab5                	jal	ra,a23ed8 <hal_sfc_regs_set_opt_attr>
  a23d5e:	2265                	jal	ra,a23f06 <hal_sfc_regs_wait_config>
  a23d60:	8c8aa783          	lw	a5,-1848(s5) # a068c8 <g_sfc_cmd_databuf>
  a23d64:	439c                	lw	a5,0(a5)
  a23d66:	0177d7b3          	srl	a5,a5,s7
  a23d6a:	8b85                	andi	a5,a5,1
  a23d6c:	fb679be3          	bne	a5,s6,a23d22 <hal_sfc_init+0x82>
  a23d70:	0419                	addi	s0,s0,6
  a23d72:	b791                	j	a23cb6 <hal_sfc_init+0x16>
  a23d74:	8205                	srli	a2,a2,0x1
  a23d76:	0705                	addi	a4,a4,1
  a23d78:	b785                	j	a23cd8 <hal_sfc_init+0x38>
  a23d7a:	80000537          	lui	a0,0x80000
  a23d7e:	0505                	addi	a0,a0,1 # 80000001 <__data_load__+0x7f5d8731>
  a23d80:	8082                	ret

00a23d82 <hal_sfc_reg_read>:
  a23d82:	8588                	push	{ra,s0-s6},-112
  a23d84:	89aa                	mv	s3,a0
  a23d86:	8a2e                	mv	s4,a1
  a23d88:	84b2                	mv	s1,a2
  a23d8a:	04000413          	li	s0,64
  a23d8e:	00e6da93          	srli	s5,a3,0xe
  a23d92:	8936                	mv	s2,a3
  a23d94:	00a07b37          	lui	s6,0xa07
  a23d98:	e099                	bnez	s1,a23d9e <hal_sfc_reg_read+0x1c>
  a23d9a:	4501                	li	a0,0
  a23d9c:	a8a1                	j	a23df4 <hal_sfc_reg_read+0x72>
  a23d9e:	d6dff0ef          	jal	ra,a23b0a <hal_sfc_regs_wait_ready.constprop.3>
  a23da2:	e929                	bnez	a0,a23df4 <hal_sfc_reg_read+0x72>
  a23da4:	0084f363          	bgeu	s1,s0,a23daa <hal_sfc_reg_read+0x28>
  a23da8:	8426                	mv	s0,s1
  a23daa:	0048                	addi	a0,sp,4
  a23dac:	c24a                	sw	s2,4(sp)
  a23dae:	c422                	sw	s0,8(sp)
  a23db0:	c656                	sw	s5,12(sp)
  a23db2:	20fd                	jal	ra,a23ea0 <hal_sfc_regs_set_opt>
  a23db4:	854e                	mv	a0,s3
  a23db6:	d37ff0ef          	jal	ra,a23aec <hal_sfc_regs_set_cmd_addr>
  a23dba:	4605                	li	a2,1
  a23dbc:	4505                	li	a0,1
  a23dbe:	4585                	li	a1,1
  a23dc0:	2a21                	jal	ra,a23ed8 <hal_sfc_regs_set_opt_attr>
  a23dc2:	2291                	jal	ra,a23f06 <hal_sfc_regs_wait_config>
  a23dc4:	00347793          	andi	a5,s0,3
  a23dc8:	00f037b3          	snez	a5,a5
  a23dcc:	8c8b2503          	lw	a0,-1848(s6) # a068c8 <g_sfc_cmd_databuf>
  a23dd0:	4487879b          	addshf	a5,a5,s0,srl,2
  a23dd4:	0814                	addi	a3,sp,16
  a23dd6:	9fa1                	uxth	a5
  a23dd8:	4701                	li	a4,0
  a23dda:	8636                	mv	a2,a3
  a23ddc:	01071593          	slli	a1,a4,0x10
  a23de0:	81c1                	srli	a1,a1,0x10
  a23de2:	00f5ea63          	bltu	a1,a5,a23df6 <hal_sfc_reg_read+0x74>
  a23de6:	86a2                	mv	a3,s0
  a23de8:	85a2                	mv	a1,s0
  a23dea:	8552                	mv	a0,s4
  a23dec:	682010ef          	jal	ra,a2546e <memcpy_s>
  a23df0:	c919                	beqz	a0,a23e06 <hal_sfc_reg_read+0x84>
  a23df2:	557d                	li	a0,-1
  a23df4:	8584                	popret	{ra,s0-s6},112
  a23df6:	04e5059b          	addshf	a1,a0,a4,sll,2
  a23dfa:	418c                	lw	a1,0(a1)
  a23dfc:	0705                	addi	a4,a4,1
  a23dfe:	0691                	addi	a3,a3,4
  a23e00:	feb6ae23          	sw	a1,-4(a3)
  a23e04:	bfe1                	j	a23ddc <hal_sfc_reg_read+0x5a>
  a23e06:	99a2                	add	s3,s3,s0
  a23e08:	9a22                	add	s4,s4,s0
  a23e0a:	8c81                	sub	s1,s1,s0
  a23e0c:	b771                	j	a23d98 <hal_sfc_reg_read+0x16>

00a23e0e <hal_sfc_reg_write>:
  a23e0e:	8088                	push	{ra,s0-s6},-32
  a23e10:	03f57793          	andi	a5,a0,63
  a23e14:	04000413          	li	s0,64
  a23e18:	8c1d                	sub	s0,s0,a5
  a23e1a:	89aa                	mv	s3,a0
  a23e1c:	892e                	mv	s2,a1
  a23e1e:	84b2                	mv	s1,a2
  a23e20:	8ab6                	mv	s5,a3
  a23e22:	00867363          	bgeu	a2,s0,a23e28 <hal_sfc_reg_write+0x1a>
  a23e26:	8432                	mv	s0,a2
  a23e28:	86d6                	mv	a3,s5
  a23e2a:	8622                	mv	a2,s0
  a23e2c:	85ca                	mv	a1,s2
  a23e2e:	854e                	mv	a0,s3
  a23e30:	db1ff0ef          	jal	ra,a23be0 <hal_sfc_reg_write_once>
  a23e34:	8a2a                	mv	s4,a0
  a23e36:	e905                	bnez	a0,a23e66 <hal_sfc_reg_write+0x58>
  a23e38:	8c81                	sub	s1,s1,s0
  a23e3a:	c495                	beqz	s1,a23e66 <hal_sfc_reg_write+0x58>
  a23e3c:	9922                	add	s2,s2,s0
  a23e3e:	04000b13          	li	s6,64
  a23e42:	944e                	add	s0,s0,s3
  a23e44:	89a6                	mv	s3,s1
  a23e46:	009b7463          	bgeu	s6,s1,a23e4e <hal_sfc_reg_write+0x40>
  a23e4a:	04000993          	li	s3,64
  a23e4e:	86d6                	mv	a3,s5
  a23e50:	864e                	mv	a2,s3
  a23e52:	85ca                	mv	a1,s2
  a23e54:	8522                	mv	a0,s0
  a23e56:	d8bff0ef          	jal	ra,a23be0 <hal_sfc_reg_write_once>
  a23e5a:	e901                	bnez	a0,a23e6a <hal_sfc_reg_write+0x5c>
  a23e5c:	413484b3          	sub	s1,s1,s3
  a23e60:	994e                	add	s2,s2,s3
  a23e62:	944e                	add	s0,s0,s3
  a23e64:	f0e5                	bnez	s1,a23e44 <hal_sfc_reg_write+0x36>
  a23e66:	8552                	mv	a0,s4
  a23e68:	8084                	popret	{ra,s0-s6},32
  a23e6a:	8a2a                	mv	s4,a0
  a23e6c:	bfed                	j	a23e66 <hal_sfc_reg_write+0x58>

00a23e6e <hal_sfc_reg_erase>:
  a23e6e:	8238                	push	{ra,s0-s1},-48
  a23e70:	c62e                	sw	a1,12(sp)
  a23e72:	84aa                	mv	s1,a0
  a23e74:	8432                	mv	s0,a2
  a23e76:	d51ff0ef          	jal	ra,a23bc6 <hal_sfc_write_enable>
  a23e7a:	45b2                	lw	a1,12(sp)
  a23e7c:	e10d                	bnez	a0,a23e9e <hal_sfc_reg_erase+0x30>
  a23e7e:	0848                	addi	a0,sp,20
  a23e80:	ca2e                	sw	a1,20(sp)
  a23e82:	cc02                	sw	zero,24(sp)
  a23e84:	ce02                	sw	zero,28(sp)
  a23e86:	2829                	jal	ra,a23ea0 <hal_sfc_regs_set_opt>
  a23e88:	8526                	mv	a0,s1
  a23e8a:	c63ff0ef          	jal	ra,a23aec <hal_sfc_regs_set_cmd_addr>
  a23e8e:	00144613          	xori	a2,s0,1
  a23e92:	4581                	li	a1,0
  a23e94:	4501                	li	a0,0
  a23e96:	2089                	jal	ra,a23ed8 <hal_sfc_regs_set_opt_attr>
  a23e98:	20bd                	jal	ra,a23f06 <hal_sfc_regs_wait_config>
  a23e9a:	c71ff0ef          	jal	ra,a23b0a <hal_sfc_regs_wait_ready.constprop.3>
  a23e9e:	8234                	popret	{ra,s0-s1},48

00a23ea0 <hal_sfc_regs_set_opt>:
  a23ea0:	00a077b7          	lui	a5,0xa07
  a23ea4:	8cc7a603          	lw	a2,-1844(a5) # a068cc <g_sfc_cmd_regs>
  a23ea8:	411c                	lw	a5,0(a0)
  a23eaa:	450c                	lw	a1,8(a0)
  a23eac:	4618                	lw	a4,8(a2)
  a23eae:	0037d693          	srli	a3,a5,0x3
  a23eb2:	9e81                	uxtb	a3
  a23eb4:	f0077713          	andi	a4,a4,-256
  a23eb8:	8f55                	or	a4,a4,a3
  a23eba:	4154                	lw	a3,4(a0)
  a23ebc:	83ad                	srli	a5,a5,0xb
  a23ebe:	8b9d                	andi	a5,a5,7
  a23ec0:	899d                	andi	a1,a1,7
  a23ec2:	07c6                	slli	a5,a5,0x11
  a23ec4:	16fd                	addi	a3,a3,-1
  a23ec6:	03f6f693          	andi	a3,a3,63
  a23eca:	08b7a79b          	orshf	a5,a5,a1,sll,4
  a23ece:	12d7a79b          	orshf	a5,a5,a3,sll,9
  a23ed2:	c618                	sw	a4,8(a2)
  a23ed4:	c21c                	sw	a5,0(a2)
  a23ed6:	8082                	ret

00a23ed8 <hal_sfc_regs_set_opt_attr>:
  a23ed8:	00a077b7          	lui	a5,0xa07
  a23edc:	8cc7a703          	lw	a4,-1844(a5) # a068cc <g_sfc_cmd_regs>
  a23ee0:	8905                	andi	a0,a0,1
  a23ee2:	8985                	andi	a1,a1,1
  a23ee4:	431c                	lw	a5,0(a4)
  a23ee6:	8a05                	andi	a2,a2,1
  a23ee8:	eff7f793          	andi	a5,a5,-257
  a23eec:	10a7a79b          	orshf	a5,a5,a0,sll,8
  a23ef0:	f7f7f793          	andi	a5,a5,-129
  a23ef4:	0eb7a79b          	orshf	a5,a5,a1,sll,7
  a23ef8:	9bdd                	andi	a5,a5,-9
  a23efa:	06c7a79b          	orshf	a5,a5,a2,sll,3
  a23efe:	0037e793          	ori	a5,a5,3
  a23f02:	c31c                	sw	a5,0(a4)
  a23f04:	8082                	ret

00a23f06 <hal_sfc_regs_wait_config>:
  a23f06:	00a077b7          	lui	a5,0xa07
  a23f0a:	8cc7a703          	lw	a4,-1844(a5) # a068cc <g_sfc_cmd_regs>
  a23f0e:	431c                	lw	a5,0(a4)
  a23f10:	8b85                	andi	a5,a5,1
  a23f12:	fff5                	bnez	a5,a23f0e <hal_sfc_regs_wait_config+0x8>
  a23f14:	8082                	ret

00a23f16 <hal_sfc_regs_set_bus_read>:
  a23f16:	00a077b7          	lui	a5,0xa07
  a23f1a:	8c47a603          	lw	a2,-1852(a5) # a068c4 <g_sfc_bus_regs>
  a23f1e:	80000737          	lui	a4,0x80000
  a23f22:	ffff 00ff 069f      	l.li	a3,0xffff00ff
  a23f28:	421c                	lw	a5,0(a2)
  a23f2a:	8fd9                	or	a5,a5,a4
  a23f2c:	00355713          	srli	a4,a0,0x3
  a23f30:	9f01                	uxtb	a4
  a23f32:	8ff5                	and	a5,a5,a3
  a23f34:	10e7a79b          	orshf	a5,a5,a4,sll,8
  a23f38:	00b55693          	srli	a3,a0,0xb
  a23f3c:	8a9d                	andi	a3,a3,7
  a23f3e:	812d                	srli	a0,a0,0xb
  a23f40:	fc07f793          	andi	a5,a5,-64
  a23f44:	03857713          	andi	a4,a0,56
  a23f48:	00d7e533          	or	a0,a5,a3
  a23f4c:	8d59                	or	a0,a0,a4
  a23f4e:	c208                	sw	a0,0(a2)
  a23f50:	8082                	ret

00a23f52 <hal_sfc_regs_set_bus_write>:
  a23f52:	00a077b7          	lui	a5,0xa07
  a23f56:	8c47a683          	lw	a3,-1852(a5) # a068c4 <g_sfc_bus_regs>
  a23f5a:	00355713          	srli	a4,a0,0x3
  a23f5e:	c03f ffff 061f      	l.li	a2,0xc03fffff
  a23f64:	429c                	lw	a5,0(a3)
  a23f66:	9f01                	uxtb	a4
  a23f68:	812d                	srli	a0,a0,0xb
  a23f6a:	8ff1                	and	a5,a5,a2
  a23f6c:	2ce7a79b          	orshf	a5,a5,a4,sll,22
  a23f70:	fff8 ffff 071f      	l.li	a4,0xfff8ffff
  a23f76:	8ff9                	and	a5,a5,a4
  a23f78:	891d                	andi	a0,a0,7
  a23f7a:	20a7a79b          	orshf	a5,a5,a0,sll,16
  a23f7e:	40000737          	lui	a4,0x40000
  a23f82:	8fd9                	or	a5,a5,a4
  a23f84:	c29c                	sw	a5,0(a3)
  a23f86:	8082                	ret

00a23f88 <uart_port_register_hal_funcs>:
  a23f88:	8028                	push	{ra,s0},-16
  a23f8a:	842a                	mv	s0,a0
  a23f8c:	951ff0ef          	jal	ra,a238dc <hal_uart_v151_funcs_get>
  a23f90:	85aa                	mv	a1,a0
  a23f92:	8522                	mv	a0,s0
  a23f94:	8020                	pop	{ra,s0},16
  a23f96:	c98ff06f          	j	a2342e <hal_uart_register_funcs>

00a23f9a <uart_port_set_clock_value>:
  a23f9a:	00a0 246c 079f      	l.li	a5,0xa0246c
  a23fa0:	c38c                	sw	a1,0(a5)
  a23fa2:	8082                	ret

00a23fa4 <uart_port_get_clock_value>:
  a23fa4:	00a0 246c 079f      	l.li	a5,0xa0246c
  a23faa:	4388                	lw	a0,0(a5)
  a23fac:	8082                	ret

00a23fae <uart_port_config_pinmux>:
  a23fae:	020513bb          	bnei	a0,2,a23fbc <uart_port_config_pinmux+0xe>
  a23fb2:	4400d7b7          	lui	a5,0x4400d
  a23fb6:	4705                	li	a4,1
  a23fb8:	db98                	sw	a4,48(a5)
  a23fba:	dbd8                	sw	a4,52(a5)
  a23fbc:	8082                	ret

00a23fbe <uart_port_register_irq>:
  a23fbe:	8082                	ret

00a23fc0 <uart_port_unregister_irq>:
  a23fc0:	8082                	ret

00a23fc2 <print_str>:
  a23fc2:	715d                	addi	sp,sp,-80
  a23fc4:	d606                	sw	ra,44(sp)
  a23fc6:	d422                	sw	s0,40(sp)
  a23fc8:	da2e                	sw	a1,52(sp)
  a23fca:	dc32                	sw	a2,56(sp)
  a23fcc:	de36                	sw	a3,60(sp)
  a23fce:	c0ba                	sw	a4,64(sp)
  a23fd0:	c2be                	sw	a5,68(sp)
  a23fd2:	c4c2                	sw	a6,72(sp)
  a23fd4:	c6c6                	sw	a7,76(sp)
  a23fd6:	c529                	beqz	a0,a24020 <print_str+0x5e>
  a23fd8:	c62a                	sw	a0,12(sp)
  a23fda:	dd3fc0ef          	jal	ra,a20dac <strlen>
  a23fde:	46b2                	lw	a3,12(sp)
  a23fe0:	c121                	beqz	a0,a24020 <print_str+0x5e>
  a23fe2:	00a07437          	lui	s0,0xa07
  a23fe6:	1858                	addi	a4,sp,52
  a23fe8:	07f00613          	li	a2,127
  a23fec:	08000593          	li	a1,128
  a23ff0:	8d840513          	addi	a0,s0,-1832 # a068d8 <str_buf.2993>
  a23ff4:	ce3a                	sw	a4,28(sp)
  a23ff6:	5f3010ef          	jal	ra,a25de8 <vsnprintf_s>
  a23ffa:	862a                	mv	a2,a0
  a23ffc:	8d840793          	addi	a5,s0,-1832
  a24000:	ff05123b          	bnei	a0,-1,a24008 <print_str+0x46>
  a24004:	2398                	lbu	a4,0(a5)
  a24006:	cf09                	beqz	a4,a24020 <print_str+0x5e>
  a24008:	97b2                	add	a5,a5,a2
  a2400a:	00078023          	sb	zero,0(a5) # 4400d000 <__data_load__+0x435e5730>
  a2400e:	00a0 68d4 079f      	l.li	a5,0xa068d4
  a24014:	2388                	lbu	a0,0(a5)
  a24016:	4681                	li	a3,0
  a24018:	8d840593          	addi	a1,s0,-1832
  a2401c:	805fe0ef          	jal	ra,a22820 <uapi_uart_write>
  a24020:	50b2                	lw	ra,44(sp)
  a24022:	5422                	lw	s0,40(sp)
  a24024:	6161                	addi	sp,sp,80
  a24026:	8082                	ret

00a24028 <uart_porting_lock>:
  a24028:	866fe06f          	j	a2208e <osal_irq_lock>

00a2402c <uart_porting_unlock>:
  a2402c:	852e                	mv	a0,a1
  a2402e:	868fe06f          	j	a22096 <osal_irq_restore>

00a24032 <hal_systick_get_count>:
  a24032:	400057b7          	lui	a5,0x40005
  a24036:	4fd8                	lw	a4,28(a5)
  a24038:	4f98                	lw	a4,24(a5)
  a2403a:	4fc8                	lw	a0,28(a5)
  a2403c:	4f8c                	lw	a1,24(a5)
  a2403e:	9da1                	uxth	a1
  a24040:	8082                	ret

00a24042 <systick_clock_get>:
  a24042:	00a0 2470 079f      	l.li	a5,0xa02470
  a24048:	4388                	lw	a0,0(a5)
  a2404a:	8082                	ret

00a2404c <tcxo_porting_base_addr_get>:
  a2404c:	4400 04c0 051f      	l.li	a0,0x440004c0
  a24052:	8082                	ret

00a24054 <tcxo_porting_ticks_per_usec_get>:
  a24054:	00a0 2474 079f      	l.li	a5,0xa02474
  a2405a:	4388                	lw	a0,0(a5)
  a2405c:	8082                	ret

00a2405e <tcxo_porting_ticks_per_usec_set>:
  a2405e:	00a0 2474 079f      	l.li	a5,0xa02474
  a24064:	c388                	sw	a0,0(a5)
  a24066:	8082                	ret

00a24068 <watchdog_port_register_hal_funcs>:
  a24068:	8018                	push	{ra},-16
  a2406a:	a21ff0ef          	jal	ra,a23a8a <hal_watchdog_v151_funcs_get>
  a2406e:	8010                	pop	{ra},16
  a24070:	875ff06f          	j	a238e4 <hal_watchdog_register_funcs>

00a24074 <watchdog_port_unregister_hal_funcs>:
  a24074:	887ff06f          	j	a238fa <hal_watchdog_unregister_funcs>

00a24078 <watchdog_port_register_irq>:
  a24078:	8082                	ret

00a2407a <watchdog_port_set_clock>:
  a2407a:	8028                	push	{ra,s0},-16
  a2407c:	842a                	mv	s0,a0
  a2407e:	810fe0ef          	jal	ra,a2208e <osal_irq_lock>
  a24082:	00a0 247c 079f      	l.li	a5,0xa0247c
  a24088:	c380                	sw	s0,0(a5)
  a2408a:	8020                	pop	{ra,s0},16
  a2408c:	80afe06f          	j	a22096 <osal_irq_restore>

00a24090 <watchdog_port_get_clock>:
  a24090:	00a0 247c 079f      	l.li	a5,0xa0247c
  a24096:	4388                	lw	a0,0(a5)
  a24098:	8082                	ret

00a2409a <sfc_port_get_flash_spi_infos>:
  a2409a:	00a2 6f04 051f      	l.li	a0,0xa26f04
  a240a0:	8082                	ret

00a240a2 <sfc_port_get_flash_num>:
  a240a2:	4505                	li	a0,1
  a240a4:	8082                	ret

00a240a6 <sfc_port_get_unknown_flash_info>:
  a240a6:	00a2 6f20 051f      	l.li	a0,0xa26f20
  a240ac:	8082                	ret

00a240ae <sfc_port_get_sfc_start_addr>:
  a240ae:	00200537          	lui	a0,0x200
  a240b2:	8082                	ret

00a240b4 <sfc_port_get_sfc_end_addr>:
  a240b4:	009f ffff 051f      	l.li	a0,0x9fffff
  a240ba:	8082                	ret

00a240bc <sfc_port_get_sfc_global_conf_base_addr>:
  a240bc:	4800 0100 051f      	l.li	a0,0x48000100
  a240c2:	8082                	ret

00a240c4 <sfc_port_get_sfc_bus_regs_base_addr>:
  a240c4:	4800 0200 051f      	l.li	a0,0x48000200
  a240ca:	8082                	ret

00a240cc <sfc_port_get_sfc_bus_dma_regs_base_addr>:
  a240cc:	4800 0240 051f      	l.li	a0,0x48000240
  a240d2:	8082                	ret

00a240d4 <sfc_port_get_sfc_cmd_regs_base_addr>:
  a240d4:	4800 0300 051f      	l.li	a0,0x48000300
  a240da:	8082                	ret

00a240dc <sfc_port_get_sfc_cmd_databuf_base_addr>:
  a240dc:	4800 0400 051f      	l.li	a0,0x48000400
  a240e2:	8082                	ret

00a240e4 <sfc_port_get_delay_once_time>:
  a240e4:	00a0 2480 079f      	l.li	a5,0xa02480
  a240ea:	4388                	lw	a0,0(a5)
  a240ec:	8082                	ret

00a240ee <sfc_port_get_delay_times>:
  a240ee:	00a0 2484 079f      	l.li	a5,0xa02484
  a240f4:	4388                	lw	a0,0(a5)
  a240f6:	8082                	ret

00a240f8 <sfc_port_lock_init>:
  a240f8:	8082                	ret

00a240fa <sfc_port_lock>:
  a240fa:	4501                	li	a0,0
  a240fc:	8082                	ret

00a240fe <sfc_port_unlock>:
  a240fe:	8082                	ret

00a24100 <hal_sfc_regs_wait_ready.constprop.0>:
  a24100:	8158                	push	{ra,s0-s3},-48
  a24102:	fedff0ef          	jal	ra,a240ee <sfc_port_get_delay_times>
  a24106:	84aa                	mv	s1,a0
  a24108:	fddff0ef          	jal	ra,a240e4 <sfc_port_get_delay_once_time>
  a2410c:	02800793          	li	a5,40
  a24110:	c23e                	sw	a5,4(sp)
  a24112:	4785                	li	a5,1
  a24114:	892a                	mv	s2,a0
  a24116:	c602                	sw	zero,12(sp)
  a24118:	c43e                	sw	a5,8(sp)
  a2411a:	4401                	li	s0,0
  a2411c:	00a079b7          	lui	s3,0xa07
  a24120:	0048                	addi	a0,sp,4
  a24122:	d7fff0ef          	jal	ra,a23ea0 <hal_sfc_regs_set_opt>
  a24126:	4601                	li	a2,0
  a24128:	4585                	li	a1,1
  a2412a:	4505                	li	a0,1
  a2412c:	dadff0ef          	jal	ra,a23ed8 <hal_sfc_regs_set_opt_attr>
  a24130:	dd7ff0ef          	jal	ra,a23f06 <hal_sfc_regs_wait_config>
  a24134:	8c89a783          	lw	a5,-1848(s3) # a068c8 <g_sfc_cmd_databuf>
  a24138:	439c                	lw	a5,0(a5)
  a2413a:	8b85                	andi	a5,a5,1
  a2413c:	cf91                	beqz	a5,a24158 <hal_sfc_regs_wait_ready.constprop.0+0x58>
  a2413e:	854a                	mv	a0,s2
  a24140:	aa6fe0ef          	jal	ra,a223e6 <uapi_tcxo_delay_us>
  a24144:	00140793          	addi	a5,s0,1
  a24148:	00946663          	bltu	s0,s1,a24154 <hal_sfc_regs_wait_ready.constprop.0+0x54>
  a2414c:	8000 1344 051f      	l.li	a0,0x80001344
  a24152:	8154                	popret	{ra,s0-s3},48
  a24154:	843e                	mv	s0,a5
  a24156:	b7e9                	j	a24120 <hal_sfc_regs_wait_ready.constprop.0+0x20>
  a24158:	4501                	li	a0,0
  a2415a:	bfe5                	j	a24152 <hal_sfc_regs_wait_ready.constprop.0+0x52>

00a2415c <sfc_port_write_sr>:
  a2415c:	8148                	push	{ra,s0-s2},-32
  a2415e:	892a                	mv	s2,a0
  a24160:	842e                	mv	s0,a1
  a24162:	84b2                	mv	s1,a2
  a24164:	f9dff0ef          	jal	ra,a24100 <hal_sfc_regs_wait_ready.constprop.0>
  a24168:	4792                	lw	a5,4(sp)
  a2416a:	4719                	li	a4,6
  a2416c:	9be1                	andi	a5,a5,-8
  a2416e:	0017e793          	ori	a5,a5,1
  a24172:	c23e                	sw	a5,4(sp)
  a24174:	00090463          	beqz	s2,a2417c <sfc_port_write_sr+0x20>
  a24178:	05000713          	li	a4,80
  a2417c:	4792                	lw	a5,4(sp)
  a2417e:	0048                	addi	a0,sp,4
  a24180:	c402                	sw	zero,8(sp)
  a24182:	8077f793          	andi	a5,a5,-2041
  a24186:	06e7a79b          	orshf	a5,a5,a4,sll,3
  a2418a:	7ff7f793          	andi	a5,a5,2047
  a2418e:	c23e                	sw	a5,4(sp)
  a24190:	c602                	sw	zero,12(sp)
  a24192:	d0fff0ef          	jal	ra,a23ea0 <hal_sfc_regs_set_opt>
  a24196:	4601                	li	a2,0
  a24198:	4581                	li	a1,0
  a2419a:	4501                	li	a0,0
  a2419c:	d3dff0ef          	jal	ra,a23ed8 <hal_sfc_regs_set_opt_attr>
  a241a0:	d67ff0ef          	jal	ra,a23f06 <hal_sfc_regs_wait_config>
  a241a4:	4785                	li	a5,1
  a241a6:	c43e                	sw	a5,8(sp)
  a241a8:	00a077b7          	lui	a5,0xa07
  a241ac:	8c87a783          	lw	a5,-1848(a5) # a068c8 <g_sfc_cmd_databuf>
  a241b0:	040e                	slli	s0,s0,0x3
  a241b2:	00146413          	ori	s0,s0,1
  a241b6:	c222                	sw	s0,4(sp)
  a241b8:	c602                	sw	zero,12(sp)
  a241ba:	c384                	sw	s1,0(a5)
  a241bc:	0048                	addi	a0,sp,4
  a241be:	ce3ff0ef          	jal	ra,a23ea0 <hal_sfc_regs_set_opt>
  a241c2:	4601                	li	a2,0
  a241c4:	4585                	li	a1,1
  a241c6:	4501                	li	a0,0
  a241c8:	d11ff0ef          	jal	ra,a23ed8 <hal_sfc_regs_set_opt_attr>
  a241cc:	d3bff0ef          	jal	ra,a23f06 <hal_sfc_regs_wait_config>
  a241d0:	8144                	popret	{ra,s0-s2},32

00a241d2 <sfc_port_read_sr>:
  a241d2:	8118                	push	{ra},-32
  a241d4:	9d01                	uxtb	a0
  a241d6:	4785                	li	a5,1
  a241d8:	050e                	slli	a0,a0,0x3
  a241da:	c43e                	sw	a5,8(sp)
  a241dc:	c602                	sw	zero,12(sp)
  a241de:	c22a                	sw	a0,4(sp)
  a241e0:	f21ff0ef          	jal	ra,a24100 <hal_sfc_regs_wait_ready.constprop.0>
  a241e4:	0048                	addi	a0,sp,4
  a241e6:	cbbff0ef          	jal	ra,a23ea0 <hal_sfc_regs_set_opt>
  a241ea:	4601                	li	a2,0
  a241ec:	4585                	li	a1,1
  a241ee:	4505                	li	a0,1
  a241f0:	ce9ff0ef          	jal	ra,a23ed8 <hal_sfc_regs_set_opt_attr>
  a241f4:	d13ff0ef          	jal	ra,a23f06 <hal_sfc_regs_wait_config>
  a241f8:	00a077b7          	lui	a5,0xa07
  a241fc:	8c87a783          	lw	a5,-1848(a5) # a068c8 <g_sfc_cmd_databuf>
  a24200:	4388                	lw	a0,0(a5)
  a24202:	8114                	popret	{ra},32

00a24204 <sfc_port_write_lock>:
  a24204:	000207b7          	lui	a5,0x20
  a24208:	00f56863          	bltu	a0,a5,a24218 <sfc_port_write_lock+0x14>
  a2420c:	004007b7          	lui	a5,0x400
  a24210:	00b7ec63          	bltu	a5,a1,a24228 <sfc_port_write_lock+0x24>
  a24214:	4781                	li	a5,0
  a24216:	a005                	j	a24236 <sfc_port_write_lock+0x32>
  a24218:	67a1                	lui	a5,0x8
  a2421a:	00f56963          	bltu	a0,a5,a2422c <sfc_port_write_lock+0x28>
  a2421e:	00400737          	lui	a4,0x400
  a24222:	4785                	li	a5,1
  a24224:	00b77963          	bgeu	a4,a1,a24236 <sfc_port_write_lock+0x32>
  a24228:	4501                	li	a0,0
  a2422a:	8082                	ret
  a2422c:	004007b7          	lui	a5,0x400
  a24230:	feb7ece3          	bltu	a5,a1,a24228 <sfc_port_write_lock+0x24>
  a24234:	4789                	li	a5,2
  a24236:	8018                	push	{ra},-16
  a24238:	00a2 6f3c 071f      	l.li	a4,0xa26f3c
  a2423e:	0cf717db          	muliadd	a5,a4,a5,12
  a24242:	3390                	lbu	a2,1(a5)
  a24244:	4585                	li	a1,1
  a24246:	4505                	li	a0,1
  a24248:	f15ff0ef          	jal	ra,a2415c <sfc_port_write_sr>
  a2424c:	4609                	li	a2,2
  a2424e:	03100593          	li	a1,49
  a24252:	4505                	li	a0,1
  a24254:	f09ff0ef          	jal	ra,a2415c <sfc_port_write_sr>
  a24258:	4501                	li	a0,0
  a2425a:	8014                	popret	{ra},16

00a2425c <sfc_port_write_unlock>:
  a2425c:	8018                	push	{ra},-16
  a2425e:	4671                	li	a2,28
  a24260:	4585                	li	a1,1
  a24262:	4505                	li	a0,1
  a24264:	ef9ff0ef          	jal	ra,a2415c <sfc_port_write_sr>
  a24268:	4609                	li	a2,2
  a2426a:	03100593          	li	a1,49
  a2426e:	4505                	li	a0,1
  a24270:	8010                	pop	{ra},16
  a24272:	eebff06f          	j	a2415c <sfc_port_write_sr>

00a24276 <sfc_port_fix_sr>:
  a24276:	8118                	push	{ra},-32
  a24278:	0068                	addi	a0,sp,12
  a2427a:	c602                	sw	zero,12(sp)
  a2427c:	9e1ff0ef          	jal	ra,a23c5c <hal_sfc_get_flash_id>
  a24280:	e901                	bnez	a0,a24290 <sfc_port_fix_sr+0x1a>
  a24282:	4732                	lw	a4,12(sp)
  a24284:	0016 40c8 079f      	l.li	a5,0x1640c8
  a2428a:	00f71463          	bne	a4,a5,a24292 <sfc_port_fix_sr+0x1c>
  a2428e:	2079                	jal	ra,a2431c <sfc_port_fix_sr_gd25q32>
  a24290:	8114                	popret	{ra},32
  a24292:	80000537          	lui	a0,0x80000
  a24296:	0509                	addi	a0,a0,2 # 80000002 <__data_load__+0x7f5d8732>
  a24298:	bfe5                	j	a24290 <sfc_port_fix_sr+0x1a>

00a2429a <sfc_port_gd25q32_read_sr>:
  a2429a:	8078                	push	{ra,s0-s5},-32
  a2429c:	892a                	mv	s2,a0
  a2429e:	448d                	li	s1,3
  a242a0:	4995                	li	s3,5
  a242a2:	03500a13          	li	s4,53
  a242a6:	00a27ab7          	lui	s5,0xa27
  a242aa:	854a                	mv	a0,s2
  a242ac:	f27ff0ef          	jal	ra,a241d2 <sfc_port_read_sr>
  a242b0:	0ff57413          	andi	s0,a0,255
  a242b4:	03391f63          	bne	s2,s3,a242f2 <sfc_port_gd25q32_read_sr+0x58>
  a242b8:	09c47413          	andi	s0,s0,156
  a242bc:	1411                	addi	s0,s0,-28
  a242be:	00143413          	seqz	s0,s0
  a242c2:	4585                	li	a1,1
  a242c4:	46f1                	li	a3,28
  a242c6:	e419                	bnez	s0,a242d4 <sfc_port_gd25q32_read_sr+0x3a>
  a242c8:	0ff57613          	andi	a2,a0,255
  a242cc:	f88a8513          	addi	a0,s5,-120 # a26f88 <g_sfc_protect_cfg+0x4c>
  a242d0:	cf3ff0ef          	jal	ra,a23fc2 <print_str>
  a242d4:	898fe0ef          	jal	ra,a2236c <uapi_tcxo_get_count>
  a242d8:	06400613          	li	a2,100
  a242dc:	4681                	li	a3,0
  a242de:	b62fc0ef          	jal	ra,a20640 <__umoddi3>
  a242e2:	0505                	addi	a0,a0,1
  a242e4:	902fe0ef          	jal	ra,a223e6 <uapi_tcxo_delay_us>
  a242e8:	c805                	beqz	s0,a24318 <sfc_port_gd25q32_read_sr+0x7e>
  a242ea:	14fd                	addi	s1,s1,-1
  a242ec:	fcdd                	bnez	s1,a242aa <sfc_port_gd25q32_read_sr+0x10>
  a242ee:	4501                	li	a0,0
  a242f0:	8074                	popret	{ra,s0-s5},32
  a242f2:	01491a63          	bne	s2,s4,a24306 <sfc_port_gd25q32_read_sr+0x6c>
  a242f6:	04347413          	andi	s0,s0,67
  a242fa:	1479                	addi	s0,s0,-2
  a242fc:	00143413          	seqz	s0,s0
  a24300:	4589                	li	a1,2
  a24302:	4689                	li	a3,2
  a24304:	b7c9                	j	a242c6 <sfc_port_gd25q32_read_sr+0x2c>
  a24306:	06147413          	andi	s0,s0,97
  a2430a:	1401                	addi	s0,s0,-32
  a2430c:	00143413          	seqz	s0,s0
  a24310:	458d                	li	a1,3
  a24312:	02000693          	li	a3,32
  a24316:	bf45                	j	a242c6 <sfc_port_gd25q32_read_sr+0x2c>
  a24318:	557d                	li	a0,-1
  a2431a:	bfd9                	j	a242f0 <sfc_port_gd25q32_read_sr+0x56>

00a2431c <sfc_port_fix_sr_gd25q32>:
  a2431c:	8068                	push	{ra,s0-s4},-32
  a2431e:	4481                	li	s1,0
  a24320:	498d                	li	s3,3
  a24322:	4515                	li	a0,5
  a24324:	f77ff0ef          	jal	ra,a2429a <sfc_port_gd25q32_read_sr>
  a24328:	8a2a                	mv	s4,a0
  a2432a:	03500513          	li	a0,53
  a2432e:	f6dff0ef          	jal	ra,a2429a <sfc_port_gd25q32_read_sr>
  a24332:	892a                	mv	s2,a0
  a24334:	4555                	li	a0,21
  a24336:	f65ff0ef          	jal	ra,a2429a <sfc_port_gd25q32_read_sr>
  a2433a:	842a                	mv	s0,a0
  a2433c:	040a1763          	bnez	s4,a2438a <sfc_port_fix_sr_gd25q32+0x6e>
  a24340:	02090863          	beqz	s2,a24370 <sfc_port_fix_sr_gd25q32+0x54>
  a24344:	4609                	li	a2,2
  a24346:	03100593          	li	a1,49
  a2434a:	4501                	li	a0,0
  a2434c:	e11ff0ef          	jal	ra,a2415c <sfc_port_write_sr>
  a24350:	c419                	beqz	s0,a2435e <sfc_port_fix_sr_gd25q32+0x42>
  a24352:	02000613          	li	a2,32
  a24356:	45c5                	li	a1,17
  a24358:	4501                	li	a0,0
  a2435a:	e03ff0ef          	jal	ra,a2415c <sfc_port_write_sr>
  a2435e:	03c00513          	li	a0,60
  a24362:	0485                	addi	s1,s1,1
  a24364:	832fe0ef          	jal	ra,a22396 <uapi_tcxo_delay_ms>
  a24368:	fb349de3          	bne	s1,s3,a24322 <sfc_port_fix_sr_gd25q32+0x6>
  a2436c:	547d                	li	s0,-1
  a2436e:	a801                	j	a2437e <sfc_port_fix_sr_gd25q32+0x62>
  a24370:	f16d                	bnez	a0,a24352 <sfc_port_fix_sr_gd25q32+0x36>
  a24372:	e881                	bnez	s1,a24382 <sfc_port_fix_sr_gd25q32+0x66>
  a24374:	00a2 6f60 051f      	l.li	a0,0xa26f60
  a2437a:	c49ff0ef          	jal	ra,a23fc2 <print_str>
  a2437e:	8522                	mv	a0,s0
  a24380:	8064                	popret	{ra,s0-s4},32
  a24382:	00a2 6f78 051f      	l.li	a0,0xa26f78
  a24388:	bfcd                	j	a2437a <sfc_port_fix_sr_gd25q32+0x5e>
  a2438a:	4671                	li	a2,28
  a2438c:	4585                	li	a1,1
  a2438e:	4501                	li	a0,0
  a24390:	dcdff0ef          	jal	ra,a2415c <sfc_port_write_sr>
  a24394:	fa090ee3          	beqz	s2,a24350 <sfc_port_fix_sr_gd25q32+0x34>
  a24398:	b775                	j	a24344 <sfc_port_fix_sr_gd25q32+0x28>

00a2439a <build_flash_ctrl>:
  a2439a:	455c                	lw	a5,12(a0)
  a2439c:	04b7859b          	addshf	a1,a5,a1,sll,2
  a243a0:	4194                	lw	a3,0(a1)
  a243a2:	491c                	lw	a5,16(a0)
  a243a4:	04c7861b          	addshf	a2,a5,a2,sll,2
  a243a8:	0076f793          	andi	a5,a3,7
  a243ac:	4218                	lw	a4,0(a2)
  a243ae:	01079bbb          	bnei	a5,1,a243dc <build_flash_ctrl+0x42>
  a243b2:	8b1d                	andi	a4,a4,7
  a243b4:	02f71463          	bne	a4,a5,a243dc <build_flash_ctrl+0x42>
  a243b8:	00a0 6958 079f      	l.li	a5,0xa06958
  a243be:	c3d4                	sw	a3,4(a5)
  a243c0:	4214                	lw	a3,0(a2)
  a243c2:	c7d4                	sw	a3,12(a5)
  a243c4:	4954                	lw	a3,20(a0)
  a243c6:	cb94                	sw	a3,16(a5)
  a243c8:	4154                	lw	a3,4(a0)
  a243ca:	c394                	sw	a3,0(a5)
  a243cc:	4514                	lw	a3,8(a0)
  a243ce:	00d77b63          	bgeu	a4,a3,a243e4 <build_flash_ctrl+0x4a>
  a243d2:	4d18                	lw	a4,24(a0)
  a243d4:	c794                	sw	a3,8(a5)
  a243d6:	4501                	li	a0,0
  a243d8:	cbd8                	sw	a4,20(a5)
  a243da:	8082                	ret
  a243dc:	8000 1346 051f      	l.li	a0,0x80001346
  a243e2:	8082                	ret
  a243e4:	8000 1349 051f      	l.li	a0,0x80001349
  a243ea:	8082                	ret

00a243ec <check_opt_param>:
  a243ec:	00a0 6970 079f      	l.li	a5,0xa06970
  a243f2:	239c                	lbu	a5,0(a5)
  a243f4:	cf99                	beqz	a5,a24412 <check_opt_param+0x26>
  a243f6:	00a0 6958 071f      	l.li	a4,0xa06958
  a243fc:	4318                	lw	a4,0(a4)
  a243fe:	00b507b3          	add	a5,a0,a1
  a24402:	00f76c63          	bltu	a4,a5,a2441a <check_opt_param+0x2e>
  a24406:	00f57a63          	bgeu	a0,a5,a2441a <check_opt_param+0x2e>
  a2440a:	00b7e863          	bltu	a5,a1,a2441a <check_opt_param+0x2e>
  a2440e:	4501                	li	a0,0
  a24410:	8082                	ret
  a24412:	8000 1340 051f      	l.li	a0,0x80001340
  a24418:	8082                	ret
  a2441a:	80000537          	lui	a0,0x80000
  a2441e:	0505                	addi	a0,a0,1 # 80000001 <__data_load__+0x7f5d8731>
  a24420:	8082                	ret

00a24422 <check_init_param>:
  a24422:	8078                	push	{ra,s0-s5},-32
  a24424:	00452a83          	lw	s5,4(a0)
  a24428:	00a07937          	lui	s2,0xa07
  a2442c:	89aa                	mv	s3,a0
  a2442e:	95892403          	lw	s0,-1704(s2) # a06958 <g_flash_ctrl>
  a24432:	00852a03          	lw	s4,8(a0)
  a24436:	c79ff0ef          	jal	ra,a240ae <sfc_port_get_sfc_start_addr>
  a2443a:	00aaf663          	bgeu	s5,a0,a24446 <check_init_param+0x24>
  a2443e:	8000 1342 051f      	l.li	a0,0x80001342
  a24444:	8074                	popret	{ra,s0-s5},32
  a24446:	95890913          	addi	s2,s2,-1704
  a2444a:	008a7363          	bgeu	s4,s0,a24450 <check_init_param+0x2e>
  a2444e:	8452                	mv	s0,s4
  a24450:	0049a483          	lw	s1,4(s3)
  a24454:	14fd                	addi	s1,s1,-1
  a24456:	94a2                	add	s1,s1,s0
  a24458:	c5dff0ef          	jal	ra,a240b4 <sfc_port_get_sfc_end_addr>
  a2445c:	fe9561e3          	bltu	a0,s1,a2443e <check_init_param+0x1c>
  a24460:	00892023          	sw	s0,0(s2)
  a24464:	4501                	li	a0,0
  a24466:	bff9                	j	a24444 <check_init_param+0x22>

00a24468 <uapi_sfc_init>:
  a24468:	00a077b7          	lui	a5,0xa07
  a2446c:	9707c703          	lbu	a4,-1680(a5) # a06970 <g_sfc_inited>
  a24470:	ef59                	bnez	a4,a2450e <uapi_sfc_init+0xa6>
  a24472:	8258                	push	{ra,s0-s3},-64
  a24474:	842a                	mv	s0,a0
  a24476:	97078913          	addi	s2,a5,-1680
  a2447a:	c7fff0ef          	jal	ra,a240f8 <sfc_port_lock_init>
  a2447e:	0868                	addi	a0,sp,28
  a24480:	fdcff0ef          	jal	ra,a23c5c <hal_sfc_get_flash_id>
  a24484:	e151                	bnez	a0,a24508 <uapi_sfc_init+0xa0>
  a24486:	200c                	lbu	a1,0(s0)
  a24488:	3010                	lbu	a2,1(s0)
  a2448a:	49f2                	lw	s3,28(sp)
  a2448c:	c62e                	sw	a1,12(sp)
  a2448e:	c432                	sw	a2,8(sp)
  a24490:	c0bff0ef          	jal	ra,a2409a <sfc_port_get_flash_spi_infos>
  a24494:	84aa                	mv	s1,a0
  a24496:	c0dff0ef          	jal	ra,a240a2 <sfc_port_get_flash_num>
  a2449a:	4622                	lw	a2,8(sp)
  a2449c:	45b2                	lw	a1,12(sp)
  a2449e:	86aa                	mv	a3,a0
  a244a0:	87a6                	mv	a5,s1
  a244a2:	4701                	li	a4,0
  a244a4:	04e69963          	bne	a3,a4,a244f6 <uapi_sfc_init+0x8e>
  a244a8:	bffff0ef          	jal	ra,a240a6 <sfc_port_get_unknown_flash_info>
  a244ac:	4605                	li	a2,1
  a244ae:	4581                	li	a1,0
  a244b0:	eebff0ef          	jal	ra,a2439a <build_flash_ctrl>
  a244b4:	e931                	bnez	a0,a24508 <uapi_sfc_init+0xa0>
  a244b6:	00a0 6971 079f      	l.li	a5,0xa06971
  a244bc:	4705                	li	a4,1
  a244be:	a398                	sb	a4,0(a5)
  a244c0:	8522                	mv	a0,s0
  a244c2:	f61ff0ef          	jal	ra,a24422 <check_init_param>
  a244c6:	e129                	bnez	a0,a24508 <uapi_sfc_init+0xa0>
  a244c8:	00a07537          	lui	a0,0xa07
  a244cc:	95852603          	lw	a2,-1704(a0) # a06958 <g_flash_ctrl>
  a244d0:	404c                	lw	a1,4(s0)
  a244d2:	95850513          	addi	a0,a0,-1704
  a244d6:	fcaff0ef          	jal	ra,a23ca0 <hal_sfc_init>
  a244da:	e51d                	bnez	a0,a24508 <uapi_sfc_init+0xa0>
  a244dc:	4785                	li	a5,1
  a244de:	00f90023          	sb	a5,0(s2)
  a244e2:	00a0 6971 079f      	l.li	a5,0xa06971
  a244e8:	239c                	lbu	a5,0(a5)
  a244ea:	4501                	li	a0,0
  a244ec:	cf91                	beqz	a5,a24508 <uapi_sfc_init+0xa0>
  a244ee:	8000 1341 051f      	l.li	a0,0x80001341
  a244f4:	a811                	j	a24508 <uapi_sfc_init+0xa0>
  a244f6:	853e                	mv	a0,a5
  a244f8:	07f1                	addi	a5,a5,28
  a244fa:	fe47a803          	lw	a6,-28(a5)
  a244fe:	01099663          	bne	s3,a6,a2450a <uapi_sfc_init+0xa2>
  a24502:	e99ff0ef          	jal	ra,a2439a <build_flash_ctrl>
  a24506:	dd4d                	beqz	a0,a244c0 <uapi_sfc_init+0x58>
  a24508:	8254                	popret	{ra,s0-s3},64
  a2450a:	0705                	addi	a4,a4,1 # 400001 <g_intheap_size+0x3e6aa1>
  a2450c:	bf61                	j	a244a4 <uapi_sfc_init+0x3c>
  a2450e:	4501                	li	a0,0
  a24510:	8082                	ret

00a24512 <uapi_sfc_reg_read>:
  a24512:	8188                	push	{ra,s0-s6},-48
  a24514:	8a2e                	mv	s4,a1
  a24516:	85b2                	mv	a1,a2
  a24518:	892a                	mv	s2,a0
  a2451a:	84b2                	mv	s1,a2
  a2451c:	ed1ff0ef          	jal	ra,a243ec <check_opt_param>
  a24520:	e13d                	bnez	a0,a24586 <uapi_sfc_reg_read+0x74>
  a24522:	bd9ff0ef          	jal	ra,a240fa <sfc_port_lock>
  a24526:	00397b13          	andi	s6,s2,3
  a2452a:	8aaa                	mv	s5,a0
  a2452c:	060b0263          	beqz	s6,a24590 <uapi_sfc_reg_read+0x7e>
  a24530:	4791                	li	a5,4
  a24532:	416787b3          	sub	a5,a5,s6
  a24536:	41690933          	sub	s2,s2,s6
  a2453a:	0ff4f993          	andi	s3,s1,255
  a2453e:	00f4e763          	bltu	s1,a5,a2454c <uapi_sfc_reg_read+0x3a>
  a24542:	4991                	li	s3,4
  a24544:	416989b3          	sub	s3,s3,s6
  a24548:	0ff9f993          	andi	s3,s3,255
  a2454c:	00a0 6958 079f      	l.li	a5,0xa06958
  a24552:	43d4                	lw	a3,4(a5)
  a24554:	4611                	li	a2,4
  a24556:	006c                	addi	a1,sp,12
  a24558:	854a                	mv	a0,s2
  a2455a:	c602                	sw	zero,12(sp)
  a2455c:	827ff0ef          	jal	ra,a23d82 <hal_sfc_reg_read>
  a24560:	842a                	mv	s0,a0
  a24562:	ed11                	bnez	a0,a2457e <uapi_sfc_reg_read+0x6c>
  a24564:	007c                	addi	a5,sp,12
  a24566:	86ce                	mv	a3,s3
  a24568:	01678633          	add	a2,a5,s6
  a2456c:	85ce                	mv	a1,s3
  a2456e:	8552                	mv	a0,s4
  a24570:	6ff000ef          	jal	ra,a2546e <memcpy_s>
  a24574:	c911                	beqz	a0,a24588 <uapi_sfc_reg_read+0x76>
  a24576:	80000537          	lui	a0,0x80000
  a2457a:	00450413          	addi	s0,a0,4 # 80000004 <__data_load__+0x7f5d8734>
  a2457e:	8556                	mv	a0,s5
  a24580:	b7fff0ef          	jal	ra,a240fe <sfc_port_unlock>
  a24584:	8522                	mv	a0,s0
  a24586:	8184                	popret	{ra,s0-s6},48
  a24588:	0911                	addi	s2,s2,4
  a2458a:	9a4e                	add	s4,s4,s3
  a2458c:	413484b3          	sub	s1,s1,s3
  a24590:	ffc4f993          	andi	s3,s1,-4
  a24594:	02098163          	beqz	s3,a245b6 <uapi_sfc_reg_read+0xa4>
  a24598:	00a0 6958 079f      	l.li	a5,0xa06958
  a2459e:	43d4                	lw	a3,4(a5)
  a245a0:	864e                	mv	a2,s3
  a245a2:	85d2                	mv	a1,s4
  a245a4:	854a                	mv	a0,s2
  a245a6:	fdcff0ef          	jal	ra,a23d82 <hal_sfc_reg_read>
  a245aa:	842a                	mv	s0,a0
  a245ac:	f969                	bnez	a0,a2457e <uapi_sfc_reg_read+0x6c>
  a245ae:	9a4e                	add	s4,s4,s3
  a245b0:	994e                	add	s2,s2,s3
  a245b2:	413484b3          	sub	s1,s1,s3
  a245b6:	4401                	li	s0,0
  a245b8:	d0f9                	beqz	s1,a2457e <uapi_sfc_reg_read+0x6c>
  a245ba:	00a0 6958 079f      	l.li	a5,0xa06958
  a245c0:	43d4                	lw	a3,4(a5)
  a245c2:	4611                	li	a2,4
  a245c4:	006c                	addi	a1,sp,12
  a245c6:	854a                	mv	a0,s2
  a245c8:	c602                	sw	zero,12(sp)
  a245ca:	fb8ff0ef          	jal	ra,a23d82 <hal_sfc_reg_read>
  a245ce:	842a                	mv	s0,a0
  a245d0:	86a6                	mv	a3,s1
  a245d2:	0070                	addi	a2,sp,12
  a245d4:	85a6                	mv	a1,s1
  a245d6:	8552                	mv	a0,s4
  a245d8:	697000ef          	jal	ra,a2546e <memcpy_s>
  a245dc:	d14d                	beqz	a0,a2457e <uapi_sfc_reg_read+0x6c>
  a245de:	80000437          	lui	s0,0x80000
  a245e2:	0411                	addi	s0,s0,4 # 80000004 <__data_load__+0x7f5d8734>
  a245e4:	bf69                	j	a2457e <uapi_sfc_reg_read+0x6c>

00a245e6 <uapi_sfc_reg_write>:
  a245e6:	8198                	push	{ra,s0-s7},-64
  a245e8:	8a2e                	mv	s4,a1
  a245ea:	85b2                	mv	a1,a2
  a245ec:	84aa                	mv	s1,a0
  a245ee:	8932                	mv	s2,a2
  a245f0:	dfdff0ef          	jal	ra,a243ec <check_opt_param>
  a245f4:	842a                	mv	s0,a0
  a245f6:	e571                	bnez	a0,a246c2 <uapi_sfc_reg_write+0xdc>
  a245f8:	012485b3          	add	a1,s1,s2
  a245fc:	8526                	mv	a0,s1
  a245fe:	c07ff0ef          	jal	ra,a24204 <sfc_port_write_lock>
  a24602:	0034fa93          	andi	s5,s1,3
  a24606:	8b2a                	mv	s6,a0
  a24608:	060a8863          	beqz	s5,a24678 <uapi_sfc_reg_write+0x92>
  a2460c:	4791                	li	a5,4
  a2460e:	415787b3          	sub	a5,a5,s5
  a24612:	415484b3          	sub	s1,s1,s5
  a24616:	0ff97993          	andi	s3,s2,255
  a2461a:	00f96763          	bltu	s2,a5,a24628 <uapi_sfc_reg_write+0x42>
  a2461e:	4991                	li	s3,4
  a24620:	415989b3          	sub	s3,s3,s5
  a24624:	0ff9f993          	andi	s3,s3,255
  a24628:	00a0 6958 0b9f      	l.li	s7,0xa06958
  a2462e:	004ba683          	lw	a3,4(s7) # ffe00004 <__data_load__+0xff3d8734>
  a24632:	4611                	li	a2,4
  a24634:	006c                	addi	a1,sp,12
  a24636:	8526                	mv	a0,s1
  a24638:	f4aff0ef          	jal	ra,a23d82 <hal_sfc_reg_read>
  a2463c:	842a                	mv	s0,a0
  a2463e:	ed09                	bnez	a0,a24658 <uapi_sfc_reg_write+0x72>
  a24640:	007c                	addi	a5,sp,12
  a24642:	86ce                	mv	a3,s3
  a24644:	8652                	mv	a2,s4
  a24646:	85ce                	mv	a1,s3
  a24648:	01578533          	add	a0,a5,s5
  a2464c:	623000ef          	jal	ra,a2546e <memcpy_s>
  a24650:	c901                	beqz	a0,a24660 <uapi_sfc_reg_write+0x7a>
  a24652:	80000437          	lui	s0,0x80000
  a24656:	0411                	addi	s0,s0,4 # 80000004 <__data_load__+0x7f5d8734>
  a24658:	855a                	mv	a0,s6
  a2465a:	c03ff0ef          	jal	ra,a2425c <sfc_port_write_unlock>
  a2465e:	a095                	j	a246c2 <uapi_sfc_reg_write+0xdc>
  a24660:	00cba683          	lw	a3,12(s7)
  a24664:	8526                	mv	a0,s1
  a24666:	4611                	li	a2,4
  a24668:	006c                	addi	a1,sp,12
  a2466a:	fa4ff0ef          	jal	ra,a23e0e <hal_sfc_reg_write>
  a2466e:	842a                	mv	s0,a0
  a24670:	0491                	addi	s1,s1,4
  a24672:	9a4e                	add	s4,s4,s3
  a24674:	41390933          	sub	s2,s2,s3
  a24678:	ffc97993          	andi	s3,s2,-4
  a2467c:	fc71                	bnez	s0,a24658 <uapi_sfc_reg_write+0x72>
  a2467e:	02098063          	beqz	s3,a2469e <uapi_sfc_reg_write+0xb8>
  a24682:	00a0 6958 079f      	l.li	a5,0xa06958
  a24688:	47d4                	lw	a3,12(a5)
  a2468a:	85d2                	mv	a1,s4
  a2468c:	8526                	mv	a0,s1
  a2468e:	864e                	mv	a2,s3
  a24690:	f7eff0ef          	jal	ra,a23e0e <hal_sfc_reg_write>
  a24694:	9a4e                	add	s4,s4,s3
  a24696:	94ce                	add	s1,s1,s3
  a24698:	41390933          	sub	s2,s2,s3
  a2469c:	e131                	bnez	a0,a246e0 <uapi_sfc_reg_write+0xfa>
  a2469e:	fa090de3          	beqz	s2,a24658 <uapi_sfc_reg_write+0x72>
  a246a2:	00a0 6958 041f      	l.li	s0,0xa06958
  a246a8:	4054                	lw	a3,4(s0)
  a246aa:	4611                	li	a2,4
  a246ac:	006c                	addi	a1,sp,12
  a246ae:	8526                	mv	a0,s1
  a246b0:	ed2ff0ef          	jal	ra,a23d82 <hal_sfc_reg_read>
  a246b4:	c909                	beqz	a0,a246c6 <uapi_sfc_reg_write+0xe0>
  a246b6:	855a                	mv	a0,s6
  a246b8:	80000437          	lui	s0,0x80000
  a246bc:	ba1ff0ef          	jal	ra,a2425c <sfc_port_write_unlock>
  a246c0:	0411                	addi	s0,s0,4 # 80000004 <__data_load__+0x7f5d8734>
  a246c2:	8522                	mv	a0,s0
  a246c4:	8194                	popret	{ra,s0-s7},64
  a246c6:	86ca                	mv	a3,s2
  a246c8:	8652                	mv	a2,s4
  a246ca:	4591                	li	a1,4
  a246cc:	0068                	addi	a0,sp,12
  a246ce:	5a1000ef          	jal	ra,a2546e <memcpy_s>
  a246d2:	f175                	bnez	a0,a246b6 <uapi_sfc_reg_write+0xd0>
  a246d4:	4454                	lw	a3,12(s0)
  a246d6:	4611                	li	a2,4
  a246d8:	006c                	addi	a1,sp,12
  a246da:	8526                	mv	a0,s1
  a246dc:	f32ff0ef          	jal	ra,a23e0e <hal_sfc_reg_write>
  a246e0:	842a                	mv	s0,a0
  a246e2:	bf9d                	j	a24658 <uapi_sfc_reg_write+0x72>

00a246e4 <uapi_sfc_reg_erase>:
  a246e4:	80a8                	push	{ra,s0-s8},-48
  a246e6:	892a                	mv	s2,a0
  a246e8:	842e                	mv	s0,a1
  a246ea:	d03ff0ef          	jal	ra,a243ec <check_opt_param>
  a246ee:	e921                	bnez	a0,a2473e <uapi_sfc_reg_erase+0x5a>
  a246f0:	008905b3          	add	a1,s2,s0
  a246f4:	77fd                	lui	a5,0xfffff
  a246f6:	01459713          	slli	a4,a1,0x14
  a246fa:	00f974b3          	and	s1,s2,a5
  a246fe:	cf41                	beqz	a4,a24796 <uapi_sfc_reg_erase+0xb2>
  a24700:	8fed                	and	a5,a5,a1
  a24702:	6705                	lui	a4,0x1
  a24704:	80000537          	lui	a0,0x80000
  a24708:	97ba                	add	a5,a5,a4
  a2470a:	0505                	addi	a0,a0,1 # 80000001 <__data_load__+0x7f5d8731>
  a2470c:	02991963          	bne	s2,s1,a2473e <uapi_sfc_reg_erase+0x5a>
  a24710:	02f59763          	bne	a1,a5,a2473e <uapi_sfc_reg_erase+0x5a>
  a24714:	8526                	mv	a0,s1
  a24716:	40958a33          	sub	s4,a1,s1
  a2471a:	6b11                	lui	s6,0x4
  a2471c:	ae9ff0ef          	jal	ra,a24204 <sfc_port_write_lock>
  a24720:	8c2a                	mv	s8,a0
  a24722:	4901                	li	s2,0
  a24724:	4981                	li	s3,0
  a24726:	4a81                	li	s5,0
  a24728:	00a0 6958 0b9f      	l.li	s7,0xa06958
  a2472e:	1b7d                	addi	s6,s6,-1 # 3fff <ccause+0x303d>
  a24730:	040a1d63          	bnez	s4,a2478a <uapi_sfc_reg_erase+0xa6>
  a24734:	4401                	li	s0,0
  a24736:	8562                	mv	a0,s8
  a24738:	b25ff0ef          	jal	ra,a2425c <sfc_port_write_unlock>
  a2473c:	8522                	mv	a0,s0
  a2473e:	80a4                	popret	{ra,s0-s8},48
  a24740:	010ba703          	lw	a4,16(s7)
  a24744:	04f7071b          	addshf	a4,a4,a5,sll,2
  a24748:	00072903          	lw	s2,0(a4) # 1000 <ccause+0x3e>
  a2474c:	00e95993          	srli	s3,s2,0xe
  a24750:	8ace                	mv	s5,s3
  a24752:	013a6663          	bltu	s4,s3,a2475e <uapi_sfc_reg_erase+0x7a>
  a24756:	fff98713          	addi	a4,s3,-1
  a2475a:	8f65                	and	a4,a4,s1
  a2475c:	cb01                	beqz	a4,a2476c <uapi_sfc_reg_erase+0x88>
  a2475e:	0785                	addi	a5,a5,1 # fffff001 <__data_load__+0xff5d7731>
  a24760:	008ba703          	lw	a4,8(s7)
  a24764:	fce7eee3          	bltu	a5,a4,a24740 <uapi_sfc_reg_erase+0x5c>
  a24768:	02e78363          	beq	a5,a4,a2478e <uapi_sfc_reg_erase+0xaa>
  a2476c:	01697933          	and	s2,s2,s6
  a24770:	1d39291b          	orshf	s2,s2,s3,sll,14
  a24774:	4601                	li	a2,0
  a24776:	85ca                	mv	a1,s2
  a24778:	8526                	mv	a0,s1
  a2477a:	ef4ff0ef          	jal	ra,a23e6e <hal_sfc_reg_erase>
  a2477e:	842a                	mv	s0,a0
  a24780:	f95d                	bnez	a0,a24736 <uapi_sfc_reg_erase+0x52>
  a24782:	415a0a33          	sub	s4,s4,s5
  a24786:	94d6                	add	s1,s1,s5
  a24788:	b765                	j	a24730 <uapi_sfc_reg_erase+0x4c>
  a2478a:	4785                	li	a5,1
  a2478c:	bfd1                	j	a24760 <uapi_sfc_reg_erase+0x7c>
  a2478e:	8000 1347 041f      	l.li	s0,0x80001347
  a24794:	b74d                	j	a24736 <uapi_sfc_reg_erase+0x52>
  a24796:	f6990fe3          	beq	s2,s1,a24714 <uapi_sfc_reg_erase+0x30>
  a2479a:	80000537          	lui	a0,0x80000
  a2479e:	0505                	addi	a0,a0,1 # 80000001 <__data_load__+0x7f5d8731>
  a247a0:	bf79                	j	a2473e <uapi_sfc_reg_erase+0x5a>

00a247a2 <uapi_sfc_reg_erase_chip>:
  a247a2:	8038                	push	{ra,s0-s1},-16
  a247a4:	00a0 6970 079f      	l.li	a5,0xa06970
  a247aa:	239c                	lbu	a5,0(a5)
  a247ac:	c795                	beqz	a5,a247d8 <uapi_sfc_reg_erase_chip+0x36>
  a247ae:	004005b7          	lui	a1,0x400
  a247b2:	4501                	li	a0,0
  a247b4:	a51ff0ef          	jal	ra,a24204 <sfc_port_write_lock>
  a247b8:	00a0 6958 079f      	l.li	a5,0xa06958
  a247be:	4b9c                	lw	a5,16(a5)
  a247c0:	84aa                	mv	s1,a0
  a247c2:	4605                	li	a2,1
  a247c4:	438c                	lw	a1,0(a5)
  a247c6:	4501                	li	a0,0
  a247c8:	ea6ff0ef          	jal	ra,a23e6e <hal_sfc_reg_erase>
  a247cc:	842a                	mv	s0,a0
  a247ce:	8526                	mv	a0,s1
  a247d0:	a8dff0ef          	jal	ra,a2425c <sfc_port_write_unlock>
  a247d4:	8522                	mv	a0,s0
  a247d6:	8034                	popret	{ra,s0-s1},16
  a247d8:	8000 1340 041f      	l.li	s0,0x80001340
  a247de:	bfdd                	j	a247d4 <uapi_sfc_reg_erase_chip+0x32>

00a247e0 <efuse_read_item.part.1>:
  a247e0:	8188                	push	{ra,s0-s6},-48
  a247e2:	00a2 6fb0 079f      	l.li	a5,0xa26fb0
  a247e8:	06a7955b          	muliadd	a0,a5,a0,6
  a247ec:	2126                	lhu	s1,2(a0)
  a247ee:	00748a13          	addi	s4,s1,7
  a247f2:	003a5a13          	srli	s4,s4,0x3
  a247f6:	07466f63          	bltu	a2,s4,a24874 <efuse_read_item.part.1+0x94>
  a247fa:	00055903          	lhu	s2,0(a0)
  a247fe:	86b2                	mv	a3,a2
  a24800:	89ae                	mv	s3,a1
  a24802:	4601                	li	a2,0
  a24804:	85b6                	mv	a1,a3
  a24806:	854e                	mv	a0,s3
  a24808:	49f000ef          	jal	ra,a254a6 <memset_s>
  a2480c:	009967b3          	or	a5,s2,s1
  a24810:	8b9d                	andi	a5,a5,7
  a24812:	844a                	mv	s0,s2
  a24814:	cb91                	beqz	a5,a24828 <efuse_read_item.part.1+0x48>
  a24816:	6a41                	lui	s4,0x10
  a24818:	94ca                	add	s1,s1,s2
  a2481a:	4aa1                	li	s5,8
  a2481c:	1a7d                	addi	s4,s4,-1 # ffff <ccause+0xf03d>
  a2481e:	4b05                	li	s6,1
  a24820:	00944b63          	blt	s0,s1,a24836 <efuse_read_item.part.1+0x56>
  a24824:	4501                	li	a0,0
  a24826:	a039                	j	a24834 <efuse_read_item.part.1+0x54>
  a24828:	8652                	mv	a2,s4
  a2482a:	00395593          	srli	a1,s2,0x3
  a2482e:	854e                	mv	a0,s3
  a24830:	a9afe0ef          	jal	ra,a22aca <uapi_efuse_read_buffer>
  a24834:	8184                	popret	{ra,s0-s6},48
  a24836:	00747613          	andi	a2,s0,7
  a2483a:	00345593          	srli	a1,s0,0x3
  a2483e:	00f10513          	addi	a0,sp,15
  a24842:	a32fe0ef          	jal	ra,a22a74 <uapi_efuse_read_bit>
  a24846:	f57d                	bnez	a0,a24834 <efuse_read_item.part.1+0x54>
  a24848:	00f14783          	lbu	a5,15(sp)
  a2484c:	c38d                	beqz	a5,a2486e <efuse_read_item.part.1+0x8e>
  a2484e:	412407b3          	sub	a5,s0,s2
  a24852:	0357c733          	div	a4,a5,s5
  a24856:	0357e7b3          	rem	a5,a5,s5
  a2485a:	01477733          	and	a4,a4,s4
  a2485e:	974e                	add	a4,a4,s3
  a24860:	2314                	lbu	a3,0(a4)
  a24862:	0147f7b3          	and	a5,a5,s4
  a24866:	00fb17b3          	sll	a5,s6,a5
  a2486a:	8fd5                	or	a5,a5,a3
  a2486c:	a31c                	sb	a5,0(a4)
  a2486e:	0405                	addi	s0,s0,1
  a24870:	9c21                	uxth	s0
  a24872:	b77d                	j	a24820 <efuse_read_item.part.1+0x40>
  a24874:	557d                	li	a0,-1
  a24876:	bf7d                	j	a24834 <efuse_read_item.part.1+0x54>

00a24878 <efuse_port_register_hal_funcs>:
  a24878:	8018                	push	{ra},-16
  a2487a:	d16fe0ef          	jal	ra,a22d90 <hal_efuse_funcs_get>
  a2487e:	8010                	pop	{ra},16
  a24880:	b1efe06f          	j	a22b9e <hal_efuse_register_funcs>

00a24884 <hal_efuse_get_region>:
  a24884:	8121                	srli	a0,a0,0x8
  a24886:	9d01                	uxtb	a0
  a24888:	8082                	ret

00a2488a <hal_efuse_get_byte_offset>:
  a2488a:	9d01                	uxtb	a0
  a2488c:	8082                	ret

00a2488e <efuse_read_item>:
  a2488e:	c589                	beqz	a1,a24898 <efuse_read_item+0xa>
  a24890:	1305723b          	bgeui	a0,19,a24898 <efuse_read_item+0xa>
  a24894:	f4dff06f          	j	a247e0 <efuse_read_item.part.1>
  a24898:	557d                	li	a0,-1
  a2489a:	8082                	ret

00a2489c <set_efuse_period>:
  a2489c:	8018                	push	{ra},-16
  a2489e:	2895                	jal	ra,a24912 <get_tcxo_freq>
  a248a0:	010513bb          	bnei	a0,1,a248ae <set_efuse_period+0x12>
  a248a4:	02900513          	li	a0,41
  a248a8:	8010                	pop	{ra},16
  a248aa:	cdcfe06f          	j	a22d86 <hal_efuse_set_clock_period>
  a248ae:	4565                	li	a0,25
  a248b0:	bfe5                	j	a248a8 <set_efuse_period+0xc>

00a248b2 <malloc_port>:
  a248b2:	fa4fd06f          	j	a22056 <malloc>

00a248b6 <malloc_port_init>:
  a248b6:	8118                	push	{ra},-32
  a248b8:	00a2 1f7c 079f      	l.li	a5,0xa21f7c
  a248be:	c23e                	sw	a5,4(sp)
  a248c0:	00a2 208c 079f      	l.li	a5,0xa2208c
  a248c6:	c63e                	sw	a5,12(sp)
  a248c8:	0048                	addi	a0,sp,4
  a248ca:	00a2 48b2 079f      	l.li	a5,0xa248b2
  a248d0:	c43e                	sw	a5,8(sp)
  a248d2:	e56fd0ef          	jal	ra,a21f28 <malloc_register_funcs>
  a248d6:	00a07537          	lui	a0,0xa07
  a248da:	0001 9560 079f      	l.li	a5,0x19560
  a248e0:	aa050593          	addi	a1,a0,-1376 # a06aa0 <__boot_uart_end__>
  a248e4:	95be                	add	a1,a1,a5
  a248e6:	aa050513          	addi	a0,a0,-1376
  a248ea:	e92fd0ef          	jal	ra,a21f7c <malloc_init>
  a248ee:	8114                	popret	{ra},32

00a248f0 <reboot_port_reboot_chip>:
  a248f0:	8018                	push	{ra},-16
  a248f2:	90cfe0ef          	jal	ra,a229fe <uapi_watchdog_deinit>
  a248f6:	0000 0bb8 051f      	l.li	a0,0xbb8
  a248fc:	aebfd0ef          	jal	ra,a223e6 <uapi_tcxo_delay_us>
  a24900:	40002737          	lui	a4,0x40002
  a24904:	11072783          	lw	a5,272(a4) # 40002110 <__data_load__+0x3f5da840>
  a24908:	0047e793          	ori	a5,a5,4
  a2490c:	10f72823          	sw	a5,272(a4)
  a24910:	8014                	popret	{ra},16

00a24912 <get_tcxo_freq>:
  a24912:	400007b7          	lui	a5,0x40000
  a24916:	4bc8                	lw	a0,20(a5)
  a24918:	8905                	andi	a0,a0,1
  a2491a:	8082                	ret

00a2491c <boot_clock_adapt>:
  a2491c:	8028                	push	{ra,s0},-16
  a2491e:	ff5ff0ef          	jal	ra,a24912 <get_tcxo_freq>
  a24922:	010518bb          	bnei	a0,1,a24944 <boot_clock_adapt+0x28>
  a24926:	016e3437          	lui	s0,0x16e3
  a2492a:	60040593          	addi	a1,s0,1536 # 16e3600 <__data_load__+0xcbbd30>
  a2492e:	4501                	li	a0,0
  a24930:	e6aff0ef          	jal	ra,a23f9a <uart_port_set_clock_value>
  a24934:	4561                	li	a0,24
  a24936:	f28ff0ef          	jal	ra,a2405e <tcxo_porting_ticks_per_usec_set>
  a2493a:	60040513          	addi	a0,s0,1536
  a2493e:	8020                	pop	{ra,s0},16
  a24940:	f3aff06f          	j	a2407a <watchdog_port_set_clock>
  a24944:	02626437          	lui	s0,0x2626
  a24948:	a0040593          	addi	a1,s0,-1536 # 2625a00 <__data_load__+0x1bfe130>
  a2494c:	4501                	li	a0,0
  a2494e:	e4cff0ef          	jal	ra,a23f9a <uart_port_set_clock_value>
  a24952:	02800513          	li	a0,40
  a24956:	f08ff0ef          	jal	ra,a2405e <tcxo_porting_ticks_per_usec_set>
  a2495a:	a0040513          	addi	a0,s0,-1536
  a2495e:	b7c5                	j	a2493e <boot_clock_adapt+0x22>

00a24960 <switch_flash_clock_to_pll>:
  a24960:	8028                	push	{ra,s0},-16
  a24962:	40003437          	lui	s0,0x40003
  a24966:	4785                	li	a5,1
  a24968:	4af42223          	sw	a5,1188(s0) # 400034a4 <__data_load__+0x3f5dbbd4>
  a2496c:	4505                	li	a0,1
  a2496e:	a79fd0ef          	jal	ra,a223e6 <uapi_tcxo_delay_us>
  a24972:	478d                	li	a5,3
  a24974:	4af42223          	sw	a5,1188(s0)
  a24978:	44001737          	lui	a4,0x44001
  a2497c:	13472783          	lw	a5,308(a4) # 44001134 <__data_load__+0x435d9864>
  a24980:	000406b7          	lui	a3,0x40
  a24984:	8fd5                	or	a5,a5,a3
  a24986:	12f72a23          	sw	a5,308(a4)
  a2498a:	8024                	popret	{ra,s0},16

00a2498c <config_sfc_ctrl_ds>:
  a2498c:	4400e7b7          	lui	a5,0x4400e
  a24990:	8687a703          	lw	a4,-1944(a5) # 4400d868 <__data_load__+0x435e5f98>
  a24994:	f8f77713          	andi	a4,a4,-113
  a24998:	03076713          	ori	a4,a4,48
  a2499c:	86e7a423          	sw	a4,-1944(a5)
  a249a0:	86c7a703          	lw	a4,-1940(a5)
  a249a4:	f8f77713          	andi	a4,a4,-113
  a249a8:	02076713          	ori	a4,a4,32
  a249ac:	86e7a623          	sw	a4,-1940(a5)
  a249b0:	8707a703          	lw	a4,-1936(a5)
  a249b4:	f8f77713          	andi	a4,a4,-113
  a249b8:	02076713          	ori	a4,a4,32
  a249bc:	86e7a823          	sw	a4,-1936(a5)
  a249c0:	8747a703          	lw	a4,-1932(a5)
  a249c4:	f8f77713          	andi	a4,a4,-113
  a249c8:	02076713          	ori	a4,a4,32
  a249cc:	86e7aa23          	sw	a4,-1932(a5)
  a249d0:	8787a703          	lw	a4,-1928(a5)
  a249d4:	f8f77713          	andi	a4,a4,-113
  a249d8:	02076713          	ori	a4,a4,32
  a249dc:	86e7ac23          	sw	a4,-1928(a5)
  a249e0:	87c7a703          	lw	a4,-1924(a5)
  a249e4:	f8f77713          	andi	a4,a4,-113
  a249e8:	02076713          	ori	a4,a4,32
  a249ec:	86e7ae23          	sw	a4,-1924(a5)
  a249f0:	8082                	ret

00a249f2 <udelay>:
  a249f2:	9f5fd06f          	j	a223e6 <uapi_tcxo_delay_us>

00a249f6 <mdelay>:
  a249f6:	9a1fd06f          	j	a22396 <uapi_tcxo_delay_ms>

00a249fa <serial_putc>:
  a249fa:	8118                	push	{ra},-32
  a249fc:	00a0 6973 079f      	l.li	a5,0xa06973
  a24a02:	239c                	lbu	a5,0(a5)
  a24a04:	00a107a3          	sb	a0,15(sp)
  a24a08:	eb81                	bnez	a5,a24a18 <serial_putc+0x1e>
  a24a0a:	4689                	li	a3,2
  a24a0c:	4605                	li	a2,1
  a24a0e:	00f10593          	addi	a1,sp,15
  a24a12:	4501                	li	a0,0
  a24a14:	e0dfd0ef          	jal	ra,a22820 <uapi_uart_write>
  a24a18:	8114                	popret	{ra},32

00a24a1a <serial_puts>:
  a24a1a:	00a0 6973 079f      	l.li	a5,0xa06973
  a24a20:	239c                	lbu	a5,0(a5)
  a24a22:	ef89                	bnez	a5,a24a3c <serial_puts+0x22>
  a24a24:	8118                	push	{ra},-32
  a24a26:	c62a                	sw	a0,12(sp)
  a24a28:	b84fc0ef          	jal	ra,a20dac <strlen>
  a24a2c:	45b2                	lw	a1,12(sp)
  a24a2e:	862a                	mv	a2,a0
  a24a30:	7d000693          	li	a3,2000
  a24a34:	4501                	li	a0,0
  a24a36:	8110                	pop	{ra},32
  a24a38:	de9fd06f          	j	a22820 <uapi_uart_write>
  a24a3c:	8082                	ret

00a24a3e <serial_put_buf>:
  a24a3e:	00a0 6973 079f      	l.li	a5,0xa06973
  a24a44:	239c                	lbu	a5,0(a5)
  a24a46:	862e                	mv	a2,a1
  a24a48:	e799                	bnez	a5,a24a56 <serial_put_buf+0x18>
  a24a4a:	85aa                	mv	a1,a0
  a24a4c:	7d000693          	li	a3,2000
  a24a50:	4501                	li	a0,0
  a24a52:	dcffd06f          	j	a22820 <uapi_uart_write>
  a24a56:	8082                	ret

00a24a58 <serial_getc>:
  a24a58:	8118                	push	{ra},-32
  a24a5a:	4689                	li	a3,2
  a24a5c:	4605                	li	a2,1
  a24a5e:	00f10593          	addi	a1,sp,15
  a24a62:	4501                	li	a0,0
  a24a64:	000107a3          	sb	zero,15(sp)
  a24a68:	e2bfd0ef          	jal	ra,a22892 <uapi_uart_read>
  a24a6c:	00f14503          	lbu	a0,15(sp)
  a24a70:	8114                	popret	{ra},32

00a24a72 <serial_puthex>:
  a24a72:	00a0 6973 079f      	l.li	a5,0xa06973
  a24a78:	239c                	lbu	a5,0(a5)
  a24a7a:	efa9                	bnez	a5,a24ad4 <serial_puthex+0x62>
  a24a7c:	8098                	push	{ra,s0-s7},-48
  a24a7e:	84aa                	mv	s1,a0
  a24a80:	00a2 702c 051f      	l.li	a0,0xa2702c
  a24a86:	8a2e                	mv	s4,a1
  a24a88:	4401                	li	s0,0
  a24a8a:	f91ff0ef          	jal	ra,a24a1a <serial_puts>
  a24a8e:	4901                	li	s2,0
  a24a90:	4aa5                	li	s5,9
  a24a92:	4b1d                	li	s6,7
  a24a94:	03000b93          	li	s7,48
  a24a98:	49a1                	li	s3,8
  a24a9a:	01c4d713          	srli	a4,s1,0x1c
  a24a9e:	0ff77793          	andi	a5,a4,255
  a24aa2:	03078513          	addi	a0,a5,48
  a24aa6:	00eaf463          	bgeu	s5,a4,a24aae <serial_puthex+0x3c>
  a24aaa:	03778513          	addi	a0,a5,55
  a24aae:	0492                	slli	s1,s1,0x4
  a24ab0:	000a0563          	beqz	s4,a24aba <serial_puthex+0x48>
  a24ab4:	f47ff0ef          	jal	ra,a249fa <serial_putc>
  a24ab8:	a811                	j	a24acc <serial_puthex+0x5a>
  a24aba:	fe091de3          	bnez	s2,a24ab4 <serial_puthex+0x42>
  a24abe:	ff640be3          	beq	s0,s6,a24ab4 <serial_puthex+0x42>
  a24ac2:	01750563          	beq	a0,s7,a24acc <serial_puthex+0x5a>
  a24ac6:	f35ff0ef          	jal	ra,a249fa <serial_putc>
  a24aca:	4905                	li	s2,1
  a24acc:	0405                	addi	s0,s0,1
  a24ace:	fd3416e3          	bne	s0,s3,a24a9a <serial_puthex+0x28>
  a24ad2:	8094                	popret	{ra,s0-s7},48
  a24ad4:	8082                	ret

00a24ad6 <serial_getc_timeout>:
  a24ad6:	8048                	push	{ra,s0-s2},-16
  a24ad8:	84aa                	mv	s1,a0
  a24ada:	892e                	mv	s2,a1
  a24adc:	4401                	li	s0,0
  a24ade:	00941463          	bne	s0,s1,a24ae6 <serial_getc_timeout+0x10>
  a24ae2:	557d                	li	a0,-1
  a24ae4:	a811                	j	a24af8 <serial_getc_timeout+0x22>
  a24ae6:	4501                	li	a0,0
  a24ae8:	e1dfd0ef          	jal	ra,a22904 <uapi_uart_rx_fifo_is_empty>
  a24aec:	e519                	bnez	a0,a24afa <serial_getc_timeout+0x24>
  a24aee:	f6bff0ef          	jal	ra,a24a58 <serial_getc>
  a24af2:	00a90023          	sb	a0,0(s2)
  a24af6:	4501                	li	a0,0
  a24af8:	8044                	popret	{ra,s0-s2},16
  a24afa:	0405                	addi	s0,s0,1
  a24afc:	b7cd                	j	a24ade <serial_getc_timeout+0x8>

00a24afe <boot_put_errno>:
  a24afe:	8028                	push	{ra,s0},-16
  a24b00:	842a                	mv	s0,a0
  a24b02:	00a2 7024 051f      	l.li	a0,0xa27024
  a24b08:	f13ff0ef          	jal	ra,a24a1a <serial_puts>
  a24b0c:	4581                	li	a1,0
  a24b0e:	8522                	mv	a0,s0
  a24b10:	f63ff0ef          	jal	ra,a24a72 <serial_puthex>
  a24b14:	00a2 6d58 051f      	l.li	a0,0xa26d58
  a24b1a:	f01ff0ef          	jal	ra,a24a1a <serial_puts>
  a24b1e:	06400513          	li	a0,100
  a24b22:	8020                	pop	{ra,s0},16
  a24b24:	ed3ff06f          	j	a249f6 <mdelay>

00a24b28 <boot_msg0>:
  a24b28:	8018                	push	{ra},-16
  a24b2a:	ef1ff0ef          	jal	ra,a24a1a <serial_puts>
  a24b2e:	00a2 72d4 051f      	l.li	a0,0xa272d4
  a24b34:	8010                	pop	{ra},16
  a24b36:	ee5ff06f          	j	a24a1a <serial_puts>

00a24b3a <boot_msg1>:
  a24b3a:	8028                	push	{ra,s0},-16
  a24b3c:	842e                	mv	s0,a1
  a24b3e:	eddff0ef          	jal	ra,a24a1a <serial_puts>
  a24b42:	8522                	mv	a0,s0
  a24b44:	4581                	li	a1,0
  a24b46:	f2dff0ef          	jal	ra,a24a72 <serial_puthex>
  a24b4a:	00a2 72d4 051f      	l.li	a0,0xa272d4
  a24b50:	8020                	pop	{ra,s0},16
  a24b52:	ec9ff06f          	j	a24a1a <serial_puts>

00a24b56 <hiburn_uart_init>:
  a24b56:	8228                	push	{ra,s0},-48
  a24b58:	00a0 2494 079f      	l.li	a5,0xa02494
  a24b5e:	00078023          	sb	zero,0(a5)
  a24b62:	02900793          	li	a5,41
  a24b66:	00f10623          	sb	a5,12(sp)
  a24b6a:	07300793          	li	a5,115
  a24b6e:	00f107a3          	sb	a5,15(sp)
  a24b72:	00f10723          	sb	a5,14(sp)
  a24b76:	411c                	lw	a5,0(a0)
  a24b78:	02a00713          	li	a4,42
  a24b7c:	00e106a3          	sb	a4,13(sp)
  a24b80:	c83e                	sw	a5,16(sp)
  a24b82:	215c                	lbu	a5,4(a0)
  a24b84:	2178                	lbu	a4,6(a0)
  a24b86:	00010423          	sb	zero,8(sp)
  a24b8a:	17ed                	addi	a5,a5,-5
  a24b8c:	00f10a23          	sb	a5,20(sp)
  a24b90:	fff70793          	addi	a5,a4,-1
  a24b94:	9f81                	uxtb	a5
  a24b96:	0207fdbb          	bgeui	a5,2,a24bcc <hiburn_uart_init+0x76>
  a24b9a:	00e10b23          	sb	a4,22(sp)
  a24b9e:	315c                	lbu	a5,5(a0)
  a24ba0:	4405                	li	s0,1
  a24ba2:	0838                	addi	a4,sp,24
  a24ba4:	17fd                	addi	a5,a5,-1
  a24ba6:	00f10aa3          	sb	a5,21(sp)
  a24baa:	4681                	li	a3,0
  a24bac:	003c                	addi	a5,sp,8
  a24bae:	0810                	addi	a2,sp,16
  a24bb0:	006c                	addi	a1,sp,12
  a24bb2:	4501                	li	a0,0
  a24bb4:	cc3e                	sw	a5,24(sp)
  a24bb6:	ce22                	sw	s0,28(sp)
  a24bb8:	b3bfd0ef          	jal	ra,a226f2 <uapi_uart_init>
  a24bbc:	4501                	li	a0,0
  a24bbe:	c02ff0ef          	jal	ra,a23fc0 <uart_port_unregister_irq>
  a24bc2:	00a0 6972 079f      	l.li	a5,0xa06972
  a24bc8:	a380                	sb	s0,0(a5)
  a24bca:	8224                	popret	{ra,s0},48
  a24bcc:	00010b23          	sb	zero,22(sp)
  a24bd0:	b7f9                	j	a24b9e <hiburn_uart_init+0x48>

00a24bd2 <hiburn_uart_deinit>:
  a24bd2:	8018                	push	{ra},-16
  a24bd4:	00a0 2494 079f      	l.li	a5,0xa02494
  a24bda:	2388                	lbu	a0,0(a5)
  a24bdc:	be5fd0ef          	jal	ra,a227c0 <uapi_uart_deinit>
  a24be0:	00a0 6972 079f      	l.li	a5,0xa06972
  a24be6:	00078023          	sb	zero,0(a5)
  a24bea:	8014                	popret	{ra},16

00a24bec <boot_wdt_kick>:
  a24bec:	e4dfd06f          	j	a22a38 <uapi_watchdog_kick>

00a24bf0 <set_reset_count>:
  a24bf0:	40000737          	lui	a4,0x40000
  a24bf4:	471c                	lw	a5,8(a4)
  a24bf6:	893d                	andi	a0,a0,15
  a24bf8:	f0f7f793          	andi	a5,a5,-241
  a24bfc:	08a7a79b          	orshf	a5,a5,a0,sll,4
  a24c00:	c71c                	sw	a5,8(a4)
  a24c02:	8082                	ret

00a24c04 <update_reset_count>:
  a24c04:	8038                	push	{ra,s0-s1},-16
  a24c06:	400007b7          	lui	a5,0x40000
  a24c0a:	4780                	lw	s0,8(a5)
  a24c0c:	00a2 7030 051f      	l.li	a0,0xa27030
  a24c12:	8011                	srli	s0,s0,0x4
  a24c14:	883d                	andi	s0,s0,15
  a24c16:	00140493          	addi	s1,s0,1
  a24c1a:	85a6                	mv	a1,s1
  a24c1c:	f1fff0ef          	jal	ra,a24b3a <boot_msg1>
  a24c20:	06400513          	li	a0,100
  a24c24:	f72fd0ef          	jal	ra,a22396 <uapi_tcxo_delay_ms>
  a24c28:	0f04033b          	beqi	s0,15,a24c34 <update_reset_count+0x30>
  a24c2c:	8526                	mv	a0,s1
  a24c2e:	8030                	pop	{ra,s0-s1},16
  a24c30:	fc1ff06f          	j	a24bf0 <set_reset_count>
  a24c34:	d95fd0ef          	jal	ra,a229c8 <uapi_watchdog_disable>
  a24c38:	10500073          	wfi
  a24c3c:	a001                	j	a24c3c <update_reset_count+0x38>

00a24c3e <boot_malloc_init>:
  a24c3e:	c79ff06f          	j	a248b6 <malloc_port_init>

00a24c42 <boot_malloc>:
  a24c42:	c14fd06f          	j	a22056 <malloc>

00a24c46 <interrupt0_handler>:
  a24c46:	8028                	push	{ra,s0},-16
  a24c48:	040007b7          	lui	a5,0x4000
  a24c4c:	3047b7f3          	csrrc	a5,mie,a5
  a24c50:	00a07437          	lui	s0,0xa07
  a24c54:	97440713          	addi	a4,s0,-1676 # a06974 <g_interrupt_running>
  a24c58:	431c                	lw	a5,0(a4)
  a24c5a:	97440413          	addi	s0,s0,-1676
  a24c5e:	0785                	addi	a5,a5,1 # 4000001 <__data_load__+0x35d8731>
  a24c60:	c31c                	sw	a5,0(a4)
  a24c62:	22c9                	jal	ra,a24e24 <isr_get_ramexceptiontable_addr>
  a24c64:	5538                	lw	a4,104(a0)
  a24c66:	00a2 5236 079f      	l.li	a5,0xa25236
  a24c6c:	00f70563          	beq	a4,a5,a24c76 <interrupt0_handler+0x30>
  a24c70:	2a55                	jal	ra,a24e24 <isr_get_ramexceptiontable_addr>
  a24c72:	553c                	lw	a5,104(a0)
  a24c74:	9782                	jalr	a5
  a24c76:	040007b7          	lui	a5,0x4000
  a24c7a:	3047a7f3          	csrrs	a5,mie,a5
  a24c7e:	401c                	lw	a5,0(s0)
  a24c80:	17fd                	addi	a5,a5,-1 # 3ffffff <__data_load__+0x35d872f>
  a24c82:	c01c                	sw	a5,0(s0)
  a24c84:	8024                	popret	{ra,s0},16

00a24c86 <interrupt1_handler>:
  a24c86:	8028                	push	{ra,s0},-16
  a24c88:	080007b7          	lui	a5,0x8000
  a24c8c:	3047b7f3          	csrrc	a5,mie,a5
  a24c90:	00a07437          	lui	s0,0xa07
  a24c94:	97440713          	addi	a4,s0,-1676 # a06974 <g_interrupt_running>
  a24c98:	431c                	lw	a5,0(a4)
  a24c9a:	97440413          	addi	s0,s0,-1676
  a24c9e:	0785                	addi	a5,a5,1 # 8000001 <__data_load__+0x75d8731>
  a24ca0:	c31c                	sw	a5,0(a4)
  a24ca2:	2249                	jal	ra,a24e24 <isr_get_ramexceptiontable_addr>
  a24ca4:	5578                	lw	a4,108(a0)
  a24ca6:	00a2 5236 079f      	l.li	a5,0xa25236
  a24cac:	00f70563          	beq	a4,a5,a24cb6 <interrupt1_handler+0x30>
  a24cb0:	2a95                	jal	ra,a24e24 <isr_get_ramexceptiontable_addr>
  a24cb2:	557c                	lw	a5,108(a0)
  a24cb4:	9782                	jalr	a5
  a24cb6:	080007b7          	lui	a5,0x8000
  a24cba:	3047a7f3          	csrrs	a5,mie,a5
  a24cbe:	401c                	lw	a5,0(s0)
  a24cc0:	17fd                	addi	a5,a5,-1 # 7ffffff <__data_load__+0x75d872f>
  a24cc2:	c01c                	sw	a5,0(s0)
  a24cc4:	8024                	popret	{ra,s0},16

00a24cc6 <interrupt2_handler>:
  a24cc6:	8028                	push	{ra,s0},-16
  a24cc8:	100007b7          	lui	a5,0x10000
  a24ccc:	3047b7f3          	csrrc	a5,mie,a5
  a24cd0:	00a07437          	lui	s0,0xa07
  a24cd4:	97440713          	addi	a4,s0,-1676 # a06974 <g_interrupt_running>
  a24cd8:	431c                	lw	a5,0(a4)
  a24cda:	97440413          	addi	s0,s0,-1676
  a24cde:	0785                	addi	a5,a5,1 # 10000001 <__data_load__+0xf5d8731>
  a24ce0:	c31c                	sw	a5,0(a4)
  a24ce2:	2289                	jal	ra,a24e24 <isr_get_ramexceptiontable_addr>
  a24ce4:	5938                	lw	a4,112(a0)
  a24ce6:	00a2 5236 079f      	l.li	a5,0xa25236
  a24cec:	00f70563          	beq	a4,a5,a24cf6 <interrupt2_handler+0x30>
  a24cf0:	2a15                	jal	ra,a24e24 <isr_get_ramexceptiontable_addr>
  a24cf2:	593c                	lw	a5,112(a0)
  a24cf4:	9782                	jalr	a5
  a24cf6:	100007b7          	lui	a5,0x10000
  a24cfa:	3047a7f3          	csrrs	a5,mie,a5
  a24cfe:	401c                	lw	a5,0(s0)
  a24d00:	17fd                	addi	a5,a5,-1 # fffffff <__data_load__+0xf5d872f>
  a24d02:	c01c                	sw	a5,0(s0)
  a24d04:	8024                	popret	{ra,s0},16

00a24d06 <interrupt3_handler>:
  a24d06:	8028                	push	{ra,s0},-16
  a24d08:	200007b7          	lui	a5,0x20000
  a24d0c:	3047b7f3          	csrrc	a5,mie,a5
  a24d10:	00a07437          	lui	s0,0xa07
  a24d14:	97440713          	addi	a4,s0,-1676 # a06974 <g_interrupt_running>
  a24d18:	431c                	lw	a5,0(a4)
  a24d1a:	97440413          	addi	s0,s0,-1676
  a24d1e:	0785                	addi	a5,a5,1 # 20000001 <__data_load__+0x1f5d8731>
  a24d20:	c31c                	sw	a5,0(a4)
  a24d22:	2209                	jal	ra,a24e24 <isr_get_ramexceptiontable_addr>
  a24d24:	5978                	lw	a4,116(a0)
  a24d26:	00a2 5236 079f      	l.li	a5,0xa25236
  a24d2c:	00f70563          	beq	a4,a5,a24d36 <interrupt3_handler+0x30>
  a24d30:	28d5                	jal	ra,a24e24 <isr_get_ramexceptiontable_addr>
  a24d32:	597c                	lw	a5,116(a0)
  a24d34:	9782                	jalr	a5
  a24d36:	200007b7          	lui	a5,0x20000
  a24d3a:	3047a7f3          	csrrs	a5,mie,a5
  a24d3e:	401c                	lw	a5,0(s0)
  a24d40:	17fd                	addi	a5,a5,-1 # 1fffffff <__data_load__+0x1f5d872f>
  a24d42:	c01c                	sw	a5,0(s0)
  a24d44:	8024                	popret	{ra,s0},16

00a24d46 <interrupt4_handler>:
  a24d46:	8028                	push	{ra,s0},-16
  a24d48:	400007b7          	lui	a5,0x40000
  a24d4c:	3047b7f3          	csrrc	a5,mie,a5
  a24d50:	00a07437          	lui	s0,0xa07
  a24d54:	97440713          	addi	a4,s0,-1676 # a06974 <g_interrupt_running>
  a24d58:	431c                	lw	a5,0(a4)
  a24d5a:	97440413          	addi	s0,s0,-1676
  a24d5e:	0785                	addi	a5,a5,1 # 40000001 <__data_load__+0x3f5d8731>
  a24d60:	c31c                	sw	a5,0(a4)
  a24d62:	20c9                	jal	ra,a24e24 <isr_get_ramexceptiontable_addr>
  a24d64:	5d38                	lw	a4,120(a0)
  a24d66:	00a2 5236 079f      	l.li	a5,0xa25236
  a24d6c:	00f70563          	beq	a4,a5,a24d76 <interrupt4_handler+0x30>
  a24d70:	2855                	jal	ra,a24e24 <isr_get_ramexceptiontable_addr>
  a24d72:	5d3c                	lw	a5,120(a0)
  a24d74:	9782                	jalr	a5
  a24d76:	400007b7          	lui	a5,0x40000
  a24d7a:	3047a7f3          	csrrs	a5,mie,a5
  a24d7e:	401c                	lw	a5,0(s0)
  a24d80:	17fd                	addi	a5,a5,-1 # 3fffffff <__data_load__+0x3f5d872f>
  a24d82:	c01c                	sw	a5,0(s0)
  a24d84:	8024                	popret	{ra,s0},16

00a24d86 <interrupt5_handler>:
  a24d86:	8028                	push	{ra,s0},-16
  a24d88:	800007b7          	lui	a5,0x80000
  a24d8c:	3047b7f3          	csrrc	a5,mie,a5
  a24d90:	00a07437          	lui	s0,0xa07
  a24d94:	97440713          	addi	a4,s0,-1676 # a06974 <g_interrupt_running>
  a24d98:	431c                	lw	a5,0(a4)
  a24d9a:	97440413          	addi	s0,s0,-1676
  a24d9e:	0785                	addi	a5,a5,1 # 80000001 <__data_load__+0x7f5d8731>
  a24da0:	c31c                	sw	a5,0(a4)
  a24da2:	2049                	jal	ra,a24e24 <isr_get_ramexceptiontable_addr>
  a24da4:	5d78                	lw	a4,124(a0)
  a24da6:	00a2 5236 079f      	l.li	a5,0xa25236
  a24dac:	00f70563          	beq	a4,a5,a24db6 <interrupt5_handler+0x30>
  a24db0:	2895                	jal	ra,a24e24 <isr_get_ramexceptiontable_addr>
  a24db2:	5d7c                	lw	a5,124(a0)
  a24db4:	9782                	jalr	a5
  a24db6:	800007b7          	lui	a5,0x80000
  a24dba:	3047a7f3          	csrrs	a5,mie,a5
  a24dbe:	401c                	lw	a5,0(s0)
  a24dc0:	17fd                	addi	a5,a5,-1 # 7fffffff <__data_load__+0x7f5d872f>
  a24dc2:	c01c                	sw	a5,0(s0)
  a24dc4:	8024                	popret	{ra,s0},16

00a24dc6 <local_interrupt_handler>:
  a24dc6:	8038                	push	{ra,s0-s1},-16
  a24dc8:	0f1010ef          	jal	ra,a266b8 <global_interrupt_lock>
  a24dcc:	00a074b7          	lui	s1,0xa07
  a24dd0:	97448713          	addi	a4,s1,-1676 # a06974 <g_interrupt_running>
  a24dd4:	431c                	lw	a5,0(a4)
  a24dd6:	0785                	addi	a5,a5,1
  a24dd8:	c31c                	sw	a5,0(a4)
  a24dda:	0f7010ef          	jal	ra,a266d0 <global_interrupt_restore>
  a24dde:	34202473          	csrr	s0,mcause
  a24de2:	2089                	jal	ra,a24e24 <isr_get_ramexceptiontable_addr>
  a24de4:	6785                	lui	a5,0x1
  a24de6:	17fd                	addi	a5,a5,-1 # fff <ccause+0x3d>
  a24de8:	8c7d                	and	s0,s0,a5
  a24dea:	040a                	slli	s0,s0,0x2
  a24dec:	9522                	add	a0,a0,s0
  a24dee:	4118                	lw	a4,0(a0)
  a24df0:	00a2 4e22 079f      	l.li	a5,0xa24e22
  a24df6:	97448493          	addi	s1,s1,-1676
  a24dfa:	00f70663          	beq	a4,a5,a24e06 <local_interrupt_handler+0x40>
  a24dfe:	201d                	jal	ra,a24e24 <isr_get_ramexceptiontable_addr>
  a24e00:	9522                	add	a0,a0,s0
  a24e02:	411c                	lw	a5,0(a0)
  a24e04:	9782                	jalr	a5
  a24e06:	0b3010ef          	jal	ra,a266b8 <global_interrupt_lock>
  a24e0a:	409c                	lw	a5,0(s1)
  a24e0c:	17fd                	addi	a5,a5,-1
  a24e0e:	c09c                	sw	a5,0(s1)
  a24e10:	8030                	pop	{ra,s0-s1},16
  a24e12:	0bf0106f          	j	a266d0 <global_interrupt_restore>

00a24e16 <interrupt_number_get>:
  a24e16:	34202573          	csrr	a0,mcause
  a24e1a:	6785                	lui	a5,0x1
  a24e1c:	17fd                	addi	a5,a5,-1 # fff <ccause+0x3d>
  a24e1e:	8d7d                	and	a0,a0,a5
  a24e20:	8082                	ret

00a24e22 <b_sub_monitor_handler>:
  a24e22:	a001                	j	a24e22 <b_sub_monitor_handler>

00a24e24 <isr_get_ramexceptiontable_addr>:
  a24e24:	00a2 04bc 051f      	l.li	a0,0xa204bc
  a24e2a:	8082                	ret

00a24e2c <do_hard_fault_handler>:
  a24e2c:	c939                	beqz	a0,a24e82 <do_hard_fault_handler+0x56>
  a24e2e:	8038                	push	{ra,s0-s1},-16
  a24e30:	4144                	lw	s1,4(a0)
  a24e32:	842a                	mv	s0,a0
  a24e34:	00a2 7088 051f      	l.li	a0,0xa27088
  a24e3a:	85a6                	mv	a1,s1
  a24e3c:	986ff0ef          	jal	ra,a23fc2 <print_str>
  a24e40:	800007b7          	lui	a5,0x80000
  a24e44:	07b1                	addi	a5,a5,12 # 8000000c <__data_load__+0x7f5d873c>
  a24e46:	02f49b63          	bne	s1,a5,a24e7c <do_hard_fault_handler+0x50>
  a24e4a:	00a2 709c 051f      	l.li	a0,0xa2709c
  a24e50:	972ff0ef          	jal	ra,a23fc2 <print_str>
  a24e54:	6509                	lui	a0,0x2
  a24e56:	0521                	addi	a0,a0,8 # 2008 <ccause+0x1046>
  a24e58:	2119                	jal	ra,a2525e <cpu_utils_set_system_status_by_cause>
  a24e5a:	4c5c                	lw	a5,28(s0)
  a24e5c:	8522                	mv	a0,s0
  a24e5e:	07c1                	addi	a5,a5,16
  a24e60:	cc5c                	sw	a5,28(s0)
  a24e62:	238d                	jal	ra,a253c4 <set_exception_info_riscv>
  a24e64:	00a0 698c 079f      	l.li	a5,0xa0698c
  a24e6a:	439c                	lw	a5,0(a5)
  a24e6c:	c781                	beqz	a5,a24e74 <do_hard_fault_handler+0x48>
  a24e6e:	85a2                	mv	a1,s0
  a24e70:	8526                	mv	a0,s1
  a24e72:	9782                	jalr	a5
  a24e74:	4501                	li	a0,0
  a24e76:	8030                	pop	{ra,s0-s1},16
  a24e78:	b0dfd06f          	j	a22984 <uapi_watchdog_enable>
  a24e7c:	6509                	lui	a0,0x2
  a24e7e:	0511                	addi	a0,a0,4 # 2004 <ccause+0x1042>
  a24e80:	bfe1                	j	a24e58 <do_hard_fault_handler+0x2c>
  a24e82:	8082                	ret

00a24e84 <exc_info_display.part.3>:
  a24e84:	8028                	push	{ra,s0},-16
  a24e86:	842a                	mv	s0,a0
  a24e88:	00a2 72f8 051f      	l.li	a0,0xa272f8
  a24e8e:	934ff0ef          	jal	ra,a23fc2 <print_str>
  a24e92:	202e                	lhu	a1,2(s0)
  a24e94:	00a2 7330 051f      	l.li	a0,0xa27330
  a24e9a:	928ff0ef          	jal	ra,a23fc2 <print_str>
  a24e9e:	481c                	lw	a5,16(s0)
  a24ea0:	00a2 7348 051f      	l.li	a0,0xa27348
  a24ea6:	4bcc                	lw	a1,20(a5)
  a24ea8:	91aff0ef          	jal	ra,a23fc2 <print_str>
  a24eac:	481c                	lw	a5,16(s0)
  a24eae:	00a2 7360 051f      	l.li	a0,0xa27360
  a24eb4:	4b8c                	lw	a1,16(a5)
  a24eb6:	90cff0ef          	jal	ra,a23fc2 <print_str>
  a24eba:	481c                	lw	a5,16(s0)
  a24ebc:	00a2 7378 051f      	l.li	a0,0xa27378
  a24ec2:	478c                	lw	a1,8(a5)
  a24ec4:	8feff0ef          	jal	ra,a23fc2 <print_str>
  a24ec8:	481c                	lw	a5,16(s0)
  a24eca:	00a2 7390 051f      	l.li	a0,0xa27390
  a24ed0:	43cc                	lw	a1,4(a5)
  a24ed2:	8f0ff0ef          	jal	ra,a23fc2 <print_str>
  a24ed6:	481c                	lw	a5,16(s0)
  a24ed8:	00a2 73a8 051f      	l.li	a0,0xa273a8
  a24ede:	438c                	lw	a1,0(a5)
  a24ee0:	8e2ff0ef          	jal	ra,a23fc2 <print_str>
  a24ee4:	481c                	lw	a5,16(s0)
  a24ee6:	00a2 73c0 051f      	l.li	a0,0xa273c0
  a24eec:	08c7a583          	lw	a1,140(a5)
  a24ef0:	8d2ff0ef          	jal	ra,a23fc2 <print_str>
  a24ef4:	481c                	lw	a5,16(s0)
  a24ef6:	00a2 73d8 051f      	l.li	a0,0xa273d8
  a24efc:	4fcc                	lw	a1,28(a5)
  a24efe:	8c4ff0ef          	jal	ra,a23fc2 <print_str>
  a24f02:	481c                	lw	a5,16(s0)
  a24f04:	00a2 73f0 051f      	l.li	a0,0xa273f0
  a24f0a:	47cc                	lw	a1,12(a5)
  a24f0c:	8b6ff0ef          	jal	ra,a23fc2 <print_str>
  a24f10:	481c                	lw	a5,16(s0)
  a24f12:	00a2 7408 051f      	l.li	a0,0xa27408
  a24f18:	4f8c                	lw	a1,24(a5)
  a24f1a:	8a8ff0ef          	jal	ra,a23fc2 <print_str>
  a24f1e:	481c                	lw	a5,16(s0)
  a24f20:	00a2 7420 051f      	l.li	a0,0xa27420
  a24f26:	0887a583          	lw	a1,136(a5)
  a24f2a:	898ff0ef          	jal	ra,a23fc2 <print_str>
  a24f2e:	481c                	lw	a5,16(s0)
  a24f30:	00a2 7438 051f      	l.li	a0,0xa27438
  a24f36:	0847a583          	lw	a1,132(a5)
  a24f3a:	888ff0ef          	jal	ra,a23fc2 <print_str>
  a24f3e:	481c                	lw	a5,16(s0)
  a24f40:	00a2 7450 051f      	l.li	a0,0xa27450
  a24f46:	0807a583          	lw	a1,128(a5)
  a24f4a:	878ff0ef          	jal	ra,a23fc2 <print_str>
  a24f4e:	481c                	lw	a5,16(s0)
  a24f50:	00a2 7468 051f      	l.li	a0,0xa27468
  a24f56:	47ec                	lw	a1,76(a5)
  a24f58:	86aff0ef          	jal	ra,a23fc2 <print_str>
  a24f5c:	481c                	lw	a5,16(s0)
  a24f5e:	00a2 7480 051f      	l.li	a0,0xa27480
  a24f64:	47ac                	lw	a1,72(a5)
  a24f66:	85cff0ef          	jal	ra,a23fc2 <print_str>
  a24f6a:	481c                	lw	a5,16(s0)
  a24f6c:	00a2 7498 051f      	l.li	a0,0xa27498
  a24f72:	5fec                	lw	a1,124(a5)
  a24f74:	84eff0ef          	jal	ra,a23fc2 <print_str>
  a24f78:	481c                	lw	a5,16(s0)
  a24f7a:	00a2 74b0 051f      	l.li	a0,0xa274b0
  a24f80:	5fac                	lw	a1,120(a5)
  a24f82:	840ff0ef          	jal	ra,a23fc2 <print_str>
  a24f86:	481c                	lw	a5,16(s0)
  a24f88:	00a2 74c8 051f      	l.li	a0,0xa274c8
  a24f8e:	5bec                	lw	a1,116(a5)
  a24f90:	832ff0ef          	jal	ra,a23fc2 <print_str>
  a24f94:	481c                	lw	a5,16(s0)
  a24f96:	00a2 74e0 051f      	l.li	a0,0xa274e0
  a24f9c:	5bac                	lw	a1,112(a5)
  a24f9e:	824ff0ef          	jal	ra,a23fc2 <print_str>
  a24fa2:	481c                	lw	a5,16(s0)
  a24fa4:	00a2 74f8 051f      	l.li	a0,0xa274f8
  a24faa:	57ec                	lw	a1,108(a5)
  a24fac:	816ff0ef          	jal	ra,a23fc2 <print_str>
  a24fb0:	481c                	lw	a5,16(s0)
  a24fb2:	00a2 7510 051f      	l.li	a0,0xa27510
  a24fb8:	57ac                	lw	a1,104(a5)
  a24fba:	808ff0ef          	jal	ra,a23fc2 <print_str>
  a24fbe:	481c                	lw	a5,16(s0)
  a24fc0:	00a2 7528 051f      	l.li	a0,0xa27528
  a24fc6:	53ec                	lw	a1,100(a5)
  a24fc8:	ffbfe0ef          	jal	ra,a23fc2 <print_str>
  a24fcc:	481c                	lw	a5,16(s0)
  a24fce:	00a2 7540 051f      	l.li	a0,0xa27540
  a24fd4:	53ac                	lw	a1,96(a5)
  a24fd6:	fedfe0ef          	jal	ra,a23fc2 <print_str>
  a24fda:	481c                	lw	a5,16(s0)
  a24fdc:	00a2 7558 051f      	l.li	a0,0xa27558
  a24fe2:	43ec                	lw	a1,68(a5)
  a24fe4:	fdffe0ef          	jal	ra,a23fc2 <print_str>
  a24fe8:	481c                	lw	a5,16(s0)
  a24fea:	00a2 7570 051f      	l.li	a0,0xa27570
  a24ff0:	43ac                	lw	a1,64(a5)
  a24ff2:	fd1fe0ef          	jal	ra,a23fc2 <print_str>
  a24ff6:	481c                	lw	a5,16(s0)
  a24ff8:	00a2 7588 051f      	l.li	a0,0xa27588
  a24ffe:	5fcc                	lw	a1,60(a5)
  a25000:	fc3fe0ef          	jal	ra,a23fc2 <print_str>
  a25004:	481c                	lw	a5,16(s0)
  a25006:	00a2 75a0 051f      	l.li	a0,0xa275a0
  a2500c:	5f8c                	lw	a1,56(a5)
  a2500e:	fb5fe0ef          	jal	ra,a23fc2 <print_str>
  a25012:	481c                	lw	a5,16(s0)
  a25014:	00a2 75b8 051f      	l.li	a0,0xa275b8
  a2501a:	5bcc                	lw	a1,52(a5)
  a2501c:	fa7fe0ef          	jal	ra,a23fc2 <print_str>
  a25020:	481c                	lw	a5,16(s0)
  a25022:	00a2 75d0 051f      	l.li	a0,0xa275d0
  a25028:	5b8c                	lw	a1,48(a5)
  a2502a:	f99fe0ef          	jal	ra,a23fc2 <print_str>
  a2502e:	481c                	lw	a5,16(s0)
  a25030:	00a2 75e8 051f      	l.li	a0,0xa275e8
  a25036:	57cc                	lw	a1,44(a5)
  a25038:	f8bfe0ef          	jal	ra,a23fc2 <print_str>
  a2503c:	481c                	lw	a5,16(s0)
  a2503e:	00a2 7600 051f      	l.li	a0,0xa27600
  a25044:	578c                	lw	a1,40(a5)
  a25046:	f7dfe0ef          	jal	ra,a23fc2 <print_str>
  a2504a:	481c                	lw	a5,16(s0)
  a2504c:	00a2 7618 051f      	l.li	a0,0xa27618
  a25052:	53cc                	lw	a1,36(a5)
  a25054:	f6ffe0ef          	jal	ra,a23fc2 <print_str>
  a25058:	481c                	lw	a5,16(s0)
  a2505a:	00a2 7630 051f      	l.li	a0,0xa27630
  a25060:	538c                	lw	a1,32(a5)
  a25062:	f61fe0ef          	jal	ra,a23fc2 <print_str>
  a25066:	481c                	lw	a5,16(s0)
  a25068:	00a2 7648 051f      	l.li	a0,0xa27648
  a2506e:	4fec                	lw	a1,92(a5)
  a25070:	f53fe0ef          	jal	ra,a23fc2 <print_str>
  a25074:	481c                	lw	a5,16(s0)
  a25076:	00a2 7660 051f      	l.li	a0,0xa27660
  a2507c:	4fac                	lw	a1,88(a5)
  a2507e:	f45fe0ef          	jal	ra,a23fc2 <print_str>
  a25082:	481c                	lw	a5,16(s0)
  a25084:	00a2 7678 051f      	l.li	a0,0xa27678
  a2508a:	4bec                	lw	a1,84(a5)
  a2508c:	f37fe0ef          	jal	ra,a23fc2 <print_str>
  a25090:	481c                	lw	a5,16(s0)
  a25092:	00a2 7690 051f      	l.li	a0,0xa27690
  a25098:	4bac                	lw	a1,80(a5)
  a2509a:	f29fe0ef          	jal	ra,a23fc2 <print_str>
  a2509e:	00a2 76a8 051f      	l.li	a0,0xa276a8
  a250a4:	8020                	pop	{ra,s0},16
  a250a6:	f1dfe06f          	j	a23fc2 <print_str>

00a250aa <do_process_exception>:
  a250aa:	4154                	lw	a3,4(a0)
  a250ac:	00a077b7          	lui	a5,0xa07
  a250b0:	97878713          	addi	a4,a5,-1672 # a06978 <g_exc_info>
  a250b4:	cb08                	sw	a0,16(a4)
  a250b6:	97878513          	addi	a0,a5,-1672
  a250ba:	a336                	sh	a3,2(a4)
  a250bc:	dc9ff06f          	j	a24e84 <exc_info_display.part.3>

00a250c0 <do_trap_unknown>:
  a250c0:	8028                	push	{ra,s0},-16
  a250c2:	842a                	mv	s0,a0
  a250c4:	00a2 72d8 051f      	l.li	a0,0xa272d8
  a250ca:	ef9fe0ef          	jal	ra,a23fc2 <print_str>
  a250ce:	8522                	mv	a0,s0
  a250d0:	8020                	pop	{ra,s0},16
  a250d2:	fd9ff06f          	j	a250aa <do_process_exception>

00a250d6 <do_trap_insn_misaligned>:
  a250d6:	8028                	push	{ra,s0},-16
  a250d8:	842a                	mv	s0,a0
  a250da:	00a2 7208 051f      	l.li	a0,0xa27208
  a250e0:	ee3fe0ef          	jal	ra,a23fc2 <print_str>
  a250e4:	8522                	mv	a0,s0
  a250e6:	8020                	pop	{ra,s0},16
  a250e8:	fc3ff06f          	j	a250aa <do_process_exception>

00a250ec <do_trap_insn_fault>:
  a250ec:	8028                	push	{ra,s0},-16
  a250ee:	842a                	mv	s0,a0
  a250f0:	00a2 71bc 051f      	l.li	a0,0xa271bc
  a250f6:	ecdfe0ef          	jal	ra,a23fc2 <print_str>
  a250fa:	8522                	mv	a0,s0
  a250fc:	8020                	pop	{ra,s0},16
  a250fe:	fadff06f          	j	a250aa <do_process_exception>

00a25102 <do_trap_insn_illegal>:
  a25102:	8028                	push	{ra,s0},-16
  a25104:	842a                	mv	s0,a0
  a25106:	00a2 71e4 051f      	l.li	a0,0xa271e4
  a2510c:	eb7fe0ef          	jal	ra,a23fc2 <print_str>
  a25110:	8522                	mv	a0,s0
  a25112:	8020                	pop	{ra,s0},16
  a25114:	f97ff06f          	j	a250aa <do_process_exception>

00a25118 <do_trap_load_misaligned>:
  a25118:	8028                	push	{ra,s0},-16
  a2511a:	842a                	mv	s0,a0
  a2511c:	00a2 7254 051f      	l.li	a0,0xa27254
  a25122:	ea1fe0ef          	jal	ra,a23fc2 <print_str>
  a25126:	8522                	mv	a0,s0
  a25128:	8020                	pop	{ra,s0},16
  a2512a:	f81ff06f          	j	a250aa <do_process_exception>

00a2512e <do_trap_load_fault>:
  a2512e:	8028                	push	{ra,s0},-16
  a25130:	842a                	mv	s0,a0
  a25132:	00a2 7234 051f      	l.li	a0,0xa27234
  a25138:	e8bfe0ef          	jal	ra,a23fc2 <print_str>
  a2513c:	8522                	mv	a0,s0
  a2513e:	8020                	pop	{ra,s0},16
  a25140:	f6bff06f          	j	a250aa <do_process_exception>

00a25144 <do_trap_store_misaligned>:
  a25144:	8028                	push	{ra,s0},-16
  a25146:	842a                	mv	s0,a0
  a25148:	00a2 72a8 051f      	l.li	a0,0xa272a8
  a2514e:	e75fe0ef          	jal	ra,a23fc2 <print_str>
  a25152:	8522                	mv	a0,s0
  a25154:	8020                	pop	{ra,s0},16
  a25156:	f55ff06f          	j	a250aa <do_process_exception>

00a2515a <do_trap_store_fault>:
  a2515a:	8028                	push	{ra,s0},-16
  a2515c:	842a                	mv	s0,a0
  a2515e:	00a2 727c 051f      	l.li	a0,0xa2727c
  a25164:	e5ffe0ef          	jal	ra,a23fc2 <print_str>
  a25168:	8522                	mv	a0,s0
  a2516a:	8020                	pop	{ra,s0},16
  a2516c:	f3fff06f          	j	a250aa <do_process_exception>

00a25170 <do_trap_ecall_u>:
  a25170:	8028                	push	{ra,s0},-16
  a25172:	842a                	mv	s0,a0
  a25174:	00a2 7190 051f      	l.li	a0,0xa27190
  a2517a:	e49fe0ef          	jal	ra,a23fc2 <print_str>
  a2517e:	8522                	mv	a0,s0
  a25180:	8020                	pop	{ra,s0},16
  a25182:	f29ff06f          	j	a250aa <do_process_exception>

00a25186 <do_trap_ecall_s>:
  a25186:	8028                	push	{ra,s0},-16
  a25188:	842a                	mv	s0,a0
  a2518a:	00a2 7164 051f      	l.li	a0,0xa27164
  a25190:	e33fe0ef          	jal	ra,a23fc2 <print_str>
  a25194:	8522                	mv	a0,s0
  a25196:	8020                	pop	{ra,s0},16
  a25198:	f13ff06f          	j	a250aa <do_process_exception>

00a2519c <do_trap_ecall_m>:
  a2519c:	8028                	push	{ra,s0},-16
  a2519e:	842a                	mv	s0,a0
  a251a0:	00a2 7138 051f      	l.li	a0,0xa27138
  a251a6:	e1dfe0ef          	jal	ra,a23fc2 <print_str>
  a251aa:	8522                	mv	a0,s0
  a251ac:	8020                	pop	{ra,s0},16
  a251ae:	efdff06f          	j	a250aa <do_process_exception>

00a251b2 <do_trap_break>:
  a251b2:	8028                	push	{ra,s0},-16
  a251b4:	842a                	mv	s0,a0
  a251b6:	00a2 7124 051f      	l.li	a0,0xa27124
  a251bc:	e07fe0ef          	jal	ra,a23fc2 <print_str>
  a251c0:	8522                	mv	a0,s0
  a251c2:	8020                	pop	{ra,s0},16
  a251c4:	ee7ff06f          	j	a250aa <do_process_exception>

00a251c8 <do_insn_page_fault>:
  a251c8:	8028                	push	{ra,s0},-16
  a251ca:	842a                	mv	s0,a0
  a251cc:	00a2 70ac 051f      	l.li	a0,0xa270ac
  a251d2:	df1fe0ef          	jal	ra,a23fc2 <print_str>
  a251d6:	8522                	mv	a0,s0
  a251d8:	8020                	pop	{ra,s0},16
  a251da:	ed1ff06f          	j	a250aa <do_process_exception>

00a251de <do_load_page_fault>:
  a251de:	8028                	push	{ra,s0},-16
  a251e0:	842a                	mv	s0,a0
  a251e2:	00a2 70cc 051f      	l.li	a0,0xa270cc
  a251e8:	ddbfe0ef          	jal	ra,a23fc2 <print_str>
  a251ec:	8522                	mv	a0,s0
  a251ee:	8020                	pop	{ra,s0},16
  a251f0:	ebbff06f          	j	a250aa <do_process_exception>

00a251f4 <do_store_page_fault>:
  a251f4:	8028                	push	{ra,s0},-16
  a251f6:	842a                	mv	s0,a0
  a251f8:	00a2 7104 051f      	l.li	a0,0xa27104
  a251fe:	dc5fe0ef          	jal	ra,a23fc2 <print_str>
  a25202:	8522                	mv	a0,s0
  a25204:	8020                	pop	{ra,s0},16
  a25206:	ea5ff06f          	j	a250aa <do_process_exception>

00a2520a <do_hard_fault>:
  a2520a:	8028                	push	{ra,s0},-16
  a2520c:	842a                	mv	s0,a0
  a2520e:	00a2 7070 051f      	l.li	a0,0xa27070
  a25214:	daffe0ef          	jal	ra,a23fc2 <print_str>
  a25218:	8522                	mv	a0,s0
  a2521a:	8020                	pop	{ra,s0},16
  a2521c:	e8fff06f          	j	a250aa <do_process_exception>

00a25220 <do_lockup>:
  a25220:	8028                	push	{ra,s0},-16
  a25222:	842a                	mv	s0,a0
  a25224:	00a2 70ec 051f      	l.li	a0,0xa270ec
  a2522a:	d99fe0ef          	jal	ra,a23fc2 <print_str>
  a2522e:	8522                	mv	a0,s0
  a25230:	8020                	pop	{ra,s0},16
  a25232:	e79ff06f          	j	a250aa <do_process_exception>

00a25236 <default_handler>:
  a25236:	8018                	push	{ra},-16
  a25238:	bdfff0ef          	jal	ra,a24e16 <interrupt_number_get>
  a2523c:	85aa                	mv	a1,a0
  a2523e:	00a2 7044 051f      	l.li	a0,0xa27044
  a25244:	d7ffe0ef          	jal	ra,a23fc2 <print_str>
  a25248:	a001                	j	a25248 <default_handler+0x12>

00a2524a <nmi_handler>:
  a2524a:	8018                	push	{ra},-16
  a2524c:	bcbff0ef          	jal	ra,a24e16 <interrupt_number_get>
  a25250:	85aa                	mv	a1,a0
  a25252:	00a2 76e4 051f      	l.li	a0,0xa276e4
  a25258:	d6bfe0ef          	jal	ra,a23fc2 <print_str>
  a2525c:	a001                	j	a2525c <nmi_handler+0x12>

00a2525e <cpu_utils_set_system_status_by_cause>:
  a2525e:	8018                	push	{ra},-16
  a25260:	2235                	jal	ra,a2538c <set_cpu_utils_reset_cause>
  a25262:	8010                	pop	{ra},16
  a25264:	a8e1                	j	a2533c <set_cpu_utils_system_boot_magic>

00a25266 <cpu_utils_reset_chip_with_log>:
  a25266:	8118                	push	{ra},-32
  a25268:	4501                	li	a0,0
  a2526a:	c62e                	sw	a1,12(sp)
  a2526c:	2a0d                	jal	ra,a2539e <set_update_reset_cause_on_boot>
  a2526e:	45b2                	lw	a1,12(sp)
  a25270:	852e                	mv	a0,a1
  a25272:	fedff0ef          	jal	ra,a2525e <cpu_utils_set_system_status_by_cause>
  a25276:	8110                	pop	{ra},32
  a25278:	b53fd06f          	j	a22dca <hal_reboot_chip>

00a2527c <panic_deal>:
  a2527c:	8458                	push	{ra,s0-s3},-96
  a2527e:	86b2                	mv	a3,a2
  a25280:	892a                	mv	s2,a0
  a25282:	84ae                	mv	s1,a1
  a25284:	8432                	mv	s0,a2
  a25286:	862e                	mv	a2,a1
  a25288:	85aa                	mv	a1,a0
  a2528a:	00a2 770c 051f      	l.li	a0,0xa2770c
  a25290:	d33fe0ef          	jal	ra,a23fc2 <print_str>
  a25294:	dfbfc0ef          	jal	ra,a2208e <osal_irq_lock>
  a25298:	00a0 6990 079f      	l.li	a5,0xa06990
  a2529e:	2398                	lbu	a4,0(a5)
  a252a0:	89aa                	mv	s3,a0
  a252a2:	e321                	bnez	a4,a252e2 <panic_deal+0x66>
  a252a4:	4705                	li	a4,1
  a252a6:	a398                	sb	a4,0(a5)
  a252a8:	03210023          	sb	s2,32(sp)
  a252ac:	d226                	sw	s1,36(sp)
  a252ae:	862fd0ef          	jal	ra,a22310 <uapi_systick_get_us>
  a252b2:	d42a                	sw	a0,40(sp)
  a252b4:	1008                	addi	a0,sp,32
  a252b6:	d622                	sw	s0,44(sp)
  a252b8:	28cd                	jal	ra,a253aa <set_last_panic>
  a252ba:	02000613          	li	a2,32
  a252be:	4581                	li	a1,0
  a252c0:	1008                	addi	a0,sp,32
  a252c2:	c802                	sw	zero,16(sp)
  a252c4:	ca02                	sw	zero,20(sp)
  a252c6:	cc02                	sw	zero,24(sp)
  a252c8:	ce02                	sw	zero,28(sp)
  a252ca:	f7afb0ef          	jal	ra,a20a44 <memset>
  a252ce:	da22                	sw	s0,52(sp)
  a252d0:	341027f3          	csrr	a5,mepc
  a252d4:	dc3e                	sw	a5,56(sp)
  a252d6:	878a                	mv	a5,sp
  a252d8:	0068                	addi	a0,sp,12
  a252da:	c63e                	sw	a5,12(sp)
  a252dc:	2209                	jal	ra,a253de <set_exception_info>
  a252de:	1008                	addi	a0,sp,32
  a252e0:	2a31                	jal	ra,a253fc <set_exception_stack_frame>
  a252e2:	00a0 6994 079f      	l.li	a5,0xa06994
  a252e8:	439c                	lw	a5,0(a5)
  a252ea:	c391                	beqz	a5,a252ee <panic_deal+0x72>
  a252ec:	9782                	jalr	a5
  a252ee:	6589                	lui	a1,0x2
  a252f0:	058d                	addi	a1,a1,3 # 2003 <ccause+0x1041>
  a252f2:	4509                	li	a0,2
  a252f4:	f73ff0ef          	jal	ra,a25266 <cpu_utils_reset_chip_with_log>
  a252f8:	854e                	mv	a0,s3
  a252fa:	d9dfc0ef          	jal	ra,a22096 <osal_irq_restore>
  a252fe:	8454                	popret	{ra,s0-s3},96

00a25300 <panic>:
  a25300:	00a0 2498 079f      	l.li	a5,0xa02498
  a25306:	0007a303          	lw	t1,0(a5)
  a2530a:	00030563          	beqz	t1,a25314 <panic+0x14>
  a2530e:	ffb08613          	addi	a2,ra,-5
  a25312:	8302                	jr	t1
  a25314:	8118                	push	{ra},-32
  a25316:	4785                	li	a5,1
  a25318:	00f107a3          	sb	a5,15(sp)
  a2531c:	00f14783          	lbu	a5,15(sp)
  a25320:	9f81                	uxtb	a5
  a25322:	ffed                	bnez	a5,a2531c <panic+0x1c>
  a25324:	8114                	popret	{ra},32

00a25326 <duplicate_preserve_mem>:
  a25326:	0fc00693          	li	a3,252
  a2532a:	00a0 24dc 061f      	l.li	a2,0xa024dc
  a25330:	0fc00593          	li	a1,252
  a25334:	00a0 6998 051f      	l.li	a0,0xa06998
  a2533a:	aa15                	j	a2546e <memcpy_s>

00a2533c <set_cpu_utils_system_boot_magic>:
  a2533c:	00a02737          	lui	a4,0xa02
  a25340:	4dc70793          	addi	a5,a4,1244 # a024dc <g_preserve_data_lib>
  a25344:	0d87d783          	lhu	a5,216(a5)
  a25348:	6689                	lui	a3,0x2
  a2534a:	04068613          	addi	a2,a3,64 # 2040 <ccause+0x107e>
  a2534e:	4dc70713          	addi	a4,a4,1244
  a25352:	02c78963          	beq	a5,a2,a25384 <set_cpu_utils_system_boot_magic+0x48>
  a25356:	00f66c63          	bltu	a2,a5,a2536e <set_cpu_utils_system_boot_magic+0x32>
  a2535a:	c78d                	beqz	a5,a25384 <set_cpu_utils_system_boot_magic+0x48>
  a2535c:	0685                	addi	a3,a3,1
  a2535e:	02d78363          	beq	a5,a3,a25384 <set_cpu_utils_system_boot_magic+0x48>
  a25362:	dead beaf 079f      	l.li	a5,0xdeadbeaf
  a25368:	0ef72423          	sw	a5,232(a4)
  a2536c:	8082                	ret
  a2536e:	66a1                	lui	a3,0x8
  a25370:	0685                	addi	a3,a3,1 # 8001 <ccause+0x703f>
  a25372:	00d78963          	beq	a5,a3,a25384 <set_cpu_utils_system_boot_magic+0x48>
  a25376:	0000 f0f0 069f      	l.li	a3,0xf0f0
  a2537c:	00d78463          	beq	a5,a3,a25384 <set_cpu_utils_system_boot_magic+0x48>
  a25380:	6691                	lui	a3,0x4
  a25382:	bfe9                	j	a2535c <set_cpu_utils_system_boot_magic+0x20>
  a25384:	dead dead 079f      	l.li	a5,0xdeaddead
  a2538a:	bff9                	j	a25368 <set_cpu_utils_system_boot_magic+0x2c>

00a2538c <set_cpu_utils_reset_cause>:
  a2538c:	00a0 24dc 079f      	l.li	a5,0xa024dc
  a25392:	0c078d23          	sb	zero,218(a5)
  a25396:	0ca79c23          	sh	a0,216(a5)
  a2539a:	f8dff06f          	j	a25326 <duplicate_preserve_mem>

00a2539e <set_update_reset_cause_on_boot>:
  a2539e:	00a0 24dc 079f      	l.li	a5,0xa024dc
  a253a4:	0ca78d23          	sb	a0,218(a5)
  a253a8:	8082                	ret

00a253aa <set_last_panic>:
  a253aa:	8018                	push	{ra},-16
  a253ac:	862a                	mv	a2,a0
  a253ae:	00a0 24dc 051f      	l.li	a0,0xa024dc
  a253b4:	46c1                	li	a3,16
  a253b6:	45c1                	li	a1,16
  a253b8:	0a450513          	addi	a0,a0,164
  a253bc:	284d                	jal	ra,a2546e <memcpy_s>
  a253be:	8010                	pop	{ra},16
  a253c0:	f67ff06f          	j	a25326 <duplicate_preserve_mem>

00a253c4 <set_exception_info_riscv>:
  a253c4:	8018                	push	{ra},-16
  a253c6:	862a                	mv	a2,a0
  a253c8:	09000693          	li	a3,144
  a253cc:	09000593          	li	a1,144
  a253d0:	00a0 24dc 051f      	l.li	a0,0xa024dc
  a253d6:	2861                	jal	ra,a2546e <memcpy_s>
  a253d8:	8010                	pop	{ra},16
  a253da:	f4dff06f          	j	a25326 <duplicate_preserve_mem>

00a253de <set_exception_info>:
  a253de:	cd11                	beqz	a0,a253fa <set_exception_info+0x1c>
  a253e0:	8018                	push	{ra},-16
  a253e2:	862a                	mv	a2,a0
  a253e4:	00a0 24dc 051f      	l.li	a0,0xa024dc
  a253ea:	46d1                	li	a3,20
  a253ec:	45d1                	li	a1,20
  a253ee:	09050513          	addi	a0,a0,144
  a253f2:	28b5                	jal	ra,a2546e <memcpy_s>
  a253f4:	8010                	pop	{ra},16
  a253f6:	f31ff06f          	j	a25326 <duplicate_preserve_mem>
  a253fa:	8082                	ret

00a253fc <set_exception_stack_frame>:
  a253fc:	4958                	lw	a4,20(a0)
  a253fe:	00a0 24dc 079f      	l.li	a5,0xa024dc
  a25404:	08e7a623          	sw	a4,140(a5)
  a25408:	4d18                	lw	a4,24(a0)
  a2540a:	cbd8                	sw	a4,20(a5)
  a2540c:	f1bff06f          	j	a25326 <duplicate_preserve_mem>

00a25410 <SecMemcpyError>:
  a25410:	04b05b63          	blez	a1,a25466 <SecMemcpyError+0x56>
  a25414:	87aa                	mv	a5,a0
  a25416:	4859                	li	a6,22
  a25418:	c929                	beqz	a0,a2546a <SecMemcpyError+0x5a>
  a2541a:	8018                	push	{ra},-16
  a2541c:	8732                	mv	a4,a2
  a2541e:	862e                	mv	a2,a1
  a25420:	eb01                	bnez	a4,a25430 <SecMemcpyError+0x20>
  a25422:	4581                	li	a1,0
  a25424:	e20fb0ef          	jal	ra,a20a44 <memset>
  a25428:	09600813          	li	a6,150
  a2542c:	8542                	mv	a0,a6
  a2542e:	8014                	popret	{ra},16
  a25430:	00d5f863          	bgeu	a1,a3,a25440 <SecMemcpyError+0x30>
  a25434:	4581                	li	a1,0
  a25436:	e0efb0ef          	jal	ra,a20a44 <memset>
  a2543a:	0a200813          	li	a6,162
  a2543e:	b7fd                	j	a2542c <SecMemcpyError+0x1c>
  a25440:	00a77663          	bgeu	a4,a0,a2544c <SecMemcpyError+0x3c>
  a25444:	00d705b3          	add	a1,a4,a3
  a25448:	00b56863          	bltu	a0,a1,a25458 <SecMemcpyError+0x48>
  a2544c:	4801                	li	a6,0
  a2544e:	fce7ffe3          	bgeu	a5,a4,a2542c <SecMemcpyError+0x1c>
  a25452:	96be                	add	a3,a3,a5
  a25454:	fcd77ce3          	bgeu	a4,a3,a2542c <SecMemcpyError+0x1c>
  a25458:	4581                	li	a1,0
  a2545a:	853e                	mv	a0,a5
  a2545c:	de8fb0ef          	jal	ra,a20a44 <memset>
  a25460:	0b600813          	li	a6,182
  a25464:	b7e1                	j	a2542c <SecMemcpyError+0x1c>
  a25466:	02200813          	li	a6,34
  a2546a:	8542                	mv	a0,a6
  a2546c:	8082                	ret

00a2546e <memcpy_s>:
  a2546e:	02d5e363          	bltu	a1,a3,a25494 <memcpy_s+0x26>
  a25472:	c10d                	beqz	a0,a25494 <memcpy_s+0x26>
  a25474:	c205                	beqz	a2,a25494 <memcpy_s+0x26>
  a25476:	0005cf63          	bltz	a1,a25494 <memcpy_s+0x26>
  a2547a:	ce89                	beqz	a3,a25494 <memcpy_s+0x26>
  a2547c:	00a67663          	bgeu	a2,a0,a25488 <memcpy_s+0x1a>
  a25480:	00d607b3          	add	a5,a2,a3
  a25484:	00f57a63          	bgeu	a0,a5,a25498 <memcpy_s+0x2a>
  a25488:	00c57663          	bgeu	a0,a2,a25494 <memcpy_s+0x26>
  a2548c:	00d507b3          	add	a5,a0,a3
  a25490:	00f67463          	bgeu	a2,a5,a25498 <memcpy_s+0x2a>
  a25494:	f7dff06f          	j	a25410 <SecMemcpyError>
  a25498:	8018                	push	{ra},-16
  a2549a:	85b2                	mv	a1,a2
  a2549c:	8636                	mv	a2,a3
  a2549e:	e54fb0ef          	jal	ra,a20af2 <memcpy>
  a254a2:	4501                	li	a0,0
  a254a4:	8014                	popret	{ra},16

00a254a6 <memset_s>:
  a254a6:	87ae                	mv	a5,a1
  a254a8:	0205c363          	bltz	a1,a254ce <memset_s+0x28>
  a254ac:	8028                	push	{ra,s0},-16
  a254ae:	842a                	mv	s0,a0
  a254b0:	c911                	beqz	a0,a254c4 <memset_s+0x1e>
  a254b2:	85b2                	mv	a1,a2
  a254b4:	8636                	mv	a2,a3
  a254b6:	02d7e063          	bltu	a5,a3,a254d6 <memset_s+0x30>
  a254ba:	d8afb0ef          	jal	ra,a20a44 <memset>
  a254be:	4701                	li	a4,0
  a254c0:	853a                	mv	a0,a4
  a254c2:	8024                	popret	{ra,s0},16
  a254c4:	02200713          	li	a4,34
  a254c8:	dde5                	beqz	a1,a254c0 <memset_s+0x1a>
  a254ca:	4759                	li	a4,22
  a254cc:	bfd5                	j	a254c0 <memset_s+0x1a>
  a254ce:	02200713          	li	a4,34
  a254d2:	853a                	mv	a0,a4
  a254d4:	8082                	ret
  a254d6:	02200713          	li	a4,34
  a254da:	d3fd                	beqz	a5,a254c0 <memset_s+0x1a>
  a254dc:	863e                	mv	a2,a5
  a254de:	d66fb0ef          	jal	ra,a20a44 <memset>
  a254e2:	0a200713          	li	a4,162
  a254e6:	bfe9                	j	a254c0 <memset_s+0x1a>

00a254e8 <SecWriteMultiChar>:
  a254e8:	8732                	mv	a4,a2
  a254ea:	00e04663          	bgtz	a4,a254f6 <SecWriteMultiChar+0xe>
  a254ee:	429c                	lw	a5,0(a3)
  a254f0:	963e                	add	a2,a2,a5
  a254f2:	c290                	sw	a2,0(a3)
  a254f4:	8082                	ret
  a254f6:	411c                	lw	a5,0(a0)
  a254f8:	17fd                	addi	a5,a5,-1
  a254fa:	c11c                	sw	a5,0(a0)
  a254fc:	0007d563          	bgez	a5,a25506 <SecWriteMultiChar+0x1e>
  a25500:	57fd                	li	a5,-1
  a25502:	c29c                	sw	a5,0(a3)
  a25504:	8082                	ret
  a25506:	415c                	lw	a5,4(a0)
  a25508:	177d                	addi	a4,a4,-1
  a2550a:	a38c                	sb	a1,0(a5)
  a2550c:	415c                	lw	a5,4(a0)
  a2550e:	0785                	addi	a5,a5,1
  a25510:	c15c                	sw	a5,4(a0)
  a25512:	bfe1                	j	a254ea <SecWriteMultiChar+0x2>

00a25514 <SecOutput>:
  a25514:	9fd8                	push	{ra,s0-s11},-560
  a25516:	00a27ab7          	lui	s5,0xa27
  a2551a:	768a8793          	addi	a5,s5,1896 # a27768 <g_itoaUpperDigits>
  a2551e:	711d                	addi	sp,sp,-96
  a25520:	cc3e                	sw	a5,24(sp)
  a25522:	00a27b37          	lui	s6,0xa27
  a25526:	47a9                	li	a5,10
  a25528:	8caa                	mv	s9,a0
  a2552a:	8432                	mv	s0,a2
  a2552c:	ce02                	sw	zero,28(sp)
  a2552e:	d002                	sw	zero,32(sp)
  a25530:	d202                	sw	zero,36(sp)
  a25532:	d43e                	sw	a5,40(sp)
  a25534:	d602                	sw	zero,44(sp)
  a25536:	d802                	sw	zero,48(sp)
  a25538:	da02                	sw	zero,52(sp)
  a2553a:	dc02                	sw	zero,56(sp)
  a2553c:	de02                	sw	zero,60(sp)
  a2553e:	c082                	sw	zero,64(sp)
  a25540:	c282                	sw	zero,68(sp)
  a25542:	04011423          	sh	zero,72(sp)
  a25546:	ca02                	sw	zero,20(sp)
  a25548:	4701                	li	a4,0
  a2554a:	768a8a93          	addi	s5,s5,1896
  a2554e:	00a2 777c 0b9f      	l.li	s7,0xa2777c
  a25554:	734b0b13          	addi	s6,s6,1844 # a27734 <g_efuse_cfg+0x784>
  a25558:	00a0 249c 0c1f      	l.li	s8,0xa0249c
  a2555e:	00a2 7754 091f      	l.li	s2,0xa27754
  a25564:	219c                	lbu	a5,0(a1)
  a25566:	c781                	beqz	a5,a2556e <SecOutput+0x5a>
  a25568:	46d2                	lw	a3,20(sp)
  a2556a:	0006d963          	bgez	a3,a2557c <SecOutput+0x68>
  a2556e:	c319                	beqz	a4,a25574 <SecOutput+0x60>
  a25570:	0737163b          	bnei	a4,7,a25648 <SecOutput+0x134>
  a25574:	4552                	lw	a0,20(sp)
  a25576:	25010113          	addi	sp,sp,592
  a2557a:	80d4                	popret	{ra,s0-s11},64
  a2557c:	00fb86b3          	add	a3,s7,a5
  a25580:	2294                	lbu	a3,0(a3)
  a25582:	00158a13          	addi	s4,a1,1
  a25586:	08dbd6db          	muliadd	a3,s7,a3,9
  a2558a:	96ba                	add	a3,a3,a4
  a2558c:	1006c983          	lbu	s3,256(a3) # 4100 <ccause+0x313e>
  a25590:	0829fe3b          	bgeui	s3,8,a25648 <SecOutput+0x134>
  a25594:	053b069b          	addshf	a3,s6,s3,sll,2
  a25598:	4294                	lw	a3,0(a3)
  a2559a:	8682                	jr	a3
  a2559c:	000ca703          	lw	a4,0(s9)
  a255a0:	177d                	addi	a4,a4,-1
  a255a2:	00eca023          	sw	a4,0(s9)
  a255a6:	02074063          	bltz	a4,a255c6 <SecOutput+0xb2>
  a255aa:	004ca703          	lw	a4,4(s9)
  a255ae:	a31c                	sb	a5,0(a4)
  a255b0:	004ca783          	lw	a5,4(s9)
  a255b4:	0785                	addi	a5,a5,1
  a255b6:	00fca223          	sw	a5,4(s9)
  a255ba:	47d2                	lw	a5,20(sp)
  a255bc:	0785                	addi	a5,a5,1
  a255be:	ca3e                	sw	a5,20(sp)
  a255c0:	85d2                	mv	a1,s4
  a255c2:	874e                	mv	a4,s3
  a255c4:	b745                	j	a25564 <SecOutput+0x50>
  a255c6:	57fd                	li	a5,-1
  a255c8:	bfdd                	j	a255be <SecOutput+0xaa>
  a255ca:	57fd                	li	a5,-1
  a255cc:	c282                	sw	zero,68(sp)
  a255ce:	d002                	sw	zero,32(sp)
  a255d0:	d602                	sw	zero,44(sp)
  a255d2:	d802                	sw	zero,48(sp)
  a255d4:	da3e                	sw	a5,52(sp)
  a255d6:	d202                	sw	zero,36(sp)
  a255d8:	dc02                	sw	zero,56(sp)
  a255da:	de02                	sw	zero,60(sp)
  a255dc:	b7d5                	j	a255c0 <SecOutput+0xac>
  a255de:	02b00713          	li	a4,43
  a255e2:	02e78963          	beq	a5,a4,a25614 <SecOutput+0x100>
  a255e6:	00f76a63          	bltu	a4,a5,a255fa <SecOutput+0xe6>
  a255ea:	2007883b          	beqi	a5,32,a2560a <SecOutput+0xf6>
  a255ee:	23f794bb          	bnei	a5,35,a255c0 <SecOutput+0xac>
  a255f2:	57b2                	lw	a5,44(sp)
  a255f4:	0807e793          	ori	a5,a5,128
  a255f8:	a821                	j	a25610 <SecOutput+0xfc>
  a255fa:	2d0788bb          	beqi	a5,45,a2561c <SecOutput+0x108>
  a255fe:	30f790bb          	bnei	a5,48,a255c0 <SecOutput+0xac>
  a25602:	57b2                	lw	a5,44(sp)
  a25604:	0087e793          	ori	a5,a5,8
  a25608:	a021                	j	a25610 <SecOutput+0xfc>
  a2560a:	57b2                	lw	a5,44(sp)
  a2560c:	0027e793          	ori	a5,a5,2
  a25610:	d63e                	sw	a5,44(sp)
  a25612:	b77d                	j	a255c0 <SecOutput+0xac>
  a25614:	57b2                	lw	a5,44(sp)
  a25616:	0017e793          	ori	a5,a5,1
  a2561a:	bfdd                	j	a25610 <SecOutput+0xfc>
  a2561c:	57b2                	lw	a5,44(sp)
  a2561e:	0047e793          	ori	a5,a5,4
  a25622:	b7fd                	j	a25610 <SecOutput+0xfc>
  a25624:	2a0793bb          	bnei	a5,42,a25632 <SecOutput+0x11e>
  a25628:	4014                	lw	a3,0(s0)
  a2562a:	0411                	addi	s0,s0,4
  a2562c:	d836                	sw	a3,48(sp)
  a2562e:	4685                	li	a3,1
  a25630:	dc36                	sw	a3,56(sp)
  a25632:	56e2                	lw	a3,56(sp)
  a25634:	e695                	bnez	a3,a25660 <SecOutput+0x14c>
  a25636:	030701bb          	beqi	a4,3,a2563c <SecOutput+0x128>
  a2563a:	d802                	sw	zero,48(sp)
  a2563c:	56c2                	lw	a3,48(sp)
  a2563e:	0147 ae14 071f      	l.li	a4,0x147ae14
  a25644:	00d75463          	bge	a4,a3,a2564c <SecOutput+0x138>
  a25648:	557d                	li	a0,-1
  a2564a:	b735                	j	a25576 <SecOutput+0x62>
  a2564c:	00269713          	slli	a4,a3,0x2
  a25650:	fd078793          	addi	a5,a5,-48
  a25654:	9736                	add	a4,a4,a3
  a25656:	9f81                	uxtb	a5
  a25658:	02e7879b          	addshf	a5,a5,a4,sll,1
  a2565c:	d83e                	sw	a5,48(sp)
  a2565e:	b78d                	j	a255c0 <SecOutput+0xac>
  a25660:	57c2                	lw	a5,48(sp)
  a25662:	0007d963          	bgez	a5,a25674 <SecOutput+0x160>
  a25666:	5732                	lw	a4,44(sp)
  a25668:	40f007b3          	neg	a5,a5
  a2566c:	d83e                	sw	a5,48(sp)
  a2566e:	00476713          	ori	a4,a4,4
  a25672:	d63a                	sw	a4,44(sp)
  a25674:	5742                	lw	a4,48(sp)
  a25676:	0ccc ccc8 079f      	l.li	a5,0xcccccc8
  a2567c:	f4e7d2e3          	bge	a5,a4,a255c0 <SecOutput+0xac>
  a25680:	b7e1                	j	a25648 <SecOutput+0x134>
  a25682:	da02                	sw	zero,52(sp)
  a25684:	bf35                	j	a255c0 <SecOutput+0xac>
  a25686:	2a0793bb          	bnei	a5,42,a25694 <SecOutput+0x180>
  a2568a:	4018                	lw	a4,0(s0)
  a2568c:	0411                	addi	s0,s0,4
  a2568e:	da3a                	sw	a4,52(sp)
  a25690:	4705                	li	a4,1
  a25692:	de3a                	sw	a4,60(sp)
  a25694:	56f2                	lw	a3,60(sp)
  a25696:	5752                	lw	a4,52(sp)
  a25698:	e285                	bnez	a3,a256b8 <SecOutput+0x1a4>
  a2569a:	0147 ae14 069f      	l.li	a3,0x147ae14
  a256a0:	fae6c4e3          	blt	a3,a4,a25648 <SecOutput+0x134>
  a256a4:	00271693          	slli	a3,a4,0x2
  a256a8:	fd078793          	addi	a5,a5,-48
  a256ac:	9736                	add	a4,a4,a3
  a256ae:	9f81                	uxtb	a5
  a256b0:	02e7879b          	addshf	a5,a5,a4,sll,1
  a256b4:	da3e                	sw	a5,52(sp)
  a256b6:	b729                	j	a255c0 <SecOutput+0xac>
  a256b8:	00075463          	bgez	a4,a256c0 <SecOutput+0x1ac>
  a256bc:	57fd                	li	a5,-1
  a256be:	da3e                	sw	a5,52(sp)
  a256c0:	5752                	lw	a4,52(sp)
  a256c2:	bf55                	j	a25676 <SecOutput+0x162>
  a256c4:	06a00713          	li	a4,106
  a256c8:	08e78763          	beq	a5,a4,a25756 <SecOutput+0x242>
  a256cc:	04f76063          	bltu	a4,a5,a2570c <SecOutput+0x1f8>
  a256d0:	04c00713          	li	a4,76
  a256d4:	04e78663          	beq	a5,a4,a25720 <SecOutput+0x20c>
  a256d8:	00f76e63          	bltu	a4,a5,a256f4 <SecOutput+0x1e0>
  a256dc:	49b7993b          	bnei	a5,73,a255c0 <SecOutput+0xac>
  a256e0:	319c                	lbu	a5,1(a1)
  a256e2:	36179fbb          	bnei	a5,54,a25760 <SecOutput+0x24c>
  a256e6:	21bc                	lbu	a5,2(a1)
  a256e8:	34279d3b          	bnei	a5,52,a2579c <SecOutput+0x288>
  a256ec:	00358a13          	addi	s4,a1,3
  a256f0:	6721                	lui	a4,0x8
  a256f2:	a091                	j	a25736 <SecOutput+0x222>
  a256f4:	5a078fbb          	beqi	a5,90,a25732 <SecOutput+0x21e>
  a256f8:	68b7923b          	bnei	a5,104,a255c0 <SecOutput+0xac>
  a256fc:	3194                	lbu	a3,1(a1)
  a256fe:	5732                	lw	a4,44(sp)
  a25700:	0af69763          	bne	a3,a5,a257ae <SecOutput+0x29a>
  a25704:	00258a13          	addi	s4,a1,2
  a25708:	6789                	lui	a5,0x2
  a2570a:	a081                	j	a2574a <SecOutput+0x236>
  a2570c:	07400713          	li	a4,116
  a25710:	04e78663          	beq	a5,a4,a2575c <SecOutput+0x248>
  a25714:	00f76b63          	bltu	a4,a5,a2572a <SecOutput+0x216>
  a25718:	6c07893b          	beqi	a5,108,a2573c <SecOutput+0x228>
  a2571c:	71a7993b          	bnei	a5,113,a255c0 <SecOutput+0xac>
  a25720:	57b2                	lw	a5,44(sp)
  a25722:	0000 1400 071f      	l.li	a4,0x1400
  a25728:	a801                	j	a25738 <SecOutput+0x224>
  a2572a:	772782bb          	beqi	a5,119,a257b4 <SecOutput+0x2a0>
  a2572e:	7aa794bb          	bnei	a5,122,a255c0 <SecOutput+0xac>
  a25732:	00020737          	lui	a4,0x20
  a25736:	57b2                	lw	a5,44(sp)
  a25738:	8fd9                	or	a5,a5,a4
  a2573a:	bdd9                	j	a25610 <SecOutput+0xfc>
  a2573c:	3194                	lbu	a3,1(a1)
  a2573e:	5732                	lw	a4,44(sp)
  a25740:	00f69763          	bne	a3,a5,a2574e <SecOutput+0x23a>
  a25744:	00258a13          	addi	s4,a1,2
  a25748:	6785                	lui	a5,0x1
  a2574a:	8f5d                	or	a4,a4,a5
  a2574c:	a019                	j	a25752 <SecOutput+0x23e>
  a2574e:	01076713          	ori	a4,a4,16
  a25752:	d63a                	sw	a4,44(sp)
  a25754:	b5b5                	j	a255c0 <SecOutput+0xac>
  a25756:	00040737          	lui	a4,0x40
  a2575a:	bff1                	j	a25736 <SecOutput+0x222>
  a2575c:	6741                	lui	a4,0x10
  a2575e:	bfe1                	j	a25736 <SecOutput+0x222>
  a25760:	3307963b          	bnei	a5,51,a25778 <SecOutput+0x264>
  a25764:	21bc                	lbu	a5,2(a1)
  a25766:	32079dbb          	bnei	a5,50,a2579c <SecOutput+0x288>
  a2576a:	57b2                	lw	a5,44(sp)
  a2576c:	7761                	lui	a4,0xffff8
  a2576e:	177d                	addi	a4,a4,-1 # ffff7fff <__data_load__+0xff5d072f>
  a25770:	00358a13          	addi	s4,a1,3
  a25774:	8ff9                	and	a5,a5,a4
  a25776:	bd69                	j	a25610 <SecOutput+0xfc>
  a25778:	f9c78713          	addi	a4,a5,-100 # f9c <__data_size__+0xec0>
  a2577c:	0ff77693          	andi	a3,a4,255
  a25780:	1206f53b          	bgeui	a3,18,a25794 <SecOutput+0x280>
  a25784:	0002 0821 071f      	l.li	a4,0x20821
  a2578a:	00d75733          	srl	a4,a4,a3
  a2578e:	8b05                	andi	a4,a4,1
  a25790:	e20718e3          	bnez	a4,a255c0 <SecOutput+0xac>
  a25794:	0df7f793          	andi	a5,a5,223
  a25798:	58878a3b          	beqi	a5,88,a255c0 <SecOutput+0xac>
  a2579c:	000ca783          	lw	a5,0(s9)
  a257a0:	17fd                	addi	a5,a5,-1
  a257a2:	00fca023          	sw	a5,0(s9)
  a257a6:	0007dc63          	bgez	a5,a257be <SecOutput+0x2aa>
  a257aa:	57fd                	li	a5,-1
  a257ac:	a02d                	j	a257d6 <SecOutput+0x2c2>
  a257ae:	02076713          	ori	a4,a4,32
  a257b2:	b745                	j	a25752 <SecOutput+0x23e>
  a257b4:	57b2                	lw	a5,44(sp)
  a257b6:	0000 0800 071f      	l.li	a4,0x800
  a257bc:	bfb5                	j	a25738 <SecOutput+0x224>
  a257be:	004ca783          	lw	a5,4(s9)
  a257c2:	04900713          	li	a4,73
  a257c6:	a398                	sb	a4,0(a5)
  a257c8:	004ca783          	lw	a5,4(s9)
  a257cc:	0785                	addi	a5,a5,1
  a257ce:	00fca223          	sw	a5,4(s9)
  a257d2:	47d2                	lw	a5,20(sp)
  a257d4:	0785                	addi	a5,a5,1
  a257d6:	ca3e                	sw	a5,20(sp)
  a257d8:	4981                	li	s3,0
  a257da:	b3dd                	j	a255c0 <SecOutput+0xac>
  a257dc:	6847f23b          	bgeui	a5,104,a258e4 <SecOutput+0x3d0>
  a257e0:	06500713          	li	a4,101
  a257e4:	e6e7f2e3          	bgeu	a5,a4,a25648 <SecOutput+0x134>
  a257e8:	05300713          	li	a4,83
  a257ec:	1ae78963          	beq	a5,a4,a2599e <SecOutput+0x48a>
  a257f0:	08f76f63          	bltu	a4,a5,a2588e <SecOutput+0x37a>
  a257f4:	04300713          	li	a4,67
  a257f8:	14e78f63          	beq	a5,a4,a25956 <SecOutput+0x442>
  a257fc:	00e7e663          	bltu	a5,a4,a25808 <SecOutput+0x2f4>
  a25800:	fbb78793          	addi	a5,a5,-69
  a25804:	0397e13b          	bltui	a5,3,a25648 <SecOutput+0x134>
  a25808:	5782                	lw	a5,32(sp)
  a2580a:	5642                	lw	a2,48(sp)
  a2580c:	8e1d                	sub	a2,a2,a5
  a2580e:	4796                	lw	a5,68(sp)
  a25810:	8e1d                	sub	a2,a2,a5
  a25812:	57b2                	lw	a5,44(sp)
  a25814:	c0b2                	sw	a2,64(sp)
  a25816:	8bb1                	andi	a5,a5,12
  a25818:	eb89                	bnez	a5,a2582a <SecOutput+0x316>
  a2581a:	00c05863          	blez	a2,a2582a <SecOutput+0x316>
  a2581e:	0854                	addi	a3,sp,20
  a25820:	02000593          	li	a1,32
  a25824:	8566                	mv	a0,s9
  a25826:	cc3ff0ef          	jal	ra,a254e8 <SecWriteMultiChar>
  a2582a:	4696                	lw	a3,68(sp)
  a2582c:	00d05e63          	blez	a3,a25848 <SecOutput+0x334>
  a25830:	083c                	addi	a5,sp,24
  a25832:	00f68633          	add	a2,a3,a5
  a25836:	000ca703          	lw	a4,0(s9)
  a2583a:	177d                	addi	a4,a4,-1
  a2583c:	00eca023          	sw	a4,0(s9)
  a25840:	4a075e63          	bgez	a4,a25cfc <SecOutput+0x7e8>
  a25844:	57fd                	li	a5,-1
  a25846:	ca3e                	sw	a5,20(sp)
  a25848:	57b2                	lw	a5,44(sp)
  a2584a:	8bb1                	andi	a5,a5,12
  a2584c:	080795bb          	bnei	a5,8,a25862 <SecOutput+0x34e>
  a25850:	4606                	lw	a2,64(sp)
  a25852:	00c05863          	blez	a2,a25862 <SecOutput+0x34e>
  a25856:	0854                	addi	a3,sp,20
  a25858:	03000593          	li	a1,48
  a2585c:	8566                	mv	a0,s9
  a2585e:	c8bff0ef          	jal	ra,a254e8 <SecWriteMultiChar>
  a25862:	5792                	lw	a5,36(sp)
  a25864:	4a078c63          	beqz	a5,a25d1c <SecOutput+0x808>
  a25868:	57fd                	li	a5,-1
  a2586a:	ca3e                	sw	a5,20(sp)
  a2586c:	47d2                	lw	a5,20(sp)
  a2586e:	d407c9e3          	bltz	a5,a255c0 <SecOutput+0xac>
  a25872:	57b2                	lw	a5,44(sp)
  a25874:	8b91                	andi	a5,a5,4
  a25876:	d40785e3          	beqz	a5,a255c0 <SecOutput+0xac>
  a2587a:	4606                	lw	a2,64(sp)
  a2587c:	d4c052e3          	blez	a2,a255c0 <SecOutput+0xac>
  a25880:	0854                	addi	a3,sp,20
  a25882:	02000593          	li	a1,32
  a25886:	8566                	mv	a0,s9
  a25888:	c61ff0ef          	jal	ra,a254e8 <SecWriteMultiChar>
  a2588c:	bb15                	j	a255c0 <SecOutput+0xac>
  a2588e:	06300713          	li	a4,99
  a25892:	0ce78c63          	beq	a5,a4,a2596a <SecOutput+0x456>
  a25896:	06f76163          	bltu	a4,a5,a258f8 <SecOutput+0x3e4>
  a2589a:	58d79bbb          	bnei	a5,88,a25808 <SecOutput+0x2f4>
  a2589e:	4741                	li	a4,16
  a258a0:	d43a                	sw	a4,40(sp)
  a258a2:	cc4a                	sw	s2,24(sp)
  a258a4:	5732                	lw	a4,44(sp)
  a258a6:	585785bb          	beqi	a5,88,a259fc <SecOutput+0x4e8>
  a258aa:	7057953b          	bnei	a5,112,a259fe <SecOutput+0x4ea>
  a258ae:	0000 4090 079f      	l.li	a5,0x4090
  a258b4:	8f5d                	or	a4,a4,a5
  a258b6:	4789                	li	a5,2
  a258b8:	c2be                	sw	a5,68(sp)
  a258ba:	77e1                	lui	a5,0xffff8
  a258bc:	8307c793          	xori	a5,a5,-2000
  a258c0:	da02                	sw	zero,52(sp)
  a258c2:	d63a                	sw	a4,44(sp)
  a258c4:	04f11423          	sh	a5,72(sp)
  a258c8:	57b2                	lw	a5,44(sp)
  a258ca:	6725                	lui	a4,0x9
  a258cc:	8f7d                	and	a4,a4,a5
  a258ce:	16070a63          	beqz	a4,a25a42 <SecOutput+0x52e>
  a258d2:	041d                	addi	s0,s0,7
  a258d4:	ff847793          	andi	a5,s0,-8
  a258d8:	00878413          	addi	s0,a5,8 # ffff8008 <__data_load__+0xff5d0738>
  a258dc:	4384                	lw	s1,0(a5)
  a258de:	0047ad03          	lw	s10,4(a5)
  a258e2:	a245                	j	a25a82 <SecOutput+0x56e>
  a258e4:	07000713          	li	a4,112
  a258e8:	fae78be3          	beq	a5,a4,a2589e <SecOutput+0x38a>
  a258ec:	02f76363          	bltu	a4,a5,a25912 <SecOutput+0x3fe>
  a258f0:	6907823b          	beqi	a5,105,a258f8 <SecOutput+0x3e4>
  a258f4:	6fc7953b          	bnei	a5,111,a25808 <SecOutput+0x2f4>
  a258f8:	06900693          	li	a3,105
  a258fc:	5732                	lw	a4,44(sp)
  a258fe:	00d78663          	beq	a5,a3,a2590a <SecOutput+0x3f6>
  a25902:	10f6ed63          	bltu	a3,a5,a25a1c <SecOutput+0x508>
  a25906:	64f790bb          	bnei	a5,100,a258c8 <SecOutput+0x3b4>
  a2590a:	04076713          	ori	a4,a4,64
  a2590e:	d63a                	sw	a4,44(sp)
  a25910:	aa11                	j	a25a24 <SecOutput+0x510>
  a25912:	75f789bb          	beqi	a5,117,a258f8 <SecOutput+0x3e4>
  a25916:	78e7823b          	beqi	a5,120,a2589e <SecOutput+0x38a>
  a2591a:	73b79bbb          	bnei	a5,115,a25808 <SecOutput+0x2f4>
  a2591e:	57b2                	lw	a5,44(sp)
  a25920:	4014                	lw	a3,0(s0)
  a25922:	00440493          	addi	s1,s0,4
  a25926:	ff77f713          	andi	a4,a5,-9
  a2592a:	d63a                	sw	a4,44(sp)
  a2592c:	0000 0810 071f      	l.li	a4,0x810
  a25932:	8ff9                	and	a5,a5,a4
  a25934:	ce36                	sw	a3,28(sp)
  a25936:	5752                	lw	a4,52(sp)
  a25938:	ebd9                	bnez	a5,a259ce <SecOutput+0x4ba>
  a2593a:	e689                	bnez	a3,a25944 <SecOutput+0x430>
  a2593c:	00a0 24a4 079f      	l.li	a5,0xa024a4
  a25942:	ce3e                	sw	a5,28(sp)
  a25944:	4572                	lw	a0,28(sp)
  a25946:	ff171bbb          	bnei	a4,-1,a259b4 <SecOutput+0x4a0>
  a2594a:	c62fb0ef          	jal	ra,a20dac <strlen>
  a2594e:	06055b63          	bgez	a0,a259c4 <SecOutput+0x4b0>
  a25952:	4501                	li	a0,0
  a25954:	a885                	j	a259c4 <SecOutput+0x4b0>
  a25956:	57b2                	lw	a5,44(sp)
  a25958:	6705                	lui	a4,0x1
  a2595a:	83070693          	addi	a3,a4,-2000 # 830 <__data_size__+0x754>
  a2595e:	8efd                	and	a3,a3,a5
  a25960:	e689                	bnez	a3,a2596a <SecOutput+0x456>
  a25962:	80070713          	addi	a4,a4,-2048
  a25966:	8fd9                	or	a5,a5,a4
  a25968:	d63e                	sw	a5,44(sp)
  a2596a:	57b2                	lw	a5,44(sp)
  a2596c:	4605                	li	a2,1
  a2596e:	d032                	sw	a2,32(sp)
  a25970:	ff77f593          	andi	a1,a5,-9
  a25974:	d62e                	sw	a1,44(sp)
  a25976:	0000 0810 059f      	l.li	a1,0x810
  a2597c:	8fed                	and	a5,a5,a1
  a2597e:	00440713          	addi	a4,s0,4
  a25982:	4014                	lw	a3,0(s0)
  a25984:	c799                	beqz	a5,a25992 <SecOutput+0x47e>
  a25986:	00fc                	addi	a5,sp,76
  a25988:	c6b6                	sw	a3,76(sp)
  a2598a:	ce3e                	sw	a5,28(sp)
  a2598c:	d232                	sw	a2,36(sp)
  a2598e:	843a                	mv	s0,a4
  a25990:	bda5                	j	a25808 <SecOutput+0x2f4>
  a25992:	00fc                	addi	a5,sp,76
  a25994:	04d10623          	sb	a3,76(sp)
  a25998:	ce3e                	sw	a5,28(sp)
  a2599a:	d202                	sw	zero,36(sp)
  a2599c:	bfcd                	j	a2598e <SecOutput+0x47a>
  a2599e:	57b2                	lw	a5,44(sp)
  a259a0:	6705                	lui	a4,0x1
  a259a2:	83070693          	addi	a3,a4,-2000 # 830 <__data_size__+0x754>
  a259a6:	8efd                	and	a3,a3,a5
  a259a8:	fabd                	bnez	a3,a2591e <SecOutput+0x40a>
  a259aa:	80070713          	addi	a4,a4,-2048
  a259ae:	8fd9                	or	a5,a5,a4
  a259b0:	d63e                	sw	a5,44(sp)
  a259b2:	b7b5                	j	a2591e <SecOutput+0x40a>
  a259b4:	972a                	add	a4,a4,a0
  a259b6:	87aa                	mv	a5,a0
  a259b8:	00e78463          	beq	a5,a4,a259c0 <SecOutput+0x4ac>
  a259bc:	2394                	lbu	a3,0(a5)
  a259be:	e691                	bnez	a3,a259ca <SecOutput+0x4b6>
  a259c0:	40a78533          	sub	a0,a5,a0
  a259c4:	d02a                	sw	a0,32(sp)
  a259c6:	8426                	mv	s0,s1
  a259c8:	b581                	j	a25808 <SecOutput+0x2f4>
  a259ca:	0785                	addi	a5,a5,1
  a259cc:	b7f5                	j	a259b8 <SecOutput+0x4a4>
  a259ce:	4785                	li	a5,1
  a259d0:	d23e                	sw	a5,36(sp)
  a259d2:	e689                	bnez	a3,a259dc <SecOutput+0x4c8>
  a259d4:	00a0 24ac 079f      	l.li	a5,0xa024ac
  a259da:	ce3e                	sw	a5,28(sp)
  a259dc:	46f2                	lw	a3,28(sp)
  a259de:	4781                	li	a5,0
  a259e0:	00e78463          	beq	a5,a4,a259e8 <SecOutput+0x4d4>
  a259e4:	4290                	lw	a2,0(a3)
  a259e6:	ea01                	bnez	a2,a259f6 <SecOutput+0x4e2>
  a259e8:	20000737          	lui	a4,0x20000
  a259ec:	00e7e363          	bltu	a5,a4,a259f2 <SecOutput+0x4de>
  a259f0:	4781                	li	a5,0
  a259f2:	d03e                	sw	a5,32(sp)
  a259f4:	bfc9                	j	a259c6 <SecOutput+0x4b2>
  a259f6:	0785                	addi	a5,a5,1
  a259f8:	0691                	addi	a3,a3,4
  a259fa:	b7dd                	j	a259e0 <SecOutput+0x4cc>
  a259fc:	cc56                	sw	s5,24(sp)
  a259fe:	08077713          	andi	a4,a4,128
  a25a02:	ee070be3          	beqz	a4,a258f8 <SecOutput+0x3e4>
  a25a06:	03000713          	li	a4,48
  a25a0a:	04e10423          	sb	a4,72(sp)
  a25a0e:	4762                	lw	a4,24(sp)
  a25a10:	2b18                	lbu	a4,16(a4)
  a25a12:	04e104a3          	sb	a4,73(sp)
  a25a16:	4709                	li	a4,2
  a25a18:	c2ba                	sw	a4,68(sp)
  a25a1a:	bdf9                	j	a258f8 <SecOutput+0x3e4>
  a25a1c:	6f07843b          	beqi	a5,111,a25a2c <SecOutput+0x518>
  a25a20:	75a79a3b          	bnei	a5,117,a258c8 <SecOutput+0x3b4>
  a25a24:	47a9                	li	a5,10
  a25a26:	d43e                	sw	a5,40(sp)
  a25a28:	cc4a                	sw	s2,24(sp)
  a25a2a:	bd79                	j	a258c8 <SecOutput+0x3b4>
  a25a2c:	47a1                	li	a5,8
  a25a2e:	d43e                	sw	a5,40(sp)
  a25a30:	cc4a                	sw	s2,24(sp)
  a25a32:	08077793          	andi	a5,a4,128
  a25a36:	e80789e3          	beqz	a5,a258c8 <SecOutput+0x3b4>
  a25a3a:	20076713          	ori	a4,a4,512
  a25a3e:	d63a                	sw	a4,44(sp)
  a25a40:	b561                	j	a258c8 <SecOutput+0x3b4>
  a25a42:	0107f693          	andi	a3,a5,16
  a25a46:	0407f713          	andi	a4,a5,64
  a25a4a:	c689                	beqz	a3,a25a54 <SecOutput+0x540>
  a25a4c:	4004                	lw	s1,0(s0)
  a25a4e:	0411                	addi	s0,s0,4
  a25a50:	cb4d                	beqz	a4,a25b02 <SecOutput+0x5ee>
  a25a52:	a065                	j	a25afa <SecOutput+0x5e6>
  a25a54:	01279693          	slli	a3,a5,0x12
  a25a58:	0806d963          	bgez	a3,a25aea <SecOutput+0x5d6>
  a25a5c:	4014                	lw	a3,0(s0)
  a25a5e:	4d01                	li	s10,0
  a25a60:	0411                	addi	s0,s0,4
  a25a62:	0ff6f493          	andi	s1,a3,255
  a25a66:	cf11                	beqz	a4,a25a82 <SecOutput+0x56e>
  a25a68:	06e2                	slli	a3,a3,0x18
  a25a6a:	86e1                	srai	a3,a3,0x18
  a25a6c:	0006db63          	bgez	a3,a25a82 <SecOutput+0x56e>
  a25a70:	fff4c493          	not	s1,s1
  a25a74:	9c81                	uxtb	s1
  a25a76:	0485                	addi	s1,s1,1
  a25a78:	1007e793          	ori	a5,a5,256
  a25a7c:	41f4dd13          	srai	s10,s1,0x1f
  a25a80:	d63e                	sw	a5,44(sp)
  a25a82:	57b2                	lw	a5,44(sp)
  a25a84:	8da6                	mv	s11,s1
  a25a86:	876a                	mv	a4,s10
  a25a88:	0407f693          	andi	a3,a5,64
  a25a8c:	ce89                	beqz	a3,a25aa6 <SecOutput+0x592>
  a25a8e:	000d5c63          	bgez	s10,a25aa6 <SecOutput+0x592>
  a25a92:	40900db3          	neg	s11,s1
  a25a96:	01b036b3          	snez	a3,s11
  a25a9a:	41a00733          	neg	a4,s10
  a25a9e:	1007e793          	ori	a5,a5,256
  a25aa2:	8f15                	sub	a4,a4,a3
  a25aa4:	d63e                	sw	a5,44(sp)
  a25aa6:	56b2                	lw	a3,44(sp)
  a25aa8:	000497b7          	lui	a5,0x49
  a25aac:	8ff5                	and	a5,a5,a3
  a25aae:	e391                	bnez	a5,a25ab2 <SecOutput+0x59e>
  a25ab0:	4701                	li	a4,0
  a25ab2:	24c10813          	addi	a6,sp,588
  a25ab6:	ce42                	sw	a6,28(sp)
  a25ab8:	00ede7b3          	or	a5,s11,a4
  a25abc:	e3c1                	bnez	a5,a25b3c <SecOutput+0x628>
  a25abe:	c282                	sw	zero,68(sp)
  a25ac0:	d002                	sw	zero,32(sp)
  a25ac2:	5752                	lw	a4,52(sp)
  a25ac4:	4685                	li	a3,1
  a25ac6:	00074f63          	bltz	a4,a25ae4 <SecOutput+0x5d0>
  a25aca:	57b2                	lw	a5,44(sp)
  a25acc:	01179693          	slli	a3,a5,0x11
  a25ad0:	0006c463          	bltz	a3,a25ad8 <SecOutput+0x5c4>
  a25ad4:	9bdd                	andi	a5,a5,-9
  a25ad6:	d63e                	sw	a5,44(sp)
  a25ad8:	20000793          	li	a5,512
  a25adc:	00e7d363          	bge	a5,a4,a25ae2 <SecOutput+0x5ce>
  a25ae0:	da3e                	sw	a5,52(sp)
  a25ae2:	56d2                	lw	a3,52(sp)
  a25ae4:	03000613          	li	a2,48
  a25ae8:	aa69                	j	a25c82 <SecOutput+0x76e>
  a25aea:	0207f693          	andi	a3,a5,32
  a25aee:	ce81                	beqz	a3,a25b06 <SecOutput+0x5f2>
  a25af0:	4004                	lw	s1,0(s0)
  a25af2:	0411                	addi	s0,s0,4
  a25af4:	c711                	beqz	a4,a25b00 <SecOutput+0x5ec>
  a25af6:	04c2                	slli	s1,s1,0x10
  a25af8:	84c1                	srai	s1,s1,0x10
  a25afa:	41f4dd13          	srai	s10,s1,0x1f
  a25afe:	b751                	j	a25a82 <SecOutput+0x56e>
  a25b00:	9ca1                	uxth	s1
  a25b02:	4d01                	li	s10,0
  a25b04:	bfbd                	j	a25a82 <SecOutput+0x56e>
  a25b06:	00f79693          	slli	a3,a5,0xf
  a25b0a:	0006d763          	bgez	a3,a25b18 <SecOutput+0x604>
  a25b0e:	4004                	lw	s1,0(s0)
  a25b10:	0411                	addi	s0,s0,4
  a25b12:	41f4dd13          	srai	s10,s1,0x1f
  a25b16:	b7b5                	j	a25a82 <SecOutput+0x56e>
  a25b18:	00e79693          	slli	a3,a5,0xe
  a25b1c:	0006db63          	bgez	a3,a25b32 <SecOutput+0x61e>
  a25b20:	4004                	lw	s1,0(s0)
  a25b22:	00440793          	addi	a5,s0,4
  a25b26:	41f4dd13          	srai	s10,s1,0x1f
  a25b2a:	e311                	bnez	a4,a25b2e <SecOutput+0x61a>
  a25b2c:	4d01                	li	s10,0
  a25b2e:	843e                	mv	s0,a5
  a25b30:	bf89                	j	a25a82 <SecOutput+0x56e>
  a25b32:	00d79693          	slli	a3,a5,0xd
  a25b36:	f006dbe3          	bgez	a3,a25a4c <SecOutput+0x538>
  a25b3a:	bb61                	j	a258d2 <SecOutput+0x3be>
  a25b3c:	57a2                	lw	a5,40(sp)
  a25b3e:	ef49                	bnez	a4,a25bd8 <SecOutput+0x6c4>
  a25b40:	0a1791bb          	bnei	a5,10,a25b86 <SecOutput+0x672>
  a25b44:	46a9                	li	a3,10
  a25b46:	4625                	li	a2,9
  a25b48:	4772                	lw	a4,28(sp)
  a25b4a:	fff70793          	addi	a5,a4,-1 # 1fffffff <__data_load__+0x1f5d872f>
  a25b4e:	ce3e                	sw	a5,28(sp)
  a25b50:	02ddf7b3          	remu	a5,s11,a3
  a25b54:	97ca                	add	a5,a5,s2
  a25b56:	239c                	lbu	a5,0(a5)
  a25b58:	fef70fa3          	sb	a5,-1(a4)
  a25b5c:	002dd793          	srli	a5,s11,0x2
  a25b60:	43b7879b          	addshf	a5,a5,s11,srl,1
  a25b64:	48f7879b          	addshf	a5,a5,a5,srl,4
  a25b68:	50f7879b          	addshf	a5,a5,a5,srl,8
  a25b6c:	60f7879b          	addshf	a5,a5,a5,srl,16
  a25b70:	838d                	srli	a5,a5,0x3
  a25b72:	00279513          	slli	a0,a5,0x2
  a25b76:	953e                	add	a0,a0,a5
  a25b78:	02ad951b          	subshf	a0,s11,a0,sll,1
  a25b7c:	04a67c63          	bgeu	a2,a0,a25bd4 <SecOutput+0x6c0>
  a25b80:	0785                	addi	a5,a5,1 # 49001 <g_intheap_size+0x2faa1>
  a25b82:	8dbe                	mv	s11,a5
  a25b84:	b7d1                	j	a25b48 <SecOutput+0x634>
  a25b86:	100789bb          	beqi	a5,16,a25bac <SecOutput+0x698>
  a25b8a:	0817903b          	bnei	a5,8,a25bca <SecOutput+0x6b6>
  a25b8e:	4772                	lw	a4,28(sp)
  a25b90:	fff70793          	addi	a5,a4,-1
  a25b94:	ce3e                	sw	a5,28(sp)
  a25b96:	007df793          	andi	a5,s11,7
  a25b9a:	97ca                	add	a5,a5,s2
  a25b9c:	239c                	lbu	a5,0(a5)
  a25b9e:	003ddd93          	srli	s11,s11,0x3
  a25ba2:	fef70fa3          	sb	a5,-1(a4)
  a25ba6:	fe0d94e3          	bnez	s11,a25b8e <SecOutput+0x67a>
  a25baa:	a005                	j	a25bca <SecOutput+0x6b6>
  a25bac:	4772                	lw	a4,28(sp)
  a25bae:	00fdf693          	andi	a3,s11,15
  a25bb2:	004ddd93          	srli	s11,s11,0x4
  a25bb6:	fff70793          	addi	a5,a4,-1
  a25bba:	ce3e                	sw	a5,28(sp)
  a25bbc:	47e2                	lw	a5,24(sp)
  a25bbe:	97b6                	add	a5,a5,a3
  a25bc0:	239c                	lbu	a5,0(a5)
  a25bc2:	fef70fa3          	sb	a5,-1(a4)
  a25bc6:	fe0d93e3          	bnez	s11,a25bac <SecOutput+0x698>
  a25bca:	47f2                	lw	a5,28(sp)
  a25bcc:	40f80833          	sub	a6,a6,a5
  a25bd0:	d042                	sw	a6,32(sp)
  a25bd2:	bdc5                	j	a25ac2 <SecOutput+0x5ae>
  a25bd4:	f7dd                	bnez	a5,a25b82 <SecOutput+0x66e>
  a25bd6:	bfd5                	j	a25bca <SecOutput+0x6b6>
  a25bd8:	0a078cbb          	beqi	a5,10,a25c0a <SecOutput+0x6f6>
  a25bdc:	10178b3b          	beqi	a5,16,a25c48 <SecOutput+0x734>
  a25be0:	08f79abb          	bnei	a5,8,a25bca <SecOutput+0x6b6>
  a25be4:	46f2                	lw	a3,28(sp)
  a25be6:	fff68793          	addi	a5,a3,-1
  a25bea:	ce3e                	sw	a5,28(sp)
  a25bec:	007df793          	andi	a5,s11,7
  a25bf0:	97ca                	add	a5,a5,s2
  a25bf2:	239c                	lbu	a5,0(a5)
  a25bf4:	003ddd93          	srli	s11,s11,0x3
  a25bf8:	3aedad9b          	orshf	s11,s11,a4,sll,29
  a25bfc:	830d                	srli	a4,a4,0x3
  a25bfe:	fef68fa3          	sb	a5,-1(a3)
  a25c02:	00ede7b3          	or	a5,s11,a4
  a25c06:	fff9                	bnez	a5,a25be4 <SecOutput+0x6d0>
  a25c08:	b7c9                	j	a25bca <SecOutput+0x6b6>
  a25c0a:	47f2                	lw	a5,28(sp)
  a25c0c:	4629                	li	a2,10
  a25c0e:	856e                	mv	a0,s11
  a25c10:	fff78693          	addi	a3,a5,-1
  a25c14:	ce36                	sw	a3,28(sp)
  a25c16:	85ba                	mv	a1,a4
  a25c18:	4681                	li	a3,0
  a25c1a:	c642                	sw	a6,12(sp)
  a25c1c:	c43e                	sw	a5,8(sp)
  a25c1e:	c23a                	sw	a4,4(sp)
  a25c20:	a21fa0ef          	jal	ra,a20640 <__umoddi3>
  a25c24:	954a                	add	a0,a0,s2
  a25c26:	2114                	lbu	a3,0(a0)
  a25c28:	4712                	lw	a4,4(sp)
  a25c2a:	47a2                	lw	a5,8(sp)
  a25c2c:	856e                	mv	a0,s11
  a25c2e:	85ba                	mv	a1,a4
  a25c30:	fed78fa3          	sb	a3,-1(a5)
  a25c34:	4629                	li	a2,10
  a25c36:	4681                	li	a3,0
  a25c38:	a05fa0ef          	jal	ra,a2063c <__udivdi3>
  a25c3c:	872e                	mv	a4,a1
  a25c3e:	8dc9                	or	a1,a1,a0
  a25c40:	8daa                	mv	s11,a0
  a25c42:	4832                	lw	a6,12(sp)
  a25c44:	f1f9                	bnez	a1,a25c0a <SecOutput+0x6f6>
  a25c46:	b751                	j	a25bca <SecOutput+0x6b6>
  a25c48:	46f2                	lw	a3,28(sp)
  a25c4a:	00fdf613          	andi	a2,s11,15
  a25c4e:	004ddd93          	srli	s11,s11,0x4
  a25c52:	fff68793          	addi	a5,a3,-1
  a25c56:	ce3e                	sw	a5,28(sp)
  a25c58:	47e2                	lw	a5,24(sp)
  a25c5a:	38edad9b          	orshf	s11,s11,a4,sll,28
  a25c5e:	8311                	srli	a4,a4,0x4
  a25c60:	97b2                	add	a5,a5,a2
  a25c62:	239c                	lbu	a5,0(a5)
  a25c64:	fef68fa3          	sb	a5,-1(a3)
  a25c68:	00ede7b3          	or	a5,s11,a4
  a25c6c:	fff1                	bnez	a5,a25c48 <SecOutput+0x734>
  a25c6e:	bfb1                	j	a25bca <SecOutput+0x6b6>
  a25c70:	47f2                	lw	a5,28(sp)
  a25c72:	fff78713          	addi	a4,a5,-1
  a25c76:	ce3a                	sw	a4,28(sp)
  a25c78:	fec78fa3          	sb	a2,-1(a5)
  a25c7c:	5782                	lw	a5,32(sp)
  a25c7e:	0785                	addi	a5,a5,1
  a25c80:	d03e                	sw	a5,32(sp)
  a25c82:	5702                	lw	a4,32(sp)
  a25c84:	fed746e3          	blt	a4,a3,a25c70 <SecOutput+0x75c>
  a25c88:	57b2                	lw	a5,44(sp)
  a25c8a:	2007f793          	andi	a5,a5,512
  a25c8e:	c385                	beqz	a5,a25cae <SecOutput+0x79a>
  a25c90:	47f2                	lw	a5,28(sp)
  a25c92:	c701                	beqz	a4,a25c9a <SecOutput+0x786>
  a25c94:	2398                	lbu	a4,0(a5)
  a25c96:	3007063b          	beqi	a4,48,a25cae <SecOutput+0x79a>
  a25c9a:	fff78713          	addi	a4,a5,-1
  a25c9e:	ce3a                	sw	a4,28(sp)
  a25ca0:	03000713          	li	a4,48
  a25ca4:	fee78fa3          	sb	a4,-1(a5)
  a25ca8:	5782                	lw	a5,32(sp)
  a25caa:	0785                	addi	a5,a5,1
  a25cac:	d03e                	sw	a5,32(sp)
  a25cae:	57b2                	lw	a5,44(sp)
  a25cb0:	0407f713          	andi	a4,a5,64
  a25cb4:	cb11                	beqz	a4,a25cc8 <SecOutput+0x7b4>
  a25cb6:	1007f713          	andi	a4,a5,256
  a25cba:	c70d                	beqz	a4,a25ce4 <SecOutput+0x7d0>
  a25cbc:	02d00713          	li	a4,45
  a25cc0:	04e10423          	sb	a4,72(sp)
  a25cc4:	4705                	li	a4,1
  a25cc6:	c2ba                	sw	a4,68(sp)
  a25cc8:	01a4e4b3          	or	s1,s1,s10
  a25ccc:	b2049ee3          	bnez	s1,a25808 <SecOutput+0x2f4>
  a25cd0:	01179713          	slli	a4,a5,0x11
  a25cd4:	b2075ae3          	bgez	a4,a25808 <SecOutput+0x2f4>
  a25cd8:	4715                	li	a4,5
  a25cda:	9bdd                	andi	a5,a5,-9
  a25cdc:	ce62                	sw	s8,28(sp)
  a25cde:	d03a                	sw	a4,32(sp)
  a25ce0:	d63e                	sw	a5,44(sp)
  a25ce2:	b61d                	j	a25808 <SecOutput+0x2f4>
  a25ce4:	0017f713          	andi	a4,a5,1
  a25ce8:	c701                	beqz	a4,a25cf0 <SecOutput+0x7dc>
  a25cea:	02b00713          	li	a4,43
  a25cee:	bfc9                	j	a25cc0 <SecOutput+0x7ac>
  a25cf0:	0027f713          	andi	a4,a5,2
  a25cf4:	db71                	beqz	a4,a25cc8 <SecOutput+0x7b4>
  a25cf6:	02000713          	li	a4,32
  a25cfa:	b7d9                	j	a25cc0 <SecOutput+0x7ac>
  a25cfc:	004ca703          	lw	a4,4(s9)
  a25d00:	0307c583          	lbu	a1,48(a5)
  a25d04:	0785                	addi	a5,a5,1
  a25d06:	a30c                	sb	a1,0(a4)
  a25d08:	004ca703          	lw	a4,4(s9)
  a25d0c:	0705                	addi	a4,a4,1
  a25d0e:	00eca223          	sw	a4,4(s9)
  a25d12:	b2f612e3          	bne	a2,a5,a25836 <SecOutput+0x322>
  a25d16:	47d2                	lw	a5,20(sp)
  a25d18:	97b6                	add	a5,a5,a3
  a25d1a:	b635                	j	a25846 <SecOutput+0x332>
  a25d1c:	45f2                	lw	a1,28(sp)
  a25d1e:	5482                	lw	s1,32(sp)
  a25d20:	000ca703          	lw	a4,0(s9)
  a25d24:	87ae                	mv	a5,a1
  a25d26:	009586b3          	add	a3,a1,s1
  a25d2a:	06974963          	blt	a4,s1,a25d9c <SecOutput+0x888>
  a25d2e:	0c04ddbb          	bgei	s1,12,a25d64 <SecOutput+0x850>
  a25d32:	87ae                	mv	a5,a1
  a25d34:	a819                	j	a25d4a <SecOutput+0x836>
  a25d36:	004ca703          	lw	a4,4(s9)
  a25d3a:	2394                	lbu	a3,0(a5)
  a25d3c:	0785                	addi	a5,a5,1
  a25d3e:	a314                	sb	a3,0(a4)
  a25d40:	004ca703          	lw	a4,4(s9)
  a25d44:	0705                	addi	a4,a4,1
  a25d46:	00eca223          	sw	a4,4(s9)
  a25d4a:	40b78733          	sub	a4,a5,a1
  a25d4e:	fe9744e3          	blt	a4,s1,a25d36 <SecOutput+0x822>
  a25d52:	000ca783          	lw	a5,0(s9)
  a25d56:	8f85                	sub	a5,a5,s1
  a25d58:	00fca023          	sw	a5,0(s9)
  a25d5c:	47d2                	lw	a5,20(sp)
  a25d5e:	94be                	add	s1,s1,a5
  a25d60:	ca26                	sw	s1,20(sp)
  a25d62:	b629                	j	a2586c <SecOutput+0x358>
  a25d64:	004ca503          	lw	a0,4(s9)
  a25d68:	8626                	mv	a2,s1
  a25d6a:	d89fa0ef          	jal	ra,a20af2 <memcpy>
  a25d6e:	004ca783          	lw	a5,4(s9)
  a25d72:	97a6                	add	a5,a5,s1
  a25d74:	00fca223          	sw	a5,4(s9)
  a25d78:	bfe9                	j	a25d52 <SecOutput+0x83e>
  a25d7a:	000ca703          	lw	a4,0(s9)
  a25d7e:	177d                	addi	a4,a4,-1
  a25d80:	00eca023          	sw	a4,0(s9)
  a25d84:	ae0742e3          	bltz	a4,a25868 <SecOutput+0x354>
  a25d88:	004ca703          	lw	a4,4(s9)
  a25d8c:	2390                	lbu	a2,0(a5)
  a25d8e:	0785                	addi	a5,a5,1
  a25d90:	a310                	sb	a2,0(a4)
  a25d92:	004ca703          	lw	a4,4(s9)
  a25d96:	0705                	addi	a4,a4,1
  a25d98:	00eca223          	sw	a4,4(s9)
  a25d9c:	40f68733          	sub	a4,a3,a5
  a25da0:	fce04de3          	bgtz	a4,a25d7a <SecOutput+0x866>
  a25da4:	bf65                	j	a25d5c <SecOutput+0x848>

00a25da6 <SecVsnprintfImpl>:
  a25da6:	8138                	push	{ra,s0-s1},-32
  a25da8:	84ae                	mv	s1,a1
  a25daa:	842a                	mv	s0,a0
  a25dac:	85b2                	mv	a1,a2
  a25dae:	c62a                	sw	a0,12(sp)
  a25db0:	8636                	mv	a2,a3
  a25db2:	0028                	addi	a0,sp,8
  a25db4:	c426                	sw	s1,8(sp)
  a25db6:	f5eff0ef          	jal	ra,a25514 <SecOutput>
  a25dba:	00054b63          	bltz	a0,a25dd0 <SecVsnprintfImpl+0x2a>
  a25dbe:	47a2                	lw	a5,8(sp)
  a25dc0:	17fd                	addi	a5,a5,-1
  a25dc2:	c43e                	sw	a5,8(sp)
  a25dc4:	0007c663          	bltz	a5,a25dd0 <SecVsnprintfImpl+0x2a>
  a25dc8:	47b2                	lw	a5,12(sp)
  a25dca:	00078023          	sb	zero,0(a5)
  a25dce:	8134                	popret	{ra,s0-s1},32
  a25dd0:	47a2                	lw	a5,8(sp)
  a25dd2:	0007d763          	bgez	a5,a25de0 <SecVsnprintfImpl+0x3a>
  a25dd6:	9426                	add	s0,s0,s1
  a25dd8:	fe040fa3          	sb	zero,-1(s0)
  a25ddc:	5579                	li	a0,-2
  a25dde:	bfc5                	j	a25dce <SecVsnprintfImpl+0x28>
  a25de0:	00040023          	sb	zero,0(s0)
  a25de4:	557d                	li	a0,-1
  a25de6:	b7e5                	j	a25dce <SecVsnprintfImpl+0x28>

00a25de8 <vsnprintf_s>:
  a25de8:	8028                	push	{ra,s0},-16
  a25dea:	8832                	mv	a6,a2
  a25dec:	842a                	mv	s0,a0
  a25dee:	87ae                	mv	a5,a1
  a25df0:	8636                	mv	a2,a3
  a25df2:	ca8d                	beqz	a3,a25e24 <vsnprintf_s+0x3c>
  a25df4:	e119                	bnez	a0,a25dfa <vsnprintf_s+0x12>
  a25df6:	557d                	li	a0,-1
  a25df8:	8024                	popret	{ra,s0},16
  a25dfa:	ddf5                	beqz	a1,a25df6 <vsnprintf_s+0xe>
  a25dfc:	fe05cde3          	bltz	a1,a25df6 <vsnprintf_s+0xe>
  a25e00:	800008b7          	lui	a7,0x80000
  a25e04:	ffe8c893          	xori	a7,a7,-2
  a25e08:	0308e063          	bltu	a7,a6,a25e28 <vsnprintf_s+0x40>
  a25e0c:	86ba                	mv	a3,a4
  a25e0e:	02b87263          	bgeu	a6,a1,a25e32 <vsnprintf_s+0x4a>
  a25e12:	00180593          	addi	a1,a6,1
  a25e16:	f91ff0ef          	jal	ra,a25da6 <SecVsnprintfImpl>
  a25e1a:	fef5073b          	beqi	a0,-2,a25df6 <vsnprintf_s+0xe>
  a25e1e:	fc055de3          	bgez	a0,a25df8 <vsnprintf_s+0x10>
  a25e22:	a029                	j	a25e2c <vsnprintf_s+0x44>
  a25e24:	d969                	beqz	a0,a25df6 <vsnprintf_s+0xe>
  a25e26:	d9e1                	beqz	a1,a25df6 <vsnprintf_s+0xe>
  a25e28:	fc07c7e3          	bltz	a5,a25df6 <vsnprintf_s+0xe>
  a25e2c:	00040023          	sb	zero,0(s0)
  a25e30:	b7d9                	j	a25df6 <vsnprintf_s+0xe>
  a25e32:	f75ff0ef          	jal	ra,a25da6 <SecVsnprintfImpl>
  a25e36:	b7e5                	j	a25e1e <vsnprintf_s+0x36>
  a25e38:	04f9                	addi	s1,s1,30
  a25e3a:	0000                	unimp
  a25e3c:	00000003          	lb	zero,0(zero) # 0 <__data_size__-0xdc>
	...

00a25e50 <excp_vect_table>:
  a25e50:	50d6                	lw	ra,116(sp)
  a25e52:	00a2                	slli	ra,ra,0x8
  a25e54:	50ec                	lw	a1,100(s1)
  a25e56:	00a2                	slli	ra,ra,0x8
  a25e58:	5102                	lw	sp,32(sp)
  a25e5a:	00a2                	slli	ra,ra,0x8
  a25e5c:	51b2                	lw	gp,44(sp)
  a25e5e:	00a2                	slli	ra,ra,0x8
  a25e60:	5118                	lw	a4,32(a0)
  a25e62:	00a2                	slli	ra,ra,0x8
  a25e64:	512e                	lw	sp,232(sp)
  a25e66:	00a2                	slli	ra,ra,0x8
  a25e68:	5144                	lw	s1,36(a0)
  a25e6a:	00a2                	slli	ra,ra,0x8
  a25e6c:	515a                	lw	sp,180(sp)
  a25e6e:	00a2                	slli	ra,ra,0x8
  a25e70:	5170                	lw	a2,100(a0)
  a25e72:	00a2                	slli	ra,ra,0x8
  a25e74:	5186                	lw	gp,96(sp)
  a25e76:	00a2                	slli	ra,ra,0x8
  a25e78:	50c0                	lw	s0,36(s1)
  a25e7a:	00a2                	slli	ra,ra,0x8
  a25e7c:	519c                	lw	a5,32(a1)
  a25e7e:	00a2                	slli	ra,ra,0x8
  a25e80:	51c8                	lw	a0,36(a1)
  a25e82:	00a2                	slli	ra,ra,0x8
  a25e84:	51de                	lw	gp,244(sp)
  a25e86:	00a2                	slli	ra,ra,0x8
  a25e88:	50c0                	lw	s0,36(s1)
  a25e8a:	00a2                	slli	ra,ra,0x8
  a25e8c:	51f4                	lw	a3,100(a1)
  a25e8e:	00a2                	slli	ra,ra,0x8
  a25e90:	520a                	lw	tp,160(sp)
  a25e92:	00a2                	slli	ra,ra,0x8
  a25e94:	5220                	lw	s0,96(a2)
  a25e96:	00a2                	slli	ra,ra,0x8

00a25e98 <excp_vect_table_end>:
	...

00a25ea0 <trap_entry>:
  a25ea0:	7175                	addi	sp,sp,-144
  a25ea2:	d06e                	sw	s11,32(sp)
  a25ea4:	d26a                	sw	s10,36(sp)
  a25ea6:	d466                	sw	s9,40(sp)
  a25ea8:	d662                	sw	s8,44(sp)
  a25eaa:	d85e                	sw	s7,48(sp)
  a25eac:	da5a                	sw	s6,52(sp)
  a25eae:	dc56                	sw	s5,56(sp)
  a25eb0:	de52                	sw	s4,60(sp)
  a25eb2:	c0ce                	sw	s3,64(sp)
  a25eb4:	c2ca                	sw	s2,68(sp)
  a25eb6:	c4a6                	sw	s1,72(sp)
  a25eb8:	c6a2                	sw	s0,76(sp)
  a25eba:	c8fe                	sw	t6,80(sp)
  a25ebc:	cafa                	sw	t5,84(sp)
  a25ebe:	ccf6                	sw	t4,88(sp)
  a25ec0:	cef2                	sw	t3,92(sp)
  a25ec2:	d0c6                	sw	a7,96(sp)
  a25ec4:	d2c2                	sw	a6,100(sp)
  a25ec6:	d4be                	sw	a5,104(sp)
  a25ec8:	d6ba                	sw	a4,108(sp)
  a25eca:	d8b6                	sw	a3,112(sp)
  a25ecc:	dab2                	sw	a2,116(sp)
  a25ece:	dcae                	sw	a1,120(sp)
  a25ed0:	deaa                	sw	a0,124(sp)
  a25ed2:	c11e                	sw	t2,128(sp)
  a25ed4:	c31a                	sw	t1,132(sp)
  a25ed6:	c516                	sw	t0,136(sp)
  a25ed8:	c706                	sw	ra,140(sp)
  a25eda:	fc202a73          	csrr	s4,0xfc2
  a25ede:	c052                	sw	s4,0(sp)
  a25ee0:	342029f3          	csrr	s3,mcause
  a25ee4:	c24e                	sw	s3,4(sp)
  a25ee6:	34302973          	csrr	s2,mtval
  a25eea:	c44a                	sw	s2,8(sp)
  a25eec:	c60e                	sw	gp,12(sp)
  a25eee:	300024f3          	csrr	s1,mstatus
  a25ef2:	c826                	sw	s1,16(sp)
  a25ef4:	34102473          	csrr	s0,mepc
  a25ef8:	ca22                	sw	s0,20(sp)
  a25efa:	cc12                	sw	tp,24(sp)
  a25efc:	ce0a                	sw	sp,28(sp)
  a25efe:	30047073          	csrci	mstatus,8
  a25f02:	34011073          	csrw	mscratch,sp
  a25f06:	fffdc117          	auipc	sp,0xfffdc
  a25f0a:	4fa10113          	addi	sp,sp,1274 # a02400 <g_efuse_clock_period>
  a25f0e:	42a1                	li	t0,8
  a25f10:	00599463          	bne	s3,t0,a25f18 <trap_entry+0x78>
  a25f14:	edefa06f          	j	a205f2 <handle_syscall>
  a25f18:	00299293          	slli	t0,s3,0x2
  a25f1c:	00000317          	auipc	t1,0x0
  a25f20:	f3430313          	addi	t1,t1,-204 # a25e50 <excp_vect_table>
  a25f24:	00000397          	auipc	t2,0x0
  a25f28:	f7438393          	addi	t2,t2,-140 # a25e98 <excp_vect_table_end>
  a25f2c:	34002573          	csrr	a0,mscratch
  a25f30:	929a                	add	t0,t0,t1
  a25f32:	0472ff63          	bgeu	t0,t2,a25f90 <trap_entry+0xf0>
  a25f36:	0002a283          	lw	t0,0(t0)
  a25f3a:	ef3fe0ef          	jal	ra,a24e2c <do_hard_fault_handler>
  a25f3e:	34002173          	csrr	sp,mscratch
  a25f42:	6289                	lui	t0,0x2
  a25f44:	80028293          	addi	t0,t0,-2048 # 1800 <ccause+0x83e>
  a25f48:	3002a073          	csrs	mstatus,t0
  a25f4c:	42d2                	lw	t0,20(sp)
  a25f4e:	34129073          	csrw	mepc,t0
  a25f52:	5d82                	lw	s11,32(sp)
  a25f54:	5d12                	lw	s10,36(sp)
  a25f56:	5ca2                	lw	s9,40(sp)
  a25f58:	5c32                	lw	s8,44(sp)
  a25f5a:	5bc2                	lw	s7,48(sp)
  a25f5c:	5b52                	lw	s6,52(sp)
  a25f5e:	5ae2                	lw	s5,56(sp)
  a25f60:	5a72                	lw	s4,60(sp)
  a25f62:	4986                	lw	s3,64(sp)
  a25f64:	4916                	lw	s2,68(sp)
  a25f66:	44a6                	lw	s1,72(sp)
  a25f68:	4436                	lw	s0,76(sp)
  a25f6a:	4fc6                	lw	t6,80(sp)
  a25f6c:	4f56                	lw	t5,84(sp)
  a25f6e:	4ee6                	lw	t4,88(sp)
  a25f70:	4e76                	lw	t3,92(sp)
  a25f72:	5886                	lw	a7,96(sp)
  a25f74:	5816                	lw	a6,100(sp)
  a25f76:	57a6                	lw	a5,104(sp)
  a25f78:	5736                	lw	a4,108(sp)
  a25f7a:	56c6                	lw	a3,112(sp)
  a25f7c:	5656                	lw	a2,116(sp)
  a25f7e:	55e6                	lw	a1,120(sp)
  a25f80:	5576                	lw	a0,124(sp)
  a25f82:	438a                	lw	t2,128(sp)
  a25f84:	431a                	lw	t1,132(sp)
  a25f86:	42aa                	lw	t0,136(sp)
  a25f88:	40ba                	lw	ra,140(sp)
  a25f8a:	6149                	addi	sp,sp,144
  a25f8c:	30200073          	mret
  a25f90:	930ff06f          	j	a250c0 <do_trap_unknown>
	...

00a25f9c <trap_vector>:
  a25f9c:	f05ff06f          	j	a25ea0 <trap_entry>
  a25fa0:	a96ff06f          	j	a25236 <default_handler>
  a25fa4:	a92ff06f          	j	a25236 <default_handler>
  a25fa8:	a8eff06f          	j	a25236 <default_handler>
  a25fac:	a8aff06f          	j	a25236 <default_handler>
  a25fb0:	a86ff06f          	j	a25236 <default_handler>
  a25fb4:	a82ff06f          	j	a25236 <default_handler>
  a25fb8:	a7eff06f          	j	a25236 <default_handler>
  a25fbc:	a7aff06f          	j	a25236 <default_handler>
  a25fc0:	a76ff06f          	j	a25236 <default_handler>
  a25fc4:	a72ff06f          	j	a25236 <default_handler>
  a25fc8:	a6eff06f          	j	a25236 <default_handler>
  a25fcc:	1700006f          	j	a2613c <nmi_vector>
  a25fd0:	a66ff06f          	j	a25236 <default_handler>
  a25fd4:	a62ff06f          	j	a25236 <default_handler>
  a25fd8:	a5eff06f          	j	a25236 <default_handler>
  a25fdc:	a5aff06f          	j	a25236 <default_handler>
  a25fe0:	a56ff06f          	j	a25236 <default_handler>
  a25fe4:	a52ff06f          	j	a25236 <default_handler>
  a25fe8:	a4eff06f          	j	a25236 <default_handler>
  a25fec:	a4aff06f          	j	a25236 <default_handler>
  a25ff0:	a46ff06f          	j	a25236 <default_handler>
  a25ff4:	a42ff06f          	j	a25236 <default_handler>
  a25ff8:	a3eff06f          	j	a25236 <default_handler>
  a25ffc:	a3aff06f          	j	a25236 <default_handler>
  a26000:	a36ff06f          	j	a25236 <default_handler>
  a26004:	2000006f          	j	a26204 <default_interrupt0_handler>
  a26008:	2a80006f          	j	a262b0 <default_interrupt1_handler>
  a2600c:	3500006f          	j	a2635c <default_interrupt2_handler>
  a26010:	3f80006f          	j	a26408 <default_interrupt3_handler>
  a26014:	4a00006f          	j	a264b4 <default_interrupt4_handler>
  a26018:	5480006f          	j	a26560 <default_interrupt5_handler>
  a2601c:	5f00006f          	j	a2660c <default_local_interrupt_handler>
  a26020:	5ec0006f          	j	a2660c <default_local_interrupt_handler>
  a26024:	5e80006f          	j	a2660c <default_local_interrupt_handler>
  a26028:	5e40006f          	j	a2660c <default_local_interrupt_handler>
  a2602c:	5e00006f          	j	a2660c <default_local_interrupt_handler>
  a26030:	5dc0006f          	j	a2660c <default_local_interrupt_handler>
  a26034:	5d80006f          	j	a2660c <default_local_interrupt_handler>
  a26038:	5d40006f          	j	a2660c <default_local_interrupt_handler>
  a2603c:	5d00006f          	j	a2660c <default_local_interrupt_handler>
  a26040:	5cc0006f          	j	a2660c <default_local_interrupt_handler>
  a26044:	5c80006f          	j	a2660c <default_local_interrupt_handler>
  a26048:	5c40006f          	j	a2660c <default_local_interrupt_handler>
  a2604c:	5c00006f          	j	a2660c <default_local_interrupt_handler>
  a26050:	5bc0006f          	j	a2660c <default_local_interrupt_handler>
  a26054:	5b80006f          	j	a2660c <default_local_interrupt_handler>
  a26058:	5b40006f          	j	a2660c <default_local_interrupt_handler>
  a2605c:	5b00006f          	j	a2660c <default_local_interrupt_handler>
  a26060:	5ac0006f          	j	a2660c <default_local_interrupt_handler>
  a26064:	5a80006f          	j	a2660c <default_local_interrupt_handler>
  a26068:	5a40006f          	j	a2660c <default_local_interrupt_handler>
  a2606c:	5a00006f          	j	a2660c <default_local_interrupt_handler>
  a26070:	59c0006f          	j	a2660c <default_local_interrupt_handler>
  a26074:	5980006f          	j	a2660c <default_local_interrupt_handler>
  a26078:	5940006f          	j	a2660c <default_local_interrupt_handler>
  a2607c:	5900006f          	j	a2660c <default_local_interrupt_handler>
  a26080:	58c0006f          	j	a2660c <default_local_interrupt_handler>
  a26084:	5880006f          	j	a2660c <default_local_interrupt_handler>
  a26088:	5840006f          	j	a2660c <default_local_interrupt_handler>
  a2608c:	5800006f          	j	a2660c <default_local_interrupt_handler>
  a26090:	57c0006f          	j	a2660c <default_local_interrupt_handler>
  a26094:	5780006f          	j	a2660c <default_local_interrupt_handler>
  a26098:	5740006f          	j	a2660c <default_local_interrupt_handler>
  a2609c:	5700006f          	j	a2660c <default_local_interrupt_handler>
  a260a0:	56c0006f          	j	a2660c <default_local_interrupt_handler>
  a260a4:	5680006f          	j	a2660c <default_local_interrupt_handler>
  a260a8:	5640006f          	j	a2660c <default_local_interrupt_handler>
  a260ac:	5600006f          	j	a2660c <default_local_interrupt_handler>
  a260b0:	55c0006f          	j	a2660c <default_local_interrupt_handler>
  a260b4:	5580006f          	j	a2660c <default_local_interrupt_handler>
  a260b8:	5540006f          	j	a2660c <default_local_interrupt_handler>
  a260bc:	5500006f          	j	a2660c <default_local_interrupt_handler>
  a260c0:	54c0006f          	j	a2660c <default_local_interrupt_handler>
  a260c4:	5480006f          	j	a2660c <default_local_interrupt_handler>
  a260c8:	5440006f          	j	a2660c <default_local_interrupt_handler>
  a260cc:	5400006f          	j	a2660c <default_local_interrupt_handler>
  a260d0:	53c0006f          	j	a2660c <default_local_interrupt_handler>
  a260d4:	5380006f          	j	a2660c <default_local_interrupt_handler>
  a260d8:	5340006f          	j	a2660c <default_local_interrupt_handler>
  a260dc:	5300006f          	j	a2660c <default_local_interrupt_handler>
  a260e0:	52c0006f          	j	a2660c <default_local_interrupt_handler>
  a260e4:	5280006f          	j	a2660c <default_local_interrupt_handler>
  a260e8:	5240006f          	j	a2660c <default_local_interrupt_handler>
  a260ec:	5200006f          	j	a2660c <default_local_interrupt_handler>
  a260f0:	51c0006f          	j	a2660c <default_local_interrupt_handler>
  a260f4:	5180006f          	j	a2660c <default_local_interrupt_handler>
  a260f8:	5140006f          	j	a2660c <default_local_interrupt_handler>
  a260fc:	5100006f          	j	a2660c <default_local_interrupt_handler>
  a26100:	50c0006f          	j	a2660c <default_local_interrupt_handler>
  a26104:	5080006f          	j	a2660c <default_local_interrupt_handler>
  a26108:	5040006f          	j	a2660c <default_local_interrupt_handler>
  a2610c:	5000006f          	j	a2660c <default_local_interrupt_handler>
  a26110:	4fc0006f          	j	a2660c <default_local_interrupt_handler>
  a26114:	4f80006f          	j	a2660c <default_local_interrupt_handler>
  a26118:	4f40006f          	j	a2660c <default_local_interrupt_handler>
  a2611c:	4f00006f          	j	a2660c <default_local_interrupt_handler>
  a26120:	4ec0006f          	j	a2660c <default_local_interrupt_handler>
  a26124:	4e80006f          	j	a2660c <default_local_interrupt_handler>
  a26128:	4e40006f          	j	a2660c <default_local_interrupt_handler>
  a2612c:	4e00006f          	j	a2660c <default_local_interrupt_handler>
  a26130:	4dc0006f          	j	a2660c <default_local_interrupt_handler>
  a26134:	4d80006f          	j	a2660c <default_local_interrupt_handler>
  a26138:	0000                	unimp
	...

00a2613c <nmi_vector>:
  a2613c:	30047073          	csrci	mstatus,8
  a26140:	7175                	addi	sp,sp,-144
  a26142:	d06e                	sw	s11,32(sp)
  a26144:	d26a                	sw	s10,36(sp)
  a26146:	d466                	sw	s9,40(sp)
  a26148:	d662                	sw	s8,44(sp)
  a2614a:	d85e                	sw	s7,48(sp)
  a2614c:	da5a                	sw	s6,52(sp)
  a2614e:	dc56                	sw	s5,56(sp)
  a26150:	de52                	sw	s4,60(sp)
  a26152:	c0ce                	sw	s3,64(sp)
  a26154:	c2ca                	sw	s2,68(sp)
  a26156:	c4a6                	sw	s1,72(sp)
  a26158:	c6a2                	sw	s0,76(sp)
  a2615a:	c8fe                	sw	t6,80(sp)
  a2615c:	cafa                	sw	t5,84(sp)
  a2615e:	ccf6                	sw	t4,88(sp)
  a26160:	cef2                	sw	t3,92(sp)
  a26162:	d0c6                	sw	a7,96(sp)
  a26164:	d2c2                	sw	a6,100(sp)
  a26166:	d4be                	sw	a5,104(sp)
  a26168:	d6ba                	sw	a4,108(sp)
  a2616a:	d8b6                	sw	a3,112(sp)
  a2616c:	dab2                	sw	a2,116(sp)
  a2616e:	dcae                	sw	a1,120(sp)
  a26170:	deaa                	sw	a0,124(sp)
  a26172:	c11e                	sw	t2,128(sp)
  a26174:	c31a                	sw	t1,132(sp)
  a26176:	c516                	sw	t0,136(sp)
  a26178:	c706                	sw	ra,140(sp)
  a2617a:	fc202a73          	csrr	s4,0xfc2
  a2617e:	c052                	sw	s4,0(sp)
  a26180:	342029f3          	csrr	s3,mcause
  a26184:	c24e                	sw	s3,4(sp)
  a26186:	34302973          	csrr	s2,mtval
  a2618a:	c44a                	sw	s2,8(sp)
  a2618c:	c60e                	sw	gp,12(sp)
  a2618e:	300024f3          	csrr	s1,mstatus
  a26192:	c826                	sw	s1,16(sp)
  a26194:	34102473          	csrr	s0,mepc
  a26198:	ca22                	sw	s0,20(sp)
  a2619a:	cc12                	sw	tp,24(sp)
  a2619c:	ce0a                	sw	sp,28(sp)
  a2619e:	34011073          	csrw	mscratch,sp
  a261a2:	fffdc117          	auipc	sp,0xfffdc
  a261a6:	e5e10113          	addi	sp,sp,-418 # a02000 <__irq_stack_top__>
  a261aa:	34002573          	csrr	a0,mscratch
  a261ae:	c7ffe0ef          	jal	ra,a24e2c <do_hard_fault_handler>
  a261b2:	34002173          	csrr	sp,mscratch
  a261b6:	6289                	lui	t0,0x2
  a261b8:	88028293          	addi	t0,t0,-1920 # 1880 <ccause+0x8be>
  a261bc:	3002a073          	csrs	mstatus,t0
  a261c0:	42d2                	lw	t0,20(sp)
  a261c2:	34129073          	csrw	mepc,t0
  a261c6:	5d82                	lw	s11,32(sp)
  a261c8:	5d12                	lw	s10,36(sp)
  a261ca:	5ca2                	lw	s9,40(sp)
  a261cc:	5c32                	lw	s8,44(sp)
  a261ce:	5bc2                	lw	s7,48(sp)
  a261d0:	5b52                	lw	s6,52(sp)
  a261d2:	5ae2                	lw	s5,56(sp)
  a261d4:	5a72                	lw	s4,60(sp)
  a261d6:	4986                	lw	s3,64(sp)
  a261d8:	4916                	lw	s2,68(sp)
  a261da:	44a6                	lw	s1,72(sp)
  a261dc:	4436                	lw	s0,76(sp)
  a261de:	4fc6                	lw	t6,80(sp)
  a261e0:	4f56                	lw	t5,84(sp)
  a261e2:	4ee6                	lw	t4,88(sp)
  a261e4:	4e76                	lw	t3,92(sp)
  a261e6:	5886                	lw	a7,96(sp)
  a261e8:	5816                	lw	a6,100(sp)
  a261ea:	57a6                	lw	a5,104(sp)
  a261ec:	5736                	lw	a4,108(sp)
  a261ee:	56c6                	lw	a3,112(sp)
  a261f0:	5656                	lw	a2,116(sp)
  a261f2:	55e6                	lw	a1,120(sp)
  a261f4:	5576                	lw	a0,124(sp)
  a261f6:	438a                	lw	t2,128(sp)
  a261f8:	431a                	lw	t1,132(sp)
  a261fa:	42aa                	lw	t0,136(sp)
  a261fc:	40ba                	lw	ra,140(sp)
  a261fe:	6149                	addi	sp,sp,144
  a26200:	30200073          	mret

00a26204 <default_interrupt0_handler>:
  a26204:	30047073          	csrci	mstatus,8
  a26208:	7119                	addi	sp,sp,-128
  a2620a:	c006                	sw	ra,0(sp)
  a2620c:	c20a                	sw	sp,4(sp)
  a2620e:	c40e                	sw	gp,8(sp)
  a26210:	c612                	sw	tp,12(sp)
  a26212:	c816                	sw	t0,16(sp)
  a26214:	ca1a                	sw	t1,20(sp)
  a26216:	cc1e                	sw	t2,24(sp)
  a26218:	ce22                	sw	s0,28(sp)
  a2621a:	d026                	sw	s1,32(sp)
  a2621c:	d22a                	sw	a0,36(sp)
  a2621e:	d42e                	sw	a1,40(sp)
  a26220:	d632                	sw	a2,44(sp)
  a26222:	d836                	sw	a3,48(sp)
  a26224:	da3a                	sw	a4,52(sp)
  a26226:	dc3e                	sw	a5,56(sp)
  a26228:	de42                	sw	a6,60(sp)
  a2622a:	c0c6                	sw	a7,64(sp)
  a2622c:	c2ca                	sw	s2,68(sp)
  a2622e:	c4ce                	sw	s3,72(sp)
  a26230:	c6d2                	sw	s4,76(sp)
  a26232:	c8d6                	sw	s5,80(sp)
  a26234:	cada                	sw	s6,84(sp)
  a26236:	ccde                	sw	s7,88(sp)
  a26238:	cee2                	sw	s8,92(sp)
  a2623a:	d0e6                	sw	s9,96(sp)
  a2623c:	d2ea                	sw	s10,100(sp)
  a2623e:	d4ee                	sw	s11,104(sp)
  a26240:	d6f2                	sw	t3,108(sp)
  a26242:	d8f6                	sw	t4,112(sp)
  a26244:	dafa                	sw	t5,116(sp)
  a26246:	dcfe                	sw	t6,120(sp)
  a26248:	341022f3          	csrr	t0,mepc
  a2624c:	de96                	sw	t0,124(sp)
  a2624e:	34011073          	csrw	mscratch,sp
  a26252:	fffdc117          	auipc	sp,0xfffdc
  a26256:	dae10113          	addi	sp,sp,-594 # a02000 <__irq_stack_top__>
  a2625a:	9edfe0ef          	jal	ra,a24c46 <interrupt0_handler>
  a2625e:	34002173          	csrr	sp,mscratch
  a26262:	6289                	lui	t0,0x2
  a26264:	88028293          	addi	t0,t0,-1920 # 1880 <ccause+0x8be>
  a26268:	3002a073          	csrs	mstatus,t0
  a2626c:	52f6                	lw	t0,124(sp)
  a2626e:	34129073          	csrw	mepc,t0
  a26272:	4082                	lw	ra,0(sp)
  a26274:	42c2                	lw	t0,16(sp)
  a26276:	4352                	lw	t1,20(sp)
  a26278:	43e2                	lw	t2,24(sp)
  a2627a:	4472                	lw	s0,28(sp)
  a2627c:	5482                	lw	s1,32(sp)
  a2627e:	5512                	lw	a0,36(sp)
  a26280:	55a2                	lw	a1,40(sp)
  a26282:	5632                	lw	a2,44(sp)
  a26284:	56c2                	lw	a3,48(sp)
  a26286:	5752                	lw	a4,52(sp)
  a26288:	57e2                	lw	a5,56(sp)
  a2628a:	5872                	lw	a6,60(sp)
  a2628c:	4886                	lw	a7,64(sp)
  a2628e:	4916                	lw	s2,68(sp)
  a26290:	49a6                	lw	s3,72(sp)
  a26292:	4a36                	lw	s4,76(sp)
  a26294:	4ac6                	lw	s5,80(sp)
  a26296:	4b56                	lw	s6,84(sp)
  a26298:	4be6                	lw	s7,88(sp)
  a2629a:	4c76                	lw	s8,92(sp)
  a2629c:	5c86                	lw	s9,96(sp)
  a2629e:	5d16                	lw	s10,100(sp)
  a262a0:	5da6                	lw	s11,104(sp)
  a262a2:	5e36                	lw	t3,108(sp)
  a262a4:	5ec6                	lw	t4,112(sp)
  a262a6:	5f56                	lw	t5,116(sp)
  a262a8:	5fe6                	lw	t6,120(sp)
  a262aa:	6109                	addi	sp,sp,128
  a262ac:	30200073          	mret

00a262b0 <default_interrupt1_handler>:
  a262b0:	30047073          	csrci	mstatus,8
  a262b4:	7119                	addi	sp,sp,-128
  a262b6:	c006                	sw	ra,0(sp)
  a262b8:	c20a                	sw	sp,4(sp)
  a262ba:	c40e                	sw	gp,8(sp)
  a262bc:	c612                	sw	tp,12(sp)
  a262be:	c816                	sw	t0,16(sp)
  a262c0:	ca1a                	sw	t1,20(sp)
  a262c2:	cc1e                	sw	t2,24(sp)
  a262c4:	ce22                	sw	s0,28(sp)
  a262c6:	d026                	sw	s1,32(sp)
  a262c8:	d22a                	sw	a0,36(sp)
  a262ca:	d42e                	sw	a1,40(sp)
  a262cc:	d632                	sw	a2,44(sp)
  a262ce:	d836                	sw	a3,48(sp)
  a262d0:	da3a                	sw	a4,52(sp)
  a262d2:	dc3e                	sw	a5,56(sp)
  a262d4:	de42                	sw	a6,60(sp)
  a262d6:	c0c6                	sw	a7,64(sp)
  a262d8:	c2ca                	sw	s2,68(sp)
  a262da:	c4ce                	sw	s3,72(sp)
  a262dc:	c6d2                	sw	s4,76(sp)
  a262de:	c8d6                	sw	s5,80(sp)
  a262e0:	cada                	sw	s6,84(sp)
  a262e2:	ccde                	sw	s7,88(sp)
  a262e4:	cee2                	sw	s8,92(sp)
  a262e6:	d0e6                	sw	s9,96(sp)
  a262e8:	d2ea                	sw	s10,100(sp)
  a262ea:	d4ee                	sw	s11,104(sp)
  a262ec:	d6f2                	sw	t3,108(sp)
  a262ee:	d8f6                	sw	t4,112(sp)
  a262f0:	dafa                	sw	t5,116(sp)
  a262f2:	dcfe                	sw	t6,120(sp)
  a262f4:	341022f3          	csrr	t0,mepc
  a262f8:	de96                	sw	t0,124(sp)
  a262fa:	34011073          	csrw	mscratch,sp
  a262fe:	fffdc117          	auipc	sp,0xfffdc
  a26302:	d0210113          	addi	sp,sp,-766 # a02000 <__irq_stack_top__>
  a26306:	981fe0ef          	jal	ra,a24c86 <interrupt1_handler>
  a2630a:	34002173          	csrr	sp,mscratch
  a2630e:	6289                	lui	t0,0x2
  a26310:	88028293          	addi	t0,t0,-1920 # 1880 <ccause+0x8be>
  a26314:	3002a073          	csrs	mstatus,t0
  a26318:	52f6                	lw	t0,124(sp)
  a2631a:	34129073          	csrw	mepc,t0
  a2631e:	4082                	lw	ra,0(sp)
  a26320:	42c2                	lw	t0,16(sp)
  a26322:	4352                	lw	t1,20(sp)
  a26324:	43e2                	lw	t2,24(sp)
  a26326:	4472                	lw	s0,28(sp)
  a26328:	5482                	lw	s1,32(sp)
  a2632a:	5512                	lw	a0,36(sp)
  a2632c:	55a2                	lw	a1,40(sp)
  a2632e:	5632                	lw	a2,44(sp)
  a26330:	56c2                	lw	a3,48(sp)
  a26332:	5752                	lw	a4,52(sp)
  a26334:	57e2                	lw	a5,56(sp)
  a26336:	5872                	lw	a6,60(sp)
  a26338:	4886                	lw	a7,64(sp)
  a2633a:	4916                	lw	s2,68(sp)
  a2633c:	49a6                	lw	s3,72(sp)
  a2633e:	4a36                	lw	s4,76(sp)
  a26340:	4ac6                	lw	s5,80(sp)
  a26342:	4b56                	lw	s6,84(sp)
  a26344:	4be6                	lw	s7,88(sp)
  a26346:	4c76                	lw	s8,92(sp)
  a26348:	5c86                	lw	s9,96(sp)
  a2634a:	5d16                	lw	s10,100(sp)
  a2634c:	5da6                	lw	s11,104(sp)
  a2634e:	5e36                	lw	t3,108(sp)
  a26350:	5ec6                	lw	t4,112(sp)
  a26352:	5f56                	lw	t5,116(sp)
  a26354:	5fe6                	lw	t6,120(sp)
  a26356:	6109                	addi	sp,sp,128
  a26358:	30200073          	mret

00a2635c <default_interrupt2_handler>:
  a2635c:	30047073          	csrci	mstatus,8
  a26360:	7119                	addi	sp,sp,-128
  a26362:	c006                	sw	ra,0(sp)
  a26364:	c20a                	sw	sp,4(sp)
  a26366:	c40e                	sw	gp,8(sp)
  a26368:	c612                	sw	tp,12(sp)
  a2636a:	c816                	sw	t0,16(sp)
  a2636c:	ca1a                	sw	t1,20(sp)
  a2636e:	cc1e                	sw	t2,24(sp)
  a26370:	ce22                	sw	s0,28(sp)
  a26372:	d026                	sw	s1,32(sp)
  a26374:	d22a                	sw	a0,36(sp)
  a26376:	d42e                	sw	a1,40(sp)
  a26378:	d632                	sw	a2,44(sp)
  a2637a:	d836                	sw	a3,48(sp)
  a2637c:	da3a                	sw	a4,52(sp)
  a2637e:	dc3e                	sw	a5,56(sp)
  a26380:	de42                	sw	a6,60(sp)
  a26382:	c0c6                	sw	a7,64(sp)
  a26384:	c2ca                	sw	s2,68(sp)
  a26386:	c4ce                	sw	s3,72(sp)
  a26388:	c6d2                	sw	s4,76(sp)
  a2638a:	c8d6                	sw	s5,80(sp)
  a2638c:	cada                	sw	s6,84(sp)
  a2638e:	ccde                	sw	s7,88(sp)
  a26390:	cee2                	sw	s8,92(sp)
  a26392:	d0e6                	sw	s9,96(sp)
  a26394:	d2ea                	sw	s10,100(sp)
  a26396:	d4ee                	sw	s11,104(sp)
  a26398:	d6f2                	sw	t3,108(sp)
  a2639a:	d8f6                	sw	t4,112(sp)
  a2639c:	dafa                	sw	t5,116(sp)
  a2639e:	dcfe                	sw	t6,120(sp)
  a263a0:	341022f3          	csrr	t0,mepc
  a263a4:	de96                	sw	t0,124(sp)
  a263a6:	34011073          	csrw	mscratch,sp
  a263aa:	fffdc117          	auipc	sp,0xfffdc
  a263ae:	c5610113          	addi	sp,sp,-938 # a02000 <__irq_stack_top__>
  a263b2:	915fe0ef          	jal	ra,a24cc6 <interrupt2_handler>
  a263b6:	34002173          	csrr	sp,mscratch
  a263ba:	6289                	lui	t0,0x2
  a263bc:	88028293          	addi	t0,t0,-1920 # 1880 <ccause+0x8be>
  a263c0:	3002a073          	csrs	mstatus,t0
  a263c4:	52f6                	lw	t0,124(sp)
  a263c6:	34129073          	csrw	mepc,t0
  a263ca:	4082                	lw	ra,0(sp)
  a263cc:	42c2                	lw	t0,16(sp)
  a263ce:	4352                	lw	t1,20(sp)
  a263d0:	43e2                	lw	t2,24(sp)
  a263d2:	4472                	lw	s0,28(sp)
  a263d4:	5482                	lw	s1,32(sp)
  a263d6:	5512                	lw	a0,36(sp)
  a263d8:	55a2                	lw	a1,40(sp)
  a263da:	5632                	lw	a2,44(sp)
  a263dc:	56c2                	lw	a3,48(sp)
  a263de:	5752                	lw	a4,52(sp)
  a263e0:	57e2                	lw	a5,56(sp)
  a263e2:	5872                	lw	a6,60(sp)
  a263e4:	4886                	lw	a7,64(sp)
  a263e6:	4916                	lw	s2,68(sp)
  a263e8:	49a6                	lw	s3,72(sp)
  a263ea:	4a36                	lw	s4,76(sp)
  a263ec:	4ac6                	lw	s5,80(sp)
  a263ee:	4b56                	lw	s6,84(sp)
  a263f0:	4be6                	lw	s7,88(sp)
  a263f2:	4c76                	lw	s8,92(sp)
  a263f4:	5c86                	lw	s9,96(sp)
  a263f6:	5d16                	lw	s10,100(sp)
  a263f8:	5da6                	lw	s11,104(sp)
  a263fa:	5e36                	lw	t3,108(sp)
  a263fc:	5ec6                	lw	t4,112(sp)
  a263fe:	5f56                	lw	t5,116(sp)
  a26400:	5fe6                	lw	t6,120(sp)
  a26402:	6109                	addi	sp,sp,128
  a26404:	30200073          	mret

00a26408 <default_interrupt3_handler>:
  a26408:	30047073          	csrci	mstatus,8
  a2640c:	7119                	addi	sp,sp,-128
  a2640e:	c006                	sw	ra,0(sp)
  a26410:	c20a                	sw	sp,4(sp)
  a26412:	c40e                	sw	gp,8(sp)
  a26414:	c612                	sw	tp,12(sp)
  a26416:	c816                	sw	t0,16(sp)
  a26418:	ca1a                	sw	t1,20(sp)
  a2641a:	cc1e                	sw	t2,24(sp)
  a2641c:	ce22                	sw	s0,28(sp)
  a2641e:	d026                	sw	s1,32(sp)
  a26420:	d22a                	sw	a0,36(sp)
  a26422:	d42e                	sw	a1,40(sp)
  a26424:	d632                	sw	a2,44(sp)
  a26426:	d836                	sw	a3,48(sp)
  a26428:	da3a                	sw	a4,52(sp)
  a2642a:	dc3e                	sw	a5,56(sp)
  a2642c:	de42                	sw	a6,60(sp)
  a2642e:	c0c6                	sw	a7,64(sp)
  a26430:	c2ca                	sw	s2,68(sp)
  a26432:	c4ce                	sw	s3,72(sp)
  a26434:	c6d2                	sw	s4,76(sp)
  a26436:	c8d6                	sw	s5,80(sp)
  a26438:	cada                	sw	s6,84(sp)
  a2643a:	ccde                	sw	s7,88(sp)
  a2643c:	cee2                	sw	s8,92(sp)
  a2643e:	d0e6                	sw	s9,96(sp)
  a26440:	d2ea                	sw	s10,100(sp)
  a26442:	d4ee                	sw	s11,104(sp)
  a26444:	d6f2                	sw	t3,108(sp)
  a26446:	d8f6                	sw	t4,112(sp)
  a26448:	dafa                	sw	t5,116(sp)
  a2644a:	dcfe                	sw	t6,120(sp)
  a2644c:	341022f3          	csrr	t0,mepc
  a26450:	de96                	sw	t0,124(sp)
  a26452:	34011073          	csrw	mscratch,sp
  a26456:	fffdc117          	auipc	sp,0xfffdc
  a2645a:	baa10113          	addi	sp,sp,-1110 # a02000 <__irq_stack_top__>
  a2645e:	8a9fe0ef          	jal	ra,a24d06 <interrupt3_handler>
  a26462:	34002173          	csrr	sp,mscratch
  a26466:	6289                	lui	t0,0x2
  a26468:	88028293          	addi	t0,t0,-1920 # 1880 <ccause+0x8be>
  a2646c:	3002a073          	csrs	mstatus,t0
  a26470:	52f6                	lw	t0,124(sp)
  a26472:	34129073          	csrw	mepc,t0
  a26476:	4082                	lw	ra,0(sp)
  a26478:	42c2                	lw	t0,16(sp)
  a2647a:	4352                	lw	t1,20(sp)
  a2647c:	43e2                	lw	t2,24(sp)
  a2647e:	4472                	lw	s0,28(sp)
  a26480:	5482                	lw	s1,32(sp)
  a26482:	5512                	lw	a0,36(sp)
  a26484:	55a2                	lw	a1,40(sp)
  a26486:	5632                	lw	a2,44(sp)
  a26488:	56c2                	lw	a3,48(sp)
  a2648a:	5752                	lw	a4,52(sp)
  a2648c:	57e2                	lw	a5,56(sp)
  a2648e:	5872                	lw	a6,60(sp)
  a26490:	4886                	lw	a7,64(sp)
  a26492:	4916                	lw	s2,68(sp)
  a26494:	49a6                	lw	s3,72(sp)
  a26496:	4a36                	lw	s4,76(sp)
  a26498:	4ac6                	lw	s5,80(sp)
  a2649a:	4b56                	lw	s6,84(sp)
  a2649c:	4be6                	lw	s7,88(sp)
  a2649e:	4c76                	lw	s8,92(sp)
  a264a0:	5c86                	lw	s9,96(sp)
  a264a2:	5d16                	lw	s10,100(sp)
  a264a4:	5da6                	lw	s11,104(sp)
  a264a6:	5e36                	lw	t3,108(sp)
  a264a8:	5ec6                	lw	t4,112(sp)
  a264aa:	5f56                	lw	t5,116(sp)
  a264ac:	5fe6                	lw	t6,120(sp)
  a264ae:	6109                	addi	sp,sp,128
  a264b0:	30200073          	mret

00a264b4 <default_interrupt4_handler>:
  a264b4:	30047073          	csrci	mstatus,8
  a264b8:	7119                	addi	sp,sp,-128
  a264ba:	c006                	sw	ra,0(sp)
  a264bc:	c20a                	sw	sp,4(sp)
  a264be:	c40e                	sw	gp,8(sp)
  a264c0:	c612                	sw	tp,12(sp)
  a264c2:	c816                	sw	t0,16(sp)
  a264c4:	ca1a                	sw	t1,20(sp)
  a264c6:	cc1e                	sw	t2,24(sp)
  a264c8:	ce22                	sw	s0,28(sp)
  a264ca:	d026                	sw	s1,32(sp)
  a264cc:	d22a                	sw	a0,36(sp)
  a264ce:	d42e                	sw	a1,40(sp)
  a264d0:	d632                	sw	a2,44(sp)
  a264d2:	d836                	sw	a3,48(sp)
  a264d4:	da3a                	sw	a4,52(sp)
  a264d6:	dc3e                	sw	a5,56(sp)
  a264d8:	de42                	sw	a6,60(sp)
  a264da:	c0c6                	sw	a7,64(sp)
  a264dc:	c2ca                	sw	s2,68(sp)
  a264de:	c4ce                	sw	s3,72(sp)
  a264e0:	c6d2                	sw	s4,76(sp)
  a264e2:	c8d6                	sw	s5,80(sp)
  a264e4:	cada                	sw	s6,84(sp)
  a264e6:	ccde                	sw	s7,88(sp)
  a264e8:	cee2                	sw	s8,92(sp)
  a264ea:	d0e6                	sw	s9,96(sp)
  a264ec:	d2ea                	sw	s10,100(sp)
  a264ee:	d4ee                	sw	s11,104(sp)
  a264f0:	d6f2                	sw	t3,108(sp)
  a264f2:	d8f6                	sw	t4,112(sp)
  a264f4:	dafa                	sw	t5,116(sp)
  a264f6:	dcfe                	sw	t6,120(sp)
  a264f8:	341022f3          	csrr	t0,mepc
  a264fc:	de96                	sw	t0,124(sp)
  a264fe:	34011073          	csrw	mscratch,sp
  a26502:	fffdc117          	auipc	sp,0xfffdc
  a26506:	afe10113          	addi	sp,sp,-1282 # a02000 <__irq_stack_top__>
  a2650a:	83dfe0ef          	jal	ra,a24d46 <interrupt4_handler>
  a2650e:	34002173          	csrr	sp,mscratch
  a26512:	6289                	lui	t0,0x2
  a26514:	88028293          	addi	t0,t0,-1920 # 1880 <ccause+0x8be>
  a26518:	3002a073          	csrs	mstatus,t0
  a2651c:	52f6                	lw	t0,124(sp)
  a2651e:	34129073          	csrw	mepc,t0
  a26522:	4082                	lw	ra,0(sp)
  a26524:	42c2                	lw	t0,16(sp)
  a26526:	4352                	lw	t1,20(sp)
  a26528:	43e2                	lw	t2,24(sp)
  a2652a:	4472                	lw	s0,28(sp)
  a2652c:	5482                	lw	s1,32(sp)
  a2652e:	5512                	lw	a0,36(sp)
  a26530:	55a2                	lw	a1,40(sp)
  a26532:	5632                	lw	a2,44(sp)
  a26534:	56c2                	lw	a3,48(sp)
  a26536:	5752                	lw	a4,52(sp)
  a26538:	57e2                	lw	a5,56(sp)
  a2653a:	5872                	lw	a6,60(sp)
  a2653c:	4886                	lw	a7,64(sp)
  a2653e:	4916                	lw	s2,68(sp)
  a26540:	49a6                	lw	s3,72(sp)
  a26542:	4a36                	lw	s4,76(sp)
  a26544:	4ac6                	lw	s5,80(sp)
  a26546:	4b56                	lw	s6,84(sp)
  a26548:	4be6                	lw	s7,88(sp)
  a2654a:	4c76                	lw	s8,92(sp)
  a2654c:	5c86                	lw	s9,96(sp)
  a2654e:	5d16                	lw	s10,100(sp)
  a26550:	5da6                	lw	s11,104(sp)
  a26552:	5e36                	lw	t3,108(sp)
  a26554:	5ec6                	lw	t4,112(sp)
  a26556:	5f56                	lw	t5,116(sp)
  a26558:	5fe6                	lw	t6,120(sp)
  a2655a:	6109                	addi	sp,sp,128
  a2655c:	30200073          	mret

00a26560 <default_interrupt5_handler>:
  a26560:	30047073          	csrci	mstatus,8
  a26564:	7119                	addi	sp,sp,-128
  a26566:	c006                	sw	ra,0(sp)
  a26568:	c20a                	sw	sp,4(sp)
  a2656a:	c40e                	sw	gp,8(sp)
  a2656c:	c612                	sw	tp,12(sp)
  a2656e:	c816                	sw	t0,16(sp)
  a26570:	ca1a                	sw	t1,20(sp)
  a26572:	cc1e                	sw	t2,24(sp)
  a26574:	ce22                	sw	s0,28(sp)
  a26576:	d026                	sw	s1,32(sp)
  a26578:	d22a                	sw	a0,36(sp)
  a2657a:	d42e                	sw	a1,40(sp)
  a2657c:	d632                	sw	a2,44(sp)
  a2657e:	d836                	sw	a3,48(sp)
  a26580:	da3a                	sw	a4,52(sp)
  a26582:	dc3e                	sw	a5,56(sp)
  a26584:	de42                	sw	a6,60(sp)
  a26586:	c0c6                	sw	a7,64(sp)
  a26588:	c2ca                	sw	s2,68(sp)
  a2658a:	c4ce                	sw	s3,72(sp)
  a2658c:	c6d2                	sw	s4,76(sp)
  a2658e:	c8d6                	sw	s5,80(sp)
  a26590:	cada                	sw	s6,84(sp)
  a26592:	ccde                	sw	s7,88(sp)
  a26594:	cee2                	sw	s8,92(sp)
  a26596:	d0e6                	sw	s9,96(sp)
  a26598:	d2ea                	sw	s10,100(sp)
  a2659a:	d4ee                	sw	s11,104(sp)
  a2659c:	d6f2                	sw	t3,108(sp)
  a2659e:	d8f6                	sw	t4,112(sp)
  a265a0:	dafa                	sw	t5,116(sp)
  a265a2:	dcfe                	sw	t6,120(sp)
  a265a4:	341022f3          	csrr	t0,mepc
  a265a8:	de96                	sw	t0,124(sp)
  a265aa:	34011073          	csrw	mscratch,sp
  a265ae:	fffdc117          	auipc	sp,0xfffdc
  a265b2:	a5210113          	addi	sp,sp,-1454 # a02000 <__irq_stack_top__>
  a265b6:	fd0fe0ef          	jal	ra,a24d86 <interrupt5_handler>
  a265ba:	34002173          	csrr	sp,mscratch
  a265be:	6289                	lui	t0,0x2
  a265c0:	88028293          	addi	t0,t0,-1920 # 1880 <ccause+0x8be>
  a265c4:	3002a073          	csrs	mstatus,t0
  a265c8:	52f6                	lw	t0,124(sp)
  a265ca:	34129073          	csrw	mepc,t0
  a265ce:	4082                	lw	ra,0(sp)
  a265d0:	42c2                	lw	t0,16(sp)
  a265d2:	4352                	lw	t1,20(sp)
  a265d4:	43e2                	lw	t2,24(sp)
  a265d6:	4472                	lw	s0,28(sp)
  a265d8:	5482                	lw	s1,32(sp)
  a265da:	5512                	lw	a0,36(sp)
  a265dc:	55a2                	lw	a1,40(sp)
  a265de:	5632                	lw	a2,44(sp)
  a265e0:	56c2                	lw	a3,48(sp)
  a265e2:	5752                	lw	a4,52(sp)
  a265e4:	57e2                	lw	a5,56(sp)
  a265e6:	5872                	lw	a6,60(sp)
  a265e8:	4886                	lw	a7,64(sp)
  a265ea:	4916                	lw	s2,68(sp)
  a265ec:	49a6                	lw	s3,72(sp)
  a265ee:	4a36                	lw	s4,76(sp)
  a265f0:	4ac6                	lw	s5,80(sp)
  a265f2:	4b56                	lw	s6,84(sp)
  a265f4:	4be6                	lw	s7,88(sp)
  a265f6:	4c76                	lw	s8,92(sp)
  a265f8:	5c86                	lw	s9,96(sp)
  a265fa:	5d16                	lw	s10,100(sp)
  a265fc:	5da6                	lw	s11,104(sp)
  a265fe:	5e36                	lw	t3,108(sp)
  a26600:	5ec6                	lw	t4,112(sp)
  a26602:	5f56                	lw	t5,116(sp)
  a26604:	5fe6                	lw	t6,120(sp)
  a26606:	6109                	addi	sp,sp,128
  a26608:	30200073          	mret

00a2660c <default_local_interrupt_handler>:
  a2660c:	30047073          	csrci	mstatus,8
  a26610:	7119                	addi	sp,sp,-128
  a26612:	c006                	sw	ra,0(sp)
  a26614:	c20a                	sw	sp,4(sp)
  a26616:	c40e                	sw	gp,8(sp)
  a26618:	c612                	sw	tp,12(sp)
  a2661a:	c816                	sw	t0,16(sp)
  a2661c:	ca1a                	sw	t1,20(sp)
  a2661e:	cc1e                	sw	t2,24(sp)
  a26620:	ce22                	sw	s0,28(sp)
  a26622:	d026                	sw	s1,32(sp)
  a26624:	d22a                	sw	a0,36(sp)
  a26626:	d42e                	sw	a1,40(sp)
  a26628:	d632                	sw	a2,44(sp)
  a2662a:	d836                	sw	a3,48(sp)
  a2662c:	da3a                	sw	a4,52(sp)
  a2662e:	dc3e                	sw	a5,56(sp)
  a26630:	de42                	sw	a6,60(sp)
  a26632:	c0c6                	sw	a7,64(sp)
  a26634:	c2ca                	sw	s2,68(sp)
  a26636:	c4ce                	sw	s3,72(sp)
  a26638:	c6d2                	sw	s4,76(sp)
  a2663a:	c8d6                	sw	s5,80(sp)
  a2663c:	cada                	sw	s6,84(sp)
  a2663e:	ccde                	sw	s7,88(sp)
  a26640:	cee2                	sw	s8,92(sp)
  a26642:	d0e6                	sw	s9,96(sp)
  a26644:	d2ea                	sw	s10,100(sp)
  a26646:	d4ee                	sw	s11,104(sp)
  a26648:	d6f2                	sw	t3,108(sp)
  a2664a:	d8f6                	sw	t4,112(sp)
  a2664c:	dafa                	sw	t5,116(sp)
  a2664e:	dcfe                	sw	t6,120(sp)
  a26650:	341022f3          	csrr	t0,mepc
  a26654:	de96                	sw	t0,124(sp)
  a26656:	34011073          	csrw	mscratch,sp
  a2665a:	fffdc117          	auipc	sp,0xfffdc
  a2665e:	9a610113          	addi	sp,sp,-1626 # a02000 <__irq_stack_top__>
  a26662:	f64fe0ef          	jal	ra,a24dc6 <local_interrupt_handler>
  a26666:	34002173          	csrr	sp,mscratch
  a2666a:	6289                	lui	t0,0x2
  a2666c:	88028293          	addi	t0,t0,-1920 # 1880 <ccause+0x8be>
  a26670:	3002a073          	csrs	mstatus,t0
  a26674:	52f6                	lw	t0,124(sp)
  a26676:	34129073          	csrw	mepc,t0
  a2667a:	4082                	lw	ra,0(sp)
  a2667c:	42c2                	lw	t0,16(sp)
  a2667e:	4352                	lw	t1,20(sp)
  a26680:	43e2                	lw	t2,24(sp)
  a26682:	4472                	lw	s0,28(sp)
  a26684:	5482                	lw	s1,32(sp)
  a26686:	5512                	lw	a0,36(sp)
  a26688:	55a2                	lw	a1,40(sp)
  a2668a:	5632                	lw	a2,44(sp)
  a2668c:	56c2                	lw	a3,48(sp)
  a2668e:	5752                	lw	a4,52(sp)
  a26690:	57e2                	lw	a5,56(sp)
  a26692:	5872                	lw	a6,60(sp)
  a26694:	4886                	lw	a7,64(sp)
  a26696:	4916                	lw	s2,68(sp)
  a26698:	49a6                	lw	s3,72(sp)
  a2669a:	4a36                	lw	s4,76(sp)
  a2669c:	4ac6                	lw	s5,80(sp)
  a2669e:	4b56                	lw	s6,84(sp)
  a266a0:	4be6                	lw	s7,88(sp)
  a266a2:	4c76                	lw	s8,92(sp)
  a266a4:	5c86                	lw	s9,96(sp)
  a266a6:	5d16                	lw	s10,100(sp)
  a266a8:	5da6                	lw	s11,104(sp)
  a266aa:	5e36                	lw	t3,108(sp)
  a266ac:	5ec6                	lw	t4,112(sp)
  a266ae:	5f56                	lw	t5,116(sp)
  a266b0:	5fe6                	lw	t6,120(sp)
  a266b2:	6109                	addi	sp,sp,128
  a266b4:	30200073          	mret

00a266b8 <global_interrupt_lock>:
  a266b8:	30002573          	csrr	a0,mstatus
  a266bc:	42a1                	li	t0,8
  a266be:	3002b073          	csrc	mstatus,t0
  a266c2:	8082                	ret

00a266c4 <global_interrupt_unlock>:
  a266c4:	30002573          	csrr	a0,mstatus
  a266c8:	42a1                	li	t0,8
  a266ca:	3002a073          	csrs	mstatus,t0
  a266ce:	8082                	ret

00a266d0 <global_interrupt_restore>:
  a266d0:	30051073          	csrw	mstatus,a0
  a266d4:	8082                	ret
	...

00a266d8 <__clz_tab>:
  a266d8:	0100 0202 0303 0303 0404 0404 0404 0404     ................
  a266e8:	0505 0505 0505 0505 0505 0505 0505 0505     ................
  a266f8:	0606 0606 0606 0606 0606 0606 0606 0606     ................
  a26708:	0606 0606 0606 0606 0606 0606 0606 0606     ................
  a26718:	0707 0707 0707 0707 0707 0707 0707 0707     ................
  a26728:	0707 0707 0707 0707 0707 0707 0707 0707     ................
  a26738:	0707 0707 0707 0707 0707 0707 0707 0707     ................
  a26748:	0707 0707 0707 0707 0707 0707 0707 0707     ................
  a26758:	0808 0808 0808 0808 0808 0808 0808 0808     ................
  a26768:	0808 0808 0808 0808 0808 0808 0808 0808     ................
  a26778:	0808 0808 0808 0808 0808 0808 0808 0808     ................
  a26788:	0808 0808 0808 0808 0808 0808 0808 0808     ................
  a26798:	0808 0808 0808 0808 0808 0808 0808 0808     ................
  a267a8:	0808 0808 0808 0808 0808 0808 0808 0808     ................
  a267b8:	0808 0808 0808 0808 0808 0808 0808 0808     ................
  a267c8:	0808 0808 0808 0808 0808 0808 0808 0808     ................
  a267d8:	1182 00a2 10f6 00a2 1188 00a2 1188 00a2     ................
  a267e8:	118c 00a2 1198 00a2 6552 6461 2079 6f66     ........Ready fo
  a267f8:	2072 6f64 6e77 6f6c 6461 0000 7075 6f6c     r download..uplo
  a26808:	6461 622e 6e69 0000 6e55 7573 7070 726f     ad.bin..Unsuppor
  a26818:	2074 4d43 3a44 0000 7845 6365 7475 6f69     t CMD:..Executio
  a26828:	206e 7553 6363 7365 6673 6c75 0000 0000     n Successful....
  a26838:	3d3d 3d3d 3d3d 3d3d 3d3d 3d3d 3d3d 3d3d     ================
  a26848:	3d3d 3d3d 3d3d 3d3d 003d 0000               =========...

00a26854 <g_loader_cmdtable>:
  a26854:	00d2 0000 11bc 00a2 0087 0000 131c 00a2     ................
  a26864:	0078 0000 11bc 00a2 00c3 0000 19c2 00a2     x...............
  a26874:	00a5 0000 1b4a 00a2 00b4 0000 1270 00a2     ....J.......p...
  a26884:	005a 0000 12b2 00a2 6843 7069 4520 6172     Z.......Chip Era
  a26894:	6573 6620 6961 756c 6572 0021 6e49 6176     se failure!.Inva
  a268a4:	696c 2064 6170 6172 736d 0000 6f64 6e77     lid params..down
  a268b4:	6f6c 6461 615f 6464 2072 0000 6620 6c69     load_addr .. fil
  a268c4:	5f65 656c 206e 0000 6520 6172 6573 735f     e_len .. erase_s
  a268d4:	7a69 2065 0000 0000 520a 7365 7465 6420     ize .....Reset d
  a268e4:	7665 6369 2e65 2e2e 000a 0000 7055 6f6c     evice.......Uplo
  a268f4:	6461 6c20 6e65 7467 2068 7265 6f72 0072     ad length error.
  a26904:	7055 6f6c 6461 6120 6464 2072 7265 6f72     Upload addr erro
  a26914:	0072 0000 7055 6f6c 6461 6120 6464 2072     r...Upload addr 
  a26924:	7865 6563 6465 2073 6c66 7361 2068 6163     exceeds flash ca
  a26934:	6170 6963 7974 0000                         pacity..

00a2693c <g_crc16_tab>:
  a2693c:	0000 1021 2042 3063 4084 50a5 60c6 70e7     ..!.B c0.@.P.`.p
  a2694c:	8108 9129 a14a b16b c18c d1ad e1ce f1ef     ..).J.k.........
  a2695c:	1231 0210 3273 2252 52b5 4294 72f7 62d6     1...s2R".R.B.r.b
  a2696c:	9339 8318 b37b a35a d3bd c39c f3ff e3de     9...{.Z.........
  a2697c:	2462 3443 0420 1401 64e6 74c7 44a4 5485     b$C4 ....d.t.D.T
  a2698c:	a56a b54b 8528 9509 e5ee f5cf c5ac d58d     j.K.(...........
  a2699c:	3653 2672 1611 0630 76d7 66f6 5695 46b4     S6r&..0..v.f.V.F
  a269ac:	b75b a77a 9719 8738 f7df e7fe d79d c7bc     [.z...8.........
  a269bc:	48c4 58e5 6886 78a7 0840 1861 2802 3823     .H.X.h.x@.a..(#8
  a269cc:	c9cc d9ed e98e f9af 8948 9969 a90a b92b     ........H.i...+.
  a269dc:	5af5 4ad4 7ab7 6a96 1a71 0a50 3a33 2a12     .Z.J.z.jq.P.3:.*
  a269ec:	dbfd cbdc fbbf eb9e 9b79 8b58 bb3b ab1a     ........y.X.;...
  a269fc:	6ca6 7c87 4ce4 5cc5 2c22 3c03 0c60 1c41     .l.|.L.\",.<`.A.
  a26a0c:	edae fd8f cdec ddcd ad2a bd0b 8d68 9d49     ........*...h.I.
  a26a1c:	7e97 6eb6 5ed5 4ef4 3e13 2e32 1e51 0e70     .~.n.^.N.>2.Q.p.
  a26a2c:	ff9f efbe dfdd cffc bf1b af3a 9f59 8f78     ..........:.Y.x.
  a26a3c:	9188 81a9 b1ca a1eb d10c c12d f14e e16f     ..........-.N.o.
  a26a4c:	1080 00a1 30c2 20e3 5004 4025 7046 6067     .....0. .P%@Fpg`
  a26a5c:	83b9 9398 a3fb b3da c33d d31c e37f f35e     ........=.....^.
  a26a6c:	02b1 1290 22f3 32d2 4235 5214 6277 7256     .....".25B.RwbVr
  a26a7c:	b5ea a5cb 95a8 8589 f56e e54f d52c c50d     ........n.O.,...
  a26a8c:	34e2 24c3 14a0 0481 7466 6447 5424 4405     .4.$....ftGd$T.D
  a26a9c:	a7db b7fa 8799 97b8 e75f f77e c71d d73c     ........_.~...<.
  a26aac:	26d3 36f2 0691 16b0 6657 7676 4615 5634     .&.6....Wfvv.F4V
  a26abc:	d94c c96d f90e e92f 99c8 89e9 b98a a9ab     L.m.../.........
  a26acc:	5844 4865 7806 6827 18c0 08e1 3882 28a3     DXeH.x'h.....8.(
  a26adc:	cb7d db5c eb3f fb1e 8bf9 9bd8 abbb bb9a     }.\.?...........
  a26aec:	4a75 5a54 6a37 7a16 0af1 1ad0 2ab3 3a92     uJTZ7j.z.....*.:
  a26afc:	fd2e ed0f dd6c cd4d bdaa ad8b 9de8 8dc9     ....l.M.........
  a26b0c:	7c26 6c07 5c64 4c45 3ca2 2c83 1ce0 0cc1     &|.ld\EL.<.,....
  a26b1c:	ef1f ff3e cf5d df7c af9b bfba 8fd9 9ff8     ..>.].|.........
  a26b2c:	6e17 7e36 4e55 5e74 2e93 3eb2 0ed1 1ef0     .n6~UNt^...>....
  a26b3c:	6966 656c 6c20 6e65 7467 2068 7265 2072     file length err 
  a26b4c:	203a 0000 6966 656c 735f 7a69 2065 203e     : ..file_size > 
  a26b5c:	7265 7361 5f65 6973 657a 0000 6c66 7361     erase_size..flas
  a26b6c:	2068 7277 7469 2065 6166 6c69 0000 0000     h write fail....
  a26b7c:	6f74 6174 206c 6973 657a 003a 6946 656c     total size:.File
  a26b8c:	6c20 6e65 7467 2068 7265 6f72 2072 203a      length error : 
  a26b9c:	0000 0000 6f4c 6461 2079 6665 7375 2065     ....Loady efuse 
  a26bac:	6966 656c 6620 6961 656c 3a64 0000 0000     file failed:....
  a26bbc:	7264 5f76 6f72 5f6d 6963 6870 7265 695f     drv_rom_cipher_i
  a26bcc:	696e 2074 2121 2021 6572 2074 203d 0000     nit !!! ret = ..
  a26bdc:	7264 5f76 6f72 5f6d 6963 6870 7265 735f     drv_rom_cipher_s
  a26bec:	6168 3532 2036 2121 2021 6572 2074 203d     ha256 !!! ret = 
  a26bfc:	0000 0000 7264 5f76 6f72 5f6d 6963 6870     ....drv_rom_ciph
  a26c0c:	7265 645f 6965 696e 2074 2121 2021 6572     er_deinit !!! re
  a26c1c:	2074 203d 0000 0000 6168 6873 6320 6d6f     t = ....hash com
  a26c2c:	706d 7261 2065 6166 6c69 2121 0021 0000     mpare fail!!!...
  a26c3c:	7865 6563 6465 6520 7566 6573 6920 646e     exceed efuse ind
  a26c4c:	7865 2121 0021 0000 6645 7375 2065 6f63     ex!!!...Efuse co
  a26c5c:	666e 6769 6620 6c69 2065 6e69 6176 696c     nfig file invali
  a26c6c:	0064 0000 6665 7375 2065 7277 7469 2065     d...efuse write 
  a26c7c:	7265 6f72 2c72 6920 646e 7865 003a 0000     error, index:...
  a26c8c:	7453 7261 2074 6962 3a74 0020 6c20 6e65     Start bit: . len
  a26c9c:	6228 7469 2973 003d 6645 7375 2065 6572     (bits)=.Efuse re
  a26cac:	6461 0000 6150 6172 736d 6520 7272 0000     ad..Params err..
  a26cbc:	2020 0000                                     ..

00a26cc0 <sfc_cfg>:
  a26cc0:	0104 0000 0000 0020 0000 0080 6f4c 6461     ...... .....Load
  a26cd0:	6f62 746f 5520 7261 2074 6e49 7469 5320     boot Uart Init S
  a26ce0:	6375 2163 0000 0000 6c46 7361 2068 6e49     ucc!....Flash In
  a26cf0:	7469 4620 6961 216c 7220 7465 3d20 0020     it Fail! ret = .
  a26d00:	6c46 7361 2068 6e49 7469 5320 6375 2163     Flash Init Succ!
  a26d10:	0000 0000 4653 2043 6966 2078 5253 7220     ....SFC fix SR r
  a26d20:	7465 3d20 0000 0000 3d3d 3d3d 3d3d 3d3d     et =....========
  a26d30:	3d3d 3d3d 3d3d 3d3d 4c20 616f 2064 6d43     ======== Load Cm
  a26d40:	2064 6f4c 706f 3d20 3d3d 3d3d 3d3d 3d3d     d Loop =========
  a26d50:	3d3d 3d3d 3d3d 0d3d 000a 0000               =======.....

00a26d5c <g_sha256_ival>:
  a26d5c:	096a 67e6 67bb 85ae 6e3c 72f3 4fa5 3af5     j..g.g..<n.r.O.:
  a26d6c:	0e51 7f52 059b 8c68 831f abd9 e05b 19cd     Q.R...h.....[...

00a26d7c <g_sm3_ival>:
  a26d7c:	8073 6f16 1449 b9b2 2417 d742 8ada 0006     s..oI....$B.....
  a26d8c:	6fa9 bc30 3116 aa38 8de3 4dee fbb0 4e0e     .o0..18....M...N

00a26d9c <g_crypto_ecc_num>:
  a26d9c:	0000 0000                                   ....

00a26da0 <g_crypto_ecc_params>:
  a26da0:	258e 00a2 254c 00a2 2628 00a2 26ca 00a2     .%..L%..(&...&..
  a26db0:	26e4 00a2 2f22 00a2 2f2c 00a2 2fba 00a2     .&.."/..,/.../..
  a26dc0:	2f3c 00a2 2fac 00a2 2fac 00a2 2fac 00a2     </.../.../.../..
  a26dd0:	2fac 00a2 2fac 00a2 2fac 00a2 2fac 00a2     ./.../.../.../..
  a26de0:	2fac 00a2 2fac 00a2 2fac 00a2 2fac 00a2     ./.../.../.../..
  a26df0:	2fb4 00a2 375a 00a2 3744 00a2 373c 00a2     ./..Z7..D7..<7..
  a26e00:	3744 00a2 3748 00a2 3744 00a2 3752 00a2     D7..H7..D7..R7..
  a26e10:	3744 00a2 3744 00a2 3744 00a2 3744 00a2     D7..D7..D7..D7..
  a26e20:	3744 00a2 3748 00a2 3752 00a2               D7..H7..R7..

00a26e2c <CSWTCH.8>:
  a26e2c:	1001 0020                                   .. .

00a26e30 <g_hal_uart_ctrl_func_array>:
  a26e30:	37f8 00a2 0000 0000 378e 00a2 3780 00a2     .7.......7...7..
  a26e40:	3772 00a2 3764 00a2 3764 00a2 353a 00a2     r7..d7..d7..:5..
  a26e50:	3550 00a2 3586 00a2 0000 0000 3664 00a2     P5...5......d6..
  a26e60:	3644 00a2 0000 0000 0000 0000 0000 0000     D6..............
  a26e70:	0000 0000 3568 00a2 34dc 00a2 34ee 00a2     ....h5...4...4..
  a26e80:	0000 0000                                   ....

00a26e84 <g_uart_base_addrs>:
  a26e84:	0000 4401 1000 4401 2000 4401               ...D...D. .D

00a26e90 <g_default_erase_cmds>:
  a26e90:	c639 ffff 06c1 4000 0101 0400               9......@....

00a26e9c <g_default_quad_enable>:
  a26e9c:	0002 0000 0000 0000                         ........

00a26ea4 <g_default_read_cmds>:
  a26ea4:	0019 0000                                   ....

00a26ea8 <g_default_write_cmds>:
  a26ea8:	0001 0000 0011 0000                         ........

00a26eb0 <g_flash_common_erase_cmds>:
  a26eb0:	c639 ffff 06c1 4000 0291 2000 0101 0400     9......@... ....

00a26ec0 <g_flash_common_read_cmds>:
  a26ec0:	0019 0000 4059 0000 49d9 0000 55d9 0000     ....Y@...I...U..
  a26ed0:	6b59 0000 f759 0000                         Yk..Y...

00a26ed8 <g_flash_common_write_cmds>:
  a26ed8:	0001 0000 0011 0000 4000 0000 4000 0000     .........@...@..
  a26ee8:	2991 0000 4000 0000                         .)...@..

00a26ef0 <g_flash_gd_bus_enable>:
  a26ef0:	0301 0005 0000 0301 0135 0001 0002 0000     ........5.......
  a26f00:	0000 0000                                   ....

00a26f04 <g_flash_spi_info_list>:
  a26f04:	40c8 0016 0000 0040 0004 0000 6ec0 00a2     .@....@......n..
  a26f14:	6ed8 00a2 6eb0 00a2 6ef0 00a2               .n...n...n..

00a26f20 <g_flash_spi_unknown_info>:
  a26f20:	ffff 00ff 0000 0008 0003 0000 6ea4 00a2     .............n..
  a26f30:	6ea8 00a2 6e90 00a2 6e9c 00a2               .n...n...n..

00a26f3c <g_sfc_protect_cfg>:
  a26f3c:	2802 0000 0000 0002 0000 0040 7802 0000     .(........@..x..
  a26f4c:	8000 0000 0000 0040 0002 0000 0000 0000     ......@.........
  a26f5c:	0000 0040 6f4e 6e20 6565 2064 6f74 6620     ..@.No need to f
  a26f6c:	7869 5320 2152 0a0d 0000 0000 5253 6620     ix SR!......SR f
  a26f7c:	7869 6f20 216b 0a0d 0000 0000 5253 6425     ix ok!......SR%d
  a26f8c:	305b 2578 5d78 6e20 6565 7364 6620 7869     [0x%x] needs fix
  a26f9c:	6e69 2c67 6520 7078 6365 5b74 7830 7825     ing, expect[0x%x
  a26fac:	0d5d 000a                                   ]...

00a26fb0 <g_efuse_cfg>:
  a26fb0:	0000 0008 0003 0008 00a0 0003 0270 0020     ............p. .
  a26fc0:	0003 0290 0008 0003 0298 0008 0003 02a0     ................
  a26fd0:	0100 0003 03a0 0020 0003 03c0 0001 0003     ...... .........
  a26fe0:	03e8 0008 0003 0630 0030 0003 0660 0030     ......0.0...`.0.
  a26ff0:	0003 0690 0030 0003 06c0 0030 0003 06f0     ....0.....0.....
  a27000:	0080 0003 02a0 0100 0003 046f 0001 0003     ..........o.....
  a27010:	0460 000f 0003 0470 0010 0003 0770 0030     `.....p.....p.0.
  a27020:	0003 0000 650a 7272 6f6e 003d 7830 0000     .....errno=.0x..
  a27030:	7075 6164 6574 725f 7365 7465 635f 756f     update_reset_cou
  a27040:	746e 0020 4f52 7c4d 6564 6166 6c75 5f74     nt .ROM|default_
  a27050:	6168 646e 656c 2072 203a 6e69 6574 7272     handler : interr
  a27060:	7075 2074 6469 5b78 6425 0a5d 0000 0000     upt idx[%d].....
  a27070:	4f52 7c4d 6f4f 7370 2d20 6820 7261 2064     ROM|Oops - hard 
  a27080:	6166 6c75 0d74 000a 4f52 7c4d 7865 6563     fault...ROM|exce
  a27090:	7470 6f69 3a6e 7825 0a0d 0000 4f52 7c4d     ption:%x....ROM|
  a270a0:	6f4f 7370 4e3a 494d 000a 0000 4f52 7c4d     Oops:NMI....ROM|
  a270b0:	6f4f 7370 2d20 6920 736e 206e 6170 6567     Oops - insn page
  a270c0:	6620 7561 746c 0a0d 0000 0000 4f52 7c4d      fault......ROM|
  a270d0:	6f4f 7370 2d20 6c20 616f 2064 6170 6567     Oops - load page
  a270e0:	6620 7561 746c 0a0d 0000 0000 4f52 7c4d      fault......ROM|
  a270f0:	6f4f 7370 2d20 6c20 636f 206b 7075 0a0d     Oops - lock up..
  a27100:	0000 0000 4f52 7c4d 6f4f 7370 2d20 7320     ....ROM|Oops - s
  a27110:	6f74 6572 7020 6761 2065 6166 6c75 0d74     tore page fault.
  a27120:	000a 0000 4f52 7c4d 6f4f 7370 2d20 6520     ....ROM|Oops - e
  a27130:	7262 6165 0d6b 000a 4f52 7c4d 6f4f 7370     break...ROM|Oops
  a27140:	2d20 6520 766e 7269 6e6f 656d 746e 6320      - environment c
  a27150:	6c61 206c 7266 6d6f 4d20 6d2d 646f 0d65     all from M-mode.
  a27160:	000a 0000 4f52 7c4d 6f4f 7370 2d20 6520     ....ROM|Oops - e
  a27170:	766e 7269 6e6f 656d 746e 6320 6c61 206c     nvironment call 
  a27180:	7266 6d6f 5320 6d2d 646f 0d65 000a 0000     from S-mode.....
  a27190:	4f52 7c4d 6f4f 7370 2d20 6520 766e 7269     ROM|Oops - envir
  a271a0:	6e6f 656d 746e 6320 6c61 206c 7266 6d6f     onment call from
  a271b0:	5520 6d2d 646f 0d65 000a 0000 4f52 7c4d      U-mode.....ROM|
  a271c0:	6f4f 7370 2d20 6920 736e 7274 6375 6974     Oops - instructi
  a271d0:	6e6f 6120 6363 7365 2073 6166 6c75 0d74     on access fault.
  a271e0:	000a 0000 4f52 7c4d 6f4f 7370 2d20 6920     ....ROM|Oops - i
  a271f0:	6c6c 6765 6c61 6920 736e 7274 6375 6974     llegal instructi
  a27200:	6e6f 0a0d 0000 0000 4f52 7c4d 6f4f 7370     on......ROM|Oops
  a27210:	2d20 6920 736e 7274 6375 6974 6e6f 6120      - instruction a
  a27220:	6464 6572 7373 6d20 7369 6c61 6769 656e     ddress misaligne
  a27230:	0d64 000a 4f52 7c4d 6f4f 7370 2d20 6c20     d...ROM|Oops - l
  a27240:	616f 2064 6361 6563 7373 6620 7561 746c     oad access fault
  a27250:	0a0d 0000 4f52 7c4d 6f4f 7370 2d20 6c20     ....ROM|Oops - l
  a27260:	616f 2064 6461 7264 7365 2073 696d 6173     oad address misa
  a27270:	696c 6e67 6465 0a0d 0000 0000 4f52 7c4d     ligned......ROM|
  a27280:	6f4f 7370 2d20 7320 6f74 6572 2820 726f     Oops - store (or
  a27290:	4120 4f4d 2029 6361 6563 7373 6620 7561      AMO) access fau
  a272a0:	746c 0a0d 0000 0000 4f52 7c4d 6f4f 7370     lt......ROM|Oops
  a272b0:	2d20 7320 6f74 6572 2820 726f 4120 4f4d      - store (or AMO
  a272c0:	2029 6461 7264 7365 2073 696d 6173 696c     ) address misali
  a272d0:	6e67 6465 0a0d 0000 4f52 7c4d 6f4f 7370     gned....ROM|Oops
  a272e0:	2d20 7520 6b6e 6f6e 6e77 6520 6378 7065      - unknown excep
  a272f0:	6974 6e6f 0a0d 0000 4f52 7c4d 2a2a 2a2a     tion....ROM|****
  a27300:	2a2a 2a2a 2a2a 2a2a 2a2a 7845 6563 7470     **********Except
  a27310:	6f69 206e 6e49 6f66 6d72 7461 6f69 2a6e     ion Information*
  a27320:	2a2a 2a2a 2a2a 2a2a 2a2a 2a2a 202a 000a     ************* ..
  a27330:	4f52 7c4d 7775 7845 5463 7079 2065 203d     ROM|uwExcType = 
  a27340:	7830 7825 000a 0000 4f52 7c4d 656d 6370     0x%x....ROM|mepc
  a27350:	2020 2020 2020 3d20 3020 2578 0a78 0000            = 0x%x...
  a27360:	4f52 7c4d 736d 6174 7574 2073 2020 3d20     ROM|mstatus    =
  a27370:	3020 2578 0a78 0000 4f52 7c4d 746d 6176      0x%x...ROM|mtva
  a27380:	206c 2020 2020 3d20 3020 2578 0a78 0000     l      = 0x%x...
  a27390:	4f52 7c4d 636d 7561 6573 2020 2020 3d20     ROM|mcause     =
  a273a0:	3020 2578 0a78 0000 4f52 7c4d 6363 7561      0x%x...ROM|ccau
  a273b0:	6573 2020 2020 3d20 3020 2578 0a78 0000     se     = 0x%x...
  a273c0:	4f52 7c4d 6172 2020 2020 2020 2020 3d20     ROM|ra         =
  a273d0:	3020 2578 0a78 0000 4f52 7c4d 7073 2020      0x%x...ROM|sp  
  a273e0:	2020 2020 2020 3d20 3020 2578 0a78 0000            = 0x%x...
  a273f0:	4f52 7c4d 7067 2020 2020 2020 2020 3d20     ROM|gp         =
  a27400:	3020 2578 0a78 0000 4f52 7c4d 7074 2020      0x%x...ROM|tp  
  a27410:	2020 2020 2020 3d20 3020 2578 0a78 0000            = 0x%x...
  a27420:	4f52 7c4d 3074 2020 2020 2020 2020 3d20     ROM|t0         =
  a27430:	3020 2578 0a78 0000 4f52 7c4d 3174 2020      0x%x...ROM|t1  
  a27440:	2020 2020 2020 3d20 3020 2578 0a78 0000            = 0x%x...
  a27450:	4f52 7c4d 3274 2020 2020 2020 2020 3d20     ROM|t2         =
  a27460:	3020 2578 0a78 0000 4f52 7c4d 3073 2020      0x%x...ROM|s0  
  a27470:	2020 2020 2020 3d20 3020 2578 0a78 0000            = 0x%x...
  a27480:	4f52 7c4d 3173 2020 2020 2020 2020 3d20     ROM|s1         =
  a27490:	3020 2578 0a78 0000 4f52 7c4d 3061 2020      0x%x...ROM|a0  
  a274a0:	2020 2020 2020 3d20 3020 2578 0a78 0000            = 0x%x...
  a274b0:	4f52 7c4d 3161 2020 2020 2020 2020 3d20     ROM|a1         =
  a274c0:	3020 2578 0a78 0000 4f52 7c4d 3261 2020      0x%x...ROM|a2  
  a274d0:	2020 2020 2020 3d20 3020 2578 0a78 0000            = 0x%x...
  a274e0:	4f52 7c4d 3361 2020 2020 2020 2020 3d20     ROM|a3         =
  a274f0:	3020 2578 0a78 0000 4f52 7c4d 3461 2020      0x%x...ROM|a4  
  a27500:	2020 2020 2020 3d20 3020 2578 0a78 0000            = 0x%x...
  a27510:	4f52 7c4d 3561 2020 2020 2020 2020 3d20     ROM|a5         =
  a27520:	3020 2578 0a78 0000 4f52 7c4d 3661 2020      0x%x...ROM|a6  
  a27530:	2020 2020 2020 3d20 3020 2578 0a78 0000            = 0x%x...
  a27540:	4f52 7c4d 3761 2020 2020 2020 2020 3d20     ROM|a7         =
  a27550:	3020 2578 0a78 0000 4f52 7c4d 3273 2020      0x%x...ROM|s2  
  a27560:	2020 2020 2020 3d20 3020 2578 0a78 0000            = 0x%x...
  a27570:	4f52 7c4d 3373 2020 2020 2020 2020 3d20     ROM|s3         =
  a27580:	3020 2578 0a78 0000 4f52 7c4d 3473 2020      0x%x...ROM|s4  
  a27590:	2020 2020 2020 3d20 3020 2578 0a78 0000            = 0x%x...
  a275a0:	4f52 7c4d 3573 2020 2020 2020 2020 3d20     ROM|s5         =
  a275b0:	3020 2578 0a78 0000 4f52 7c4d 3673 2020      0x%x...ROM|s6  
  a275c0:	2020 2020 2020 3d20 3020 2578 0a78 0000            = 0x%x...
  a275d0:	4f52 7c4d 3773 2020 2020 2020 2020 3d20     ROM|s7         =
  a275e0:	3020 2578 0a78 0000 4f52 7c4d 3873 2020      0x%x...ROM|s8  
  a275f0:	2020 2020 2020 3d20 3020 2578 0a78 0000            = 0x%x...
  a27600:	4f52 7c4d 3973 2020 2020 2020 2020 3d20     ROM|s9         =
  a27610:	3020 2578 0a78 0000 4f52 7c4d 3173 2030      0x%x...ROM|s10 
  a27620:	2020 2020 2020 3d20 3020 2578 0a78 0000            = 0x%x...
  a27630:	4f52 7c4d 3173 2031 2020 2020 2020 3d20     ROM|s11        =
  a27640:	3020 2578 0a78 0000 4f52 7c4d 3374 2020      0x%x...ROM|t3  
  a27650:	2020 2020 2020 3d20 3020 2578 0a78 0000            = 0x%x...
  a27660:	4f52 7c4d 3474 2020 2020 2020 2020 3d20     ROM|t4         =
  a27670:	3020 2578 0a78 0000 4f52 7c4d 3574 2020      0x%x...ROM|t5  
  a27680:	2020 2020 2020 3d20 3020 2578 0a78 0000            = 0x%x...
  a27690:	4f52 7c4d 3674 2020 2020 2020 2020 3d20     ROM|t6         =
  a276a0:	3020 2578 0a78 0000 4f52 7c4d 2a2a 2a2a      0x%x...ROM|****
  a276b0:	2a2a 2a2a 2a2a 2a2a 2a2a 7845 6563 7470     **********Except
  a276c0:	6f69 206e 6e49 6f66 6d72 7461 6f69 206e     ion Information 
  a276d0:	6e65 2a64 2a2a 2a2a 2a2a 2a2a 2a2a 2a2a     end*************
  a276e0:	202a 000a 4f52 7c4d 6d6e 5f69 6168 646e     * ..ROM|nmi_hand
  a276f0:	656c 2072 203a 6e69 6574 7272 7075 2074     ler : interrupt 
  a27700:	6469 5b78 6425 0a5d 0000 0000 4f52 7c4d     idx[%d].....ROM|
  a27710:	705b 6e61 6369 695d 3a64 6425 632c 646f     [panic]id:%d,cod
  a27720:	3a65 7830 7825 632c 6c61 3a6c 7830 7825     e:0x%x,call:0x%x
  a27730:	0000 0000 559c 00a2 55ca 00a2 55de 00a2     .....U...U...U..
  a27740:	5624 00a2 5682 00a2 5686 00a2 56c4 00a2     $V...V...V...V..
  a27750:	57dc 00a2                                   .W..

00a27754 <g_itoaLowerDigits>:
  a27754:	3130 3332 3534 3736 3938 6261 6463 6665     0123456789abcdef
  a27764:	0078 0000                                   x...

00a27768 <g_itoaUpperDigits>:
  a27768:	3130 3332 3534 3736 3938 4241 4443 4645     0123456789ABCDEF
  a27778:	0058 0000                                   X...

00a2777c <stateTable.1749>:
	...
  a2779c:	0006 0600 0100 0000 0000 0603 0600 0002     ................
  a277ac:	0504 0505 0505 0505 0505 0000 0000 0000     ................
  a277bc:	0000 0800 0800 0808 0700 0000 0007 0007     ................
  a277cc:	0000 0800 0000 0000 0008 0007 0000 0000     ................
  a277dc:	0000 0800 0808 0808 0807 0007 0007 0800     ................
  a277ec:	0708 0800 0807 0700 0008 0007 0000 0000     ................
	...
  a2787c:	0800 0808 0808 0008 0100 0800 0808 0808     ................
  a2788c:	0001 0400 0404 0808 0008 0000 0303 0508     ................
  a2789c:	0808 0000 0200 0302 0505 0008 0000 0303     ................
  a278ac:	0503 0805 0000 0200 0202 0808 0008 0000     ................
  a278bc:	0606 0606 0606 0000 0700 0707 0707 0007     ................
  a278cc:	0000 0000                                   ....
