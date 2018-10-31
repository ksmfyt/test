
a.out:     file format elf32-i386


Disassembly of section .init:

080482d4 <.init>:
 80482d4:	53                   	push   %ebx
 80482d5:	83 ec 08             	sub    $0x8,%esp
 80482d8:	e8 a3 00 00 00       	call   8048380 <__libc_start_main@plt+0x40>
 80482dd:	81 c3 23 1d 00 00    	add    $0x1d23,%ebx
 80482e3:	8b 83 fc ff ff ff    	mov    -0x4(%ebx),%eax
 80482e9:	85 c0                	test   %eax,%eax
 80482eb:	74 05                	je     80482f2 <printf@plt-0x1e>
 80482ed:	e8 3e 00 00 00       	call   8048330 <__gmon_start__@plt>
 80482f2:	83 c4 08             	add    $0x8,%esp
 80482f5:	5b                   	pop    %ebx
 80482f6:	c3                   	ret    

Disassembly of section .plt:

08048300 <printf@plt-0x10>:
 8048300:	ff 35 04 a0 04 08    	pushl  0x804a004
 8048306:	ff 25 08 a0 04 08    	jmp    *0x804a008
 804830c:	00 00                	add    %al,(%eax)
	...

08048310 <printf@plt>:
 8048310:	ff 25 0c a0 04 08    	jmp    *0x804a00c
 8048316:	68 00 00 00 00       	push   $0x0
 804831b:	e9 e0 ff ff ff       	jmp    8048300 <printf@plt-0x10>

08048320 <sleep@plt>:
 8048320:	ff 25 10 a0 04 08    	jmp    *0x804a010
 8048326:	68 08 00 00 00       	push   $0x8
 804832b:	e9 d0 ff ff ff       	jmp    8048300 <printf@plt-0x10>

08048330 <__gmon_start__@plt>:
 8048330:	ff 25 14 a0 04 08    	jmp    *0x804a014
 8048336:	68 10 00 00 00       	push   $0x10
 804833b:	e9 c0 ff ff ff       	jmp    8048300 <printf@plt-0x10>

08048340 <__libc_start_main@plt>:
 8048340:	ff 25 18 a0 04 08    	jmp    *0x804a018
 8048346:	68 18 00 00 00       	push   $0x18
 804834b:	e9 b0 ff ff ff       	jmp    8048300 <printf@plt-0x10>

Disassembly of section .text:

08048350 <.text>:
 8048350:	31 ed                	xor    %ebp,%ebp
 8048352:	5e                   	pop    %esi
 8048353:	89 e1                	mov    %esp,%ecx
 8048355:	83 e4 f0             	and    $0xfffffff0,%esp
 8048358:	50                   	push   %eax
 8048359:	54                   	push   %esp
 804835a:	52                   	push   %edx
 804835b:	68 a0 85 04 08       	push   $0x80485a0
 8048360:	68 30 85 04 08       	push   $0x8048530
 8048365:	51                   	push   %ecx
 8048366:	56                   	push   %esi
 8048367:	68 c6 84 04 08       	push   $0x80484c6
 804836c:	e8 cf ff ff ff       	call   8048340 <__libc_start_main@plt>
 8048371:	f4                   	hlt    
 8048372:	66 90                	xchg   %ax,%ax
 8048374:	66 90                	xchg   %ax,%ax
 8048376:	66 90                	xchg   %ax,%ax
 8048378:	66 90                	xchg   %ax,%ax
 804837a:	66 90                	xchg   %ax,%ax
 804837c:	66 90                	xchg   %ax,%ax
 804837e:	66 90                	xchg   %ax,%ax
 8048380:	8b 1c 24             	mov    (%esp),%ebx
 8048383:	c3                   	ret    
 8048384:	66 90                	xchg   %ax,%ax
 8048386:	66 90                	xchg   %ax,%ax
 8048388:	66 90                	xchg   %ax,%ax
 804838a:	66 90                	xchg   %ax,%ax
 804838c:	66 90                	xchg   %ax,%ax
 804838e:	66 90                	xchg   %ax,%ax
 8048390:	b8 27 a0 04 08       	mov    $0x804a027,%eax
 8048395:	2d 24 a0 04 08       	sub    $0x804a024,%eax
 804839a:	83 f8 06             	cmp    $0x6,%eax
 804839d:	77 01                	ja     80483a0 <__libc_start_main@plt+0x60>
 804839f:	c3                   	ret    
 80483a0:	b8 00 00 00 00       	mov    $0x0,%eax
 80483a5:	85 c0                	test   %eax,%eax
 80483a7:	74 f6                	je     804839f <__libc_start_main@plt+0x5f>
 80483a9:	55                   	push   %ebp
 80483aa:	89 e5                	mov    %esp,%ebp
 80483ac:	83 ec 18             	sub    $0x18,%esp
 80483af:	c7 04 24 24 a0 04 08 	movl   $0x804a024,(%esp)
 80483b6:	ff d0                	call   *%eax
 80483b8:	c9                   	leave  
 80483b9:	c3                   	ret    
 80483ba:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 80483c0:	b8 24 a0 04 08       	mov    $0x804a024,%eax
 80483c5:	2d 24 a0 04 08       	sub    $0x804a024,%eax
 80483ca:	c1 f8 02             	sar    $0x2,%eax
 80483cd:	89 c2                	mov    %eax,%edx
 80483cf:	c1 ea 1f             	shr    $0x1f,%edx
 80483d2:	01 d0                	add    %edx,%eax
 80483d4:	d1 f8                	sar    %eax
 80483d6:	75 01                	jne    80483d9 <__libc_start_main@plt+0x99>
 80483d8:	c3                   	ret    
 80483d9:	ba 00 00 00 00       	mov    $0x0,%edx
 80483de:	85 d2                	test   %edx,%edx
 80483e0:	74 f6                	je     80483d8 <__libc_start_main@plt+0x98>
 80483e2:	55                   	push   %ebp
 80483e3:	89 e5                	mov    %esp,%ebp
 80483e5:	83 ec 18             	sub    $0x18,%esp
 80483e8:	89 44 24 04          	mov    %eax,0x4(%esp)
 80483ec:	c7 04 24 24 a0 04 08 	movl   $0x804a024,(%esp)
 80483f3:	ff d2                	call   *%edx
 80483f5:	c9                   	leave  
 80483f6:	c3                   	ret    
 80483f7:	89 f6                	mov    %esi,%esi
 80483f9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
 8048400:	80 3d 24 a0 04 08 00 	cmpb   $0x0,0x804a024
 8048407:	75 13                	jne    804841c <__libc_start_main@plt+0xdc>
 8048409:	55                   	push   %ebp
 804840a:	89 e5                	mov    %esp,%ebp
 804840c:	83 ec 08             	sub    $0x8,%esp
 804840f:	e8 7c ff ff ff       	call   8048390 <__libc_start_main@plt+0x50>
 8048414:	c6 05 24 a0 04 08 01 	movb   $0x1,0x804a024
 804841b:	c9                   	leave  
 804841c:	f3 c3                	repz ret 
 804841e:	66 90                	xchg   %ax,%ax
 8048420:	a1 10 9f 04 08       	mov    0x8049f10,%eax
 8048425:	85 c0                	test   %eax,%eax
 8048427:	74 1f                	je     8048448 <__libc_start_main@plt+0x108>
 8048429:	b8 00 00 00 00       	mov    $0x0,%eax
 804842e:	85 c0                	test   %eax,%eax
 8048430:	74 16                	je     8048448 <__libc_start_main@plt+0x108>
 8048432:	55                   	push   %ebp
 8048433:	89 e5                	mov    %esp,%ebp
 8048435:	83 ec 18             	sub    $0x18,%esp
 8048438:	c7 04 24 10 9f 04 08 	movl   $0x8049f10,(%esp)
 804843f:	ff d0                	call   *%eax
 8048441:	c9                   	leave  
 8048442:	e9 79 ff ff ff       	jmp    80483c0 <__libc_start_main@plt+0x80>
 8048447:	90                   	nop
 8048448:	e9 73 ff ff ff       	jmp    80483c0 <__libc_start_main@plt+0x80>
 804844d:	55                   	push   %ebp
 804844e:	89 e5                	mov    %esp,%ebp
 8048450:	83 ec 10             	sub    $0x10,%esp
 8048453:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
 804845a:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
 8048461:	eb 0a                	jmp    804846d <__libc_start_main@plt+0x12d>
 8048463:	8b 45 fc             	mov    -0x4(%ebp),%eax
 8048466:	01 45 f8             	add    %eax,-0x8(%ebp)
 8048469:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
 804846d:	8b 45 fc             	mov    -0x4(%ebp),%eax
 8048470:	3b 45 08             	cmp    0x8(%ebp),%eax
 8048473:	7c ee                	jl     8048463 <__libc_start_main@plt+0x123>
 8048475:	8b 45 f8             	mov    -0x8(%ebp),%eax
 8048478:	c9                   	leave  
 8048479:	c3                   	ret    
 804847a:	55                   	push   %ebp
 804847b:	89 e5                	mov    %esp,%ebp
 804847d:	83 ec 28             	sub    $0x28,%esp
 8048480:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
 8048487:	c7 05 28 a0 04 08 c0 	movl   $0x80485c0,0x804a028
 804848e:	85 04 08 
 8048491:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8048494:	a3 2c a0 04 08       	mov    %eax,0x804a02c
 8048499:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804849c:	a3 30 a0 04 08       	mov    %eax,0x804a030
 80484a1:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
 80484a5:	8b 45 f4             	mov    -0xc(%ebp),%eax
 80484a8:	89 44 24 04          	mov    %eax,0x4(%esp)
 80484ac:	c7 04 24 d4 85 04 08 	movl   $0x80485d4,(%esp)
 80484b3:	e8 58 fe ff ff       	call   8048310 <printf@plt>
 80484b8:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 80484bf:	e8 5c fe ff ff       	call   8048320 <sleep@plt>
 80484c4:	eb c1                	jmp    8048487 <__libc_start_main@plt+0x147>
 80484c6:	55                   	push   %ebp
 80484c7:	89 e5                	mov    %esp,%ebp
 80484c9:	83 e4 f0             	and    $0xfffffff0,%esp
 80484cc:	83 ec 20             	sub    $0x20,%esp
 80484cf:	c7 44 24 1c 00 00 00 	movl   $0x0,0x1c(%esp)
 80484d6:	00 
 80484d7:	c7 44 24 18 01 00 00 	movl   $0x1,0x18(%esp)
 80484de:	00 
 80484df:	eb 0a                	jmp    80484eb <__libc_start_main@plt+0x1ab>
 80484e1:	83 44 24 1c 01       	addl   $0x1,0x1c(%esp)
 80484e6:	83 44 24 18 01       	addl   $0x1,0x18(%esp)
 80484eb:	83 7c 24 18 64       	cmpl   $0x64,0x18(%esp)
 80484f0:	7e ef                	jle    80484e1 <__libc_start_main@plt+0x1a1>
 80484f2:	8b 44 24 1c          	mov    0x1c(%esp),%eax
 80484f6:	89 44 24 04          	mov    %eax,0x4(%esp)
 80484fa:	c7 04 24 d8 85 04 08 	movl   $0x80485d8,(%esp)
 8048501:	e8 0a fe ff ff       	call   8048310 <printf@plt>
 8048506:	c7 04 24 fa 00 00 00 	movl   $0xfa,(%esp)
 804850d:	e8 3b ff ff ff       	call   804844d <__libc_start_main@plt+0x10d>
 8048512:	89 44 24 04          	mov    %eax,0x4(%esp)
 8048516:	c7 04 24 ee 85 04 08 	movl   $0x80485ee,(%esp)
 804851d:	e8 ee fd ff ff       	call   8048310 <printf@plt>
 8048522:	e8 53 ff ff ff       	call   804847a <__libc_start_main@plt+0x13a>
 8048527:	b8 00 00 00 00       	mov    $0x0,%eax
 804852c:	c9                   	leave  
 804852d:	c3                   	ret    
 804852e:	66 90                	xchg   %ax,%ax
 8048530:	55                   	push   %ebp
 8048531:	57                   	push   %edi
 8048532:	31 ff                	xor    %edi,%edi
 8048534:	56                   	push   %esi
 8048535:	53                   	push   %ebx
 8048536:	e8 45 fe ff ff       	call   8048380 <__libc_start_main@plt+0x40>
 804853b:	81 c3 c5 1a 00 00    	add    $0x1ac5,%ebx
 8048541:	83 ec 1c             	sub    $0x1c,%esp
 8048544:	8b 6c 24 30          	mov    0x30(%esp),%ebp
 8048548:	8d b3 0c ff ff ff    	lea    -0xf4(%ebx),%esi
 804854e:	e8 81 fd ff ff       	call   80482d4 <printf@plt-0x3c>
 8048553:	8d 83 08 ff ff ff    	lea    -0xf8(%ebx),%eax
 8048559:	29 c6                	sub    %eax,%esi
 804855b:	c1 fe 02             	sar    $0x2,%esi
 804855e:	85 f6                	test   %esi,%esi
 8048560:	74 27                	je     8048589 <__libc_start_main@plt+0x249>
 8048562:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 8048568:	8b 44 24 38          	mov    0x38(%esp),%eax
 804856c:	89 2c 24             	mov    %ebp,(%esp)
 804856f:	89 44 24 08          	mov    %eax,0x8(%esp)
 8048573:	8b 44 24 34          	mov    0x34(%esp),%eax
 8048577:	89 44 24 04          	mov    %eax,0x4(%esp)
 804857b:	ff 94 bb 08 ff ff ff 	call   *-0xf8(%ebx,%edi,4)
 8048582:	83 c7 01             	add    $0x1,%edi
 8048585:	39 f7                	cmp    %esi,%edi
 8048587:	75 df                	jne    8048568 <__libc_start_main@plt+0x228>
 8048589:	83 c4 1c             	add    $0x1c,%esp
 804858c:	5b                   	pop    %ebx
 804858d:	5e                   	pop    %esi
 804858e:	5f                   	pop    %edi
 804858f:	5d                   	pop    %ebp
 8048590:	c3                   	ret    
 8048591:	eb 0d                	jmp    80485a0 <__libc_start_main@plt+0x260>
 8048593:	90                   	nop
 8048594:	90                   	nop
 8048595:	90                   	nop
 8048596:	90                   	nop
 8048597:	90                   	nop
 8048598:	90                   	nop
 8048599:	90                   	nop
 804859a:	90                   	nop
 804859b:	90                   	nop
 804859c:	90                   	nop
 804859d:	90                   	nop
 804859e:	90                   	nop
 804859f:	90                   	nop
 80485a0:	f3 c3                	repz ret 

Disassembly of section .fini:

080485a4 <.fini>:
 80485a4:	53                   	push   %ebx
 80485a5:	83 ec 08             	sub    $0x8,%esp
 80485a8:	e8 d3 fd ff ff       	call   8048380 <__libc_start_main@plt+0x40>
 80485ad:	81 c3 53 1a 00 00    	add    $0x1a53,%ebx
 80485b3:	83 c4 08             	add    $0x8,%esp
 80485b6:	5b                   	pop    %ebx
 80485b7:	c3                   	ret    
