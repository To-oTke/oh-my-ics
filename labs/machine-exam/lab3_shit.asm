parallels@debian-gnu-linux-vm:~/icslabs/target40$ objdump -d ctarget

ctarget:     file format elf64-x86-64


Disassembly of section .init:

0000000000400bb0 <_init>:
  400bb0:	48 83 ec 08          	sub    $0x8,%rsp
  400bb4:	48 8b 05 3d 34 20 00 	mov    0x20343d(%rip),%rax        # 603ff8 <__gmon_start__>
  400bbb:	48 85 c0             	test   %rax,%rax
  400bbe:	74 02                	je     400bc2 <_init+0x12>
  400bc0:	ff d0                	callq  *%rax
  400bc2:	48 83 c4 08          	add    $0x8,%rsp
  400bc6:	c3                   	retq   

Disassembly of section .plt:

0000000000400bd0 <.plt>:
  400bd0:	ff 35 32 34 20 00    	pushq  0x203432(%rip)        # 604008 <_GLOBAL_OFFSET_TABLE_+0x8>
  400bd6:	ff 25 34 34 20 00    	jmpq   *0x203434(%rip)        # 604010 <_GLOBAL_OFFSET_TABLE_+0x10>
  400bdc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400be0 <strcasecmp@plt>:
  400be0:	ff 25 32 34 20 00    	jmpq   *0x203432(%rip)        # 604018 <strcasecmp@GLIBC_2.2.5>
  400be6:	68 00 00 00 00       	pushq  $0x0
  400beb:	e9 e0 ff ff ff       	jmpq   400bd0 <.plt>

0000000000400bf0 <__errno_location@plt>:
  400bf0:	ff 25 2a 34 20 00    	jmpq   *0x20342a(%rip)        # 604020 <__errno_location@GLIBC_2.2.5>
  400bf6:	68 01 00 00 00       	pushq  $0x1
  400bfb:	e9 d0 ff ff ff       	jmpq   400bd0 <.plt>

0000000000400c00 <srandom@plt>:
  400c00:	ff 25 22 34 20 00    	jmpq   *0x203422(%rip)        # 604028 <srandom@GLIBC_2.2.5>
  400c06:	68 02 00 00 00       	pushq  $0x2
  400c0b:	e9 c0 ff ff ff       	jmpq   400bd0 <.plt>

0000000000400c10 <strncmp@plt>:
  400c10:	ff 25 1a 34 20 00    	jmpq   *0x20341a(%rip)        # 604030 <strncmp@GLIBC_2.2.5>
  400c16:	68 03 00 00 00       	pushq  $0x3
  400c1b:	e9 b0 ff ff ff       	jmpq   400bd0 <.plt>

0000000000400c20 <strcpy@plt>:
  400c20:	ff 25 12 34 20 00    	jmpq   *0x203412(%rip)        # 604038 <strcpy@GLIBC_2.2.5>
  400c26:	68 04 00 00 00       	pushq  $0x4
  400c2b:	e9 a0 ff ff ff       	jmpq   400bd0 <.plt>

0000000000400c30 <puts@plt>:
  400c30:	ff 25 0a 34 20 00    	jmpq   *0x20340a(%rip)        # 604040 <puts@GLIBC_2.2.5>
  400c36:	68 05 00 00 00       	pushq  $0x5
  400c3b:	e9 90 ff ff ff       	jmpq   400bd0 <.plt>

0000000000400c40 <write@plt>:
  400c40:	ff 25 02 34 20 00    	jmpq   *0x203402(%rip)        # 604048 <write@GLIBC_2.2.5>
  400c46:	68 06 00 00 00       	pushq  $0x6
  400c4b:	e9 80 ff ff ff       	jmpq   400bd0 <.plt>

0000000000400c50 <mmap@plt>:
  400c50:	ff 25 fa 33 20 00    	jmpq   *0x2033fa(%rip)        # 604050 <mmap@GLIBC_2.2.5>
  400c56:	68 07 00 00 00       	pushq  $0x7
  400c5b:	e9 70 ff ff ff       	jmpq   400bd0 <.plt>

0000000000400c60 <printf@plt>:
  400c60:	ff 25 f2 33 20 00    	jmpq   *0x2033f2(%rip)        # 604058 <printf@GLIBC_2.2.5>
  400c66:	68 08 00 00 00       	pushq  $0x8
  400c6b:	e9 60 ff ff ff       	jmpq   400bd0 <.plt>

0000000000400c70 <memset@plt>:
  400c70:	ff 25 ea 33 20 00    	jmpq   *0x2033ea(%rip)        # 604060 <memset@GLIBC_2.2.5>
  400c76:	68 09 00 00 00       	pushq  $0x9
  400c7b:	e9 50 ff ff ff       	jmpq   400bd0 <.plt>

0000000000400c80 <alarm@plt>:
  400c80:	ff 25 e2 33 20 00    	jmpq   *0x2033e2(%rip)        # 604068 <alarm@GLIBC_2.2.5>
  400c86:	68 0a 00 00 00       	pushq  $0xa
  400c8b:	e9 40 ff ff ff       	jmpq   400bd0 <.plt>

0000000000400c90 <close@plt>:
  400c90:	ff 25 da 33 20 00    	jmpq   *0x2033da(%rip)        # 604070 <close@GLIBC_2.2.5>
  400c96:	68 0b 00 00 00       	pushq  $0xb
  400c9b:	e9 30 ff ff ff       	jmpq   400bd0 <.plt>

0000000000400ca0 <read@plt>:
  400ca0:	ff 25 d2 33 20 00    	jmpq   *0x2033d2(%rip)        # 604078 <read@GLIBC_2.2.5>
  400ca6:	68 0c 00 00 00       	pushq  $0xc
  400cab:	e9 20 ff ff ff       	jmpq   400bd0 <.plt>

0000000000400cb0 <signal@plt>:
  400cb0:	ff 25 ca 33 20 00    	jmpq   *0x2033ca(%rip)        # 604080 <signal@GLIBC_2.2.5>
  400cb6:	68 0d 00 00 00       	pushq  $0xd
  400cbb:	e9 10 ff ff ff       	jmpq   400bd0 <.plt>

0000000000400cc0 <gethostbyname@plt>:
  400cc0:	ff 25 c2 33 20 00    	jmpq   *0x2033c2(%rip)        # 604088 <gethostbyname@GLIBC_2.2.5>
  400cc6:	68 0e 00 00 00       	pushq  $0xe
  400ccb:	e9 00 ff ff ff       	jmpq   400bd0 <.plt>

0000000000400cd0 <fprintf@plt>:
  400cd0:	ff 25 ba 33 20 00    	jmpq   *0x2033ba(%rip)        # 604090 <fprintf@GLIBC_2.2.5>
  400cd6:	68 0f 00 00 00       	pushq  $0xf
  400cdb:	e9 f0 fe ff ff       	jmpq   400bd0 <.plt>

0000000000400ce0 <strtol@plt>:
  400ce0:	ff 25 b2 33 20 00    	jmpq   *0x2033b2(%rip)        # 604098 <strtol@GLIBC_2.2.5>
  400ce6:	68 10 00 00 00       	pushq  $0x10
  400ceb:	e9 e0 fe ff ff       	jmpq   400bd0 <.plt>

0000000000400cf0 <memcpy@plt>:
  400cf0:	ff 25 aa 33 20 00    	jmpq   *0x2033aa(%rip)        # 6040a0 <memcpy@GLIBC_2.14>
  400cf6:	68 11 00 00 00       	pushq  $0x11
  400cfb:	e9 d0 fe ff ff       	jmpq   400bd0 <.plt>

0000000000400d00 <time@plt>:
  400d00:	ff 25 a2 33 20 00    	jmpq   *0x2033a2(%rip)        # 6040a8 <time@GLIBC_2.2.5>
  400d06:	68 12 00 00 00       	pushq  $0x12
  400d0b:	e9 c0 fe ff ff       	jmpq   400bd0 <.plt>

0000000000400d10 <random@plt>:
  400d10:	ff 25 9a 33 20 00    	jmpq   *0x20339a(%rip)        # 6040b0 <random@GLIBC_2.2.5>
  400d16:	68 13 00 00 00       	pushq  $0x13
  400d1b:	e9 b0 fe ff ff       	jmpq   400bd0 <.plt>

0000000000400d20 <_IO_getc@plt>:
  400d20:	ff 25 92 33 20 00    	jmpq   *0x203392(%rip)        # 6040b8 <_IO_getc@GLIBC_2.2.5>
  400d26:	68 14 00 00 00       	pushq  $0x14
  400d2b:	e9 a0 fe ff ff       	jmpq   400bd0 <.plt>

0000000000400d30 <__isoc99_sscanf@plt>:
  400d30:	ff 25 8a 33 20 00    	jmpq   *0x20338a(%rip)        # 6040c0 <__isoc99_sscanf@GLIBC_2.7>
  400d36:	68 15 00 00 00       	pushq  $0x15
  400d3b:	e9 90 fe ff ff       	jmpq   400bd0 <.plt>

0000000000400d40 <munmap@plt>:
  400d40:	ff 25 82 33 20 00    	jmpq   *0x203382(%rip)        # 6040c8 <munmap@GLIBC_2.2.5>
  400d46:	68 16 00 00 00       	pushq  $0x16
  400d4b:	e9 80 fe ff ff       	jmpq   400bd0 <.plt>

0000000000400d50 <bcopy@plt>:
  400d50:	ff 25 7a 33 20 00    	jmpq   *0x20337a(%rip)        # 6040d0 <bcopy@GLIBC_2.2.5>
  400d56:	68 17 00 00 00       	pushq  $0x17
  400d5b:	e9 70 fe ff ff       	jmpq   400bd0 <.plt>

0000000000400d60 <fopen@plt>:
  400d60:	ff 25 72 33 20 00    	jmpq   *0x203372(%rip)        # 6040d8 <fopen@GLIBC_2.2.5>
  400d66:	68 18 00 00 00       	pushq  $0x18
  400d6b:	e9 60 fe ff ff       	jmpq   400bd0 <.plt>

0000000000400d70 <getopt@plt>:
  400d70:	ff 25 6a 33 20 00    	jmpq   *0x20336a(%rip)        # 6040e0 <getopt@GLIBC_2.2.5>
  400d76:	68 19 00 00 00       	pushq  $0x19
  400d7b:	e9 50 fe ff ff       	jmpq   400bd0 <.plt>

0000000000400d80 <strtoul@plt>:
  400d80:	ff 25 62 33 20 00    	jmpq   *0x203362(%rip)        # 6040e8 <strtoul@GLIBC_2.2.5>
  400d86:	68 1a 00 00 00       	pushq  $0x1a
  400d8b:	e9 40 fe ff ff       	jmpq   400bd0 <.plt>

0000000000400d90 <gethostname@plt>:
  400d90:	ff 25 5a 33 20 00    	jmpq   *0x20335a(%rip)        # 6040f0 <gethostname@GLIBC_2.2.5>
  400d96:	68 1b 00 00 00       	pushq  $0x1b
  400d9b:	e9 30 fe ff ff       	jmpq   400bd0 <.plt>

0000000000400da0 <sprintf@plt>:
  400da0:	ff 25 52 33 20 00    	jmpq   *0x203352(%rip)        # 6040f8 <sprintf@GLIBC_2.2.5>
  400da6:	68 1c 00 00 00       	pushq  $0x1c
  400dab:	e9 20 fe ff ff       	jmpq   400bd0 <.plt>

0000000000400db0 <exit@plt>:
  400db0:	ff 25 4a 33 20 00    	jmpq   *0x20334a(%rip)        # 604100 <exit@GLIBC_2.2.5>
  400db6:	68 1d 00 00 00       	pushq  $0x1d
  400dbb:	e9 10 fe ff ff       	jmpq   400bd0 <.plt>

0000000000400dc0 <connect@plt>:
  400dc0:	ff 25 42 33 20 00    	jmpq   *0x203342(%rip)        # 604108 <connect@GLIBC_2.2.5>
  400dc6:	68 1e 00 00 00       	pushq  $0x1e
  400dcb:	e9 00 fe ff ff       	jmpq   400bd0 <.plt>

0000000000400dd0 <socket@plt>:
  400dd0:	ff 25 3a 33 20 00    	jmpq   *0x20333a(%rip)        # 604110 <socket@GLIBC_2.2.5>
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
  400def:	49 c7 c0 70 2c 40 00 	mov    $0x402c70,%r8
  400df6:	48 c7 c1 00 2c 40 00 	mov    $0x402c00,%rcx
  400dfd:	48 c7 c7 8d 10 40 00 	mov    $0x40108d,%rdi
  400e04:	ff 15 e6 31 20 00    	callq  *0x2031e6(%rip)        # 603ff0 <__libc_start_main@GLIBC_2.2.5>
  400e0a:	f4                   	hlt    
  400e0b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000400e10 <deregister_tm_clones>:
  400e10:	b8 97 44 60 00       	mov    $0x604497,%eax
  400e15:	55                   	push   %rbp
  400e16:	48 2d 90 44 60 00    	sub    $0x604490,%rax
  400e1c:	48 83 f8 0e          	cmp    $0xe,%rax
  400e20:	48 89 e5             	mov    %rsp,%rbp
  400e23:	76 1b                	jbe    400e40 <deregister_tm_clones+0x30>
  400e25:	b8 00 00 00 00       	mov    $0x0,%eax
  400e2a:	48 85 c0             	test   %rax,%rax
  400e2d:	74 11                	je     400e40 <deregister_tm_clones+0x30>
  400e2f:	5d                   	pop    %rbp
  400e30:	bf 90 44 60 00       	mov    $0x604490,%edi
  400e35:	ff e0                	jmpq   *%rax
  400e37:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  400e3e:	00 00 
  400e40:	5d                   	pop    %rbp
  400e41:	c3                   	retq   
  400e42:	0f 1f 40 00          	nopl   0x0(%rax)
  400e46:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  400e4d:	00 00 00 

0000000000400e50 <register_tm_clones>:
  400e50:	be 90 44 60 00       	mov    $0x604490,%esi
  400e55:	55                   	push   %rbp
  400e56:	48 81 ee 90 44 60 00 	sub    $0x604490,%rsi
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
  400e7e:	bf 90 44 60 00       	mov    $0x604490,%edi
  400e83:	ff e0                	jmpq   *%rax
  400e85:	0f 1f 00             	nopl   (%rax)
  400e88:	5d                   	pop    %rbp
  400e89:	c3                   	retq   
  400e8a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400e90 <__do_global_dtors_aux>:
  400e90:	80 3d 31 36 20 00 00 	cmpb   $0x0,0x203631(%rip)        # 6044c8 <completed.6972>
  400e97:	75 11                	jne    400eaa <__do_global_dtors_aux+0x1a>
  400e99:	55                   	push   %rbp
  400e9a:	48 89 e5             	mov    %rsp,%rbp
  400e9d:	e8 6e ff ff ff       	callq  400e10 <deregister_tm_clones>
  400ea2:	5d                   	pop    %rbp
  400ea3:	c6 05 1e 36 20 00 01 	movb   $0x1,0x20361e(%rip)        # 6044c8 <completed.6972>
  400eaa:	f3 c3                	repz retq 
  400eac:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400eb0 <frame_dummy>:
  400eb0:	bf 18 3e 60 00       	mov    $0x603e18,%edi
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
  400edd:	83 3d 24 36 20 00 00 	cmpl   $0x0,0x203624(%rip)        # 604508 <is_checker>
  400ee4:	74 4b                	je     400f31 <usage+0x5b>
  400ee6:	48 8d 3d 9b 1d 00 00 	lea    0x1d9b(%rip),%rdi        # 402c88 <_IO_stdin_used+0x8>
  400eed:	b8 00 00 00 00       	mov    $0x0,%eax
  400ef2:	e8 69 fd ff ff       	callq  400c60 <printf@plt>
  400ef7:	48 8d 3d c2 1d 00 00 	lea    0x1dc2(%rip),%rdi        # 402cc0 <_IO_stdin_used+0x40>
  400efe:	e8 2d fd ff ff       	callq  400c30 <puts@plt>
  400f03:	48 8d 3d ee 1e 00 00 	lea    0x1eee(%rip),%rdi        # 402df8 <_IO_stdin_used+0x178>
  400f0a:	e8 21 fd ff ff       	callq  400c30 <puts@plt>
  400f0f:	48 8d 3d d2 1d 00 00 	lea    0x1dd2(%rip),%rdi        # 402ce8 <_IO_stdin_used+0x68>
  400f16:	e8 15 fd ff ff       	callq  400c30 <puts@plt>
  400f1b:	48 8d 3d f0 1e 00 00 	lea    0x1ef0(%rip),%rdi        # 402e12 <_IO_stdin_used+0x192>
  400f22:	e8 09 fd ff ff       	callq  400c30 <puts@plt>
  400f27:	bf 00 00 00 00       	mov    $0x0,%edi
  400f2c:	e8 7f fe ff ff       	callq  400db0 <exit@plt>
  400f31:	48 8d 3d f6 1e 00 00 	lea    0x1ef6(%rip),%rdi        # 402e2e <_IO_stdin_used+0x1ae>
  400f38:	b8 00 00 00 00       	mov    $0x0,%eax
  400f3d:	e8 1e fd ff ff       	callq  400c60 <printf@plt>
  400f42:	48 8d 3d c7 1d 00 00 	lea    0x1dc7(%rip),%rdi        # 402d10 <_IO_stdin_used+0x90>
  400f49:	e8 e2 fc ff ff       	callq  400c30 <puts@plt>
  400f4e:	48 8d 3d e3 1d 00 00 	lea    0x1de3(%rip),%rdi        # 402d38 <_IO_stdin_used+0xb8>
  400f55:	e8 d6 fc ff ff       	callq  400c30 <puts@plt>
  400f5a:	48 8d 3d eb 1e 00 00 	lea    0x1eeb(%rip),%rdi        # 402e4c <_IO_stdin_used+0x1cc>
  400f61:	e8 ca fc ff ff       	callq  400c30 <puts@plt>
  400f66:	eb bf                	jmp    400f27 <usage+0x51>

0000000000400f68 <initialize_target>:
  400f68:	55                   	push   %rbp
  400f69:	53                   	push   %rbx
  400f6a:	48 81 ec 08 21 00 00 	sub    $0x2108,%rsp
  400f71:	89 f5                	mov    %esi,%ebp
  400f73:	89 3d 7f 35 20 00    	mov    %edi,0x20357f(%rip)        # 6044f8 <check_level>
  400f79:	8b 3d b1 31 20 00    	mov    0x2031b1(%rip),%edi        # 604130 <target_id>
  400f7f:	e8 55 1c 00 00       	callq  402bd9 <gencookie>
  400f84:	89 05 7a 35 20 00    	mov    %eax,0x20357a(%rip)        # 604504 <cookie>
  400f8a:	89 c7                	mov    %eax,%edi
  400f8c:	e8 48 1c 00 00       	callq  402bd9 <gencookie>
  400f91:	89 05 69 35 20 00    	mov    %eax,0x203569(%rip)        # 604500 <authkey>
  400f97:	8b 05 93 31 20 00    	mov    0x203193(%rip),%eax        # 604130 <target_id>
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
  400fca:	48 89 05 af 34 20 00 	mov    %rax,0x2034af(%rip)        # 604480 <buf_offset>
  400fd1:	c6 05 50 41 20 00 63 	movb   $0x63,0x204150(%rip)        # 605128 <target_prefix>
  400fd8:	83 3d a9 34 20 00 00 	cmpl   $0x0,0x2034a9(%rip)        # 604488 <notify>
  400fdf:	74 09                	je     400fea <initialize_target+0x82>
  400fe1:	83 3d 20 35 20 00 00 	cmpl   $0x0,0x203520(%rip)        # 604508 <is_checker>
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
  401022:	48 8d 15 37 31 20 00 	lea    0x203137(%rip),%rdx        # 604160 <host_table>
  401029:	48 8b 3c c2          	mov    (%rdx,%rax,8),%rdi
  40102d:	48 85 ff             	test   %rdi,%rdi
  401030:	74 27                	je     401059 <initialize_target+0xf1>
  401032:	48 89 e6             	mov    %rsp,%rsi
  401035:	e8 a6 fb ff ff       	callq  400be0 <strcasecmp@plt>
  40103a:	85 c0                	test   %eax,%eax
  40103c:	74 1b                	je     401059 <initialize_target+0xf1>
  40103e:	83 c3 01             	add    $0x1,%ebx
  401041:	eb dc                	jmp    40101f <initialize_target+0xb7>
  401043:	48 8d 3d 1e 1d 00 00 	lea    0x1d1e(%rip),%rdi        # 402d68 <_IO_stdin_used+0xe8>
  40104a:	e8 e1 fb ff ff       	callq  400c30 <puts@plt>
  40104f:	bf 08 00 00 00       	mov    $0x8,%edi
  401054:	e8 57 fd ff ff       	callq  400db0 <exit@plt>
  401059:	48 8d bc 24 00 01 00 	lea    0x100(%rsp),%rdi
  401060:	00 
  401061:	e8 f8 18 00 00       	callq  40295e <init_driver>
  401066:	85 c0                	test   %eax,%eax
  401068:	79 80                	jns    400fea <initialize_target+0x82>
  40106a:	48 8d b4 24 00 01 00 	lea    0x100(%rsp),%rsi
  401071:	00 
  401072:	48 8d 3d 27 1d 00 00 	lea    0x1d27(%rip),%rdi        # 402da0 <_IO_stdin_used+0x120>
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
  40109b:	48 c7 c6 04 1d 40 00 	mov    $0x401d04,%rsi
  4010a2:	bf 0b 00 00 00       	mov    $0xb,%edi
  4010a7:	e8 04 fc ff ff       	callq  400cb0 <signal@plt>
  4010ac:	48 c7 c6 b0 1c 40 00 	mov    $0x401cb0,%rsi
  4010b3:	bf 07 00 00 00       	mov    $0x7,%edi
  4010b8:	e8 f3 fb ff ff       	callq  400cb0 <signal@plt>
  4010bd:	48 c7 c6 58 1d 40 00 	mov    $0x401d58,%rsi
  4010c4:	bf 04 00 00 00       	mov    $0x4,%edi
  4010c9:	e8 e2 fb ff ff       	callq  400cb0 <signal@plt>
  4010ce:	83 3d 33 34 20 00 00 	cmpl   $0x0,0x203433(%rip)        # 604508 <is_checker>
  4010d5:	75 58                	jne    40112f <main+0xa2>
  4010d7:	48 8d 2d 87 1d 00 00 	lea    0x1d87(%rip),%rbp        # 402e65 <_IO_stdin_used+0x1e5>
  4010de:	48 8b 05 bb 33 20 00 	mov    0x2033bb(%rip),%rax        # 6044a0 <stdin@@GLIBC_2.2.5>
  4010e5:	48 89 05 04 34 20 00 	mov    %rax,0x203404(%rip)        # 6044f0 <infile>
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
  40111f:	48 8d 15 8a 1d 00 00 	lea    0x1d8a(%rip),%rdx        # 402eb0 <_IO_stdin_used+0x230>
  401126:	48 63 04 82          	movslq (%rdx,%rax,4),%rax
  40112a:	48 01 d0             	add    %rdx,%rax
  40112d:	ff e0                	jmpq   *%rax
  40112f:	48 c7 c6 ac 1d 40 00 	mov    $0x401dac,%rsi
  401136:	bf 0e 00 00 00       	mov    $0xe,%edi
  40113b:	e8 70 fb ff ff       	callq  400cb0 <signal@plt>
  401140:	bf 05 00 00 00       	mov    $0x5,%edi
  401145:	e8 36 fb ff ff       	callq  400c80 <alarm@plt>
  40114a:	48 8d 2d 19 1d 00 00 	lea    0x1d19(%rip),%rbp        # 402e6a <_IO_stdin_used+0x1ea>
  401151:	eb 8b                	jmp    4010de <main+0x51>
  401153:	48 8b 3b             	mov    (%rbx),%rdi
  401156:	e8 7b fd ff ff       	callq  400ed6 <usage>
  40115b:	48 8d 35 93 1f 00 00 	lea    0x1f93(%rip),%rsi        # 4030f5 <_IO_stdin_used+0x475>
  401162:	48 8b 3d 3f 33 20 00 	mov    0x20333f(%rip),%rdi        # 6044a8 <optarg@@GLIBC_2.2.5>
  401169:	e8 f2 fb ff ff       	callq  400d60 <fopen@plt>
  40116e:	48 89 05 7b 33 20 00 	mov    %rax,0x20337b(%rip)        # 6044f0 <infile>
  401175:	48 85 c0             	test   %rax,%rax
  401178:	0f 85 7a ff ff ff    	jne    4010f8 <main+0x6b>
  40117e:	48 8b 15 23 33 20 00 	mov    0x203323(%rip),%rdx        # 6044a8 <optarg@@GLIBC_2.2.5>
  401185:	48 8d 35 e6 1c 00 00 	lea    0x1ce6(%rip),%rsi        # 402e72 <_IO_stdin_used+0x1f2>
  40118c:	48 8b 3d 2d 33 20 00 	mov    0x20332d(%rip),%rdi        # 6044c0 <stderr@@GLIBC_2.2.5>
  401193:	e8 38 fb ff ff       	callq  400cd0 <fprintf@plt>
  401198:	b8 01 00 00 00       	mov    $0x1,%eax
  40119d:	e9 c9 00 00 00       	jmpq   40126b <main+0x1de>
  4011a2:	ba 10 00 00 00       	mov    $0x10,%edx
  4011a7:	be 00 00 00 00       	mov    $0x0,%esi
  4011ac:	48 8b 3d f5 32 20 00 	mov    0x2032f5(%rip),%rdi        # 6044a8 <optarg@@GLIBC_2.2.5>
  4011b3:	e8 c8 fb ff ff       	callq  400d80 <strtoul@plt>
  4011b8:	41 89 c6             	mov    %eax,%r14d
  4011bb:	e9 38 ff ff ff       	jmpq   4010f8 <main+0x6b>
  4011c0:	ba 0a 00 00 00       	mov    $0xa,%edx
  4011c5:	be 00 00 00 00       	mov    $0x0,%esi
  4011ca:	48 8b 3d d7 32 20 00 	mov    0x2032d7(%rip),%rdi        # 6044a8 <optarg@@GLIBC_2.2.5>
  4011d1:	e8 0a fb ff ff       	callq  400ce0 <strtol@plt>
  4011d6:	41 89 c5             	mov    %eax,%r13d
  4011d9:	e9 1a ff ff ff       	jmpq   4010f8 <main+0x6b>
  4011de:	c7 05 a0 32 20 00 00 	movl   $0x0,0x2032a0(%rip)        # 604488 <notify>
  4011e5:	00 00 00 
  4011e8:	e9 0b ff ff ff       	jmpq   4010f8 <main+0x6b>
  4011ed:	48 8d 3d 9b 1c 00 00 	lea    0x1c9b(%rip),%rdi        # 402e8f <_IO_stdin_used+0x20f>
  4011f4:	b8 00 00 00 00       	mov    $0x0,%eax
  4011f9:	e8 62 fa ff ff       	callq  400c60 <printf@plt>
  4011fe:	48 8b 3b             	mov    (%rbx),%rdi
  401201:	e8 d0 fc ff ff       	callq  400ed6 <usage>
  401206:	be 00 00 00 00       	mov    $0x0,%esi
  40120b:	44 89 ef             	mov    %r13d,%edi
  40120e:	e8 55 fd ff ff       	callq  400f68 <initialize_target>
  401213:	83 3d ee 32 20 00 00 	cmpl   $0x0,0x2032ee(%rip)        # 604508 <is_checker>
  40121a:	74 27                	je     401243 <main+0x1b6>
  40121c:	44 3b 35 dd 32 20 00 	cmp    0x2032dd(%rip),%r14d        # 604500 <authkey>
  401223:	74 1e                	je     401243 <main+0x1b6>
  401225:	44 89 f6             	mov    %r14d,%esi
  401228:	48 8d 3d 99 1b 00 00 	lea    0x1b99(%rip),%rdi        # 402dc8 <_IO_stdin_used+0x148>
  40122f:	b8 00 00 00 00       	mov    $0x0,%eax
  401234:	e8 27 fa ff ff       	callq  400c60 <printf@plt>
  401239:	b8 00 00 00 00       	mov    $0x0,%eax
  40123e:	e8 3d 07 00 00       	callq  401980 <check_fail>
  401243:	8b 35 bb 32 20 00    	mov    0x2032bb(%rip),%esi        # 604504 <cookie>
  401249:	48 8d 3d 52 1c 00 00 	lea    0x1c52(%rip),%rdi        # 402ea2 <_IO_stdin_used+0x222>
  401250:	b8 00 00 00 00       	mov    $0x0,%eax
  401255:	e8 06 fa ff ff       	callq  400c60 <printf@plt>
  40125a:	48 8b 3d 1f 32 20 00 	mov    0x20321f(%rip),%rdi        # 604480 <buf_offset>
  401261:	e8 21 0c 00 00       	callq  401e87 <stable_launch>
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
  40176a:	e8 44 02 00 00       	callq  4019b3 <Gets>
  40176f:	b8 01 00 00 00       	mov    $0x1,%eax
  401774:	48 83 c4 28          	add    $0x28,%rsp
  401778:	c3                   	retq   


1234567890123456789012345678901234567890©GfU¨ @
             xxxxxxxxxxxxxxxxxxxxxxxxxxx©GfU¨(^W)@

90123456789012345678901234567890¨GfU

__text:
       0:	48 c7 c6 6d 9f ca 55 	movq	$1439342445, %rsi
       7:	48 83 c4 08 	addq	$8, %rsp
       b:	c3 	retq

0000000000401779 <touch1>:
  401779:	48 83 ec 08          	sub    $0x8,%rsp§
  40177d:	c7 05 75 2d 20 00 01 	movl   $0x1,0x202d75(%rip)        # 6044fc <vlevel>
  401784:	00 00 00 
  401787:	48 8d 3d ba 17 00 00 	lea    0x17ba(%rip),%rdi        # 402f48 <_IO_stdin_used+0x2c8>
  40178e:	e8 9d f4 ff ff       	callq  400c30 <puts@plt> 
  401793:	bf 01 00 00 00       	mov    $0x1,%edi
  401798:	e8 2d 04 00 00       	callq  401bca <validate>
  40179d:	bf 00 00 00 00       	mov    $0x0,%edi
  4017a2:	e8 09 f6 ff ff       	callq  400db0 <exit@plt>

w0x55ca9f6d

556647a9

556647d0

mov (0x604504), %rsi
ret

00000000004017a7 <touch2>:
  4017a7:	48 83 ec 08          	sub    $0x8,%rsp
  4017ab:	89 fe                	mov    %edi,%esi
  4017ad:	c7 05 45 2d 20 00 02 	movl   $0x2,0x202d45(%rip)        # 6044fc <vlevel>
  4017b4:	00 00 00 
  4017b7:	39 3d 47 2d 20 00    	cmp    %edi,0x202d47(%rip)        # 604504 <cookie>
  4017bd:	74 25                	je     4017e4 <touch2+0x3d>
  4017bf:	48 8d 3d d2 17 00 00 	lea    0x172(%rip),%rdi        # 402f98 <_IO_stdin_used+0x318>
  4017c6:	b8 00 00 00 00       	mov    $0x0,%eax
  4017cb:	e8 90 f4 ff ff       	callq  400c60 <printf@plt>
  4017d0:	bf 02 00 00 00       	mov    $0x2,%edi
  4017d5:	e8 ae 04 00 00       	callq  401c88 <fail>
  4017da:	bf 00 00 00 00       	mov    $0x0,%edi
  4017df:	e8 cc f5 ff ff       	callq  400db0 <exit@plt>
  4017e4:	48 8d 3d 85 17 00 00 	lea    0x1785(%rip),%rdi        # 402f70 <_IO_stdin_used+0x2f0>
  4017eb:	b8 00 00 00 00       	mov    $0x0,%eax
  4017f0:	e8 6b f4 ff ff       	callq  400c60 <printf@plt>
  4017f5:	bf 02 00 00 00       	mov    $0x2,%edi
  4017fa:	e8 cb 03 00 00       	callq  401bca <validate>
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
  40184d:	48 8d 35 11 17 00 00 	lea    0x1711(%rip),%rsi        # 402f65 <_IO_stdin_used+0x2e5>
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
  401886:	c7 05 6c 2c 20 00 03 	movl   $0x3,0x202c6c(%rip)        # 6044fc <vlevel>
  40188d:	00 00 00 
  401890:	48 89 fe             	mov    %rdi,%rsi
  401893:	8b 3d 6b 2c 20 00    	mov    0x202c6b(%rip),%edi        # 604504 <cookie>
  401899:	e8 63 ff ff ff       	callq  401801 <hexmatch>
  40189e:	85 c0                	test   %eax,%eax
  4018a0:	74 28                	je     4018ca <touch3+0x48>
  4018a2:	48 89 de             	mov    %rbx,%rsi
  4018a5:	48 8d 3d 14 17 00 00 	lea    0x1714(%rip),%rdi        # 402fc0 <_IO_stdin_used+0x340>
  4018ac:	b8 00 00 00 00       	mov    $0x0,%eax
  4018b1:	e8 aa f3 ff ff       	callq  400c60 <printf@plt>
  4018b6:	bf 03 00 00 00       	mov    $0x3,%edi
  4018bb:	e8 0a 03 00 00       	callq  401bca <validate>
  4018c0:	bf 00 00 00 00       	mov    $0x0,%edi
  4018c5:	e8 e6 f4 ff ff       	callq  400db0 <exit@plt>
  4018ca:	48 89 de             	mov    %rbx,%rsi
  4018cd:	48 8d 3d 14 17 00 00 	lea    0x1714(%rip),%rdi        # 402fe8 <_IO_stdin_used+0x368>
  4018d4:	b8 00 00 00 00       	mov    $0x0,%eax
  4018d9:	e8 82 f3 ff ff       	callq  400c60 <printf@plt>
  4018de:	bf 03 00 00 00       	mov    $0x3,%edi
  4018e3:	e8 a0 03 00 00       	callq  401c88 <fail>
  4018e8:	eb d6                	jmp    4018c0 <touch3+0x3e>

00000000004018ea <test>:
  4018ea:	48 83 ec 08          	sub    $0x8,%rsp
  4018ee:	b8 00 00 00 00       	mov    $0x0,%eax
  4018f3:	e8 6b fe ff ff       	callq  401763 <getbuf>
  4018f8:	89 c6                	mov    %eax,%esi
  4018fa:	48 8d 3d 0f 17 00 00 	lea    0x170f(%rip),%rdi        # 403010 <_IO_stdin_used+0x390>
  401901:	b8 00 00 00 00       	mov    $0x0,%eax
  401906:	e8 55 f3 ff ff       	callq  400c60 <printf@plt>
  40190b:	48 83 c4 08          	add    $0x8,%rsp
  40190f:	c3                   	retq   

0000000000401910 <save_char>:
  401910:	8b 05 0e 38 20 00    	mov    0x20380e(%rip),%eax        # 605124 <gets_cnt>
  401916:	3d ff 03 00 00       	cmp    $0x3ff,%eax
  40191b:	7f 4a                	jg     401967 <save_char+0x57>
  40191d:	8d 14 40             	lea    (%rax,%rax,2),%edx
  401920:	89 f9                	mov    %edi,%ecx
  401922:	c0 e9 04             	shr    $0x4,%cl
  401925:	4c 8d 05 04 1a 00 00 	lea    0x1a04(%rip),%r8        # 403330 <trans_char>
  40192c:	83 e1 0f             	and    $0xf,%ecx
  40192f:	45 0f b6 0c 08       	movzbl (%r8,%rcx,1),%r9d
  401934:	48 8d 0d e5 2b 20 00 	lea    0x202be5(%rip),%rcx        # 604520 <gets_buf>
  40193b:	48 63 f2             	movslq %edx,%rsi
  40193e:	44 88 0c 31          	mov    %r9b,(%rcx,%rsi,1)
  401942:	8d 72 01             	lea    0x1(%rdx),%esi
  401945:	83 e7 0f             	and    $0xf,%edi
  401948:	41 0f b6 3c 38       	movzbl (%r8,%rdi,1),%edi
  40194d:	48 63 f6             	movslq %esi,%rsi
  401950:	40 88 3c 31          	mov    %dil,(%rcx,%rsi,1)
  401954:	83 c2 02             	add    $0x2,%edx
  401957:	48 63 d2             	movslq %edx,%rdx
  40195a:	c6 04 11 20          	movb   $0x20,(%rcx,%rdx,1)
  40195e:	83 c0 01             	add    $0x1,%eax
  401961:	89 05 bd 37 20 00    	mov    %eax,0x2037bd(%rip)        # 605124 <gets_cnt>
  401967:	f3 c3                	repz retq 

0000000000401969 <save_term>:
  401969:	8b 05 b5 37 20 00    	mov    0x2037b5(%rip),%eax        # 605124 <gets_cnt>
  40196f:	8d 04 40             	lea    (%rax,%rax,2),%eax
  401972:	48 98                	cltq   
  401974:	48 8d 15 a5 2b 20 00 	lea    0x202ba5(%rip),%rdx        # 604520 <gets_buf>
  40197b:	c6 04 02 00          	movb   $0x0,(%rdx,%rax,1)
  40197f:	c3                   	retq   

0000000000401980 <check_fail>:
  401980:	48 83 ec 08          	sub    $0x8,%rsp
  401984:	0f be 35 9d 37 20 00 	movsbl 0x20379d(%rip),%esi        # 605128 <target_prefix>
  40198b:	48 8d 0d 8e 2b 20 00 	lea    0x202b8e(%rip),%rcx        # 604520 <gets_buf>
  401992:	8b 15 60 2b 20 00    	mov    0x202b60(%rip),%edx        # 6044f8 <check_level>
  401998:	48 8d 3d 94 16 00 00 	lea    0x1694(%rip),%rdi        # 403033 <_IO_stdin_used+0x3b3>
  40199f:	b8 00 00 00 00       	mov    $0x0,%eax
  4019a4:	e8 b7 f2 ff ff       	callq  400c60 <printf@plt>
  4019a9:	bf 01 00 00 00       	mov    $0x1,%edi
  4019ae:	e8 fd f3 ff ff       	callq  400db0 <exit@plt>


00000000004019b3 <Gets>:
  4019b3:	41 54                	push   %r12
  4019b5:	55                   	push   %rbp
  4019b6:	53                   	push   %rbx
  4019b7:	49 89 fc             	mov    %rdi,%r12
  4019ba:	c7 05 60 37 20 00 00 	movl   $0x0,0x203760(%rip)        # 605124 <gets_cnt>
  4019c1:	00 00 00 
  4019c4:	48 89 fb             	mov    %rdi,%rbx
  4019c7:	eb 11                	jmp    4019da <Gets+0x27>
  4019c9:	48 8d 6b 01          	lea    0x1(%rbx),%rbp
  4019cd:	88 03                	mov    %al,(%rbx)
  4019cf:	0f b6 f8             	movzbl %al,%edi
  4019d2:	e8 39 ff ff ff       	callq  401910 <save_char>
  4019d7:	48 89 eb             	mov    %rbp,%rbx
  4019da:	48 8b 3d 0f 2b 20 00 	mov    0x202b0f(%rip),%rdi        # 6044f0 <infile>
  4019e1:	e8 3a f3 ff ff       	callq  400d20 <_IO_getc@plt>
  4019e6:	83 f8 ff             	cmp    $0xffffffff,%eax
  4019e9:	74 05                	je     4019f0 <Gets+0x3d>
  4019eb:	83 f8 0a             	cmp    $0xa,%eax
  4019ee:	75 d9                	jne    4019c9 <Gets+0x16>
  4019f0:	c6 03 00             	movb   $0x0,(%rbx)
  4019f3:	b8 00 00 00 00       	mov    $0x0,%eax
  4019f8:	e8 6c ff ff ff       	callq  401969 <save_term>
  4019fd:	4c 89 e0             	mov    %r12,%rax
  401a00:	5b                   	pop    %rbx
  401a01:	5d                   	pop    %rbp
  401a02:	41 5c                	pop    %r12
  401a04:	c3                   	retq   

0000000000401a05 <notify_server>:
  401a05:	83 3d fc 2a 20 00 00 	cmpl   $0x0,0x202afc(%rip)        # 604508 <is_checker>
  401a0c:	0f 85 de 00 00 00    	jne    401af0 <notify_server+0xeb>
  401a12:	55                   	push   %rbp
  401a13:	53                   	push   %rbx
  401a14:	48 81 ec 08 40 00 00 	sub    $0x4008,%rsp
  401a1b:	89 fb                	mov    %edi,%ebx
  401a1d:	8b 05 01 37 20 00    	mov    0x203701(%rip),%eax        # 605124 <gets_cnt>
  401a23:	83 c0 64             	add    $0x64,%eax
  401a26:	3d 00 20 00 00       	cmp    $0x2000,%eax
  401a2b:	0f 8f c1 00 00 00    	jg     401af2 <notify_server+0xed>
  401a31:	44 0f be 0d ef 36 20 	movsbl 0x2036ef(%rip),%r9d        # 605128 <target_prefix>
  401a38:	00 
  401a39:	83 3d 48 2a 20 00 00 	cmpl   $0x0,0x202a48(%rip)        # 604488 <notify>
  401a40:	0f 84 c7 00 00 00    	je     401b0d <notify_server+0x108>
  401a46:	44 8b 05 b3 2a 20 00 	mov    0x202ab3(%rip),%r8d        # 604500 <authkey>
  401a4d:	85 db                	test   %ebx,%ebx
  401a4f:	0f 84 c3 00 00 00    	je     401b18 <notify_server+0x113>
  401a55:	48 8d 2d ed 15 00 00 	lea    0x15ed(%rip),%rbp        # 403049 <_IO_stdin_used+0x3c9>
  401a5c:	48 8d bc 24 00 20 00 	lea    0x2000(%rsp),%rdi
  401a63:	00 
  401a64:	48 8d 05 b5 2a 20 00 	lea    0x202ab5(%rip),%rax        # 604520 <gets_buf>
  401a6b:	50                   	push   %rax
  401a6c:	56                   	push   %rsi
  401a6d:	48 89 e9             	mov    %rbp,%rcx
  401a70:	8b 15 ba 26 20 00    	mov    0x2026ba(%rip),%edx        # 604130 <target_id>
  401a76:	48 8d 35 d6 15 00 00 	lea    0x15d6(%rip),%rsi        # 403053 <_IO_stdin_used+0x3d3>
  401a7d:	b8 00 00 00 00       	mov    $0x0,%eax
  401a82:	e8 19 f3 ff ff       	callq  400da0 <sprintf@plt>
  401a87:	48 83 c4 10          	add    $0x10,%rsp
  401a8b:	83 3d f6 29 20 00 00 	cmpl   $0x0,0x2029f6(%rip)        # 604488 <notify>
  401a92:	0f 84 b8 00 00 00    	je     401b50 <notify_server+0x14b>
  401a98:	85 db                	test   %ebx,%ebx
  401a9a:	0f 84 a2 00 00 00    	je     401b42 <notify_server+0x13d>
  401aa0:	48 8d 8c 24 00 20 00 	lea    0x2000(%rsp),%rcx
  401aa7:	00 
  401aa8:	49 89 e1             	mov    %rsp,%r9
  401aab:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  401ab1:	48 8b 15 90 26 20 00 	mov    0x202690(%rip),%rdx        # 604148 <lab>
  401ab8:	48 8b 35 91 26 20 00 	mov    0x202691(%rip),%rsi        # 604150 <course>
  401abf:	48 8b 3d 7a 26 20 00 	mov    0x20267a(%rip),%rdi        # 604140 <user_id>
  401ac6:	e8 6e 10 00 00       	callq  402b39 <driver_post>
  401acb:	85 c0                	test   %eax,%eax
  401acd:	78 55                	js     401b24 <notify_server+0x11f>
  401acf:	48 8d 3d c2 16 00 00 	lea    0x16c2(%rip),%rdi        # 403198 <_IO_stdin_used+0x518>
  401ad6:	e8 55 f1 ff ff       	callq  400c30 <puts@plt>
  401adb:	48 8d 3d 99 15 00 00 	lea    0x1599(%rip),%rdi        # 40307b <_IO_stdin_used+0x3fb>
  401ae2:	e8 49 f1 ff ff       	callq  400c30 <puts@plt>
  401ae7:	48 81 c4 08 40 00 00 	add    $0x4008,%rsp
  401aee:	5b                   	pop    %rbx
  401aef:	5d                   	pop    %rbp
  401af0:	f3 c3                	repz retq 
  401af2:	48 8d 3d 6f 16 00 00 	lea    0x166f(%rip),%rdi        # 403168 <_IO_stdin_used+0x4e8>
  401af9:	b8 00 00 00 00       	mov    $0x0,%eax
  401afe:	e8 5d f1 ff ff       	callq  400c60 <printf@plt>
  401b03:	bf 01 00 00 00       	mov    $0x1,%edi
  401b08:	e8 a3 f2 ff ff       	callq  400db0 <exit@plt>
  401b0d:	41 b8 ff ff ff ff    	mov    $0xffffffff,%r8d
  401b13:	e9 35 ff ff ff       	jmpq   401a4d <notify_server+0x48>
  401b18:	48 8d 2d 2f 15 00 00 	lea    0x152f(%rip),%rbp        # 40304e <_IO_stdin_used+0x3ce>
  401b1f:	e9 38 ff ff ff       	jmpq   401a5c <notify_server+0x57>
  401b24:	48 89 e6             	mov    %rsp,%rsi
  401b27:	48 8d 3d 41 15 00 00 	lea    0x1541(%rip),%rdi        # 40306f <_IO_stdin_used+0x3ef>
  401b2e:	b8 00 00 00 00       	mov    $0x0,%eax
  401b33:	e8 28 f1 ff ff       	callq  400c60 <printf@plt>
  401b38:	bf 01 00 00 00       	mov    $0x1,%edi
  401b3d:	e8 6e f2 ff ff       	callq  400db0 <exit@plt>
  401b42:	48 8d 3d 3c 15 00 00 	lea    0x153c(%rip),%rdi        # 403085 <_IO_stdin_used+0x405>
  401b49:	e8 e2 f0 ff ff       	callq  400c30 <puts@plt>
  401b4e:	eb 97                	jmp    401ae7 <notify_server+0xe2>
  401b50:	48 89 ee             	mov    %rbp,%rsi
  401b53:	48 8d 3d 76 16 00 00 	lea    0x1676(%rip),%rdi        # 4031d0 <_IO_stdin_used+0x550>
  401b5a:	b8 00 00 00 00       	mov    $0x0,%eax
  401b5f:	e8 fc f0 ff ff       	callq  400c60 <printf@plt>
  401b64:	48 8b 35 d5 25 20 00 	mov    0x2025d5(%rip),%rsi        # 604140 <user_id>
  401b6b:	48 8d 3d 1a 15 00 00 	lea    0x151a(%rip),%rdi        # 40308c <_IO_stdin_used+0x40c>
  401b72:	b8 00 00 00 00       	mov    $0x0,%eax
  401b77:	e8 e4 f0 ff ff       	callq  400c60 <printf@plt>
  401b7c:	48 8b 35 cd 25 20 00 	mov    0x2025cd(%rip),%rsi        # 604150 <course>
  401b83:	48 8d 3d 0f 15 00 00 	lea    0x150f(%rip),%rdi        # 403099 <_IO_stdin_used+0x419>
  401b8a:	b8 00 00 00 00       	mov    $0x0,%eax
  401b8f:	e8 cc f0 ff ff       	callq  400c60 <printf@plt>
  401b94:	48 8b 35 ad 25 20 00 	mov    0x2025ad(%rip),%rsi        # 604148 <lab>
  401b9b:	48 8d 3d 03 15 00 00 	lea    0x1503(%rip),%rdi        # 4030a5 <_IO_stdin_used+0x425>
  401ba2:	b8 00 00 00 00       	mov    $0x0,%eax
  401ba7:	e8 b4 f0 ff ff       	callq  400c60 <printf@plt>
  401bac:	48 8d b4 24 00 20 00 	lea    0x2000(%rsp),%rsi
  401bb3:	00 
  401bb4:	48 8d 3d f3 14 00 00 	lea    0x14f3(%rip),%rdi        # 4030ae <_IO_stdin_used+0x42e>
  401bbb:	b8 00 00 00 00       	mov    $0x0,%eax
  401bc0:	e8 9b f0 ff ff       	callq  400c60 <printf@plt>
  401bc5:	e9 1d ff ff ff       	jmpq   401ae7 <notify_server+0xe2>

0000000000401bca <validate>:
  401bca:	53                   	push   %rbx
  401bcb:	89 fb                	mov    %edi,%ebx
  401bcd:	83 3d 34 29 20 00 00 	cmpl   $0x0,0x202934(%rip)        # 604508 <is_checker>
  401bd4:	74 68                	je     401c3e <validate+0x74>
  401bd6:	39 3d 20 29 20 00    	cmp    %edi,0x202920(%rip)        # 6044fc <vlevel>
  401bdc:	75 2d                	jne    401c0b <validate+0x41>
  401bde:	8b 35 14 29 20 00    	mov    0x202914(%rip),%esi        # 6044f8 <check_level>
  401be4:	39 f7                	cmp    %esi,%edi
  401be6:	75 39                	jne    401c21 <validate+0x57>
  401be8:	0f be 35 39 35 20 00 	movsbl 0x203539(%rip),%esi        # 605128 <target_prefix>
  401bef:	48 8d 0d 2a 29 20 00 	lea    0x20292a(%rip),%rcx        # 604520 <gets_buf>
  401bf6:	89 fa                	mov    %edi,%edx
  401bf8:	48 8d 3d d9 14 00 00 	lea    0x14d9(%rip),%rdi        # 4030d8 <_IO_stdin_used+0x458>
  401bff:	b8 00 00 00 00       	mov    $0x0,%eax
  401c04:	e8 57 f0 ff ff       	callq  400c60 <printf@plt>
  401c09:	5b                   	pop    %rbx
  401c0a:	c3                   	retq   
  401c0b:	48 8d 3d a8 14 00 00 	lea    0x14a8(%rip),%rdi        # 4030ba <_IO_stdin_used+0x43a>
  401c12:	e8 19 f0 ff ff       	callq  400c30 <puts@plt>
  401c17:	b8 00 00 00 00       	mov    $0x0,%eax
  401c1c:	e8 5f fd ff ff       	callq  401980 <check_fail>
  401c21:	89 fa                	mov    %edi,%edx
  401c23:	48 8d 3d ce 15 00 00 	lea    0x15ce(%rip),%rdi        # 4031f8 <_IO_stdin_used+0x578>
  401c2a:	b8 00 00 00 00       	mov    $0x0,%eax
  401c2f:	e8 2c f0 ff ff       	callq  400c60 <printf@plt>
  401c34:	b8 00 00 00 00       	mov    $0x0,%eax
  401c39:	e8 42 fd ff ff       	callq  401980 <check_fail>
  401c3e:	3b 3d b8 28 20 00    	cmp    0x2028b8(%rip),%edi        # 6044fc <vlevel>
  401c44:	74 1a                	je     401c60 <validate+0x96>
  401c46:	48 8d 3d 6d 14 00 00 	lea    0x146d(%rip),%rdi        # 4030ba <_IO_stdin_used+0x43a>
  401c4d:	e8 de ef ff ff       	callq  400c30 <puts@plt>
  401c52:	89 de                	mov    %ebx,%esi
  401c54:	bf 00 00 00 00       	mov    $0x0,%edi
  401c59:	e8 a7 fd ff ff       	callq  401a05 <notify_server>
  401c5e:	eb a9                	jmp    401c09 <validate+0x3f>
  401c60:	0f be 15 c1 34 20 00 	movsbl 0x2034c1(%rip),%edx        # 605128 <target_prefix>
  401c67:	89 fe                	mov    %edi,%esi
  401c69:	48 8d 3d b0 15 00 00 	lea    0x15b0(%rip),%rdi        # 403220 <_IO_stdin_used+0x5a0>
  401c70:	b8 00 00 00 00       	mov    $0x0,%eax
  401c75:	e8 e6 ef ff ff       	callq  400c60 <printf@plt>
  401c7a:	89 de                	mov    %ebx,%esi
  401c7c:	bf 01 00 00 00       	mov    $0x1,%edi
  401c81:	e8 7f fd ff ff       	callq  401a05 <notify_server>
  401c86:	eb 81                	jmp    401c09 <validate+0x3f>

0000000000401c88 <fail>:
  401c88:	48 83 ec 08          	sub    $0x8,%rsp
  401c8c:	83 3d 75 28 20 00 00 	cmpl   $0x0,0x202875(%rip)        # 604508 <is_checker>
  401c93:	75 11                	jne    401ca6 <fail+0x1e>
  401c95:	89 fe                	mov    %edi,%esi
  401c97:	bf 00 00 00 00       	mov    $0x0,%edi
  401c9c:	e8 64 fd ff ff       	callq  401a05 <notify_server>
  401ca1:	48 83 c4 08          	add    $0x8,%rsp
  401ca5:	c3                   	retq   
  401ca6:	b8 00 00 00 00       	mov    $0x0,%eax
  401cab:	e8 d0 fc ff ff       	callq  401980 <check_fail>

0000000000401cb0 <bushandler>:
  401cb0:	48 83 ec 08          	sub    $0x8,%rsp
  401cb4:	83 3d 4d 28 20 00 00 	cmpl   $0x0,0x20284d(%rip)        # 604508 <is_checker>
  401cbb:	74 16                	je     401cd3 <bushandler+0x23>
  401cbd:	48 8d 3d 29 14 00 00 	lea    0x1429(%rip),%rdi        # 4030ed <_IO_stdin_used+0x46d>
  401cc4:	e8 67 ef ff ff       	callq  400c30 <puts@plt>
  401cc9:	b8 00 00 00 00       	mov    $0x0,%eax
  401cce:	e8 ad fc ff ff       	callq  401980 <check_fail>
  401cd3:	48 8d 3d 7e 15 00 00 	lea    0x157e(%rip),%rdi        # 403258 <_IO_stdin_used+0x5d8>
  401cda:	e8 51 ef ff ff       	callq  400c30 <puts@plt>
  401cdf:	48 8d 3d 11 14 00 00 	lea    0x1411(%rip),%rdi        # 4030f7 <_IO_stdin_used+0x477>
  401ce6:	e8 45 ef ff ff       	callq  400c30 <puts@plt>
  401ceb:	be 00 00 00 00       	mov    $0x0,%esi
  401cf0:	bf 00 00 00 00       	mov    $0x0,%edi
  401cf5:	e8 0b fd ff ff       	callq  401a05 <notify_server>
  401cfa:	bf 01 00 00 00       	mov    $0x1,%edi
  401cff:	e8 ac f0 ff ff       	callq  400db0 <exit@plt>

0000000000401d04 <seghandler>:
  401d04:	48 83 ec 08          	sub    $0x8,%rsp
  401d08:	83 3d f9 27 20 00 00 	cmpl   $0x0,0x2027f9(%rip)        # 604508 <is_checker>
  401d0f:	74 16                	je     401d27 <seghandler+0x23>
  401d11:	48 8d 3d f5 13 00 00 	lea    0x13f5(%rip),%rdi        # 40310d <_IO_stdin_used+0x48d>
  401d18:	e8 13 ef ff ff       	callq  400c30 <puts@plt>
  401d1d:	b8 00 00 00 00       	mov    $0x0,%eax
  401d22:	e8 59 fc ff ff       	callq  401980 <check_fail>
  401d27:	48 8d 3d 4a 15 00 00 	lea    0x154a(%rip),%rdi        # 403278 <_IO_stdin_used+0x5f8>
  401d2e:	e8 fd ee ff ff       	callq  400c30 <puts@plt>
  401d33:	48 8d 3d bd 13 00 00 	lea    0x13bd(%rip),%rdi        # 4030f7 <_IO_stdin_used+0x477>
  401d3a:	e8 f1 ee ff ff       	callq  400c30 <puts@plt>
  401d3f:	be 00 00 00 00       	mov    $0x0,%esi
  401d44:	bf 00 00 00 00       	mov    $0x0,%edi
  401d49:	e8 b7 fc ff ff       	callq  401a05 <notify_server>
  401d4e:	bf 01 00 00 00       	mov    $0x1,%edi
  401d53:	e8 58 f0 ff ff       	callq  400db0 <exit@plt>

0000000000401d58 <illegalhandler>:
  401d58:	48 83 ec 08          	sub    $0x8,%rsp
  401d5c:	83 3d a5 27 20 00 00 	cmpl   $0x0,0x2027a5(%rip)        # 604508 <is_checker>
  401d63:	74 16                	je     401d7b <illegalhandler+0x23>
  401d65:	48 8d 3d b4 13 00 00 	lea    0x13b4(%rip),%rdi        # 403120 <_IO_stdin_used+0x4a0>
  401d6c:	e8 bf ee ff ff       	callq  400c30 <puts@plt>
  401d71:	b8 00 00 00 00       	mov    $0x0,%eax
  401d76:	e8 05 fc ff ff       	callq  401980 <check_fail>
  401d7b:	48 8d 3d 1e 15 00 00 	lea    0x151e(%rip),%rdi        # 4032a0 <_IO_stdin_used+0x620>
  401d82:	e8 a9 ee ff ff       	callq  400c30 <puts@plt>
  401d87:	48 8d 3d 69 13 00 00 	lea    0x1369(%rip),%rdi        # 4030f7 <_IO_stdin_used+0x477>
  401d8e:	e8 9d ee ff ff       	callq  400c30 <puts@plt>
  401d93:	be 00 00 00 00       	mov    $0x0,%esi
  401d98:	bf 00 00 00 00       	mov    $0x0,%edi
  401d9d:	e8 63 fc ff ff       	callq  401a05 <notify_server>
  401da2:	bf 01 00 00 00       	mov    $0x1,%edi
  401da7:	e8 04 f0 ff ff       	callq  400db0 <exit@plt>

0000000000401dac <sigalrmhandler>:
  401dac:	48 83 ec 08          	sub    $0x8,%rsp
  401db0:	83 3d 51 27 20 00 00 	cmpl   $0x0,0x202751(%rip)        # 604508 <is_checker>
  401db7:	74 16                	je     401dcf <sigalrmhandler+0x23>
  401db9:	48 8d 3d 74 13 00 00 	lea    0x1374(%rip),%rdi        # 403134 <_IO_stdin_used+0x4b4>
  401dc0:	e8 6b ee ff ff       	callq  400c30 <puts@plt>
  401dc5:	b8 00 00 00 00       	mov    $0x0,%eax
  401dca:	e8 b1 fb ff ff       	callq  401980 <check_fail>
  401dcf:	be 05 00 00 00       	mov    $0x5,%esi
  401dd4:	48 8d 3d f5 14 00 00 	lea    0x14f5(%rip),%rdi        # 4032d0 <_IO_stdin_used+0x650>
  401ddb:	b8 00 00 00 00       	mov    $0x0,%eax
  401de0:	e8 7b ee ff ff       	callq  400c60 <printf@plt>
  401de5:	be 00 00 00 00       	mov    $0x0,%esi
  401dea:	bf 00 00 00 00       	mov    $0x0,%edi
  401def:	e8 11 fc ff ff       	callq  401a05 <notify_server>
  401df4:	bf 01 00 00 00       	mov    $0x1,%edi
  401df9:	e8 b2 ef ff ff       	callq  400db0 <exit@plt>

0000000000401dfe <launch>:
  401dfe:	55                   	push   %rbp
  401dff:	48 89 e5             	mov    %rsp,%rbp
  401e02:	48 89 fa             	mov    %rdi,%rdx
  401e05:	48 8d 47 1e          	lea    0x1e(%rdi),%rax
  401e09:	48 83 e0 f0          	and    $0xfffffffffffffff0,%rax
  401e0d:	48 29 c4             	sub    %rax,%rsp
  401e10:	48 8d 7c 24 0f       	lea    0xf(%rsp),%rdi
  401e15:	48 83 e7 f0          	and    $0xfffffffffffffff0,%rdi
  401e19:	be f4 00 00 00       	mov    $0xf4,%esi
  401e1e:	e8 4d ee ff ff       	callq  400c70 <memset@plt>
  401e23:	48 8b 05 76 26 20 00 	mov    0x202676(%rip),%rax        # 6044a0 <stdin@@GLIBC_2.2.5>
  401e2a:	48 39 05 bf 26 20 00 	cmp    %rax,0x2026bf(%rip)        # 6044f0 <infile>
  401e31:	74 2b                	je     401e5e <launch+0x60>
  401e33:	c7 05 bf 26 20 00 00 	movl   $0x0,0x2026bf(%rip)        # 6044fc <vlevel>
  401e3a:	00 00 00 
  401e3d:	b8 00 00 00 00       	mov    $0x0,%eax
  401e42:	e8 a3 fa ff ff       	callq  4018ea <test>
  401e47:	83 3d ba 26 20 00 00 	cmpl   $0x0,0x2026ba(%rip)        # 604508 <is_checker>
  401e4e:	75 21                	jne    401e71 <launch+0x73>
  401e50:	48 8d 3d fd 12 00 00 	lea    0x12fd(%rip),%rdi        # 403154 <_IO_stdin_used+0x4d4>
  401e57:	e8 d4 ed ff ff       	callq  400c30 <puts@plt>
  401e5c:	c9                   	leaveq 
  401e5d:	c3                   	retq   
  401e5e:	48 8d 3d d7 12 00 00 	lea    0x12d7(%rip),%rdi        # 40313c <_IO_stdin_used+0x4bc>
  401e65:	b8 00 00 00 00       	mov    $0x0,%eax
  401e6a:	e8 f1 ed ff ff       	callq  400c60 <printf@plt>
  401e6f:	eb c2                	jmp    401e33 <launch+0x35>
  401e71:	48 8d 3d d1 12 00 00 	lea    0x12d1(%rip),%rdi        # 403149 <_IO_stdin_used+0x4c9>
  401e78:	e8 b3 ed ff ff       	callq  400c30 <puts@plt>
  401e7d:	b8 00 00 00 00       	mov    $0x0,%eax
  401e82:	e8 f9 fa ff ff       	callq  401980 <check_fail>

0000000000401e87 <stable_launch>:
  401e87:	53                   	push   %rbx
  401e88:	48 89 3d 59 26 20 00 	mov    %rdi,0x202659(%rip)        # 6044e8 <global_offset>
  401e8f:	41 b9 00 00 00 00    	mov    $0x0,%r9d
  401e95:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  401e9b:	b9 32 01 00 00       	mov    $0x132,%ecx
  401ea0:	ba 07 00 00 00       	mov    $0x7,%edx
  401ea5:	be 00 00 10 00       	mov    $0x100000,%esi
  401eaa:	bf 00 60 58 55       	mov    $0x55586000,%edi
  401eaf:	e8 9c ed ff ff       	callq  400c50 <mmap@plt>
  401eb4:	48 89 c3             	mov    %rax,%rbx
  401eb7:	48 3d 00 60 58 55    	cmp    $0x55586000,%rax
  401ebd:	75 43                	jne    401f02 <stable_launch+0x7b>
  401ebf:	48 8d 90 f8 ff 0f 00 	lea    0xffff8(%rax),%rdx
  401ec6:	48 89 15 63 32 20 00 	mov    %rdx,0x203263(%rip)        # 605130 <stack_top>
  401ecd:	48 89 e0             	mov    %rsp,%rax
  401ed0:	48 89 d4             	mov    %rdx,%rsp
  401ed3:	48 89 c2             	mov    %rax,%rdx
  401ed6:	48 89 15 03 26 20 00 	mov    %rdx,0x202603(%rip)        # 6044e0 <global_save_stack>
  401edd:	48 8b 3d 04 26 20 00 	mov    0x202604(%rip),%rdi        # 6044e8 <global_offset>
  401ee4:	e8 15 ff ff ff       	callq  401dfe <launch>
  401ee9:	48 8b 05 f0 25 20 00 	mov    0x2025f0(%rip),%rax        # 6044e0 <global_save_stack>
  401ef0:	48 89 c4             	mov    %rax,%rsp
  401ef3:	be 00 00 10 00       	mov    $0x100000,%esi
  401ef8:	48 89 df             	mov    %rbx,%rdi
  401efb:	e8 40 ee ff ff       	callq  400d40 <munmap@plt>
  401f00:	5b                   	pop    %rbx
  401f01:	c3                   	retq   
  401f02:	be 00 00 10 00       	mov    $0x100000,%esi
  401f07:	48 89 c7             	mov    %rax,%rdi
  401f0a:	e8 31 ee ff ff       	callq  400d40 <munmap@plt>
  401f0f:	ba 00 60 58 55       	mov    $0x55586000,%edx
  401f14:	48 8d 35 ed 13 00 00 	lea    0x13ed(%rip),%rsi        # 403308 <_IO_stdin_used+0x688>
  401f1b:	48 8b 3d 9e 25 20 00 	mov    0x20259e(%rip),%rdi        # 6044c0 <stderr@@GLIBC_2.2.5>
  401f22:	b8 00 00 00 00       	mov    $0x0,%eax
  401f27:	e8 a4 ed ff ff       	callq  400cd0 <fprintf@plt>
  401f2c:	bf 01 00 00 00       	mov    $0x1,%edi
  401f31:	e8 7a ee ff ff       	callq  400db0 <exit@plt>

0000000000401f36 <rio_readinitb>:
  401f36:	89 37                	mov    %esi,(%rdi)
  401f38:	c7 47 04 00 00 00 00 	movl   $0x0,0x4(%rdi)
  401f3f:	48 8d 47 10          	lea    0x10(%rdi),%rax
  401f43:	48 89 47 08          	mov    %rax,0x8(%rdi)
  401f47:	c3                   	retq   

0000000000401f48 <sigalrm_handler>:
  401f48:	48 83 ec 08          	sub    $0x8,%rsp
  401f4c:	ba 00 00 00 00       	mov    $0x0,%edx
  401f51:	48 8d 35 e8 13 00 00 	lea    0x13e8(%rip),%rsi        # 403340 <trans_char+0x10>
  401f58:	48 8b 3d 61 25 20 00 	mov    0x202561(%rip),%rdi        # 6044c0 <stderr@@GLIBC_2.2.5>
  401f5f:	b8 00 00 00 00       	mov    $0x0,%eax
  401f64:	e8 67 ed ff ff       	callq  400cd0 <fprintf@plt>
  401f69:	bf 01 00 00 00       	mov    $0x1,%edi
  401f6e:	e8 3d ee ff ff       	callq  400db0 <exit@plt>

0000000000401f73 <urlencode>:
  401f73:	41 54                	push   %r12
  401f75:	55                   	push   %rbp
  401f76:	53                   	push   %rbx
  401f77:	48 83 ec 10          	sub    $0x10,%rsp
  401f7b:	48 89 fb             	mov    %rdi,%rbx
  401f7e:	48 89 f5             	mov    %rsi,%rbp
  401f81:	b8 00 00 00 00       	mov    $0x0,%eax
  401f86:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  401f8d:	f2 ae                	repnz scas %es:(%rdi),%al
  401f8f:	48 f7 d1             	not    %rcx
  401f92:	8d 41 ff             	lea    -0x1(%rcx),%eax
  401f95:	eb 0e                	jmp    401fa5 <urlencode+0x32>
  401f97:	88 55 00             	mov    %dl,0x0(%rbp)
  401f9a:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
  401f9e:	48 83 c3 01          	add    $0x1,%rbx
  401fa2:	44 89 e0             	mov    %r12d,%eax
  401fa5:	44 8d 60 ff          	lea    -0x1(%rax),%r12d
  401fa9:	85 c0                	test   %eax,%eax
  401fab:	0f 84 95 00 00 00    	je     402046 <urlencode+0xd3>
  401fb1:	0f b6 13             	movzbl (%rbx),%edx
  401fb4:	80 fa 2a             	cmp    $0x2a,%dl
  401fb7:	0f 94 c1             	sete   %cl
  401fba:	80 fa 2d             	cmp    $0x2d,%dl
  401fbd:	0f 94 c0             	sete   %al
  401fc0:	08 c1                	or     %al,%cl
  401fc2:	75 d3                	jne    401f97 <urlencode+0x24>
  401fc4:	80 fa 2e             	cmp    $0x2e,%dl
  401fc7:	74 ce                	je     401f97 <urlencode+0x24>
  401fc9:	80 fa 5f             	cmp    $0x5f,%dl
  401fcc:	74 c9                	je     401f97 <urlencode+0x24>
  401fce:	8d 42 d0             	lea    -0x30(%rdx),%eax
  401fd1:	3c 09                	cmp    $0x9,%al
  401fd3:	76 c2                	jbe    401f97 <urlencode+0x24>
  401fd5:	8d 42 bf             	lea    -0x41(%rdx),%eax
  401fd8:	3c 19                	cmp    $0x19,%al
  401fda:	76 bb                	jbe    401f97 <urlencode+0x24>
  401fdc:	8d 42 9f             	lea    -0x61(%rdx),%eax
  401fdf:	3c 19                	cmp    $0x19,%al
  401fe1:	76 b4                	jbe    401f97 <urlencode+0x24>
  401fe3:	80 fa 20             	cmp    $0x20,%dl
  401fe6:	74 4c                	je     402034 <urlencode+0xc1>
  401fe8:	8d 42 e0             	lea    -0x20(%rdx),%eax
  401feb:	3c 5f                	cmp    $0x5f,%al
  401fed:	0f 96 c1             	setbe  %cl
  401ff0:	80 fa 09             	cmp    $0x9,%dl
  401ff3:	0f 94 c0             	sete   %al
  401ff6:	08 c1                	or     %al,%cl
  401ff8:	74 47                	je     402041 <urlencode+0xce>
  401ffa:	0f b6 d2             	movzbl %dl,%edx
  401ffd:	48 8d 7c 24 08       	lea    0x8(%rsp),%rdi
  402002:	48 8d 35 cf 13 00 00 	lea    0x13cf(%rip),%rsi        # 4033d8 <trans_char+0xa8>
  402009:	b8 00 00 00 00       	mov    $0x0,%eax
  40200e:	e8 8d ed ff ff       	callq  400da0 <sprintf@plt>
  402013:	0f b6 44 24 08       	movzbl 0x8(%rsp),%eax
  402018:	88 45 00             	mov    %al,0x0(%rbp)
  40201b:	0f b6 44 24 09       	movzbl 0x9(%rsp),%eax
  402020:	88 45 01             	mov    %al,0x1(%rbp)
  402023:	0f b6 44 24 0a       	movzbl 0xa(%rsp),%eax
  402028:	88 45 02             	mov    %al,0x2(%rbp)
  40202b:	48 8d 6d 03          	lea    0x3(%rbp),%rbp
  40202f:	e9 6a ff ff ff       	jmpq   401f9e <urlencode+0x2b>
  402034:	c6 45 00 2b          	movb   $0x2b,0x0(%rbp)
  402038:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
  40203c:	e9 5d ff ff ff       	jmpq   401f9e <urlencode+0x2b>
  402041:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402046:	48 83 c4 10          	add    $0x10,%rsp
  40204a:	5b                   	pop    %rbx
  40204b:	5d                   	pop    %rbp
  40204c:	41 5c                	pop    %r12
  40204e:	c3                   	retq   

000000000040204f <rio_writen>:
  40204f:	41 55                	push   %r13
  402051:	41 54                	push   %r12
  402053:	55                   	push   %rbp
  402054:	53                   	push   %rbx
  402055:	48 83 ec 08          	sub    $0x8,%rsp
  402059:	41 89 fc             	mov    %edi,%r12d
  40205c:	49 89 d5             	mov    %rdx,%r13
  40205f:	48 89 f5             	mov    %rsi,%rbp
  402062:	48 89 d3             	mov    %rdx,%rbx
  402065:	eb 06                	jmp    40206d <rio_writen+0x1e>
  402067:	48 29 c3             	sub    %rax,%rbx
  40206a:	48 01 c5             	add    %rax,%rbp
  40206d:	48 85 db             	test   %rbx,%rbx
  402070:	74 24                	je     402096 <rio_writen+0x47>
  402072:	48 89 da             	mov    %rbx,%rdx
  402075:	48 89 ee             	mov    %rbp,%rsi
  402078:	44 89 e7             	mov    %r12d,%edi
  40207b:	e8 c0 eb ff ff       	callq  400c40 <write@plt>
  402080:	48 85 c0             	test   %rax,%rax
  402083:	7f e2                	jg     402067 <rio_writen+0x18>
  402085:	e8 66 eb ff ff       	callq  400bf0 <__errno_location@plt>
  40208a:	83 38 04             	cmpl   $0x4,(%rax)
  40208d:	75 15                	jne    4020a4 <rio_writen+0x55>
  40208f:	b8 00 00 00 00       	mov    $0x0,%eax
  402094:	eb d1                	jmp    402067 <rio_writen+0x18>
  402096:	4c 89 e8             	mov    %r13,%rax
  402099:	48 83 c4 08          	add    $0x8,%rsp
  40209d:	5b                   	pop    %rbx
  40209e:	5d                   	pop    %rbp
  40209f:	41 5c                	pop    %r12
  4020a1:	41 5d                	pop    %r13
  4020a3:	c3                   	retq   
  4020a4:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  4020ab:	eb ec                	jmp    402099 <rio_writen+0x4a>

00000000004020ad <rio_read>:
  4020ad:	41 55                	push   %r13
  4020af:	41 54                	push   %r12
  4020b1:	55                   	push   %rbp
  4020b2:	53                   	push   %rbx
  4020b3:	48 83 ec 08          	sub    $0x8,%rsp
  4020b7:	48 89 fb             	mov    %rdi,%rbx
  4020ba:	49 89 f5             	mov    %rsi,%r13
  4020bd:	49 89 d4             	mov    %rdx,%r12
  4020c0:	eb 0a                	jmp    4020cc <rio_read+0x1f>
  4020c2:	e8 29 eb ff ff       	callq  400bf0 <__errno_location@plt>
  4020c7:	83 38 04             	cmpl   $0x4,(%rax)
  4020ca:	75 5c                	jne    402128 <rio_read+0x7b>
  4020cc:	8b 6b 04             	mov    0x4(%rbx),%ebp
  4020cf:	85 ed                	test   %ebp,%ebp
  4020d1:	7f 24                	jg     4020f7 <rio_read+0x4a>
  4020d3:	48 8d 6b 10          	lea    0x10(%rbx),%rbp
  4020d7:	ba 00 20 00 00       	mov    $0x2000,%edx
  4020dc:	48 89 ee             	mov    %rbp,%rsi
  4020df:	8b 3b                	mov    (%rbx),%edi
  4020e1:	e8 ba eb ff ff       	callq  400ca0 <read@plt>
  4020e6:	89 43 04             	mov    %eax,0x4(%rbx)
  4020e9:	85 c0                	test   %eax,%eax
  4020eb:	78 d5                	js     4020c2 <rio_read+0x15>
  4020ed:	85 c0                	test   %eax,%eax
  4020ef:	74 40                	je     402131 <rio_read+0x84>
  4020f1:	48 89 6b 08          	mov    %rbp,0x8(%rbx)
  4020f5:	eb d5                	jmp    4020cc <rio_read+0x1f>
  4020f7:	89 e8                	mov    %ebp,%eax
  4020f9:	49 39 c4             	cmp    %rax,%r12
  4020fc:	77 03                	ja     402101 <rio_read+0x54>
  4020fe:	44 89 e5             	mov    %r12d,%ebp
  402101:	4c 63 e5             	movslq %ebp,%r12
  402104:	48 8b 73 08          	mov    0x8(%rbx),%rsi
  402108:	4c 89 e2             	mov    %r12,%rdx
  40210b:	4c 89 ef             	mov    %r13,%rdi
  40210e:	e8 dd eb ff ff       	callq  400cf0 <memcpy@plt>
  402113:	4c 01 63 08          	add    %r12,0x8(%rbx)
  402117:	29 6b 04             	sub    %ebp,0x4(%rbx)
  40211a:	4c 89 e0             	mov    %r12,%rax
  40211d:	48 83 c4 08          	add    $0x8,%rsp
  402121:	5b                   	pop    %rbx
  402122:	5d                   	pop    %rbp
  402123:	41 5c                	pop    %r12
  402125:	41 5d                	pop    %r13
  402127:	c3                   	retq   
  402128:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  40212f:	eb ec                	jmp    40211d <rio_read+0x70>
  402131:	b8 00 00 00 00       	mov    $0x0,%eax
  402136:	eb e5                	jmp    40211d <rio_read+0x70>

0000000000402138 <rio_readlineb>:
  402138:	41 55                	push   %r13
  40213a:	41 54                	push   %r12
  40213c:	55                   	push   %rbp
  40213d:	53                   	push   %rbx
  40213e:	48 83 ec 18          	sub    $0x18,%rsp
  402142:	49 89 fd             	mov    %rdi,%r13
  402145:	49 89 d4             	mov    %rdx,%r12
  402148:	48 89 f5             	mov    %rsi,%rbp
  40214b:	bb 01 00 00 00       	mov    $0x1,%ebx
  402150:	4c 39 e3             	cmp    %r12,%rbx
  402153:	73 47                	jae    40219c <rio_readlineb+0x64>
  402155:	48 8d 74 24 0f       	lea    0xf(%rsp),%rsi
  40215a:	ba 01 00 00 00       	mov    $0x1,%edx
  40215f:	4c 89 ef             	mov    %r13,%rdi
  402162:	e8 46 ff ff ff       	callq  4020ad <rio_read>
  402167:	83 f8 01             	cmp    $0x1,%eax
  40216a:	75 1c                	jne    402188 <rio_readlineb+0x50>
  40216c:	48 8d 45 01          	lea    0x1(%rbp),%rax
  402170:	0f b6 54 24 0f       	movzbl 0xf(%rsp),%edx
  402175:	88 55 00             	mov    %dl,0x0(%rbp)
  402178:	80 7c 24 0f 0a       	cmpb   $0xa,0xf(%rsp)
  40217d:	74 1a                	je     402199 <rio_readlineb+0x61>
  40217f:	48 83 c3 01          	add    $0x1,%rbx
  402183:	48 89 c5             	mov    %rax,%rbp
  402186:	eb c8                	jmp    402150 <rio_readlineb+0x18>
  402188:	85 c0                	test   %eax,%eax
  40218a:	75 22                	jne    4021ae <rio_readlineb+0x76>
  40218c:	48 83 fb 01          	cmp    $0x1,%rbx
  402190:	75 0a                	jne    40219c <rio_readlineb+0x64>
  402192:	b8 00 00 00 00       	mov    $0x0,%eax
  402197:	eb 0a                	jmp    4021a3 <rio_readlineb+0x6b>
  402199:	48 89 c5             	mov    %rax,%rbp
  40219c:	c6 45 00 00          	movb   $0x0,0x0(%rbp)
  4021a0:	48 89 d8             	mov    %rbx,%rax
  4021a3:	48 83 c4 18          	add    $0x18,%rsp
  4021a7:	5b                   	pop    %rbx
  4021a8:	5d                   	pop    %rbp
  4021a9:	41 5c                	pop    %r12
  4021ab:	41 5d                	pop    %r13
  4021ad:	c3                   	retq   
  4021ae:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  4021b5:	eb ec                	jmp    4021a3 <rio_readlineb+0x6b>

00000000004021b7 <submitr>:
  4021b7:	41 57                	push   %r15
  4021b9:	41 56                	push   %r14
  4021bb:	41 55                	push   %r13
  4021bd:	41 54                	push   %r12
  4021bf:	55                   	push   %rbp
  4021c0:	53                   	push   %rbx
  4021c1:	48 81 ec 58 a0 00 00 	sub    $0xa058,%rsp
  4021c8:	49 89 fd             	mov    %rdi,%r13
  4021cb:	89 74 24 14          	mov    %esi,0x14(%rsp)
  4021cf:	49 89 d7             	mov    %rdx,%r15
  4021d2:	48 89 4c 24 08       	mov    %rcx,0x8(%rsp)
  4021d7:	4c 89 44 24 18       	mov    %r8,0x18(%rsp)
  4021dc:	4d 89 ce             	mov    %r9,%r14
  4021df:	48 8b 9c 24 90 a0 00 	mov    0xa090(%rsp),%rbx
  4021e6:	00 
  4021e7:	c7 84 24 2c 20 00 00 	movl   $0x0,0x202c(%rsp)
  4021ee:	00 00 00 00 
  4021f2:	ba 00 00 00 00       	mov    $0x0,%edx
  4021f7:	be 01 00 00 00       	mov    $0x1,%esi
  4021fc:	bf 02 00 00 00       	mov    $0x2,%edi
  402201:	e8 ca eb ff ff       	callq  400dd0 <socket@plt>
  402206:	85 c0                	test   %eax,%eax
  402208:	0f 88 ca 01 00 00    	js     4023d8 <submitr+0x221>
  40220e:	89 c5                	mov    %eax,%ebp
  402210:	4c 89 ef             	mov    %r13,%rdi
  402213:	e8 a8 ea ff ff       	callq  400cc0 <gethostbyname@plt>
  402218:	48 85 c0             	test   %rax,%rax
  40221b:	0f 84 05 02 00 00    	je     402426 <submitr+0x26f>
  402221:	4c 8d a4 24 40 a0 00 	lea    0xa040(%rsp),%r12
  402228:	00 
  402229:	48 c7 84 24 40 a0 00 	movq   $0x0,0xa040(%rsp)
  402230:	00 00 00 00 00 
  402235:	48 c7 84 24 48 a0 00 	movq   $0x0,0xa048(%rsp)
  40223c:	00 00 00 00 00 
  402241:	66 c7 84 24 40 a0 00 	movw   $0x2,0xa040(%rsp)
  402248:	00 02 00 
  40224b:	48 8b 48 18          	mov    0x18(%rax),%rcx
  40224f:	48 63 50 14          	movslq 0x14(%rax),%rdx
  402253:	48 8d b4 24 44 a0 00 	lea    0xa044(%rsp),%rsi
  40225a:	00 
  40225b:	48 8b 39             	mov    (%rcx),%rdi
  40225e:	e8 ed ea ff ff       	callq  400d50 <bcopy@plt>
  402263:	0f b7 44 24 14       	movzwl 0x14(%rsp),%eax
  402268:	66 c1 c8 08          	ror    $0x8,%ax
  40226c:	66 89 84 24 42 a0 00 	mov    %ax,0xa042(%rsp)
  402273:	00 
  402274:	ba 10 00 00 00       	mov    $0x10,%edx
  402279:	4c 89 e6             	mov    %r12,%rsi
  40227c:	89 ef                	mov    %ebp,%edi
  40227e:	e8 3d eb ff ff       	callq  400dc0 <connect@plt>
  402283:	85 c0                	test   %eax,%eax
  402285:	0f 88 02 02 00 00    	js     40248d <submitr+0x2d6>
  40228b:	48 c7 c6 ff ff ff ff 	mov    $0xffffffffffffffff,%rsi
  402292:	b8 00 00 00 00       	mov    $0x0,%eax
  402297:	48 89 f1             	mov    %rsi,%rcx
  40229a:	4c 89 f7             	mov    %r14,%rdi
  40229d:	f2 ae                	repnz scas %es:(%rdi),%al
  40229f:	48 f7 d1             	not    %rcx
  4022a2:	48 89 ca             	mov    %rcx,%rdx
  4022a5:	48 89 f1             	mov    %rsi,%rcx
  4022a8:	4c 89 ff             	mov    %r15,%rdi
  4022ab:	f2 ae                	repnz scas %es:(%rdi),%al
  4022ad:	48 f7 d1             	not    %rcx
  4022b0:	49 89 c8             	mov    %rcx,%r8
  4022b3:	48 89 f1             	mov    %rsi,%rcx
  4022b6:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
  4022bb:	f2 ae                	repnz scas %es:(%rdi),%al
  4022bd:	48 f7 d1             	not    %rcx
  4022c0:	4d 8d 44 08 fe       	lea    -0x2(%r8,%rcx,1),%r8
  4022c5:	48 89 f1             	mov    %rsi,%rcx
  4022c8:	48 8b 7c 24 18       	mov    0x18(%rsp),%rdi
  4022cd:	f2 ae                	repnz scas %es:(%rdi),%al
  4022cf:	48 89 c8             	mov    %rcx,%rax
  4022d2:	48 f7 d0             	not    %rax
  4022d5:	49 8d 4c 00 ff       	lea    -0x1(%r8,%rax,1),%rcx
  4022da:	48 8d 44 52 fd       	lea    -0x3(%rdx,%rdx,2),%rax
  4022df:	48 8d 84 01 80 00 00 	lea    0x80(%rcx,%rax,1),%rax
  4022e6:	00 
  4022e7:	48 3d 00 20 00 00    	cmp    $0x2000,%rax
  4022ed:	0f 87 f3 01 00 00    	ja     4024e6 <submitr+0x32f>
  4022f3:	48 8d b4 24 30 40 00 	lea    0x4030(%rsp),%rsi
  4022fa:	00 
  4022fb:	b9 00 04 00 00       	mov    $0x400,%ecx
  402300:	b8 00 00 00 00       	mov    $0x0,%eax
  402305:	48 89 f7             	mov    %rsi,%rdi
  402308:	f3 48 ab             	rep stos %rax,%es:(%rdi)
  40230b:	4c 89 f7             	mov    %r14,%rdi
  40230e:	e8 60 fc ff ff       	callq  401f73 <urlencode>
  402313:	85 c0                	test   %eax,%eax
  402315:	0f 88 3d 02 00 00    	js     402558 <submitr+0x3a1>
  40231b:	4c 8d a4 24 30 60 00 	lea    0x6030(%rsp),%r12
  402322:	00 
  402323:	4d 89 e9             	mov    %r13,%r9
  402326:	4c 8d 84 24 30 40 00 	lea    0x4030(%rsp),%r8
  40232d:	00 
  40232e:	4c 89 f9             	mov    %r15,%rcx
  402331:	48 8b 54 24 08       	mov    0x8(%rsp),%rdx
  402336:	48 8d 35 2b 10 00 00 	lea    0x102b(%rip),%rsi        # 403368 <trans_char+0x38>
  40233d:	4c 89 e7             	mov    %r12,%rdi
  402340:	b8 00 00 00 00       	mov    $0x0,%eax
  402345:	e8 56 ea ff ff       	callq  400da0 <sprintf@plt>
  40234a:	b8 00 00 00 00       	mov    $0x0,%eax
  40234f:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  402356:	4c 89 e7             	mov    %r12,%rdi
  402359:	f2 ae                	repnz scas %es:(%rdi),%al
  40235b:	48 f7 d1             	not    %rcx
  40235e:	48 8d 51 ff          	lea    -0x1(%rcx),%rdx
  402362:	4c 89 e6             	mov    %r12,%rsi
  402365:	89 ef                	mov    %ebp,%edi
  402367:	e8 e3 fc ff ff       	callq  40204f <rio_writen>
  40236c:	48 85 c0             	test   %rax,%rax
  40236f:	0f 88 6d 02 00 00    	js     4025e2 <submitr+0x42b>
  402375:	4c 8d a4 24 30 80 00 	lea    0x8030(%rsp),%r12
  40237c:	00 
  40237d:	89 ee                	mov    %ebp,%esi
  40237f:	4c 89 e7             	mov    %r12,%rdi
  402382:	e8 af fb ff ff       	callq  401f36 <rio_readinitb>
  402387:	48 8d b4 24 30 60 00 	lea    0x6030(%rsp),%rsi
  40238e:	00 
  40238f:	ba 00 20 00 00       	mov    $0x2000,%edx
  402394:	4c 89 e7             	mov    %r12,%rdi
  402397:	e8 9c fd ff ff       	callq  402138 <rio_readlineb>
  40239c:	48 85 c0             	test   %rax,%rax
  40239f:	0f 8e ab 02 00 00    	jle    402650 <submitr+0x499>
  4023a5:	48 8d 8c 24 2c 20 00 	lea    0x202c(%rsp),%rcx
  4023ac:	00 
  4023ad:	48 8d 94 24 30 20 00 	lea    0x2030(%rsp),%rdx
  4023b4:	00 
  4023b5:	48 8d bc 24 30 60 00 	lea    0x6030(%rsp),%rdi
  4023bc:	00 
  4023bd:	4c 8d 44 24 20       	lea    0x20(%rsp),%r8
  4023c2:	48 8d 35 16 10 00 00 	lea    0x1016(%rip),%rsi        # 4033df <trans_char+0xaf>
  4023c9:	b8 00 00 00 00       	mov    $0x0,%eax
  4023ce:	e8 5d e9 ff ff       	callq  400d30 <__isoc99_sscanf@plt>
  4023d3:	e9 9f 03 00 00       	jmpq   402777 <submitr+0x5c0>
  4023d8:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  4023df:	3a 20 43 
  4023e2:	48 89 03             	mov    %rax,(%rbx)
  4023e5:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  4023ec:	20 75 6e 
  4023ef:	48 89 43 08          	mov    %rax,0x8(%rbx)
  4023f3:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  4023fa:	74 6f 20 
  4023fd:	48 89 43 10          	mov    %rax,0x10(%rbx)
  402401:	48 b8 63 72 65 61 74 	movabs $0x7320657461657263,%rax
  402408:	65 20 73 
  40240b:	48 89 43 18          	mov    %rax,0x18(%rbx)
  40240f:	c7 43 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%rbx)
  402416:	66 c7 43 24 74 00    	movw   $0x74,0x24(%rbx)
  40241c:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402421:	e9 18 03 00 00       	jmpq   40273e <submitr+0x587>
  402426:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
  40242d:	3a 20 44 
  402430:	48 89 03             	mov    %rax,(%rbx)
  402433:	48 b8 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rax
  40243a:	20 75 6e 
  40243d:	48 89 43 08          	mov    %rax,0x8(%rbx)
  402441:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402448:	74 6f 20 
  40244b:	48 89 43 10          	mov    %rax,0x10(%rbx)
  40244f:	48 b8 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rax
  402456:	76 65 20 
  402459:	48 89 43 18          	mov    %rax,0x18(%rbx)
  40245d:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
  402464:	72 20 61 
  402467:	48 89 43 20          	mov    %rax,0x20(%rbx)
  40246b:	c7 43 28 64 64 72 65 	movl   $0x65726464,0x28(%rbx)
  402472:	66 c7 43 2c 73 73    	movw   $0x7373,0x2c(%rbx)
  402478:	c6 43 2e 00          	movb   $0x0,0x2e(%rbx)
  40247c:	89 ef                	mov    %ebp,%edi
  40247e:	e8 0d e8 ff ff       	callq  400c90 <close@plt>
  402483:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402488:	e9 b1 02 00 00       	jmpq   40273e <submitr+0x587>
  40248d:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
  402494:	3a 20 55 
  402497:	48 89 03             	mov    %rax,(%rbx)
  40249a:	48 b8 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rax
  4024a1:	20 74 6f 
  4024a4:	48 89 43 08          	mov    %rax,0x8(%rbx)
  4024a8:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
  4024af:	65 63 74 
  4024b2:	48 89 43 10          	mov    %rax,0x10(%rbx)
  4024b6:	48 b8 20 74 6f 20 74 	movabs $0x20656874206f7420,%rax
  4024bd:	68 65 20 
  4024c0:	48 89 43 18          	mov    %rax,0x18(%rbx)
  4024c4:	c7 43 20 73 65 72 76 	movl   $0x76726573,0x20(%rbx)
  4024cb:	66 c7 43 24 65 72    	movw   $0x7265,0x24(%rbx)
  4024d1:	c6 43 26 00          	movb   $0x0,0x26(%rbx)
  4024d5:	89 ef                	mov    %ebp,%edi
  4024d7:	e8 b4 e7 ff ff       	callq  400c90 <close@plt>
  4024dc:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4024e1:	e9 58 02 00 00       	jmpq   40273e <submitr+0x587>
  4024e6:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
  4024ed:	3a 20 52 
  4024f0:	48 89 03             	mov    %rax,(%rbx)
  4024f3:	48 b8 65 73 75 6c 74 	movabs $0x747320746c757365,%rax
  4024fa:	20 73 74 
  4024fd:	48 89 43 08          	mov    %rax,0x8(%rbx)
  402501:	48 b8 72 69 6e 67 20 	movabs $0x6f6f7420676e6972,%rax
  402508:	74 6f 6f 
  40250b:	48 89 43 10          	mov    %rax,0x10(%rbx)
  40250f:	48 b8 20 6c 61 72 67 	movabs $0x202e656772616c20,%rax
  402516:	65 2e 20 
  402519:	48 89 43 18          	mov    %rax,0x18(%rbx)
  40251d:	48 b8 49 6e 63 72 65 	movabs $0x6573616572636e49,%rax
  402524:	61 73 65 
  402527:	48 89 43 20          	mov    %rax,0x20(%rbx)
  40252b:	48 b8 20 53 55 42 4d 	movabs $0x5254494d42555320,%rax
  402532:	49 54 52 
  402535:	48 89 43 28          	mov    %rax,0x28(%rbx)
  402539:	48 b8 5f 4d 41 58 42 	movabs $0x46554258414d5f,%rax
  402540:	55 46 00 
  402543:	48 89 43 30          	mov    %rax,0x30(%rbx)
  402547:	89 ef                	mov    %ebp,%edi
  402549:	e8 42 e7 ff ff       	callq  400c90 <close@plt>
  40254e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402553:	e9 e6 01 00 00       	jmpq   40273e <submitr+0x587>
  402558:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
  40255f:	3a 20 52 
  402562:	48 89 03             	mov    %rax,(%rbx)
  402565:	48 b8 65 73 75 6c 74 	movabs $0x747320746c757365,%rax
  40256c:	20 73 74 
  40256f:	48 89 43 08          	mov    %rax,0x8(%rbx)
  402573:	48 b8 72 69 6e 67 20 	movabs $0x6e6f6320676e6972,%rax
  40257a:	63 6f 6e 
  40257d:	48 89 43 10          	mov    %rax,0x10(%rbx)
  402581:	48 b8 74 61 69 6e 73 	movabs $0x6e6120736e696174,%rax
  402588:	20 61 6e 
  40258b:	48 89 43 18          	mov    %rax,0x18(%rbx)
  40258f:	48 b8 20 69 6c 6c 65 	movabs $0x6c6167656c6c6920,%rax
  402596:	67 61 6c 
  402599:	48 89 43 20          	mov    %rax,0x20(%rbx)
  40259d:	48 b8 20 6f 72 20 75 	movabs $0x72706e7520726f20,%rax
  4025a4:	6e 70 72 
  4025a7:	48 89 43 28          	mov    %rax,0x28(%rbx)
  4025ab:	48 b8 69 6e 74 61 62 	movabs $0x20656c6261746e69,%rax
  4025b2:	6c 65 20 
  4025b5:	48 89 43 30          	mov    %rax,0x30(%rbx)
  4025b9:	48 b8 63 68 61 72 61 	movabs $0x6574636172616863,%rax
  4025c0:	63 74 65 
  4025c3:	48 89 43 38          	mov    %rax,0x38(%rbx)
  4025c7:	66 c7 43 40 72 2e    	movw   $0x2e72,0x40(%rbx)
  4025cd:	c6 43 42 00          	movb   $0x0,0x42(%rbx)
  4025d1:	89 ef                	mov    %ebp,%edi
  4025d3:	e8 b8 e6 ff ff       	callq  400c90 <close@plt>
  4025d8:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4025dd:	e9 5c 01 00 00       	jmpq   40273e <submitr+0x587>
  4025e2:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  4025e9:	3a 20 43 
  4025ec:	48 89 03             	mov    %rax,(%rbx)
  4025ef:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  4025f6:	20 75 6e 
  4025f9:	48 89 43 08          	mov    %rax,0x8(%rbx)
  4025fd:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402604:	74 6f 20 
  402607:	48 89 43 10          	mov    %rax,0x10(%rbx)
  40260b:	48 b8 77 72 69 74 65 	movabs $0x6f74206574697277,%rax
  402612:	20 74 6f 
  402615:	48 89 43 18          	mov    %rax,0x18(%rbx)
  402619:	48 b8 20 74 68 65 20 	movabs $0x7365722065687420,%rax
  402620:	72 65 73 
  402623:	48 89 43 20          	mov    %rax,0x20(%rbx)
  402627:	48 b8 75 6c 74 20 73 	movabs $0x7672657320746c75,%rax
  40262e:	65 72 76 
  402631:	48 89 43 28          	mov    %rax,0x28(%rbx)
  402635:	66 c7 43 30 65 72    	movw   $0x7265,0x30(%rbx)
  40263b:	c6 43 32 00          	movb   $0x0,0x32(%rbx)
  40263f:	89 ef                	mov    %ebp,%edi
  402641:	e8 4a e6 ff ff       	callq  400c90 <close@plt>
  402646:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40264b:	e9 ee 00 00 00       	jmpq   40273e <submitr+0x587>
  402650:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402657:	3a 20 43 
  40265a:	48 89 03             	mov    %rax,(%rbx)
  40265d:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  402664:	20 75 6e 
  402667:	48 89 43 08          	mov    %rax,0x8(%rbx)
  40266b:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402672:	74 6f 20 
  402675:	48 89 43 10          	mov    %rax,0x10(%rbx)
  402679:	48 b8 72 65 61 64 20 	movabs $0x7269662064616572,%rax
  402680:	66 69 72 
  402683:	48 89 43 18          	mov    %rax,0x18(%rbx)
  402687:	48 b8 73 74 20 68 65 	movabs $0x6564616568207473,%rax
  40268e:	61 64 65 
  402691:	48 89 43 20          	mov    %rax,0x20(%rbx)
  402695:	48 b8 72 20 66 72 6f 	movabs $0x72206d6f72662072,%rax
  40269c:	6d 20 72 
  40269f:	48 89 43 28          	mov    %rax,0x28(%rbx)
  4026a3:	48 b8 65 73 75 6c 74 	movabs $0x657320746c757365,%rax
  4026aa:	20 73 65 
  4026ad:	48 89 43 30          	mov    %rax,0x30(%rbx)
  4026b1:	c7 43 38 72 76 65 72 	movl   $0x72657672,0x38(%rbx)
  4026b8:	c6 43 3c 00          	movb   $0x0,0x3c(%rbx)
  4026bc:	89 ef                	mov    %ebp,%edi
  4026be:	e8 cd e5 ff ff       	callq  400c90 <close@plt>
  4026c3:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4026c8:	eb 74                	jmp    40273e <submitr+0x587>
  4026ca:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  4026d1:	3a 20 43 
  4026d4:	48 89 03             	mov    %rax,(%rbx)
  4026d7:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  4026de:	20 75 6e 
  4026e1:	48 89 43 08          	mov    %rax,0x8(%rbx)
  4026e5:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  4026ec:	74 6f 20 
  4026ef:	48 89 43 10          	mov    %rax,0x10(%rbx)
  4026f3:	48 b8 72 65 61 64 20 	movabs $0x6165682064616572,%rax
  4026fa:	68 65 61 
  4026fd:	48 89 43 18          	mov    %rax,0x18(%rbx)
  402701:	48 b8 64 65 72 73 20 	movabs $0x6f72662073726564,%rax
  402708:	66 72 6f 
  40270b:	48 89 43 20          	mov    %rax,0x20(%rbx)
  40270f:	48 b8 6d 20 74 68 65 	movabs $0x657220656874206d,%rax
  402716:	20 72 65 
  402719:	48 89 43 28          	mov    %rax,0x28(%rbx)
  40271d:	48 b8 73 75 6c 74 20 	movabs $0x72657320746c7573,%rax
  402724:	73 65 72 
  402727:	48 89 43 30          	mov    %rax,0x30(%rbx)
  40272b:	c7 43 38 76 65 72 00 	movl   $0x726576,0x38(%rbx)
  402732:	89 ef                	mov    %ebp,%edi
  402734:	e8 57 e5 ff ff       	callq  400c90 <close@plt>
  402739:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40273e:	48 81 c4 58 a0 00 00 	add    $0xa058,%rsp
  402745:	5b                   	pop    %rbx
  402746:	5d                   	pop    %rbp
  402747:	41 5c                	pop    %r12
  402749:	41 5d                	pop    %r13
  40274b:	41 5e                	pop    %r14
  40274d:	41 5f                	pop    %r15
  40274f:	c3                   	retq   
  402750:	85 c0                	test   %eax,%eax
  402752:	74 51                	je     4027a5 <submitr+0x5ee>
  402754:	48 8d b4 24 30 60 00 	lea    0x6030(%rsp),%rsi
  40275b:	00 
  40275c:	48 8d bc 24 30 80 00 	lea    0x8030(%rsp),%rdi
  402763:	00 
  402764:	ba 00 20 00 00       	mov    $0x2000,%edx
  402769:	e8 ca f9 ff ff       	callq  402138 <rio_readlineb>
  40276e:	48 85 c0             	test   %rax,%rax
  402771:	0f 8e 53 ff ff ff    	jle    4026ca <submitr+0x513>
  402777:	0f b6 94 24 30 60 00 	movzbl 0x6030(%rsp),%edx
  40277e:	00 
  40277f:	b8 0d 00 00 00       	mov    $0xd,%eax
  402784:	29 d0                	sub    %edx,%eax
  402786:	75 c8                	jne    402750 <submitr+0x599>
  402788:	0f b6 94 24 31 60 00 	movzbl 0x6031(%rsp),%edx
  40278f:	00 
  402790:	b8 0a 00 00 00       	mov    $0xa,%eax
  402795:	29 d0                	sub    %edx,%eax
  402797:	75 b7                	jne    402750 <submitr+0x599>
  402799:	0f b6 84 24 32 60 00 	movzbl 0x6032(%rsp),%eax
  4027a0:	00 
  4027a1:	f7 d8                	neg    %eax
  4027a3:	eb ab                	jmp    402750 <submitr+0x599>
  4027a5:	48 8d b4 24 30 60 00 	lea    0x6030(%rsp),%rsi
  4027ac:	00 
  4027ad:	48 8d bc 24 30 80 00 	lea    0x8030(%rsp),%rdi
  4027b4:	00 
  4027b5:	ba 00 20 00 00       	mov    $0x2000,%edx
  4027ba:	e8 79 f9 ff ff       	callq  402138 <rio_readlineb>
  4027bf:	48 85 c0             	test   %rax,%rax
  4027c2:	7e 67                	jle    40282b <submitr+0x674>
  4027c4:	8b 94 24 2c 20 00 00 	mov    0x202c(%rsp),%edx
  4027cb:	81 fa c8 00 00 00    	cmp    $0xc8,%edx
  4027d1:	0f 85 d7 00 00 00    	jne    4028ae <submitr+0x6f7>
  4027d7:	48 8d b4 24 30 60 00 	lea    0x6030(%rsp),%rsi
  4027de:	00 
  4027df:	48 89 df             	mov    %rbx,%rdi
  4027e2:	e8 39 e4 ff ff       	callq  400c20 <strcpy@plt>
  4027e7:	89 ef                	mov    %ebp,%edi
  4027e9:	e8 a2 e4 ff ff       	callq  400c90 <close@plt>
  4027ee:	0f b6 03             	movzbl (%rbx),%eax
  4027f1:	ba 4f 00 00 00       	mov    $0x4f,%edx
  4027f6:	29 c2                	sub    %eax,%edx
  4027f8:	0f 85 da 00 00 00    	jne    4028d8 <submitr+0x721>
  4027fe:	0f b6 4b 01          	movzbl 0x1(%rbx),%ecx
  402802:	b8 4b 00 00 00       	mov    $0x4b,%eax
  402807:	29 c8                	sub    %ecx,%eax
  402809:	0f 85 cb 00 00 00    	jne    4028da <submitr+0x723>
  40280f:	0f b6 4b 02          	movzbl 0x2(%rbx),%ecx
  402813:	b8 0a 00 00 00       	mov    $0xa,%eax
  402818:	29 c8                	sub    %ecx,%eax
  40281a:	0f 85 ba 00 00 00    	jne    4028da <submitr+0x723>
  402820:	0f b6 43 03          	movzbl 0x3(%rbx),%eax
  402824:	f7 d8                	neg    %eax
  402826:	e9 af 00 00 00       	jmpq   4028da <submitr+0x723>
  40282b:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402832:	3a 20 43 
  402835:	48 89 03             	mov    %rax,(%rbx)
  402838:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  40283f:	20 75 6e 
  402842:	48 89 43 08          	mov    %rax,0x8(%rbx)
  402846:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  40284d:	74 6f 20 
  402850:	48 89 43 10          	mov    %rax,0x10(%rbx)
  402854:	48 b8 72 65 61 64 20 	movabs $0x6174732064616572,%rax
  40285b:	73 74 61 
  40285e:	48 89 43 18          	mov    %rax,0x18(%rbx)
  402862:	48 b8 74 75 73 20 6d 	movabs $0x7373656d20737574,%rax
  402869:	65 73 73 
  40286c:	48 89 43 20          	mov    %rax,0x20(%rbx)
  402870:	48 b8 61 67 65 20 66 	movabs $0x6d6f726620656761,%rax
  402877:	72 6f 6d 
  40287a:	48 89 43 28          	mov    %rax,0x28(%rbx)
  40287e:	48 b8 20 72 65 73 75 	movabs $0x20746c7573657220,%rax
  402885:	6c 74 20 
  402888:	48 89 43 30          	mov    %rax,0x30(%rbx)
  40288c:	c7 43 38 73 65 72 76 	movl   $0x76726573,0x38(%rbx)
  402893:	66 c7 43 3c 65 72    	movw   $0x7265,0x3c(%rbx)
  402899:	c6 43 3e 00          	movb   $0x0,0x3e(%rbx)
  40289d:	89 ef                	mov    %ebp,%edi
  40289f:	e8 ec e3 ff ff       	callq  400c90 <close@plt>
  4028a4:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4028a9:	e9 90 fe ff ff       	jmpq   40273e <submitr+0x587>
  4028ae:	48 8d 4c 24 20       	lea    0x20(%rsp),%rcx
  4028b3:	48 8d 35 ee 0a 00 00 	lea    0xaee(%rip),%rsi        # 4033a8 <trans_char+0x78>
  4028ba:	48 89 df             	mov    %rbx,%rdi
  4028bd:	b8 00 00 00 00       	mov    $0x0,%eax
  4028c2:	e8 d9 e4 ff ff       	callq  400da0 <sprintf@plt>
  4028c7:	89 ef                	mov    %ebp,%edi
  4028c9:	e8 c2 e3 ff ff       	callq  400c90 <close@plt>
  4028ce:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4028d3:	e9 66 fe ff ff       	jmpq   40273e <submitr+0x587>
  4028d8:	89 d0                	mov    %edx,%eax
  4028da:	f7 d8                	neg    %eax
  4028dc:	0f 84 5c fe ff ff    	je     40273e <submitr+0x587>
  4028e2:	b9 05 00 00 00       	mov    $0x5,%ecx
  4028e7:	48 8d 3d 02 0b 00 00 	lea    0xb02(%rip),%rdi        # 4033f0 <trans_char+0xc0>
  4028ee:	48 89 de             	mov    %rbx,%rsi
  4028f1:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  4028f3:	0f 97 c0             	seta   %al
  4028f6:	0f 92 c1             	setb   %cl
  4028f9:	29 c8                	sub    %ecx,%eax
  4028fb:	0f be c0             	movsbl %al,%eax
  4028fe:	85 c0                	test   %eax,%eax
  402900:	0f 84 38 fe ff ff    	je     40273e <submitr+0x587>
  402906:	85 d2                	test   %edx,%edx
  402908:	75 13                	jne    40291d <submitr+0x766>
  40290a:	0f b6 43 01          	movzbl 0x1(%rbx),%eax
  40290e:	ba 4b 00 00 00       	mov    $0x4b,%edx
  402913:	29 c2                	sub    %eax,%edx
  402915:	75 06                	jne    40291d <submitr+0x766>
  402917:	0f b6 53 02          	movzbl 0x2(%rbx),%edx
  40291b:	f7 da                	neg    %edx
  40291d:	89 d0                	mov    %edx,%eax
  40291f:	f7 d8                	neg    %eax
  402921:	0f 84 17 fe ff ff    	je     40273e <submitr+0x587>
  402927:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40292c:	e9 0d fe ff ff       	jmpq   40273e <submitr+0x587>

0000000000402931 <init_timeout>:
  402931:	85 ff                	test   %edi,%edi
  402933:	74 20                	je     402955 <init_timeout+0x24>
  402935:	53                   	push   %rbx
  402936:	89 fb                	mov    %edi,%ebx
  402938:	85 ff                	test   %edi,%edi
  40293a:	78 1b                	js     402957 <init_timeout+0x26>
  40293c:	48 8d 35 05 f6 ff ff 	lea    -0x9fb(%rip),%rsi        # 401f48 <sigalrm_handler>
  402943:	bf 0e 00 00 00       	mov    $0xe,%edi
  402948:	e8 63 e3 ff ff       	callq  400cb0 <signal@plt>
  40294d:	89 df                	mov    %ebx,%edi
  40294f:	e8 2c e3 ff ff       	callq  400c80 <alarm@plt>
  402954:	5b                   	pop    %rbx
  402955:	f3 c3                	repz retq 
  402957:	bb 00 00 00 00       	mov    $0x0,%ebx
  40295c:	eb de                	jmp    40293c <init_timeout+0xb>

000000000040295e <init_driver>:
  40295e:	41 54                	push   %r12
  402960:	55                   	push   %rbp
  402961:	53                   	push   %rbx
  402962:	48 83 ec 10          	sub    $0x10,%rsp
  402966:	48 89 fd             	mov    %rdi,%rbp
  402969:	be 01 00 00 00       	mov    $0x1,%esi
  40296e:	bf 0d 00 00 00       	mov    $0xd,%edi
  402973:	e8 38 e3 ff ff       	callq  400cb0 <signal@plt>
  402978:	be 01 00 00 00       	mov    $0x1,%esi
  40297d:	bf 1d 00 00 00       	mov    $0x1d,%edi
  402982:	e8 29 e3 ff ff       	callq  400cb0 <signal@plt>
  402987:	be 01 00 00 00       	mov    $0x1,%esi
  40298c:	bf 1d 00 00 00       	mov    $0x1d,%edi
  402991:	e8 1a e3 ff ff       	callq  400cb0 <signal@plt>
  402996:	ba 00 00 00 00       	mov    $0x0,%edx
  40299b:	be 01 00 00 00       	mov    $0x1,%esi
  4029a0:	bf 02 00 00 00       	mov    $0x2,%edi
  4029a5:	e8 26 e4 ff ff       	callq  400dd0 <socket@plt>
  4029aa:	85 c0                	test   %eax,%eax
  4029ac:	0f 88 80 00 00 00    	js     402a32 <init_driver+0xd4>
  4029b2:	89 c3                	mov    %eax,%ebx
  4029b4:	48 8d 3d 3a 0a 00 00 	lea    0xa3a(%rip),%rdi        # 4033f5 <trans_char+0xc5>
  4029bb:	e8 00 e3 ff ff       	callq  400cc0 <gethostbyname@plt>
  4029c0:	48 85 c0             	test   %rax,%rax
  4029c3:	0f 84 b5 00 00 00    	je     402a7e <init_driver+0x120>
  4029c9:	48 c7 04 24 00 00 00 	movq   $0x0,(%rsp)
  4029d0:	00 
  4029d1:	48 c7 44 24 08 00 00 	movq   $0x0,0x8(%rsp)
  4029d8:	00 00 
  4029da:	66 c7 04 24 02 00    	movw   $0x2,(%rsp)
  4029e0:	48 8b 48 18          	mov    0x18(%rax),%rcx
  4029e4:	48 63 50 14          	movslq 0x14(%rax),%rdx
  4029e8:	48 8d 74 24 04       	lea    0x4(%rsp),%rsi
  4029ed:	48 8b 39             	mov    (%rcx),%rdi
  4029f0:	e8 5b e3 ff ff       	callq  400d50 <bcopy@plt>
  4029f5:	66 c7 44 24 02 3c a4 	movw   $0xa43c,0x2(%rsp)
  4029fc:	ba 10 00 00 00       	mov    $0x10,%edx
  402a01:	48 89 e6             	mov    %rsp,%rsi
  402a04:	89 df                	mov    %ebx,%edi
  402a06:	e8 b5 e3 ff ff       	callq  400dc0 <connect@plt>
  402a0b:	85 c0                	test   %eax,%eax
  402a0d:	0f 88 d3 00 00 00    	js     402ae6 <init_driver+0x188>
  402a13:	89 df                	mov    %ebx,%edi
  402a15:	e8 76 e2 ff ff       	callq  400c90 <close@plt>
  402a1a:	66 c7 45 00 4f 4b    	movw   $0x4b4f,0x0(%rbp)
  402a20:	c6 45 02 00          	movb   $0x0,0x2(%rbp)
  402a24:	b8 00 00 00 00       	mov    $0x0,%eax
  402a29:	48 83 c4 10          	add    $0x10,%rsp
  402a2d:	5b                   	pop    %rbx
  402a2e:	5d                   	pop    %rbp
  402a2f:	41 5c                	pop    %r12
  402a31:	c3                   	retq   
  402a32:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402a39:	3a 20 43 
  402a3c:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402a40:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  402a47:	20 75 6e 
  402a4a:	48 89 45 08          	mov    %rax,0x8(%rbp)
  402a4e:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402a55:	74 6f 20 
  402a58:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402a5c:	48 b8 63 72 65 61 74 	movabs $0x7320657461657263,%rax
  402a63:	65 20 73 
  402a66:	48 89 45 18          	mov    %rax,0x18(%rbp)
  402a6a:	c7 45 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%rbp)
  402a71:	66 c7 45 24 74 00    	movw   $0x74,0x24(%rbp)
  402a77:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402a7c:	eb ab                	jmp    402a29 <init_driver+0xcb>
  402a7e:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
  402a85:	3a 20 44 
  402a88:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402a8c:	48 b8 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rax
  402a93:	20 75 6e 
  402a96:	48 89 45 08          	mov    %rax,0x8(%rbp)
  402a9a:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402aa1:	74 6f 20 
  402aa4:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402aa8:	48 b8 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rax
  402aaf:	76 65 20 
  402ab2:	48 89 45 18          	mov    %rax,0x18(%rbp)
  402ab6:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
  402abd:	72 20 61 
  402ac0:	48 89 45 20          	mov    %rax,0x20(%rbp)
  402ac4:	c7 45 28 64 64 72 65 	movl   $0x65726464,0x28(%rbp)
  402acb:	66 c7 45 2c 73 73    	movw   $0x7373,0x2c(%rbp)
  402ad1:	c6 45 2e 00          	movb   $0x0,0x2e(%rbp)
  402ad5:	89 df                	mov    %ebx,%edi
  402ad7:	e8 b4 e1 ff ff       	callq  400c90 <close@plt>
  402adc:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402ae1:	e9 43 ff ff ff       	jmpq   402a29 <init_driver+0xcb>
  402ae6:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
  402aed:	3a 20 55 
  402af0:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402af4:	48 b8 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rax
  402afb:	20 74 6f 
  402afe:	48 89 45 08          	mov    %rax,0x8(%rbp)
  402b02:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
  402b09:	65 63 74 
  402b0c:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402b10:	48 b8 20 74 6f 20 73 	movabs $0x76726573206f7420,%rax
  402b17:	65 72 76 
  402b1a:	48 89 45 18          	mov    %rax,0x18(%rbp)
  402b1e:	66 c7 45 20 65 72    	movw   $0x7265,0x20(%rbp)
  402b24:	c6 45 22 00          	movb   $0x0,0x22(%rbp)
  402b28:	89 df                	mov    %ebx,%edi
  402b2a:	e8 61 e1 ff ff       	callq  400c90 <close@plt>
  402b2f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402b34:	e9 f0 fe ff ff       	jmpq   402a29 <init_driver+0xcb>

0000000000402b39 <driver_post>:
  402b39:	53                   	push   %rbx
  402b3a:	4c 89 cb             	mov    %r9,%rbx
  402b3d:	45 85 c0             	test   %r8d,%r8d
  402b40:	75 18                	jne    402b5a <driver_post+0x21>
  402b42:	48 85 ff             	test   %rdi,%rdi
  402b45:	74 05                	je     402b4c <driver_post+0x13>
  402b47:	80 3f 00             	cmpb   $0x0,(%rdi)
  402b4a:	75 32                	jne    402b7e <driver_post+0x45>
  402b4c:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  402b51:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  402b55:	44 89 c0             	mov    %r8d,%eax
  402b58:	5b                   	pop    %rbx
  402b59:	c3                   	retq   
  402b5a:	48 89 ce             	mov    %rcx,%rsi
  402b5d:	48 8d 3d 9f 08 00 00 	lea    0x89f(%rip),%rdi        # 403403 <trans_char+0xd3>
  402b64:	b8 00 00 00 00       	mov    $0x0,%eax
  402b69:	e8 f2 e0 ff ff       	callq  400c60 <printf@plt>
  402b6e:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  402b73:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  402b77:	b8 00 00 00 00       	mov    $0x0,%eax
  402b7c:	eb da                	jmp    402b58 <driver_post+0x1f>
  402b7e:	48 83 ec 08          	sub    $0x8,%rsp
  402b82:	41 51                	push   %r9
  402b84:	49 89 c9             	mov    %rcx,%r9
  402b87:	49 89 d0             	mov    %rdx,%r8
  402b8a:	48 89 f9             	mov    %rdi,%rcx
  402b8d:	48 89 f2             	mov    %rsi,%rdx
  402b90:	be a4 3c 00 00       	mov    $0x3ca4,%esi
  402b95:	48 8d 3d 59 08 00 00 	lea    0x859(%rip),%rdi        # 4033f5 <trans_char+0xc5>
  402b9c:	e8 16 f6 ff ff       	callq  4021b7 <submitr>
  402ba1:	48 83 c4 10          	add    $0x10,%rsp
  402ba5:	eb b1                	jmp    402b58 <driver_post+0x1f>

0000000000402ba7 <check>:
  402ba7:	89 f8                	mov    %edi,%eax
  402ba9:	c1 e8 1c             	shr    $0x1c,%eax
  402bac:	85 c0                	test   %eax,%eax
  402bae:	74 1d                	je     402bcd <check+0x26>
  402bb0:	b9 00 00 00 00       	mov    $0x0,%ecx
  402bb5:	83 f9 1f             	cmp    $0x1f,%ecx
  402bb8:	7f 0d                	jg     402bc7 <check+0x20>
  402bba:	89 f8                	mov    %edi,%eax
  402bbc:	d3 e8                	shr    %cl,%eax
  402bbe:	3c 0a                	cmp    $0xa,%al
  402bc0:	74 11                	je     402bd3 <check+0x2c>
  402bc2:	83 c1 08             	add    $0x8,%ecx
  402bc5:	eb ee                	jmp    402bb5 <check+0xe>
  402bc7:	b8 01 00 00 00       	mov    $0x1,%eax
  402bcc:	c3                   	retq   
  402bcd:	b8 00 00 00 00       	mov    $0x0,%eax
  402bd2:	c3                   	retq   
  402bd3:	b8 00 00 00 00       	mov    $0x0,%eax
  402bd8:	c3                   	retq   

0000000000402bd9 <gencookie>:
  402bd9:	53                   	push   %rbx
  402bda:	83 c7 01             	add    $0x1,%edi
  402bdd:	e8 1e e0 ff ff       	callq  400c00 <srandom@plt>
  402be2:	e8 29 e1 ff ff       	callq  400d10 <random@plt>
  402be7:	89 c3                	mov    %eax,%ebx
  402be9:	89 c7                	mov    %eax,%edi
  402beb:	e8 b7 ff ff ff       	callq  402ba7 <check>
  402bf0:	85 c0                	test   %eax,%eax
  402bf2:	74 ee                	je     402be2 <gencookie+0x9>
  402bf4:	89 d8                	mov    %ebx,%eax
  402bf6:	5b                   	pop    %rbx
  402bf7:	c3                   	retq   
  402bf8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  402bff:	00 

0000000000402c00 <__libc_csu_init>:
  402c00:	41 57                	push   %r15
  402c02:	41 56                	push   %r14
  402c04:	41 89 ff             	mov    %edi,%r15d
  402c07:	41 55                	push   %r13
  402c09:	41 54                	push   %r12
  402c0b:	4c 8d 25 f6 11 20 00 	lea    0x2011f6(%rip),%r12        # 603e08 <__frame_dummy_init_array_entry>
  402c12:	55                   	push   %rbp
  402c13:	48 8d 2d f6 11 20 00 	lea    0x2011f6(%rip),%rbp        # 603e10 <__init_array_end>
  402c1a:	53                   	push   %rbx
  402c1b:	49 89 f6             	mov    %rsi,%r14
  402c1e:	49 89 d5             	mov    %rdx,%r13
  402c21:	4c 29 e5             	sub    %r12,%rbp
  402c24:	48 83 ec 08          	sub    $0x8,%rsp
  402c28:	48 c1 fd 03          	sar    $0x3,%rbp
  402c2c:	e8 7f df ff ff       	callq  400bb0 <_init>
  402c31:	48 85 ed             	test   %rbp,%rbp
  402c34:	74 20                	je     402c56 <__libc_csu_init+0x56>
  402c36:	31 db                	xor    %ebx,%ebx
  402c38:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  402c3f:	00 
  402c40:	4c 89 ea             	mov    %r13,%rdx
  402c43:	4c 89 f6             	mov    %r14,%rsi
  402c46:	44 89 ff             	mov    %r15d,%edi
  402c49:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  402c4d:	48 83 c3 01          	add    $0x1,%rbx
  402c51:	48 39 dd             	cmp    %rbx,%rbp
  402c54:	75 ea                	jne    402c40 <__libc_csu_init+0x40>
  402c56:	48 83 c4 08          	add    $0x8,%rsp
  402c5a:	5b                   	pop    %rbx
  402c5b:	5d                   	pop    %rbp
  402c5c:	41 5c                	pop    %r12
  402c5e:	41 5d                	pop    %r13
  402c60:	41 5e                	pop    %r14
  402c62:	41 5f                	pop    %r15
  402c64:	c3                   	retq   
  402c65:	90                   	nop
  402c66:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  402c6d:	00 00 00 

0000000000402c70 <__libc_csu_fini>:
  402c70:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000402c74 <_fini>:
  402c74:	48 83 ec 08          	sub    $0x8,%rsp
  402c78:	48 83 c4 08          	add    $0x8,%rsp
  402c7c:	c3                   	retq  