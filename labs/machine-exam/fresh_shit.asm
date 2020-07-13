objdump -d ctarget

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
  400def:	49 c7 c0 40 2c 40 00 	mov    $0x402c40,%r8
  400df6:	48 c7 c1 d0 2b 40 00 	mov    $0x402bd0,%rcx
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
  400ee6:	48 8d 3d 6b 1d 00 00 	lea    0x1d6b(%rip),%rdi        # 402c58 <_IO_stdin_used+0x8>
  400eed:	b8 00 00 00 00       	mov    $0x0,%eax
  400ef2:	e8 69 fd ff ff       	callq  400c60 <printf@plt>
  400ef7:	48 8d 3d 92 1d 00 00 	lea    0x1d92(%rip),%rdi        # 402c90 <_IO_stdin_used+0x40>
  400efe:	e8 2d fd ff ff       	callq  400c30 <puts@plt>
  400f03:	48 8d 3d be 1e 00 00 	lea    0x1ebe(%rip),%rdi        # 402dc8 <_IO_stdin_used+0x178>
  400f0a:	e8 21 fd ff ff       	callq  400c30 <puts@plt>
  400f0f:	48 8d 3d a2 1d 00 00 	lea    0x1da2(%rip),%rdi        # 402cb8 <_IO_stdin_used+0x68>
  400f16:	e8 15 fd ff ff       	callq  400c30 <puts@plt>
  400f1b:	48 8d 3d c0 1e 00 00 	lea    0x1ec0(%rip),%rdi        # 402de2 <_IO_stdin_used+0x192>
  400f22:	e8 09 fd ff ff       	callq  400c30 <puts@plt>
  400f27:	bf 00 00 00 00       	mov    $0x0,%edi
  400f2c:	e8 7f fe ff ff       	callq  400db0 <exit@plt>
  400f31:	48 8d 3d c6 1e 00 00 	lea    0x1ec6(%rip),%rdi        # 402dfe <_IO_stdin_used+0x1ae>
  400f38:	b8 00 00 00 00       	mov    $0x0,%eax
  400f3d:	e8 1e fd ff ff       	callq  400c60 <printf@plt>
  400f42:	48 8d 3d 97 1d 00 00 	lea    0x1d97(%rip),%rdi        # 402ce0 <_IO_stdin_used+0x90>
  400f49:	e8 e2 fc ff ff       	callq  400c30 <puts@plt>
  400f4e:	48 8d 3d b3 1d 00 00 	lea    0x1db3(%rip),%rdi        # 402d08 <_IO_stdin_used+0xb8>
  400f55:	e8 d6 fc ff ff       	callq  400c30 <puts@plt>
  400f5a:	48 8d 3d bb 1e 00 00 	lea    0x1ebb(%rip),%rdi        # 402e1c <_IO_stdin_used+0x1cc>
  400f61:	e8 ca fc ff ff       	callq  400c30 <puts@plt>
  400f66:	eb bf                	jmp    400f27 <usage+0x51>

0000000000400f68 <initialize_target>:
  400f68:	55                   	push   %rbp
  400f69:	53                   	push   %rbx
  400f6a:	48 81 ec 08 21 00 00 	sub    $0x2108,%rsp
  400f71:	89 f5                	mov    %esi,%ebp
  400f73:	89 3d 7f 35 20 00    	mov    %edi,0x20357f(%rip)        # 6044f8 <check_level>
  400f79:	8b 3d b1 31 20 00    	mov    0x2031b1(%rip),%edi        # 604130 <target_id>
  400f7f:	e8 2b 1c 00 00       	callq  402baf <gencookie>
  400f84:	89 05 7a 35 20 00    	mov    %eax,0x20357a(%rip)        # 604504 <cookie>
  400f8a:	89 c7                	mov    %eax,%edi
  400f8c:	e8 1e 1c 00 00       	callq  402baf <gencookie>
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
  401043:	48 8d 3d ee 1c 00 00 	lea    0x1cee(%rip),%rdi        # 402d38 <_IO_stdin_used+0xe8>
  40104a:	e8 e1 fb ff ff       	callq  400c30 <puts@plt>
  40104f:	bf 08 00 00 00       	mov    $0x8,%edi
  401054:	e8 57 fd ff ff       	callq  400db0 <exit@plt>
  401059:	48 8d bc 24 00 01 00 	lea    0x100(%rsp),%rdi
  401060:	00 
  401061:	e8 ce 18 00 00       	callq  402934 <init_driver>
  401066:	85 c0                	test   %eax,%eax
  401068:	79 80                	jns    400fea <initialize_target+0x82>
  40106a:	48 8d b4 24 00 01 00 	lea    0x100(%rsp),%rsi
  401071:	00 
  401072:	48 8d 3d f7 1c 00 00 	lea    0x1cf7(%rip),%rdi        # 402d70 <_IO_stdin_used+0x120>
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
  40109b:	48 c7 c6 da 1c 40 00 	mov    $0x401cda,%rsi
  4010a2:	bf 0b 00 00 00       	mov    $0xb,%edi
  4010a7:	e8 04 fc ff ff       	callq  400cb0 <signal@plt>
  4010ac:	48 c7 c6 86 1c 40 00 	mov    $0x401c86,%rsi
  4010b3:	bf 07 00 00 00       	mov    $0x7,%edi
  4010b8:	e8 f3 fb ff ff       	callq  400cb0 <signal@plt>
  4010bd:	48 c7 c6 2e 1d 40 00 	mov    $0x401d2e,%rsi
  4010c4:	bf 04 00 00 00       	mov    $0x4,%edi
  4010c9:	e8 e2 fb ff ff       	callq  400cb0 <signal@plt>
  4010ce:	83 3d 33 34 20 00 00 	cmpl   $0x0,0x203433(%rip)        # 604508 <is_checker>
  4010d5:	75 58                	jne    40112f <main+0xa2>
  4010d7:	48 8d 2d 57 1d 00 00 	lea    0x1d57(%rip),%rbp        # 402e35 <_IO_stdin_used+0x1e5>
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
  40111f:	48 8d 15 5a 1d 00 00 	lea    0x1d5a(%rip),%rdx        # 402e80 <_IO_stdin_used+0x230>
  401126:	48 63 04 82          	movslq (%rdx,%rax,4),%rax
  40112a:	48 01 d0             	add    %rdx,%rax
  40112d:	ff e0                	jmpq   *%rax
  40112f:	48 c7 c6 82 1d 40 00 	mov    $0x401d82,%rsi
  401136:	bf 0e 00 00 00       	mov    $0xe,%edi
  40113b:	e8 70 fb ff ff       	callq  400cb0 <signal@plt>
  401140:	bf 05 00 00 00       	mov    $0x5,%edi
  401145:	e8 36 fb ff ff       	callq  400c80 <alarm@plt>
  40114a:	48 8d 2d e9 1c 00 00 	lea    0x1ce9(%rip),%rbp        # 402e3a <_IO_stdin_used+0x1ea>
  401151:	eb 8b                	jmp    4010de <main+0x51>
  401153:	48 8b 3b             	mov    (%rbx),%rdi
  401156:	e8 7b fd ff ff       	callq  400ed6 <usage>
  40115b:	48 8d 35 63 1f 00 00 	lea    0x1f63(%rip),%rsi        # 4030c5 <_IO_stdin_used+0x475>
  401162:	48 8b 3d 3f 33 20 00 	mov    0x20333f(%rip),%rdi        # 6044a8 <optarg@@GLIBC_2.2.5>
  401169:	e8 f2 fb ff ff       	callq  400d60 <fopen@plt>
  40116e:	48 89 05 7b 33 20 00 	mov    %rax,0x20337b(%rip)        # 6044f0 <infile>
  401175:	48 85 c0             	test   %rax,%rax
  401178:	0f 85 7a ff ff ff    	jne    4010f8 <main+0x6b>
  40117e:	48 8b 15 23 33 20 00 	mov    0x203323(%rip),%rdx        # 6044a8 <optarg@@GLIBC_2.2.5>
  401185:	48 8d 35 b6 1c 00 00 	lea    0x1cb6(%rip),%rsi        # 402e42 <_IO_stdin_used+0x1f2>
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
  4011ed:	48 8d 3d 6b 1c 00 00 	lea    0x1c6b(%rip),%rdi        # 402e5f <_IO_stdin_used+0x20f>
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
  401228:	48 8d 3d 69 1b 00 00 	lea    0x1b69(%rip),%rdi        # 402d98 <_IO_stdin_used+0x148>
  40122f:	b8 00 00 00 00       	mov    $0x0,%eax
  401234:	e8 27 fa ff ff       	callq  400c60 <printf@plt>
  401239:	b8 00 00 00 00       	mov    $0x0,%eax
  40123e:	e8 13 07 00 00       	callq  401956 <check_fail>
  401243:	8b 35 bb 32 20 00    	mov    0x2032bb(%rip),%esi        # 604504 <cookie>
  401249:	48 8d 3d 22 1c 00 00 	lea    0x1c22(%rip),%rdi        # 402e72 <_IO_stdin_used+0x222>
  401250:	b8 00 00 00 00       	mov    $0x0,%eax
  401255:	e8 06 fa ff ff       	callq  400c60 <printf@plt>
  40125a:	48 8b 3d 1f 32 20 00 	mov    0x20321f(%rip),%rdi        # 604480 <buf_offset>
  401261:	e8 f7 0b 00 00       	callq  401e5d <stable_launch>
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
  401740:	e8 44 02 00 00       	callq  401989 <Gets>
  401745:	b8 01 00 00 00       	mov    $0x1,%eax
  40174a:	48 83 c4 18          	add    $0x18,%rsp
  40174e:	c3                   	retq   

000000000040174f <touch1>:
  40174f:	48 83 ec 08          	sub    $0x8,%rsp
  401753:	c7 05 9f 2d 20 00 01 	movl   $0x1,0x202d9f(%rip)        # 6044fc <vlevel>
  40175a:	00 00 00 
  40175d:	48 8d 3d ba 17 00 00 	lea    0x17ba(%rip),%rdi        # 402f1e <_IO_stdin_used+0x2ce>
  401764:	e8 c7 f4 ff ff       	callq  400c30 <puts@plt>
  401769:	bf 01 00 00 00       	mov    $0x1,%edi
  40176e:	e8 2d 04 00 00       	callq  401ba0 <validate>
  401773:	bf 00 00 00 00       	mov    $0x0,%edi
  401778:	e8 33 f6 ff ff       	callq  400db0 <exit@plt>

000000000040177d <touch2>:
  40177d:	48 83 ec 08          	sub    $0x8,%rsp
  401781:	89 fe                	mov    %edi,%esi
  401783:	c7 05 6f 2d 20 00 02 	movl   $0x2,0x202d6f(%rip)        # 6044fc <vlevel>
  40178a:	00 00 00 
  40178d:	39 3d 71 2d 20 00    	cmp    %edi,0x202d71(%rip)        # 604504 <cookie>
  401793:	74 25                	je     4017ba <touch2+0x3d>
  401795:	48 8d 3d cc 17 00 00 	lea    0x17cc(%rip),%rdi        # 402f68 <_IO_stdin_used+0x318>
  40179c:	b8 00 00 00 00       	mov    $0x0,%eax
  4017a1:	e8 ba f4 ff ff       	callq  400c60 <printf@plt>
  4017a6:	bf 02 00 00 00       	mov    $0x2,%edi
  4017ab:	e8 ae 04 00 00       	callq  401c5e <fail>
  4017b0:	bf 00 00 00 00       	mov    $0x0,%edi
  4017b5:	e8 f6 f5 ff ff       	callq  400db0 <exit@plt>
  4017ba:	48 8d 3d 7f 17 00 00 	lea    0x177f(%rip),%rdi        # 402f40 <_IO_stdin_used+0x2f0>
  4017c1:	b8 00 00 00 00       	mov    $0x0,%eax
  4017c6:	e8 95 f4 ff ff       	callq  400c60 <printf@plt>
  4017cb:	bf 02 00 00 00       	mov    $0x2,%edi
  4017d0:	e8 cb 03 00 00       	callq  401ba0 <validate>
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
  401823:	48 8d 35 11 17 00 00 	lea    0x1711(%rip),%rsi        # 402f3b <_IO_stdin_used+0x2eb>
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
  40185c:	c7 05 96 2c 20 00 03 	movl   $0x3,0x202c96(%rip)        # 6044fc <vlevel>
  401863:	00 00 00 
  401866:	48 89 fe             	mov    %rdi,%rsi
  401869:	8b 3d 95 2c 20 00    	mov    0x202c95(%rip),%edi        # 604504 <cookie>
  40186f:	e8 63 ff ff ff       	callq  4017d7 <hexmatch>
  401874:	85 c0                	test   %eax,%eax
  401876:	74 28                	je     4018a0 <touch3+0x48>
  401878:	48 89 de             	mov    %rbx,%rsi
  40187b:	48 8d 3d 0e 17 00 00 	lea    0x170e(%rip),%rdi        # 402f90 <_IO_stdin_used+0x340>
  401882:	b8 00 00 00 00       	mov    $0x0,%eax
  401887:	e8 d4 f3 ff ff       	callq  400c60 <printf@plt>
  40188c:	bf 03 00 00 00       	mov    $0x3,%edi
  401891:	e8 0a 03 00 00       	callq  401ba0 <validate>
  401896:	bf 00 00 00 00       	mov    $0x0,%edi
  40189b:	e8 10 f5 ff ff       	callq  400db0 <exit@plt>
  4018a0:	48 89 de             	mov    %rbx,%rsi
  4018a3:	48 8d 3d 0e 17 00 00 	lea    0x170e(%rip),%rdi        # 402fb8 <_IO_stdin_used+0x368>
  4018aa:	b8 00 00 00 00       	mov    $0x0,%eax
  4018af:	e8 ac f3 ff ff       	callq  400c60 <printf@plt>
  4018b4:	bf 03 00 00 00       	mov    $0x3,%edi
  4018b9:	e8 a0 03 00 00       	callq  401c5e <fail>
  4018be:	eb d6                	jmp    401896 <touch3+0x3e>

00000000004018c0 <test>:
  4018c0:	48 83 ec 08          	sub    $0x8,%rsp
  4018c4:	b8 00 00 00 00       	mov    $0x0,%eax
  4018c9:	e8 6b fe ff ff       	callq  401739 <getbuf>
  4018ce:	89 c6                	mov    %eax,%esi
  4018d0:	48 8d 3d 09 17 00 00 	lea    0x1709(%rip),%rdi        # 402fe0 <_IO_stdin_used+0x390>
  4018d7:	b8 00 00 00 00       	mov    $0x0,%eax
  4018dc:	e8 7f f3 ff ff       	callq  400c60 <printf@plt>
  4018e1:	48 83 c4 08          	add    $0x8,%rsp
  4018e5:	c3                   	retq   

00000000004018e6 <save_char>:
  4018e6:	8b 05 38 38 20 00    	mov    0x203838(%rip),%eax        # 605124 <gets_cnt>
  4018ec:	3d ff 03 00 00       	cmp    $0x3ff,%eax
  4018f1:	7f 4a                	jg     40193d <save_char+0x57>
  4018f3:	8d 14 40             	lea    (%rax,%rax,2),%edx
  4018f6:	89 f9                	mov    %edi,%ecx
  4018f8:	c0 e9 04             	shr    $0x4,%cl
  4018fb:	4c 8d 05 fe 19 00 00 	lea    0x19fe(%rip),%r8        # 403300 <trans_char>
  401902:	83 e1 0f             	and    $0xf,%ecx
  401905:	45 0f b6 0c 08       	movzbl (%r8,%rcx,1),%r9d
  40190a:	48 8d 0d 0f 2c 20 00 	lea    0x202c0f(%rip),%rcx        # 604520 <gets_buf>
  401911:	48 63 f2             	movslq %edx,%rsi
  401914:	44 88 0c 31          	mov    %r9b,(%rcx,%rsi,1)
  401918:	8d 72 01             	lea    0x1(%rdx),%esi
  40191b:	83 e7 0f             	and    $0xf,%edi
  40191e:	41 0f b6 3c 38       	movzbl (%r8,%rdi,1),%edi
  401923:	48 63 f6             	movslq %esi,%rsi
  401926:	40 88 3c 31          	mov    %dil,(%rcx,%rsi,1)
  40192a:	83 c2 02             	add    $0x2,%edx
  40192d:	48 63 d2             	movslq %edx,%rdx
  401930:	c6 04 11 20          	movb   $0x20,(%rcx,%rdx,1)
  401934:	83 c0 01             	add    $0x1,%eax
  401937:	89 05 e7 37 20 00    	mov    %eax,0x2037e7(%rip)        # 605124 <gets_cnt>
  40193d:	f3 c3                	repz retq 

000000000040193f <save_term>:
  40193f:	8b 05 df 37 20 00    	mov    0x2037df(%rip),%eax        # 605124 <gets_cnt>
  401945:	8d 04 40             	lea    (%rax,%rax,2),%eax
  401948:	48 98                	cltq   
  40194a:	48 8d 15 cf 2b 20 00 	lea    0x202bcf(%rip),%rdx        # 604520 <gets_buf>
  401951:	c6 04 02 00          	movb   $0x0,(%rdx,%rax,1)
  401955:	c3                   	retq   

0000000000401956 <check_fail>:
  401956:	48 83 ec 08          	sub    $0x8,%rsp
  40195a:	0f be 35 c7 37 20 00 	movsbl 0x2037c7(%rip),%esi        # 605128 <target_prefix>
  401961:	48 8d 0d b8 2b 20 00 	lea    0x202bb8(%rip),%rcx        # 604520 <gets_buf>
  401968:	8b 15 8a 2b 20 00    	mov    0x202b8a(%rip),%edx        # 6044f8 <check_level>
  40196e:	48 8d 3d 8e 16 00 00 	lea    0x168e(%rip),%rdi        # 403003 <_IO_stdin_used+0x3b3>
  401975:	b8 00 00 00 00       	mov    $0x0,%eax
  40197a:	e8 e1 f2 ff ff       	callq  400c60 <printf@plt>
  40197f:	bf 01 00 00 00       	mov    $0x1,%edi
  401984:	e8 27 f4 ff ff       	callq  400db0 <exit@plt>

0000000000401989 <Gets>:
  401989:	41 54                	push   %r12
  40198b:	55                   	push   %rbp
  40198c:	53                   	push   %rbx
  40198d:	49 89 fc             	mov    %rdi,%r12
  401990:	c7 05 8a 37 20 00 00 	movl   $0x0,0x20378a(%rip)        # 605124 <gets_cnt>
  401997:	00 00 00 
  40199a:	48 89 fb             	mov    %rdi,%rbx
  40199d:	eb 11                	jmp    4019b0 <Gets+0x27>
  40199f:	48 8d 6b 01          	lea    0x1(%rbx),%rbp
  4019a3:	88 03                	mov    %al,(%rbx)
  4019a5:	0f b6 f8             	movzbl %al,%edi
  4019a8:	e8 39 ff ff ff       	callq  4018e6 <save_char>
  4019ad:	48 89 eb             	mov    %rbp,%rbx
  4019b0:	48 8b 3d 39 2b 20 00 	mov    0x202b39(%rip),%rdi        # 6044f0 <infile>
  4019b7:	e8 64 f3 ff ff       	callq  400d20 <_IO_getc@plt>
  4019bc:	83 f8 ff             	cmp    $0xffffffff,%eax
  4019bf:	74 05                	je     4019c6 <Gets+0x3d>
  4019c1:	83 f8 0a             	cmp    $0xa,%eax
  4019c4:	75 d9                	jne    40199f <Gets+0x16>
  4019c6:	c6 03 00             	movb   $0x0,(%rbx)
  4019c9:	b8 00 00 00 00       	mov    $0x0,%eax
  4019ce:	e8 6c ff ff ff       	callq  40193f <save_term>
  4019d3:	4c 89 e0             	mov    %r12,%rax
  4019d6:	5b                   	pop    %rbx
  4019d7:	5d                   	pop    %rbp
  4019d8:	41 5c                	pop    %r12
  4019da:	c3                   	retq   

00000000004019db <notify_server>:
  4019db:	83 3d 26 2b 20 00 00 	cmpl   $0x0,0x202b26(%rip)        # 604508 <is_checker>
  4019e2:	0f 85 de 00 00 00    	jne    401ac6 <notify_server+0xeb>
  4019e8:	55                   	push   %rbp
  4019e9:	53                   	push   %rbx
  4019ea:	48 81 ec 08 40 00 00 	sub    $0x4008,%rsp
  4019f1:	89 fb                	mov    %edi,%ebx
  4019f3:	8b 05 2b 37 20 00    	mov    0x20372b(%rip),%eax        # 605124 <gets_cnt>
  4019f9:	83 c0 64             	add    $0x64,%eax
  4019fc:	3d 00 20 00 00       	cmp    $0x2000,%eax
  401a01:	0f 8f c1 00 00 00    	jg     401ac8 <notify_server+0xed>
  401a07:	44 0f be 0d 19 37 20 	movsbl 0x203719(%rip),%r9d        # 605128 <target_prefix>
  401a0e:	00 
  401a0f:	83 3d 72 2a 20 00 00 	cmpl   $0x0,0x202a72(%rip)        # 604488 <notify>
  401a16:	0f 84 c7 00 00 00    	je     401ae3 <notify_server+0x108>
  401a1c:	44 8b 05 dd 2a 20 00 	mov    0x202add(%rip),%r8d        # 604500 <authkey>
  401a23:	85 db                	test   %ebx,%ebx
  401a25:	0f 84 c3 00 00 00    	je     401aee <notify_server+0x113>
  401a2b:	48 8d 2d e7 15 00 00 	lea    0x15e7(%rip),%rbp        # 403019 <_IO_stdin_used+0x3c9>
  401a32:	48 8d bc 24 00 20 00 	lea    0x2000(%rsp),%rdi
  401a39:	00 
  401a3a:	48 8d 05 df 2a 20 00 	lea    0x202adf(%rip),%rax        # 604520 <gets_buf>
  401a41:	50                   	push   %rax
  401a42:	56                   	push   %rsi
  401a43:	48 89 e9             	mov    %rbp,%rcx
  401a46:	8b 15 e4 26 20 00    	mov    0x2026e4(%rip),%edx        # 604130 <target_id>
  401a4c:	48 8d 35 d0 15 00 00 	lea    0x15d0(%rip),%rsi        # 403023 <_IO_stdin_used+0x3d3>
  401a53:	b8 00 00 00 00       	mov    $0x0,%eax
  401a58:	e8 43 f3 ff ff       	callq  400da0 <sprintf@plt>
  401a5d:	48 83 c4 10          	add    $0x10,%rsp
  401a61:	83 3d 20 2a 20 00 00 	cmpl   $0x0,0x202a20(%rip)        # 604488 <notify>
  401a68:	0f 84 b8 00 00 00    	je     401b26 <notify_server+0x14b>
  401a6e:	85 db                	test   %ebx,%ebx
  401a70:	0f 84 a2 00 00 00    	je     401b18 <notify_server+0x13d>
  401a76:	48 8d 8c 24 00 20 00 	lea    0x2000(%rsp),%rcx
  401a7d:	00 
  401a7e:	49 89 e1             	mov    %rsp,%r9
  401a81:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  401a87:	48 8b 15 ba 26 20 00 	mov    0x2026ba(%rip),%rdx        # 604148 <lab>
  401a8e:	48 8b 35 bb 26 20 00 	mov    0x2026bb(%rip),%rsi        # 604150 <course>
  401a95:	48 8b 3d a4 26 20 00 	mov    0x2026a4(%rip),%rdi        # 604140 <user_id>
  401a9c:	e8 6e 10 00 00       	callq  402b0f <driver_post>
  401aa1:	85 c0                	test   %eax,%eax
  401aa3:	78 55                	js     401afa <notify_server+0x11f>
  401aa5:	48 8d 3d bc 16 00 00 	lea    0x16bc(%rip),%rdi        # 403168 <_IO_stdin_used+0x518>
  401aac:	e8 7f f1 ff ff       	callq  400c30 <puts@plt>
  401ab1:	48 8d 3d 93 15 00 00 	lea    0x1593(%rip),%rdi        # 40304b <_IO_stdin_used+0x3fb>
  401ab8:	e8 73 f1 ff ff       	callq  400c30 <puts@plt>
  401abd:	48 81 c4 08 40 00 00 	add    $0x4008,%rsp
  401ac4:	5b                   	pop    %rbx
  401ac5:	5d                   	pop    %rbp
  401ac6:	f3 c3                	repz retq 
  401ac8:	48 8d 3d 69 16 00 00 	lea    0x1669(%rip),%rdi        # 403138 <_IO_stdin_used+0x4e8>
  401acf:	b8 00 00 00 00       	mov    $0x0,%eax
  401ad4:	e8 87 f1 ff ff       	callq  400c60 <printf@plt>
  401ad9:	bf 01 00 00 00       	mov    $0x1,%edi
  401ade:	e8 cd f2 ff ff       	callq  400db0 <exit@plt>
  401ae3:	41 b8 ff ff ff ff    	mov    $0xffffffff,%r8d
  401ae9:	e9 35 ff ff ff       	jmpq   401a23 <notify_server+0x48>
  401aee:	48 8d 2d 29 15 00 00 	lea    0x1529(%rip),%rbp        # 40301e <_IO_stdin_used+0x3ce>
  401af5:	e9 38 ff ff ff       	jmpq   401a32 <notify_server+0x57>
  401afa:	48 89 e6             	mov    %rsp,%rsi
  401afd:	48 8d 3d 3b 15 00 00 	lea    0x153b(%rip),%rdi        # 40303f <_IO_stdin_used+0x3ef>
  401b04:	b8 00 00 00 00       	mov    $0x0,%eax
  401b09:	e8 52 f1 ff ff       	callq  400c60 <printf@plt>
  401b0e:	bf 01 00 00 00       	mov    $0x1,%edi
  401b13:	e8 98 f2 ff ff       	callq  400db0 <exit@plt>
  401b18:	48 8d 3d 36 15 00 00 	lea    0x1536(%rip),%rdi        # 403055 <_IO_stdin_used+0x405>
  401b1f:	e8 0c f1 ff ff       	callq  400c30 <puts@plt>
  401b24:	eb 97                	jmp    401abd <notify_server+0xe2>
  401b26:	48 89 ee             	mov    %rbp,%rsi
  401b29:	48 8d 3d 70 16 00 00 	lea    0x1670(%rip),%rdi        # 4031a0 <_IO_stdin_used+0x550>
  401b30:	b8 00 00 00 00       	mov    $0x0,%eax
  401b35:	e8 26 f1 ff ff       	callq  400c60 <printf@plt>
  401b3a:	48 8b 35 ff 25 20 00 	mov    0x2025ff(%rip),%rsi        # 604140 <user_id>
  401b41:	48 8d 3d 14 15 00 00 	lea    0x1514(%rip),%rdi        # 40305c <_IO_stdin_used+0x40c>
  401b48:	b8 00 00 00 00       	mov    $0x0,%eax
  401b4d:	e8 0e f1 ff ff       	callq  400c60 <printf@plt>
  401b52:	48 8b 35 f7 25 20 00 	mov    0x2025f7(%rip),%rsi        # 604150 <course>
  401b59:	48 8d 3d 09 15 00 00 	lea    0x1509(%rip),%rdi        # 403069 <_IO_stdin_used+0x419>
  401b60:	b8 00 00 00 00       	mov    $0x0,%eax
  401b65:	e8 f6 f0 ff ff       	callq  400c60 <printf@plt>
  401b6a:	48 8b 35 d7 25 20 00 	mov    0x2025d7(%rip),%rsi        # 604148 <lab>
  401b71:	48 8d 3d fd 14 00 00 	lea    0x14fd(%rip),%rdi        # 403075 <_IO_stdin_used+0x425>
  401b78:	b8 00 00 00 00       	mov    $0x0,%eax
  401b7d:	e8 de f0 ff ff       	callq  400c60 <printf@plt>
  401b82:	48 8d b4 24 00 20 00 	lea    0x2000(%rsp),%rsi
  401b89:	00 
  401b8a:	48 8d 3d ed 14 00 00 	lea    0x14ed(%rip),%rdi        # 40307e <_IO_stdin_used+0x42e>
  401b91:	b8 00 00 00 00       	mov    $0x0,%eax
  401b96:	e8 c5 f0 ff ff       	callq  400c60 <printf@plt>
  401b9b:	e9 1d ff ff ff       	jmpq   401abd <notify_server+0xe2>

0000000000401ba0 <validate>:
  401ba0:	53                   	push   %rbx
  401ba1:	89 fb                	mov    %edi,%ebx
  401ba3:	83 3d 5e 29 20 00 00 	cmpl   $0x0,0x20295e(%rip)        # 604508 <is_checker>
  401baa:	74 68                	je     401c14 <validate+0x74>
  401bac:	39 3d 4a 29 20 00    	cmp    %edi,0x20294a(%rip)        # 6044fc <vlevel>
  401bb2:	75 2d                	jne    401be1 <validate+0x41>
  401bb4:	8b 35 3e 29 20 00    	mov    0x20293e(%rip),%esi        # 6044f8 <check_level>
  401bba:	39 f7                	cmp    %esi,%edi
  401bbc:	75 39                	jne    401bf7 <validate+0x57>
  401bbe:	0f be 35 63 35 20 00 	movsbl 0x203563(%rip),%esi        # 605128 <target_prefix>
  401bc5:	48 8d 0d 54 29 20 00 	lea    0x202954(%rip),%rcx        # 604520 <gets_buf>
  401bcc:	89 fa                	mov    %edi,%edx
  401bce:	48 8d 3d d3 14 00 00 	lea    0x14d3(%rip),%rdi        # 4030a8 <_IO_stdin_used+0x458>
  401bd5:	b8 00 00 00 00       	mov    $0x0,%eax
  401bda:	e8 81 f0 ff ff       	callq  400c60 <printf@plt>
  401bdf:	5b                   	pop    %rbx
  401be0:	c3                   	retq   
  401be1:	48 8d 3d a2 14 00 00 	lea    0x14a2(%rip),%rdi        # 40308a <_IO_stdin_used+0x43a>
  401be8:	e8 43 f0 ff ff       	callq  400c30 <puts@plt>
  401bed:	b8 00 00 00 00       	mov    $0x0,%eax
  401bf2:	e8 5f fd ff ff       	callq  401956 <check_fail>
  401bf7:	89 fa                	mov    %edi,%edx
  401bf9:	48 8d 3d c8 15 00 00 	lea    0x15c8(%rip),%rdi        # 4031c8 <_IO_stdin_used+0x578>
  401c00:	b8 00 00 00 00       	mov    $0x0,%eax
  401c05:	e8 56 f0 ff ff       	callq  400c60 <printf@plt>
  401c0a:	b8 00 00 00 00       	mov    $0x0,%eax
  401c0f:	e8 42 fd ff ff       	callq  401956 <check_fail>
  401c14:	3b 3d e2 28 20 00    	cmp    0x2028e2(%rip),%edi        # 6044fc <vlevel>
  401c1a:	74 1a                	je     401c36 <validate+0x96>
  401c1c:	48 8d 3d 67 14 00 00 	lea    0x1467(%rip),%rdi        # 40308a <_IO_stdin_used+0x43a>
  401c23:	e8 08 f0 ff ff       	callq  400c30 <puts@plt>
  401c28:	89 de                	mov    %ebx,%esi
  401c2a:	bf 00 00 00 00       	mov    $0x0,%edi
  401c2f:	e8 a7 fd ff ff       	callq  4019db <notify_server>
  401c34:	eb a9                	jmp    401bdf <validate+0x3f>
  401c36:	0f be 15 eb 34 20 00 	movsbl 0x2034eb(%rip),%edx        # 605128 <target_prefix>
  401c3d:	89 fe                	mov    %edi,%esi
  401c3f:	48 8d 3d aa 15 00 00 	lea    0x15aa(%rip),%rdi        # 4031f0 <_IO_stdin_used+0x5a0>
  401c46:	b8 00 00 00 00       	mov    $0x0,%eax
  401c4b:	e8 10 f0 ff ff       	callq  400c60 <printf@plt>
  401c50:	89 de                	mov    %ebx,%esi
  401c52:	bf 01 00 00 00       	mov    $0x1,%edi
  401c57:	e8 7f fd ff ff       	callq  4019db <notify_server>
  401c5c:	eb 81                	jmp    401bdf <validate+0x3f>

0000000000401c5e <fail>:
  401c5e:	48 83 ec 08          	sub    $0x8,%rsp
  401c62:	83 3d 9f 28 20 00 00 	cmpl   $0x0,0x20289f(%rip)        # 604508 <is_checker>
  401c69:	75 11                	jne    401c7c <fail+0x1e>
  401c6b:	89 fe                	mov    %edi,%esi
  401c6d:	bf 00 00 00 00       	mov    $0x0,%edi
  401c72:	e8 64 fd ff ff       	callq  4019db <notify_server>
  401c77:	48 83 c4 08          	add    $0x8,%rsp
  401c7b:	c3                   	retq   
  401c7c:	b8 00 00 00 00       	mov    $0x0,%eax
  401c81:	e8 d0 fc ff ff       	callq  401956 <check_fail>

0000000000401c86 <bushandler>:
  401c86:	48 83 ec 08          	sub    $0x8,%rsp
  401c8a:	83 3d 77 28 20 00 00 	cmpl   $0x0,0x202877(%rip)        # 604508 <is_checker>
  401c91:	74 16                	je     401ca9 <bushandler+0x23>
  401c93:	48 8d 3d 23 14 00 00 	lea    0x1423(%rip),%rdi        # 4030bd <_IO_stdin_used+0x46d>
  401c9a:	e8 91 ef ff ff       	callq  400c30 <puts@plt>
  401c9f:	b8 00 00 00 00       	mov    $0x0,%eax
  401ca4:	e8 ad fc ff ff       	callq  401956 <check_fail>
  401ca9:	48 8d 3d 78 15 00 00 	lea    0x1578(%rip),%rdi        # 403228 <_IO_stdin_used+0x5d8>
  401cb0:	e8 7b ef ff ff       	callq  400c30 <puts@plt>
  401cb5:	48 8d 3d 0b 14 00 00 	lea    0x140b(%rip),%rdi        # 4030c7 <_IO_stdin_used+0x477>
  401cbc:	e8 6f ef ff ff       	callq  400c30 <puts@plt>
  401cc1:	be 00 00 00 00       	mov    $0x0,%esi
  401cc6:	bf 00 00 00 00       	mov    $0x0,%edi
  401ccb:	e8 0b fd ff ff       	callq  4019db <notify_server>
  401cd0:	bf 01 00 00 00       	mov    $0x1,%edi
  401cd5:	e8 d6 f0 ff ff       	callq  400db0 <exit@plt>

0000000000401cda <seghandler>:
  401cda:	48 83 ec 08          	sub    $0x8,%rsp
  401cde:	83 3d 23 28 20 00 00 	cmpl   $0x0,0x202823(%rip)        # 604508 <is_checker>
  401ce5:	74 16                	je     401cfd <seghandler+0x23>
  401ce7:	48 8d 3d ef 13 00 00 	lea    0x13ef(%rip),%rdi        # 4030dd <_IO_stdin_used+0x48d>
  401cee:	e8 3d ef ff ff       	callq  400c30 <puts@plt>
  401cf3:	b8 00 00 00 00       	mov    $0x0,%eax
  401cf8:	e8 59 fc ff ff       	callq  401956 <check_fail>
  401cfd:	48 8d 3d 44 15 00 00 	lea    0x1544(%rip),%rdi        # 403248 <_IO_stdin_used+0x5f8>
  401d04:	e8 27 ef ff ff       	callq  400c30 <puts@plt>
  401d09:	48 8d 3d b7 13 00 00 	lea    0x13b7(%rip),%rdi        # 4030c7 <_IO_stdin_used+0x477>
  401d10:	e8 1b ef ff ff       	callq  400c30 <puts@plt>
  401d15:	be 00 00 00 00       	mov    $0x0,%esi
  401d1a:	bf 00 00 00 00       	mov    $0x0,%edi
  401d1f:	e8 b7 fc ff ff       	callq  4019db <notify_server>
  401d24:	bf 01 00 00 00       	mov    $0x1,%edi
  401d29:	e8 82 f0 ff ff       	callq  400db0 <exit@plt>

0000000000401d2e <illegalhandler>:
  401d2e:	48 83 ec 08          	sub    $0x8,%rsp
  401d32:	83 3d cf 27 20 00 00 	cmpl   $0x0,0x2027cf(%rip)        # 604508 <is_checker>
  401d39:	74 16                	je     401d51 <illegalhandler+0x23>
  401d3b:	48 8d 3d ae 13 00 00 	lea    0x13ae(%rip),%rdi        # 4030f0 <_IO_stdin_used+0x4a0>
  401d42:	e8 e9 ee ff ff       	callq  400c30 <puts@plt>
  401d47:	b8 00 00 00 00       	mov    $0x0,%eax
  401d4c:	e8 05 fc ff ff       	callq  401956 <check_fail>
  401d51:	48 8d 3d 18 15 00 00 	lea    0x1518(%rip),%rdi        # 403270 <_IO_stdin_used+0x620>
  401d58:	e8 d3 ee ff ff       	callq  400c30 <puts@plt>
  401d5d:	48 8d 3d 63 13 00 00 	lea    0x1363(%rip),%rdi        # 4030c7 <_IO_stdin_used+0x477>
  401d64:	e8 c7 ee ff ff       	callq  400c30 <puts@plt>
  401d69:	be 00 00 00 00       	mov    $0x0,%esi
  401d6e:	bf 00 00 00 00       	mov    $0x0,%edi
  401d73:	e8 63 fc ff ff       	callq  4019db <notify_server>
  401d78:	bf 01 00 00 00       	mov    $0x1,%edi
  401d7d:	e8 2e f0 ff ff       	callq  400db0 <exit@plt>

0000000000401d82 <sigalrmhandler>:
  401d82:	48 83 ec 08          	sub    $0x8,%rsp
  401d86:	83 3d 7b 27 20 00 00 	cmpl   $0x0,0x20277b(%rip)        # 604508 <is_checker>
  401d8d:	74 16                	je     401da5 <sigalrmhandler+0x23>
  401d8f:	48 8d 3d 6e 13 00 00 	lea    0x136e(%rip),%rdi        # 403104 <_IO_stdin_used+0x4b4>
  401d96:	e8 95 ee ff ff       	callq  400c30 <puts@plt>
  401d9b:	b8 00 00 00 00       	mov    $0x0,%eax
  401da0:	e8 b1 fb ff ff       	callq  401956 <check_fail>
  401da5:	be 05 00 00 00       	mov    $0x5,%esi
  401daa:	48 8d 3d ef 14 00 00 	lea    0x14ef(%rip),%rdi        # 4032a0 <_IO_stdin_used+0x650>
  401db1:	b8 00 00 00 00       	mov    $0x0,%eax
  401db6:	e8 a5 ee ff ff       	callq  400c60 <printf@plt>
  401dbb:	be 00 00 00 00       	mov    $0x0,%esi
  401dc0:	bf 00 00 00 00       	mov    $0x0,%edi
  401dc5:	e8 11 fc ff ff       	callq  4019db <notify_server>
  401dca:	bf 01 00 00 00       	mov    $0x1,%edi
  401dcf:	e8 dc ef ff ff       	callq  400db0 <exit@plt>

0000000000401dd4 <launch>:
  401dd4:	55                   	push   %rbp
  401dd5:	48 89 e5             	mov    %rsp,%rbp
  401dd8:	48 89 fa             	mov    %rdi,%rdx
  401ddb:	48 8d 47 1e          	lea    0x1e(%rdi),%rax
  401ddf:	48 83 e0 f0          	and    $0xfffffffffffffff0,%rax
  401de3:	48 29 c4             	sub    %rax,%rsp
  401de6:	48 8d 7c 24 0f       	lea    0xf(%rsp),%rdi
  401deb:	48 83 e7 f0          	and    $0xfffffffffffffff0,%rdi
  401def:	be f4 00 00 00       	mov    $0xf4,%esi
  401df4:	e8 77 ee ff ff       	callq  400c70 <memset@plt>
  401df9:	48 8b 05 a0 26 20 00 	mov    0x2026a0(%rip),%rax        # 6044a0 <stdin@@GLIBC_2.2.5>
  401e00:	48 39 05 e9 26 20 00 	cmp    %rax,0x2026e9(%rip)        # 6044f0 <infile>
  401e07:	74 2b                	je     401e34 <launch+0x60>
  401e09:	c7 05 e9 26 20 00 00 	movl   $0x0,0x2026e9(%rip)        # 6044fc <vlevel>
  401e10:	00 00 00 
  401e13:	b8 00 00 00 00       	mov    $0x0,%eax
  401e18:	e8 a3 fa ff ff       	callq  4018c0 <test>
  401e1d:	83 3d e4 26 20 00 00 	cmpl   $0x0,0x2026e4(%rip)        # 604508 <is_checker>
  401e24:	75 21                	jne    401e47 <launch+0x73>
  401e26:	48 8d 3d f7 12 00 00 	lea    0x12f7(%rip),%rdi        # 403124 <_IO_stdin_used+0x4d4>
  401e2d:	e8 fe ed ff ff       	callq  400c30 <puts@plt>
  401e32:	c9                   	leaveq 
  401e33:	c3                   	retq   
  401e34:	48 8d 3d d1 12 00 00 	lea    0x12d1(%rip),%rdi        # 40310c <_IO_stdin_used+0x4bc>
  401e3b:	b8 00 00 00 00       	mov    $0x0,%eax
  401e40:	e8 1b ee ff ff       	callq  400c60 <printf@plt>
  401e45:	eb c2                	jmp    401e09 <launch+0x35>
  401e47:	48 8d 3d cb 12 00 00 	lea    0x12cb(%rip),%rdi        # 403119 <_IO_stdin_used+0x4c9>
  401e4e:	e8 dd ed ff ff       	callq  400c30 <puts@plt>
  401e53:	b8 00 00 00 00       	mov    $0x0,%eax
  401e58:	e8 f9 fa ff ff       	callq  401956 <check_fail>

0000000000401e5d <stable_launch>:
  401e5d:	53                   	push   %rbx
  401e5e:	48 89 3d 83 26 20 00 	mov    %rdi,0x202683(%rip)        # 6044e8 <global_offset>
  401e65:	41 b9 00 00 00 00    	mov    $0x0,%r9d
  401e6b:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  401e71:	b9 32 01 00 00       	mov    $0x132,%ecx
  401e76:	ba 07 00 00 00       	mov    $0x7,%edx
  401e7b:	be 00 00 10 00       	mov    $0x100000,%esi
  401e80:	bf 00 60 58 55       	mov    $0x55586000,%edi
  401e85:	e8 c6 ed ff ff       	callq  400c50 <mmap@plt>
  401e8a:	48 89 c3             	mov    %rax,%rbx
  401e8d:	48 3d 00 60 58 55    	cmp    $0x55586000,%rax
  401e93:	75 43                	jne    401ed8 <stable_launch+0x7b>
  401e95:	48 8d 90 f8 ff 0f 00 	lea    0xffff8(%rax),%rdx
  401e9c:	48 89 15 8d 32 20 00 	mov    %rdx,0x20328d(%rip)        # 605130 <stack_top>
  401ea3:	48 89 e0             	mov    %rsp,%rax
  401ea6:	48 89 d4             	mov    %rdx,%rsp
  401ea9:	48 89 c2             	mov    %rax,%rdx
  401eac:	48 89 15 2d 26 20 00 	mov    %rdx,0x20262d(%rip)        # 6044e0 <global_save_stack>
  401eb3:	48 8b 3d 2e 26 20 00 	mov    0x20262e(%rip),%rdi        # 6044e8 <global_offset>
  401eba:	e8 15 ff ff ff       	callq  401dd4 <launch>
  401ebf:	48 8b 05 1a 26 20 00 	mov    0x20261a(%rip),%rax        # 6044e0 <global_save_stack>
  401ec6:	48 89 c4             	mov    %rax,%rsp
  401ec9:	be 00 00 10 00       	mov    $0x100000,%esi
  401ece:	48 89 df             	mov    %rbx,%rdi
  401ed1:	e8 6a ee ff ff       	callq  400d40 <munmap@plt>
  401ed6:	5b                   	pop    %rbx
  401ed7:	c3                   	retq   
  401ed8:	be 00 00 10 00       	mov    $0x100000,%esi
  401edd:	48 89 c7             	mov    %rax,%rdi
  401ee0:	e8 5b ee ff ff       	callq  400d40 <munmap@plt>
  401ee5:	ba 00 60 58 55       	mov    $0x55586000,%edx
  401eea:	48 8d 35 e7 13 00 00 	lea    0x13e7(%rip),%rsi        # 4032d8 <_IO_stdin_used+0x688>
  401ef1:	48 8b 3d c8 25 20 00 	mov    0x2025c8(%rip),%rdi        # 6044c0 <stderr@@GLIBC_2.2.5>
  401ef8:	b8 00 00 00 00       	mov    $0x0,%eax
  401efd:	e8 ce ed ff ff       	callq  400cd0 <fprintf@plt>
  401f02:	bf 01 00 00 00       	mov    $0x1,%edi
  401f07:	e8 a4 ee ff ff       	callq  400db0 <exit@plt>

0000000000401f0c <rio_readinitb>:
  401f0c:	89 37                	mov    %esi,(%rdi)
  401f0e:	c7 47 04 00 00 00 00 	movl   $0x0,0x4(%rdi)
  401f15:	48 8d 47 10          	lea    0x10(%rdi),%rax
  401f19:	48 89 47 08          	mov    %rax,0x8(%rdi)
  401f1d:	c3                   	retq   

0000000000401f1e <sigalrm_handler>:
  401f1e:	48 83 ec 08          	sub    $0x8,%rsp
  401f22:	ba 00 00 00 00       	mov    $0x0,%edx
  401f27:	48 8d 35 e2 13 00 00 	lea    0x13e2(%rip),%rsi        # 403310 <trans_char+0x10>
  401f2e:	48 8b 3d 8b 25 20 00 	mov    0x20258b(%rip),%rdi        # 6044c0 <stderr@@GLIBC_2.2.5>
  401f35:	b8 00 00 00 00       	mov    $0x0,%eax
  401f3a:	e8 91 ed ff ff       	callq  400cd0 <fprintf@plt>
  401f3f:	bf 01 00 00 00       	mov    $0x1,%edi
  401f44:	e8 67 ee ff ff       	callq  400db0 <exit@plt>

0000000000401f49 <urlencode>:
  401f49:	41 54                	push   %r12
  401f4b:	55                   	push   %rbp
  401f4c:	53                   	push   %rbx
  401f4d:	48 83 ec 10          	sub    $0x10,%rsp
  401f51:	48 89 fb             	mov    %rdi,%rbx
  401f54:	48 89 f5             	mov    %rsi,%rbp
  401f57:	b8 00 00 00 00       	mov    $0x0,%eax
  401f5c:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  401f63:	f2 ae                	repnz scas %es:(%rdi),%al
  401f65:	48 f7 d1             	not    %rcx
  401f68:	8d 41 ff             	lea    -0x1(%rcx),%eax
  401f6b:	eb 0e                	jmp    401f7b <urlencode+0x32>
  401f6d:	88 55 00             	mov    %dl,0x0(%rbp)
  401f70:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
  401f74:	48 83 c3 01          	add    $0x1,%rbx
  401f78:	44 89 e0             	mov    %r12d,%eax
  401f7b:	44 8d 60 ff          	lea    -0x1(%rax),%r12d
  401f7f:	85 c0                	test   %eax,%eax
  401f81:	0f 84 95 00 00 00    	je     40201c <urlencode+0xd3>
  401f87:	0f b6 13             	movzbl (%rbx),%edx
  401f8a:	80 fa 2a             	cmp    $0x2a,%dl
  401f8d:	0f 94 c1             	sete   %cl
  401f90:	80 fa 2d             	cmp    $0x2d,%dl
  401f93:	0f 94 c0             	sete   %al
  401f96:	08 c1                	or     %al,%cl
  401f98:	75 d3                	jne    401f6d <urlencode+0x24>
  401f9a:	80 fa 2e             	cmp    $0x2e,%dl
  401f9d:	74 ce                	je     401f6d <urlencode+0x24>
  401f9f:	80 fa 5f             	cmp    $0x5f,%dl
  401fa2:	74 c9                	je     401f6d <urlencode+0x24>
  401fa4:	8d 42 d0             	lea    -0x30(%rdx),%eax
  401fa7:	3c 09                	cmp    $0x9,%al
  401fa9:	76 c2                	jbe    401f6d <urlencode+0x24>
  401fab:	8d 42 bf             	lea    -0x41(%rdx),%eax
  401fae:	3c 19                	cmp    $0x19,%al
  401fb0:	76 bb                	jbe    401f6d <urlencode+0x24>
  401fb2:	8d 42 9f             	lea    -0x61(%rdx),%eax
  401fb5:	3c 19                	cmp    $0x19,%al
  401fb7:	76 b4                	jbe    401f6d <urlencode+0x24>
  401fb9:	80 fa 20             	cmp    $0x20,%dl
  401fbc:	74 4c                	je     40200a <urlencode+0xc1>
  401fbe:	8d 42 e0             	lea    -0x20(%rdx),%eax
  401fc1:	3c 5f                	cmp    $0x5f,%al
  401fc3:	0f 96 c1             	setbe  %cl
  401fc6:	80 fa 09             	cmp    $0x9,%dl
  401fc9:	0f 94 c0             	sete   %al
  401fcc:	08 c1                	or     %al,%cl
  401fce:	74 47                	je     402017 <urlencode+0xce>
  401fd0:	0f b6 d2             	movzbl %dl,%edx
  401fd3:	48 8d 7c 24 08       	lea    0x8(%rsp),%rdi
  401fd8:	48 8d 35 c9 13 00 00 	lea    0x13c9(%rip),%rsi        # 4033a8 <trans_char+0xa8>
  401fdf:	b8 00 00 00 00       	mov    $0x0,%eax
  401fe4:	e8 b7 ed ff ff       	callq  400da0 <sprintf@plt>
  401fe9:	0f b6 44 24 08       	movzbl 0x8(%rsp),%eax
  401fee:	88 45 00             	mov    %al,0x0(%rbp)
  401ff1:	0f b6 44 24 09       	movzbl 0x9(%rsp),%eax
  401ff6:	88 45 01             	mov    %al,0x1(%rbp)
  401ff9:	0f b6 44 24 0a       	movzbl 0xa(%rsp),%eax
  401ffe:	88 45 02             	mov    %al,0x2(%rbp)
  402001:	48 8d 6d 03          	lea    0x3(%rbp),%rbp
  402005:	e9 6a ff ff ff       	jmpq   401f74 <urlencode+0x2b>
  40200a:	c6 45 00 2b          	movb   $0x2b,0x0(%rbp)
  40200e:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
  402012:	e9 5d ff ff ff       	jmpq   401f74 <urlencode+0x2b>
  402017:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40201c:	48 83 c4 10          	add    $0x10,%rsp
  402020:	5b                   	pop    %rbx
  402021:	5d                   	pop    %rbp
  402022:	41 5c                	pop    %r12
  402024:	c3                   	retq   

0000000000402025 <rio_writen>:
  402025:	41 55                	push   %r13
  402027:	41 54                	push   %r12
  402029:	55                   	push   %rbp
  40202a:	53                   	push   %rbx
  40202b:	48 83 ec 08          	sub    $0x8,%rsp
  40202f:	41 89 fc             	mov    %edi,%r12d
  402032:	49 89 d5             	mov    %rdx,%r13
  402035:	48 89 f5             	mov    %rsi,%rbp
  402038:	48 89 d3             	mov    %rdx,%rbx
  40203b:	eb 06                	jmp    402043 <rio_writen+0x1e>
  40203d:	48 29 c3             	sub    %rax,%rbx
  402040:	48 01 c5             	add    %rax,%rbp
  402043:	48 85 db             	test   %rbx,%rbx
  402046:	74 24                	je     40206c <rio_writen+0x47>
  402048:	48 89 da             	mov    %rbx,%rdx
  40204b:	48 89 ee             	mov    %rbp,%rsi
  40204e:	44 89 e7             	mov    %r12d,%edi
  402051:	e8 ea eb ff ff       	callq  400c40 <write@plt>
  402056:	48 85 c0             	test   %rax,%rax
  402059:	7f e2                	jg     40203d <rio_writen+0x18>
  40205b:	e8 90 eb ff ff       	callq  400bf0 <__errno_location@plt>
  402060:	83 38 04             	cmpl   $0x4,(%rax)
  402063:	75 15                	jne    40207a <rio_writen+0x55>
  402065:	b8 00 00 00 00       	mov    $0x0,%eax
  40206a:	eb d1                	jmp    40203d <rio_writen+0x18>
  40206c:	4c 89 e8             	mov    %r13,%rax
  40206f:	48 83 c4 08          	add    $0x8,%rsp
  402073:	5b                   	pop    %rbx
  402074:	5d                   	pop    %rbp
  402075:	41 5c                	pop    %r12
  402077:	41 5d                	pop    %r13
  402079:	c3                   	retq   
  40207a:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  402081:	eb ec                	jmp    40206f <rio_writen+0x4a>

0000000000402083 <rio_read>:
  402083:	41 55                	push   %r13
  402085:	41 54                	push   %r12
  402087:	55                   	push   %rbp
  402088:	53                   	push   %rbx
  402089:	48 83 ec 08          	sub    $0x8,%rsp
  40208d:	48 89 fb             	mov    %rdi,%rbx
  402090:	49 89 f5             	mov    %rsi,%r13
  402093:	49 89 d4             	mov    %rdx,%r12
  402096:	eb 0a                	jmp    4020a2 <rio_read+0x1f>
  402098:	e8 53 eb ff ff       	callq  400bf0 <__errno_location@plt>
  40209d:	83 38 04             	cmpl   $0x4,(%rax)
  4020a0:	75 5c                	jne    4020fe <rio_read+0x7b>
  4020a2:	8b 6b 04             	mov    0x4(%rbx),%ebp
  4020a5:	85 ed                	test   %ebp,%ebp
  4020a7:	7f 24                	jg     4020cd <rio_read+0x4a>
  4020a9:	48 8d 6b 10          	lea    0x10(%rbx),%rbp
  4020ad:	ba 00 20 00 00       	mov    $0x2000,%edx
  4020b2:	48 89 ee             	mov    %rbp,%rsi
  4020b5:	8b 3b                	mov    (%rbx),%edi
  4020b7:	e8 e4 eb ff ff       	callq  400ca0 <read@plt>
  4020bc:	89 43 04             	mov    %eax,0x4(%rbx)
  4020bf:	85 c0                	test   %eax,%eax
  4020c1:	78 d5                	js     402098 <rio_read+0x15>
  4020c3:	85 c0                	test   %eax,%eax
  4020c5:	74 40                	je     402107 <rio_read+0x84>
  4020c7:	48 89 6b 08          	mov    %rbp,0x8(%rbx)
  4020cb:	eb d5                	jmp    4020a2 <rio_read+0x1f>
  4020cd:	89 e8                	mov    %ebp,%eax
  4020cf:	49 39 c4             	cmp    %rax,%r12
  4020d2:	77 03                	ja     4020d7 <rio_read+0x54>
  4020d4:	44 89 e5             	mov    %r12d,%ebp
  4020d7:	4c 63 e5             	movslq %ebp,%r12
  4020da:	48 8b 73 08          	mov    0x8(%rbx),%rsi
  4020de:	4c 89 e2             	mov    %r12,%rdx
  4020e1:	4c 89 ef             	mov    %r13,%rdi
  4020e4:	e8 07 ec ff ff       	callq  400cf0 <memcpy@plt>
  4020e9:	4c 01 63 08          	add    %r12,0x8(%rbx)
  4020ed:	29 6b 04             	sub    %ebp,0x4(%rbx)
  4020f0:	4c 89 e0             	mov    %r12,%rax
  4020f3:	48 83 c4 08          	add    $0x8,%rsp
  4020f7:	5b                   	pop    %rbx
  4020f8:	5d                   	pop    %rbp
  4020f9:	41 5c                	pop    %r12
  4020fb:	41 5d                	pop    %r13
  4020fd:	c3                   	retq   
  4020fe:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  402105:	eb ec                	jmp    4020f3 <rio_read+0x70>
  402107:	b8 00 00 00 00       	mov    $0x0,%eax
  40210c:	eb e5                	jmp    4020f3 <rio_read+0x70>

000000000040210e <rio_readlineb>:
  40210e:	41 55                	push   %r13
  402110:	41 54                	push   %r12
  402112:	55                   	push   %rbp
  402113:	53                   	push   %rbx
  402114:	48 83 ec 18          	sub    $0x18,%rsp
  402118:	49 89 fd             	mov    %rdi,%r13
  40211b:	49 89 d4             	mov    %rdx,%r12
  40211e:	48 89 f5             	mov    %rsi,%rbp
  402121:	bb 01 00 00 00       	mov    $0x1,%ebx
  402126:	4c 39 e3             	cmp    %r12,%rbx
  402129:	73 47                	jae    402172 <rio_readlineb+0x64>
  40212b:	48 8d 74 24 0f       	lea    0xf(%rsp),%rsi
  402130:	ba 01 00 00 00       	mov    $0x1,%edx
  402135:	4c 89 ef             	mov    %r13,%rdi
  402138:	e8 46 ff ff ff       	callq  402083 <rio_read>
  40213d:	83 f8 01             	cmp    $0x1,%eax
  402140:	75 1c                	jne    40215e <rio_readlineb+0x50>
  402142:	48 8d 45 01          	lea    0x1(%rbp),%rax
  402146:	0f b6 54 24 0f       	movzbl 0xf(%rsp),%edx
  40214b:	88 55 00             	mov    %dl,0x0(%rbp)
  40214e:	80 7c 24 0f 0a       	cmpb   $0xa,0xf(%rsp)
  402153:	74 1a                	je     40216f <rio_readlineb+0x61>
  402155:	48 83 c3 01          	add    $0x1,%rbx
  402159:	48 89 c5             	mov    %rax,%rbp
  40215c:	eb c8                	jmp    402126 <rio_readlineb+0x18>
  40215e:	85 c0                	test   %eax,%eax
  402160:	75 22                	jne    402184 <rio_readlineb+0x76>
  402162:	48 83 fb 01          	cmp    $0x1,%rbx
  402166:	75 0a                	jne    402172 <rio_readlineb+0x64>
  402168:	b8 00 00 00 00       	mov    $0x0,%eax
  40216d:	eb 0a                	jmp    402179 <rio_readlineb+0x6b>
  40216f:	48 89 c5             	mov    %rax,%rbp
  402172:	c6 45 00 00          	movb   $0x0,0x0(%rbp)
  402176:	48 89 d8             	mov    %rbx,%rax
  402179:	48 83 c4 18          	add    $0x18,%rsp
  40217d:	5b                   	pop    %rbx
  40217e:	5d                   	pop    %rbp
  40217f:	41 5c                	pop    %r12
  402181:	41 5d                	pop    %r13
  402183:	c3                   	retq   
  402184:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  40218b:	eb ec                	jmp    402179 <rio_readlineb+0x6b>

000000000040218d <submitr>:
  40218d:	41 57                	push   %r15
  40218f:	41 56                	push   %r14
  402191:	41 55                	push   %r13
  402193:	41 54                	push   %r12
  402195:	55                   	push   %rbp
  402196:	53                   	push   %rbx
  402197:	48 81 ec 58 a0 00 00 	sub    $0xa058,%rsp
  40219e:	49 89 fd             	mov    %rdi,%r13
  4021a1:	89 74 24 14          	mov    %esi,0x14(%rsp)
  4021a5:	49 89 d7             	mov    %rdx,%r15
  4021a8:	48 89 4c 24 08       	mov    %rcx,0x8(%rsp)
  4021ad:	4c 89 44 24 18       	mov    %r8,0x18(%rsp)
  4021b2:	4d 89 ce             	mov    %r9,%r14
  4021b5:	48 8b 9c 24 90 a0 00 	mov    0xa090(%rsp),%rbx
  4021bc:	00 
  4021bd:	c7 84 24 2c 20 00 00 	movl   $0x0,0x202c(%rsp)
  4021c4:	00 00 00 00 
  4021c8:	ba 00 00 00 00       	mov    $0x0,%edx
  4021cd:	be 01 00 00 00       	mov    $0x1,%esi
  4021d2:	bf 02 00 00 00       	mov    $0x2,%edi
  4021d7:	e8 f4 eb ff ff       	callq  400dd0 <socket@plt>
  4021dc:	85 c0                	test   %eax,%eax
  4021de:	0f 88 ca 01 00 00    	js     4023ae <submitr+0x221>
  4021e4:	89 c5                	mov    %eax,%ebp
  4021e6:	4c 89 ef             	mov    %r13,%rdi
  4021e9:	e8 d2 ea ff ff       	callq  400cc0 <gethostbyname@plt>
  4021ee:	48 85 c0             	test   %rax,%rax
  4021f1:	0f 84 05 02 00 00    	je     4023fc <submitr+0x26f>
  4021f7:	4c 8d a4 24 40 a0 00 	lea    0xa040(%rsp),%r12
  4021fe:	00 
  4021ff:	48 c7 84 24 40 a0 00 	movq   $0x0,0xa040(%rsp)
  402206:	00 00 00 00 00 
  40220b:	48 c7 84 24 48 a0 00 	movq   $0x0,0xa048(%rsp)
  402212:	00 00 00 00 00 
  402217:	66 c7 84 24 40 a0 00 	movw   $0x2,0xa040(%rsp)
  40221e:	00 02 00 
  402221:	48 8b 48 18          	mov    0x18(%rax),%rcx
  402225:	48 63 50 14          	movslq 0x14(%rax),%rdx
  402229:	48 8d b4 24 44 a0 00 	lea    0xa044(%rsp),%rsi
  402230:	00 
  402231:	48 8b 39             	mov    (%rcx),%rdi
  402234:	e8 17 eb ff ff       	callq  400d50 <bcopy@plt>
  402239:	0f b7 44 24 14       	movzwl 0x14(%rsp),%eax
  40223e:	66 c1 c8 08          	ror    $0x8,%ax
  402242:	66 89 84 24 42 a0 00 	mov    %ax,0xa042(%rsp)
  402249:	00 
  40224a:	ba 10 00 00 00       	mov    $0x10,%edx
  40224f:	4c 89 e6             	mov    %r12,%rsi
  402252:	89 ef                	mov    %ebp,%edi
  402254:	e8 67 eb ff ff       	callq  400dc0 <connect@plt>
  402259:	85 c0                	test   %eax,%eax
  40225b:	0f 88 02 02 00 00    	js     402463 <submitr+0x2d6>
  402261:	48 c7 c6 ff ff ff ff 	mov    $0xffffffffffffffff,%rsi
  402268:	b8 00 00 00 00       	mov    $0x0,%eax
  40226d:	48 89 f1             	mov    %rsi,%rcx
  402270:	4c 89 f7             	mov    %r14,%rdi
  402273:	f2 ae                	repnz scas %es:(%rdi),%al
  402275:	48 f7 d1             	not    %rcx
  402278:	48 89 ca             	mov    %rcx,%rdx
  40227b:	48 89 f1             	mov    %rsi,%rcx
  40227e:	4c 89 ff             	mov    %r15,%rdi
  402281:	f2 ae                	repnz scas %es:(%rdi),%al
  402283:	48 f7 d1             	not    %rcx
  402286:	49 89 c8             	mov    %rcx,%r8
  402289:	48 89 f1             	mov    %rsi,%rcx
  40228c:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
  402291:	f2 ae                	repnz scas %es:(%rdi),%al
  402293:	48 f7 d1             	not    %rcx
  402296:	4d 8d 44 08 fe       	lea    -0x2(%r8,%rcx,1),%r8
  40229b:	48 89 f1             	mov    %rsi,%rcx
  40229e:	48 8b 7c 24 18       	mov    0x18(%rsp),%rdi
  4022a3:	f2 ae                	repnz scas %es:(%rdi),%al
  4022a5:	48 89 c8             	mov    %rcx,%rax
  4022a8:	48 f7 d0             	not    %rax
  4022ab:	49 8d 4c 00 ff       	lea    -0x1(%r8,%rax,1),%rcx
  4022b0:	48 8d 44 52 fd       	lea    -0x3(%rdx,%rdx,2),%rax
  4022b5:	48 8d 84 01 80 00 00 	lea    0x80(%rcx,%rax,1),%rax
  4022bc:	00 
  4022bd:	48 3d 00 20 00 00    	cmp    $0x2000,%rax
  4022c3:	0f 87 f3 01 00 00    	ja     4024bc <submitr+0x32f>
  4022c9:	48 8d b4 24 30 40 00 	lea    0x4030(%rsp),%rsi
  4022d0:	00 
  4022d1:	b9 00 04 00 00       	mov    $0x400,%ecx
  4022d6:	b8 00 00 00 00       	mov    $0x0,%eax
  4022db:	48 89 f7             	mov    %rsi,%rdi
  4022de:	f3 48 ab             	rep stos %rax,%es:(%rdi)
  4022e1:	4c 89 f7             	mov    %r14,%rdi
  4022e4:	e8 60 fc ff ff       	callq  401f49 <urlencode>
  4022e9:	85 c0                	test   %eax,%eax
  4022eb:	0f 88 3d 02 00 00    	js     40252e <submitr+0x3a1>
  4022f1:	4c 8d a4 24 30 60 00 	lea    0x6030(%rsp),%r12
  4022f8:	00 
  4022f9:	4d 89 e9             	mov    %r13,%r9
  4022fc:	4c 8d 84 24 30 40 00 	lea    0x4030(%rsp),%r8
  402303:	00 
  402304:	4c 89 f9             	mov    %r15,%rcx
  402307:	48 8b 54 24 08       	mov    0x8(%rsp),%rdx
  40230c:	48 8d 35 25 10 00 00 	lea    0x1025(%rip),%rsi        # 403338 <trans_char+0x38>
  402313:	4c 89 e7             	mov    %r12,%rdi
  402316:	b8 00 00 00 00       	mov    $0x0,%eax
  40231b:	e8 80 ea ff ff       	callq  400da0 <sprintf@plt>
  402320:	b8 00 00 00 00       	mov    $0x0,%eax
  402325:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  40232c:	4c 89 e7             	mov    %r12,%rdi
  40232f:	f2 ae                	repnz scas %es:(%rdi),%al
  402331:	48 f7 d1             	not    %rcx
  402334:	48 8d 51 ff          	lea    -0x1(%rcx),%rdx
  402338:	4c 89 e6             	mov    %r12,%rsi
  40233b:	89 ef                	mov    %ebp,%edi
  40233d:	e8 e3 fc ff ff       	callq  402025 <rio_writen>
  402342:	48 85 c0             	test   %rax,%rax
  402345:	0f 88 6d 02 00 00    	js     4025b8 <submitr+0x42b>
  40234b:	4c 8d a4 24 30 80 00 	lea    0x8030(%rsp),%r12
  402352:	00 
  402353:	89 ee                	mov    %ebp,%esi
  402355:	4c 89 e7             	mov    %r12,%rdi
  402358:	e8 af fb ff ff       	callq  401f0c <rio_readinitb>
  40235d:	48 8d b4 24 30 60 00 	lea    0x6030(%rsp),%rsi
  402364:	00 
  402365:	ba 00 20 00 00       	mov    $0x2000,%edx
  40236a:	4c 89 e7             	mov    %r12,%rdi
  40236d:	e8 9c fd ff ff       	callq  40210e <rio_readlineb>
  402372:	48 85 c0             	test   %rax,%rax
  402375:	0f 8e ab 02 00 00    	jle    402626 <submitr+0x499>
  40237b:	48 8d 8c 24 2c 20 00 	lea    0x202c(%rsp),%rcx
  402382:	00 
  402383:	48 8d 94 24 30 20 00 	lea    0x2030(%rsp),%rdx
  40238a:	00 
  40238b:	48 8d bc 24 30 60 00 	lea    0x6030(%rsp),%rdi
  402392:	00 
  402393:	4c 8d 44 24 20       	lea    0x20(%rsp),%r8
  402398:	48 8d 35 10 10 00 00 	lea    0x1010(%rip),%rsi        # 4033af <trans_char+0xaf>
  40239f:	b8 00 00 00 00       	mov    $0x0,%eax
  4023a4:	e8 87 e9 ff ff       	callq  400d30 <__isoc99_sscanf@plt>
  4023a9:	e9 9f 03 00 00       	jmpq   40274d <submitr+0x5c0>
  4023ae:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  4023b5:	3a 20 43 
  4023b8:	48 89 03             	mov    %rax,(%rbx)
  4023bb:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  4023c2:	20 75 6e 
  4023c5:	48 89 43 08          	mov    %rax,0x8(%rbx)
  4023c9:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  4023d0:	74 6f 20 
  4023d3:	48 89 43 10          	mov    %rax,0x10(%rbx)
  4023d7:	48 b8 63 72 65 61 74 	movabs $0x7320657461657263,%rax
  4023de:	65 20 73 
  4023e1:	48 89 43 18          	mov    %rax,0x18(%rbx)
  4023e5:	c7 43 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%rbx)
  4023ec:	66 c7 43 24 74 00    	movw   $0x74,0x24(%rbx)
  4023f2:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4023f7:	e9 18 03 00 00       	jmpq   402714 <submitr+0x587>
  4023fc:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
  402403:	3a 20 44 
  402406:	48 89 03             	mov    %rax,(%rbx)
  402409:	48 b8 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rax
  402410:	20 75 6e 
  402413:	48 89 43 08          	mov    %rax,0x8(%rbx)
  402417:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  40241e:	74 6f 20 
  402421:	48 89 43 10          	mov    %rax,0x10(%rbx)
  402425:	48 b8 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rax
  40242c:	76 65 20 
  40242f:	48 89 43 18          	mov    %rax,0x18(%rbx)
  402433:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
  40243a:	72 20 61 
  40243d:	48 89 43 20          	mov    %rax,0x20(%rbx)
  402441:	c7 43 28 64 64 72 65 	movl   $0x65726464,0x28(%rbx)
  402448:	66 c7 43 2c 73 73    	movw   $0x7373,0x2c(%rbx)
  40244e:	c6 43 2e 00          	movb   $0x0,0x2e(%rbx)
  402452:	89 ef                	mov    %ebp,%edi
  402454:	e8 37 e8 ff ff       	callq  400c90 <close@plt>
  402459:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40245e:	e9 b1 02 00 00       	jmpq   402714 <submitr+0x587>
  402463:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
  40246a:	3a 20 55 
  40246d:	48 89 03             	mov    %rax,(%rbx)
  402470:	48 b8 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rax
  402477:	20 74 6f 
  40247a:	48 89 43 08          	mov    %rax,0x8(%rbx)
  40247e:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
  402485:	65 63 74 
  402488:	48 89 43 10          	mov    %rax,0x10(%rbx)
  40248c:	48 b8 20 74 6f 20 74 	movabs $0x20656874206f7420,%rax
  402493:	68 65 20 
  402496:	48 89 43 18          	mov    %rax,0x18(%rbx)
  40249a:	c7 43 20 73 65 72 76 	movl   $0x76726573,0x20(%rbx)
  4024a1:	66 c7 43 24 65 72    	movw   $0x7265,0x24(%rbx)
  4024a7:	c6 43 26 00          	movb   $0x0,0x26(%rbx)
  4024ab:	89 ef                	mov    %ebp,%edi
  4024ad:	e8 de e7 ff ff       	callq  400c90 <close@plt>
  4024b2:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4024b7:	e9 58 02 00 00       	jmpq   402714 <submitr+0x587>
  4024bc:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
  4024c3:	3a 20 52 
  4024c6:	48 89 03             	mov    %rax,(%rbx)
  4024c9:	48 b8 65 73 75 6c 74 	movabs $0x747320746c757365,%rax
  4024d0:	20 73 74 
  4024d3:	48 89 43 08          	mov    %rax,0x8(%rbx)
  4024d7:	48 b8 72 69 6e 67 20 	movabs $0x6f6f7420676e6972,%rax
  4024de:	74 6f 6f 
  4024e1:	48 89 43 10          	mov    %rax,0x10(%rbx)
  4024e5:	48 b8 20 6c 61 72 67 	movabs $0x202e656772616c20,%rax
  4024ec:	65 2e 20 
  4024ef:	48 89 43 18          	mov    %rax,0x18(%rbx)
  4024f3:	48 b8 49 6e 63 72 65 	movabs $0x6573616572636e49,%rax
  4024fa:	61 73 65 
  4024fd:	48 89 43 20          	mov    %rax,0x20(%rbx)
  402501:	48 b8 20 53 55 42 4d 	movabs $0x5254494d42555320,%rax
  402508:	49 54 52 
  40250b:	48 89 43 28          	mov    %rax,0x28(%rbx)
  40250f:	48 b8 5f 4d 41 58 42 	movabs $0x46554258414d5f,%rax
  402516:	55 46 00 
  402519:	48 89 43 30          	mov    %rax,0x30(%rbx)
  40251d:	89 ef                	mov    %ebp,%edi
  40251f:	e8 6c e7 ff ff       	callq  400c90 <close@plt>
  402524:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402529:	e9 e6 01 00 00       	jmpq   402714 <submitr+0x587>
  40252e:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
  402535:	3a 20 52 
  402538:	48 89 03             	mov    %rax,(%rbx)
  40253b:	48 b8 65 73 75 6c 74 	movabs $0x747320746c757365,%rax
  402542:	20 73 74 
  402545:	48 89 43 08          	mov    %rax,0x8(%rbx)
  402549:	48 b8 72 69 6e 67 20 	movabs $0x6e6f6320676e6972,%rax
  402550:	63 6f 6e 
  402553:	48 89 43 10          	mov    %rax,0x10(%rbx)
  402557:	48 b8 74 61 69 6e 73 	movabs $0x6e6120736e696174,%rax
  40255e:	20 61 6e 
  402561:	48 89 43 18          	mov    %rax,0x18(%rbx)
  402565:	48 b8 20 69 6c 6c 65 	movabs $0x6c6167656c6c6920,%rax
  40256c:	67 61 6c 
  40256f:	48 89 43 20          	mov    %rax,0x20(%rbx)
  402573:	48 b8 20 6f 72 20 75 	movabs $0x72706e7520726f20,%rax
  40257a:	6e 70 72 
  40257d:	48 89 43 28          	mov    %rax,0x28(%rbx)
  402581:	48 b8 69 6e 74 61 62 	movabs $0x20656c6261746e69,%rax
  402588:	6c 65 20 
  40258b:	48 89 43 30          	mov    %rax,0x30(%rbx)
  40258f:	48 b8 63 68 61 72 61 	movabs $0x6574636172616863,%rax
  402596:	63 74 65 
  402599:	48 89 43 38          	mov    %rax,0x38(%rbx)
  40259d:	66 c7 43 40 72 2e    	movw   $0x2e72,0x40(%rbx)
  4025a3:	c6 43 42 00          	movb   $0x0,0x42(%rbx)
  4025a7:	89 ef                	mov    %ebp,%edi
  4025a9:	e8 e2 e6 ff ff       	callq  400c90 <close@plt>
  4025ae:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4025b3:	e9 5c 01 00 00       	jmpq   402714 <submitr+0x587>
  4025b8:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  4025bf:	3a 20 43 
  4025c2:	48 89 03             	mov    %rax,(%rbx)
  4025c5:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  4025cc:	20 75 6e 
  4025cf:	48 89 43 08          	mov    %rax,0x8(%rbx)
  4025d3:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  4025da:	74 6f 20 
  4025dd:	48 89 43 10          	mov    %rax,0x10(%rbx)
  4025e1:	48 b8 77 72 69 74 65 	movabs $0x6f74206574697277,%rax
  4025e8:	20 74 6f 
  4025eb:	48 89 43 18          	mov    %rax,0x18(%rbx)
  4025ef:	48 b8 20 74 68 65 20 	movabs $0x7365722065687420,%rax
  4025f6:	72 65 73 
  4025f9:	48 89 43 20          	mov    %rax,0x20(%rbx)
  4025fd:	48 b8 75 6c 74 20 73 	movabs $0x7672657320746c75,%rax
  402604:	65 72 76 
  402607:	48 89 43 28          	mov    %rax,0x28(%rbx)
  40260b:	66 c7 43 30 65 72    	movw   $0x7265,0x30(%rbx)
  402611:	c6 43 32 00          	movb   $0x0,0x32(%rbx)
  402615:	89 ef                	mov    %ebp,%edi
  402617:	e8 74 e6 ff ff       	callq  400c90 <close@plt>
  40261c:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402621:	e9 ee 00 00 00       	jmpq   402714 <submitr+0x587>
  402626:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  40262d:	3a 20 43 
  402630:	48 89 03             	mov    %rax,(%rbx)
  402633:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  40263a:	20 75 6e 
  40263d:	48 89 43 08          	mov    %rax,0x8(%rbx)
  402641:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402648:	74 6f 20 
  40264b:	48 89 43 10          	mov    %rax,0x10(%rbx)
  40264f:	48 b8 72 65 61 64 20 	movabs $0x7269662064616572,%rax
  402656:	66 69 72 
  402659:	48 89 43 18          	mov    %rax,0x18(%rbx)
  40265d:	48 b8 73 74 20 68 65 	movabs $0x6564616568207473,%rax
  402664:	61 64 65 
  402667:	48 89 43 20          	mov    %rax,0x20(%rbx)
  40266b:	48 b8 72 20 66 72 6f 	movabs $0x72206d6f72662072,%rax
  402672:	6d 20 72 
  402675:	48 89 43 28          	mov    %rax,0x28(%rbx)
  402679:	48 b8 65 73 75 6c 74 	movabs $0x657320746c757365,%rax
  402680:	20 73 65 
  402683:	48 89 43 30          	mov    %rax,0x30(%rbx)
  402687:	c7 43 38 72 76 65 72 	movl   $0x72657672,0x38(%rbx)
  40268e:	c6 43 3c 00          	movb   $0x0,0x3c(%rbx)
  402692:	89 ef                	mov    %ebp,%edi
  402694:	e8 f7 e5 ff ff       	callq  400c90 <close@plt>
  402699:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40269e:	eb 74                	jmp    402714 <submitr+0x587>
  4026a0:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  4026a7:	3a 20 43 
  4026aa:	48 89 03             	mov    %rax,(%rbx)
  4026ad:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  4026b4:	20 75 6e 
  4026b7:	48 89 43 08          	mov    %rax,0x8(%rbx)
  4026bb:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  4026c2:	74 6f 20 
  4026c5:	48 89 43 10          	mov    %rax,0x10(%rbx)
  4026c9:	48 b8 72 65 61 64 20 	movabs $0x6165682064616572,%rax
  4026d0:	68 65 61 
  4026d3:	48 89 43 18          	mov    %rax,0x18(%rbx)
  4026d7:	48 b8 64 65 72 73 20 	movabs $0x6f72662073726564,%rax
  4026de:	66 72 6f 
  4026e1:	48 89 43 20          	mov    %rax,0x20(%rbx)
  4026e5:	48 b8 6d 20 74 68 65 	movabs $0x657220656874206d,%rax
  4026ec:	20 72 65 
  4026ef:	48 89 43 28          	mov    %rax,0x28(%rbx)
  4026f3:	48 b8 73 75 6c 74 20 	movabs $0x72657320746c7573,%rax
  4026fa:	73 65 72 
  4026fd:	48 89 43 30          	mov    %rax,0x30(%rbx)
  402701:	c7 43 38 76 65 72 00 	movl   $0x726576,0x38(%rbx)
  402708:	89 ef                	mov    %ebp,%edi
  40270a:	e8 81 e5 ff ff       	callq  400c90 <close@plt>
  40270f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402714:	48 81 c4 58 a0 00 00 	add    $0xa058,%rsp
  40271b:	5b                   	pop    %rbx
  40271c:	5d                   	pop    %rbp
  40271d:	41 5c                	pop    %r12
  40271f:	41 5d                	pop    %r13
  402721:	41 5e                	pop    %r14
  402723:	41 5f                	pop    %r15
  402725:	c3                   	retq   
  402726:	85 c0                	test   %eax,%eax
  402728:	74 51                	je     40277b <submitr+0x5ee>
  40272a:	48 8d b4 24 30 60 00 	lea    0x6030(%rsp),%rsi
  402731:	00 
  402732:	48 8d bc 24 30 80 00 	lea    0x8030(%rsp),%rdi
  402739:	00 
  40273a:	ba 00 20 00 00       	mov    $0x2000,%edx
  40273f:	e8 ca f9 ff ff       	callq  40210e <rio_readlineb>
  402744:	48 85 c0             	test   %rax,%rax
  402747:	0f 8e 53 ff ff ff    	jle    4026a0 <submitr+0x513>
  40274d:	0f b6 94 24 30 60 00 	movzbl 0x6030(%rsp),%edx
  402754:	00 
  402755:	b8 0d 00 00 00       	mov    $0xd,%eax
  40275a:	29 d0                	sub    %edx,%eax
  40275c:	75 c8                	jne    402726 <submitr+0x599>
  40275e:	0f b6 94 24 31 60 00 	movzbl 0x6031(%rsp),%edx
  402765:	00 
  402766:	b8 0a 00 00 00       	mov    $0xa,%eax
  40276b:	29 d0                	sub    %edx,%eax
  40276d:	75 b7                	jne    402726 <submitr+0x599>
  40276f:	0f b6 84 24 32 60 00 	movzbl 0x6032(%rsp),%eax
  402776:	00 
  402777:	f7 d8                	neg    %eax
  402779:	eb ab                	jmp    402726 <submitr+0x599>
  40277b:	48 8d b4 24 30 60 00 	lea    0x6030(%rsp),%rsi
  402782:	00 
  402783:	48 8d bc 24 30 80 00 	lea    0x8030(%rsp),%rdi
  40278a:	00 
  40278b:	ba 00 20 00 00       	mov    $0x2000,%edx
  402790:	e8 79 f9 ff ff       	callq  40210e <rio_readlineb>
  402795:	48 85 c0             	test   %rax,%rax
  402798:	7e 67                	jle    402801 <submitr+0x674>
  40279a:	8b 94 24 2c 20 00 00 	mov    0x202c(%rsp),%edx
  4027a1:	81 fa c8 00 00 00    	cmp    $0xc8,%edx
  4027a7:	0f 85 d7 00 00 00    	jne    402884 <submitr+0x6f7>
  4027ad:	48 8d b4 24 30 60 00 	lea    0x6030(%rsp),%rsi
  4027b4:	00 
  4027b5:	48 89 df             	mov    %rbx,%rdi
  4027b8:	e8 63 e4 ff ff       	callq  400c20 <strcpy@plt>
  4027bd:	89 ef                	mov    %ebp,%edi
  4027bf:	e8 cc e4 ff ff       	callq  400c90 <close@plt>
  4027c4:	0f b6 03             	movzbl (%rbx),%eax
  4027c7:	ba 4f 00 00 00       	mov    $0x4f,%edx
  4027cc:	29 c2                	sub    %eax,%edx
  4027ce:	0f 85 da 00 00 00    	jne    4028ae <submitr+0x721>
  4027d4:	0f b6 4b 01          	movzbl 0x1(%rbx),%ecx
  4027d8:	b8 4b 00 00 00       	mov    $0x4b,%eax
  4027dd:	29 c8                	sub    %ecx,%eax
  4027df:	0f 85 cb 00 00 00    	jne    4028b0 <submitr+0x723>
  4027e5:	0f b6 4b 02          	movzbl 0x2(%rbx),%ecx
  4027e9:	b8 0a 00 00 00       	mov    $0xa,%eax
  4027ee:	29 c8                	sub    %ecx,%eax
  4027f0:	0f 85 ba 00 00 00    	jne    4028b0 <submitr+0x723>
  4027f6:	0f b6 43 03          	movzbl 0x3(%rbx),%eax
  4027fa:	f7 d8                	neg    %eax
  4027fc:	e9 af 00 00 00       	jmpq   4028b0 <submitr+0x723>
  402801:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402808:	3a 20 43 
  40280b:	48 89 03             	mov    %rax,(%rbx)
  40280e:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  402815:	20 75 6e 
  402818:	48 89 43 08          	mov    %rax,0x8(%rbx)
  40281c:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402823:	74 6f 20 
  402826:	48 89 43 10          	mov    %rax,0x10(%rbx)
  40282a:	48 b8 72 65 61 64 20 	movabs $0x6174732064616572,%rax
  402831:	73 74 61 
  402834:	48 89 43 18          	mov    %rax,0x18(%rbx)
  402838:	48 b8 74 75 73 20 6d 	movabs $0x7373656d20737574,%rax
  40283f:	65 73 73 
  402842:	48 89 43 20          	mov    %rax,0x20(%rbx)
  402846:	48 b8 61 67 65 20 66 	movabs $0x6d6f726620656761,%rax
  40284d:	72 6f 6d 
  402850:	48 89 43 28          	mov    %rax,0x28(%rbx)
  402854:	48 b8 20 72 65 73 75 	movabs $0x20746c7573657220,%rax
  40285b:	6c 74 20 
  40285e:	48 89 43 30          	mov    %rax,0x30(%rbx)
  402862:	c7 43 38 73 65 72 76 	movl   $0x76726573,0x38(%rbx)
  402869:	66 c7 43 3c 65 72    	movw   $0x7265,0x3c(%rbx)
  40286f:	c6 43 3e 00          	movb   $0x0,0x3e(%rbx)
  402873:	89 ef                	mov    %ebp,%edi
  402875:	e8 16 e4 ff ff       	callq  400c90 <close@plt>
  40287a:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40287f:	e9 90 fe ff ff       	jmpq   402714 <submitr+0x587>
  402884:	48 8d 4c 24 20       	lea    0x20(%rsp),%rcx
  402889:	48 8d 35 e8 0a 00 00 	lea    0xae8(%rip),%rsi        # 403378 <trans_char+0x78>
  402890:	48 89 df             	mov    %rbx,%rdi
  402893:	b8 00 00 00 00       	mov    $0x0,%eax
  402898:	e8 03 e5 ff ff       	callq  400da0 <sprintf@plt>
  40289d:	89 ef                	mov    %ebp,%edi
  40289f:	e8 ec e3 ff ff       	callq  400c90 <close@plt>
  4028a4:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4028a9:	e9 66 fe ff ff       	jmpq   402714 <submitr+0x587>
  4028ae:	89 d0                	mov    %edx,%eax
  4028b0:	f7 d8                	neg    %eax
  4028b2:	0f 84 5c fe ff ff    	je     402714 <submitr+0x587>
  4028b8:	b9 05 00 00 00       	mov    $0x5,%ecx
  4028bd:	48 8d 3d fc 0a 00 00 	lea    0xafc(%rip),%rdi        # 4033c0 <trans_char+0xc0>
  4028c4:	48 89 de             	mov    %rbx,%rsi
  4028c7:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  4028c9:	0f 97 c0             	seta   %al
  4028cc:	0f 92 c1             	setb   %cl
  4028cf:	29 c8                	sub    %ecx,%eax
  4028d1:	0f be c0             	movsbl %al,%eax
  4028d4:	85 c0                	test   %eax,%eax
  4028d6:	0f 84 38 fe ff ff    	je     402714 <submitr+0x587>
  4028dc:	85 d2                	test   %edx,%edx
  4028de:	75 13                	jne    4028f3 <submitr+0x766>
  4028e0:	0f b6 43 01          	movzbl 0x1(%rbx),%eax
  4028e4:	ba 4b 00 00 00       	mov    $0x4b,%edx
  4028e9:	29 c2                	sub    %eax,%edx
  4028eb:	75 06                	jne    4028f3 <submitr+0x766>
  4028ed:	0f b6 53 02          	movzbl 0x2(%rbx),%edx
  4028f1:	f7 da                	neg    %edx
  4028f3:	89 d0                	mov    %edx,%eax
  4028f5:	f7 d8                	neg    %eax
  4028f7:	0f 84 17 fe ff ff    	je     402714 <submitr+0x587>
  4028fd:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402902:	e9 0d fe ff ff       	jmpq   402714 <submitr+0x587>

0000000000402907 <init_timeout>:
  402907:	85 ff                	test   %edi,%edi
  402909:	74 20                	je     40292b <init_timeout+0x24>
  40290b:	53                   	push   %rbx
  40290c:	89 fb                	mov    %edi,%ebx
  40290e:	85 ff                	test   %edi,%edi
  402910:	78 1b                	js     40292d <init_timeout+0x26>
  402912:	48 8d 35 05 f6 ff ff 	lea    -0x9fb(%rip),%rsi        # 401f1e <sigalrm_handler>
  402919:	bf 0e 00 00 00       	mov    $0xe,%edi
  40291e:	e8 8d e3 ff ff       	callq  400cb0 <signal@plt>
  402923:	89 df                	mov    %ebx,%edi
  402925:	e8 56 e3 ff ff       	callq  400c80 <alarm@plt>
  40292a:	5b                   	pop    %rbx
  40292b:	f3 c3                	repz retq 
  40292d:	bb 00 00 00 00       	mov    $0x0,%ebx
  402932:	eb de                	jmp    402912 <init_timeout+0xb>

0000000000402934 <init_driver>:
  402934:	41 54                	push   %r12
  402936:	55                   	push   %rbp
  402937:	53                   	push   %rbx
  402938:	48 83 ec 10          	sub    $0x10,%rsp
  40293c:	48 89 fd             	mov    %rdi,%rbp
  40293f:	be 01 00 00 00       	mov    $0x1,%esi
  402944:	bf 0d 00 00 00       	mov    $0xd,%edi
  402949:	e8 62 e3 ff ff       	callq  400cb0 <signal@plt>
  40294e:	be 01 00 00 00       	mov    $0x1,%esi
  402953:	bf 1d 00 00 00       	mov    $0x1d,%edi
  402958:	e8 53 e3 ff ff       	callq  400cb0 <signal@plt>
  40295d:	be 01 00 00 00       	mov    $0x1,%esi
  402962:	bf 1d 00 00 00       	mov    $0x1d,%edi
  402967:	e8 44 e3 ff ff       	callq  400cb0 <signal@plt>
  40296c:	ba 00 00 00 00       	mov    $0x0,%edx
  402971:	be 01 00 00 00       	mov    $0x1,%esi
  402976:	bf 02 00 00 00       	mov    $0x2,%edi
  40297b:	e8 50 e4 ff ff       	callq  400dd0 <socket@plt>
  402980:	85 c0                	test   %eax,%eax
  402982:	0f 88 80 00 00 00    	js     402a08 <init_driver+0xd4>
  402988:	89 c3                	mov    %eax,%ebx
  40298a:	48 8d 3d 34 0a 00 00 	lea    0xa34(%rip),%rdi        # 4033c5 <trans_char+0xc5>
  402991:	e8 2a e3 ff ff       	callq  400cc0 <gethostbyname@plt>
  402996:	48 85 c0             	test   %rax,%rax
  402999:	0f 84 b5 00 00 00    	je     402a54 <init_driver+0x120>
  40299f:	48 c7 04 24 00 00 00 	movq   $0x0,(%rsp)
  4029a6:	00 
  4029a7:	48 c7 44 24 08 00 00 	movq   $0x0,0x8(%rsp)
  4029ae:	00 00 
  4029b0:	66 c7 04 24 02 00    	movw   $0x2,(%rsp)
  4029b6:	48 8b 48 18          	mov    0x18(%rax),%rcx
  4029ba:	48 63 50 14          	movslq 0x14(%rax),%rdx
  4029be:	48 8d 74 24 04       	lea    0x4(%rsp),%rsi
  4029c3:	48 8b 39             	mov    (%rcx),%rdi
  4029c6:	e8 85 e3 ff ff       	callq  400d50 <bcopy@plt>
  4029cb:	66 c7 44 24 02 3c a4 	movw   $0xa43c,0x2(%rsp)
  4029d2:	ba 10 00 00 00       	mov    $0x10,%edx
  4029d7:	48 89 e6             	mov    %rsp,%rsi
  4029da:	89 df                	mov    %ebx,%edi
  4029dc:	e8 df e3 ff ff       	callq  400dc0 <connect@plt>
  4029e1:	85 c0                	test   %eax,%eax
  4029e3:	0f 88 d3 00 00 00    	js     402abc <init_driver+0x188>
  4029e9:	89 df                	mov    %ebx,%edi
  4029eb:	e8 a0 e2 ff ff       	callq  400c90 <close@plt>
  4029f0:	66 c7 45 00 4f 4b    	movw   $0x4b4f,0x0(%rbp)
  4029f6:	c6 45 02 00          	movb   $0x0,0x2(%rbp)
  4029fa:	b8 00 00 00 00       	mov    $0x0,%eax
  4029ff:	48 83 c4 10          	add    $0x10,%rsp
  402a03:	5b                   	pop    %rbx
  402a04:	5d                   	pop    %rbp
  402a05:	41 5c                	pop    %r12
  402a07:	c3                   	retq   
  402a08:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402a0f:	3a 20 43 
  402a12:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402a16:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  402a1d:	20 75 6e 
  402a20:	48 89 45 08          	mov    %rax,0x8(%rbp)
  402a24:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402a2b:	74 6f 20 
  402a2e:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402a32:	48 b8 63 72 65 61 74 	movabs $0x7320657461657263,%rax
  402a39:	65 20 73 
  402a3c:	48 89 45 18          	mov    %rax,0x18(%rbp)
  402a40:	c7 45 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%rbp)
  402a47:	66 c7 45 24 74 00    	movw   $0x74,0x24(%rbp)
  402a4d:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402a52:	eb ab                	jmp    4029ff <init_driver+0xcb>
  402a54:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
  402a5b:	3a 20 44 
  402a5e:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402a62:	48 b8 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rax
  402a69:	20 75 6e 
  402a6c:	48 89 45 08          	mov    %rax,0x8(%rbp)
  402a70:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402a77:	74 6f 20 
  402a7a:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402a7e:	48 b8 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rax
  402a85:	76 65 20 
  402a88:	48 89 45 18          	mov    %rax,0x18(%rbp)
  402a8c:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
  402a93:	72 20 61 
  402a96:	48 89 45 20          	mov    %rax,0x20(%rbp)
  402a9a:	c7 45 28 64 64 72 65 	movl   $0x65726464,0x28(%rbp)
  402aa1:	66 c7 45 2c 73 73    	movw   $0x7373,0x2c(%rbp)
  402aa7:	c6 45 2e 00          	movb   $0x0,0x2e(%rbp)
  402aab:	89 df                	mov    %ebx,%edi
  402aad:	e8 de e1 ff ff       	callq  400c90 <close@plt>
  402ab2:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402ab7:	e9 43 ff ff ff       	jmpq   4029ff <init_driver+0xcb>
  402abc:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
  402ac3:	3a 20 55 
  402ac6:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402aca:	48 b8 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rax
  402ad1:	20 74 6f 
  402ad4:	48 89 45 08          	mov    %rax,0x8(%rbp)
  402ad8:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
  402adf:	65 63 74 
  402ae2:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402ae6:	48 b8 20 74 6f 20 73 	movabs $0x76726573206f7420,%rax
  402aed:	65 72 76 
  402af0:	48 89 45 18          	mov    %rax,0x18(%rbp)
  402af4:	66 c7 45 20 65 72    	movw   $0x7265,0x20(%rbp)
  402afa:	c6 45 22 00          	movb   $0x0,0x22(%rbp)
  402afe:	89 df                	mov    %ebx,%edi
  402b00:	e8 8b e1 ff ff       	callq  400c90 <close@plt>
  402b05:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402b0a:	e9 f0 fe ff ff       	jmpq   4029ff <init_driver+0xcb>

0000000000402b0f <driver_post>:
  402b0f:	53                   	push   %rbx
  402b10:	4c 89 cb             	mov    %r9,%rbx
  402b13:	45 85 c0             	test   %r8d,%r8d
  402b16:	75 18                	jne    402b30 <driver_post+0x21>
  402b18:	48 85 ff             	test   %rdi,%rdi
  402b1b:	74 05                	je     402b22 <driver_post+0x13>
  402b1d:	80 3f 00             	cmpb   $0x0,(%rdi)
  402b20:	75 32                	jne    402b54 <driver_post+0x45>
  402b22:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  402b27:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  402b2b:	44 89 c0             	mov    %r8d,%eax
  402b2e:	5b                   	pop    %rbx
  402b2f:	c3                   	retq   
  402b30:	48 89 ce             	mov    %rcx,%rsi
  402b33:	48 8d 3d 99 08 00 00 	lea    0x899(%rip),%rdi        # 4033d3 <trans_char+0xd3>
  402b3a:	b8 00 00 00 00       	mov    $0x0,%eax
  402b3f:	e8 1c e1 ff ff       	callq  400c60 <printf@plt>
  402b44:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  402b49:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  402b4d:	b8 00 00 00 00       	mov    $0x0,%eax
  402b52:	eb da                	jmp    402b2e <driver_post+0x1f>
  402b54:	48 83 ec 08          	sub    $0x8,%rsp
  402b58:	41 51                	push   %r9
  402b5a:	49 89 c9             	mov    %rcx,%r9
  402b5d:	49 89 d0             	mov    %rdx,%r8
  402b60:	48 89 f9             	mov    %rdi,%rcx
  402b63:	48 89 f2             	mov    %rsi,%rdx
  402b66:	be a4 3c 00 00       	mov    $0x3ca4,%esi
  402b6b:	48 8d 3d 53 08 00 00 	lea    0x853(%rip),%rdi        # 4033c5 <trans_char+0xc5>
  402b72:	e8 16 f6 ff ff       	callq  40218d <submitr>
  402b77:	48 83 c4 10          	add    $0x10,%rsp
  402b7b:	eb b1                	jmp    402b2e <driver_post+0x1f>

0000000000402b7d <check>:
  402b7d:	89 f8                	mov    %edi,%eax
  402b7f:	c1 e8 1c             	shr    $0x1c,%eax
  402b82:	85 c0                	test   %eax,%eax
  402b84:	74 1d                	je     402ba3 <check+0x26>
  402b86:	b9 00 00 00 00       	mov    $0x0,%ecx
  402b8b:	83 f9 1f             	cmp    $0x1f,%ecx
  402b8e:	7f 0d                	jg     402b9d <check+0x20>
  402b90:	89 f8                	mov    %edi,%eax
  402b92:	d3 e8                	shr    %cl,%eax
  402b94:	3c 0a                	cmp    $0xa,%al
  402b96:	74 11                	je     402ba9 <check+0x2c>
  402b98:	83 c1 08             	add    $0x8,%ecx
  402b9b:	eb ee                	jmp    402b8b <check+0xe>
  402b9d:	b8 01 00 00 00       	mov    $0x1,%eax
  402ba2:	c3                   	retq   
  402ba3:	b8 00 00 00 00       	mov    $0x0,%eax
  402ba8:	c3                   	retq   
  402ba9:	b8 00 00 00 00       	mov    $0x0,%eax
  402bae:	c3                   	retq   

0000000000402baf <gencookie>:
  402baf:	53                   	push   %rbx
  402bb0:	83 c7 01             	add    $0x1,%edi
  402bb3:	e8 48 e0 ff ff       	callq  400c00 <srandom@plt>
  402bb8:	e8 53 e1 ff ff       	callq  400d10 <random@plt>
  402bbd:	89 c3                	mov    %eax,%ebx
  402bbf:	89 c7                	mov    %eax,%edi
  402bc1:	e8 b7 ff ff ff       	callq  402b7d <check>
  402bc6:	85 c0                	test   %eax,%eax
  402bc8:	74 ee                	je     402bb8 <gencookie+0x9>
  402bca:	89 d8                	mov    %ebx,%eax
  402bcc:	5b                   	pop    %rbx
  402bcd:	c3                   	retq   
  402bce:	66 90                	xchg   %ax,%ax

0000000000402bd0 <__libc_csu_init>:
  402bd0:	41 57                	push   %r15
  402bd2:	41 56                	push   %r14
  402bd4:	41 89 ff             	mov    %edi,%r15d
  402bd7:	41 55                	push   %r13
  402bd9:	41 54                	push   %r12
  402bdb:	4c 8d 25 26 12 20 00 	lea    0x201226(%rip),%r12        # 603e08 <__frame_dummy_init_array_entry>
  402be2:	55                   	push   %rbp
  402be3:	48 8d 2d 26 12 20 00 	lea    0x201226(%rip),%rbp        # 603e10 <__init_array_end>
  402bea:	53                   	push   %rbx
  402beb:	49 89 f6             	mov    %rsi,%r14
  402bee:	49 89 d5             	mov    %rdx,%r13
  402bf1:	4c 29 e5             	sub    %r12,%rbp
  402bf4:	48 83 ec 08          	sub    $0x8,%rsp
  402bf8:	48 c1 fd 03          	sar    $0x3,%rbp
  402bfc:	e8 af df ff ff       	callq  400bb0 <_init>
  402c01:	48 85 ed             	test   %rbp,%rbp
  402c04:	74 20                	je     402c26 <__libc_csu_init+0x56>
  402c06:	31 db                	xor    %ebx,%ebx
  402c08:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  402c0f:	00 
  402c10:	4c 89 ea             	mov    %r13,%rdx
  402c13:	4c 89 f6             	mov    %r14,%rsi
  402c16:	44 89 ff             	mov    %r15d,%edi
  402c19:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  402c1d:	48 83 c3 01          	add    $0x1,%rbx
  402c21:	48 39 dd             	cmp    %rbx,%rbp
  402c24:	75 ea                	jne    402c10 <__libc_csu_init+0x40>
  402c26:	48 83 c4 08          	add    $0x8,%rsp
  402c2a:	5b                   	pop    %rbx
  402c2b:	5d                   	pop    %rbp
  402c2c:	41 5c                	pop    %r12
  402c2e:	41 5d                	pop    %r13
  402c30:	41 5e                	pop    %r14
  402c32:	41 5f                	pop    %r15
  402c34:	c3                   	retq   
  402c35:	90                   	nop
  402c36:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  402c3d:	00 00 00 

0000000000402c40 <__libc_csu_fini>:
  402c40:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000402c44 <_fini>:
  402c44:	48 83 ec 08          	sub    $0x8,%rsp
  402c48:	48 83 c4 08          	add    $0x8,%rsp
  402c4c:	c3                   	retq   
