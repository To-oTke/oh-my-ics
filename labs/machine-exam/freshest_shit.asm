objdump -d rtarget

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
  400def:	49 c7 c0 60 2d 40 00 	mov    $0x402d60,%r8
  400df6:	48 c7 c1 f0 2c 40 00 	mov    $0x402cf0,%rcx
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
  400ee6:	48 8d 3d 8b 1e 00 00 	lea    0x1e8b(%rip),%rdi        # 402d78 <_IO_stdin_used+0x8>
  400eed:	b8 00 00 00 00       	mov    $0x0,%eax
  400ef2:	e8 69 fd ff ff       	callq  400c60 <printf@plt>
  400ef7:	48 8d 3d b2 1e 00 00 	lea    0x1eb2(%rip),%rdi        # 402db0 <_IO_stdin_used+0x40>
  400efe:	e8 2d fd ff ff       	callq  400c30 <puts@plt>
  400f03:	48 8d 3d de 1f 00 00 	lea    0x1fde(%rip),%rdi        # 402ee8 <_IO_stdin_used+0x178>
  400f0a:	e8 21 fd ff ff       	callq  400c30 <puts@plt>
  400f0f:	48 8d 3d c2 1e 00 00 	lea    0x1ec2(%rip),%rdi        # 402dd8 <_IO_stdin_used+0x68>
  400f16:	e8 15 fd ff ff       	callq  400c30 <puts@plt>
  400f1b:	48 8d 3d e0 1f 00 00 	lea    0x1fe0(%rip),%rdi        # 402f02 <_IO_stdin_used+0x192>
  400f22:	e8 09 fd ff ff       	callq  400c30 <puts@plt>
  400f27:	bf 00 00 00 00       	mov    $0x0,%edi
  400f2c:	e8 7f fe ff ff       	callq  400db0 <exit@plt>
  400f31:	48 8d 3d e6 1f 00 00 	lea    0x1fe6(%rip),%rdi        # 402f1e <_IO_stdin_used+0x1ae>
  400f38:	b8 00 00 00 00       	mov    $0x0,%eax
  400f3d:	e8 1e fd ff ff       	callq  400c60 <printf@plt>
  400f42:	48 8d 3d b7 1e 00 00 	lea    0x1eb7(%rip),%rdi        # 402e00 <_IO_stdin_used+0x90>
  400f49:	e8 e2 fc ff ff       	callq  400c30 <puts@plt>
  400f4e:	48 8d 3d d3 1e 00 00 	lea    0x1ed3(%rip),%rdi        # 402e28 <_IO_stdin_used+0xb8>
  400f55:	e8 d6 fc ff ff       	callq  400c30 <puts@plt>
  400f5a:	48 8d 3d db 1f 00 00 	lea    0x1fdb(%rip),%rdi        # 402f3c <_IO_stdin_used+0x1cc>
  400f61:	e8 ca fc ff ff       	callq  400c30 <puts@plt>
  400f66:	eb bf                	jmp    400f27 <usage+0x51>

0000000000400f68 <initialize_target>:
  400f68:	55                   	push   %rbp
  400f69:	53                   	push   %rbx
  400f6a:	48 81 ec 08 21 00 00 	sub    $0x2108,%rsp
  400f71:	89 f5                	mov    %esi,%ebp
  400f73:	89 3d 7f 45 20 00    	mov    %edi,0x20457f(%rip)        # 6054f8 <check_level>
  400f79:	8b 3d b1 41 20 00    	mov    0x2041b1(%rip),%edi        # 605130 <target_id>
  400f7f:	e8 4c 1d 00 00       	callq  402cd0 <gencookie>
  400f84:	89 05 7a 45 20 00    	mov    %eax,0x20457a(%rip)        # 605504 <cookie>
  400f8a:	89 c7                	mov    %eax,%edi
  400f8c:	e8 3f 1d 00 00       	callq  402cd0 <gencookie>
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
  401043:	48 8d 3d 0e 1e 00 00 	lea    0x1e0e(%rip),%rdi        # 402e58 <_IO_stdin_used+0xe8>
  40104a:	e8 e1 fb ff ff       	callq  400c30 <puts@plt>
  40104f:	bf 08 00 00 00       	mov    $0x8,%edi
  401054:	e8 57 fd ff ff       	callq  400db0 <exit@plt>
  401059:	48 8d bc 24 00 01 00 	lea    0x100(%rsp),%rdi
  401060:	00 
  401061:	e8 ef 19 00 00       	callq  402a55 <init_driver>
  401066:	85 c0                	test   %eax,%eax
  401068:	79 80                	jns    400fea <initialize_target+0x82>
  40106a:	48 8d b4 24 00 01 00 	lea    0x100(%rsp),%rsi
  401071:	00 
  401072:	48 8d 3d 17 1e 00 00 	lea    0x1e17(%rip),%rdi        # 402e90 <_IO_stdin_used+0x120>
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
  40109b:	48 c7 c6 fb 1d 40 00 	mov    $0x401dfb,%rsi
  4010a2:	bf 0b 00 00 00       	mov    $0xb,%edi
  4010a7:	e8 04 fc ff ff       	callq  400cb0 <signal@plt>
  4010ac:	48 c7 c6 a7 1d 40 00 	mov    $0x401da7,%rsi
  4010b3:	bf 07 00 00 00       	mov    $0x7,%edi
  4010b8:	e8 f3 fb ff ff       	callq  400cb0 <signal@plt>
  4010bd:	48 c7 c6 4f 1e 40 00 	mov    $0x401e4f,%rsi
  4010c4:	bf 04 00 00 00       	mov    $0x4,%edi
  4010c9:	e8 e2 fb ff ff       	callq  400cb0 <signal@plt>
  4010ce:	83 3d 33 44 20 00 00 	cmpl   $0x0,0x204433(%rip)        # 605508 <is_checker>
  4010d5:	75 58                	jne    40112f <main+0xa2>
  4010d7:	48 8d 2d 77 1e 00 00 	lea    0x1e77(%rip),%rbp        # 402f55 <_IO_stdin_used+0x1e5>
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
  40111f:	48 8d 15 7a 1e 00 00 	lea    0x1e7a(%rip),%rdx        # 402fa0 <_IO_stdin_used+0x230>
  401126:	48 63 04 82          	movslq (%rdx,%rax,4),%rax
  40112a:	48 01 d0             	add    %rdx,%rax
  40112d:	ff e0                	jmpq   *%rax
  40112f:	48 c7 c6 a3 1e 40 00 	mov    $0x401ea3,%rsi
  401136:	bf 0e 00 00 00       	mov    $0xe,%edi
  40113b:	e8 70 fb ff ff       	callq  400cb0 <signal@plt>
  401140:	bf 05 00 00 00       	mov    $0x5,%edi
  401145:	e8 36 fb ff ff       	callq  400c80 <alarm@plt>
  40114a:	48 8d 2d 09 1e 00 00 	lea    0x1e09(%rip),%rbp        # 402f5a <_IO_stdin_used+0x1ea>
  401151:	eb 8b                	jmp    4010de <main+0x51>
  401153:	48 8b 3b             	mov    (%rbx),%rdi
  401156:	e8 7b fd ff ff       	callq  400ed6 <usage>
  40115b:	48 8d 35 83 20 00 00 	lea    0x2083(%rip),%rsi        # 4031e5 <_IO_stdin_used+0x475>
  401162:	48 8b 3d 3f 43 20 00 	mov    0x20433f(%rip),%rdi        # 6054a8 <optarg@@GLIBC_2.2.5>
  401169:	e8 f2 fb ff ff       	callq  400d60 <fopen@plt>
  40116e:	48 89 05 7b 43 20 00 	mov    %rax,0x20437b(%rip)        # 6054f0 <infile>
  401175:	48 85 c0             	test   %rax,%rax
  401178:	0f 85 7a ff ff ff    	jne    4010f8 <main+0x6b>
  40117e:	48 8b 15 23 43 20 00 	mov    0x204323(%rip),%rdx        # 6054a8 <optarg@@GLIBC_2.2.5>
  401185:	48 8d 35 d6 1d 00 00 	lea    0x1dd6(%rip),%rsi        # 402f62 <_IO_stdin_used+0x1f2>
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
  4011ed:	48 8d 3d 8b 1d 00 00 	lea    0x1d8b(%rip),%rdi        # 402f7f <_IO_stdin_used+0x20f>
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
  401228:	48 8d 3d 89 1c 00 00 	lea    0x1c89(%rip),%rdi        # 402eb8 <_IO_stdin_used+0x148>
  40122f:	b8 00 00 00 00       	mov    $0x0,%eax
  401234:	e8 27 fa ff ff       	callq  400c60 <printf@plt>
  401239:	b8 00 00 00 00       	mov    $0x0,%eax
  40123e:	e8 34 08 00 00       	callq  401a77 <check_fail>
  401243:	8b 35 bb 42 20 00    	mov    0x2042bb(%rip),%esi        # 605504 <cookie>
  401249:	48 8d 3d 42 1d 00 00 	lea    0x1d42(%rip),%rdi        # 402f92 <_IO_stdin_used+0x222>
  401250:	b8 00 00 00 00       	mov    $0x0,%eax
  401255:	e8 06 fa ff ff       	callq  400c60 <printf@plt>
  40125a:	48 8b 3d 1f 42 20 00 	mov    0x20421f(%rip),%rdi        # 605480 <buf_offset>
  401261:	e8 8f 0c 00 00       	callq  401ef5 <launch>
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
  40127b:	69 d0 fc 48 00 00    	imul   $0x48fc,%eax,%edx
  401281:	01 fa                	add    %edi,%edx
  401283:	89 c1                	mov    %eax,%ecx
  401285:	89 54 8c d0          	mov    %edx,-0x30(%rsp,%rcx,4)
  401289:	83 c0 01             	add    $0x1,%eax
  40128c:	83 f8 09             	cmp    $0x9,%eax
  40128f:	76 ea                	jbe    40127b <scramble+0x7>
  401291:	8b 44 24 ec          	mov    -0x14(%rsp),%eax
  401295:	69 c0 b2 bf 00 00    	imul   $0xbfb2,%eax,%eax
  40129b:	89 44 24 ec          	mov    %eax,-0x14(%rsp)
  40129f:	8b 44 24 d8          	mov    -0x28(%rsp),%eax
  4012a3:	69 c0 01 fc 00 00    	imul   $0xfc01,%eax,%eax
  4012a9:	89 44 24 d8          	mov    %eax,-0x28(%rsp)
  4012ad:	8b 44 24 f4          	mov    -0xc(%rsp),%eax
  4012b1:	69 c0 d6 be 00 00    	imul   $0xbed6,%eax,%eax
  4012b7:	89 44 24 f4          	mov    %eax,-0xc(%rsp)
  4012bb:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  4012bf:	69 c0 d1 c6 00 00    	imul   $0xc6d1,%eax,%eax
  4012c5:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  4012c9:	8b 44 24 dc          	mov    -0x24(%rsp),%eax
  4012cd:	69 c0 9a 95 00 00    	imul   $0x959a,%eax,%eax
  4012d3:	89 44 24 dc          	mov    %eax,-0x24(%rsp)
  4012d7:	8b 44 24 dc          	mov    -0x24(%rsp),%eax
  4012db:	69 c0 8a ee 00 00    	imul   $0xee8a,%eax,%eax
  4012e1:	89 44 24 dc          	mov    %eax,-0x24(%rsp)
  4012e5:	8b 44 24 d8          	mov    -0x28(%rsp),%eax
  4012e9:	69 c0 eb 3f 00 00    	imul   $0x3feb,%eax,%eax
  4012ef:	89 44 24 d8          	mov    %eax,-0x28(%rsp)
  4012f3:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  4012f7:	69 c0 3e 78 00 00    	imul   $0x783e,%eax,%eax
  4012fd:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  401301:	8b 44 24 e4          	mov    -0x1c(%rsp),%eax
  401305:	69 c0 da 3e 00 00    	imul   $0x3eda,%eax,%eax
  40130b:	89 44 24 e4          	mov    %eax,-0x1c(%rsp)
  40130f:	8b 44 24 d0          	mov    -0x30(%rsp),%eax
  401313:	69 c0 8f b5 00 00    	imul   $0xb58f,%eax,%eax
  401319:	89 44 24 d0          	mov    %eax,-0x30(%rsp)
  40131d:	8b 44 24 e0          	mov    -0x20(%rsp),%eax
  401321:	69 c0 6c 23 00 00    	imul   $0x236c,%eax,%eax
  401327:	89 44 24 e0          	mov    %eax,-0x20(%rsp)
  40132b:	8b 44 24 f4          	mov    -0xc(%rsp),%eax
  40132f:	69 c0 6e d0 00 00    	imul   $0xd06e,%eax,%eax
  401335:	89 44 24 f4          	mov    %eax,-0xc(%rsp)
  401339:	8b 44 24 d8          	mov    -0x28(%rsp),%eax
  40133d:	69 c0 40 e3 00 00    	imul   $0xe340,%eax,%eax
  401343:	89 44 24 d8          	mov    %eax,-0x28(%rsp)
  401347:	8b 44 24 d8          	mov    -0x28(%rsp),%eax
  40134b:	69 c0 cd 2d 00 00    	imul   $0x2dcd,%eax,%eax
  401351:	89 44 24 d8          	mov    %eax,-0x28(%rsp)
  401355:	8b 44 24 d8          	mov    -0x28(%rsp),%eax
  401359:	69 c0 8c f4 00 00    	imul   $0xf48c,%eax,%eax
  40135f:	89 44 24 d8          	mov    %eax,-0x28(%rsp)
  401363:	8b 44 24 e0          	mov    -0x20(%rsp),%eax
  401367:	69 c0 bc ae 00 00    	imul   $0xaebc,%eax,%eax
  40136d:	89 44 24 e0          	mov    %eax,-0x20(%rsp)
  401371:	8b 44 24 d4          	mov    -0x2c(%rsp),%eax
  401375:	69 c0 03 ae 00 00    	imul   $0xae03,%eax,%eax
  40137b:	89 44 24 d4          	mov    %eax,-0x2c(%rsp)
  40137f:	8b 44 24 f0          	mov    -0x10(%rsp),%eax
  401383:	69 c0 ef 00 00 00    	imul   $0xef,%eax,%eax
  401389:	89 44 24 f0          	mov    %eax,-0x10(%rsp)
  40138d:	8b 44 24 d0          	mov    -0x30(%rsp),%eax
  401391:	69 c0 64 0a 00 00    	imul   $0xa64,%eax,%eax
  401397:	89 44 24 d0          	mov    %eax,-0x30(%rsp)
  40139b:	8b 44 24 d0          	mov    -0x30(%rsp),%eax
  40139f:	69 c0 d2 27 00 00    	imul   $0x27d2,%eax,%eax
  4013a5:	89 44 24 d0          	mov    %eax,-0x30(%rsp)
  4013a9:	8b 44 24 d8          	mov    -0x28(%rsp),%eax
  4013ad:	69 c0 b3 f2 00 00    	imul   $0xf2b3,%eax,%eax
  4013b3:	89 44 24 d8          	mov    %eax,-0x28(%rsp)
  4013b7:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  4013bb:	69 c0 78 94 00 00    	imul   $0x9478,%eax,%eax
  4013c1:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  4013c5:	8b 44 24 f0          	mov    -0x10(%rsp),%eax
  4013c9:	69 c0 9e da 00 00    	imul   $0xda9e,%eax,%eax
  4013cf:	89 44 24 f0          	mov    %eax,-0x10(%rsp)
  4013d3:	8b 44 24 f0          	mov    -0x10(%rsp),%eax
  4013d7:	69 c0 48 c7 00 00    	imul   $0xc748,%eax,%eax
  4013dd:	89 44 24 f0          	mov    %eax,-0x10(%rsp)
  4013e1:	8b 44 24 f4          	mov    -0xc(%rsp),%eax
  4013e5:	69 c0 db d4 00 00    	imul   $0xd4db,%eax,%eax
  4013eb:	89 44 24 f4          	mov    %eax,-0xc(%rsp)
  4013ef:	8b 44 24 d4          	mov    -0x2c(%rsp),%eax
  4013f3:	69 c0 28 54 00 00    	imul   $0x5428,%eax,%eax
  4013f9:	89 44 24 d4          	mov    %eax,-0x2c(%rsp)
  4013fd:	8b 44 24 dc          	mov    -0x24(%rsp),%eax
  401401:	69 c0 94 d6 00 00    	imul   $0xd694,%eax,%eax
  401407:	89 44 24 dc          	mov    %eax,-0x24(%rsp)
  40140b:	8b 44 24 f0          	mov    -0x10(%rsp),%eax
  40140f:	69 c0 ee e2 00 00    	imul   $0xe2ee,%eax,%eax
  401415:	89 44 24 f0          	mov    %eax,-0x10(%rsp)
  401419:	8b 44 24 d8          	mov    -0x28(%rsp),%eax
  40141d:	69 c0 9f 39 00 00    	imul   $0x399f,%eax,%eax
  401423:	89 44 24 d8          	mov    %eax,-0x28(%rsp)
  401427:	8b 44 24 e4          	mov    -0x1c(%rsp),%eax
  40142b:	69 c0 94 1f 00 00    	imul   $0x1f94,%eax,%eax
  401431:	89 44 24 e4          	mov    %eax,-0x1c(%rsp)
  401435:	8b 44 24 d8          	mov    -0x28(%rsp),%eax
  401439:	69 c0 8e 42 00 00    	imul   $0x428e,%eax,%eax
  40143f:	89 44 24 d8          	mov    %eax,-0x28(%rsp)
  401443:	8b 44 24 e4          	mov    -0x1c(%rsp),%eax
  401447:	69 c0 69 e2 00 00    	imul   $0xe269,%eax,%eax
  40144d:	89 44 24 e4          	mov    %eax,-0x1c(%rsp)
  401451:	8b 44 24 f0          	mov    -0x10(%rsp),%eax
  401455:	69 c0 0d 79 00 00    	imul   $0x790d,%eax,%eax
  40145b:	89 44 24 f0          	mov    %eax,-0x10(%rsp)
  40145f:	8b 44 24 f0          	mov    -0x10(%rsp),%eax
  401463:	69 c0 6b 5d 00 00    	imul   $0x5d6b,%eax,%eax
  401469:	89 44 24 f0          	mov    %eax,-0x10(%rsp)
  40146d:	8b 44 24 ec          	mov    -0x14(%rsp),%eax
  401471:	69 c0 18 ab 00 00    	imul   $0xab18,%eax,%eax
  401477:	89 44 24 ec          	mov    %eax,-0x14(%rsp)
  40147b:	8b 44 24 dc          	mov    -0x24(%rsp),%eax
  40147f:	69 c0 70 23 00 00    	imul   $0x2370,%eax,%eax
  401485:	89 44 24 dc          	mov    %eax,-0x24(%rsp)
  401489:	8b 44 24 e0          	mov    -0x20(%rsp),%eax
  40148d:	69 c0 9a 9b 00 00    	imul   $0x9b9a,%eax,%eax
  401493:	89 44 24 e0          	mov    %eax,-0x20(%rsp)
  401497:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  40149b:	69 c0 6a d0 00 00    	imul   $0xd06a,%eax,%eax
  4014a1:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  4014a5:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  4014a9:	69 c0 9e c4 00 00    	imul   $0xc49e,%eax,%eax
  4014af:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  4014b3:	8b 44 24 d4          	mov    -0x2c(%rsp),%eax
  4014b7:	69 c0 b1 8f 00 00    	imul   $0x8fb1,%eax,%eax
  4014bd:	89 44 24 d4          	mov    %eax,-0x2c(%rsp)
  4014c1:	8b 44 24 e4          	mov    -0x1c(%rsp),%eax
  4014c5:	69 c0 8a 14 00 00    	imul   $0x148a,%eax,%eax
  4014cb:	89 44 24 e4          	mov    %eax,-0x1c(%rsp)
  4014cf:	8b 44 24 d8          	mov    -0x28(%rsp),%eax
  4014d3:	69 c0 c1 91 00 00    	imul   $0x91c1,%eax,%eax
  4014d9:	89 44 24 d8          	mov    %eax,-0x28(%rsp)
  4014dd:	8b 44 24 ec          	mov    -0x14(%rsp),%eax
  4014e1:	69 c0 70 08 00 00    	imul   $0x870,%eax,%eax
  4014e7:	89 44 24 ec          	mov    %eax,-0x14(%rsp)
  4014eb:	8b 44 24 e4          	mov    -0x1c(%rsp),%eax
  4014ef:	69 c0 f2 a4 00 00    	imul   $0xa4f2,%eax,%eax
  4014f5:	89 44 24 e4          	mov    %eax,-0x1c(%rsp)
  4014f9:	8b 44 24 dc          	mov    -0x24(%rsp),%eax
  4014fd:	69 c0 6b 85 00 00    	imul   $0x856b,%eax,%eax
  401503:	89 44 24 dc          	mov    %eax,-0x24(%rsp)
  401507:	8b 44 24 e4          	mov    -0x1c(%rsp),%eax
  40150b:	69 c0 3a 70 00 00    	imul   $0x703a,%eax,%eax
  401511:	89 44 24 e4          	mov    %eax,-0x1c(%rsp)
  401515:	8b 44 24 d8          	mov    -0x28(%rsp),%eax
  401519:	69 c0 d7 92 00 00    	imul   $0x92d7,%eax,%eax
  40151f:	89 44 24 d8          	mov    %eax,-0x28(%rsp)
  401523:	8b 44 24 dc          	mov    -0x24(%rsp),%eax
  401527:	69 c0 8b b8 00 00    	imul   $0xb88b,%eax,%eax
  40152d:	89 44 24 dc          	mov    %eax,-0x24(%rsp)
  401531:	8b 44 24 e0          	mov    -0x20(%rsp),%eax
  401535:	69 c0 fc 35 00 00    	imul   $0x35fc,%eax,%eax
  40153b:	89 44 24 e0          	mov    %eax,-0x20(%rsp)
  40153f:	8b 44 24 d4          	mov    -0x2c(%rsp),%eax
  401543:	69 c0 57 8f 00 00    	imul   $0x8f57,%eax,%eax
  401549:	89 44 24 d4          	mov    %eax,-0x2c(%rsp)
  40154d:	8b 44 24 dc          	mov    -0x24(%rsp),%eax
  401551:	69 c0 34 9b 00 00    	imul   $0x9b34,%eax,%eax
  401557:	89 44 24 dc          	mov    %eax,-0x24(%rsp)
  40155b:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  40155f:	69 c0 e0 7e 00 00    	imul   $0x7ee0,%eax,%eax
  401565:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  401569:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  40156d:	69 c0 b0 6a 00 00    	imul   $0x6ab0,%eax,%eax
  401573:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  401577:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  40157b:	69 c0 06 ad 00 00    	imul   $0xad06,%eax,%eax
  401581:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  401585:	8b 44 24 d4          	mov    -0x2c(%rsp),%eax
  401589:	69 c0 fd e6 00 00    	imul   $0xe6fd,%eax,%eax
  40158f:	89 44 24 d4          	mov    %eax,-0x2c(%rsp)
  401593:	8b 44 24 d4          	mov    -0x2c(%rsp),%eax
  401597:	69 c0 c8 c8 00 00    	imul   $0xc8c8,%eax,%eax
  40159d:	89 44 24 d4          	mov    %eax,-0x2c(%rsp)
  4015a1:	8b 44 24 e4          	mov    -0x1c(%rsp),%eax
  4015a5:	69 c0 91 20 00 00    	imul   $0x2091,%eax,%eax
  4015ab:	89 44 24 e4          	mov    %eax,-0x1c(%rsp)
  4015af:	8b 44 24 f4          	mov    -0xc(%rsp),%eax
  4015b3:	69 c0 a5 e6 00 00    	imul   $0xe6a5,%eax,%eax
  4015b9:	89 44 24 f4          	mov    %eax,-0xc(%rsp)
  4015bd:	8b 44 24 dc          	mov    -0x24(%rsp),%eax
  4015c1:	69 c0 38 cf 00 00    	imul   $0xcf38,%eax,%eax
  4015c7:	89 44 24 dc          	mov    %eax,-0x24(%rsp)
  4015cb:	8b 44 24 e0          	mov    -0x20(%rsp),%eax
  4015cf:	69 c0 11 6b 00 00    	imul   $0x6b11,%eax,%eax
  4015d5:	89 44 24 e0          	mov    %eax,-0x20(%rsp)
  4015d9:	8b 44 24 f4          	mov    -0xc(%rsp),%eax
  4015dd:	69 c0 1e 50 00 00    	imul   $0x501e,%eax,%eax
  4015e3:	89 44 24 f4          	mov    %eax,-0xc(%rsp)
  4015e7:	8b 44 24 e0          	mov    -0x20(%rsp),%eax
  4015eb:	69 c0 9d 1c 00 00    	imul   $0x1c9d,%eax,%eax
  4015f1:	89 44 24 e0          	mov    %eax,-0x20(%rsp)
  4015f5:	8b 44 24 d8          	mov    -0x28(%rsp),%eax
  4015f9:	69 c0 ef 2d 00 00    	imul   $0x2def,%eax,%eax
  4015ff:	89 44 24 d8          	mov    %eax,-0x28(%rsp)
  401603:	8b 44 24 e0          	mov    -0x20(%rsp),%eax
  401607:	69 c0 db ee 00 00    	imul   $0xeedb,%eax,%eax
  40160d:	89 44 24 e0          	mov    %eax,-0x20(%rsp)
  401611:	8b 44 24 d8          	mov    -0x28(%rsp),%eax
  401615:	69 c0 1f eb 00 00    	imul   $0xeb1f,%eax,%eax
  40161b:	89 44 24 d8          	mov    %eax,-0x28(%rsp)
  40161f:	8b 44 24 d4          	mov    -0x2c(%rsp),%eax
  401623:	69 c0 01 45 00 00    	imul   $0x4501,%eax,%eax
  401629:	89 44 24 d4          	mov    %eax,-0x2c(%rsp)
  40162d:	8b 44 24 d4          	mov    -0x2c(%rsp),%eax
  401631:	69 c0 f9 30 00 00    	imul   $0x30f9,%eax,%eax
  401637:	89 44 24 d4          	mov    %eax,-0x2c(%rsp)
  40163b:	8b 44 24 f4          	mov    -0xc(%rsp),%eax
  40163f:	69 c0 21 bd 00 00    	imul   $0xbd21,%eax,%eax
  401645:	89 44 24 f4          	mov    %eax,-0xc(%rsp)
  401649:	8b 44 24 dc          	mov    -0x24(%rsp),%eax
  40164d:	69 c0 2c 13 00 00    	imul   $0x132c,%eax,%eax
  401653:	89 44 24 dc          	mov    %eax,-0x24(%rsp)
  401657:	8b 44 24 e4          	mov    -0x1c(%rsp),%eax
  40165b:	69 c0 f8 ca 00 00    	imul   $0xcaf8,%eax,%eax
  401661:	89 44 24 e4          	mov    %eax,-0x1c(%rsp)
  401665:	8b 44 24 f0          	mov    -0x10(%rsp),%eax
  401669:	69 c0 df a6 00 00    	imul   $0xa6df,%eax,%eax
  40166f:	89 44 24 f0          	mov    %eax,-0x10(%rsp)
  401673:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  401677:	69 c0 b0 f5 00 00    	imul   $0xf5b0,%eax,%eax
  40167d:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  401681:	8b 44 24 d4          	mov    -0x2c(%rsp),%eax
  401685:	69 c0 49 ee 00 00    	imul   $0xee49,%eax,%eax
  40168b:	89 44 24 d4          	mov    %eax,-0x2c(%rsp)
  40168f:	8b 44 24 ec          	mov    -0x14(%rsp),%eax
  401693:	69 c0 71 f0 00 00    	imul   $0xf071,%eax,%eax
  401699:	89 44 24 ec          	mov    %eax,-0x14(%rsp)
  40169d:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  4016a1:	69 c0 ec 67 00 00    	imul   $0x67ec,%eax,%eax
  4016a7:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  4016ab:	8b 44 24 d4          	mov    -0x2c(%rsp),%eax
  4016af:	69 c0 25 12 00 00    	imul   $0x1225,%eax,%eax
  4016b5:	89 44 24 d4          	mov    %eax,-0x2c(%rsp)
  4016b9:	8b 44 24 dc          	mov    -0x24(%rsp),%eax
  4016bd:	69 c0 ce 36 00 00    	imul   $0x36ce,%eax,%eax
  4016c3:	89 44 24 dc          	mov    %eax,-0x24(%rsp)
  4016c7:	8b 44 24 ec          	mov    -0x14(%rsp),%eax
  4016cb:	69 c0 01 9b 00 00    	imul   $0x9b01,%eax,%eax
  4016d1:	89 44 24 ec          	mov    %eax,-0x14(%rsp)
  4016d5:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  4016d9:	69 c0 eb 03 00 00    	imul   $0x3eb,%eax,%eax
  4016df:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  4016e3:	8b 44 24 e0          	mov    -0x20(%rsp),%eax
  4016e7:	69 c0 a9 c8 00 00    	imul   $0xc8a9,%eax,%eax
  4016ed:	89 44 24 e0          	mov    %eax,-0x20(%rsp)
  4016f1:	8b 44 24 f0          	mov    -0x10(%rsp),%eax
  4016f5:	69 c0 0e 08 00 00    	imul   $0x80e,%eax,%eax
  4016fb:	89 44 24 f0          	mov    %eax,-0x10(%rsp)
  4016ff:	8b 44 24 f4          	mov    -0xc(%rsp),%eax
  401703:	69 c0 5d 75 00 00    	imul   $0x755d,%eax,%eax
  401709:	89 44 24 f4          	mov    %eax,-0xc(%rsp)
  40170d:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  401711:	69 c0 8c d1 00 00    	imul   $0xd18c,%eax,%eax
  401717:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  40171b:	ba 00 00 00 00       	mov    $0x0,%edx
  401720:	b8 00 00 00 00       	mov    $0x0,%eax
  401725:	eb 0b                	jmp    401732 <scramble+0x4be>
  401727:	89 d1                	mov    %edx,%ecx
  401729:	8b 4c 8c d0          	mov    -0x30(%rsp,%rcx,4),%ecx
  40172d:	01 c8                	add    %ecx,%eax
  40172f:	83 c2 01             	add    $0x1,%edx
  401732:	83 fa 09             	cmp    $0x9,%edx
  401735:	76 f0                	jbe    401727 <scramble+0x4b3>
  401737:	f3 c3                	repz retq 

0000000000401739 <getbuf>:
  401739:	48 83 ec 18          	sub    $0x18,%rsp
  40173d:	48 89 e7             	mov    %rsp,%rdi
  401740:	e8 65 03 00 00       	callq  401aaa <Gets>
  401745:	b8 01 00 00 00       	mov    $0x1,%eax
  40174a:	48 83 c4 18          	add    $0x18,%rsp
  40174e:	c3                   	retq   

000000000040174f <touch1>:
  40174f:	48 83 ec 08          	sub    $0x8,%rsp
  401753:	c7 05 9f 3d 20 00 01 	movl   $0x1,0x203d9f(%rip)        # 6054fc <vlevel>
  40175a:	00 00 00 
  40175d:	48 8d 3d da 18 00 00 	lea    0x18da(%rip),%rdi        # 40303e <_IO_stdin_used+0x2ce>
  401764:	e8 c7 f4 ff ff       	callq  400c30 <puts@plt>
  401769:	bf 01 00 00 00       	mov    $0x1,%edi
  40176e:	e8 4e 05 00 00       	callq  401cc1 <validate>
  401773:	bf 00 00 00 00       	mov    $0x0,%edi
  401778:	e8 33 f6 ff ff       	callq  400db0 <exit@plt>

000000000040177d <touch2>:
  40177d:	48 83 ec 08          	sub    $0x8,%rsp
  401781:	89 fe                	mov    %edi,%esi
  401783:	c7 05 6f 3d 20 00 02 	movl   $0x2,0x203d6f(%rip)        # 6054fc <vlevel>
  40178a:	00 00 00 
  40178d:	39 3d 71 3d 20 00    	cmp    %edi,0x203d71(%rip)        # 605504 <cookie>
  401793:	74 25                	je     4017ba <touch2+0x3d>
  401795:	48 8d 3d ec 18 00 00 	lea    0x18ec(%rip),%rdi        # 403088 <_IO_stdin_used+0x318>
  40179c:	b8 00 00 00 00       	mov    $0x0,%eax
  4017a1:	e8 ba f4 ff ff       	callq  400c60 <printf@plt>
  4017a6:	bf 02 00 00 00       	mov    $0x2,%edi
  4017ab:	e8 cf 05 00 00       	callq  401d7f <fail>
  4017b0:	bf 00 00 00 00       	mov    $0x0,%edi
  4017b5:	e8 f6 f5 ff ff       	callq  400db0 <exit@plt>
  4017ba:	48 8d 3d 9f 18 00 00 	lea    0x189f(%rip),%rdi        # 403060 <_IO_stdin_used+0x2f0>
  4017c1:	b8 00 00 00 00       	mov    $0x0,%eax
  4017c6:	e8 95 f4 ff ff       	callq  400c60 <printf@plt>
  4017cb:	bf 02 00 00 00       	mov    $0x2,%edi
  4017d0:	e8 ec 04 00 00       	callq  401cc1 <validate>
  4017d5:	eb d9                	jmp    4017b0 <touch2+0x33>

00000000004017d7 <hexmatch>:
  4017d7:	41 54                	push   %r12
  4017d9:	55                   	push   %rbp
  4017da:	53                   	push   %rbx
  4017db:	48 83 ec 70          	sub    $0x70,%rsp
  4017df:	89 fd                	mov    %edi,%ebp
  4017e1:	48 89 f3             	mov    %rsi,%rbx
  4017e4:	e8 27 f5 ff ff       	callq  400d10 <random@plt>
  4017e9:	48 89 c1             	mov    %rax,%rcx
  4017ec:	48 ba 0b d7 a3 70 3d 	movabs $0xa3d70a3d70a3d70b,%rdx
  4017f3:	0a d7 a3 
  4017f6:	48 f7 ea             	imul   %rdx
  4017f9:	48 01 ca             	add    %rcx,%rdx
  4017fc:	48 c1 fa 06          	sar    $0x6,%rdx
  401800:	48 89 c8             	mov    %rcx,%rax
  401803:	48 c1 f8 3f          	sar    $0x3f,%rax
  401807:	48 29 c2             	sub    %rax,%rdx
  40180a:	48 8d 04 92          	lea    (%rdx,%rdx,4),%rax
  40180e:	48 8d 14 80          	lea    (%rax,%rax,4),%rdx
  401812:	48 8d 04 95 00 00 00 	lea    0x0(,%rdx,4),%rax
  401819:	00 
  40181a:	48 29 c1             	sub    %rax,%rcx
  40181d:	4c 8d 24 0c          	lea    (%rsp,%rcx,1),%r12
  401821:	89 ea                	mov    %ebp,%edx
  401823:	48 8d 35 31 18 00 00 	lea    0x1831(%rip),%rsi        # 40305b <_IO_stdin_used+0x2eb>
  40182a:	4c 89 e7             	mov    %r12,%rdi
  40182d:	b8 00 00 00 00       	mov    $0x0,%eax
  401832:	e8 69 f5 ff ff       	callq  400da0 <sprintf@plt>
  401837:	ba 09 00 00 00       	mov    $0x9,%edx
  40183c:	4c 89 e6             	mov    %r12,%rsi
  40183f:	48 89 df             	mov    %rbx,%rdi
  401842:	e8 c9 f3 ff ff       	callq  400c10 <strncmp@plt>
  401847:	85 c0                	test   %eax,%eax
  401849:	0f 94 c0             	sete   %al
  40184c:	0f b6 c0             	movzbl %al,%eax
  40184f:	48 83 c4 70          	add    $0x70,%rsp
  401853:	5b                   	pop    %rbx
  401854:	5d                   	pop    %rbp
  401855:	41 5c                	pop    %r12
  401857:	c3                   	retq   

0000000000401858 <touch3>:
  401858:	53                   	push   %rbx
  401859:	48 89 fb             	mov    %rdi,%rbx
  40185c:	c7 05 96 3c 20 00 03 	movl   $0x3,0x203c96(%rip)        # 6054fc <vlevel>
  401863:	00 00 00 
  401866:	48 89 fe             	mov    %rdi,%rsi
  401869:	8b 3d 95 3c 20 00    	mov    0x203c95(%rip),%edi        # 605504 <cookie>
  40186f:	e8 63 ff ff ff       	callq  4017d7 <hexmatch>
  401874:	85 c0                	test   %eax,%eax
  401876:	74 28                	je     4018a0 <touch3+0x48>
  401878:	48 89 de             	mov    %rbx,%rsi
  40187b:	48 8d 3d 2e 18 00 00 	lea    0x182e(%rip),%rdi        # 4030b0 <_IO_stdin_used+0x340>
  401882:	b8 00 00 00 00       	mov    $0x0,%eax
  401887:	e8 d4 f3 ff ff       	callq  400c60 <printf@plt>
  40188c:	bf 03 00 00 00       	mov    $0x3,%edi
  401891:	e8 2b 04 00 00       	callq  401cc1 <validate>
  401896:	bf 00 00 00 00       	mov    $0x0,%edi
  40189b:	e8 10 f5 ff ff       	callq  400db0 <exit@plt>
  4018a0:	48 89 de             	mov    %rbx,%rsi
  4018a3:	48 8d 3d 2e 18 00 00 	lea    0x182e(%rip),%rdi        # 4030d8 <_IO_stdin_used+0x368>
  4018aa:	b8 00 00 00 00       	mov    $0x0,%eax
  4018af:	e8 ac f3 ff ff       	callq  400c60 <printf@plt>
  4018b4:	bf 03 00 00 00       	mov    $0x3,%edi
  4018b9:	e8 c1 04 00 00       	callq  401d7f <fail>
  4018be:	eb d6                	jmp    401896 <touch3+0x3e>

00000000004018c0 <test>:
  4018c0:	48 83 ec 08          	sub    $0x8,%rsp
  4018c4:	b8 00 00 00 00       	mov    $0x0,%eax
  4018c9:	e8 6b fe ff ff       	callq  401739 <getbuf>
  4018ce:	89 c6                	mov    %eax,%esi
  4018d0:	48 8d 3d 29 18 00 00 	lea    0x1829(%rip),%rdi        # 403100 <_IO_stdin_used+0x390>
  4018d7:	b8 00 00 00 00       	mov    $0x0,%eax
  4018dc:	e8 7f f3 ff ff       	callq  400c60 <printf@plt>
  4018e1:	48 83 c4 08          	add    $0x8,%rsp
  4018e5:	c3                   	retq   

00000000004018e6 <start_farm>:
  4018e6:	b8 01 00 00 00       	mov    $0x1,%eax
  4018eb:	c3                   	retq   

00000000004018ec <setval_274>:
  4018ec:	c7 07 58 90 90 c3    	movl   $0xc3909058,(%rdi)
  4018f2:	c3                   	retq   
  4018ee

00000000004018f3 <getval_209>:
  4018f3:	b8 48 89 c7 c1       	mov    $0xc1c78948,%eax
  4018f8:	c3                   	retq   

00000000004018f9 <setval_262>:
  4018f9:	c7 07 ef c7 58 92    	movl   $0x9258c7ef,(%rdi)
  4018ff:	c3                   	retq   

0000000000401900 <getval_400>:
  401900:	b8 cc e5 94 78       	mov    $0x7894e5cc,%eax
  401905:	c3                   	retq   

0000000000401906 <addval_347>:
  401906:	8d 87 58 90 90 90    	lea    -0x6f6f6fa8(%rdi),%eax
  40190c:	c3                   	retq   

000000000040190d <getval_108>:
  40190d:	b8 48 89 c7 94       	mov    $0x94c78948,%eax
  401912:	c3                   	retq   

0000000000401913 <getval_187>:
  401913:	b8 48 89 c7 90       	mov    $0x90c78948,%eax
  401918:	c3                   	retq   

  401915

0000000000401919 <getval_276>:
  401919:	b8 f4 48 89 c7       	mov    $0xc78948f4,%eax
  40191e:	c3                   	retq   

000000000040191f <mid_farm>:
  40191f:	b8 01 00 00 00       	mov    $0x1,%eax
  401924:	c3                   	retq   

0000000000401925 <add_xy>:
  401925:	48 8d 04 37          	lea    (%rdi,%rsi,1),%rax
  401929:	c3                   	retq   

000000000040192a <setval_162>:
  40192a:	c7 07 7c 21 09 ca    	movl   $0xca09217c,(%rdi)
  401930:	c3                   	retq   

0000000000401931 <setval_293>:
  401931:	c7 07 89 c1 92 c3    	movl   $0xc392c189,(%rdi)
  401937:	c3                   	retq   

0000000000401938 <getval_323>:
  401938:	b8 81 ca 84 c0       	mov    $0xc084ca81,%eax
  40193d:	c3                   	retq   

000000000040193e <addval_457>:
  40193e:	8d 87 db 48 89 e0    	lea    -0x1f76b725(%rdi),%eax
  401944:	c3                   	retq   

0000000000401945 <getval_135>:
  401945:	b8 89 c1 60 d2       	mov    $0xd260c189,%eax
  40194a:	c3                   	retq   

000000000040194b <addval_367>:
  40194b:	8d 87 89 d6 84 c0    	lea    -0x3f7b2977(%rdi),%eax
  401951:	c3                   	retq   

0000000000401952 <getval_250>:
  401952:	b8 32 c8 89 e0       	mov    $0xe089c832,%eax
  401957:	c3                   	retq   

0000000000401958 <addval_208>:
  401958:	8d 87 09 c1 20 db    	lea    -0x24df3ef7(%rdi),%eax
  40195e:	c3                   	retq   

000000000040195f <setval_426>:
  40195f:	c7 07 5e 48 8b e0    	movl   $0xe08b485e,(%rdi)
  401965:	c3                   	retq   

0000000000401966 <addval_156>:
  401966:	8d 87 89 d6 30 db    	lea    -0x24cf2977(%rdi),%eax
  40196c:	c3                   	retq   

000000000040196d <setval_117>:
  40196d:	c7 07 f0 89 c1 c2    	movl   $0xc2c189f0,(%rdi)
  401973:	c3                   	retq   

0000000000401974 <getval_270>:
  401974:	b8 89 ca 91 90       	mov    $0x9091ca89,%eax
  401979:	c3                   	retq   

000000000040197a <getval_246>:
  40197a:	b8 48 89 e0 c3       	mov    $0xc3e08948,%eax
  40197f:	c3                   	retq   

0000000000401980 <addval_198>:
  401980:	8d 87 8b ca 38 db    	lea    -0x24c73575(%rdi),%eax
  401986:	c3                   	retq   

0000000000401987 <setval_488>:
  401987:	c7 07 89 c1 38 c9    	movl   $0xc938c189,(%rdi)
  40198d:	c3                   	retq   

000000000040198e <getval_102>:
  40198e:	b8 77 89 d6 92       	mov    $0x92d68977,%eax
  401993:	c3                   	retq   

0000000000401994 <getval_407>:
  401994:	b8 89 d6 84 c9       	mov    $0xc984d689,%eax
  401999:	c3                   	retq   

000000000040199a <addval_131>:
  40199a:	8d 87 89 c1 91 90    	lea    -0x6f6e3e77(%rdi),%eax
  4019a0:	c3                   	retq   

00000000004019a1 <addval_458>:
  4019a1:	8d 87 8b d6 38 c0    	lea    -0x3fc72975(%rdi),%eax
  4019a7:	c3                   	retq   

00000000004019a8 <addval_368>:
  4019a8:	8d 87 09 d6 08 c9    	lea    -0x36f729f7(%rdi),%eax
  4019ae:	c3                   	retq   

00000000004019af <addval_405>:
  4019af:	8d 87 89 c1 90 90    	lea    -0x6f6f3e77(%rdi),%eax
  4019b5:	c3                   	retq   

00000000004019b6 <addval_260>:
  4019b6:	8d 87 48 8b e0 c3    	lea    -0x3c1f74b8(%rdi),%eax
  4019bc:	c3                   	retq   

00000000004019bd <addval_291>:
  4019bd:	8d 87 89 d6 48 d2    	lea    -0x2db72977(%rdi),%eax
  4019c3:	c3                   	retq   

00000000004019c4 <setval_211>:
  4019c4:	c7 07 e9 48 88 e0    	movl   $0xe08848e9,(%rdi)
  4019ca:	c3                   	retq   

00000000004019cb <addval_330>:
  4019cb:	8d 87 89 ca 38 db    	lea    -0x24c73577(%rdi),%eax
  4019d1:	c3                   	retq   

00000000004019d2 <getval_477>:
  4019d2:	b8 97 c8 89 e0       	mov    $0xe089c897,%eax
  4019d7:	c3                   	retq   

00000000004019d8 <getval_361>:
  4019d8:	b8 48 99 e0 90       	mov    $0x90e09948,%eax
  4019dd:	c3                   	retq   

00000000004019de <addval_191>:
  4019de:	8d 87 81 ca 90 c3    	lea    -0x3c6f357f(%rdi),%eax
  4019e4:	c3                   	retq   

00000000004019e5 <setval_449>:
  4019e5:	c7 07 89 ca 08 db    	movl   $0xdb08ca89,(%rdi)
  4019eb:	c3                   	retq   

00000000004019ec <addval_332>:
  4019ec:	8d 87 89 ca 28 db    	lea    -0x24d73577(%rdi),%eax
  4019f2:	c3                   	retq   

00000000004019f3 <setval_474>:
  4019f3:	c7 07 89 d6 c4 d2    	movl   $0xd2c4d689,(%rdi)
  4019f9:	c3                   	retq   

00000000004019fa <addval_499>:
  4019fa:	8d 87 99 c1 90 c3    	lea    -0x3c6f3e67(%rdi),%eax
  401a00:	c3                   	retq   

0000000000401a01 <end_farm>:
  401a01:	b8 01 00 00 00       	mov    $0x1,%eax
  401a06:	c3                   	retq   

0000000000401a07 <save_char>:
  401a07:	8b 05 17 47 20 00    	mov    0x204717(%rip),%eax        # 606124 <gets_cnt>
  401a0d:	3d ff 03 00 00       	cmp    $0x3ff,%eax
  401a12:	7f 4a                	jg     401a5e <save_char+0x57>
  401a14:	8d 14 40             	lea    (%rax,%rax,2),%edx
  401a17:	89 f9                	mov    %edi,%ecx
  401a19:	c0 e9 04             	shr    $0x4,%cl
  401a1c:	4c 8d 05 fd 19 00 00 	lea    0x19fd(%rip),%r8        # 403420 <trans_char>
  401a23:	83 e1 0f             	and    $0xf,%ecx
  401a26:	45 0f b6 0c 08       	movzbl (%r8,%rcx,1),%r9d
  401a2b:	48 8d 0d ee 3a 20 00 	lea    0x203aee(%rip),%rcx        # 605520 <gets_buf>
  401a32:	48 63 f2             	movslq %edx,%rsi
  401a35:	44 88 0c 31          	mov    %r9b,(%rcx,%rsi,1)
  401a39:	8d 72 01             	lea    0x1(%rdx),%esi
  401a3c:	83 e7 0f             	and    $0xf,%edi
  401a3f:	41 0f b6 3c 38       	movzbl (%r8,%rdi,1),%edi
  401a44:	48 63 f6             	movslq %esi,%rsi
  401a47:	40 88 3c 31          	mov    %dil,(%rcx,%rsi,1)
  401a4b:	83 c2 02             	add    $0x2,%edx
  401a4e:	48 63 d2             	movslq %edx,%rdx
  401a51:	c6 04 11 20          	movb   $0x20,(%rcx,%rdx,1)
  401a55:	83 c0 01             	add    $0x1,%eax
  401a58:	89 05 c6 46 20 00    	mov    %eax,0x2046c6(%rip)        # 606124 <gets_cnt>
  401a5e:	f3 c3                	repz retq 

0000000000401a60 <save_term>:
  401a60:	8b 05 be 46 20 00    	mov    0x2046be(%rip),%eax        # 606124 <gets_cnt>
  401a66:	8d 04 40             	lea    (%rax,%rax,2),%eax
  401a69:	48 98                	cltq   
  401a6b:	48 8d 15 ae 3a 20 00 	lea    0x203aae(%rip),%rdx        # 605520 <gets_buf>
  401a72:	c6 04 02 00          	movb   $0x0,(%rdx,%rax,1)
  401a76:	c3                   	retq   

0000000000401a77 <check_fail>:
  401a77:	48 83 ec 08          	sub    $0x8,%rsp
  401a7b:	0f be 35 a6 46 20 00 	movsbl 0x2046a6(%rip),%esi        # 606128 <target_prefix>
  401a82:	48 8d 0d 97 3a 20 00 	lea    0x203a97(%rip),%rcx        # 605520 <gets_buf>
  401a89:	8b 15 69 3a 20 00    	mov    0x203a69(%rip),%edx        # 6054f8 <check_level>
  401a8f:	48 8d 3d 8d 16 00 00 	lea    0x168d(%rip),%rdi        # 403123 <_IO_stdin_used+0x3b3>
  401a96:	b8 00 00 00 00       	mov    $0x0,%eax
  401a9b:	e8 c0 f1 ff ff       	callq  400c60 <printf@plt>
  401aa0:	bf 01 00 00 00       	mov    $0x1,%edi
  401aa5:	e8 06 f3 ff ff       	callq  400db0 <exit@plt>

0000000000401aaa <Gets>:
  401aaa:	41 54                	push   %r12
  401aac:	55                   	push   %rbp
  401aad:	53                   	push   %rbx
  401aae:	49 89 fc             	mov    %rdi,%r12
  401ab1:	c7 05 69 46 20 00 00 	movl   $0x0,0x204669(%rip)        # 606124 <gets_cnt>
  401ab8:	00 00 00 
  401abb:	48 89 fb             	mov    %rdi,%rbx
  401abe:	eb 11                	jmp    401ad1 <Gets+0x27>
  401ac0:	48 8d 6b 01          	lea    0x1(%rbx),%rbp
  401ac4:	88 03                	mov    %al,(%rbx)
  401ac6:	0f b6 f8             	movzbl %al,%edi
  401ac9:	e8 39 ff ff ff       	callq  401a07 <save_char>
  401ace:	48 89 eb             	mov    %rbp,%rbx
  401ad1:	48 8b 3d 18 3a 20 00 	mov    0x203a18(%rip),%rdi        # 6054f0 <infile>
  401ad8:	e8 43 f2 ff ff       	callq  400d20 <_IO_getc@plt>
  401add:	83 f8 ff             	cmp    $0xffffffff,%eax
  401ae0:	74 05                	je     401ae7 <Gets+0x3d>
  401ae2:	83 f8 0a             	cmp    $0xa,%eax
  401ae5:	75 d9                	jne    401ac0 <Gets+0x16>
  401ae7:	c6 03 00             	movb   $0x0,(%rbx)
  401aea:	b8 00 00 00 00       	mov    $0x0,%eax
  401aef:	e8 6c ff ff ff       	callq  401a60 <save_term>
  401af4:	4c 89 e0             	mov    %r12,%rax
  401af7:	5b                   	pop    %rbx
  401af8:	5d                   	pop    %rbp
  401af9:	41 5c                	pop    %r12
  401afb:	c3                   	retq   

0000000000401afc <notify_server>:
  401afc:	83 3d 05 3a 20 00 00 	cmpl   $0x0,0x203a05(%rip)        # 605508 <is_checker>
  401b03:	0f 85 de 00 00 00    	jne    401be7 <notify_server+0xeb>
  401b09:	55                   	push   %rbp
  401b0a:	53                   	push   %rbx
  401b0b:	48 81 ec 08 40 00 00 	sub    $0x4008,%rsp
  401b12:	89 fb                	mov    %edi,%ebx
  401b14:	8b 05 0a 46 20 00    	mov    0x20460a(%rip),%eax        # 606124 <gets_cnt>
  401b1a:	83 c0 64             	add    $0x64,%eax
  401b1d:	3d 00 20 00 00       	cmp    $0x2000,%eax
  401b22:	0f 8f c1 00 00 00    	jg     401be9 <notify_server+0xed>
  401b28:	44 0f be 0d f8 45 20 	movsbl 0x2045f8(%rip),%r9d        # 606128 <target_prefix>
  401b2f:	00 
  401b30:	83 3d 51 39 20 00 00 	cmpl   $0x0,0x203951(%rip)        # 605488 <notify>
  401b37:	0f 84 c7 00 00 00    	je     401c04 <notify_server+0x108>
  401b3d:	44 8b 05 bc 39 20 00 	mov    0x2039bc(%rip),%r8d        # 605500 <authkey>
  401b44:	85 db                	test   %ebx,%ebx
  401b46:	0f 84 c3 00 00 00    	je     401c0f <notify_server+0x113>
  401b4c:	48 8d 2d e6 15 00 00 	lea    0x15e6(%rip),%rbp        # 403139 <_IO_stdin_used+0x3c9>
  401b53:	48 8d bc 24 00 20 00 	lea    0x2000(%rsp),%rdi
  401b5a:	00 
  401b5b:	48 8d 05 be 39 20 00 	lea    0x2039be(%rip),%rax        # 605520 <gets_buf>
  401b62:	50                   	push   %rax
  401b63:	56                   	push   %rsi
  401b64:	48 89 e9             	mov    %rbp,%rcx
  401b67:	8b 15 c3 35 20 00    	mov    0x2035c3(%rip),%edx        # 605130 <target_id>
  401b6d:	48 8d 35 cf 15 00 00 	lea    0x15cf(%rip),%rsi        # 403143 <_IO_stdin_used+0x3d3>
  401b74:	b8 00 00 00 00       	mov    $0x0,%eax
  401b79:	e8 22 f2 ff ff       	callq  400da0 <sprintf@plt>
  401b7e:	48 83 c4 10          	add    $0x10,%rsp
  401b82:	83 3d ff 38 20 00 00 	cmpl   $0x0,0x2038ff(%rip)        # 605488 <notify>
  401b89:	0f 84 b8 00 00 00    	je     401c47 <notify_server+0x14b>
  401b8f:	85 db                	test   %ebx,%ebx
  401b91:	0f 84 a2 00 00 00    	je     401c39 <notify_server+0x13d>
  401b97:	48 8d 8c 24 00 20 00 	lea    0x2000(%rsp),%rcx
  401b9e:	00 
  401b9f:	49 89 e1             	mov    %rsp,%r9
  401ba2:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  401ba8:	48 8b 15 99 35 20 00 	mov    0x203599(%rip),%rdx        # 605148 <lab>
  401baf:	48 8b 35 9a 35 20 00 	mov    0x20359a(%rip),%rsi        # 605150 <course>
  401bb6:	48 8b 3d 83 35 20 00 	mov    0x203583(%rip),%rdi        # 605140 <user_id>
  401bbd:	e8 6e 10 00 00       	callq  402c30 <driver_post>
  401bc2:	85 c0                	test   %eax,%eax
  401bc4:	78 55                	js     401c1b <notify_server+0x11f>
  401bc6:	48 8d 3d bb 16 00 00 	lea    0x16bb(%rip),%rdi        # 403288 <_IO_stdin_used+0x518>
  401bcd:	e8 5e f0 ff ff       	callq  400c30 <puts@plt>
  401bd2:	48 8d 3d 92 15 00 00 	lea    0x1592(%rip),%rdi        # 40316b <_IO_stdin_used+0x3fb>
  401bd9:	e8 52 f0 ff ff       	callq  400c30 <puts@plt>
  401bde:	48 81 c4 08 40 00 00 	add    $0x4008,%rsp
  401be5:	5b                   	pop    %rbx
  401be6:	5d                   	pop    %rbp
  401be7:	f3 c3                	repz retq 
  401be9:	48 8d 3d 68 16 00 00 	lea    0x1668(%rip),%rdi        # 403258 <_IO_stdin_used+0x4e8>
  401bf0:	b8 00 00 00 00       	mov    $0x0,%eax
  401bf5:	e8 66 f0 ff ff       	callq  400c60 <printf@plt>
  401bfa:	bf 01 00 00 00       	mov    $0x1,%edi
  401bff:	e8 ac f1 ff ff       	callq  400db0 <exit@plt>
  401c04:	41 b8 ff ff ff ff    	mov    $0xffffffff,%r8d
  401c0a:	e9 35 ff ff ff       	jmpq   401b44 <notify_server+0x48>
  401c0f:	48 8d 2d 28 15 00 00 	lea    0x1528(%rip),%rbp        # 40313e <_IO_stdin_used+0x3ce>
  401c16:	e9 38 ff ff ff       	jmpq   401b53 <notify_server+0x57>
  401c1b:	48 89 e6             	mov    %rsp,%rsi
  401c1e:	48 8d 3d 3a 15 00 00 	lea    0x153a(%rip),%rdi        # 40315f <_IO_stdin_used+0x3ef>
  401c25:	b8 00 00 00 00       	mov    $0x0,%eax
  401c2a:	e8 31 f0 ff ff       	callq  400c60 <printf@plt>
  401c2f:	bf 01 00 00 00       	mov    $0x1,%edi
  401c34:	e8 77 f1 ff ff       	callq  400db0 <exit@plt>
  401c39:	48 8d 3d 35 15 00 00 	lea    0x1535(%rip),%rdi        # 403175 <_IO_stdin_used+0x405>
  401c40:	e8 eb ef ff ff       	callq  400c30 <puts@plt>
  401c45:	eb 97                	jmp    401bde <notify_server+0xe2>
  401c47:	48 89 ee             	mov    %rbp,%rsi
  401c4a:	48 8d 3d 6f 16 00 00 	lea    0x166f(%rip),%rdi        # 4032c0 <_IO_stdin_used+0x550>
  401c51:	b8 00 00 00 00       	mov    $0x0,%eax
  401c56:	e8 05 f0 ff ff       	callq  400c60 <printf@plt>
  401c5b:	48 8b 35 de 34 20 00 	mov    0x2034de(%rip),%rsi        # 605140 <user_id>
  401c62:	48 8d 3d 13 15 00 00 	lea    0x1513(%rip),%rdi        # 40317c <_IO_stdin_used+0x40c>
  401c69:	b8 00 00 00 00       	mov    $0x0,%eax
  401c6e:	e8 ed ef ff ff       	callq  400c60 <printf@plt>
  401c73:	48 8b 35 d6 34 20 00 	mov    0x2034d6(%rip),%rsi        # 605150 <course>
  401c7a:	48 8d 3d 08 15 00 00 	lea    0x1508(%rip),%rdi        # 403189 <_IO_stdin_used+0x419>
  401c81:	b8 00 00 00 00       	mov    $0x0,%eax
  401c86:	e8 d5 ef ff ff       	callq  400c60 <printf@plt>
  401c8b:	48 8b 35 b6 34 20 00 	mov    0x2034b6(%rip),%rsi        # 605148 <lab>
  401c92:	48 8d 3d fc 14 00 00 	lea    0x14fc(%rip),%rdi        # 403195 <_IO_stdin_used+0x425>
  401c99:	b8 00 00 00 00       	mov    $0x0,%eax
  401c9e:	e8 bd ef ff ff       	callq  400c60 <printf@plt>
  401ca3:	48 8d b4 24 00 20 00 	lea    0x2000(%rsp),%rsi
  401caa:	00 
  401cab:	48 8d 3d ec 14 00 00 	lea    0x14ec(%rip),%rdi        # 40319e <_IO_stdin_used+0x42e>
  401cb2:	b8 00 00 00 00       	mov    $0x0,%eax
  401cb7:	e8 a4 ef ff ff       	callq  400c60 <printf@plt>
  401cbc:	e9 1d ff ff ff       	jmpq   401bde <notify_server+0xe2>

0000000000401cc1 <validate>:
  401cc1:	53                   	push   %rbx
  401cc2:	89 fb                	mov    %edi,%ebx
  401cc4:	83 3d 3d 38 20 00 00 	cmpl   $0x0,0x20383d(%rip)        # 605508 <is_checker>
  401ccb:	74 68                	je     401d35 <validate+0x74>
  401ccd:	39 3d 29 38 20 00    	cmp    %edi,0x203829(%rip)        # 6054fc <vlevel>
  401cd3:	75 2d                	jne    401d02 <validate+0x41>
  401cd5:	8b 35 1d 38 20 00    	mov    0x20381d(%rip),%esi        # 6054f8 <check_level>
  401cdb:	39 f7                	cmp    %esi,%edi
  401cdd:	75 39                	jne    401d18 <validate+0x57>
  401cdf:	0f be 35 42 44 20 00 	movsbl 0x204442(%rip),%esi        # 606128 <target_prefix>
  401ce6:	48 8d 0d 33 38 20 00 	lea    0x203833(%rip),%rcx        # 605520 <gets_buf>
  401ced:	89 fa                	mov    %edi,%edx
  401cef:	48 8d 3d d2 14 00 00 	lea    0x14d2(%rip),%rdi        # 4031c8 <_IO_stdin_used+0x458>
  401cf6:	b8 00 00 00 00       	mov    $0x0,%eax
  401cfb:	e8 60 ef ff ff       	callq  400c60 <printf@plt>
  401d00:	5b                   	pop    %rbx
  401d01:	c3                   	retq   
  401d02:	48 8d 3d a1 14 00 00 	lea    0x14a1(%rip),%rdi        # 4031aa <_IO_stdin_used+0x43a>
  401d09:	e8 22 ef ff ff       	callq  400c30 <puts@plt>
  401d0e:	b8 00 00 00 00       	mov    $0x0,%eax
  401d13:	e8 5f fd ff ff       	callq  401a77 <check_fail>
  401d18:	89 fa                	mov    %edi,%edx
  401d1a:	48 8d 3d c7 15 00 00 	lea    0x15c7(%rip),%rdi        # 4032e8 <_IO_stdin_used+0x578>
  401d21:	b8 00 00 00 00       	mov    $0x0,%eax
  401d26:	e8 35 ef ff ff       	callq  400c60 <printf@plt>
  401d2b:	b8 00 00 00 00       	mov    $0x0,%eax
  401d30:	e8 42 fd ff ff       	callq  401a77 <check_fail>
  401d35:	3b 3d c1 37 20 00    	cmp    0x2037c1(%rip),%edi        # 6054fc <vlevel>
  401d3b:	74 1a                	je     401d57 <validate+0x96>
  401d3d:	48 8d 3d 66 14 00 00 	lea    0x1466(%rip),%rdi        # 4031aa <_IO_stdin_used+0x43a>
  401d44:	e8 e7 ee ff ff       	callq  400c30 <puts@plt>
  401d49:	89 de                	mov    %ebx,%esi
  401d4b:	bf 00 00 00 00       	mov    $0x0,%edi
  401d50:	e8 a7 fd ff ff       	callq  401afc <notify_server>
  401d55:	eb a9                	jmp    401d00 <validate+0x3f>
  401d57:	0f be 15 ca 43 20 00 	movsbl 0x2043ca(%rip),%edx        # 606128 <target_prefix>
  401d5e:	89 fe                	mov    %edi,%esi
  401d60:	48 8d 3d a9 15 00 00 	lea    0x15a9(%rip),%rdi        # 403310 <_IO_stdin_used+0x5a0>
  401d67:	b8 00 00 00 00       	mov    $0x0,%eax
  401d6c:	e8 ef ee ff ff       	callq  400c60 <printf@plt>
  401d71:	89 de                	mov    %ebx,%esi
  401d73:	bf 01 00 00 00       	mov    $0x1,%edi
  401d78:	e8 7f fd ff ff       	callq  401afc <notify_server>
  401d7d:	eb 81                	jmp    401d00 <validate+0x3f>

0000000000401d7f <fail>:
  401d7f:	48 83 ec 08          	sub    $0x8,%rsp
  401d83:	83 3d 7e 37 20 00 00 	cmpl   $0x0,0x20377e(%rip)        # 605508 <is_checker>
  401d8a:	75 11                	jne    401d9d <fail+0x1e>
  401d8c:	89 fe                	mov    %edi,%esi
  401d8e:	bf 00 00 00 00       	mov    $0x0,%edi
  401d93:	e8 64 fd ff ff       	callq  401afc <notify_server>
  401d98:	48 83 c4 08          	add    $0x8,%rsp
  401d9c:	c3                   	retq   
  401d9d:	b8 00 00 00 00       	mov    $0x0,%eax
  401da2:	e8 d0 fc ff ff       	callq  401a77 <check_fail>

0000000000401da7 <bushandler>:
  401da7:	48 83 ec 08          	sub    $0x8,%rsp
  401dab:	83 3d 56 37 20 00 00 	cmpl   $0x0,0x203756(%rip)        # 605508 <is_checker>
  401db2:	74 16                	je     401dca <bushandler+0x23>
  401db4:	48 8d 3d 22 14 00 00 	lea    0x1422(%rip),%rdi        # 4031dd <_IO_stdin_used+0x46d>
  401dbb:	e8 70 ee ff ff       	callq  400c30 <puts@plt>
  401dc0:	b8 00 00 00 00       	mov    $0x0,%eax
  401dc5:	e8 ad fc ff ff       	callq  401a77 <check_fail>
  401dca:	48 8d 3d 77 15 00 00 	lea    0x1577(%rip),%rdi        # 403348 <_IO_stdin_used+0x5d8>
  401dd1:	e8 5a ee ff ff       	callq  400c30 <puts@plt>
  401dd6:	48 8d 3d 0a 14 00 00 	lea    0x140a(%rip),%rdi        # 4031e7 <_IO_stdin_used+0x477>
  401ddd:	e8 4e ee ff ff       	callq  400c30 <puts@plt>
  401de2:	be 00 00 00 00       	mov    $0x0,%esi
  401de7:	bf 00 00 00 00       	mov    $0x0,%edi
  401dec:	e8 0b fd ff ff       	callq  401afc <notify_server>
  401df1:	bf 01 00 00 00       	mov    $0x1,%edi
  401df6:	e8 b5 ef ff ff       	callq  400db0 <exit@plt>

0000000000401dfb <seghandler>:
  401dfb:	48 83 ec 08          	sub    $0x8,%rsp
  401dff:	83 3d 02 37 20 00 00 	cmpl   $0x0,0x203702(%rip)        # 605508 <is_checker>
  401e06:	74 16                	je     401e1e <seghandler+0x23>
  401e08:	48 8d 3d ee 13 00 00 	lea    0x13ee(%rip),%rdi        # 4031fd <_IO_stdin_used+0x48d>
  401e0f:	e8 1c ee ff ff       	callq  400c30 <puts@plt>
  401e14:	b8 00 00 00 00       	mov    $0x0,%eax
  401e19:	e8 59 fc ff ff       	callq  401a77 <check_fail>
  401e1e:	48 8d 3d 43 15 00 00 	lea    0x1543(%rip),%rdi        # 403368 <_IO_stdin_used+0x5f8>
  401e25:	e8 06 ee ff ff       	callq  400c30 <puts@plt>
  401e2a:	48 8d 3d b6 13 00 00 	lea    0x13b6(%rip),%rdi        # 4031e7 <_IO_stdin_used+0x477>
  401e31:	e8 fa ed ff ff       	callq  400c30 <puts@plt>
  401e36:	be 00 00 00 00       	mov    $0x0,%esi
  401e3b:	bf 00 00 00 00       	mov    $0x0,%edi
  401e40:	e8 b7 fc ff ff       	callq  401afc <notify_server>
  401e45:	bf 01 00 00 00       	mov    $0x1,%edi
  401e4a:	e8 61 ef ff ff       	callq  400db0 <exit@plt>

0000000000401e4f <illegalhandler>:
  401e4f:	48 83 ec 08          	sub    $0x8,%rsp
  401e53:	83 3d ae 36 20 00 00 	cmpl   $0x0,0x2036ae(%rip)        # 605508 <is_checker>
  401e5a:	74 16                	je     401e72 <illegalhandler+0x23>
  401e5c:	48 8d 3d ad 13 00 00 	lea    0x13ad(%rip),%rdi        # 403210 <_IO_stdin_used+0x4a0>
  401e63:	e8 c8 ed ff ff       	callq  400c30 <puts@plt>
  401e68:	b8 00 00 00 00       	mov    $0x0,%eax
  401e6d:	e8 05 fc ff ff       	callq  401a77 <check_fail>
  401e72:	48 8d 3d 17 15 00 00 	lea    0x1517(%rip),%rdi        # 403390 <_IO_stdin_used+0x620>
  401e79:	e8 b2 ed ff ff       	callq  400c30 <puts@plt>
  401e7e:	48 8d 3d 62 13 00 00 	lea    0x1362(%rip),%rdi        # 4031e7 <_IO_stdin_used+0x477>
  401e85:	e8 a6 ed ff ff       	callq  400c30 <puts@plt>
  401e8a:	be 00 00 00 00       	mov    $0x0,%esi
  401e8f:	bf 00 00 00 00       	mov    $0x0,%edi
  401e94:	e8 63 fc ff ff       	callq  401afc <notify_server>
  401e99:	bf 01 00 00 00       	mov    $0x1,%edi
  401e9e:	e8 0d ef ff ff       	callq  400db0 <exit@plt>

0000000000401ea3 <sigalrmhandler>:
  401ea3:	48 83 ec 08          	sub    $0x8,%rsp
  401ea7:	83 3d 5a 36 20 00 00 	cmpl   $0x0,0x20365a(%rip)        # 605508 <is_checker>
  401eae:	74 16                	je     401ec6 <sigalrmhandler+0x23>
  401eb0:	48 8d 3d 6d 13 00 00 	lea    0x136d(%rip),%rdi        # 403224 <_IO_stdin_used+0x4b4>
  401eb7:	e8 74 ed ff ff       	callq  400c30 <puts@plt>
  401ebc:	b8 00 00 00 00       	mov    $0x0,%eax
  401ec1:	e8 b1 fb ff ff       	callq  401a77 <check_fail>
  401ec6:	be 05 00 00 00       	mov    $0x5,%esi
  401ecb:	48 8d 3d ee 14 00 00 	lea    0x14ee(%rip),%rdi        # 4033c0 <_IO_stdin_used+0x650>
  401ed2:	b8 00 00 00 00       	mov    $0x0,%eax
  401ed7:	e8 84 ed ff ff       	callq  400c60 <printf@plt>
  401edc:	be 00 00 00 00       	mov    $0x0,%esi
  401ee1:	bf 00 00 00 00       	mov    $0x0,%edi
  401ee6:	e8 11 fc ff ff       	callq  401afc <notify_server>
  401eeb:	bf 01 00 00 00       	mov    $0x1,%edi
  401ef0:	e8 bb ee ff ff       	callq  400db0 <exit@plt>

0000000000401ef5 <launch>:
  401ef5:	55                   	push   %rbp
  401ef6:	48 89 e5             	mov    %rsp,%rbp
  401ef9:	48 89 fa             	mov    %rdi,%rdx
  401efc:	48 8d 47 1e          	lea    0x1e(%rdi),%rax
  401f00:	48 83 e0 f0          	and    $0xfffffffffffffff0,%rax
  401f04:	48 29 c4             	sub    %rax,%rsp
  401f07:	48 8d 7c 24 0f       	lea    0xf(%rsp),%rdi
  401f0c:	48 83 e7 f0          	and    $0xfffffffffffffff0,%rdi
  401f10:	be f4 00 00 00       	mov    $0xf4,%esi
  401f15:	e8 56 ed ff ff       	callq  400c70 <memset@plt>
  401f1a:	48 8b 05 7f 35 20 00 	mov    0x20357f(%rip),%rax        # 6054a0 <stdin@@GLIBC_2.2.5>
  401f21:	48 39 05 c8 35 20 00 	cmp    %rax,0x2035c8(%rip)        # 6054f0 <infile>
  401f28:	74 2b                	je     401f55 <launch+0x60>
  401f2a:	c7 05 c8 35 20 00 00 	movl   $0x0,0x2035c8(%rip)        # 6054fc <vlevel>
  401f31:	00 00 00 
  401f34:	b8 00 00 00 00       	mov    $0x0,%eax
  401f39:	e8 82 f9 ff ff       	callq  4018c0 <test>
  401f3e:	83 3d c3 35 20 00 00 	cmpl   $0x0,0x2035c3(%rip)        # 605508 <is_checker>
  401f45:	75 21                	jne    401f68 <launch+0x73>
  401f47:	48 8d 3d f6 12 00 00 	lea    0x12f6(%rip),%rdi        # 403244 <_IO_stdin_used+0x4d4>
  401f4e:	e8 dd ec ff ff       	callq  400c30 <puts@plt>
  401f53:	c9                   	leaveq 
  401f54:	c3                   	retq   
  401f55:	48 8d 3d d0 12 00 00 	lea    0x12d0(%rip),%rdi        # 40322c <_IO_stdin_used+0x4bc>
  401f5c:	b8 00 00 00 00       	mov    $0x0,%eax
  401f61:	e8 fa ec ff ff       	callq  400c60 <printf@plt>
  401f66:	eb c2                	jmp    401f2a <launch+0x35>
  401f68:	48 8d 3d ca 12 00 00 	lea    0x12ca(%rip),%rdi        # 403239 <_IO_stdin_used+0x4c9>
  401f6f:	e8 bc ec ff ff       	callq  400c30 <puts@plt>
  401f74:	b8 00 00 00 00       	mov    $0x0,%eax
  401f79:	e8 f9 fa ff ff       	callq  401a77 <check_fail>

0000000000401f7e <stable_launch>:
  401f7e:	53                   	push   %rbx
  401f7f:	48 89 3d 62 35 20 00 	mov    %rdi,0x203562(%rip)        # 6054e8 <global_offset>
  401f86:	41 b9 00 00 00 00    	mov    $0x0,%r9d
  401f8c:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  401f92:	b9 32 01 00 00       	mov    $0x132,%ecx
  401f97:	ba 07 00 00 00       	mov    $0x7,%edx
  401f9c:	be 00 00 10 00       	mov    $0x100000,%esi
  401fa1:	bf 00 60 58 55       	mov    $0x55586000,%edi
  401fa6:	e8 a5 ec ff ff       	callq  400c50 <mmap@plt>
  401fab:	48 89 c3             	mov    %rax,%rbx
  401fae:	48 3d 00 60 58 55    	cmp    $0x55586000,%rax
  401fb4:	75 43                	jne    401ff9 <stable_launch+0x7b>
  401fb6:	48 8d 90 f8 ff 0f 00 	lea    0xffff8(%rax),%rdx
  401fbd:	48 89 15 6c 41 20 00 	mov    %rdx,0x20416c(%rip)        # 606130 <stack_top>
  401fc4:	48 89 e0             	mov    %rsp,%rax
  401fc7:	48 89 d4             	mov    %rdx,%rsp
  401fca:	48 89 c2             	mov    %rax,%rdx
  401fcd:	48 89 15 0c 35 20 00 	mov    %rdx,0x20350c(%rip)        # 6054e0 <global_save_stack>
  401fd4:	48 8b 3d 0d 35 20 00 	mov    0x20350d(%rip),%rdi        # 6054e8 <global_offset>
  401fdb:	e8 15 ff ff ff       	callq  401ef5 <launch>
  401fe0:	48 8b 05 f9 34 20 00 	mov    0x2034f9(%rip),%rax        # 6054e0 <global_save_stack>
  401fe7:	48 89 c4             	mov    %rax,%rsp
  401fea:	be 00 00 10 00       	mov    $0x100000,%esi
  401fef:	48 89 df             	mov    %rbx,%rdi
  401ff2:	e8 49 ed ff ff       	callq  400d40 <munmap@plt>
  401ff7:	5b                   	pop    %rbx
  401ff8:	c3                   	retq   
  401ff9:	be 00 00 10 00       	mov    $0x100000,%esi
  401ffe:	48 89 c7             	mov    %rax,%rdi
  402001:	e8 3a ed ff ff       	callq  400d40 <munmap@plt>
  402006:	ba 00 60 58 55       	mov    $0x55586000,%edx
  40200b:	48 8d 35 e6 13 00 00 	lea    0x13e6(%rip),%rsi        # 4033f8 <_IO_stdin_used+0x688>
  402012:	48 8b 3d a7 34 20 00 	mov    0x2034a7(%rip),%rdi        # 6054c0 <stderr@@GLIBC_2.2.5>
  402019:	b8 00 00 00 00       	mov    $0x0,%eax
  40201e:	e8 ad ec ff ff       	callq  400cd0 <fprintf@plt>
  402023:	bf 01 00 00 00       	mov    $0x1,%edi
  402028:	e8 83 ed ff ff       	callq  400db0 <exit@plt>

000000000040202d <rio_readinitb>:
  40202d:	89 37                	mov    %esi,(%rdi)
  40202f:	c7 47 04 00 00 00 00 	movl   $0x0,0x4(%rdi)
  402036:	48 8d 47 10          	lea    0x10(%rdi),%rax
  40203a:	48 89 47 08          	mov    %rax,0x8(%rdi)
  40203e:	c3                   	retq   

000000000040203f <sigalrm_handler>:
  40203f:	48 83 ec 08          	sub    $0x8,%rsp
  402043:	ba 00 00 00 00       	mov    $0x0,%edx
  402048:	48 8d 35 e1 13 00 00 	lea    0x13e1(%rip),%rsi        # 403430 <trans_char+0x10>
  40204f:	48 8b 3d 6a 34 20 00 	mov    0x20346a(%rip),%rdi        # 6054c0 <stderr@@GLIBC_2.2.5>
  402056:	b8 00 00 00 00       	mov    $0x0,%eax
  40205b:	e8 70 ec ff ff       	callq  400cd0 <fprintf@plt>
  402060:	bf 01 00 00 00       	mov    $0x1,%edi
  402065:	e8 46 ed ff ff       	callq  400db0 <exit@plt>

000000000040206a <urlencode>:
  40206a:	41 54                	push   %r12
  40206c:	55                   	push   %rbp
  40206d:	53                   	push   %rbx
  40206e:	48 83 ec 10          	sub    $0x10,%rsp
  402072:	48 89 fb             	mov    %rdi,%rbx
  402075:	48 89 f5             	mov    %rsi,%rbp
  402078:	b8 00 00 00 00       	mov    $0x0,%eax
  40207d:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  402084:	f2 ae                	repnz scas %es:(%rdi),%al
  402086:	48 f7 d1             	not    %rcx
  402089:	8d 41 ff             	lea    -0x1(%rcx),%eax
  40208c:	eb 0e                	jmp    40209c <urlencode+0x32>
  40208e:	88 55 00             	mov    %dl,0x0(%rbp)
  402091:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
  402095:	48 83 c3 01          	add    $0x1,%rbx
  402099:	44 89 e0             	mov    %r12d,%eax
  40209c:	44 8d 60 ff          	lea    -0x1(%rax),%r12d
  4020a0:	85 c0                	test   %eax,%eax
  4020a2:	0f 84 95 00 00 00    	je     40213d <urlencode+0xd3>
  4020a8:	0f b6 13             	movzbl (%rbx),%edx
  4020ab:	80 fa 2a             	cmp    $0x2a,%dl
  4020ae:	0f 94 c1             	sete   %cl
  4020b1:	80 fa 2d             	cmp    $0x2d,%dl
  4020b4:	0f 94 c0             	sete   %al
  4020b7:	08 c1                	or     %al,%cl
  4020b9:	75 d3                	jne    40208e <urlencode+0x24>
  4020bb:	80 fa 2e             	cmp    $0x2e,%dl
  4020be:	74 ce                	je     40208e <urlencode+0x24>
  4020c0:	80 fa 5f             	cmp    $0x5f,%dl
  4020c3:	74 c9                	je     40208e <urlencode+0x24>
  4020c5:	8d 42 d0             	lea    -0x30(%rdx),%eax
  4020c8:	3c 09                	cmp    $0x9,%al
  4020ca:	76 c2                	jbe    40208e <urlencode+0x24>
  4020cc:	8d 42 bf             	lea    -0x41(%rdx),%eax
  4020cf:	3c 19                	cmp    $0x19,%al
  4020d1:	76 bb                	jbe    40208e <urlencode+0x24>
  4020d3:	8d 42 9f             	lea    -0x61(%rdx),%eax
  4020d6:	3c 19                	cmp    $0x19,%al
  4020d8:	76 b4                	jbe    40208e <urlencode+0x24>
  4020da:	80 fa 20             	cmp    $0x20,%dl
  4020dd:	74 4c                	je     40212b <urlencode+0xc1>
  4020df:	8d 42 e0             	lea    -0x20(%rdx),%eax
  4020e2:	3c 5f                	cmp    $0x5f,%al
  4020e4:	0f 96 c1             	setbe  %cl
  4020e7:	80 fa 09             	cmp    $0x9,%dl
  4020ea:	0f 94 c0             	sete   %al
  4020ed:	08 c1                	or     %al,%cl
  4020ef:	74 47                	je     402138 <urlencode+0xce>
  4020f1:	0f b6 d2             	movzbl %dl,%edx
  4020f4:	48 8d 7c 24 08       	lea    0x8(%rsp),%rdi
  4020f9:	48 8d 35 c8 13 00 00 	lea    0x13c8(%rip),%rsi        # 4034c8 <trans_char+0xa8>
  402100:	b8 00 00 00 00       	mov    $0x0,%eax
  402105:	e8 96 ec ff ff       	callq  400da0 <sprintf@plt>
  40210a:	0f b6 44 24 08       	movzbl 0x8(%rsp),%eax
  40210f:	88 45 00             	mov    %al,0x0(%rbp)
  402112:	0f b6 44 24 09       	movzbl 0x9(%rsp),%eax
  402117:	88 45 01             	mov    %al,0x1(%rbp)
  40211a:	0f b6 44 24 0a       	movzbl 0xa(%rsp),%eax
  40211f:	88 45 02             	mov    %al,0x2(%rbp)
  402122:	48 8d 6d 03          	lea    0x3(%rbp),%rbp
  402126:	e9 6a ff ff ff       	jmpq   402095 <urlencode+0x2b>
  40212b:	c6 45 00 2b          	movb   $0x2b,0x0(%rbp)
  40212f:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
  402133:	e9 5d ff ff ff       	jmpq   402095 <urlencode+0x2b>
  402138:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40213d:	48 83 c4 10          	add    $0x10,%rsp
  402141:	5b                   	pop    %rbx
  402142:	5d                   	pop    %rbp
  402143:	41 5c                	pop    %r12
  402145:	c3                   	retq   

0000000000402146 <rio_writen>:
  402146:	41 55                	push   %r13
  402148:	41 54                	push   %r12
  40214a:	55                   	push   %rbp
  40214b:	53                   	push   %rbx
  40214c:	48 83 ec 08          	sub    $0x8,%rsp
  402150:	41 89 fc             	mov    %edi,%r12d
  402153:	49 89 d5             	mov    %rdx,%r13
  402156:	48 89 f5             	mov    %rsi,%rbp
  402159:	48 89 d3             	mov    %rdx,%rbx
  40215c:	eb 06                	jmp    402164 <rio_writen+0x1e>
  40215e:	48 29 c3             	sub    %rax,%rbx
  402161:	48 01 c5             	add    %rax,%rbp
  402164:	48 85 db             	test   %rbx,%rbx
  402167:	74 24                	je     40218d <rio_writen+0x47>
  402169:	48 89 da             	mov    %rbx,%rdx
  40216c:	48 89 ee             	mov    %rbp,%rsi
  40216f:	44 89 e7             	mov    %r12d,%edi
  402172:	e8 c9 ea ff ff       	callq  400c40 <write@plt>
  402177:	48 85 c0             	test   %rax,%rax
  40217a:	7f e2                	jg     40215e <rio_writen+0x18>
  40217c:	e8 6f ea ff ff       	callq  400bf0 <__errno_location@plt>
  402181:	83 38 04             	cmpl   $0x4,(%rax)
  402184:	75 15                	jne    40219b <rio_writen+0x55>
  402186:	b8 00 00 00 00       	mov    $0x0,%eax
  40218b:	eb d1                	jmp    40215e <rio_writen+0x18>
  40218d:	4c 89 e8             	mov    %r13,%rax
  402190:	48 83 c4 08          	add    $0x8,%rsp
  402194:	5b                   	pop    %rbx
  402195:	5d                   	pop    %rbp
  402196:	41 5c                	pop    %r12
  402198:	41 5d                	pop    %r13
  40219a:	c3                   	retq   
  40219b:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  4021a2:	eb ec                	jmp    402190 <rio_writen+0x4a>

00000000004021a4 <rio_read>:
  4021a4:	41 55                	push   %r13
  4021a6:	41 54                	push   %r12
  4021a8:	55                   	push   %rbp
  4021a9:	53                   	push   %rbx
  4021aa:	48 83 ec 08          	sub    $0x8,%rsp
  4021ae:	48 89 fb             	mov    %rdi,%rbx
  4021b1:	49 89 f5             	mov    %rsi,%r13
  4021b4:	49 89 d4             	mov    %rdx,%r12
  4021b7:	eb 0a                	jmp    4021c3 <rio_read+0x1f>
  4021b9:	e8 32 ea ff ff       	callq  400bf0 <__errno_location@plt>
  4021be:	83 38 04             	cmpl   $0x4,(%rax)
  4021c1:	75 5c                	jne    40221f <rio_read+0x7b>
  4021c3:	8b 6b 04             	mov    0x4(%rbx),%ebp
  4021c6:	85 ed                	test   %ebp,%ebp
  4021c8:	7f 24                	jg     4021ee <rio_read+0x4a>
  4021ca:	48 8d 6b 10          	lea    0x10(%rbx),%rbp
  4021ce:	ba 00 20 00 00       	mov    $0x2000,%edx
  4021d3:	48 89 ee             	mov    %rbp,%rsi
  4021d6:	8b 3b                	mov    (%rbx),%edi
  4021d8:	e8 c3 ea ff ff       	callq  400ca0 <read@plt>
  4021dd:	89 43 04             	mov    %eax,0x4(%rbx)
  4021e0:	85 c0                	test   %eax,%eax
  4021e2:	78 d5                	js     4021b9 <rio_read+0x15>
  4021e4:	85 c0                	test   %eax,%eax
  4021e6:	74 40                	je     402228 <rio_read+0x84>
  4021e8:	48 89 6b 08          	mov    %rbp,0x8(%rbx)
  4021ec:	eb d5                	jmp    4021c3 <rio_read+0x1f>
  4021ee:	89 e8                	mov    %ebp,%eax
  4021f0:	49 39 c4             	cmp    %rax,%r12
  4021f3:	77 03                	ja     4021f8 <rio_read+0x54>
  4021f5:	44 89 e5             	mov    %r12d,%ebp
  4021f8:	4c 63 e5             	movslq %ebp,%r12
  4021fb:	48 8b 73 08          	mov    0x8(%rbx),%rsi
  4021ff:	4c 89 e2             	mov    %r12,%rdx
  402202:	4c 89 ef             	mov    %r13,%rdi
  402205:	e8 e6 ea ff ff       	callq  400cf0 <memcpy@plt>
  40220a:	4c 01 63 08          	add    %r12,0x8(%rbx)
  40220e:	29 6b 04             	sub    %ebp,0x4(%rbx)
  402211:	4c 89 e0             	mov    %r12,%rax
  402214:	48 83 c4 08          	add    $0x8,%rsp
  402218:	5b                   	pop    %rbx
  402219:	5d                   	pop    %rbp
  40221a:	41 5c                	pop    %r12
  40221c:	41 5d                	pop    %r13
  40221e:	c3                   	retq   
  40221f:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  402226:	eb ec                	jmp    402214 <rio_read+0x70>
  402228:	b8 00 00 00 00       	mov    $0x0,%eax
  40222d:	eb e5                	jmp    402214 <rio_read+0x70>

000000000040222f <rio_readlineb>:
  40222f:	41 55                	push   %r13
  402231:	41 54                	push   %r12
  402233:	55                   	push   %rbp
  402234:	53                   	push   %rbx
  402235:	48 83 ec 18          	sub    $0x18,%rsp
  402239:	49 89 fd             	mov    %rdi,%r13
  40223c:	49 89 d4             	mov    %rdx,%r12
  40223f:	48 89 f5             	mov    %rsi,%rbp
  402242:	bb 01 00 00 00       	mov    $0x1,%ebx
  402247:	4c 39 e3             	cmp    %r12,%rbx
  40224a:	73 47                	jae    402293 <rio_readlineb+0x64>
  40224c:	48 8d 74 24 0f       	lea    0xf(%rsp),%rsi
  402251:	ba 01 00 00 00       	mov    $0x1,%edx
  402256:	4c 89 ef             	mov    %r13,%rdi
  402259:	e8 46 ff ff ff       	callq  4021a4 <rio_read>
  40225e:	83 f8 01             	cmp    $0x1,%eax
  402261:	75 1c                	jne    40227f <rio_readlineb+0x50>
  402263:	48 8d 45 01          	lea    0x1(%rbp),%rax
  402267:	0f b6 54 24 0f       	movzbl 0xf(%rsp),%edx
  40226c:	88 55 00             	mov    %dl,0x0(%rbp)
  40226f:	80 7c 24 0f 0a       	cmpb   $0xa,0xf(%rsp)
  402274:	74 1a                	je     402290 <rio_readlineb+0x61>
  402276:	48 83 c3 01          	add    $0x1,%rbx
  40227a:	48 89 c5             	mov    %rax,%rbp
  40227d:	eb c8                	jmp    402247 <rio_readlineb+0x18>
  40227f:	85 c0                	test   %eax,%eax
  402281:	75 22                	jne    4022a5 <rio_readlineb+0x76>
  402283:	48 83 fb 01          	cmp    $0x1,%rbx
  402287:	75 0a                	jne    402293 <rio_readlineb+0x64>
  402289:	b8 00 00 00 00       	mov    $0x0,%eax
  40228e:	eb 0a                	jmp    40229a <rio_readlineb+0x6b>
  402290:	48 89 c5             	mov    %rax,%rbp
  402293:	c6 45 00 00          	movb   $0x0,0x0(%rbp)
  402297:	48 89 d8             	mov    %rbx,%rax
  40229a:	48 83 c4 18          	add    $0x18,%rsp
  40229e:	5b                   	pop    %rbx
  40229f:	5d                   	pop    %rbp
  4022a0:	41 5c                	pop    %r12
  4022a2:	41 5d                	pop    %r13
  4022a4:	c3                   	retq   
  4022a5:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  4022ac:	eb ec                	jmp    40229a <rio_readlineb+0x6b>

00000000004022ae <submitr>:
  4022ae:	41 57                	push   %r15
  4022b0:	41 56                	push   %r14
  4022b2:	41 55                	push   %r13
  4022b4:	41 54                	push   %r12
  4022b6:	55                   	push   %rbp
  4022b7:	53                   	push   %rbx
  4022b8:	48 81 ec 58 a0 00 00 	sub    $0xa058,%rsp
  4022bf:	49 89 fd             	mov    %rdi,%r13
  4022c2:	89 74 24 14          	mov    %esi,0x14(%rsp)
  4022c6:	49 89 d7             	mov    %rdx,%r15
  4022c9:	48 89 4c 24 08       	mov    %rcx,0x8(%rsp)
  4022ce:	4c 89 44 24 18       	mov    %r8,0x18(%rsp)
  4022d3:	4d 89 ce             	mov    %r9,%r14
  4022d6:	48 8b 9c 24 90 a0 00 	mov    0xa090(%rsp),%rbx
  4022dd:	00 
  4022de:	c7 84 24 2c 20 00 00 	movl   $0x0,0x202c(%rsp)
  4022e5:	00 00 00 00 
  4022e9:	ba 00 00 00 00       	mov    $0x0,%edx
  4022ee:	be 01 00 00 00       	mov    $0x1,%esi
  4022f3:	bf 02 00 00 00       	mov    $0x2,%edi
  4022f8:	e8 d3 ea ff ff       	callq  400dd0 <socket@plt>
  4022fd:	85 c0                	test   %eax,%eax
  4022ff:	0f 88 ca 01 00 00    	js     4024cf <submitr+0x221>
  402305:	89 c5                	mov    %eax,%ebp
  402307:	4c 89 ef             	mov    %r13,%rdi
  40230a:	e8 b1 e9 ff ff       	callq  400cc0 <gethostbyname@plt>
  40230f:	48 85 c0             	test   %rax,%rax
  402312:	0f 84 05 02 00 00    	je     40251d <submitr+0x26f>
  402318:	4c 8d a4 24 40 a0 00 	lea    0xa040(%rsp),%r12
  40231f:	00 
  402320:	48 c7 84 24 40 a0 00 	movq   $0x0,0xa040(%rsp)
  402327:	00 00 00 00 00 
  40232c:	48 c7 84 24 48 a0 00 	movq   $0x0,0xa048(%rsp)
  402333:	00 00 00 00 00 
  402338:	66 c7 84 24 40 a0 00 	movw   $0x2,0xa040(%rsp)
  40233f:	00 02 00 
  402342:	48 8b 48 18          	mov    0x18(%rax),%rcx
  402346:	48 63 50 14          	movslq 0x14(%rax),%rdx
  40234a:	48 8d b4 24 44 a0 00 	lea    0xa044(%rsp),%rsi
  402351:	00 
  402352:	48 8b 39             	mov    (%rcx),%rdi
  402355:	e8 f6 e9 ff ff       	callq  400d50 <bcopy@plt>
  40235a:	0f b7 44 24 14       	movzwl 0x14(%rsp),%eax
  40235f:	66 c1 c8 08          	ror    $0x8,%ax
  402363:	66 89 84 24 42 a0 00 	mov    %ax,0xa042(%rsp)
  40236a:	00 
  40236b:	ba 10 00 00 00       	mov    $0x10,%edx
  402370:	4c 89 e6             	mov    %r12,%rsi
  402373:	89 ef                	mov    %ebp,%edi
  402375:	e8 46 ea ff ff       	callq  400dc0 <connect@plt>
  40237a:	85 c0                	test   %eax,%eax
  40237c:	0f 88 02 02 00 00    	js     402584 <submitr+0x2d6>
  402382:	48 c7 c6 ff ff ff ff 	mov    $0xffffffffffffffff,%rsi
  402389:	b8 00 00 00 00       	mov    $0x0,%eax
  40238e:	48 89 f1             	mov    %rsi,%rcx
  402391:	4c 89 f7             	mov    %r14,%rdi
  402394:	f2 ae                	repnz scas %es:(%rdi),%al
  402396:	48 f7 d1             	not    %rcx
  402399:	48 89 ca             	mov    %rcx,%rdx
  40239c:	48 89 f1             	mov    %rsi,%rcx
  40239f:	4c 89 ff             	mov    %r15,%rdi
  4023a2:	f2 ae                	repnz scas %es:(%rdi),%al
  4023a4:	48 f7 d1             	not    %rcx
  4023a7:	49 89 c8             	mov    %rcx,%r8
  4023aa:	48 89 f1             	mov    %rsi,%rcx
  4023ad:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
  4023b2:	f2 ae                	repnz scas %es:(%rdi),%al
  4023b4:	48 f7 d1             	not    %rcx
  4023b7:	4d 8d 44 08 fe       	lea    -0x2(%r8,%rcx,1),%r8
  4023bc:	48 89 f1             	mov    %rsi,%rcx
  4023bf:	48 8b 7c 24 18       	mov    0x18(%rsp),%rdi
  4023c4:	f2 ae                	repnz scas %es:(%rdi),%al
  4023c6:	48 89 c8             	mov    %rcx,%rax
  4023c9:	48 f7 d0             	not    %rax
  4023cc:	49 8d 4c 00 ff       	lea    -0x1(%r8,%rax,1),%rcx
  4023d1:	48 8d 44 52 fd       	lea    -0x3(%rdx,%rdx,2),%rax
  4023d6:	48 8d 84 01 80 00 00 	lea    0x80(%rcx,%rax,1),%rax
  4023dd:	00 
  4023de:	48 3d 00 20 00 00    	cmp    $0x2000,%rax
  4023e4:	0f 87 f3 01 00 00    	ja     4025dd <submitr+0x32f>
  4023ea:	48 8d b4 24 30 40 00 	lea    0x4030(%rsp),%rsi
  4023f1:	00 
  4023f2:	b9 00 04 00 00       	mov    $0x400,%ecx
  4023f7:	b8 00 00 00 00       	mov    $0x0,%eax
  4023fc:	48 89 f7             	mov    %rsi,%rdi
  4023ff:	f3 48 ab             	rep stos %rax,%es:(%rdi)
  402402:	4c 89 f7             	mov    %r14,%rdi
  402405:	e8 60 fc ff ff       	callq  40206a <urlencode>
  40240a:	85 c0                	test   %eax,%eax
  40240c:	0f 88 3d 02 00 00    	js     40264f <submitr+0x3a1>
  402412:	4c 8d a4 24 30 60 00 	lea    0x6030(%rsp),%r12
  402419:	00 
  40241a:	4d 89 e9             	mov    %r13,%r9
  40241d:	4c 8d 84 24 30 40 00 	lea    0x4030(%rsp),%r8
  402424:	00 
  402425:	4c 89 f9             	mov    %r15,%rcx
  402428:	48 8b 54 24 08       	mov    0x8(%rsp),%rdx
  40242d:	48 8d 35 24 10 00 00 	lea    0x1024(%rip),%rsi        # 403458 <trans_char+0x38>
  402434:	4c 89 e7             	mov    %r12,%rdi
  402437:	b8 00 00 00 00       	mov    $0x0,%eax
  40243c:	e8 5f e9 ff ff       	callq  400da0 <sprintf@plt>
  402441:	b8 00 00 00 00       	mov    $0x0,%eax
  402446:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  40244d:	4c 89 e7             	mov    %r12,%rdi
  402450:	f2 ae                	repnz scas %es:(%rdi),%al
  402452:	48 f7 d1             	not    %rcx
  402455:	48 8d 51 ff          	lea    -0x1(%rcx),%rdx
  402459:	4c 89 e6             	mov    %r12,%rsi
  40245c:	89 ef                	mov    %ebp,%edi
  40245e:	e8 e3 fc ff ff       	callq  402146 <rio_writen>
  402463:	48 85 c0             	test   %rax,%rax
  402466:	0f 88 6d 02 00 00    	js     4026d9 <submitr+0x42b>
  40246c:	4c 8d a4 24 30 80 00 	lea    0x8030(%rsp),%r12
  402473:	00 
  402474:	89 ee                	mov    %ebp,%esi
  402476:	4c 89 e7             	mov    %r12,%rdi
  402479:	e8 af fb ff ff       	callq  40202d <rio_readinitb>
  40247e:	48 8d b4 24 30 60 00 	lea    0x6030(%rsp),%rsi
  402485:	00 
  402486:	ba 00 20 00 00       	mov    $0x2000,%edx
  40248b:	4c 89 e7             	mov    %r12,%rdi
  40248e:	e8 9c fd ff ff       	callq  40222f <rio_readlineb>
  402493:	48 85 c0             	test   %rax,%rax
  402496:	0f 8e ab 02 00 00    	jle    402747 <submitr+0x499>
  40249c:	48 8d 8c 24 2c 20 00 	lea    0x202c(%rsp),%rcx
  4024a3:	00 
  4024a4:	48 8d 94 24 30 20 00 	lea    0x2030(%rsp),%rdx
  4024ab:	00 
  4024ac:	48 8d bc 24 30 60 00 	lea    0x6030(%rsp),%rdi
  4024b3:	00 
  4024b4:	4c 8d 44 24 20       	lea    0x20(%rsp),%r8
  4024b9:	48 8d 35 0f 10 00 00 	lea    0x100f(%rip),%rsi        # 4034cf <trans_char+0xaf>
  4024c0:	b8 00 00 00 00       	mov    $0x0,%eax
  4024c5:	e8 66 e8 ff ff       	callq  400d30 <__isoc99_sscanf@plt>
  4024ca:	e9 9f 03 00 00       	jmpq   40286e <submitr+0x5c0>
  4024cf:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  4024d6:	3a 20 43 
  4024d9:	48 89 03             	mov    %rax,(%rbx)
  4024dc:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  4024e3:	20 75 6e 
  4024e6:	48 89 43 08          	mov    %rax,0x8(%rbx)
  4024ea:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  4024f1:	74 6f 20 
  4024f4:	48 89 43 10          	mov    %rax,0x10(%rbx)
  4024f8:	48 b8 63 72 65 61 74 	movabs $0x7320657461657263,%rax
  4024ff:	65 20 73 
  402502:	48 89 43 18          	mov    %rax,0x18(%rbx)
  402506:	c7 43 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%rbx)
  40250d:	66 c7 43 24 74 00    	movw   $0x74,0x24(%rbx)
  402513:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402518:	e9 18 03 00 00       	jmpq   402835 <submitr+0x587>
  40251d:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
  402524:	3a 20 44 
  402527:	48 89 03             	mov    %rax,(%rbx)
  40252a:	48 b8 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rax
  402531:	20 75 6e 
  402534:	48 89 43 08          	mov    %rax,0x8(%rbx)
  402538:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  40253f:	74 6f 20 
  402542:	48 89 43 10          	mov    %rax,0x10(%rbx)
  402546:	48 b8 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rax
  40254d:	76 65 20 
  402550:	48 89 43 18          	mov    %rax,0x18(%rbx)
  402554:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
  40255b:	72 20 61 
  40255e:	48 89 43 20          	mov    %rax,0x20(%rbx)
  402562:	c7 43 28 64 64 72 65 	movl   $0x65726464,0x28(%rbx)
  402569:	66 c7 43 2c 73 73    	movw   $0x7373,0x2c(%rbx)
  40256f:	c6 43 2e 00          	movb   $0x0,0x2e(%rbx)
  402573:	89 ef                	mov    %ebp,%edi
  402575:	e8 16 e7 ff ff       	callq  400c90 <close@plt>
  40257a:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40257f:	e9 b1 02 00 00       	jmpq   402835 <submitr+0x587>
  402584:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
  40258b:	3a 20 55 
  40258e:	48 89 03             	mov    %rax,(%rbx)
  402591:	48 b8 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rax
  402598:	20 74 6f 
  40259b:	48 89 43 08          	mov    %rax,0x8(%rbx)
  40259f:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
  4025a6:	65 63 74 
  4025a9:	48 89 43 10          	mov    %rax,0x10(%rbx)
  4025ad:	48 b8 20 74 6f 20 74 	movabs $0x20656874206f7420,%rax
  4025b4:	68 65 20 
  4025b7:	48 89 43 18          	mov    %rax,0x18(%rbx)
  4025bb:	c7 43 20 73 65 72 76 	movl   $0x76726573,0x20(%rbx)
  4025c2:	66 c7 43 24 65 72    	movw   $0x7265,0x24(%rbx)
  4025c8:	c6 43 26 00          	movb   $0x0,0x26(%rbx)
  4025cc:	89 ef                	mov    %ebp,%edi
  4025ce:	e8 bd e6 ff ff       	callq  400c90 <close@plt>
  4025d3:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4025d8:	e9 58 02 00 00       	jmpq   402835 <submitr+0x587>
  4025dd:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
  4025e4:	3a 20 52 
  4025e7:	48 89 03             	mov    %rax,(%rbx)
  4025ea:	48 b8 65 73 75 6c 74 	movabs $0x747320746c757365,%rax
  4025f1:	20 73 74 
  4025f4:	48 89 43 08          	mov    %rax,0x8(%rbx)
  4025f8:	48 b8 72 69 6e 67 20 	movabs $0x6f6f7420676e6972,%rax
  4025ff:	74 6f 6f 
  402602:	48 89 43 10          	mov    %rax,0x10(%rbx)
  402606:	48 b8 20 6c 61 72 67 	movabs $0x202e656772616c20,%rax
  40260d:	65 2e 20 
  402610:	48 89 43 18          	mov    %rax,0x18(%rbx)
  402614:	48 b8 49 6e 63 72 65 	movabs $0x6573616572636e49,%rax
  40261b:	61 73 65 
  40261e:	48 89 43 20          	mov    %rax,0x20(%rbx)
  402622:	48 b8 20 53 55 42 4d 	movabs $0x5254494d42555320,%rax
  402629:	49 54 52 
  40262c:	48 89 43 28          	mov    %rax,0x28(%rbx)
  402630:	48 b8 5f 4d 41 58 42 	movabs $0x46554258414d5f,%rax
  402637:	55 46 00 
  40263a:	48 89 43 30          	mov    %rax,0x30(%rbx)
  40263e:	89 ef                	mov    %ebp,%edi
  402640:	e8 4b e6 ff ff       	callq  400c90 <close@plt>
  402645:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40264a:	e9 e6 01 00 00       	jmpq   402835 <submitr+0x587>
  40264f:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
  402656:	3a 20 52 
  402659:	48 89 03             	mov    %rax,(%rbx)
  40265c:	48 b8 65 73 75 6c 74 	movabs $0x747320746c757365,%rax
  402663:	20 73 74 
  402666:	48 89 43 08          	mov    %rax,0x8(%rbx)
  40266a:	48 b8 72 69 6e 67 20 	movabs $0x6e6f6320676e6972,%rax
  402671:	63 6f 6e 
  402674:	48 89 43 10          	mov    %rax,0x10(%rbx)
  402678:	48 b8 74 61 69 6e 73 	movabs $0x6e6120736e696174,%rax
  40267f:	20 61 6e 
  402682:	48 89 43 18          	mov    %rax,0x18(%rbx)
  402686:	48 b8 20 69 6c 6c 65 	movabs $0x6c6167656c6c6920,%rax
  40268d:	67 61 6c 
  402690:	48 89 43 20          	mov    %rax,0x20(%rbx)
  402694:	48 b8 20 6f 72 20 75 	movabs $0x72706e7520726f20,%rax
  40269b:	6e 70 72 
  40269e:	48 89 43 28          	mov    %rax,0x28(%rbx)
  4026a2:	48 b8 69 6e 74 61 62 	movabs $0x20656c6261746e69,%rax
  4026a9:	6c 65 20 
  4026ac:	48 89 43 30          	mov    %rax,0x30(%rbx)
  4026b0:	48 b8 63 68 61 72 61 	movabs $0x6574636172616863,%rax
  4026b7:	63 74 65 
  4026ba:	48 89 43 38          	mov    %rax,0x38(%rbx)
  4026be:	66 c7 43 40 72 2e    	movw   $0x2e72,0x40(%rbx)
  4026c4:	c6 43 42 00          	movb   $0x0,0x42(%rbx)
  4026c8:	89 ef                	mov    %ebp,%edi
  4026ca:	e8 c1 e5 ff ff       	callq  400c90 <close@plt>
  4026cf:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4026d4:	e9 5c 01 00 00       	jmpq   402835 <submitr+0x587>
  4026d9:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  4026e0:	3a 20 43 
  4026e3:	48 89 03             	mov    %rax,(%rbx)
  4026e6:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  4026ed:	20 75 6e 
  4026f0:	48 89 43 08          	mov    %rax,0x8(%rbx)
  4026f4:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  4026fb:	74 6f 20 
  4026fe:	48 89 43 10          	mov    %rax,0x10(%rbx)
  402702:	48 b8 77 72 69 74 65 	movabs $0x6f74206574697277,%rax
  402709:	20 74 6f 
  40270c:	48 89 43 18          	mov    %rax,0x18(%rbx)
  402710:	48 b8 20 74 68 65 20 	movabs $0x7365722065687420,%rax
  402717:	72 65 73 
  40271a:	48 89 43 20          	mov    %rax,0x20(%rbx)
  40271e:	48 b8 75 6c 74 20 73 	movabs $0x7672657320746c75,%rax
  402725:	65 72 76 
  402728:	48 89 43 28          	mov    %rax,0x28(%rbx)
  40272c:	66 c7 43 30 65 72    	movw   $0x7265,0x30(%rbx)
  402732:	c6 43 32 00          	movb   $0x0,0x32(%rbx)
  402736:	89 ef                	mov    %ebp,%edi
  402738:	e8 53 e5 ff ff       	callq  400c90 <close@plt>
  40273d:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402742:	e9 ee 00 00 00       	jmpq   402835 <submitr+0x587>
  402747:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  40274e:	3a 20 43 
  402751:	48 89 03             	mov    %rax,(%rbx)
  402754:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  40275b:	20 75 6e 
  40275e:	48 89 43 08          	mov    %rax,0x8(%rbx)
  402762:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402769:	74 6f 20 
  40276c:	48 89 43 10          	mov    %rax,0x10(%rbx)
  402770:	48 b8 72 65 61 64 20 	movabs $0x7269662064616572,%rax
  402777:	66 69 72 
  40277a:	48 89 43 18          	mov    %rax,0x18(%rbx)
  40277e:	48 b8 73 74 20 68 65 	movabs $0x6564616568207473,%rax
  402785:	61 64 65 
  402788:	48 89 43 20          	mov    %rax,0x20(%rbx)
  40278c:	48 b8 72 20 66 72 6f 	movabs $0x72206d6f72662072,%rax
  402793:	6d 20 72 
  402796:	48 89 43 28          	mov    %rax,0x28(%rbx)
  40279a:	48 b8 65 73 75 6c 74 	movabs $0x657320746c757365,%rax
  4027a1:	20 73 65 
  4027a4:	48 89 43 30          	mov    %rax,0x30(%rbx)
  4027a8:	c7 43 38 72 76 65 72 	movl   $0x72657672,0x38(%rbx)
  4027af:	c6 43 3c 00          	movb   $0x0,0x3c(%rbx)
  4027b3:	89 ef                	mov    %ebp,%edi
  4027b5:	e8 d6 e4 ff ff       	callq  400c90 <close@plt>
  4027ba:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4027bf:	eb 74                	jmp    402835 <submitr+0x587>
  4027c1:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  4027c8:	3a 20 43 
  4027cb:	48 89 03             	mov    %rax,(%rbx)
  4027ce:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  4027d5:	20 75 6e 
  4027d8:	48 89 43 08          	mov    %rax,0x8(%rbx)
  4027dc:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  4027e3:	74 6f 20 
  4027e6:	48 89 43 10          	mov    %rax,0x10(%rbx)
  4027ea:	48 b8 72 65 61 64 20 	movabs $0x6165682064616572,%rax
  4027f1:	68 65 61 
  4027f4:	48 89 43 18          	mov    %rax,0x18(%rbx)
  4027f8:	48 b8 64 65 72 73 20 	movabs $0x6f72662073726564,%rax
  4027ff:	66 72 6f 
  402802:	48 89 43 20          	mov    %rax,0x20(%rbx)
  402806:	48 b8 6d 20 74 68 65 	movabs $0x657220656874206d,%rax
  40280d:	20 72 65 
  402810:	48 89 43 28          	mov    %rax,0x28(%rbx)
  402814:	48 b8 73 75 6c 74 20 	movabs $0x72657320746c7573,%rax
  40281b:	73 65 72 
  40281e:	48 89 43 30          	mov    %rax,0x30(%rbx)
  402822:	c7 43 38 76 65 72 00 	movl   $0x726576,0x38(%rbx)
  402829:	89 ef                	mov    %ebp,%edi
  40282b:	e8 60 e4 ff ff       	callq  400c90 <close@plt>
  402830:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402835:	48 81 c4 58 a0 00 00 	add    $0xa058,%rsp
  40283c:	5b                   	pop    %rbx
  40283d:	5d                   	pop    %rbp
  40283e:	41 5c                	pop    %r12
  402840:	41 5d                	pop    %r13
  402842:	41 5e                	pop    %r14
  402844:	41 5f                	pop    %r15
  402846:	c3                   	retq   
  402847:	85 c0                	test   %eax,%eax
  402849:	74 51                	je     40289c <submitr+0x5ee>
  40284b:	48 8d b4 24 30 60 00 	lea    0x6030(%rsp),%rsi
  402852:	00 
  402853:	48 8d bc 24 30 80 00 	lea    0x8030(%rsp),%rdi
  40285a:	00 
  40285b:	ba 00 20 00 00       	mov    $0x2000,%edx
  402860:	e8 ca f9 ff ff       	callq  40222f <rio_readlineb>
  402865:	48 85 c0             	test   %rax,%rax
  402868:	0f 8e 53 ff ff ff    	jle    4027c1 <submitr+0x513>
  40286e:	0f b6 94 24 30 60 00 	movzbl 0x6030(%rsp),%edx
  402875:	00 
  402876:	b8 0d 00 00 00       	mov    $0xd,%eax
  40287b:	29 d0                	sub    %edx,%eax
  40287d:	75 c8                	jne    402847 <submitr+0x599>
  40287f:	0f b6 94 24 31 60 00 	movzbl 0x6031(%rsp),%edx
  402886:	00 
  402887:	b8 0a 00 00 00       	mov    $0xa,%eax
  40288c:	29 d0                	sub    %edx,%eax
  40288e:	75 b7                	jne    402847 <submitr+0x599>
  402890:	0f b6 84 24 32 60 00 	movzbl 0x6032(%rsp),%eax
  402897:	00 
  402898:	f7 d8                	neg    %eax
  40289a:	eb ab                	jmp    402847 <submitr+0x599>
  40289c:	48 8d b4 24 30 60 00 	lea    0x6030(%rsp),%rsi
  4028a3:	00 
  4028a4:	48 8d bc 24 30 80 00 	lea    0x8030(%rsp),%rdi
  4028ab:	00 
  4028ac:	ba 00 20 00 00       	mov    $0x2000,%edx
  4028b1:	e8 79 f9 ff ff       	callq  40222f <rio_readlineb>
  4028b6:	48 85 c0             	test   %rax,%rax
  4028b9:	7e 67                	jle    402922 <submitr+0x674>
  4028bb:	8b 94 24 2c 20 00 00 	mov    0x202c(%rsp),%edx
  4028c2:	81 fa c8 00 00 00    	cmp    $0xc8,%edx
  4028c8:	0f 85 d7 00 00 00    	jne    4029a5 <submitr+0x6f7>
  4028ce:	48 8d b4 24 30 60 00 	lea    0x6030(%rsp),%rsi
  4028d5:	00 
  4028d6:	48 89 df             	mov    %rbx,%rdi
  4028d9:	e8 42 e3 ff ff       	callq  400c20 <strcpy@plt>
  4028de:	89 ef                	mov    %ebp,%edi
  4028e0:	e8 ab e3 ff ff       	callq  400c90 <close@plt>
  4028e5:	0f b6 03             	movzbl (%rbx),%eax
  4028e8:	ba 4f 00 00 00       	mov    $0x4f,%edx
  4028ed:	29 c2                	sub    %eax,%edx
  4028ef:	0f 85 da 00 00 00    	jne    4029cf <submitr+0x721>
  4028f5:	0f b6 4b 01          	movzbl 0x1(%rbx),%ecx
  4028f9:	b8 4b 00 00 00       	mov    $0x4b,%eax
  4028fe:	29 c8                	sub    %ecx,%eax
  402900:	0f 85 cb 00 00 00    	jne    4029d1 <submitr+0x723>
  402906:	0f b6 4b 02          	movzbl 0x2(%rbx),%ecx
  40290a:	b8 0a 00 00 00       	mov    $0xa,%eax
  40290f:	29 c8                	sub    %ecx,%eax
  402911:	0f 85 ba 00 00 00    	jne    4029d1 <submitr+0x723>
  402917:	0f b6 43 03          	movzbl 0x3(%rbx),%eax
  40291b:	f7 d8                	neg    %eax
  40291d:	e9 af 00 00 00       	jmpq   4029d1 <submitr+0x723>
  402922:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402929:	3a 20 43 
  40292c:	48 89 03             	mov    %rax,(%rbx)
  40292f:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  402936:	20 75 6e 
  402939:	48 89 43 08          	mov    %rax,0x8(%rbx)
  40293d:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402944:	74 6f 20 
  402947:	48 89 43 10          	mov    %rax,0x10(%rbx)
  40294b:	48 b8 72 65 61 64 20 	movabs $0x6174732064616572,%rax
  402952:	73 74 61 
  402955:	48 89 43 18          	mov    %rax,0x18(%rbx)
  402959:	48 b8 74 75 73 20 6d 	movabs $0x7373656d20737574,%rax
  402960:	65 73 73 
  402963:	48 89 43 20          	mov    %rax,0x20(%rbx)
  402967:	48 b8 61 67 65 20 66 	movabs $0x6d6f726620656761,%rax
  40296e:	72 6f 6d 
  402971:	48 89 43 28          	mov    %rax,0x28(%rbx)
  402975:	48 b8 20 72 65 73 75 	movabs $0x20746c7573657220,%rax
  40297c:	6c 74 20 
  40297f:	48 89 43 30          	mov    %rax,0x30(%rbx)
  402983:	c7 43 38 73 65 72 76 	movl   $0x76726573,0x38(%rbx)
  40298a:	66 c7 43 3c 65 72    	movw   $0x7265,0x3c(%rbx)
  402990:	c6 43 3e 00          	movb   $0x0,0x3e(%rbx)
  402994:	89 ef                	mov    %ebp,%edi
  402996:	e8 f5 e2 ff ff       	callq  400c90 <close@plt>
  40299b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4029a0:	e9 90 fe ff ff       	jmpq   402835 <submitr+0x587>
  4029a5:	48 8d 4c 24 20       	lea    0x20(%rsp),%rcx
  4029aa:	48 8d 35 e7 0a 00 00 	lea    0xae7(%rip),%rsi        # 403498 <trans_char+0x78>
  4029b1:	48 89 df             	mov    %rbx,%rdi
  4029b4:	b8 00 00 00 00       	mov    $0x0,%eax
  4029b9:	e8 e2 e3 ff ff       	callq  400da0 <sprintf@plt>
  4029be:	89 ef                	mov    %ebp,%edi
  4029c0:	e8 cb e2 ff ff       	callq  400c90 <close@plt>
  4029c5:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4029ca:	e9 66 fe ff ff       	jmpq   402835 <submitr+0x587>
  4029cf:	89 d0                	mov    %edx,%eax
  4029d1:	f7 d8                	neg    %eax
  4029d3:	0f 84 5c fe ff ff    	je     402835 <submitr+0x587>
  4029d9:	b9 05 00 00 00       	mov    $0x5,%ecx
  4029de:	48 8d 3d fb 0a 00 00 	lea    0xafb(%rip),%rdi        # 4034e0 <trans_char+0xc0>
  4029e5:	48 89 de             	mov    %rbx,%rsi
  4029e8:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  4029ea:	0f 97 c0             	seta   %al
  4029ed:	0f 92 c1             	setb   %cl
  4029f0:	29 c8                	sub    %ecx,%eax
  4029f2:	0f be c0             	movsbl %al,%eax
  4029f5:	85 c0                	test   %eax,%eax
  4029f7:	0f 84 38 fe ff ff    	je     402835 <submitr+0x587>
  4029fd:	85 d2                	test   %edx,%edx
  4029ff:	75 13                	jne    402a14 <submitr+0x766>
  402a01:	0f b6 43 01          	movzbl 0x1(%rbx),%eax
  402a05:	ba 4b 00 00 00       	mov    $0x4b,%edx
  402a0a:	29 c2                	sub    %eax,%edx
  402a0c:	75 06                	jne    402a14 <submitr+0x766>
  402a0e:	0f b6 53 02          	movzbl 0x2(%rbx),%edx
  402a12:	f7 da                	neg    %edx
  402a14:	89 d0                	mov    %edx,%eax
  402a16:	f7 d8                	neg    %eax
  402a18:	0f 84 17 fe ff ff    	je     402835 <submitr+0x587>
  402a1e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402a23:	e9 0d fe ff ff       	jmpq   402835 <submitr+0x587>

0000000000402a28 <init_timeout>:
  402a28:	85 ff                	test   %edi,%edi
  402a2a:	74 20                	je     402a4c <init_timeout+0x24>
  402a2c:	53                   	push   %rbx
  402a2d:	89 fb                	mov    %edi,%ebx
  402a2f:	85 ff                	test   %edi,%edi
  402a31:	78 1b                	js     402a4e <init_timeout+0x26>
  402a33:	48 8d 35 05 f6 ff ff 	lea    -0x9fb(%rip),%rsi        # 40203f <sigalrm_handler>
  402a3a:	bf 0e 00 00 00       	mov    $0xe,%edi
  402a3f:	e8 6c e2 ff ff       	callq  400cb0 <signal@plt>
  402a44:	89 df                	mov    %ebx,%edi
  402a46:	e8 35 e2 ff ff       	callq  400c80 <alarm@plt>
  402a4b:	5b                   	pop    %rbx
  402a4c:	f3 c3                	repz retq 
  402a4e:	bb 00 00 00 00       	mov    $0x0,%ebx
  402a53:	eb de                	jmp    402a33 <init_timeout+0xb>

0000000000402a55 <init_driver>:
  402a55:	41 54                	push   %r12
  402a57:	55                   	push   %rbp
  402a58:	53                   	push   %rbx
  402a59:	48 83 ec 10          	sub    $0x10,%rsp
  402a5d:	48 89 fd             	mov    %rdi,%rbp
  402a60:	be 01 00 00 00       	mov    $0x1,%esi
  402a65:	bf 0d 00 00 00       	mov    $0xd,%edi
  402a6a:	e8 41 e2 ff ff       	callq  400cb0 <signal@plt>
  402a6f:	be 01 00 00 00       	mov    $0x1,%esi
  402a74:	bf 1d 00 00 00       	mov    $0x1d,%edi
  402a79:	e8 32 e2 ff ff       	callq  400cb0 <signal@plt>
  402a7e:	be 01 00 00 00       	mov    $0x1,%esi
  402a83:	bf 1d 00 00 00       	mov    $0x1d,%edi
  402a88:	e8 23 e2 ff ff       	callq  400cb0 <signal@plt>
  402a8d:	ba 00 00 00 00       	mov    $0x0,%edx
  402a92:	be 01 00 00 00       	mov    $0x1,%esi
  402a97:	bf 02 00 00 00       	mov    $0x2,%edi
  402a9c:	e8 2f e3 ff ff       	callq  400dd0 <socket@plt>
  402aa1:	85 c0                	test   %eax,%eax
  402aa3:	0f 88 80 00 00 00    	js     402b29 <init_driver+0xd4>
  402aa9:	89 c3                	mov    %eax,%ebx
  402aab:	48 8d 3d 33 0a 00 00 	lea    0xa33(%rip),%rdi        # 4034e5 <trans_char+0xc5>
  402ab2:	e8 09 e2 ff ff       	callq  400cc0 <gethostbyname@plt>
  402ab7:	48 85 c0             	test   %rax,%rax
  402aba:	0f 84 b5 00 00 00    	je     402b75 <init_driver+0x120>
  402ac0:	48 c7 04 24 00 00 00 	movq   $0x0,(%rsp)
  402ac7:	00 
  402ac8:	48 c7 44 24 08 00 00 	movq   $0x0,0x8(%rsp)
  402acf:	00 00 
  402ad1:	66 c7 04 24 02 00    	movw   $0x2,(%rsp)
  402ad7:	48 8b 48 18          	mov    0x18(%rax),%rcx
  402adb:	48 63 50 14          	movslq 0x14(%rax),%rdx
  402adf:	48 8d 74 24 04       	lea    0x4(%rsp),%rsi
  402ae4:	48 8b 39             	mov    (%rcx),%rdi
  402ae7:	e8 64 e2 ff ff       	callq  400d50 <bcopy@plt>
  402aec:	66 c7 44 24 02 3c a4 	movw   $0xa43c,0x2(%rsp)
  402af3:	ba 10 00 00 00       	mov    $0x10,%edx
  402af8:	48 89 e6             	mov    %rsp,%rsi
  402afb:	89 df                	mov    %ebx,%edi
  402afd:	e8 be e2 ff ff       	callq  400dc0 <connect@plt>
  402b02:	85 c0                	test   %eax,%eax
  402b04:	0f 88 d3 00 00 00    	js     402bdd <init_driver+0x188>
  402b0a:	89 df                	mov    %ebx,%edi
  402b0c:	e8 7f e1 ff ff       	callq  400c90 <close@plt>
  402b11:	66 c7 45 00 4f 4b    	movw   $0x4b4f,0x0(%rbp)
  402b17:	c6 45 02 00          	movb   $0x0,0x2(%rbp)
  402b1b:	b8 00 00 00 00       	mov    $0x0,%eax
  402b20:	48 83 c4 10          	add    $0x10,%rsp
  402b24:	5b                   	pop    %rbx
  402b25:	5d                   	pop    %rbp
  402b26:	41 5c                	pop    %r12
  402b28:	c3                   	retq   
  402b29:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402b30:	3a 20 43 
  402b33:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402b37:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  402b3e:	20 75 6e 
  402b41:	48 89 45 08          	mov    %rax,0x8(%rbp)
  402b45:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402b4c:	74 6f 20 
  402b4f:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402b53:	48 b8 63 72 65 61 74 	movabs $0x7320657461657263,%rax
  402b5a:	65 20 73 
  402b5d:	48 89 45 18          	mov    %rax,0x18(%rbp)
  402b61:	c7 45 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%rbp)
  402b68:	66 c7 45 24 74 00    	movw   $0x74,0x24(%rbp)
  402b6e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402b73:	eb ab                	jmp    402b20 <init_driver+0xcb>
  402b75:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
  402b7c:	3a 20 44 
  402b7f:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402b83:	48 b8 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rax
  402b8a:	20 75 6e 
  402b8d:	48 89 45 08          	mov    %rax,0x8(%rbp)
  402b91:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402b98:	74 6f 20 
  402b9b:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402b9f:	48 b8 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rax
  402ba6:	76 65 20 
  402ba9:	48 89 45 18          	mov    %rax,0x18(%rbp)
  402bad:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
  402bb4:	72 20 61 
  402bb7:	48 89 45 20          	mov    %rax,0x20(%rbp)
  402bbb:	c7 45 28 64 64 72 65 	movl   $0x65726464,0x28(%rbp)
  402bc2:	66 c7 45 2c 73 73    	movw   $0x7373,0x2c(%rbp)
  402bc8:	c6 45 2e 00          	movb   $0x0,0x2e(%rbp)
  402bcc:	89 df                	mov    %ebx,%edi
  402bce:	e8 bd e0 ff ff       	callq  400c90 <close@plt>
  402bd3:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402bd8:	e9 43 ff ff ff       	jmpq   402b20 <init_driver+0xcb>
  402bdd:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
  402be4:	3a 20 55 
  402be7:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402beb:	48 b8 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rax
  402bf2:	20 74 6f 
  402bf5:	48 89 45 08          	mov    %rax,0x8(%rbp)
  402bf9:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
  402c00:	65 63 74 
  402c03:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402c07:	48 b8 20 74 6f 20 73 	movabs $0x76726573206f7420,%rax
  402c0e:	65 72 76 
  402c11:	48 89 45 18          	mov    %rax,0x18(%rbp)
  402c15:	66 c7 45 20 65 72    	movw   $0x7265,0x20(%rbp)
  402c1b:	c6 45 22 00          	movb   $0x0,0x22(%rbp)
  402c1f:	89 df                	mov    %ebx,%edi
  402c21:	e8 6a e0 ff ff       	callq  400c90 <close@plt>
  402c26:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402c2b:	e9 f0 fe ff ff       	jmpq   402b20 <init_driver+0xcb>

0000000000402c30 <driver_post>:
  402c30:	53                   	push   %rbx
  402c31:	4c 89 cb             	mov    %r9,%rbx
  402c34:	45 85 c0             	test   %r8d,%r8d
  402c37:	75 18                	jne    402c51 <driver_post+0x21>
  402c39:	48 85 ff             	test   %rdi,%rdi
  402c3c:	74 05                	je     402c43 <driver_post+0x13>
  402c3e:	80 3f 00             	cmpb   $0x0,(%rdi)
  402c41:	75 32                	jne    402c75 <driver_post+0x45>
  402c43:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  402c48:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  402c4c:	44 89 c0             	mov    %r8d,%eax
  402c4f:	5b                   	pop    %rbx
  402c50:	c3                   	retq   
  402c51:	48 89 ce             	mov    %rcx,%rsi
  402c54:	48 8d 3d 98 08 00 00 	lea    0x898(%rip),%rdi        # 4034f3 <trans_char+0xd3>
  402c5b:	b8 00 00 00 00       	mov    $0x0,%eax
  402c60:	e8 fb df ff ff       	callq  400c60 <printf@plt>
  402c65:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  402c6a:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  402c6e:	b8 00 00 00 00       	mov    $0x0,%eax
  402c73:	eb da                	jmp    402c4f <driver_post+0x1f>
  402c75:	48 83 ec 08          	sub    $0x8,%rsp
  402c79:	41 51                	push   %r9
  402c7b:	49 89 c9             	mov    %rcx,%r9
  402c7e:	49 89 d0             	mov    %rdx,%r8
  402c81:	48 89 f9             	mov    %rdi,%rcx
  402c84:	48 89 f2             	mov    %rsi,%rdx
  402c87:	be a4 3c 00 00       	mov    $0x3ca4,%esi
  402c8c:	48 8d 3d 52 08 00 00 	lea    0x852(%rip),%rdi        # 4034e5 <trans_char+0xc5>
  402c93:	e8 16 f6 ff ff       	callq  4022ae <submitr>
  402c98:	48 83 c4 10          	add    $0x10,%rsp
  402c9c:	eb b1                	jmp    402c4f <driver_post+0x1f>

0000000000402c9e <check>:
  402c9e:	89 f8                	mov    %edi,%eax
  402ca0:	c1 e8 1c             	shr    $0x1c,%eax
  402ca3:	85 c0                	test   %eax,%eax
  402ca5:	74 1d                	je     402cc4 <check+0x26>
  402ca7:	b9 00 00 00 00       	mov    $0x0,%ecx
  402cac:	83 f9 1f             	cmp    $0x1f,%ecx
  402caf:	7f 0d                	jg     402cbe <check+0x20>
  402cb1:	89 f8                	mov    %edi,%eax
  402cb3:	d3 e8                	shr    %cl,%eax
  402cb5:	3c 0a                	cmp    $0xa,%al
  402cb7:	74 11                	je     402cca <check+0x2c>
  402cb9:	83 c1 08             	add    $0x8,%ecx
  402cbc:	eb ee                	jmp    402cac <check+0xe>
  402cbe:	b8 01 00 00 00       	mov    $0x1,%eax
  402cc3:	c3                   	retq   
  402cc4:	b8 00 00 00 00       	mov    $0x0,%eax
  402cc9:	c3                   	retq   
  402cca:	b8 00 00 00 00       	mov    $0x0,%eax
  402ccf:	c3                   	retq   

0000000000402cd0 <gencookie>:
  402cd0:	53                   	push   %rbx
  402cd1:	83 c7 01             	add    $0x1,%edi
  402cd4:	e8 27 df ff ff       	callq  400c00 <srandom@plt>
  402cd9:	e8 32 e0 ff ff       	callq  400d10 <random@plt>
  402cde:	89 c3                	mov    %eax,%ebx
  402ce0:	89 c7                	mov    %eax,%edi
  402ce2:	e8 b7 ff ff ff       	callq  402c9e <check>
  402ce7:	85 c0                	test   %eax,%eax
  402ce9:	74 ee                	je     402cd9 <gencookie+0x9>
  402ceb:	89 d8                	mov    %ebx,%eax
  402ced:	5b                   	pop    %rbx
  402cee:	c3                   	retq   
  402cef:	90                   	nop

0000000000402cf0 <__libc_csu_init>:
  402cf0:	41 57                	push   %r15
  402cf2:	41 56                	push   %r14
  402cf4:	41 89 ff             	mov    %edi,%r15d
  402cf7:	41 55                	push   %r13
  402cf9:	41 54                	push   %r12
  402cfb:	4c 8d 25 06 21 20 00 	lea    0x202106(%rip),%r12        # 604e08 <__frame_dummy_init_array_entry>
  402d02:	55                   	push   %rbp
  402d03:	48 8d 2d 06 21 20 00 	lea    0x202106(%rip),%rbp        # 604e10 <__init_array_end>
  402d0a:	53                   	push   %rbx
  402d0b:	49 89 f6             	mov    %rsi,%r14
  402d0e:	49 89 d5             	mov    %rdx,%r13
  402d11:	4c 29 e5             	sub    %r12,%rbp
  402d14:	48 83 ec 08          	sub    $0x8,%rsp
  402d18:	48 c1 fd 03          	sar    $0x3,%rbp
  402d1c:	e8 8f de ff ff       	callq  400bb0 <_init>
  402d21:	48 85 ed             	test   %rbp,%rbp
  402d24:	74 20                	je     402d46 <__libc_csu_init+0x56>
  402d26:	31 db                	xor    %ebx,%ebx
  402d28:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  402d2f:	00 
  402d30:	4c 89 ea             	mov    %r13,%rdx
  402d33:	4c 89 f6             	mov    %r14,%rsi
  402d36:	44 89 ff             	mov    %r15d,%edi
  402d39:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  402d3d:	48 83 c3 01          	add    $0x1,%rbx
  402d41:	48 39 dd             	cmp    %rbx,%rbp
  402d44:	75 ea                	jne    402d30 <__libc_csu_init+0x40>
  402d46:	48 83 c4 08          	add    $0x8,%rsp
  402d4a:	5b                   	pop    %rbx
  402d4b:	5d                   	pop    %rbp
  402d4c:	41 5c                	pop    %r12
  402d4e:	41 5d                	pop    %r13
  402d50:	41 5e                	pop    %r14
  402d52:	41 5f                	pop    %r15
  402d54:	c3                   	retq   
  402d55:	90                   	nop
  402d56:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  402d5d:	00 00 00 

0000000000402d60 <__libc_csu_fini>:
  402d60:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000402d64 <_fini>:
  402d64:	48 83 ec 08          	sub    $0x8,%rsp
  402d68:	48 83 c4 08          	add    $0x8,%rsp
  402d6c:	c3                   	retq 