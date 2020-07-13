parallels@debian-gnu-linux-vm:~/icslabs/target40$ objdump -d rtarget

rtarget:     file format elf64-x86-64


Disassembly of section .init:

0000000000400bb0 <_init>:
  400bb0:	48 83 ec 08          	sub    $0x8,%rsp
  400bb4:	48 8b 05 3d 44 20 00 	mov    0x20443d(%rip),%rax        # 604ff8 <__gmon_start__>
  400bbb:	48 85 c0             	test   %rax,%rax
  400bbe:	74 02                	je     400bc2 <_init+0x12>
  400bc0:	ff d0                	callq  *%rax
  400bc2:	48 83 c4 08          	add    $0x8,%rsp
  400bc6:	c3                   	retq   

Disassembly of section .plt:

0000000000400bd0 <.plt>:
  400bd0:	ff 35 32 44 20 00    	pushq  0x204432(%rip)        # 605008 <_GLOBAL_OFFSET_TABLE_+0x8>
  400bd6:	ff 25 34 44 20 00    	jmpq   *0x204434(%rip)        # 605010 <_GLOBAL_OFFSET_TABLE_+0x10>
  400bdc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400be0 <strcasecmp@plt>:
  400be0:	ff 25 32 44 20 00    	jmpq   *0x204432(%rip)        # 605018 <strcasecmp@GLIBC_2.2.5>
  400be6:	68 00 00 00 00       	pushq  $0x0
  400beb:	e9 e0 ff ff ff       	jmpq   400bd0 <.plt>

0000000000400bf0 <__errno_location@plt>:
  400bf0:	ff 25 2a 44 20 00    	jmpq   *0x20442a(%rip)        # 605020 <__errno_location@GLIBC_2.2.5>
  400bf6:	68 01 00 00 00       	pushq  $0x1
  400bfb:	e9 d0 ff ff ff       	jmpq   400bd0 <.plt>

0000000000400c00 <srandom@plt>:
  400c00:	ff 25 22 44 20 00    	jmpq   *0x204422(%rip)        # 605028 <srandom@GLIBC_2.2.5>
  400c06:	68 02 00 00 00       	pushq  $0x2
  400c0b:	e9 c0 ff ff ff       	jmpq   400bd0 <.plt>

0000000000400c10 <strncmp@plt>:
  400c10:	ff 25 1a 44 20 00    	jmpq   *0x20441a(%rip)        # 605030 <strncmp@GLIBC_2.2.5>
  400c16:	68 03 00 00 00       	pushq  $0x3
  400c1b:	e9 b0 ff ff ff       	jmpq   400bd0 <.plt>

0000000000400c20 <strcpy@plt>:
  400c20:	ff 25 12 44 20 00    	jmpq   *0x204412(%rip)        # 605038 <strcpy@GLIBC_2.2.5>
  400c26:	68 04 00 00 00       	pushq  $0x4
  400c2b:	e9 a0 ff ff ff       	jmpq   400bd0 <.plt>

0000000000400c30 <puts@plt>:
  400c30:	ff 25 0a 44 20 00    	jmpq   *0x20440a(%rip)        # 605040 <puts@GLIBC_2.2.5>
  400c36:	68 05 00 00 00       	pushq  $0x5
  400c3b:	e9 90 ff ff ff       	jmpq   400bd0 <.plt>

0000000000400c40 <write@plt>:
  400c40:	ff 25 02 44 20 00    	jmpq   *0x204402(%rip)        # 605048 <write@GLIBC_2.2.5>
  400c46:	68 06 00 00 00       	pushq  $0x6
  400c4b:	e9 80 ff ff ff       	jmpq   400bd0 <.plt>

0000000000400c50 <mmap@plt>:
  400c50:	ff 25 fa 43 20 00    	jmpq   *0x2043fa(%rip)        # 605050 <mmap@GLIBC_2.2.5>
  400c56:	68 07 00 00 00       	pushq  $0x7
  400c5b:	e9 70 ff ff ff       	jmpq   400bd0 <.plt>

0000000000400c60 <printf@plt>:
  400c60:	ff 25 f2 43 20 00    	jmpq   *0x2043f2(%rip)        # 605058 <printf@GLIBC_2.2.5>
  400c66:	68 08 00 00 00       	pushq  $0x8
  400c6b:	e9 60 ff ff ff       	jmpq   400bd0 <.plt>

0000000000400c70 <memset@plt>:
  400c70:	ff 25 ea 43 20 00    	jmpq   *0x2043ea(%rip)        # 605060 <memset@GLIBC_2.2.5>
  400c76:	68 09 00 00 00       	pushq  $0x9
  400c7b:	e9 50 ff ff ff       	jmpq   400bd0 <.plt>

0000000000400c80 <alarm@plt>:
  400c80:	ff 25 e2 43 20 00    	jmpq   *0x2043e2(%rip)        # 605068 <alarm@GLIBC_2.2.5>
  400c86:	68 0a 00 00 00       	pushq  $0xa
  400c8b:	e9 40 ff ff ff       	jmpq   400bd0 <.plt>

0000000000400c90 <close@plt>:
  400c90:	ff 25 da 43 20 00    	jmpq   *0x2043da(%rip)        # 605070 <close@GLIBC_2.2.5>
  400c96:	68 0b 00 00 00       	pushq  $0xb
  400c9b:	e9 30 ff ff ff       	jmpq   400bd0 <.plt>

0000000000400ca0 <read@plt>:
  400ca0:	ff 25 d2 43 20 00    	jmpq   *0x2043d2(%rip)        # 605078 <read@GLIBC_2.2.5>
  400ca6:	68 0c 00 00 00       	pushq  $0xc
  400cab:	e9 20 ff ff ff       	jmpq   400bd0 <.plt>

0000000000400cb0 <signal@plt>:
  400cb0:	ff 25 ca 43 20 00    	jmpq   *0x2043ca(%rip)        # 605080 <signal@GLIBC_2.2.5>
  400cb6:	68 0d 00 00 00       	pushq  $0xd
  400cbb:	e9 10 ff ff ff       	jmpq   400bd0 <.plt>

0000000000400cc0 <gethostbyname@plt>:
  400cc0:	ff 25 c2 43 20 00    	jmpq   *0x2043c2(%rip)        # 605088 <gethostbyname@GLIBC_2.2.5>
  400cc6:	68 0e 00 00 00       	pushq  $0xe
  400ccb:	e9 00 ff ff ff       	jmpq   400bd0 <.plt>

0000000000400cd0 <fprintf@plt>:
  400cd0:	ff 25 ba 43 20 00    	jmpq   *0x2043ba(%rip)        # 605090 <fprintf@GLIBC_2.2.5>
  400cd6:	68 0f 00 00 00       	pushq  $0xf
  400cdb:	e9 f0 fe ff ff       	jmpq   400bd0 <.plt>

0000000000400ce0 <strtol@plt>:
  400ce0:	ff 25 b2 43 20 00    	jmpq   *0x2043b2(%rip)        # 605098 <strtol@GLIBC_2.2.5>
  400ce6:	68 10 00 00 00       	pushq  $0x10
  400ceb:	e9 e0 fe ff ff       	jmpq   400bd0 <.plt>

0000000000400cf0 <memcpy@plt>:
  400cf0:	ff 25 aa 43 20 00    	jmpq   *0x2043aa(%rip)        # 6050a0 <memcpy@GLIBC_2.14>
  400cf6:	68 11 00 00 00       	pushq  $0x11
  400cfb:	e9 d0 fe ff ff       	jmpq   400bd0 <.plt>

0000000000400d00 <time@plt>:
  400d00:	ff 25 a2 43 20 00    	jmpq   *0x2043a2(%rip)        # 6050a8 <time@GLIBC_2.2.5>
  400d06:	68 12 00 00 00       	pushq  $0x12
  400d0b:	e9 c0 fe ff ff       	jmpq   400bd0 <.plt>

0000000000400d10 <random@plt>:
  400d10:	ff 25 9a 43 20 00    	jmpq   *0x20439a(%rip)        # 6050b0 <random@GLIBC_2.2.5>
  400d16:	68 13 00 00 00       	pushq  $0x13
  400d1b:	e9 b0 fe ff ff       	jmpq   400bd0 <.plt>

0000000000400d20 <_IO_getc@plt>:
  400d20:	ff 25 92 43 20 00    	jmpq   *0x204392(%rip)        # 6050b8 <_IO_getc@GLIBC_2.2.5>
  400d26:	68 14 00 00 00       	pushq  $0x14
  400d2b:	e9 a0 fe ff ff       	jmpq   400bd0 <.plt>

0000000000400d30 <__isoc99_sscanf@plt>:
  400d30:	ff 25 8a 43 20 00    	jmpq   *0x20438a(%rip)        # 6050c0 <__isoc99_sscanf@GLIBC_2.7>
  400d36:	68 15 00 00 00       	pushq  $0x15
  400d3b:	e9 90 fe ff ff       	jmpq   400bd0 <.plt>

0000000000400d40 <munmap@plt>:
  400d40:	ff 25 82 43 20 00    	jmpq   *0x204382(%rip)        # 6050c8 <munmap@GLIBC_2.2.5>
  400d46:	68 16 00 00 00       	pushq  $0x16
  400d4b:	e9 80 fe ff ff       	jmpq   400bd0 <.plt>

0000000000400d50 <bcopy@plt>:
  400d50:	ff 25 7a 43 20 00    	jmpq   *0x20437a(%rip)        # 6050d0 <bcopy@GLIBC_2.2.5>
  400d56:	68 17 00 00 00       	pushq  $0x17
  400d5b:	e9 70 fe ff ff       	jmpq   400bd0 <.plt>

0000000000400d60 <fopen@plt>:
  400d60:	ff 25 72 43 20 00    	jmpq   *0x204372(%rip)        # 6050d8 <fopen@GLIBC_2.2.5>
  400d66:	68 18 00 00 00       	pushq  $0x18
  400d6b:	e9 60 fe ff ff       	jmpq   400bd0 <.plt>

0000000000400d70 <getopt@plt>:
  400d70:	ff 25 6a 43 20 00    	jmpq   *0x20436a(%rip)        # 6050e0 <getopt@GLIBC_2.2.5>
  400d76:	68 19 00 00 00       	pushq  $0x19
  400d7b:	e9 50 fe ff ff       	jmpq   400bd0 <.plt>

0000000000400d80 <strtoul@plt>:
  400d80:	ff 25 62 43 20 00    	jmpq   *0x204362(%rip)        # 6050e8 <strtoul@GLIBC_2.2.5>
  400d86:	68 1a 00 00 00       	pushq  $0x1a
  400d8b:	e9 40 fe ff ff       	jmpq   400bd0 <.plt>

0000000000400d90 <gethostname@plt>:
  400d90:	ff 25 5a 43 20 00    	jmpq   *0x20435a(%rip)        # 6050f0 <gethostname@GLIBC_2.2.5>
  400d96:	68 1b 00 00 00       	pushq  $0x1b
  400d9b:	e9 30 fe ff ff       	jmpq   400bd0 <.plt>

0000000000400da0 <sprintf@plt>:
  400da0:	ff 25 52 43 20 00    	jmpq   *0x204352(%rip)        # 6050f8 <sprintf@GLIBC_2.2.5>
  400da6:	68 1c 00 00 00       	pushq  $0x1c
  400dab:	e9 20 fe ff ff       	jmpq   400bd0 <.plt>

0000000000400db0 <exit@plt>:
  400db0:	ff 25 4a 43 20 00    	jmpq   *0x20434a(%rip)        # 605100 <exit@GLIBC_2.2.5>
  400db6:	68 1d 00 00 00       	pushq  $0x1d
  400dbb:	e9 10 fe ff ff       	jmpq   400bd0 <.plt>

0000000000400dc0 <connect@plt>:
  400dc0:	ff 25 42 43 20 00    	jmpq   *0x204342(%rip)        # 605108 <connect@GLIBC_2.2.5>
  400dc6:	68 1e 00 00 00       	pushq  $0x1e
  400dcb:	e9 00 fe ff ff       	jmpq   400bd0 <.plt>

0000000000400dd0 <socket@plt>:
  400dd0:	ff 25 3a 43 20 00    	jmpq   *0x20433a(%rip)        # 605110 <socket@GLIBC_2.2.5>
  400dd6:	68 1f 00 00 00       	pushq  $0x1f
  400ddb:	e9 f0 fd ff ff       	jmpq   400bd0 <.plt>

Disassembly of section .text:

0000000000400de0 <_start>:
  400de0:	31 ed                	xor    %ebp,%ebp
  400de2:	49 89 d1             	mov    %rdx,%r9
  400de5:	5e                   	pop    %rsi
  400de6:	48 89 e2             	mov    %rsp,%rdx
  400de9:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  400ded:	50                   	push   %rax
  400dee:	54                   	push   %rsp
  400def:	49 c7 c0 90 2d 40 00 	mov    $0x402d90,%r8
  400df6:	48 c7 c1 20 2d 40 00 	mov    $0x402d20,%rcx
  400dfd:	48 c7 c7 8d 10 40 00 	mov    $0x40108d,%rdi
  400e04:	ff 15 e6 41 20 00    	callq  *0x2041e6(%rip)        # 604ff0 <__libc_start_main@GLIBC_2.2.5>
  400e0a:	f4                   	hlt    
  400e0b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000400e10 <deregister_tm_clones>:
  400e10:	b8 97 54 60 00       	mov    $0x605497,%eax
  400e15:	55                   	push   %rbp
  400e16:	48 2d 90 54 60 00    	sub    $0x605490,%rax
  400e1c:	48 83 f8 0e          	cmp    $0xe,%rax
  400e20:	48 89 e5             	mov    %rsp,%rbp
  400e23:	76 1b                	jbe    400e40 <deregister_tm_clones+0x30>
  400e25:	b8 00 00 00 00       	mov    $0x0,%eax
  400e2a:	48 85 c0             	test   %rax,%rax
  400e2d:	74 11                	je     400e40 <deregister_tm_clones+0x30>
  400e2f:	5d                   	pop    %rbp
  400e30:	bf 90 54 60 00       	mov    $0x605490,%edi
  400e35:	ff e0                	jmpq   *%rax
  400e37:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  400e3e:	00 00 
  400e40:	5d                   	pop    %rbp
  400e41:	c3                   	retq   
  400e42:	0f 1f 40 00          	nopl   0x0(%rax)
  400e46:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  400e4d:	00 00 00 

0000000000400e50 <register_tm_clones>:
  400e50:	be 90 54 60 00       	mov    $0x605490,%esi
  400e55:	55                   	push   %rbp
  400e56:	48 81 ee 90 54 60 00 	sub    $0x605490,%rsi
  400e5d:	48 c1 fe 03          	sar    $0x3,%rsi
  400e61:	48 89 e5             	mov    %rsp,%rbp
  400e64:	48 89 f0             	mov    %rsi,%rax
  400e67:	48 c1 e8 3f          	shr    $0x3f,%rax
  400e6b:	48 01 c6             	add    %rax,%rsi
  400e6e:	48 d1 fe             	sar    %rsi
  400e71:	74 15                	je     400e88 <register_tm_clones+0x38>
  400e73:	b8 00 00 00 00       	mov    $0x0,%eax
  400e78:	48 85 c0             	test   %rax,%rax
  400e7b:	74 0b                	je     400e88 <register_tm_clones+0x38>
  400e7d:	5d                   	pop    %rbp
  400e7e:	bf 90 54 60 00       	mov    $0x605490,%edi
  400e83:	ff e0                	jmpq   *%rax
  400e85:	0f 1f 00             	nopl   (%rax)
  400e88:	5d                   	pop    %rbp
  400e89:	c3                   	retq   
  400e8a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400e90 <__do_global_dtors_aux>:
  400e90:	80 3d 31 46 20 00 00 	cmpb   $0x0,0x204631(%rip)        # 6054c8 <completed.6972>
  400e97:	75 11                	jne    400eaa <__do_global_dtors_aux+0x1a>
  400e99:	55                   	push   %rbp
  400e9a:	48 89 e5             	mov    %rsp,%rbp
  400e9d:	e8 6e ff ff ff       	callq  400e10 <deregister_tm_clones>
  400ea2:	5d                   	pop    %rbp
  400ea3:	c6 05 1e 46 20 00 01 	movb   $0x1,0x20461e(%rip)        # 6054c8 <completed.6972>
  400eaa:	f3 c3                	repz retq 
  400eac:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400eb0 <frame_dummy>:
  400eb0:	bf 18 4e 60 00       	mov    $0x604e18,%edi
  400eb5:	48 83 3f 00          	cmpq   $0x0,(%rdi)
  400eb9:	75 05                	jne    400ec0 <frame_dummy+0x10>
  400ebb:	eb 93                	jmp    400e50 <register_tm_clones>
  400ebd:	0f 1f 00             	nopl   (%rax)
  400ec0:	b8 00 00 00 00       	mov    $0x0,%eax
  400ec5:	48 85 c0             	test   %rax,%rax
  400ec8:	74 f1                	je     400ebb <frame_dummy+0xb>
  400eca:	55                   	push   %rbp
  400ecb:	48 89 e5             	mov    %rsp,%rbp
  400ece:	ff d0                	callq  *%rax
  400ed0:	5d                   	pop    %rbp
  400ed1:	e9 7a ff ff ff       	jmpq   400e50 <register_tm_clones>

0000000000400ed6 <usage>:
  400ed6:	48 83 ec 08          	sub    $0x8,%rsp
  400eda:	48 89 fe             	mov    %rdi,%rsi
  400edd:	83 3d 24 46 20 00 00 	cmpl   $0x0,0x204624(%rip)        # 605508 <is_checker>
  400ee4:	74 4b                	je     400f31 <usage+0x5b>
  400ee6:	48 8d 3d bb 1e 00 00 	lea    0x1ebb(%rip),%rdi        # 402da8 <_IO_stdin_used+0x8>
  400eed:	b8 00 00 00 00       	mov    $0x0,%eax
  400ef2:	e8 69 fd ff ff       	callq  400c60 <printf@plt>
  400ef7:	48 8d 3d e2 1e 00 00 	lea    0x1ee2(%rip),%rdi        # 402de0 <_IO_stdin_used+0x40>
  400efe:	e8 2d fd ff ff       	callq  400c30 <puts@plt>
  400f03:	48 8d 3d 0e 20 00 00 	lea    0x200e(%rip),%rdi        # 402f18 <_IO_stdin_used+0x178>
  400f0a:	e8 21 fd ff ff       	callq  400c30 <puts@plt>
  400f0f:	48 8d 3d f2 1e 00 00 	lea    0x1ef2(%rip),%rdi        # 402e08 <_IO_stdin_used+0x68>
  400f16:	e8 15 fd ff ff       	callq  400c30 <puts@plt>
  400f1b:	48 8d 3d 10 20 00 00 	lea    0x2010(%rip),%rdi        # 402f32 <_IO_stdin_used+0x192>
  400f22:	e8 09 fd ff ff       	callq  400c30 <puts@plt>
  400f27:	bf 00 00 00 00       	mov    $0x0,%edi
  400f2c:	e8 7f fe ff ff       	callq  400db0 <exit@plt>
  400f31:	48 8d 3d 16 20 00 00 	lea    0x2016(%rip),%rdi        # 402f4e <_IO_stdin_used+0x1ae>
  400f38:	b8 00 00 00 00       	mov    $0x0,%eax
  400f3d:	e8 1e fd ff ff       	callq  400c60 <printf@plt>
  400f42:	48 8d 3d e7 1e 00 00 	lea    0x1ee7(%rip),%rdi        # 402e30 <_IO_stdin_used+0x90>
  400f49:	e8 e2 fc ff ff       	callq  400c30 <puts@plt>
  400f4e:	48 8d 3d 03 1f 00 00 	lea    0x1f03(%rip),%rdi        # 402e58 <_IO_stdin_used+0xb8>
  400f55:	e8 d6 fc ff ff       	callq  400c30 <puts@plt>
  400f5a:	48 8d 3d 0b 20 00 00 	lea    0x200b(%rip),%rdi        # 402f6c <_IO_stdin_used+0x1cc>
  400f61:	e8 ca fc ff ff       	callq  400c30 <puts@plt>
  400f66:	eb bf                	jmp    400f27 <usage+0x51>

0000000000400f68 <initialize_target>:
  400f68:	55                   	push   %rbp
  400f69:	53                   	push   %rbx
  400f6a:	48 81 ec 08 21 00 00 	sub    $0x2108,%rsp
  400f71:	89 f5                	mov    %esi,%ebp
  400f73:	89 3d 7f 45 20 00    	mov    %edi,0x20457f(%rip)        # 6054f8 <check_level>
  400f79:	8b 3d b1 41 20 00    	mov    0x2041b1(%rip),%edi        # 605130 <target_id>
  400f7f:	e8 73 1d 00 00       	callq  402cf7 <gencookie>
  400f84:	89 05 7a 45 20 00    	mov    %eax,0x20457a(%rip)        # 605504 <cookie>
  400f8a:	89 c7                	mov    %eax,%edi
  400f8c:	e8 66 1d 00 00       	callq  402cf7 <gencookie>
  400f91:	89 05 69 45 20 00    	mov    %eax,0x204569(%rip)        # 605500 <authkey>
  400f97:	8b 05 93 41 20 00    	mov    0x204193(%rip),%eax        # 605130 <target_id>
  400f9d:	8d 78 01             	lea    0x1(%rax),%edi
  400fa0:	e8 5b fc ff ff       	callq  400c00 <srandom@plt>
  400fa5:	e8 66 fd ff ff       	callq  400d10 <random@plt>
  400faa:	89 c7                	mov    %eax,%edi
  400fac:	e8 c3 02 00 00       	callq  401274 <scramble>
  400fb1:	89 c3                	mov    %eax,%ebx
  400fb3:	85 ed                	test   %ebp,%ebp
  400fb5:	75 3d                	jne    400ff4 <initialize_target+0x8c>
  400fb7:	b8 00 00 00 00       	mov    $0x0,%eax
  400fbc:	01 d8                	add    %ebx,%eax
  400fbe:	0f b7 c0             	movzwl %ax,%eax
  400fc1:	8d 04 c5 00 01 00 00 	lea    0x100(,%rax,8),%eax
  400fc8:	89 c0                	mov    %eax,%eax
  400fca:	48 89 05 af 44 20 00 	mov    %rax,0x2044af(%rip)        # 605480 <buf_offset>
  400fd1:	c6 05 50 51 20 00 72 	movb   $0x72,0x205150(%rip)        # 606128 <target_prefix>
  400fd8:	83 3d a9 44 20 00 00 	cmpl   $0x0,0x2044a9(%rip)        # 605488 <notify>
  400fdf:	74 09                	je     400fea <initialize_target+0x82>
  400fe1:	83 3d 20 45 20 00 00 	cmpl   $0x0,0x204520(%rip)        # 605508 <is_checker>
  400fe8:	74 22                	je     40100c <initialize_target+0xa4>
  400fea:	48 81 c4 08 21 00 00 	add    $0x2108,%rsp
  400ff1:	5b                   	pop    %rbx
  400ff2:	5d                   	pop    %rbp
  400ff3:	c3                   	retq   
  400ff4:	bf 00 00 00 00       	mov    $0x0,%edi
  400ff9:	e8 02 fd ff ff       	callq  400d00 <time@plt>
  400ffe:	89 c7                	mov    %eax,%edi
  401000:	e8 fb fb ff ff       	callq  400c00 <srandom@plt>
  401005:	e8 06 fd ff ff       	callq  400d10 <random@plt>
  40100a:	eb b0                	jmp    400fbc <initialize_target+0x54>
  40100c:	48 89 e7             	mov    %rsp,%rdi
  40100f:	be 00 01 00 00       	mov    $0x100,%esi
  401014:	e8 77 fd ff ff       	callq  400d90 <gethostname@plt>
  401019:	89 c3                	mov    %eax,%ebx
  40101b:	85 c0                	test   %eax,%eax
  40101d:	75 24                	jne    401043 <initialize_target+0xdb>
  40101f:	48 63 c3             	movslq %ebx,%rax
  401022:	48 8d 15 37 41 20 00 	lea    0x204137(%rip),%rdx        # 605160 <host_table>
  401029:	48 8b 3c c2          	mov    (%rdx,%rax,8),%rdi
  40102d:	48 85 ff             	test   %rdi,%rdi
  401030:	74 27                	je     401059 <initialize_target+0xf1>
  401032:	48 89 e6             	mov    %rsp,%rsi
  401035:	e8 a6 fb ff ff       	callq  400be0 <strcasecmp@plt>
  40103a:	85 c0                	test   %eax,%eax
  40103c:	74 1b                	je     401059 <initialize_target+0xf1>
  40103e:	83 c3 01             	add    $0x1,%ebx
  401041:	eb dc                	jmp    40101f <initialize_target+0xb7>
  401043:	48 8d 3d 3e 1e 00 00 	lea    0x1e3e(%rip),%rdi        # 402e88 <_IO_stdin_used+0xe8>
  40104a:	e8 e1 fb ff ff       	callq  400c30 <puts@plt>
  40104f:	bf 08 00 00 00       	mov    $0x8,%edi
  401054:	e8 57 fd ff ff       	callq  400db0 <exit@plt>
  401059:	48 8d bc 24 00 01 00 	lea    0x100(%rsp),%rdi
  401060:	00 
  401061:	e8 16 1a 00 00       	callq  402a7c <init_driver>
  401066:	85 c0                	test   %eax,%eax
  401068:	79 80                	jns    400fea <initialize_target+0x82>
  40106a:	48 8d b4 24 00 01 00 	lea    0x100(%rsp),%rsi
  401071:	00 
  401072:	48 8d 3d 47 1e 00 00 	lea    0x1e47(%rip),%rdi        # 402ec0 <_IO_stdin_used+0x120>
  401079:	b8 00 00 00 00       	mov    $0x0,%eax
  40107e:	e8 dd fb ff ff       	callq  400c60 <printf@plt>
  401083:	bf 08 00 00 00       	mov    $0x8,%edi
  401088:	e8 23 fd ff ff       	callq  400db0 <exit@plt>

000000000040108d <main>:
  40108d:	41 56                	push   %r14
  40108f:	41 55                	push   %r13
  401091:	41 54                	push   %r12
  401093:	55                   	push   %rbp
  401094:	53                   	push   %rbx
  401095:	41 89 fc             	mov    %edi,%r12d
  401098:	48 89 f3             	mov    %rsi,%rbx
  40109b:	48 c7 c6 22 1e 40 00 	mov    $0x401e22,%rsi
  4010a2:	bf 0b 00 00 00       	mov    $0xb,%edi
  4010a7:	e8 04 fc ff ff       	callq  400cb0 <signal@plt>
  4010ac:	48 c7 c6 ce 1d 40 00 	mov    $0x401dce,%rsi
  4010b3:	bf 07 00 00 00       	mov    $0x7,%edi
  4010b8:	e8 f3 fb ff ff       	callq  400cb0 <signal@plt>
  4010bd:	48 c7 c6 76 1e 40 00 	mov    $0x401e76,%rsi
  4010c4:	bf 04 00 00 00       	mov    $0x4,%edi
  4010c9:	e8 e2 fb ff ff       	callq  400cb0 <signal@plt>
  4010ce:	83 3d 33 44 20 00 00 	cmpl   $0x0,0x204433(%rip)        # 605508 <is_checker>
  4010d5:	75 58                	jne    40112f <main+0xa2>
  4010d7:	48 8d 2d a7 1e 00 00 	lea    0x1ea7(%rip),%rbp        # 402f85 <_IO_stdin_used+0x1e5>
  4010de:	48 8b 05 bb 43 20 00 	mov    0x2043bb(%rip),%rax        # 6054a0 <stdin@@GLIBC_2.2.5>
  4010e5:	48 89 05 04 44 20 00 	mov    %rax,0x204404(%rip)        # 6054f0 <infile>
  4010ec:	41 bd 00 00 00 00    	mov    $0x0,%r13d
  4010f2:	41 be 00 00 00 00    	mov    $0x0,%r14d
  4010f8:	48 89 ea             	mov    %rbp,%rdx
  4010fb:	48 89 de             	mov    %rbx,%rsi
  4010fe:	44 89 e7             	mov    %r12d,%edi
  401101:	e8 6a fc ff ff       	callq  400d70 <getopt@plt>
  401106:	3c ff                	cmp    $0xff,%al
  401108:	0f 84 f8 00 00 00    	je     401206 <main+0x179>
  40110e:	0f be f0             	movsbl %al,%esi
  401111:	83 e8 61             	sub    $0x61,%eax
  401114:	3c 10                	cmp    $0x10,%al
  401116:	0f 87 d1 00 00 00    	ja     4011ed <main+0x160>
  40111c:	0f b6 c0             	movzbl %al,%eax
  40111f:	48 8d 15 aa 1e 00 00 	lea    0x1eaa(%rip),%rdx        # 402fd0 <_IO_stdin_used+0x230>
  401126:	48 63 04 82          	movslq (%rdx,%rax,4),%rax
  40112a:	48 01 d0             	add    %rdx,%rax
  40112d:	ff e0                	jmpq   *%rax
  40112f:	48 c7 c6 ca 1e 40 00 	mov    $0x401eca,%rsi
  401136:	bf 0e 00 00 00       	mov    $0xe,%edi
  40113b:	e8 70 fb ff ff       	callq  400cb0 <signal@plt>
  401140:	bf 05 00 00 00       	mov    $0x5,%edi
  401145:	e8 36 fb ff ff       	callq  400c80 <alarm@plt>
  40114a:	48 8d 2d 39 1e 00 00 	lea    0x1e39(%rip),%rbp        # 402f8a <_IO_stdin_used+0x1ea>
  401151:	eb 8b                	jmp    4010de <main+0x51>
  401153:	48 8b 3b             	mov    (%rbx),%rdi
  401156:	e8 7b fd ff ff       	callq  400ed6 <usage>
  40115b:	48 8d 35 b3 20 00 00 	lea    0x20b3(%rip),%rsi        # 403215 <_IO_stdin_used+0x475>
  401162:	48 8b 3d 3f 43 20 00 	mov    0x20433f(%rip),%rdi        # 6054a8 <optarg@@GLIBC_2.2.5>
  401169:	e8 f2 fb ff ff       	callq  400d60 <fopen@plt>
  40116e:	48 89 05 7b 43 20 00 	mov    %rax,0x20437b(%rip)        # 6054f0 <infile>
  401175:	48 85 c0             	test   %rax,%rax
  401178:	0f 85 7a ff ff ff    	jne    4010f8 <main+0x6b>
  40117e:	48 8b 15 23 43 20 00 	mov    0x204323(%rip),%rdx        # 6054a8 <optarg@@GLIBC_2.2.5>
  401185:	48 8d 35 06 1e 00 00 	lea    0x1e06(%rip),%rsi        # 402f92 <_IO_stdin_used+0x1f2>
  40118c:	48 8b 3d 2d 43 20 00 	mov    0x20432d(%rip),%rdi        # 6054c0 <stderr@@GLIBC_2.2.5>
  401193:	e8 38 fb ff ff       	callq  400cd0 <fprintf@plt>
  401198:	b8 01 00 00 00       	mov    $0x1,%eax
  40119d:	e9 c9 00 00 00       	jmpq   40126b <main+0x1de>
  4011a2:	ba 10 00 00 00       	mov    $0x10,%edx
  4011a7:	be 00 00 00 00       	mov    $0x0,%esi
  4011ac:	48 8b 3d f5 42 20 00 	mov    0x2042f5(%rip),%rdi        # 6054a8 <optarg@@GLIBC_2.2.5>
  4011b3:	e8 c8 fb ff ff       	callq  400d80 <strtoul@plt>
  4011b8:	41 89 c6             	mov    %eax,%r14d
  4011bb:	e9 38 ff ff ff       	jmpq   4010f8 <main+0x6b>
  4011c0:	ba 0a 00 00 00       	mov    $0xa,%edx
  4011c5:	be 00 00 00 00       	mov    $0x0,%esi
  4011ca:	48 8b 3d d7 42 20 00 	mov    0x2042d7(%rip),%rdi        # 6054a8 <optarg@@GLIBC_2.2.5>
  4011d1:	e8 0a fb ff ff       	callq  400ce0 <strtol@plt>
  4011d6:	41 89 c5             	mov    %eax,%r13d
  4011d9:	e9 1a ff ff ff       	jmpq   4010f8 <main+0x6b>
  4011de:	c7 05 a0 42 20 00 00 	movl   $0x0,0x2042a0(%rip)        # 605488 <notify>
  4011e5:	00 00 00 
  4011e8:	e9 0b ff ff ff       	jmpq   4010f8 <main+0x6b>
  4011ed:	48 8d 3d bb 1d 00 00 	lea    0x1dbb(%rip),%rdi        # 402faf <_IO_stdin_used+0x20f>
  4011f4:	b8 00 00 00 00       	mov    $0x0,%eax
  4011f9:	e8 62 fa ff ff       	callq  400c60 <printf@plt>
  4011fe:	48 8b 3b             	mov    (%rbx),%rdi
  401201:	e8 d0 fc ff ff       	callq  400ed6 <usage>
  401206:	be 01 00 00 00       	mov    $0x1,%esi
  40120b:	44 89 ef             	mov    %r13d,%edi
  40120e:	e8 55 fd ff ff       	callq  400f68 <initialize_target>
  401213:	83 3d ee 42 20 00 00 	cmpl   $0x0,0x2042ee(%rip)        # 605508 <is_checker>
  40121a:	74 27                	je     401243 <main+0x1b6>
  40121c:	44 3b 35 dd 42 20 00 	cmp    0x2042dd(%rip),%r14d        # 605500 <authkey>
  401223:	74 1e                	je     401243 <main+0x1b6>
  401225:	44 89 f6             	mov    %r14d,%esi
  401228:	48 8d 3d b9 1c 00 00 	lea    0x1cb9(%rip),%rdi        # 402ee8 <_IO_stdin_used+0x148>
  40122f:	b8 00 00 00 00       	mov    $0x0,%eax
  401234:	e8 27 fa ff ff       	callq  400c60 <printf@plt>
  401239:	b8 00 00 00 00       	mov    $0x0,%eax
  40123e:	e8 5b 08 00 00       	callq  401a9e <check_fail>
  401243:	8b 35 bb 42 20 00    	mov    0x2042bb(%rip),%esi        # 605504 <cookie>
  401249:	48 8d 3d 72 1d 00 00 	lea    0x1d72(%rip),%rdi        # 402fc2 <_IO_stdin_used+0x222>
  401250:	b8 00 00 00 00       	mov    $0x0,%eax
  401255:	e8 06 fa ff ff       	callq  400c60 <printf@plt>
  40125a:	48 8b 3d 1f 42 20 00 	mov    0x20421f(%rip),%rdi        # 605480 <buf_offset>
  401261:	e8 b6 0c 00 00       	callq  401f1c <launch>
  401266:	b8 00 00 00 00       	mov    $0x0,%eax
  40126b:	5b                   	pop    %rbx
  40126c:	5d                   	pop    %rbp
  40126d:	41 5c                	pop    %r12
  40126f:	41 5d                	pop    %r13
  401271:	41 5e                	pop    %r14
  401273:	c3                   	retq   

0000000000401274 <scramble>:
  401274:	b8 00 00 00 00       	mov    $0x0,%eax
  401279:	eb 11                	jmp    40128c <scramble+0x18>
  40127b:	69 d0 b2 eb 00 00    	imul   $0xebb2,%eax,%edx
  401281:	01 fa                	add    %edi,%edx
  401283:	89 c1                	mov    %eax,%ecx
  401285:	89 54 8c d0          	mov    %edx,-0x30(%rsp,%rcx,4)
  401289:	83 c0 01             	add    $0x1,%eax
  40128c:	83 f8 09             	cmp    $0x9,%eax
  40128f:	76 ea                	jbe    40127b <scramble+0x7>
  401291:	8b 44 24 ec          	mov    -0x14(%rsp),%eax
  401295:	69 c0 4c cc 00 00    	imul   $0xcc4c,%eax,%eax
  40129b:	89 44 24 ec          	mov    %eax,-0x14(%rsp)
  40129f:	8b 44 24 d4          	mov    -0x2c(%rsp),%eax
  4012a3:	69 c0 fa f7 00 00    	imul   $0xf7fa,%eax,%eax
  4012a9:	89 44 24 d4          	mov    %eax,-0x2c(%rsp)
  4012ad:	8b 44 24 f0          	mov    -0x10(%rsp),%eax
  4012b1:	69 c0 55 a1 00 00    	imul   $0xa155,%eax,%eax
  4012b7:	89 44 24 f0          	mov    %eax,-0x10(%rsp)
  4012bb:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  4012bf:	69 c0 c4 e3 00 00    	imul   $0xe3c4,%eax,%eax
  4012c5:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  4012c9:	8b 44 24 e4          	mov    -0x1c(%rsp),%eax
  4012cd:	69 c0 72 94 00 00    	imul   $0x9472,%eax,%eax
  4012d3:	89 44 24 e4          	mov    %eax,-0x1c(%rsp)
  4012d7:	8b 44 24 e4          	mov    -0x1c(%rsp),%eax
  4012db:	69 c0 31 ec 00 00    	imul   $0xec31,%eax,%eax
  4012e1:	89 44 24 e4          	mov    %eax,-0x1c(%rsp)
  4012e5:	8b 44 24 d4          	mov    -0x2c(%rsp),%eax
  4012e9:	69 c0 41 f5 00 00    	imul   $0xf541,%eax,%eax
  4012ef:	89 44 24 d4          	mov    %eax,-0x2c(%rsp)
  4012f3:	8b 44 24 d4          	mov    -0x2c(%rsp),%eax
  4012f7:	69 c0 77 8d 00 00    	imul   $0x8d77,%eax,%eax
  4012fd:	89 44 24 d4          	mov    %eax,-0x2c(%rsp)
  401301:	8b 44 24 f0          	mov    -0x10(%rsp),%eax
  401305:	69 c0 e4 79 00 00    	imul   $0x79e4,%eax,%eax
  40130b:	89 44 24 f0          	mov    %eax,-0x10(%rsp)
  40130f:	8b 44 24 d4          	mov    -0x2c(%rsp),%eax
  401313:	69 c0 b0 cb 00 00    	imul   $0xcbb0,%eax,%eax
  401319:	89 44 24 d4          	mov    %eax,-0x2c(%rsp)
  40131d:	8b 44 24 d8          	mov    -0x28(%rsp),%eax
  401321:	69 c0 6a be 00 00    	imul   $0xbe6a,%eax,%eax
  401327:	89 44 24 d8          	mov    %eax,-0x28(%rsp)
  40132b:	8b 44 24 d0          	mov    -0x30(%rsp),%eax
  40132f:	69 c0 1a ec 00 00    	imul   $0xec1a,%eax,%eax
  401335:	89 44 24 d0          	mov    %eax,-0x30(%rsp)
  401339:	8b 44 24 dc          	mov    -0x24(%rsp),%eax
  40133d:	69 c0 1c 25 00 00    	imul   $0x251c,%eax,%eax
  401343:	89 44 24 dc          	mov    %eax,-0x24(%rsp)
  401347:	8b 44 24 e0          	mov    -0x20(%rsp),%eax
  40134b:	69 c0 8d a7 00 00    	imul   $0xa78d,%eax,%eax
  401351:	89 44 24 e0          	mov    %eax,-0x20(%rsp)
  401355:	8b 44 24 d8          	mov    -0x28(%rsp),%eax
  401359:	69 c0 cf d7 00 00    	imul   $0xd7cf,%eax,%eax
  40135f:	89 44 24 d8          	mov    %eax,-0x28(%rsp)
  401363:	8b 44 24 f0          	mov    -0x10(%rsp),%eax
  401367:	69 c0 4f 09 00 00    	imul   $0x94f,%eax,%eax
  40136d:	89 44 24 f0          	mov    %eax,-0x10(%rsp)
  401371:	8b 44 24 ec          	mov    -0x14(%rsp),%eax
  401375:	69 c0 47 bc 00 00    	imul   $0xbc47,%eax,%eax
  40137b:	89 44 24 ec          	mov    %eax,-0x14(%rsp)
  40137f:	8b 44 24 f4          	mov    -0xc(%rsp),%eax
  401383:	69 c0 67 44 00 00    	imul   $0x4467,%eax,%eax
  401389:	89 44 24 f4          	mov    %eax,-0xc(%rsp)
  40138d:	8b 44 24 f4          	mov    -0xc(%rsp),%eax
  401391:	69 c0 ff 0b 00 00    	imul   $0xbff,%eax,%eax
  401397:	89 44 24 f4          	mov    %eax,-0xc(%rsp)
  40139b:	8b 44 24 dc          	mov    -0x24(%rsp),%eax
  40139f:	69 c0 cb bf 00 00    	imul   $0xbfcb,%eax,%eax
  4013a5:	89 44 24 dc          	mov    %eax,-0x24(%rsp)
  4013a9:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  4013ad:	69 c0 42 bb 00 00    	imul   $0xbb42,%eax,%eax
  4013b3:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  4013b7:	8b 44 24 d8          	mov    -0x28(%rsp),%eax
  4013bb:	69 c0 9e 00 00 00    	imul   $0x9e,%eax,%eax
  4013c1:	89 44 24 d8          	mov    %eax,-0x28(%rsp)
  4013c5:	8b 44 24 e0          	mov    -0x20(%rsp),%eax
  4013c9:	69 c0 23 96 00 00    	imul   $0x9623,%eax,%eax
  4013cf:	89 44 24 e0          	mov    %eax,-0x20(%rsp)
  4013d3:	8b 44 24 f4          	mov    -0xc(%rsp),%eax
  4013d7:	69 c0 8b fa 00 00    	imul   $0xfa8b,%eax,%eax
  4013dd:	89 44 24 f4          	mov    %eax,-0xc(%rsp)
  4013e1:	8b 44 24 d8          	mov    -0x28(%rsp),%eax
  4013e5:	69 c0 14 11 00 00    	imul   $0x1114,%eax,%eax
  4013eb:	89 44 24 d8          	mov    %eax,-0x28(%rsp)
  4013ef:	8b 44 24 d4          	mov    -0x2c(%rsp),%eax
  4013f3:	69 c0 66 07 00 00    	imul   $0x766,%eax,%eax
  4013f9:	89 44 24 d4          	mov    %eax,-0x2c(%rsp)
  4013fd:	8b 44 24 e0          	mov    -0x20(%rsp),%eax
  401401:	69 c0 46 53 00 00    	imul   $0x5346,%eax,%eax
  401407:	89 44 24 e0          	mov    %eax,-0x20(%rsp)
  40140b:	8b 44 24 d8          	mov    -0x28(%rsp),%eax
  40140f:	69 c0 01 1c 00 00    	imul   $0x1c01,%eax,%eax
  401415:	89 44 24 d8          	mov    %eax,-0x28(%rsp)
  401419:	8b 44 24 f0          	mov    -0x10(%rsp),%eax
  40141d:	69 c0 ec 94 00 00    	imul   $0x94ec,%eax,%eax
  401423:	89 44 24 f0          	mov    %eax,-0x10(%rsp)
  401427:	8b 44 24 d4          	mov    -0x2c(%rsp),%eax
  40142b:	69 c0 ff 95 00 00    	imul   $0x95ff,%eax,%eax
  401431:	89 44 24 d4          	mov    %eax,-0x2c(%rsp)
  401435:	8b 44 24 d8          	mov    -0x28(%rsp),%eax
  401439:	69 c0 89 0a 00 00    	imul   $0xa89,%eax,%eax
  40143f:	89 44 24 d8          	mov    %eax,-0x28(%rsp)
  401443:	8b 44 24 e0          	mov    -0x20(%rsp),%eax
  401447:	69 c0 d7 10 00 00    	imul   $0x10d7,%eax,%eax
  40144d:	89 44 24 e0          	mov    %eax,-0x20(%rsp)
  401451:	8b 44 24 d0          	mov    -0x30(%rsp),%eax
  401455:	69 c0 97 a0 00 00    	imul   $0xa097,%eax,%eax
  40145b:	89 44 24 d0          	mov    %eax,-0x30(%rsp)
  40145f:	8b 44 24 f0          	mov    -0x10(%rsp),%eax
  401463:	69 c0 6d 24 00 00    	imul   $0x246d,%eax,%eax
  401469:	89 44 24 f0          	mov    %eax,-0x10(%rsp)
  40146d:	8b 44 24 d0          	mov    -0x30(%rsp),%eax
  401471:	69 c0 69 7d 00 00    	imul   $0x7d69,%eax,%eax
  401477:	89 44 24 d0          	mov    %eax,-0x30(%rsp)
  40147b:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  40147f:	69 c0 07 4d 00 00    	imul   $0x4d07,%eax,%eax
  401485:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  401489:	8b 44 24 dc          	mov    -0x24(%rsp),%eax
  40148d:	69 c0 35 90 00 00    	imul   $0x9035,%eax,%eax
  401493:	89 44 24 dc          	mov    %eax,-0x24(%rsp)
  401497:	8b 44 24 f0          	mov    -0x10(%rsp),%eax
  40149b:	69 c0 30 e9 00 00    	imul   $0xe930,%eax,%eax
  4014a1:	89 44 24 f0          	mov    %eax,-0x10(%rsp)
  4014a5:	8b 44 24 d4          	mov    -0x2c(%rsp),%eax
  4014a9:	69 c0 bb db 00 00    	imul   $0xdbbb,%eax,%eax
  4014af:	89 44 24 d4          	mov    %eax,-0x2c(%rsp)
  4014b3:	8b 44 24 d0          	mov    -0x30(%rsp),%eax
  4014b7:	69 c0 60 36 00 00    	imul   $0x3660,%eax,%eax
  4014bd:	89 44 24 d0          	mov    %eax,-0x30(%rsp)
  4014c1:	8b 44 24 d8          	mov    -0x28(%rsp),%eax
  4014c5:	69 c0 f7 a9 00 00    	imul   $0xa9f7,%eax,%eax
  4014cb:	89 44 24 d8          	mov    %eax,-0x28(%rsp)
  4014cf:	8b 44 24 d4          	mov    -0x2c(%rsp),%eax
  4014d3:	69 c0 4f bc 00 00    	imul   $0xbc4f,%eax,%eax
  4014d9:	89 44 24 d4          	mov    %eax,-0x2c(%rsp)
  4014dd:	8b 44 24 d8          	mov    -0x28(%rsp),%eax
  4014e1:	69 c0 47 31 00 00    	imul   $0x3147,%eax,%eax
  4014e7:	89 44 24 d8          	mov    %eax,-0x28(%rsp)
  4014eb:	8b 44 24 f4          	mov    -0xc(%rsp),%eax
  4014ef:	69 c0 a0 75 00 00    	imul   $0x75a0,%eax,%eax
  4014f5:	89 44 24 f4          	mov    %eax,-0xc(%rsp)
  4014f9:	8b 44 24 dc          	mov    -0x24(%rsp),%eax
  4014fd:	69 c0 de 9b 00 00    	imul   $0x9bde,%eax,%eax
  401503:	89 44 24 dc          	mov    %eax,-0x24(%rsp)
  401507:	8b 44 24 e4          	mov    -0x1c(%rsp),%eax
  40150b:	69 c0 ee 32 00 00    	imul   $0x32ee,%eax,%eax
  401511:	89 44 24 e4          	mov    %eax,-0x1c(%rsp)
  401515:	8b 44 24 e0          	mov    -0x20(%rsp),%eax
  401519:	69 c0 ed aa 00 00    	imul   $0xaaed,%eax,%eax
  40151f:	89 44 24 e0          	mov    %eax,-0x20(%rsp)
  401523:	8b 44 24 f0          	mov    -0x10(%rsp),%eax
  401527:	69 c0 38 6d 00 00    	imul   $0x6d38,%eax,%eax
  40152d:	89 44 24 f0          	mov    %eax,-0x10(%rsp)
  401531:	8b 44 24 e4          	mov    -0x1c(%rsp),%eax
  401535:	69 c0 04 99 00 00    	imul   $0x9904,%eax,%eax
  40153b:	89 44 24 e4          	mov    %eax,-0x1c(%rsp)
  40153f:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  401543:	69 c0 1a f8 00 00    	imul   $0xf81a,%eax,%eax
  401549:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  40154d:	8b 44 24 d4          	mov    -0x2c(%rsp),%eax
  401551:	69 c0 de 75 00 00    	imul   $0x75de,%eax,%eax
  401557:	89 44 24 d4          	mov    %eax,-0x2c(%rsp)
  40155b:	8b 44 24 ec          	mov    -0x14(%rsp),%eax
  40155f:	69 c0 1a 4f 00 00    	imul   $0x4f1a,%eax,%eax
  401565:	89 44 24 ec          	mov    %eax,-0x14(%rsp)
  401569:	8b 44 24 d0          	mov    -0x30(%rsp),%eax
  40156d:	69 c0 c6 92 00 00    	imul   $0x92c6,%eax,%eax
  401573:	89 44 24 d0          	mov    %eax,-0x30(%rsp)
  401577:	8b 44 24 d8          	mov    -0x28(%rsp),%eax
  40157b:	69 c0 6b 2c 00 00    	imul   $0x2c6b,%eax,%eax
  401581:	89 44 24 d8          	mov    %eax,-0x28(%rsp)
  401585:	8b 44 24 e4          	mov    -0x1c(%rsp),%eax
  401589:	69 c0 05 1c 00 00    	imul   $0x1c05,%eax,%eax
  40158f:	89 44 24 e4          	mov    %eax,-0x1c(%rsp)
  401593:	8b 44 24 d4          	mov    -0x2c(%rsp),%eax
  401597:	69 c0 52 5b 00 00    	imul   $0x5b52,%eax,%eax
  40159d:	89 44 24 d4          	mov    %eax,-0x2c(%rsp)
  4015a1:	8b 44 24 e4          	mov    -0x1c(%rsp),%eax
  4015a5:	69 c0 92 a0 00 00    	imul   $0xa092,%eax,%eax
  4015ab:	89 44 24 e4          	mov    %eax,-0x1c(%rsp)
  4015af:	8b 44 24 d4          	mov    -0x2c(%rsp),%eax
  4015b3:	69 c0 3a c3 00 00    	imul   $0xc33a,%eax,%eax
  4015b9:	89 44 24 d4          	mov    %eax,-0x2c(%rsp)
  4015bd:	8b 44 24 f0          	mov    -0x10(%rsp),%eax
  4015c1:	69 c0 f1 ef 00 00    	imul   $0xeff1,%eax,%eax
  4015c7:	89 44 24 f0          	mov    %eax,-0x10(%rsp)
  4015cb:	8b 44 24 dc          	mov    -0x24(%rsp),%eax
  4015cf:	69 c0 0c 98 00 00    	imul   $0x980c,%eax,%eax
  4015d5:	89 44 24 dc          	mov    %eax,-0x24(%rsp)
  4015d9:	8b 44 24 e0          	mov    -0x20(%rsp),%eax
  4015dd:	69 c0 79 44 00 00    	imul   $0x4479,%eax,%eax
  4015e3:	89 44 24 e0          	mov    %eax,-0x20(%rsp)
  4015e7:	8b 44 24 d0          	mov    -0x30(%rsp),%eax
  4015eb:	69 c0 37 32 00 00    	imul   $0x3237,%eax,%eax
  4015f1:	89 44 24 d0          	mov    %eax,-0x30(%rsp)
  4015f5:	8b 44 24 d4          	mov    -0x2c(%rsp),%eax
  4015f9:	69 c0 c0 0e 00 00    	imul   $0xec0,%eax,%eax
  4015ff:	89 44 24 d4          	mov    %eax,-0x2c(%rsp)
  401603:	8b 44 24 e4          	mov    -0x1c(%rsp),%eax
  401607:	69 c0 ea 3a 00 00    	imul   $0x3aea,%eax,%eax
  40160d:	89 44 24 e4          	mov    %eax,-0x1c(%rsp)
  401611:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  401615:	69 c0 14 31 00 00    	imul   $0x3114,%eax,%eax
  40161b:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  40161f:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  401623:	69 c0 33 be 00 00    	imul   $0xbe33,%eax,%eax
  401629:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  40162d:	8b 44 24 e4          	mov    -0x1c(%rsp),%eax
  401631:	69 c0 25 78 00 00    	imul   $0x7825,%eax,%eax
  401637:	89 44 24 e4          	mov    %eax,-0x1c(%rsp)
  40163b:	8b 44 24 d8          	mov    -0x28(%rsp),%eax
  40163f:	69 c0 05 ad 00 00    	imul   $0xad05,%eax,%eax
  401645:	89 44 24 d8          	mov    %eax,-0x28(%rsp)
  401649:	8b 44 24 d4          	mov    -0x2c(%rsp),%eax
  40164d:	69 c0 97 45 00 00    	imul   $0x4597,%eax,%eax
  401653:	89 44 24 d4          	mov    %eax,-0x2c(%rsp)
  401657:	8b 44 24 d0          	mov    -0x30(%rsp),%eax
  40165b:	69 c0 6e 79 00 00    	imul   $0x796e,%eax,%eax
  401661:	89 44 24 d0          	mov    %eax,-0x30(%rsp)
  401665:	8b 44 24 d0          	mov    -0x30(%rsp),%eax
  401669:	69 c0 3c 3c 00 00    	imul   $0x3c3c,%eax,%eax
  40166f:	89 44 24 d0          	mov    %eax,-0x30(%rsp)
  401673:	8b 44 24 d0          	mov    -0x30(%rsp),%eax
  401677:	69 c0 99 27 00 00    	imul   $0x2799,%eax,%eax
  40167d:	89 44 24 d0          	mov    %eax,-0x30(%rsp)
  401681:	8b 44 24 f0          	mov    -0x10(%rsp),%eax
  401685:	69 c0 61 ec 00 00    	imul   $0xec61,%eax,%eax
  40168b:	89 44 24 f0          	mov    %eax,-0x10(%rsp)
  40168f:	8b 44 24 f0          	mov    -0x10(%rsp),%eax
  401693:	69 c0 a7 ae 00 00    	imul   $0xaea7,%eax,%eax
  401699:	89 44 24 f0          	mov    %eax,-0x10(%rsp)
  40169d:	8b 44 24 dc          	mov    -0x24(%rsp),%eax
  4016a1:	69 c0 ae 23 00 00    	imul   $0x23ae,%eax,%eax
  4016a7:	89 44 24 dc          	mov    %eax,-0x24(%rsp)
  4016ab:	8b 44 24 d8          	mov    -0x28(%rsp),%eax
  4016af:	69 c0 21 68 00 00    	imul   $0x6821,%eax,%eax
  4016b5:	89 44 24 d8          	mov    %eax,-0x28(%rsp)
  4016b9:	8b 44 24 d0          	mov    -0x30(%rsp),%eax
  4016bd:	69 c0 ae 11 00 00    	imul   $0x11ae,%eax,%eax
  4016c3:	89 44 24 d0          	mov    %eax,-0x30(%rsp)
  4016c7:	8b 44 24 f0          	mov    -0x10(%rsp),%eax
  4016cb:	69 c0 8e 57 00 00    	imul   $0x578e,%eax,%eax
  4016d1:	89 44 24 f0          	mov    %eax,-0x10(%rsp)
  4016d5:	8b 44 24 dc          	mov    -0x24(%rsp),%eax
  4016d9:	69 c0 c7 39 00 00    	imul   $0x39c7,%eax,%eax
  4016df:	89 44 24 dc          	mov    %eax,-0x24(%rsp)
  4016e3:	8b 44 24 d8          	mov    -0x28(%rsp),%eax
  4016e7:	69 c0 33 c8 00 00    	imul   $0xc833,%eax,%eax
  4016ed:	89 44 24 d8          	mov    %eax,-0x28(%rsp)
  4016f1:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  4016f5:	69 c0 7d c5 00 00    	imul   $0xc57d,%eax,%eax
  4016fb:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  4016ff:	8b 44 24 f4          	mov    -0xc(%rsp),%eax
  401703:	69 c0 ce 11 00 00    	imul   $0x11ce,%eax,%eax
  401709:	89 44 24 f4          	mov    %eax,-0xc(%rsp)
  40170d:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  401711:	69 c0 b3 93 00 00    	imul   $0x93b3,%eax,%eax
  401717:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  40171b:	8b 44 24 f0          	mov    -0x10(%rsp),%eax
  40171f:	69 c0 8f 48 00 00    	imul   $0x488f,%eax,%eax
  401725:	89 44 24 f0          	mov    %eax,-0x10(%rsp)
  401729:	8b 44 24 d4          	mov    -0x2c(%rsp),%eax
  40172d:	69 c0 45 98 00 00    	imul   $0x9845,%eax,%eax
  401733:	89 44 24 d4          	mov    %eax,-0x2c(%rsp)
  401737:	8b 44 24 f4          	mov    -0xc(%rsp),%eax
  40173b:	69 c0 e7 3a 00 00    	imul   $0x3ae7,%eax,%eax
  401741:	89 44 24 f4          	mov    %eax,-0xc(%rsp)
  401745:	ba 00 00 00 00       	mov    $0x0,%edx
  40174a:	b8 00 00 00 00       	mov    $0x0,%eax
  40174f:	eb 0b                	jmp    40175c <scramble+0x4e8>
  401751:	89 d1                	mov    %edx,%ecx
  401753:	8b 4c 8c d0          	mov    -0x30(%rsp,%rcx,4),%ecx
  401757:	01 c8                	add    %ecx,%eax
  401759:	83 c2 01             	add    $0x1,%edx
  40175c:	83 fa 09             	cmp    $0x9,%edx
  40175f:	76 f0                	jbe    401751 <scramble+0x4dd>
  401761:	f3 c3                	repz retq 

0000000000401763 <getbuf>:
  401763:	48 83 ec 28          	sub    $0x28,%rsp
  401767:	48 89 e7             	mov    %rsp,%rdi
  40176a:	e8 62 03 00 00       	callq  401ad1 <Gets>
  40176f:	b8 01 00 00 00       	mov    $0x1,%eax
  401774:	
  
   28          	add    $0x28,%rsp
  401778:	c3                   	retq   

0000000000401779 <touch1>:
  401779:	48 83 ec 08          	sub    $0x8,%rsp
  40177d:	c7 05 75 3d 20 00 01 	movl   $0x1,0x203d75(%rip)        # 6054fc <vlevel>
  401784:	00 00 00 
  401787:	48 8d 3d da 18 00 00 	lea    0x18da(%rip),%rdi        # 403068 <_IO_stdin_used+0x2c8>
  40178e:	e8 9d f4 ff ff       	callq  400c30 <puts@plt>
  401793:	bf 01 00 00 00       	mov    $0x1,%edi
  401798:	e8 4b 05 00 00       	callq  401ce8 <validate>
  40179d:	bf 00 00 00 00       	mov    $0x0,%edi
  4017a2:	e8 09 f6 ff ff       	callq  400db0 <exit@plt>

00000000004017a7 <touch2>:
  4017a7:	48 83 ec 08          	sub    $0x8,%rsp
  4017ab:	89 fe                	mov    %edi,%esi
  4017ad:	c7 05 45 3d 20 00 02 	movl   $0x2,0x203d45(%rip)        # 6054fc <vlevel>
  4017b4:	00 00 00 
  4017b7:	39 3d 47 3d 20 00    	cmp    %edi,0x203d47(%rip)        # 605504 <cookie>
  4017bd:	74 25                	je     4017e4 <touch2+0x3d>
  4017bf:	48 8d 3d f2 18 00 00 	lea    0x18f2(%rip),%rdi        # 4030b8 <_IO_stdin_used+0x318>
  4017c6:	b8 00 00 00 00       	mov    $0x0,%eax
  4017cb:	e8 90 f4 ff ff       	callq  400c60 <printf@plt>
  4017d0:	bf 02 00 00 00       	mov    $0x2,%edi
  4017d5:	e8 cc 05 00 00       	callq  401da6 <fail>
  4017da:	bf 00 00 00 00       	mov    $0x0,%edi
  4017df:	e8 cc f5 ff ff       	callq  400db0 <exit@plt>
  4017e4:	48 8d 3d a5 18 00 00 	lea    0x18a5(%rip),%rdi        # 403090 <_IO_stdin_used+0x2f0>
  4017eb:	b8 00 00 00 00       	mov    $0x0,%eax
  4017f0:	e8 6b f4 ff ff       	callq  400c60 <printf@plt>
  4017f5:	bf 02 00 00 00       	mov    $0x2,%edi
  4017fa:	e8 e9 04 00 00       	callq  401ce8 <validate>
  4017ff:	eb d9                	jmp    4017da <touch2+0x33>

0000000000401801 <hexmatch>:
  401801:	41 54                	push   %r12
  401803:	55                   	push   %rbp
  401804:	53                   	push   %rbx
  401805:	48 83 ec 70          	sub    $0x70,%rsp
  401809:	89 fd                	mov    %edi,%ebp
  40180b:	48 89 f3             	mov    %rsi,%rbx
  40180e:	e8 fd f4 ff ff       	callq  400d10 <random@plt>
  401813:	48 89 c1             	mov    %rax,%rcx
  401816:	48 ba 0b d7 a3 70 3d 	movabs $0xa3d70a3d70a3d70b,%rdx
  40181d:	0a d7 a3 
  401820:	48 f7 ea             	imul   %rdx
  401823:	48 01 ca             	add    %rcx,%rdx
  401826:	48 c1 fa 06          	sar    $0x6,%rdx
  40182a:	48 89 c8             	mov    %rcx,%rax
  40182d:	48 c1 f8 3f          	sar    $0x3f,%rax
  401831:	48 29 c2             	sub    %rax,%rdx
  401834:	48 8d 04 92          	lea    (%rdx,%rdx,4),%rax
  401838:	48 8d 14 80          	lea    (%rax,%rax,4),%rdx
  40183c:	48 8d 04 95 00 00 00 	lea    0x0(,%rdx,4),%rax
  401843:	00 
  401844:	48 29 c1             	sub    %rax,%rcx
  401847:	4c 8d 24 0c          	lea    (%rsp,%rcx,1),%r12
  40184b:	89 ea                	mov    %ebp,%edx
  40184d:	48 8d 35 31 18 00 00 	lea    0x1831(%rip),%rsi        # 403085 <_IO_stdin_used+0x2e5>
  401854:	4c 89 e7             	mov    %r12,%rdi
  401857:	b8 00 00 00 00       	mov    $0x0,%eax
  40185c:	e8 3f f5 ff ff       	callq  400da0 <sprintf@plt>
  401861:	ba 09 00 00 00       	mov    $0x9,%edx
  401866:	4c 89 e6             	mov    %r12,%rsi
  401869:	48 89 df             	mov    %rbx,%rdi
  40186c:	e8 9f f3 ff ff       	callq  400c10 <strncmp@plt>
  401871:	85 c0                	test   %eax,%eax
  401873:	0f 94 c0             	sete   %al
  401876:	0f b6 c0             	movzbl %al,%eax
  401879:	48 83 c4 70          	add    $0x70,%rsp
  40187d:	5b                   	pop    %rbx
  40187e:	5d                   	pop    %rbp
  40187f:	41 5c                	pop    %r12
  401881:	c3                   	retq   

0000000000401882 <touch3>:
  401882:	53                   	push   %rbx
  401883:	48 89 fb             	mov    %rdi,%rbx
  401886:	c7 05 6c 3c 20 00 03 	movl   $0x3,0x203c6c(%rip)        # 6054fc <vlevel>
  40188d:	00 00 00 
  401890:	48 89 fe             	mov    %rdi,%rsi
  401893:	8b 3d 6b 3c 20 00    	mov    0x203c6b(%rip),%edi        # 605504 <cookie>
  401899:	e8 63 ff ff ff       	callq  401801 <hexmatch>
  40189e:	85 c0                	test   %eax,%eax
  4018a0:	74 28                	je     4018ca <touch3+0x48>
  4018a2:	48 89 de             	mov    %rbx,%rsi
  4018a5:	48 8d 3d 34 18 00 00 	lea    0x1834(%rip),%rdi        # 4030e0 <_IO_stdin_used+0x340>
  4018ac:	b8 00 00 00 00       	mov    $0x0,%eax
  4018b1:	e8 aa f3 ff ff       	callq  400c60 <printf@plt>
  4018b6:	bf 03 00 00 00       	mov    $0x3,%edi
  4018bb:	e8 28 04 00 00       	callq  401ce8 <validate>
  4018c0:	bf 00 00 00 00       	mov    $0x0,%edi
  4018c5:	e8 e6 f4 ff ff       	callq  400db0 <exit@plt>
  4018ca:	48 89 de             	mov    %rbx,%rsi
  4018cd:	48 8d 3d 34 18 00 00 	lea    0x1834(%rip),%rdi        # 403108 <_IO_stdin_used+0x368>
  4018d4:	b8 00 00 00 00       	mov    $0x0,%eax
  4018d9:	e8 82 f3 ff ff       	callq  400c60 <printf@plt>
  4018de:	bf 03 00 00 00       	mov    $0x3,%edi
  4018e3:	e8 be 04 00 00       	callq  401da6 <fail>
  4018e8:	eb d6                	jmp    4018c0 <touch3+0x3e>

00000000004018ea <test>:
  4018ea:	48 83 ec 08          	sub    $0x8,%rsp
  4018ee:	b8 00 00 00 00       	mov    $0x0,%eax
  4018f3:	e8 6b fe ff ff       	callq  401763 <getbuf>
  4018f8:	89 c6                	mov    %eax,%esi
  4018fa:	48 8d 3d 2f 18 00 00 	lea    0x182f(%rip),%rdi        # 403130 <_IO_stdin_used+0x390>
  401901:	b8 00 00 00 00       	mov    $0x0,%eax
  401906:	e8 55 f3 ff ff       	callq  400c60 <printf@plt>
  40190b:	48 83 c4 08          	add    $0x8,%rsp
  40190f:	c3                   	retq   

0000000000401910 <start_farm>:
  401910:	b8 01 00 00 00       	mov    $0x1,%eax
  401915:	c3                   	retq   

0000000000401916 <addval_470>:
  401916:	8d 87 48 89 c7 90    	lea    -0x6f3876b8(%rdi),%eax
  40191c:	c3                   	retq   

// 401919: mov %eax -> %edi

// 401918: mov %rax -> %rdi ret


000000000040191d <addval_426>:
  40191d:	8d 87 58 90 90 90    	lea    -0x6f6f6fa8(%rdi),%eax
  401923:	c3                   	retq   

  // 40191f: 58 90 90 90 c3 (popq -> %rax)


0000000000401924 <getval_167>:
  401924:	b8 48 89 c7 c3       	mov    $0xc3c78948,%eax
  401929:	c3                   	retq   



000000000040192a <getval_248>:
  40192a:	b8 48 89 c7 92       	mov    $0x92c78948,%eax
  40192f:	c3                   	retq   


0000000000401930 <setval_340>:
  401930:	c7 07 c8 89 c7 c3    	movl   $0xc3c789c8,(%rdi)
  401936:	c3                   	retq   


0000000000401937 <setval_128>:
  401937:	c7 07 58 90 90 c3    	movl   $0xc3909058,(%rdi)
  40193d:	c3                   	retq   

000000000040193e <getval_464>:
  40193e:	b8 eb bd 07 50       	mov    $0x5007bdeb,%eax
  401943:	c3                   	retq   

 

0000000000401944 <getval_478>:
  401944:	b8 1a b5 0b 48       	mov    $0x480bb51a,%eax
  401949:	c3                   	retq   

 

000000000040194a <mid_farm>:
  40194a:	b8 01 00 00 00       	mov    $0x1,%eax
  40194f:	c3                   	retq   

0000000000401950 <add_xy>:
  401950:	48 8d 04 37          	lea    (%rdi,%rsi,1),%rax
  401954:	c3                   	retq  

  %rdi + %rsi -> %rax 

0000000000401955 <getval_191>:
  401955:	b8 48 89 e0 94       	mov    $0x94e08948,%eax
  40195a:	c3                   	retq   

  

000000000040195b <getval_273>:
  40195b:	b8 81 c1 90 90       	mov    $0x9090c181,%eax
  401960:	c3                   	retq   

 

0000000000401961 <addval_400>:
  401961:	8d 87 89 c1 c7 36    	lea    0x36c7c189(%rdi),%eax
  401967:	c3                   	retq   


0000000000401968 <addval_149>:
  401968:	8d 87 89 ca 90 90    	lea    -0x6f6f3577(%rdi),%eax
  40196e:	c3                   	retq  

  40196a:  %ecx -> %edx

000000000040196f <setval_142>:
  40196f:	c7 07 7c 95 99 d6    	movl   $0xd699957c,(%rdi)
  401975:	c3                   	retq   

0000000000401976 <getval_178>:
  401976:	b8 09 d6 /* 08 d2 */       	mov    $0xd208d609,%eax
  40197b:	c3                   	retq   


000000000040197c <getval_194>:
  40197c:	b8 48 89 e0 c7       	mov    $0xc7e08948,%eax
  401981:	c3                   	retq   


0000000000401982 <setval_435>:
  401982:	c7 07 55 e2 8b d6    	movl   $0xd68be255,(%rdi)
  401988:	c3                   	retq   

  0xd68be255 -> *%rdi

/*
0000000000401989 <getval_196>:
  401989:	b8 89 c1 48 c9       	mov    $0xc948c189,%eax
  40198e:	c3                   	retq   

  0xc948c189 -> %eax
  */

000000000040198f <getval_251>:
  40198f:	b8 89 c1 /* 08 db */      	mov    $0xdb08c189,%eax
  401994:	c3                   	retq   

// 401990: %eax -> %ecx

/*
0000000000401995 <setval_105>:
  401995:	c7 07 89 ca 60 c0    	movl   $0xc060ca89,(%rdi)
  40199b:	c3                   	retq   

0xc060ca89 -> *%rdi
*/


000000000040199c <getval_476>:
  40199c:	b8 40 89 e0 c3       	mov    $0xc3e08940,%eax
// 40199e: %esp -> %eax ret
  4019a1:	c3                   	retq   

0xc3e08940 -> %eax

00000000004019a2 <getval_283>:
  4019a2:	b8 72 48 89 e0       	mov    $0xe0894872,%eax
  4019a7:	c3                   	retq   
  
  // 4019a4: %rsp -> %rax ret


00000000004019a8 <getval_190>:
  4019a8:	b8 48 89 e0 c3       	mov    $0xc3e08948,%eax
  4019ad:	c3                   	retq   

// 4019aa: %rsp -> %rax ret

00000000004019ae <addval_179>:
  4019ae:	8d 87 89 c1 38 c0    	lea    -0x3fc73e77(%rdi),%eax
  4019b4:	c3                   	retq   

// 4019b0: %ecx -> %edx


/*

00000000004019b5 <addval_431>:
  4019b5:	8d 87 89 ca 28 d2    	lea    -0x2dd73577(%rdi),%eax
  4019bb:	c3                   	retq   
*/


/*
00000000004019bc <getval_123>:
  4019bc:	b8 89 ca 00 db       	mov    $0xdb00ca89,%eax
  4019c1:	c3                   	retq   

*/

/*
00000000004019c2 <getval_424>:
  4019c2:	b8 af 48 8d e0       	mov    $0xe08d48af,%eax
  4019c7:	c3                   	retq   
  */

/*
00000000004019c8 <addval_430>:
  4019c8:	8d 87 c9 d6 90 c3    	lea    -0x3c6f2937(%rdi),%eax
  4019ce:	c3                   	retq   
*/
/*
00000000004019cf <addval_317>:
  4019cf:	8d 87 f1 89 ca 91    	lea    -0x6e35760f(%rdi),%eax
  4019d5:	c3                   	retq   
  */

/*
00000000004019d6 <addval_192>:
  4019d6:	8d 87 89 c1 78 c0    	lea    -0x3f873e77(%rdi),%eax
  4019dc:	c3                   	retq   
  */

00000000004019dd <setval_349>:
  4019dd:	c7 07 60 40 89 e0    	movl   $0xe0894060,(%rdi)
  4019e3:	c3                   	retq   
  //4019e1: %esp -> %eax


/*
00000000004019e4 <getval_224>:
  4019e4:	b8 c9 c1 20 c9       	mov    $0xc920c1c9,%eax
  4019e9:	c3                   	retq   
  */

/*
00000000004019ea <addval_378>:
  4019ea:	8d 87 89 ca 28 c9    	lea    -0x36d73577(%rdi),%eax
  4019f0:	c3                   	retq 
  */  

/*
00000000004019f1 <addval_242>:
  4019f1:	8d 87 89 c1 91 90    	lea    -0x6f6e3e77(%rdi),%eax
  4019f7:	c3                   	retq  
  */ 

/*
00000000004019f8 <setval_116>:
  4019f8:	c7 07 88 d6 38 c0    	movl   $0xc038d688,(%rdi)
  4019fe:	c3                   	retq   
  */

00000000004019ff <addval_303>:
  4019ff:	8d 87 89 ca 08 d2    	lea    -0x2df73577(%rdi),%eax
  401a05:	c3                   	retq   
// 401a01: %ecx -> %edx ret

/*
0000000000401a06 <setval_471>:
  401a06:	c7 07 0c 48 8b e0    	movl   $0xe08b480c,(%rdi)
  401a0c:	c3                   	retq   
  */

0000000000401a0d <setval_274>:
  401a0d:	c7 07 89 d6 90 90    	movl   $0x9090d689,(%rdi)
  401a13:	c3                   	retq   
  // 401a0f: %edx -> %esi

0000000000401a14 <addval_327>:
  401a14:	8d 87 7a 89 d6 90    	lea    -0x6f297686(%rdi),%eax
  401a1a:	c3                   	retq   

0000000000401a1b <getval_412>:
  401a1b:	b8 c9 ca 08 c9       	mov    $0xc908cac9,%eax
  401a20:	c3                   	retq   

0000000000401a21 <addval_377>:
  401a21:	8d 87 89 d6 18 db    	lea    -0x24e72977(%rdi),%eax
  401a27:	c3                   	retq   

0000000000401a28 <end_farm>:
  401a28:	b8 01 00 00 00       	mov    $0x1,%eax
  401a2d:	c3                   	retq   

0000000000401a2e <save_char>:
  401a2e:	8b 05 f0 46 20 00    	mov    0x2046f0(%rip),%eax        # 606124 <gets_cnt>
  401a34:	3d ff 03 00 00       	cmp    $0x3ff,%eax
  401a39:	7f 4a                	jg     401a85 <save_char+0x57>
  401a3b:	8d 14 40             	lea    (%rax,%rax,2),%edx
  401a3e:	89 f9                	mov    %edi,%ecx
  401a40:	c0 e9 04             	shr    $0x4,%cl
  401a43:	4c 8d 05 06 1a 00 00 	lea    0x1a06(%rip),%r8        # 403450 <trans_char>
  401a4a:	83 e1 0f             	and    $0xf,%ecx
  401a4d:	45 0f b6 0c 08       	movzbl (%r8,%rcx,1),%r9d
  401a52:	48 8d 0d c7 3a 20 00 	lea    0x203ac7(%rip),%rcx        # 605520 <gets_buf>
  401a59:	48 63 f2             	movslq %edx,%rsi
  401a5c:	44 88 0c 31          	mov    %r9b,(%rcx,%rsi,1)
  401a60:	8d 72 01             	lea    0x1(%rdx),%esi
  401a63:	83 e7 0f             	and    $0xf,%edi
  401a66:	41 0f b6 3c 38       	movzbl (%r8,%rdi,1),%edi
  401a6b:	48 63 f6             	movslq %esi,%rsi
  401a6e:	40 88 3c 31          	mov    %dil,(%rcx,%rsi,1)
  401a72:	83 c2 02             	add    $0x2,%edx
  401a75:	48 63 d2             	movslq %edx,%rdx
  401a78:	c6 04 11 20          	movb   $0x20,(%rcx,%rdx,1)
  401a7c:	83 c0 01             	add    $0x1,%eax
  401a7f:	89 05 9f 46 20 00    	mov    %eax,0x20469f(%rip)        # 606124 <gets_cnt>
  401a85:	f3 c3                	repz retq 

0000000000401a87 <save_term>:
  401a87:	8b 05 97 46 20 00    	mov    0x204697(%rip),%eax        # 606124 <gets_cnt>
  401a8d:	8d 04 40             	lea    (%rax,%rax,2),%eax
  401a90:	48 98                	cltq   
  401a92:	48 8d 15 87 3a 20 00 	lea    0x203a87(%rip),%rdx        # 605520 <gets_buf>
  401a99:	c6 04 02 00          	movb   $0x0,(%rdx,%rax,1)
  401a9d:	c3                   	retq   

0000000000401a9e <check_fail>:
  401a9e:	48 83 ec 08          	sub    $0x8,%rsp
  401aa2:	0f be 35 7f 46 20 00 	movsbl 0x20467f(%rip),%esi        # 606128 <target_prefix>
  401aa9:	48 8d 0d 70 3a 20 00 	lea    0x203a70(%rip),%rcx        # 605520 <gets_buf>
  401ab0:	8b 15 42 3a 20 00    	mov    0x203a42(%rip),%edx        # 6054f8 <check_level>
  401ab6:	48 8d 3d 96 16 00 00 	lea    0x1696(%rip),%rdi        # 403153 <_IO_stdin_used+0x3b3>
  401abd:	b8 00 00 00 00       	mov    $0x0,%eax
  401ac2:	e8 99 f1 ff ff       	callq  400c60 <printf@plt>
  401ac7:	bf 01 00 00 00       	mov    $0x1,%edi
  401acc:	e8 df f2 ff ff       	callq  400db0 <exit@plt>

0000000000401ad1 <Gets>:
  401ad1:	41 54                	push   %r12
  401ad3:	55                   	push   %rbp
  401ad4:	53                   	push   %rbx
  401ad5:	49 89 fc             	mov    %rdi,%r12
  401ad8:	c7 05 42 46 20 00 00 	movl   $0x0,0x204642(%rip)        # 606124 <gets_cnt>
  401adf:	00 00 00 
  401ae2:	48 89 fb             	mov    %rdi,%rbx
  401ae5:	eb 11                	jmp    401af8 <Gets+0x27>
  401ae7:	48 8d 6b 01          	lea    0x1(%rbx),%rbp
  401aeb:	88 03                	mov    %al,(%rbx)
  401aed:	0f b6 f8             	movzbl %al,%edi
  401af0:	e8 39 ff ff ff       	callq  401a2e <save_char>
  401af5:	48 89 eb             	mov    %rbp,%rbx
  401af8:	48 8b 3d f1 39 20 00 	mov    0x2039f1(%rip),%rdi        # 6054f0 <infile>
  401aff:	e8 1c f2 ff ff       	callq  400d20 <_IO_getc@plt>
  401b04:	83 f8 ff             	cmp    $0xffffffff,%eax
  401b07:	74 05                	je     401b0e <Gets+0x3d>
  401b09:	83 f8 0a             	cmp    $0xa,%eax
  401b0c:	75 d9                	jne    401ae7 <Gets+0x16>
  401b0e:	c6 03 00             	movb   $0x0,(%rbx)
  401b11:	b8 00 00 00 00       	mov    $0x0,%eax
  401b16:	e8 6c ff ff ff       	callq  401a87 <save_term>
  401b1b:	4c 89 e0             	mov    %r12,%rax
  401b1e:	5b                   	pop    %rbx
  401b1f:	5d                   	pop    %rbp
  401b20:	41 5c                	pop    %r12
  401b22:	c3                   	retq   

0000000000401b23 <notify_server>:
  401b23:	83 3d de 39 20 00 00 	cmpl   $0x0,0x2039de(%rip)        # 605508 <is_checker>
  401b2a:	0f 85 de 00 00 00    	jne    401c0e <notify_server+0xeb>
  401b30:	55                   	push   %rbp
  401b31:	53                   	push   %rbx
  401b32:	48 81 ec 08 40 00 00 	sub    $0x4008,%rsp
  401b39:	89 fb                	mov    %edi,%ebx
  401b3b:	8b 05 e3 45 20 00    	mov    0x2045e3(%rip),%eax        # 606124 <gets_cnt>
  401b41:	83 c0 64             	add    $0x64,%eax
  401b44:	3d 00 20 00 00       	cmp    $0x2000,%eax
  401b49:	0f 8f c1 00 00 00    	jg     401c10 <notify_server+0xed>
  401b4f:	44 0f be 0d d1 45 20 	movsbl 0x2045d1(%rip),%r9d        # 606128 <target_prefix>
  401b56:	00 
  401b57:	83 3d 2a 39 20 00 00 	cmpl   $0x0,0x20392a(%rip)        # 605488 <notify>
  401b5e:	0f 84 c7 00 00 00    	je     401c2b <notify_server+0x108>
  401b64:	44 8b 05 95 39 20 00 	mov    0x203995(%rip),%r8d        # 605500 <authkey>
  401b6b:	85 db                	test   %ebx,%ebx
  401b6d:	0f 84 c3 00 00 00    	je     401c36 <notify_server+0x113>
  401b73:	48 8d 2d ef 15 00 00 	lea    0x15ef(%rip),%rbp        # 403169 <_IO_stdin_used+0x3c9>
  401b7a:	48 8d bc 24 00 20 00 	lea    0x2000(%rsp),%rdi
  401b81:	00 
  401b82:	48 8d 05 97 39 20 00 	lea    0x203997(%rip),%rax        # 605520 <gets_buf>
  401b89:	50                   	push   %rax
  401b8a:	56                   	push   %rsi
  401b8b:	48 89 e9             	mov    %rbp,%rcx
  401b8e:	8b 15 9c 35 20 00    	mov    0x20359c(%rip),%edx        # 605130 <target_id>
  401b94:	48 8d 35 d8 15 00 00 	lea    0x15d8(%rip),%rsi        # 403173 <_IO_stdin_used+0x3d3>
  401b9b:	b8 00 00 00 00       	mov    $0x0,%eax
  401ba0:	e8 fb f1 ff ff       	callq  400da0 <sprintf@plt>
  401ba5:	48 83 c4 10          	add    $0x10,%rsp
  401ba9:	83 3d d8 38 20 00 00 	cmpl   $0x0,0x2038d8(%rip)        # 605488 <notify>
  401bb0:	0f 84 b8 00 00 00    	je     401c6e <notify_server+0x14b>
  401bb6:	85 db                	test   %ebx,%ebx
  401bb8:	0f 84 a2 00 00 00    	je     401c60 <notify_server+0x13d>
  401bbe:	48 8d 8c 24 00 20 00 	lea    0x2000(%rsp),%rcx
  401bc5:	00 
  401bc6:	49 89 e1             	mov    %rsp,%r9
  401bc9:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  401bcf:	48 8b 15 72 35 20 00 	mov    0x203572(%rip),%rdx        # 605148 <lab>
  401bd6:	48 8b 35 73 35 20 00 	mov    0x203573(%rip),%rsi        # 605150 <course>
  401bdd:	48 8b 3d 5c 35 20 00 	mov    0x20355c(%rip),%rdi        # 605140 <user_id>
  401be4:	e8 6e 10 00 00       	callq  402c57 <driver_post>
  401be9:	85 c0                	test   %eax,%eax
  401beb:	78 55                	js     401c42 <notify_server+0x11f>
  401bed:	48 8d 3d c4 16 00 00 	lea    0x16c4(%rip),%rdi        # 4032b8 <_IO_stdin_used+0x518>
  401bf4:	e8 37 f0 ff ff       	callq  400c30 <puts@plt>
  401bf9:	48 8d 3d 9b 15 00 00 	lea    0x159b(%rip),%rdi        # 40319b <_IO_stdin_used+0x3fb>
  401c00:	e8 2b f0 ff ff       	callq  400c30 <puts@plt>
  401c05:	48 81 c4 08 40 00 00 	add    $0x4008,%rsp
  401c0c:	5b                   	pop    %rbx
  401c0d:	5d                   	pop    %rbp
  401c0e:	f3 c3                	repz retq 
  401c10:	48 8d 3d 71 16 00 00 	lea    0x1671(%rip),%rdi        # 403288 <_IO_stdin_used+0x4e8>
  401c17:	b8 00 00 00 00       	mov    $0x0,%eax
  401c1c:	e8 3f f0 ff ff       	callq  400c60 <printf@plt>
  401c21:	bf 01 00 00 00       	mov    $0x1,%edi
  401c26:	e8 85 f1 ff ff       	callq  400db0 <exit@plt>
  401c2b:	41 b8 ff ff ff ff    	mov    $0xffffffff,%r8d
  401c31:	e9 35 ff ff ff       	jmpq   401b6b <notify_server+0x48>
  401c36:	48 8d 2d 31 15 00 00 	lea    0x1531(%rip),%rbp        # 40316e <_IO_stdin_used+0x3ce>
  401c3d:	e9 38 ff ff ff       	jmpq   401b7a <notify_server+0x57>
  401c42:	48 89 e6             	mov    %rsp,%rsi
  401c45:	48 8d 3d 43 15 00 00 	lea    0x1543(%rip),%rdi        # 40318f <_IO_stdin_used+0x3ef>
  401c4c:	b8 00 00 00 00       	mov    $0x0,%eax
  401c51:	e8 0a f0 ff ff       	callq  400c60 <printf@plt>
  401c56:	bf 01 00 00 00       	mov    $0x1,%edi
  401c5b:	e8 50 f1 ff ff       	callq  400db0 <exit@plt>
  401c60:	48 8d 3d 3e 15 00 00 	lea    0x153e(%rip),%rdi        # 4031a5 <_IO_stdin_used+0x405>
  401c67:	e8 c4 ef ff ff       	callq  400c30 <puts@plt>
  401c6c:	eb 97                	jmp    401c05 <notify_server+0xe2>
  401c6e:	48 89 ee             	mov    %rbp,%rsi
  401c71:	48 8d 3d 78 16 00 00 	lea    0x1678(%rip),%rdi        # 4032f0 <_IO_stdin_used+0x550>
  401c78:	b8 00 00 00 00       	mov    $0x0,%eax
  401c7d:	e8 de ef ff ff       	callq  400c60 <printf@plt>
  401c82:	48 8b 35 b7 34 20 00 	mov    0x2034b7(%rip),%rsi        # 605140 <user_id>
  401c89:	48 8d 3d 1c 15 00 00 	lea    0x151c(%rip),%rdi        # 4031ac <_IO_stdin_used+0x40c>
  401c90:	b8 00 00 00 00       	mov    $0x0,%eax
  401c95:	e8 c6 ef ff ff       	callq  400c60 <printf@plt>
  401c9a:	48 8b 35 af 34 20 00 	mov    0x2034af(%rip),%rsi        # 605150 <course>
  401ca1:	48 8d 3d 11 15 00 00 	lea    0x1511(%rip),%rdi        # 4031b9 <_IO_stdin_used+0x419>
  401ca8:	b8 00 00 00 00       	mov    $0x0,%eax
  401cad:	e8 ae ef ff ff       	callq  400c60 <printf@plt>
  401cb2:	48 8b 35 8f 34 20 00 	mov    0x20348f(%rip),%rsi        # 605148 <lab>
  401cb9:	48 8d 3d 05 15 00 00 	lea    0x1505(%rip),%rdi        # 4031c5 <_IO_stdin_used+0x425>
  401cc0:	b8 00 00 00 00       	mov    $0x0,%eax
  401cc5:	e8 96 ef ff ff       	callq  400c60 <printf@plt>
  401cca:	48 8d b4 24 00 20 00 	lea    0x2000(%rsp),%rsi
  401cd1:	00 
  401cd2:	48 8d 3d f5 14 00 00 	lea    0x14f5(%rip),%rdi        # 4031ce <_IO_stdin_used+0x42e>
  401cd9:	b8 00 00 00 00       	mov    $0x0,%eax
  401cde:	e8 7d ef ff ff       	callq  400c60 <printf@plt>
  401ce3:	e9 1d ff ff ff       	jmpq   401c05 <notify_server+0xe2>

0000000000401ce8 <validate>:
  401ce8:	53                   	push   %rbx
  401ce9:	89 fb                	mov    %edi,%ebx
  401ceb:	83 3d 16 38 20 00 00 	cmpl   $0x0,0x203816(%rip)        # 605508 <is_checker>
  401cf2:	74 68                	je     401d5c <validate+0x74>
  401cf4:	39 3d 02 38 20 00    	cmp    %edi,0x203802(%rip)        # 6054fc <vlevel>
  401cfa:	75 2d                	jne    401d29 <validate+0x41>
  401cfc:	8b 35 f6 37 20 00    	mov    0x2037f6(%rip),%esi        # 6054f8 <check_level>
  401d02:	39 f7                	cmp    %esi,%edi
  401d04:	75 39                	jne    401d3f <validate+0x57>
  401d06:	0f be 35 1b 44 20 00 	movsbl 0x20441b(%rip),%esi        # 606128 <target_prefix>
  401d0d:	48 8d 0d 0c 38 20 00 	lea    0x20380c(%rip),%rcx        # 605520 <gets_buf>
  401d14:	89 fa                	mov    %edi,%edx
  401d16:	48 8d 3d db 14 00 00 	lea    0x14db(%rip),%rdi        # 4031f8 <_IO_stdin_used+0x458>
  401d1d:	b8 00 00 00 00       	mov    $0x0,%eax
  401d22:	e8 39 ef ff ff       	callq  400c60 <printf@plt>
  401d27:	5b                   	pop    %rbx
  401d28:	c3                   	retq   
  401d29:	48 8d 3d aa 14 00 00 	lea    0x14aa(%rip),%rdi        # 4031da <_IO_stdin_used+0x43a>
  401d30:	e8 fb ee ff ff       	callq  400c30 <puts@plt>
  401d35:	b8 00 00 00 00       	mov    $0x0,%eax
  401d3a:	e8 5f fd ff ff       	callq  401a9e <check_fail>
  401d3f:	89 fa                	mov    %edi,%edx
  401d41:	48 8d 3d d0 15 00 00 	lea    0x15d0(%rip),%rdi        # 403318 <_IO_stdin_used+0x578>
  401d48:	b8 00 00 00 00       	mov    $0x0,%eax
  401d4d:	e8 0e ef ff ff       	callq  400c60 <printf@plt>
  401d52:	b8 00 00 00 00       	mov    $0x0,%eax
  401d57:	e8 42 fd ff ff       	callq  401a9e <check_fail>
  401d5c:	3b 3d 9a 37 20 00    	cmp    0x20379a(%rip),%edi        # 6054fc <vlevel>
  401d62:	74 1a                	je     401d7e <validate+0x96>
  401d64:	48 8d 3d 6f 14 00 00 	lea    0x146f(%rip),%rdi        # 4031da <_IO_stdin_used+0x43a>
  401d6b:	e8 c0 ee ff ff       	callq  400c30 <puts@plt>
  401d70:	89 de                	mov    %ebx,%esi
  401d72:	bf 00 00 00 00       	mov    $0x0,%edi
  401d77:	e8 a7 fd ff ff       	callq  401b23 <notify_server>
  401d7c:	eb a9                	jmp    401d27 <validate+0x3f>
  401d7e:	0f be 15 a3 43 20 00 	movsbl 0x2043a3(%rip),%edx        # 606128 <target_prefix>
  401d85:	89 fe                	mov    %edi,%esi
  401d87:	48 8d 3d b2 15 00 00 	lea    0x15b2(%rip),%rdi        # 403340 <_IO_stdin_used+0x5a0>
  401d8e:	b8 00 00 00 00       	mov    $0x0,%eax
  401d93:	e8 c8 ee ff ff       	callq  400c60 <printf@plt>
  401d98:	89 de                	mov    %ebx,%esi
  401d9a:	bf 01 00 00 00       	mov    $0x1,%edi
  401d9f:	e8 7f fd ff ff       	callq  401b23 <notify_server>
  401da4:	eb 81                	jmp    401d27 <validate+0x3f>

0000000000401da6 <fail>:
  401da6:	48 83 ec 08          	sub    $0x8,%rsp
  401daa:	83 3d 57 37 20 00 00 	cmpl   $0x0,0x203757(%rip)        # 605508 <is_checker>
  401db1:	75 11                	jne    401dc4 <fail+0x1e>
  401db3:	89 fe                	mov    %edi,%esi
  401db5:	bf 00 00 00 00       	mov    $0x0,%edi
  401dba:	e8 64 fd ff ff       	callq  401b23 <notify_server>
  401dbf:	48 83 c4 08          	add    $0x8,%rsp
  401dc3:	c3                   	retq   
  401dc4:	b8 00 00 00 00       	mov    $0x0,%eax
  401dc9:	e8 d0 fc ff ff       	callq  401a9e <check_fail>

0000000000401dce <bushandler>:
  401dce:	48 83 ec 08          	sub    $0x8,%rsp
  401dd2:	83 3d 2f 37 20 00 00 	cmpl   $0x0,0x20372f(%rip)        # 605508 <is_checker>
  401dd9:	74 16                	je     401df1 <bushandler+0x23>
  401ddb:	48 8d 3d 2b 14 00 00 	lea    0x142b(%rip),%rdi        # 40320d <_IO_stdin_used+0x46d>
  401de2:	e8 49 ee ff ff       	callq  400c30 <puts@plt>
  401de7:	b8 00 00 00 00       	mov    $0x0,%eax
  401dec:	e8 ad fc ff ff       	callq  401a9e <check_fail>
  401df1:	48 8d 3d 80 15 00 00 	lea    0x1580(%rip),%rdi        # 403378 <_IO_stdin_used+0x5d8>
  401df8:	e8 33 ee ff ff       	callq  400c30 <puts@plt>
  401dfd:	48 8d 3d 13 14 00 00 	lea    0x1413(%rip),%rdi        # 403217 <_IO_stdin_used+0x477>
  401e04:	e8 27 ee ff ff       	callq  400c30 <puts@plt>
  401e09:	be 00 00 00 00       	mov    $0x0,%esi
  401e0e:	bf 00 00 00 00       	mov    $0x0,%edi
  401e13:	e8 0b fd ff ff       	callq  401b23 <notify_server>
  401e18:	bf 01 00 00 00       	mov    $0x1,%edi
  401e1d:	e8 8e ef ff ff       	callq  400db0 <exit@plt>

0000000000401e22 <seghandler>:
  401e22:	48 83 ec 08          	sub    $0x8,%rsp
  401e26:	83 3d db 36 20 00 00 	cmpl   $0x0,0x2036db(%rip)        # 605508 <is_checker>
  401e2d:	74 16                	je     401e45 <seghandler+0x23>
  401e2f:	48 8d 3d f7 13 00 00 	lea    0x13f7(%rip),%rdi        # 40322d <_IO_stdin_used+0x48d>
  401e36:	e8 f5 ed ff ff       	callq  400c30 <puts@plt>
  401e3b:	b8 00 00 00 00       	mov    $0x0,%eax
  401e40:	e8 59 fc ff ff       	callq  401a9e <check_fail>
  401e45:	48 8d 3d 4c 15 00 00 	lea    0x154c(%rip),%rdi        # 403398 <_IO_stdin_used+0x5f8>
  401e4c:	e8 df ed ff ff       	callq  400c30 <puts@plt>
  401e51:	48 8d 3d bf 13 00 00 	lea    0x13bf(%rip),%rdi        # 403217 <_IO_stdin_used+0x477>
  401e58:	e8 d3 ed ff ff       	callq  400c30 <puts@plt>
  401e5d:	be 00 00 00 00       	mov    $0x0,%esi
  401e62:	bf 00 00 00 00       	mov    $0x0,%edi
  401e67:	e8 b7 fc ff ff       	callq  401b23 <notify_server>
  401e6c:	bf 01 00 00 00       	mov    $0x1,%edi
  401e71:	e8 3a ef ff ff       	callq  400db0 <exit@plt>

0000000000401e76 <illegalhandler>:
  401e76:	48 83 ec 08          	sub    $0x8,%rsp
  401e7a:	83 3d 87 36 20 00 00 	cmpl   $0x0,0x203687(%rip)        # 605508 <is_checker>
  401e81:	74 16                	je     401e99 <illegalhandler+0x23>
  401e83:	48 8d 3d b6 13 00 00 	lea    0x13b6(%rip),%rdi        # 403240 <_IO_stdin_used+0x4a0>
  401e8a:	e8 a1 ed ff ff       	callq  400c30 <puts@plt>
  401e8f:	b8 00 00 00 00       	mov    $0x0,%eax
  401e94:	e8 05 fc ff ff       	callq  401a9e <check_fail>
  401e99:	48 8d 3d 20 15 00 00 	lea    0x1520(%rip),%rdi        # 4033c0 <_IO_stdin_used+0x620>
  401ea0:	e8 8b ed ff ff       	callq  400c30 <puts@plt>
  401ea5:	48 8d 3d 6b 13 00 00 	lea    0x136b(%rip),%rdi        # 403217 <_IO_stdin_used+0x477>
  401eac:	e8 7f ed ff ff       	callq  400c30 <puts@plt>
  401eb1:	be 00 00 00 00       	mov    $0x0,%esi
  401eb6:	bf 00 00 00 00       	mov    $0x0,%edi
  401ebb:	e8 63 fc ff ff       	callq  401b23 <notify_server>
  401ec0:	bf 01 00 00 00       	mov    $0x1,%edi
  401ec5:	e8 e6 ee ff ff       	callq  400db0 <exit@plt>

0000000000401eca <sigalrmhandler>:
  401eca:	48 83 ec 08          	sub    $0x8,%rsp
  401ece:	83 3d 33 36 20 00 00 	cmpl   $0x0,0x203633(%rip)        # 605508 <is_checker>
  401ed5:	74 16                	je     401eed <sigalrmhandler+0x23>
  401ed7:	48 8d 3d 76 13 00 00 	lea    0x1376(%rip),%rdi        # 403254 <_IO_stdin_used+0x4b4>
  401ede:	e8 4d ed ff ff       	callq  400c30 <puts@plt>
  401ee3:	b8 00 00 00 00       	mov    $0x0,%eax
  401ee8:	e8 b1 fb ff ff       	callq  401a9e <check_fail>
  401eed:	be 05 00 00 00       	mov    $0x5,%esi
  401ef2:	48 8d 3d f7 14 00 00 	lea    0x14f7(%rip),%rdi        # 4033f0 <_IO_stdin_used+0x650>
  401ef9:	b8 00 00 00 00       	mov    $0x0,%eax
  401efe:	e8 5d ed ff ff       	callq  400c60 <printf@plt>
  401f03:	be 00 00 00 00       	mov    $0x0,%esi
  401f08:	bf 00 00 00 00       	mov    $0x0,%edi
  401f0d:	e8 11 fc ff ff       	callq  401b23 <notify_server>
  401f12:	bf 01 00 00 00       	mov    $0x1,%edi
  401f17:	e8 94 ee ff ff       	callq  400db0 <exit@plt>

0000000000401f1c <launch>:
  401f1c:	55                   	push   %rbp
  401f1d:	48 89 e5             	mov    %rsp,%rbp
  401f20:	48 89 fa             	mov    %rdi,%rdx
  401f23:	48 8d 47 1e          	lea    0x1e(%rdi),%rax
  401f27:	48 83 e0 f0          	and    $0xfffffffffffffff0,%rax
  401f2b:	48 29 c4             	sub    %rax,%rsp
  401f2e:	48 8d 7c 24 0f       	lea    0xf(%rsp),%rdi
  401f33:	48 83 e7 f0          	and    $0xfffffffffffffff0,%rdi
  401f37:	be f4 00 00 00       	mov    $0xf4,%esi
  401f3c:	e8 2f ed ff ff       	callq  400c70 <memset@plt>
  401f41:	48 8b 05 58 35 20 00 	mov    0x203558(%rip),%rax        # 6054a0 <stdin@@GLIBC_2.2.5>
  401f48:	48 39 05 a1 35 20 00 	cmp    %rax,0x2035a1(%rip)        # 6054f0 <infile>
  401f4f:	74 2b                	je     401f7c <launch+0x60>
  401f51:	c7 05 a1 35 20 00 00 	movl   $0x0,0x2035a1(%rip)        # 6054fc <vlevel>
  401f58:	00 00 00 
  401f5b:	b8 00 00 00 00       	mov    $0x0,%eax
  401f60:	e8 85 f9 ff ff       	callq  4018ea <test>
  401f65:	83 3d 9c 35 20 00 00 	cmpl   $0x0,0x20359c(%rip)        # 605508 <is_checker>
  401f6c:	75 21                	jne    401f8f <launch+0x73>
  401f6e:	48 8d 3d ff 12 00 00 	lea    0x12ff(%rip),%rdi        # 403274 <_IO_stdin_used+0x4d4>
  401f75:	e8 b6 ec ff ff       	callq  400c30 <puts@plt>
  401f7a:	c9                   	leaveq 
  401f7b:	c3                   	retq   
  401f7c:	48 8d 3d d9 12 00 00 	lea    0x12d9(%rip),%rdi        # 40325c <_IO_stdin_used+0x4bc>
  401f83:	b8 00 00 00 00       	mov    $0x0,%eax
  401f88:	e8 d3 ec ff ff       	callq  400c60 <printf@plt>
  401f8d:	eb c2                	jmp    401f51 <launch+0x35>
  401f8f:	48 8d 3d d3 12 00 00 	lea    0x12d3(%rip),%rdi        # 403269 <_IO_stdin_used+0x4c9>
  401f96:	e8 95 ec ff ff       	callq  400c30 <puts@plt>
  401f9b:	b8 00 00 00 00       	mov    $0x0,%eax
  401fa0:	e8 f9 fa ff ff       	callq  401a9e <check_fail>

0000000000401fa5 <stable_launch>:
  401fa5:	53                   	push   %rbx
  401fa6:	48 89 3d 3b 35 20 00 	mov    %rdi,0x20353b(%rip)        # 6054e8 <global_offset>
  401fad:	41 b9 00 00 00 00    	mov    $0x0,%r9d
  401fb3:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  401fb9:	b9 32 01 00 00       	mov    $0x132,%ecx
  401fbe:	ba 07 00 00 00       	mov    $0x7,%edx
  401fc3:	be 00 00 10 00       	mov    $0x100000,%esi
  401fc8:	bf 00 60 58 55       	mov    $0x55586000,%edi
  401fcd:	e8 7e ec ff ff       	callq  400c50 <mmap@plt>
  401fd2:	48 89 c3             	mov    %rax,%rbx
  401fd5:	48 3d 00 60 58 55    	cmp    $0x55586000,%rax
  401fdb:	75 43                	jne    402020 <stable_launch+0x7b>
  401fdd:	48 8d 90 f8 ff 0f 00 	lea    0xffff8(%rax),%rdx
  401fe4:	48 89 15 45 41 20 00 	mov    %rdx,0x204145(%rip)        # 606130 <stack_top>
  401feb:	48 89 e0             	mov    %rsp,%rax
  401fee:	48 89 d4             	mov    %rdx,%rsp
  401ff1:	48 89 c2             	mov    %rax,%rdx
  401ff4:	48 89 15 e5 34 20 00 	mov    %rdx,0x2034e5(%rip)        # 6054e0 <global_save_stack>
  401ffb:	48 8b 3d e6 34 20 00 	mov    0x2034e6(%rip),%rdi        # 6054e8 <global_offset>
  402002:	e8 15 ff ff ff       	callq  401f1c <launch>
  402007:	48 8b 05 d2 34 20 00 	mov    0x2034d2(%rip),%rax        # 6054e0 <global_save_stack>
  40200e:	48 89 c4             	mov    %rax,%rsp
  402011:	be 00 00 10 00       	mov    $0x100000,%esi
  402016:	48 89 df             	mov    %rbx,%rdi
  402019:	e8 22 ed ff ff       	callq  400d40 <munmap@plt>
  40201e:	5b                   	pop    %rbx
  40201f:	c3                   	retq   
  402020:	be 00 00 10 00       	mov    $0x100000,%esi
  402025:	48 89 c7             	mov    %rax,%rdi
  402028:	e8 13 ed ff ff       	callq  400d40 <munmap@plt>
  40202d:	ba 00 60 58 55       	mov    $0x55586000,%edx
  402032:	48 8d 35 ef 13 00 00 	lea    0x13ef(%rip),%rsi        # 403428 <_IO_stdin_used+0x688>
  402039:	48 8b 3d 80 34 20 00 	mov    0x203480(%rip),%rdi        # 6054c0 <stderr@@GLIBC_2.2.5>
  402040:	b8 00 00 00 00       	mov    $0x0,%eax
  402045:	e8 86 ec ff ff       	callq  400cd0 <fprintf@plt>
  40204a:	bf 01 00 00 00       	mov    $0x1,%edi
  40204f:	e8 5c ed ff ff       	callq  400db0 <exit@plt>

0000000000402054 <rio_readinitb>:
  402054:	89 37                	mov    %esi,(%rdi)
  402056:	c7 47 04 00 00 00 00 	movl   $0x0,0x4(%rdi)
  40205d:	48 8d 47 10          	lea    0x10(%rdi),%rax
  402061:	48 89 47 08          	mov    %rax,0x8(%rdi)
  402065:	c3                   	retq   

0000000000402066 <sigalrm_handler>:
  402066:	48 83 ec 08          	sub    $0x8,%rsp
  40206a:	ba 00 00 00 00       	mov    $0x0,%edx
  40206f:	48 8d 35 ea 13 00 00 	lea    0x13ea(%rip),%rsi        # 403460 <trans_char+0x10>
  402076:	48 8b 3d 43 34 20 00 	mov    0x203443(%rip),%rdi        # 6054c0 <stderr@@GLIBC_2.2.5>
  40207d:	b8 00 00 00 00       	mov    $0x0,%eax
  402082:	e8 49 ec ff ff       	callq  400cd0 <fprintf@plt>
  402087:	bf 01 00 00 00       	mov    $0x1,%edi
  40208c:	e8 1f ed ff ff       	callq  400db0 <exit@plt>

0000000000402091 <urlencode>:
  402091:	41 54                	push   %r12
  402093:	55                   	push   %rbp
  402094:	53                   	push   %rbx
  402095:	48 83 ec 10          	sub    $0x10,%rsp
  402099:	48 89 fb             	mov    %rdi,%rbx
  40209c:	48 89 f5             	mov    %rsi,%rbp
  40209f:	b8 00 00 00 00       	mov    $0x0,%eax
  4020a4:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  4020ab:	f2 ae                	repnz scas %es:(%rdi),%al
  4020ad:	48 f7 d1             	not    %rcx
  4020b0:	8d 41 ff             	lea    -0x1(%rcx),%eax
  4020b3:	eb 0e                	jmp    4020c3 <urlencode+0x32>
  4020b5:	88 55 00             	mov    %dl,0x0(%rbp)
  4020b8:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
  4020bc:	48 83 c3 01          	add    $0x1,%rbx
  4020c0:	44 89 e0             	mov    %r12d,%eax
  4020c3:	44 8d 60 ff          	lea    -0x1(%rax),%r12d
  4020c7:	85 c0                	test   %eax,%eax
  4020c9:	0f 84 95 00 00 00    	je     402164 <urlencode+0xd3>
  4020cf:	0f b6 13             	movzbl (%rbx),%edx
  4020d2:	80 fa 2a             	cmp    $0x2a,%dl
  4020d5:	0f 94 c1             	sete   %cl
  4020d8:	80 fa 2d             	cmp    $0x2d,%dl
  4020db:	0f 94 c0             	sete   %al
  4020de:	08 c1                	or     %al,%cl
  4020e0:	75 d3                	jne    4020b5 <urlencode+0x24>
  4020e2:	80 fa 2e             	cmp    $0x2e,%dl
  4020e5:	74 ce                	je     4020b5 <urlencode+0x24>
  4020e7:	80 fa 5f             	cmp    $0x5f,%dl
  4020ea:	74 c9                	je     4020b5 <urlencode+0x24>
  4020ec:	8d 42 d0             	lea    -0x30(%rdx),%eax
  4020ef:	3c 09                	cmp    $0x9,%al
  4020f1:	76 c2                	jbe    4020b5 <urlencode+0x24>
  4020f3:	8d 42 bf             	lea    -0x41(%rdx),%eax
  4020f6:	3c 19                	cmp    $0x19,%al
  4020f8:	76 bb                	jbe    4020b5 <urlencode+0x24>
  4020fa:	8d 42 9f             	lea    -0x61(%rdx),%eax
  4020fd:	3c 19                	cmp    $0x19,%al
  4020ff:	76 b4                	jbe    4020b5 <urlencode+0x24>
  402101:	80 fa 20             	cmp    $0x20,%dl
  402104:	74 4c                	je     402152 <urlencode+0xc1>
  402106:	8d 42 e0             	lea    -0x20(%rdx),%eax
  402109:	3c 5f                	cmp    $0x5f,%al
  40210b:	0f 96 c1             	setbe  %cl
  40210e:	80 fa 09             	cmp    $0x9,%dl
  402111:	0f 94 c0             	sete   %al
  402114:	08 c1                	or     %al,%cl
  402116:	74 47                	je     40215f <urlencode+0xce>
  402118:	0f b6 d2             	movzbl %dl,%edx
  40211b:	48 8d 7c 24 08       	lea    0x8(%rsp),%rdi
  402120:	48 8d 35 d1 13 00 00 	lea    0x13d1(%rip),%rsi        # 4034f8 <trans_char+0xa8>
  402127:	b8 00 00 00 00       	mov    $0x0,%eax
  40212c:	e8 6f ec ff ff       	callq  400da0 <sprintf@plt>
  402131:	0f b6 44 24 08       	movzbl 0x8(%rsp),%eax
  402136:	88 45 00             	mov    %al,0x0(%rbp)
  402139:	0f b6 44 24 09       	movzbl 0x9(%rsp),%eax
  40213e:	88 45 01             	mov    %al,0x1(%rbp)
  402141:	0f b6 44 24 0a       	movzbl 0xa(%rsp),%eax
  402146:	88 45 02             	mov    %al,0x2(%rbp)
  402149:	48 8d 6d 03          	lea    0x3(%rbp),%rbp
  40214d:	e9 6a ff ff ff       	jmpq   4020bc <urlencode+0x2b>
  402152:	c6 45 00 2b          	movb   $0x2b,0x0(%rbp)
  402156:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
  40215a:	e9 5d ff ff ff       	jmpq   4020bc <urlencode+0x2b>
  40215f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402164:	48 83 c4 10          	add    $0x10,%rsp
  402168:	5b                   	pop    %rbx
  402169:	5d                   	pop    %rbp
  40216a:	41 5c                	pop    %r12
  40216c:	c3                   	retq   

000000000040216d <rio_writen>:
  40216d:	41 55                	push   %r13
  40216f:	41 54                	push   %r12
  402171:	55                   	push   %rbp
  402172:	53                   	push   %rbx
  402173:	48 83 ec 08          	sub    $0x8,%rsp
  402177:	41 89 fc             	mov    %edi,%r12d
  40217a:	49 89 d5             	mov    %rdx,%r13
  40217d:	48 89 f5             	mov    %rsi,%rbp
  402180:	48 89 d3             	mov    %rdx,%rbx
  402183:	eb 06                	jmp    40218b <rio_writen+0x1e>
  402185:	48 29 c3             	sub    %rax,%rbx
  402188:	48 01 c5             	add    %rax,%rbp
  40218b:	48 85 db             	test   %rbx,%rbx
  40218e:	74 24                	je     4021b4 <rio_writen+0x47>
  402190:	48 89 da             	mov    %rbx,%rdx
  402193:	48 89 ee             	mov    %rbp,%rsi
  402196:	44 89 e7             	mov    %r12d,%edi
  402199:	e8 a2 ea ff ff       	callq  400c40 <write@plt>
  40219e:	48 85 c0             	test   %rax,%rax
  4021a1:	7f e2                	jg     402185 <rio_writen+0x18>
  4021a3:	e8 48 ea ff ff       	callq  400bf0 <__errno_location@plt>
  4021a8:	83 38 04             	cmpl   $0x4,(%rax)
  4021ab:	75 15                	jne    4021c2 <rio_writen+0x55>
  4021ad:	b8 00 00 00 00       	mov    $0x0,%eax
  4021b2:	eb d1                	jmp    402185 <rio_writen+0x18>
  4021b4:	4c 89 e8             	mov    %r13,%rax
  4021b7:	48 83 c4 08          	add    $0x8,%rsp
  4021bb:	5b                   	pop    %rbx
  4021bc:	5d                   	pop    %rbp
  4021bd:	41 5c                	pop    %r12
  4021bf:	41 5d                	pop    %r13
  4021c1:	c3                   	retq   
  4021c2:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  4021c9:	eb ec                	jmp    4021b7 <rio_writen+0x4a>

00000000004021cb <rio_read>:
  4021cb:	41 55                	push   %r13
  4021cd:	41 54                	push   %r12
  4021cf:	55                   	push   %rbp
  4021d0:	53                   	push   %rbx
  4021d1:	48 83 ec 08          	sub    $0x8,%rsp
  4021d5:	48 89 fb             	mov    %rdi,%rbx
  4021d8:	49 89 f5             	mov    %rsi,%r13
  4021db:	49 89 d4             	mov    %rdx,%r12
  4021de:	eb 0a                	jmp    4021ea <rio_read+0x1f>
  4021e0:	e8 0b ea ff ff       	callq  400bf0 <__errno_location@plt>
  4021e5:	83 38 04             	cmpl   $0x4,(%rax)
  4021e8:	75 5c                	jne    402246 <rio_read+0x7b>
  4021ea:	8b 6b 04             	mov    0x4(%rbx),%ebp
  4021ed:	85 ed                	test   %ebp,%ebp
  4021ef:	7f 24                	jg     402215 <rio_read+0x4a>
  4021f1:	48 8d 6b 10          	lea    0x10(%rbx),%rbp
  4021f5:	ba 00 20 00 00       	mov    $0x2000,%edx
  4021fa:	48 89 ee             	mov    %rbp,%rsi
  4021fd:	8b 3b                	mov    (%rbx),%edi
  4021ff:	e8 9c ea ff ff       	callq  400ca0 <read@plt>
  402204:	89 43 04             	mov    %eax,0x4(%rbx)
  402207:	85 c0                	test   %eax,%eax
  402209:	78 d5                	js     4021e0 <rio_read+0x15>
  40220b:	85 c0                	test   %eax,%eax
  40220d:	74 40                	je     40224f <rio_read+0x84>
  40220f:	48 89 6b 08          	mov    %rbp,0x8(%rbx)
  402213:	eb d5                	jmp    4021ea <rio_read+0x1f>
  402215:	89 e8                	mov    %ebp,%eax
  402217:	49 39 c4             	cmp    %rax,%r12
  40221a:	77 03                	ja     40221f <rio_read+0x54>
  40221c:	44 89 e5             	mov    %r12d,%ebp
  40221f:	4c 63 e5             	movslq %ebp,%r12
  402222:	48 8b 73 08          	mov    0x8(%rbx),%rsi
  402226:	4c 89 e2             	mov    %r12,%rdx
  402229:	4c 89 ef             	mov    %r13,%rdi
  40222c:	e8 bf ea ff ff       	callq  400cf0 <memcpy@plt>
  402231:	4c 01 63 08          	add    %r12,0x8(%rbx)
  402235:	29 6b 04             	sub    %ebp,0x4(%rbx)
  402238:	4c 89 e0             	mov    %r12,%rax
  40223b:	48 83 c4 08          	add    $0x8,%rsp
  40223f:	5b                   	pop    %rbx
  402240:	5d                   	pop    %rbp
  402241:	41 5c                	pop    %r12
  402243:	41 5d                	pop    %r13
  402245:	c3                   	retq   
  402246:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  40224d:	eb ec                	jmp    40223b <rio_read+0x70>
  40224f:	b8 00 00 00 00       	mov    $0x0,%eax
  402254:	eb e5                	jmp    40223b <rio_read+0x70>

0000000000402256 <rio_readlineb>:
  402256:	41 55                	push   %r13
  402258:	41 54                	push   %r12
  40225a:	55                   	push   %rbp
  40225b:	53                   	push   %rbx
  40225c:	48 83 ec 18          	sub    $0x18,%rsp
  402260:	49 89 fd             	mov    %rdi,%r13
  402263:	49 89 d4             	mov    %rdx,%r12
  402266:	48 89 f5             	mov    %rsi,%rbp
  402269:	bb 01 00 00 00       	mov    $0x1,%ebx
  40226e:	4c 39 e3             	cmp    %r12,%rbx
  402271:	73 47                	jae    4022ba <rio_readlineb+0x64>
  402273:	48 8d 74 24 0f       	lea    0xf(%rsp),%rsi
  402278:	ba 01 00 00 00       	mov    $0x1,%edx
  40227d:	4c 89 ef             	mov    %r13,%rdi
  402280:	e8 46 ff ff ff       	callq  4021cb <rio_read>
  402285:	83 f8 01             	cmp    $0x1,%eax
  402288:	75 1c                	jne    4022a6 <rio_readlineb+0x50>
  40228a:	48 8d 45 01          	lea    0x1(%rbp),%rax
  40228e:	0f b6 54 24 0f       	movzbl 0xf(%rsp),%edx
  402293:	88 55 00             	mov    %dl,0x0(%rbp)
  402296:	80 7c 24 0f 0a       	cmpb   $0xa,0xf(%rsp)
  40229b:	74 1a                	je     4022b7 <rio_readlineb+0x61>
  40229d:	48 83 c3 01          	add    $0x1,%rbx
  4022a1:	48 89 c5             	mov    %rax,%rbp
  4022a4:	eb c8                	jmp    40226e <rio_readlineb+0x18>
  4022a6:	85 c0                	test   %eax,%eax
  4022a8:	75 22                	jne    4022cc <rio_readlineb+0x76>
  4022aa:	48 83 fb 01          	cmp    $0x1,%rbx
  4022ae:	75 0a                	jne    4022ba <rio_readlineb+0x64>
  4022b0:	b8 00 00 00 00       	mov    $0x0,%eax
  4022b5:	eb 0a                	jmp    4022c1 <rio_readlineb+0x6b>
  4022b7:	48 89 c5             	mov    %rax,%rbp
  4022ba:	c6 45 00 00          	movb   $0x0,0x0(%rbp)
  4022be:	48 89 d8             	mov    %rbx,%rax
  4022c1:	48 83 c4 18          	add    $0x18,%rsp
  4022c5:	5b                   	pop    %rbx
  4022c6:	5d                   	pop    %rbp
  4022c7:	41 5c                	pop    %r12
  4022c9:	41 5d                	pop    %r13
  4022cb:	c3                   	retq   
  4022cc:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  4022d3:	eb ec                	jmp    4022c1 <rio_readlineb+0x6b>

00000000004022d5 <submitr>:
  4022d5:	41 57                	push   %r15
  4022d7:	41 56                	push   %r14
  4022d9:	41 55                	push   %r13
  4022db:	41 54                	push   %r12
  4022dd:	55                   	push   %rbp
  4022de:	53                   	push   %rbx
  4022df:	48 81 ec 58 a0 00 00 	sub    $0xa058,%rsp
  4022e6:	49 89 fd             	mov    %rdi,%r13
  4022e9:	89 74 24 14          	mov    %esi,0x14(%rsp)
  4022ed:	49 89 d7             	mov    %rdx,%r15
  4022f0:	48 89 4c 24 08       	mov    %rcx,0x8(%rsp)
  4022f5:	4c 89 44 24 18       	mov    %r8,0x18(%rsp)
  4022fa:	4d 89 ce             	mov    %r9,%r14
  4022fd:	48 8b 9c 24 90 a0 00 	mov    0xa090(%rsp),%rbx
  402304:	00 
  402305:	c7 84 24 2c 20 00 00 	movl   $0x0,0x202c(%rsp)
  40230c:	00 00 00 00 
  402310:	ba 00 00 00 00       	mov    $0x0,%edx
  402315:	be 01 00 00 00       	mov    $0x1,%esi
  40231a:	bf 02 00 00 00       	mov    $0x2,%edi
  40231f:	e8 ac ea ff ff       	callq  400dd0 <socket@plt>
  402324:	85 c0                	test   %eax,%eax
  402326:	0f 88 ca 01 00 00    	js     4024f6 <submitr+0x221>
  40232c:	89 c5                	mov    %eax,%ebp
  40232e:	4c 89 ef             	mov    %r13,%rdi
  402331:	e8 8a e9 ff ff       	callq  400cc0 <gethostbyname@plt>
  402336:	48 85 c0             	test   %rax,%rax
  402339:	0f 84 05 02 00 00    	je     402544 <submitr+0x26f>
  40233f:	4c 8d a4 24 40 a0 00 	lea    0xa040(%rsp),%r12
  402346:	00 
  402347:	48 c7 84 24 40 a0 00 	movq   $0x0,0xa040(%rsp)
  40234e:	00 00 00 00 00 
  402353:	48 c7 84 24 48 a0 00 	movq   $0x0,0xa048(%rsp)
  40235a:	00 00 00 00 00 
  40235f:	66 c7 84 24 40 a0 00 	movw   $0x2,0xa040(%rsp)
  402366:	00 02 00 
  402369:	48 8b 48 18          	mov    0x18(%rax),%rcx
  40236d:	48 63 50 14          	movslq 0x14(%rax),%rdx
  402371:	48 8d b4 24 44 a0 00 	lea    0xa044(%rsp),%rsi
  402378:	00 
  402379:	48 8b 39             	mov    (%rcx),%rdi
  40237c:	e8 cf e9 ff ff       	callq  400d50 <bcopy@plt>
  402381:	0f b7 44 24 14       	movzwl 0x14(%rsp),%eax
  402386:	66 c1 c8 08          	ror    $0x8,%ax
  40238a:	66 89 84 24 42 a0 00 	mov    %ax,0xa042(%rsp)
  402391:	00 
  402392:	ba 10 00 00 00       	mov    $0x10,%edx
  402397:	4c 89 e6             	mov    %r12,%rsi
  40239a:	89 ef                	mov    %ebp,%edi
  40239c:	e8 1f ea ff ff       	callq  400dc0 <connect@plt>
  4023a1:	85 c0                	test   %eax,%eax
  4023a3:	0f 88 02 02 00 00    	js     4025ab <submitr+0x2d6>
  4023a9:	48 c7 c6 ff ff ff ff 	mov    $0xffffffffffffffff,%rsi
  4023b0:	b8 00 00 00 00       	mov    $0x0,%eax
  4023b5:	48 89 f1             	mov    %rsi,%rcx
  4023b8:	4c 89 f7             	mov    %r14,%rdi
  4023bb:	f2 ae                	repnz scas %es:(%rdi),%al
  4023bd:	48 f7 d1             	not    %rcx
  4023c0:	48 89 ca             	mov    %rcx,%rdx
  4023c3:	48 89 f1             	mov    %rsi,%rcx
  4023c6:	4c 89 ff             	mov    %r15,%rdi
  4023c9:	f2 ae                	repnz scas %es:(%rdi),%al
  4023cb:	48 f7 d1             	not    %rcx
  4023ce:	49 89 c8             	mov    %rcx,%r8
  4023d1:	48 89 f1             	mov    %rsi,%rcx
  4023d4:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
  4023d9:	f2 ae                	repnz scas %es:(%rdi),%al
  4023db:	48 f7 d1             	not    %rcx
  4023de:	4d 8d 44 08 fe       	lea    -0x2(%r8,%rcx,1),%r8
  4023e3:	48 89 f1             	mov    %rsi,%rcx
  4023e6:	48 8b 7c 24 18       	mov    0x18(%rsp),%rdi
  4023eb:	f2 ae                	repnz scas %es:(%rdi),%al
  4023ed:	48 89 c8             	mov    %rcx,%rax
  4023f0:	48 f7 d0             	not    %rax
  4023f3:	49 8d 4c 00 ff       	lea    -0x1(%r8,%rax,1),%rcx
  4023f8:	48 8d 44 52 fd       	lea    -0x3(%rdx,%rdx,2),%rax
  4023fd:	48 8d 84 01 80 00 00 	lea    0x80(%rcx,%rax,1),%rax
  402404:	00 
  402405:	48 3d 00 20 00 00    	cmp    $0x2000,%rax
  40240b:	0f 87 f3 01 00 00    	ja     402604 <submitr+0x32f>
  402411:	48 8d b4 24 30 40 00 	lea    0x4030(%rsp),%rsi
  402418:	00 
  402419:	b9 00 04 00 00       	mov    $0x400,%ecx
  40241e:	b8 00 00 00 00       	mov    $0x0,%eax
  402423:	48 89 f7             	mov    %rsi,%rdi
  402426:	f3 48 ab             	rep stos %rax,%es:(%rdi)
  402429:	4c 89 f7             	mov    %r14,%rdi
  40242c:	e8 60 fc ff ff       	callq  402091 <urlencode>
  402431:	85 c0                	test   %eax,%eax
  402433:	0f 88 3d 02 00 00    	js     402676 <submitr+0x3a1>
  402439:	4c 8d a4 24 30 60 00 	lea    0x6030(%rsp),%r12
  402440:	00 
  402441:	4d 89 e9             	mov    %r13,%r9
  402444:	4c 8d 84 24 30 40 00 	lea    0x4030(%rsp),%r8
  40244b:	00 
  40244c:	4c 89 f9             	mov    %r15,%rcx
  40244f:	48 8b 54 24 08       	mov    0x8(%rsp),%rdx
  402454:	48 8d 35 2d 10 00 00 	lea    0x102d(%rip),%rsi        # 403488 <trans_char+0x38>
  40245b:	4c 89 e7             	mov    %r12,%rdi
  40245e:	b8 00 00 00 00       	mov    $0x0,%eax
  402463:	e8 38 e9 ff ff       	callq  400da0 <sprintf@plt>
  402468:	b8 00 00 00 00       	mov    $0x0,%eax
  40246d:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  402474:	4c 89 e7             	mov    %r12,%rdi
  402477:	f2 ae                	repnz scas %es:(%rdi),%al
  402479:	48 f7 d1             	not    %rcx
  40247c:	48 8d 51 ff          	lea    -0x1(%rcx),%rdx
  402480:	4c 89 e6             	mov    %r12,%rsi
  402483:	89 ef                	mov    %ebp,%edi
  402485:	e8 e3 fc ff ff       	callq  40216d <rio_writen>
  40248a:	48 85 c0             	test   %rax,%rax
  40248d:	0f 88 6d 02 00 00    	js     402700 <submitr+0x42b>
  402493:	4c 8d a4 24 30 80 00 	lea    0x8030(%rsp),%r12
  40249a:	00 
  40249b:	89 ee                	mov    %ebp,%esi
  40249d:	4c 89 e7             	mov    %r12,%rdi
  4024a0:	e8 af fb ff ff       	callq  402054 <rio_readinitb>
  4024a5:	48 8d b4 24 30 60 00 	lea    0x6030(%rsp),%rsi
  4024ac:	00 
  4024ad:	ba 00 20 00 00       	mov    $0x2000,%edx
  4024b2:	4c 89 e7             	mov    %r12,%rdi
  4024b5:	e8 9c fd ff ff       	callq  402256 <rio_readlineb>
  4024ba:	48 85 c0             	test   %rax,%rax
  4024bd:	0f 8e ab 02 00 00    	jle    40276e <submitr+0x499>
  4024c3:	48 8d 8c 24 2c 20 00 	lea    0x202c(%rsp),%rcx
  4024ca:	00 
  4024cb:	48 8d 94 24 30 20 00 	lea    0x2030(%rsp),%rdx
  4024d2:	00 
  4024d3:	48 8d bc 24 30 60 00 	lea    0x6030(%rsp),%rdi
  4024da:	00 
  4024db:	4c 8d 44 24 20       	lea    0x20(%rsp),%r8
  4024e0:	48 8d 35 18 10 00 00 	lea    0x1018(%rip),%rsi        # 4034ff <trans_char+0xaf>
  4024e7:	b8 00 00 00 00       	mov    $0x0,%eax
  4024ec:	e8 3f e8 ff ff       	callq  400d30 <__isoc99_sscanf@plt>
  4024f1:	e9 9f 03 00 00       	jmpq   402895 <submitr+0x5c0>
  4024f6:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  4024fd:	3a 20 43 
  402500:	48 89 03             	mov    %rax,(%rbx)
  402503:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  40250a:	20 75 6e 
  40250d:	48 89 43 08          	mov    %rax,0x8(%rbx)
  402511:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402518:	74 6f 20 
  40251b:	48 89 43 10          	mov    %rax,0x10(%rbx)
  40251f:	48 b8 63 72 65 61 74 	movabs $0x7320657461657263,%rax
  402526:	65 20 73 
  402529:	48 89 43 18          	mov    %rax,0x18(%rbx)
  40252d:	c7 43 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%rbx)
  402534:	66 c7 43 24 74 00    	movw   $0x74,0x24(%rbx)
  40253a:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40253f:	e9 18 03 00 00       	jmpq   40285c <submitr+0x587>
  402544:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
  40254b:	3a 20 44 
  40254e:	48 89 03             	mov    %rax,(%rbx)
  402551:	48 b8 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rax
  402558:	20 75 6e 
  40255b:	48 89 43 08          	mov    %rax,0x8(%rbx)
  40255f:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402566:	74 6f 20 
  402569:	48 89 43 10          	mov    %rax,0x10(%rbx)
  40256d:	48 b8 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rax
  402574:	76 65 20 
  402577:	48 89 43 18          	mov    %rax,0x18(%rbx)
  40257b:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
  402582:	72 20 61 
  402585:	48 89 43 20          	mov    %rax,0x20(%rbx)
  402589:	c7 43 28 64 64 72 65 	movl   $0x65726464,0x28(%rbx)
  402590:	66 c7 43 2c 73 73    	movw   $0x7373,0x2c(%rbx)
  402596:	c6 43 2e 00          	movb   $0x0,0x2e(%rbx)
  40259a:	89 ef                	mov    %ebp,%edi
  40259c:	e8 ef e6 ff ff       	callq  400c90 <close@plt>
  4025a1:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4025a6:	e9 b1 02 00 00       	jmpq   40285c <submitr+0x587>
  4025ab:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
  4025b2:	3a 20 55 
  4025b5:	48 89 03             	mov    %rax,(%rbx)
  4025b8:	48 b8 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rax
  4025bf:	20 74 6f 
  4025c2:	48 89 43 08          	mov    %rax,0x8(%rbx)
  4025c6:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
  4025cd:	65 63 74 
  4025d0:	48 89 43 10          	mov    %rax,0x10(%rbx)
  4025d4:	48 b8 20 74 6f 20 74 	movabs $0x20656874206f7420,%rax
  4025db:	68 65 20 
  4025de:	48 89 43 18          	mov    %rax,0x18(%rbx)
  4025e2:	c7 43 20 73 65 72 76 	movl   $0x76726573,0x20(%rbx)
  4025e9:	66 c7 43 24 65 72    	movw   $0x7265,0x24(%rbx)
  4025ef:	c6 43 26 00          	movb   $0x0,0x26(%rbx)
  4025f3:	89 ef                	mov    %ebp,%edi
  4025f5:	e8 96 e6 ff ff       	callq  400c90 <close@plt>
  4025fa:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4025ff:	e9 58 02 00 00       	jmpq   40285c <submitr+0x587>
  402604:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
  40260b:	3a 20 52 
  40260e:	48 89 03             	mov    %rax,(%rbx)
  402611:	48 b8 65 73 75 6c 74 	movabs $0x747320746c757365,%rax
  402618:	20 73 74 
  40261b:	48 89 43 08          	mov    %rax,0x8(%rbx)
  40261f:	48 b8 72 69 6e 67 20 	movabs $0x6f6f7420676e6972,%rax
  402626:	74 6f 6f 
  402629:	48 89 43 10          	mov    %rax,0x10(%rbx)
  40262d:	48 b8 20 6c 61 72 67 	movabs $0x202e656772616c20,%rax
  402634:	65 2e 20 
  402637:	48 89 43 18          	mov    %rax,0x18(%rbx)
  40263b:	48 b8 49 6e 63 72 65 	movabs $0x6573616572636e49,%rax
  402642:	61 73 65 
  402645:	48 89 43 20          	mov    %rax,0x20(%rbx)
  402649:	48 b8 20 53 55 42 4d 	movabs $0x5254494d42555320,%rax
  402650:	49 54 52 
  402653:	48 89 43 28          	mov    %rax,0x28(%rbx)
  402657:	48 b8 5f 4d 41 58 42 	movabs $0x46554258414d5f,%rax
  40265e:	55 46 00 
  402661:	48 89 43 30          	mov    %rax,0x30(%rbx)
  402665:	89 ef                	mov    %ebp,%edi
  402667:	e8 24 e6 ff ff       	callq  400c90 <close@plt>
  40266c:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402671:	e9 e6 01 00 00       	jmpq   40285c <submitr+0x587>
  402676:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
  40267d:	3a 20 52 
  402680:	48 89 03             	mov    %rax,(%rbx)
  402683:	48 b8 65 73 75 6c 74 	movabs $0x747320746c757365,%rax
  40268a:	20 73 74 
  40268d:	48 89 43 08          	mov    %rax,0x8(%rbx)
  402691:	48 b8 72 69 6e 67 20 	movabs $0x6e6f6320676e6972,%rax
  402698:	63 6f 6e 
  40269b:	48 89 43 10          	mov    %rax,0x10(%rbx)
  40269f:	48 b8 74 61 69 6e 73 	movabs $0x6e6120736e696174,%rax
  4026a6:	20 61 6e 
  4026a9:	48 89 43 18          	mov    %rax,0x18(%rbx)
  4026ad:	48 b8 20 69 6c 6c 65 	movabs $0x6c6167656c6c6920,%rax
  4026b4:	67 61 6c 
  4026b7:	48 89 43 20          	mov    %rax,0x20(%rbx)
  4026bb:	48 b8 20 6f 72 20 75 	movabs $0x72706e7520726f20,%rax
  4026c2:	6e 70 72 
  4026c5:	48 89 43 28          	mov    %rax,0x28(%rbx)
  4026c9:	48 b8 69 6e 74 61 62 	movabs $0x20656c6261746e69,%rax
  4026d0:	6c 65 20 
  4026d3:	48 89 43 30          	mov    %rax,0x30(%rbx)
  4026d7:	48 b8 63 68 61 72 61 	movabs $0x6574636172616863,%rax
  4026de:	63 74 65 
  4026e1:	48 89 43 38          	mov    %rax,0x38(%rbx)
  4026e5:	66 c7 43 40 72 2e    	movw   $0x2e72,0x40(%rbx)
  4026eb:	c6 43 42 00          	movb   $0x0,0x42(%rbx)

  4026ef:	89 ef                	mov    %ebp,%edi
  4026f1:	e8 9a e5 ff ff       	callq  400c90 <close@plt>
  4026f6:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4026fb:	e9 5c 01 00 00       	jmpq   40285c <submitr+0x587>
  402700:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402707:	3a 20 43 
  40270a:	48 89 03             	mov    %rax,(%rbx)
  40270d:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  402714:	20 75 6e 
  402717:	48 89 43 08          	mov    %rax,0x8(%rbx)
  40271b:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402722:	74 6f 20 
  402725:	48 89 43 10          	mov    %rax,0x10(%rbx)
  402729:	48 b8 77 72 69 74 65 	movabs $0x6f74206574697277,%rax
  402730:	20 74 6f 
  402733:	48 89 43 18          	mov    %rax,0x18(%rbx)
  402737:	48 b8 20 74 68 65 20 	movabs $0x7365722065687420,%rax
  40273e:	72 65 73 
  402741:	48 89 43 20          	mov    %rax,0x20(%rbx)
  402745:	48 b8 75 6c 74 20 73 	movabs $0x7672657320746c75,%rax
  40274c:	65 72 76 
  40274f:	48 89 43 28          	mov    %rax,0x28(%rbx)
  402753:	66 c7 43 30 65 72    	movw   $0x7265,0x30(%rbx)
  402759:	c6 43 32 00          	movb   $0x0,0x32(%rbx)
  40275d:	89 ef                	mov    %ebp,%edi
  40275f:	e8 2c e5 ff ff       	callq  400c90 <close@plt>
  402764:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402769:	e9 ee 00 00 00       	jmpq   40285c <submitr+0x587>
  40276e:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402775:	3a 20 43 
  402778:	48 89 03             	mov    %rax,(%rbx)
  40277b:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  402782:	20 75 6e 
  402785:	48 89 43 08          	mov    %rax,0x8(%rbx)
  402789:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402790:	74 6f 20 
  402793:	48 89 43 10          	mov    %rax,0x10(%rbx)
  402797:	48 b8 72 65 61 64 20 	movabs $0x7269662064616572,%rax
  40279e:	66 69 72 
  4027a1:	48 89 43 18          	mov    %rax,0x18(%rbx)
  4027a5:	48 b8 73 74 20 68 65 	movabs $0x6564616568207473,%rax
  4027ac:	61 64 65 
  4027af:	48 89 43 20          	mov    %rax,0x20(%rbx)
  4027b3:	48 b8 72 20 66 72 6f 	movabs $0x72206d6f72662072,%rax
  4027ba:	6d 20 72 
  4027bd:	48 89 43 28          	mov    %rax,0x28(%rbx)
  4027c1:	48 b8 65 73 75 6c 74 	movabs $0x657320746c757365,%rax
  4027c8:	20 73 65 
  4027cb:	48 89 43 30          	mov    %rax,0x30(%rbx)
  4027cf:	c7 43 38 72 76 65 72 	movl   $0x72657672,0x38(%rbx)
  4027d6:	c6 43 3c 00          	movb   $0x0,0x3c(%rbx)
  4027da:	89 ef                	mov    %ebp,%edi
  4027dc:	e8 af e4 ff ff       	callq  400c90 <close@plt>
  4027e1:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4027e6:	eb 74                	jmp    40285c <submitr+0x587>
  4027e8:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  4027ef:	3a 20 43 
  4027f2:	48 89 03             	mov    %rax,(%rbx)
  4027f5:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  4027fc:	20 75 6e 
  4027ff:	48 89 43 08          	mov    %rax,0x8(%rbx)
  402803:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  40280a:	74 6f 20 
  40280d:	48 89 43 10          	mov    %rax,0x10(%rbx)
  402811:	48 b8 72 65 61 64 20 	movabs $0x6165682064616572,%rax
  402818:	68 65 61 
  40281b:	48 89 43 18          	mov    %rax,0x18(%rbx)
  40281f:	48 b8 64 65 72 73 20 	movabs $0x6f72662073726564,%rax
  402826:	66 72 6f 
  402829:	48 89 43 20          	mov    %rax,0x20(%rbx)
  40282d:	48 b8 6d 20 74 68 65 	movabs $0x657220656874206d,%rax
  402834:	20 72 65 
  402837:	48 89 43 28          	mov    %rax,0x28(%rbx)
  40283b:	48 b8 73 75 6c 74 20 	movabs $0x72657320746c7573,%rax
  402842:	73 65 72 
  402845:	48 89 43 30          	mov    %rax,0x30(%rbx)
  402849:	c7 43 38 76 65 72 00 	movl   $0x726576,0x38(%rbx)
  402850:	89 ef                	mov    %ebp,%edi
  402852:	e8 39 e4 ff ff       	callq  400c90 <close@plt>
  402857:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40285c:	48 81 c4 58 a0 00 00 	add    $0xa058,%rsp
  402863:	5b                   	pop    %rbx
  402864:	5d                   	pop    %rbp
  402865:	41 5c                	pop    %r12
  402867:	41 5d                	pop    %r13
  402869:	41 5e                	pop    %r14
  40286b:	41 5f                	pop    %r15
  40286d:	c3                   	retq   
  40286e:	85 c0                	test   %eax,%eax
  402870:	74 51                	je     4028c3 <submitr+0x5ee>
  402872:	48 8d b4 24 30 60 00 	lea    0x6030(%rsp),%rsi
  402879:	00 
  40287a:	48 8d bc 24 30 80 00 	lea    0x8030(%rsp),%rdi
  402881:	00 
  402882:	ba 00 20 00 00       	mov    $0x2000,%edx
  402887:	e8 ca f9 ff ff       	callq  402256 <rio_readlineb>
  40288c:	48 85 c0             	test   %rax,%rax
  40288f:	0f 8e 53 ff ff ff    	jle    4027e8 <submitr+0x513>
  402895:	0f b6 94 24 30 60 00 	movzbl 0x6030(%rsp),%edx
  40289c:	00 
  40289d:	b8 0d 00 00 00       	mov    $0xd,%eax
  4028a2:	29 d0                	sub    %edx,%eax
  4028a4:	75 c8                	jne    40286e <submitr+0x599>
  4028a6:	0f b6 94 24 31 60 00 	movzbl 0x6031(%rsp),%edx
  4028ad:	00 
  4028ae:	b8 0a 00 00 00       	mov    $0xa,%eax
  4028b3:	29 d0                	sub    %edx,%eax
  4028b5:	75 b7                	jne    40286e <submitr+0x599>
  4028b7:	0f b6 84 24 32 60 00 	movzbl 0x6032(%rsp),%eax
  4028be:	00 
  4028bf:	f7 d8                	neg    %eax
  4028c1:	eb ab                	jmp    40286e <submitr+0x599>
  4028c3:	48 8d b4 24 30 60 00 	lea    0x6030(%rsp),%rsi
  4028ca:	00 
  4028cb:	48 8d bc 24 30 80 00 	lea    0x8030(%rsp),%rdi
  4028d2:	00 
  4028d3:	ba 00 20 00 00       	mov    $0x2000,%edx
  4028d8:	e8 79 f9 ff ff       	callq  402256 <rio_readlineb>
  4028dd:	48 85 c0             	test   %rax,%rax
  4028e0:	7e 67                	jle    402949 <submitr+0x674>
  4028e2:	8b 94 24 2c 20 00 00 	mov    0x202c(%rsp),%edx
  4028e9:	81 fa c8 00 00 00    	cmp    $0xc8,%edx
  4028ef:	0f 85 d7 00 00 00    	jne    4029cc <submitr+0x6f7>
  4028f5:	48 8d b4 24 30 60 00 	lea    0x6030(%rsp),%rsi
  4028fc:	00 
  4028fd:	48 89 df             	mov    %rbx,%rdi
  402900:	e8 1b e3 ff ff       	callq  400c20 <strcpy@plt>
  402905:	89 ef                	mov    %ebp,%edi
  402907:	e8 84 e3 ff ff       	callq  400c90 <close@plt>
  40290c:	0f b6 03             	movzbl (%rbx),%eax
  40290f:	ba 4f 00 00 00       	mov    $0x4f,%edx
  402914:	29 c2                	sub    %eax,%edx
  402916:	0f 85 da 00 00 00    	jne    4029f6 <submitr+0x721>
  40291c:	0f b6 4b 01          	movzbl 0x1(%rbx),%ecx
  402920:	b8 4b 00 00 00       	mov    $0x4b,%eax
  402925:	29 c8                	sub    %ecx,%eax
  402927:	0f 85 cb 00 00 00    	jne    4029f8 <submitr+0x723>
  40292d:	0f b6 4b 02          	movzbl 0x2(%rbx),%ecx
  402931:	b8 0a 00 00 00       	mov    $0xa,%eax
  402936:	29 c8                	sub    %ecx,%eax
  402938:	0f 85 ba 00 00 00    	jne    4029f8 <submitr+0x723>
  40293e:	0f b6 43 03          	movzbl 0x3(%rbx),%eax
  402942:	f7 d8                	neg    %eax
  402944:	e9 af 00 00 00       	jmpq   4029f8 <submitr+0x723>
  402949:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402950:	3a 20 43 
  402953:	48 89 03             	mov    %rax,(%rbx)
  402956:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  40295d:	20 75 6e 
  402960:	48 89 43 08          	mov    %rax,0x8(%rbx)
  402964:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  40296b:	74 6f 20 
  40296e:	48 89 43 10          	mov    %rax,0x10(%rbx)
  402972:	48 b8 72 65 61 64 20 	movabs $0x6174732064616572,%rax
  402979:	73 74 61 
  40297c:	48 89 43 18          	mov    %rax,0x18(%rbx)
  402980:	48 b8 74 75 73 20 6d 	movabs $0x7373656d20737574,%rax
  402987:	65 73 73 
  40298a:	48 89 43 20          	mov    %rax,0x20(%rbx)
  40298e:	48 b8 61 67 65 20 66 	movabs $0x6d6f726620656761,%rax
  402995:	72 6f 6d 
  402998:	48 89 43 28          	mov    %rax,0x28(%rbx)
  40299c:	48 b8 20 72 65 73 75 	movabs $0x20746c7573657220,%rax
  4029a3:	6c 74 20 
  4029a6:	48 89 43 30          	mov    %rax,0x30(%rbx)
  4029aa:	c7 43 38 73 65 72 76 	movl   $0x76726573,0x38(%rbx)
  4029b1:	66 c7 43 3c 65 72    	movw   $0x7265,0x3c(%rbx)
  4029b7:	c6 43 3e 00          	movb   $0x0,0x3e(%rbx)
  4029bb:	89 ef                	mov    %ebp,%edi
  4029bd:	e8 ce e2 ff ff       	callq  400c90 <close@plt>
  4029c2:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4029c7:	e9 90 fe ff ff       	jmpq   40285c <submitr+0x587>
  4029cc:	48 8d 4c 24 20       	lea    0x20(%rsp),%rcx
  4029d1:	48 8d 35 f0 0a 00 00 	lea    0xaf0(%rip),%rsi        # 4034c8 <trans_char+0x78>
  4029d8:	48 89 df             	mov    %rbx,%rdi
  4029db:	b8 00 00 00 00       	mov    $0x0,%eax
  4029e0:	e8 bb e3 ff ff       	callq  400da0 <sprintf@plt>
  4029e5:	89 ef                	mov    %ebp,%edi
  4029e7:	e8 a4 e2 ff ff       	callq  400c90 <close@plt>
  4029ec:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4029f1:	e9 66 fe ff ff       	jmpq   40285c <submitr+0x587>
  4029f6:	89 d0                	mov    %edx,%eax
  4029f8:	f7 d8                	neg    %eax
  4029fa:	0f 84 5c fe ff ff    	je     40285c <submitr+0x587>
  402a00:	b9 05 00 00 00       	mov    $0x5,%ecx
  402a05:	48 8d 3d 04 0b 00 00 	lea    0xb04(%rip),%rdi        # 403510 <trans_char+0xc0>
  402a0c:	48 89 de             	mov    %rbx,%rsi
  402a0f:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  402a11:	0f 97 c0             	seta   %al
  402a14:	0f 92 c1             	setb   %cl
  402a17:	29 c8                	sub    %ecx,%eax
  402a19:	0f be c0             	movsbl %al,%eax
  402a1c:	85 c0                	test   %eax,%eax
  402a1e:	0f 84 38 fe ff ff    	je     40285c <submitr+0x587>
  402a24:	85 d2                	test   %edx,%edx
  402a26:	75 13                	jne    402a3b <submitr+0x766>
  402a28:	0f b6 43 01          	movzbl 0x1(%rbx),%eax
  402a2c:	ba 4b 00 00 00       	mov    $0x4b,%edx
  402a31:	29 c2                	sub    %eax,%edx
  402a33:	75 06                	jne    402a3b <submitr+0x766>
  402a35:	0f b6 53 02          	movzbl 0x2(%rbx),%edx
  402a39:	f7 da                	neg    %edx
  402a3b:	89 d0                	mov    %edx,%eax
  402a3d:	f7 d8                	neg    %eax
  402a3f:	0f 84 17 fe ff ff    	je     40285c <submitr+0x587>
  402a45:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402a4a:	e9 0d fe ff ff       	jmpq   40285c <submitr+0x587>

0000000000402a4f <init_timeout>:
  402a4f:	85 ff                	test   %edi,%edi
  402a51:	74 20                	je     402a73 <init_timeout+0x24>
  402a53:	53                   	push   %rbx
  402a54:	89 fb                	mov    %edi,%ebx
  402a56:	85 ff                	test   %edi,%edi
  402a58:	78 1b                	js     402a75 <init_timeout+0x26>
  402a5a:	48 8d 35 05 f6 ff ff 	lea    -0x9fb(%rip),%rsi        # 402066 <sigalrm_handler>
  402a61:	bf 0e 00 00 00       	mov    $0xe,%edi
  402a66:	e8 45 e2 ff ff       	callq  400cb0 <signal@plt>
  402a6b:	89 df                	mov    %ebx,%edi
  402a6d:	e8 0e e2 ff ff       	callq  400c80 <alarm@plt>
  402a72:	5b                   	pop    %rbx
  402a73:	f3 c3                	repz retq 
  402a75:	bb 00 00 00 00       	mov    $0x0,%ebx
  402a7a:	eb de                	jmp    402a5a <init_timeout+0xb>

0000000000402a7c <init_driver>:
  402a7c:	41 54                	push   %r12
  402a7e:	55                   	push   %rbp
  402a7f:	53                   	push   %rbx
  402a80:	48 83 ec 10          	sub    $0x10,%rsp
  402a84:	48 89 fd             	mov    %rdi,%rbp
  402a87:	be 01 00 00 00       	mov    $0x1,%esi
  402a8c:	bf 0d 00 00 00       	mov    $0xd,%edi
  402a91:	e8 1a e2 ff ff       	callq  400cb0 <signal@plt>
  402a96:	be 01 00 00 00       	mov    $0x1,%esi
  402a9b:	bf 1d 00 00 00       	mov    $0x1d,%edi
  402aa0:	e8 0b e2 ff ff       	callq  400cb0 <signal@plt>
  402aa5:	be 01 00 00 00       	mov    $0x1,%esi
  402aaa:	bf 1d 00 00 00       	mov    $0x1d,%edi
  402aaf:	e8 fc e1 ff ff       	callq  400cb0 <signal@plt>
  402ab4:	ba 00 00 00 00       	mov    $0x0,%edx
  402ab9:	be 01 00 00 00       	mov    $0x1,%esi
  402abe:	bf 02 00 00 00       	mov    $0x2,%edi
  402ac3:	e8 08 e3 ff ff       	callq  400dd0 <socket@plt>
  402ac8:	85 c0                	test   %eax,%eax
  402aca:	0f 88 80 00 00 00    	js     402b50 <init_driver+0xd4>
  402ad0:	89 c3                	mov    %eax,%ebx
  402ad2:	48 8d 3d 3c 0a 00 00 	lea    0xa3c(%rip),%rdi        # 403515 <trans_char+0xc5>
  402ad9:	e8 e2 e1 ff ff       	callq  400cc0 <gethostbyname@plt>
  402ade:	48 85 c0             	test   %rax,%rax
  402ae1:	0f 84 b5 00 00 00    	je     402b9c <init_driver+0x120>
  402ae7:	48 c7 04 24 00 00 00 	movq   $0x0,(%rsp)
  402aee:	00 
  402aef:	48 c7 44 24 08 00 00 	movq   $0x0,0x8(%rsp)
  402af6:	00 00 
  402af8:	66 c7 04 24 02 00    	movw   $0x2,(%rsp)
  402afe:	48 8b 48 18          	mov    0x18(%rax),%rcx
  402b02:	48 63 50 14          	movslq 0x14(%rax),%rdx
  402b06:	48 8d 74 24 04       	lea    0x4(%rsp),%rsi
  402b0b:	48 8b 39             	mov    (%rcx),%rdi
  402b0e:	e8 3d e2 ff ff       	callq  400d50 <bcopy@plt>
  402b13:	66 c7 44 24 02 3c a4 	movw   $0xa43c,0x2(%rsp)
  402b1a:	ba 10 00 00 00       	mov    $0x10,%edx
  402b1f:	48 89 e6             	mov    %rsp,%rsi
  402b22:	89 df                	mov    %ebx,%edi
  402b24:	e8 97 e2 ff ff       	callq  400dc0 <connect@plt>
  402b29:	85 c0                	test   %eax,%eax
  402b2b:	0f 88 d3 00 00 00    	js     402c04 <init_driver+0x188>
  402b31:	89 df                	mov    %ebx,%edi
  402b33:	e8 58 e1 ff ff       	callq  400c90 <close@plt>
  402b38:	66 c7 45 00 4f 4b    	movw   $0x4b4f,0x0(%rbp)
  402b3e:	c6 45 02 00          	movb   $0x0,0x2(%rbp)
  402b42:	b8 00 00 00 00       	mov    $0x0,%eax
  402b47:	48 83 c4 10          	add    $0x10,%rsp
  402b4b:	5b                   	pop    %rbx
  402b4c:	5d                   	pop    %rbp
  402b4d:	41 5c                	pop    %r12
  402b4f:	c3                   	retq   
  402b50:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402b57:	3a 20 43 
  402b5a:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402b5e:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  402b65:	20 75 6e 
  402b68:	48 89 45 08          	mov    %rax,0x8(%rbp)
  402b6c:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402b73:	74 6f 20 
  402b76:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402b7a:	48 b8 63 72 65 61 74 	movabs $0x7320657461657263,%rax
  402b81:	65 20 73 
  402b84:	48 89 45 18          	mov    %rax,0x18(%rbp)
  402b88:	c7 45 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%rbp)
  402b8f:	66 c7 45 24 74 00    	movw   $0x74,0x24(%rbp)
  402b95:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402b9a:	eb ab                	jmp    402b47 <init_driver+0xcb>
  402b9c:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
  402ba3:	3a 20 44 
  402ba6:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402baa:	48 b8 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rax
  402bb1:	20 75 6e 
  402bb4:	48 89 45 08          	mov    %rax,0x8(%rbp)
  402bb8:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402bbf:	74 6f 20 
  402bc2:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402bc6:	48 b8 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rax
  402bcd:	76 65 20 
  402bd0:	48 89 45 18          	mov    %rax,0x18(%rbp)
  402bd4:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
  402bdb:	72 20 61 
  402bde:	48 89 45 20          	mov    %rax,0x20(%rbp)
  402be2:	c7 45 28 64 64 72 65 	movl   $0x65726464,0x28(%rbp)
  402be9:	66 c7 45 2c 73 73    	movw   $0x7373,0x2c(%rbp)
  402bef:	c6 45 2e 00          	movb   $0x0,0x2e(%rbp)
  402bf3:	89 df                	mov    %ebx,%edi
  402bf5:	e8 96 e0 ff ff       	callq  400c90 <close@plt>
  402bfa:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402bff:	e9 43 ff ff ff       	jmpq   402b47 <init_driver+0xcb>
  402c04:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
  402c0b:	3a 20 55 
  402c0e:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402c12:	48 b8 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rax
  402c19:	20 74 6f 
  402c1c:	48 89 45 08          	mov    %rax,0x8(%rbp)
  402c20:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
  402c27:	65 63 74 
  402c2a:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402c2e:	48 b8 20 74 6f 20 73 	movabs $0x76726573206f7420,%rax
  402c35:	65 72 76 
  402c38:	48 89 45 18          	mov    %rax,0x18(%rbp)
  402c3c:	66 c7 45 20 65 72    	movw   $0x7265,0x20(%rbp)
  402c42:	c6 45 22 00          	movb   $0x0,0x22(%rbp)
  402c46:	89 df                	mov    %ebx,%edi
  402c48:	e8 43 e0 ff ff       	callq  400c90 <close@plt>
  402c4d:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402c52:	e9 f0 fe ff ff       	jmpq   402b47 <init_driver+0xcb>

0000000000402c57 <driver_post>:
  402c57:	53                   	push   %rbx
  402c58:	4c 89 cb             	mov    %r9,%rbx
  402c5b:	45 85 c0             	test   %r8d,%r8d
  402c5e:	75 18                	jne    402c78 <driver_post+0x21>
  402c60:	48 85 ff             	test   %rdi,%rdi
  402c63:	74 05                	je     402c6a <driver_post+0x13>
  402c65:	80 3f 00             	cmpb   $0x0,(%rdi)
  402c68:	75 32                	jne    402c9c <driver_post+0x45>
  402c6a:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  402c6f:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  402c73:	44 89 c0             	mov    %r8d,%eax
  402c76:	5b                   	pop    %rbx
  402c77:	c3                   	retq   
  402c78:	48 89 ce             	mov    %rcx,%rsi
  402c7b:	48 8d 3d a1 08 00 00 	lea    0x8a1(%rip),%rdi        # 403523 <trans_char+0xd3>
  402c82:	b8 00 00 00 00       	mov    $0x0,%eax
  402c87:	e8 d4 df ff ff       	callq  400c60 <printf@plt>
  402c8c:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  402c91:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  402c95:	b8 00 00 00 00       	mov    $0x0,%eax
  402c9a:	eb da                	jmp    402c76 <driver_post+0x1f>
  402c9c:	48 83 ec 08          	sub    $0x8,%rsp
  402ca0:	41 51                	push   %r9
  402ca2:	49 89 c9             	mov    %rcx,%r9
  402ca5:	49 89 d0             	mov    %rdx,%r8
  402ca8:	48 89 f9             	mov    %rdi,%rcx
  402cab:	48 89 f2             	mov    %rsi,%rdx
  402cae:	be a4 3c 00 00       	mov    $0x3ca4,%esi
  402cb3:	48 8d 3d 5b 08 00 00 	lea    0x85b(%rip),%rdi        # 403515 <trans_char+0xc5>
  402cba:	e8 16 f6 ff ff       	callq  4022d5 <submitr>
  402cbf:	48 83 c4 10          	add    $0x10,%rsp
  402cc3:	eb b1                	jmp    402c76 <driver_post+0x1f>

0000000000402cc5 <check>:
  402cc5:	89 f8                	mov    %edi,%eax
  402cc7:	c1 e8 1c             	shr    $0x1c,%eax
  402cca:	85 c0                	test   %eax,%eax
  402ccc:	74 1d                	je     402ceb <check+0x26>
  402cce:	b9 00 00 00 00       	mov    $0x0,%ecx
  402cd3:	83 f9 1f             	cmp    $0x1f,%ecx
  402cd6:	7f 0d                	jg     402ce5 <check+0x20>
  402cd8:	89 f8                	mov    %edi,%eax
  402cda:	d3 e8                	shr    %cl,%eax
  402cdc:	3c 0a                	cmp    $0xa,%al
  402cde:	74 11                	je     402cf1 <check+0x2c>
  402ce0:	83 c1 08             	add    $0x8,%ecx
  402ce3:	eb ee                	jmp    402cd3 <check+0xe>
  402ce5:	b8 01 00 00 00       	mov    $0x1,%eax
  402cea:	c3                   	retq   
  402ceb:	b8 00 00 00 00       	mov    $0x0,%eax
  402cf0:	c3                   	retq   
  402cf1:	b8 00 00 00 00       	mov    $0x0,%eax
  402cf6:	c3                   	retq   

0000000000402cf7 <gencookie>:
  402cf7:	53                   	push   %rbx
  402cf8:	83 c7 01             	add    $0x1,%edi
  402cfb:	e8 00 df ff ff       	callq  400c00 <srandom@plt>
  402d00:	e8 0b e0 ff ff       	callq  400d10 <random@plt>
  402d05:	89 c3                	mov    %eax,%ebx
  402d07:	89 c7                	mov    %eax,%edi
  402d09:	e8 b7 ff ff ff       	callq  402cc5 <check>
  402d0e:	85 c0                	test   %eax,%eax
  402d10:	74 ee                	je     402d00 <gencookie+0x9>
  402d12:	89 d8                	mov    %ebx,%eax
  402d14:	5b                   	pop    %rbx
  402d15:	c3                   	retq   
  402d16:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  402d1d:	00 00 00 

0000000000402d20 <__libc_csu_init>:
  402d20:	41 57                	push   %r15
  402d22:	41 56                	push   %r14
  402d24:	41 89 ff             	mov    %edi,%r15d
  402d27:	41 55                	push   %r13
  402d29:	41 54                	push   %r12
  402d2b:	4c 8d 25 d6 20 20 00 	lea    0x2020d6(%rip),%r12        # 604e08 <__frame_dummy_init_array_entry>
  402d32:	55                   	push   %rbp
  402d33:	48 8d 2d d6 20 20 00 	lea    0x2020d6(%rip),%rbp        # 604e10 <__init_array_end>
  402d3a:	53                   	push   %rbx
  402d3b:	49 89 f6             	mov    %rsi,%r14
  402d3e:	49 89 d5             	mov    %rdx,%r13
  402d41:	4c 29 e5             	sub    %r12,%rbp
  402d44:	48 83 ec 08          	sub    $0x8,%rsp
  402d48:	48 c1 fd 03          	sar    $0x3,%rbp
  402d4c:	e8 5f de ff ff       	callq  400bb0 <_init>
  402d51:	48 85 ed             	test   %rbp,%rbp
  402d54:	74 20                	je     402d76 <__libc_csu_init+0x56>
  402d56:	31 db                	xor    %ebx,%ebx
  402d58:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  402d5f:	00 
  402d60:	4c 89 ea             	mov    %r13,%rdx
  402d63:	4c 89 f6             	mov    %r14,%rsi
  402d66:	44 89 ff             	mov    %r15d,%edi
  402d69:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  402d6d:	48 83 c3 01          	add    $0x1,%rbx
  402d71:	48 39 dd             	cmp    %rbx,%rbp
  402d74:	75 ea                	jne    402d60 <__libc_csu_init+0x40>
  402d76:	48 83 c4 08          	add    $0x8,%rsp
  402d7a:	5b                   	pop    %rbx
  402d7b:	5d                   	pop    %rbp
  402d7c:	41 5c                	pop    %r12
  402d7e:	41 5d                	pop    %r13
  402d80:	41 5e                	pop    %r14
  402d82:	41 5f                	pop    %r15
  402d84:	c3                   	retq   
  402d85:	90                   	nop
  402d86:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  402d8d:	00 00 00 

0000000000402d90 <__libc_csu_fini>:
  402d90:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000402d94 <_fini>:
  402d94:	48 83 ec 08          	sub    $0x8,%rsp
  402d98:	48 83 c4 08          	add    $0x8,%rsp
  402d9c:	c3                   	retq 