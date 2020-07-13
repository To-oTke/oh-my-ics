bomb:     file format elf64-x86-64


Disassembly of section .init:

0000000000400b30 <_init>:
  400b30:	48 83 ec 08          	sub    $0x8,%rsp
  400b34:	48 8b 05 bd 24 20 00 	mov    0x2024bd(%rip),%rax        # 602ff8 <__gmon_start__>
  400b3b:	48 85 c0             	test   %rax,%rax
  400b3e:	74 02                	je     400b42 <_init+0x12>
  400b40:	ff d0                	callq  *%rax
  400b42:	48 83 c4 08          	add    $0x8,%rsp
  400b46:	c3                   	retq   

Disassembly of section .plt:

0000000000400b50 <.plt>:
  400b50:	ff 35 b2 24 20 00    	pushq  0x2024b2(%rip)        # 603008 <_GLOBAL_OFFSET_TABLE_+0x8>
  400b56:	ff 25 b4 24 20 00    	jmpq   *0x2024b4(%rip)        # 603010 <_GLOBAL_OFFSET_TABLE_+0x10>
  400b5c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400b60 <getenv@plt>:
  400b60:	ff 25 b2 24 20 00    	jmpq   *0x2024b2(%rip)        # 603018 <getenv@GLIBC_2.2.5>
  400b66:	68 00 00 00 00       	pushq  $0x0
  400b6b:	e9 e0 ff ff ff       	jmpq   400b50 <.plt>

0000000000400b70 <__errno_location@plt>:
  400b70:	ff 25 aa 24 20 00    	jmpq   *0x2024aa(%rip)        # 603020 <__errno_location@GLIBC_2.2.5>
  400b76:	68 01 00 00 00       	pushq  $0x1
  400b7b:	e9 d0 ff ff ff       	jmpq   400b50 <.plt>

0000000000400b80 <strcpy@plt>:
  400b80:	ff 25 a2 24 20 00    	jmpq   *0x2024a2(%rip)        # 603028 <strcpy@GLIBC_2.2.5>
  400b86:	68 02 00 00 00       	pushq  $0x2
  400b8b:	e9 c0 ff ff ff       	jmpq   400b50 <.plt>

0000000000400b90 <puts@plt>:
  400b90:	ff 25 9a 24 20 00    	jmpq   *0x20249a(%rip)        # 603030 <puts@GLIBC_2.2.5>
  400b96:	68 03 00 00 00       	pushq  $0x3
  400b9b:	e9 b0 ff ff ff       	jmpq   400b50 <.plt>

0000000000400ba0 <write@plt>:
  400ba0:	ff 25 92 24 20 00    	jmpq   *0x202492(%rip)        # 603038 <write@GLIBC_2.2.5>
  400ba6:	68 04 00 00 00       	pushq  $0x4
  400bab:	e9 a0 ff ff ff       	jmpq   400b50 <.plt>

0000000000400bb0 <fclose@plt>:
  400bb0:	ff 25 8a 24 20 00    	jmpq   *0x20248a(%rip)        # 603040 <fclose@GLIBC_2.2.5>
  400bb6:	68 05 00 00 00       	pushq  $0x5
  400bbb:	e9 90 ff ff ff       	jmpq   400b50 <.plt>

0000000000400bc0 <system@plt>:
  400bc0:	ff 25 82 24 20 00    	jmpq   *0x202482(%rip)        # 603048 <system@GLIBC_2.2.5>
  400bc6:	68 06 00 00 00       	pushq  $0x6
  400bcb:	e9 80 ff ff ff       	jmpq   400b50 <.plt>

0000000000400bd0 <printf@plt>:
  400bd0:	ff 25 7a 24 20 00    	jmpq   *0x20247a(%rip)        # 603050 <printf@GLIBC_2.2.5>
  400bd6:	68 07 00 00 00       	pushq  $0x7
  400bdb:	e9 70 ff ff ff       	jmpq   400b50 <.plt>

0000000000400be0 <rewind@plt>:
  400be0:	ff 25 72 24 20 00    	jmpq   *0x202472(%rip)        # 603058 <rewind@GLIBC_2.2.5>
  400be6:	68 08 00 00 00       	pushq  $0x8
  400beb:	e9 60 ff ff ff       	jmpq   400b50 <.plt>

0000000000400bf0 <dup@plt>:
  400bf0:	ff 25 6a 24 20 00    	jmpq   *0x20246a(%rip)        # 603060 <dup@GLIBC_2.2.5>
  400bf6:	68 09 00 00 00       	pushq  $0x9
  400bfb:	e9 50 ff ff ff       	jmpq   400b50 <.plt>

0000000000400c00 <close@plt>:
  400c00:	ff 25 62 24 20 00    	jmpq   *0x202462(%rip)        # 603068 <close@GLIBC_2.2.5>
  400c06:	68 0a 00 00 00       	pushq  $0xa
  400c0b:	e9 40 ff ff ff       	jmpq   400b50 <.plt>

0000000000400c10 <fputc@plt>:
  400c10:	ff 25 5a 24 20 00    	jmpq   *0x20245a(%rip)        # 603070 <fputc@GLIBC_2.2.5>
  400c16:	68 0b 00 00 00       	pushq  $0xb
  400c1b:	e9 30 ff ff ff       	jmpq   400b50 <.plt>

0000000000400c20 <fgets@plt>:
  400c20:	ff 25 52 24 20 00    	jmpq   *0x202452(%rip)        # 603078 <fgets@GLIBC_2.2.5>
  400c26:	68 0c 00 00 00       	pushq  $0xc
  400c2b:	e9 20 ff ff ff       	jmpq   400b50 <.plt>

0000000000400c30 <tmpfile@plt>:
  400c30:	ff 25 4a 24 20 00    	jmpq   *0x20244a(%rip)        # 603080 <tmpfile@GLIBC_2.2.5>
  400c36:	68 0d 00 00 00       	pushq  $0xd
  400c3b:	e9 10 ff ff ff       	jmpq   400b50 <.plt>

0000000000400c40 <signal@plt>:
  400c40:	ff 25 42 24 20 00    	jmpq   *0x202442(%rip)        # 603088 <signal@GLIBC_2.2.5>
  400c46:	68 0e 00 00 00       	pushq  $0xe
  400c4b:	e9 00 ff ff ff       	jmpq   400b50 <.plt>

0000000000400c50 <gethostbyname@plt>:
  400c50:	ff 25 3a 24 20 00    	jmpq   *0x20243a(%rip)        # 603090 <gethostbyname@GLIBC_2.2.5>
  400c56:	68 0f 00 00 00       	pushq  $0xf
  400c5b:	e9 f0 fe ff ff       	jmpq   400b50 <.plt>

0000000000400c60 <fprintf@plt>:
  400c60:	ff 25 32 24 20 00    	jmpq   *0x202432(%rip)        # 603098 <fprintf@GLIBC_2.2.5>
  400c66:	68 10 00 00 00       	pushq  $0x10
  400c6b:	e9 e0 fe ff ff       	jmpq   400b50 <.plt>

0000000000400c70 <inet_pton@plt>:
  400c70:	ff 25 2a 24 20 00    	jmpq   *0x20242a(%rip)        # 6030a0 <inet_pton@GLIBC_2.2.5>
  400c76:	68 11 00 00 00       	pushq  $0x11
  400c7b:	e9 d0 fe ff ff       	jmpq   400b50 <.plt>

0000000000400c80 <fflush@plt>:
  400c80:	ff 25 22 24 20 00    	jmpq   *0x202422(%rip)        # 6030a8 <fflush@GLIBC_2.2.5>
  400c86:	68 12 00 00 00       	pushq  $0x12
  400c8b:	e9 c0 fe ff ff       	jmpq   400b50 <.plt>

0000000000400c90 <__isoc99_sscanf@plt>:
  400c90:	ff 25 1a 24 20 00    	jmpq   *0x20241a(%rip)        # 6030b0 <__isoc99_sscanf@GLIBC_2.7>
  400c96:	68 13 00 00 00       	pushq  $0x13
  400c9b:	e9 b0 fe ff ff       	jmpq   400b50 <.plt>

0000000000400ca0 <bcopy@plt>:
  400ca0:	ff 25 12 24 20 00    	jmpq   *0x202412(%rip)        # 6030b8 <bcopy@GLIBC_2.2.5>
  400ca6:	68 14 00 00 00       	pushq  $0x14
  400cab:	e9 a0 fe ff ff       	jmpq   400b50 <.plt>

0000000000400cb0 <cuserid@plt>:
  400cb0:	ff 25 0a 24 20 00    	jmpq   *0x20240a(%rip)        # 6030c0 <cuserid@GLIBC_2.2.5>
  400cb6:	68 15 00 00 00       	pushq  $0x15
  400cbb:	e9 90 fe ff ff       	jmpq   400b50 <.plt>

0000000000400cc0 <fopen@plt>:
  400cc0:	ff 25 02 24 20 00    	jmpq   *0x202402(%rip)        # 6030c8 <fopen@GLIBC_2.2.5>
  400cc6:	68 16 00 00 00       	pushq  $0x16
  400ccb:	e9 80 fe ff ff       	jmpq   400b50 <.plt>

0000000000400cd0 <strcat@plt>:
  400cd0:	ff 25 fa 23 20 00    	jmpq   *0x2023fa(%rip)        # 6030d0 <strcat@GLIBC_2.2.5>
  400cd6:	68 17 00 00 00       	pushq  $0x17
  400cdb:	e9 70 fe ff ff       	jmpq   400b50 <.plt>

0000000000400ce0 <sprintf@plt>:
  400ce0:	ff 25 f2 23 20 00    	jmpq   *0x2023f2(%rip)        # 6030d8 <sprintf@GLIBC_2.2.5>
  400ce6:	68 18 00 00 00       	pushq  $0x18
  400ceb:	e9 60 fe ff ff       	jmpq   400b50 <.plt>

0000000000400cf0 <exit@plt>:
  400cf0:	ff 25 ea 23 20 00    	jmpq   *0x2023ea(%rip)        # 6030e0 <exit@GLIBC_2.2.5>
  400cf6:	68 19 00 00 00       	pushq  $0x19
  400cfb:	e9 50 fe ff ff       	jmpq   400b50 <.plt>

0000000000400d00 <connect@plt>:
  400d00:	ff 25 e2 23 20 00    	jmpq   *0x2023e2(%rip)        # 6030e8 <connect@GLIBC_2.2.5>
  400d06:	68 1a 00 00 00       	pushq  $0x1a
  400d0b:	e9 40 fe ff ff       	jmpq   400b50 <.plt>

0000000000400d10 <fwrite@plt>:
  400d10:	ff 25 da 23 20 00    	jmpq   *0x2023da(%rip)        # 6030f0 <fwrite@GLIBC_2.2.5>
  400d16:	68 1b 00 00 00       	pushq  $0x1b
  400d1b:	e9 30 fe ff ff       	jmpq   400b50 <.plt>

0000000000400d20 <sleep@plt>:
  400d20:	ff 25 d2 23 20 00    	jmpq   *0x2023d2(%rip)        # 6030f8 <sleep@GLIBC_2.2.5>
  400d26:	68 1c 00 00 00       	pushq  $0x1c
  400d2b:	e9 20 fe ff ff       	jmpq   400b50 <.plt>

0000000000400d30 <__ctype_b_loc@plt>:
  400d30:	ff 25 ca 23 20 00    	jmpq   *0x2023ca(%rip)        # 603100 <__ctype_b_loc@GLIBC_2.3>
  400d36:	68 1d 00 00 00       	pushq  $0x1d
  400d3b:	e9 10 fe ff ff       	jmpq   400b50 <.plt>

0000000000400d40 <socket@plt>:
  400d40:	ff 25 c2 23 20 00    	jmpq   *0x2023c2(%rip)        # 603108 <socket@GLIBC_2.2.5>
  400d46:	68 1e 00 00 00       	pushq  $0x1e
  400d4b:	e9 00 fe ff ff       	jmpq   400b50 <.plt>

Disassembly of section .text:

0000000000400d50 <_start>:
  400d50:	31 ed                	xor    %ebp,%ebp
  400d52:	49 89 d1             	mov    %rdx,%r9
  400d55:	5e                   	pop    %rsi
  400d56:	48 89 e2             	mov    %rsp,%rdx
  400d59:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  400d5d:	50                   	push   %rax
  400d5e:	54                   	push   %rsp
  400d5f:	49 c7 c0 a0 1c 40 00 	mov    $0x401ca0,%r8
  400d66:	48 c7 c1 30 1c 40 00 	mov    $0x401c30,%rcx
  400d6d:	48 c7 c7 46 0e 40 00 	mov    $0x400e46,%rdi
  400d74:	ff 15 76 22 20 00    	callq  *0x202276(%rip)        # 602ff0 <__libc_start_main@GLIBC_2.2.5>
  400d7a:	f4                   	hlt    
  400d7b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000400d80 <deregister_tm_clones>:
  400d80:	b8 4f 35 60 00       	mov    $0x60354f,%eax
  400d85:	55                   	push   %rbp
  400d86:	48 2d 48 35 60 00    	sub    $0x603548,%rax
  400d8c:	48 83 f8 0e          	cmp    $0xe,%rax
  400d90:	48 89 e5             	mov    %rsp,%rbp
  400d93:	76 1b                	jbe    400db0 <deregister_tm_clones+0x30>
  400d95:	b8 00 00 00 00       	mov    $0x0,%eax
  400d9a:	48 85 c0             	test   %rax,%rax
  400d9d:	74 11                	je     400db0 <deregister_tm_clones+0x30>
  400d9f:	5d                   	pop    %rbp
  400da0:	bf 48 35 60 00       	mov    $0x603548,%edi
  400da5:	ff e0                	jmpq   *%rax
  400da7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  400dae:	00 00 
  400db0:	5d                   	pop    %rbp
  400db1:	c3                   	retq   
  400db2:	0f 1f 40 00          	nopl   0x0(%rax)
  400db6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  400dbd:	00 00 00 

0000000000400dc0 <register_tm_clones>:
  400dc0:	be 48 35 60 00       	mov    $0x603548,%esi
  400dc5:	55                   	push   %rbp
  400dc6:	48 81 ee 48 35 60 00 	sub    $0x603548,%rsi
  400dcd:	48 c1 fe 03          	sar    $0x3,%rsi
  400dd1:	48 89 e5             	mov    %rsp,%rbp
  400dd4:	48 89 f0             	mov    %rsi,%rax
  400dd7:	48 c1 e8 3f          	shr    $0x3f,%rax
  400ddb:	48 01 c6             	add    %rax,%rsi
  400dde:	48 d1 fe             	sar    %rsi
  400de1:	74 15                	je     400df8 <register_tm_clones+0x38>
  400de3:	b8 00 00 00 00       	mov    $0x0,%eax
  400de8:	48 85 c0             	test   %rax,%rax
  400deb:	74 0b                	je     400df8 <register_tm_clones+0x38>
  400ded:	5d                   	pop    %rbp
  400dee:	bf 48 35 60 00       	mov    $0x603548,%edi
  400df3:	ff e0                	jmpq   *%rax
  400df5:	0f 1f 00             	nopl   (%rax)
  400df8:	5d                   	pop    %rbp
  400df9:	c3                   	retq   
  400dfa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400e00 <__do_global_dtors_aux>:
  400e00:	80 3d 71 27 20 00 00 	cmpb   $0x0,0x202771(%rip)        # 603578 <completed.6972>
  400e07:	75 11                	jne    400e1a <__do_global_dtors_aux+0x1a>
  400e09:	55                   	push   %rbp
  400e0a:	48 89 e5             	mov    %rsp,%rbp
  400e0d:	e8 6e ff ff ff       	callq  400d80 <deregister_tm_clones>
  400e12:	5d                   	pop    %rbp
  400e13:	c6 05 5e 27 20 00 01 	movb   $0x1,0x20275e(%rip)        # 603578 <completed.6972>
  400e1a:	f3 c3                	repz retq 
  400e1c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400e20 <frame_dummy>:
  400e20:	bf 18 2e 60 00       	mov    $0x602e18,%edi
  400e25:	48 83 3f 00          	cmpq   $0x0,(%rdi)
  400e29:	75 05                	jne    400e30 <frame_dummy+0x10>
  400e2b:	eb 93                	jmp    400dc0 <register_tm_clones>
  400e2d:	0f 1f 00             	nopl   (%rax)
  400e30:	b8 00 00 00 00       	mov    $0x0,%eax
  400e35:	48 85 c0             	test   %rax,%rax
  400e38:	74 f1                	je     400e2b <frame_dummy+0xb>
  400e3a:	55                   	push   %rbp
  400e3b:	48 89 e5             	mov    %rsp,%rbp
  400e3e:	ff d0                	callq  *%rax
  400e40:	5d                   	pop    %rbp
  400e41:	e9 7a ff ff ff       	jmpq   400dc0 <register_tm_clones>

0000000000400e46 <main>:
  400e46:	53                   	push   %rbx
  400e47:	83 ff 01             	cmp    $0x1,%edi
  400e4a:	0f 84 9e 00 00 00    	je     400eee <main+0xa8>
  400e50:	48 89 f3             	mov    %rsi,%rbx
  400e53:	83 ff 02             	cmp    $0x2,%edi
  400e56:	0f 85 c2 00 00 00    	jne    400f1e <main+0xd8>
  400e5c:	48 8b 7e 08          	mov    0x8(%rsi),%rdi
  400e60:	48 8d 35 13 12 00 00 	lea    0x1213(%rip),%rsi        # 40207a <array.3074+0x25a>
  400e67:	e8 54 fe ff ff       	callq  400cc0 <fopen@plt>
  400e6c:	48 89 05 0d 27 20 00 	mov    %rax,0x20270d(%rip)        # 603580 <infile>
  400e73:	48 85 c0             	test   %rax,%rax
  400e76:	0f 84 85 00 00 00    	je     400f01 <main+0xbb>
  400e7c:	e8 93 04 00 00       	callq  401314 <initialize_bomb>
  400e81:	48 8d 3d 98 0e 00 00 	lea    0xe98(%rip),%rdi        # 401d20 <_IO_stdin_used+0x60>
  400e88:	e8 03 fd ff ff       	callq  400b90 <puts@plt>
  400e8d:	48 8d 3d cc 0e 00 00 	lea    0xecc(%rip),%rdi        # 401d60 <_IO_stdin_used+0xa0>
  400e94:	e8 f7 fc ff ff       	callq  400b90 <puts@plt>
  400e99:	e8 d1 0b 00 00       	callq  401a6f <read_line>
  400e9e:	48 89 c7             	mov    %rax,%rdi
  400ea1:	e8 96 00 00 00       	callq  400f3c <phase_1>
  400ea6:	e8 c5 0c 00 00       	callq  401b70 <phase_defused>
  400eab:	48 8d 3d de 0e 00 00 	lea    0xede(%rip),%rdi        # 401d90 <_IO_stdin_used+0xd0>
  400eb2:	e8 d9 fc ff ff       	callq  400b90 <puts@plt>
  400eb7:	e8 b3 0b 00 00       	callq  401a6f <read_line>
  400ebc:	48 89 c7             	mov    %rax,%rdi
  400ebf:	e8 98 00 00 00       	callq  400f5c <phase_2>
  400ec4:	e8 a7 0c 00 00       	callq  401b70 <phase_defused>
  400ec9:	48 8d 3d 2b 0e 00 00 	lea    0xe2b(%rip),%rdi        # 401cfb <_IO_stdin_used+0x3b>
  400ed0:	e8 bb fc ff ff       	callq  400b90 <puts@plt>
  400ed5:	e8 95 0b 00 00       	callq  401a6f <read_line>
  400eda:	48 89 c7             	mov    %rax,%rdi
  400edd:	e8 c5 00 00 00       	callq  400fa7 <phase_3>
  400ee2:	e8 89 0c 00 00       	callq  401b70 <phase_defused>
  400ee7:	b8 00 00 00 00       	mov    $0x0,%eax
  400eec:	5b                   	pop    %rbx
  400eed:	c3                   	retq   
  400eee:	48 8b 05 7b 26 20 00 	mov    0x20267b(%rip),%rax        # 603570 <stdin@@GLIBC_2.2.5>
  400ef5:	48 89 05 84 26 20 00 	mov    %rax,0x202684(%rip)        # 603580 <infile>
  400efc:	e9 7b ff ff ff       	jmpq   400e7c <main+0x36>
  400f01:	48 8b 53 08          	mov    0x8(%rbx),%rdx
  400f05:	48 8b 33             	mov    (%rbx),%rsi
  400f08:	48 8d 3d b5 0d 00 00 	lea    0xdb5(%rip),%rdi        # 401cc4 <_IO_stdin_used+0x4>
  400f0f:	e8 bc fc ff ff       	callq  400bd0 <printf@plt>
  400f14:	bf 08 00 00 00       	mov    $0x8,%edi
  400f19:	e8 d2 fd ff ff       	callq  400cf0 <exit@plt>
  400f1e:	48 8b 36             	mov    (%rsi),%rsi
  400f21:	48 8d 3d b9 0d 00 00 	lea    0xdb9(%rip),%rdi        # 401ce1 <_IO_stdin_used+0x21>
  400f28:	b8 00 00 00 00       	mov    $0x0,%eax
  400f2d:	e8 9e fc ff ff       	callq  400bd0 <printf@plt>
  400f32:	bf 08 00 00 00       	mov    $0x8,%edi
  400f37:	e8 b4 fd ff ff       	callq  400cf0 <exit@plt>

0000000000400f3c <phase_1>:
  400f3c:	48 83 ec 08          	sub    $0x8,%rsp
  400f40:	48 8d 35 79 0e 00 00 	lea    0xe79(%rip),%rsi        # 401dc0 <_IO_stdin_used+0x100>
  400f47:	e8 96 02 00 00       	callq  4011e2 <strings_not_equal>
  400f4c:	85 c0                	test   %eax,%eax
  400f4e:	75 05                	jne    400f55 <phase_1+0x19>
  400f50:	48 83 c4 08          	add    $0x8,%rsp
  400f54:	c3                   	retq   
  400f55:	e8 98 0a 00 00       	callq  4019f2 <explode_bomb>
  400f5a:	eb f4                	jmp    400f50 <phase_1+0x14>

0000000000400f5c <phase_2>:
  400f5c:	55                   	push   %rbp
  400f5d:	53                   	push   %rbx
  400f5e:	48 83 ec 28          	sub    $0x28,%rsp
  400f62:	48 89 e6             	mov    %rsp,%rsi
  400f65:	e8 c4 0a 00 00       	callq  401a2e <read_six_numbers>
  400f6a:	83 3c 24 01          	cmpl   $0x1,(%rsp)
  400f6e:	74 05                	je     400f75 <phase_2+0x19>
  400f70:	e8 7d 0a 00 00       	callq  4019f2 <explode_bomb>
  400f75:	48 89 e5             	mov    %rsp,%rbp
  400f78:	bb 01 00 00 00       	mov    $0x1,%ebx
  400f7d:	eb 09                	jmp    400f88 <phase_2+0x2c>
  400f7f:	48 83 c5 04          	add    $0x4,%rbp
  400f83:	83 fb 06             	cmp    $0x6,%ebx
  400f86:	74 18                	je     400fa0 <phase_2+0x44>
  400f88:	83 c3 01             	add    $0x1,%ebx
  400f8b:	89 d8                	mov    %ebx,%eax
  400f8d:	0f af 45 00          	imul   0x0(%rbp),%eax
  400f91:	83 e8 01             	sub    $0x1,%eax
  400f94:	39 45 04             	cmp    %eax,0x4(%rbp)
  400f97:	74 e6                	je     400f7f <phase_2+0x23>
  400f99:	e8 54 0a 00 00       	callq  4019f2 <explode_bomb>
  400f9e:	eb df                	jmp    400f7f <phase_2+0x23>
  400fa0:	48 83 c4 28          	add    $0x28,%rsp
  400fa4:	5b                   	pop    %rbx
  400fa5:	5d                   	pop    %rbp
  400fa6:	c3                   	retq   

0000000000400fa7 <phase_3>:
  400fa7:	48 83 ec 18          	sub    $0x18,%rsp
  400fab:	48 8d 4c 24 07       	lea    0x7(%rsp),%rcx           参数4
  400fb0:	48 8d 54 24 0c       	lea    0xc(%rsp),%rdx           参数3
  400fb5:	4c 8d 44 24 08       	lea    0x8(%rsp),%r8            参数5
  400fba:	48 8d 35 29 0e 00 00 	lea    0xe29(%rip),%rsi        # 401dea <_IO_stdin_used+0x12a>

  %d %c %d

  sscanf(输入的字符串, "%d %c %d", 0xc, 0x7, 0x8)


  400fc1:	b8 00 00 00 00       	mov    $0x0,%eax
  400fc6:	e8 c5 fc ff ff       	callq  400c90 <__isoc99_sscanf@plt>
  400fcb:	83 f8 02             	cmp    $0x2,%eax
  400fce:	7e 1f                	jle    400fef <phase_3+0x48>

  <=2: bomb

  400fd0:	83 7c 24 0c 07       	cmpl   $0x7,0xc(%rsp)
  400fd5:	0f 87 05 01 00 00    	ja     4010e0 <phase_3+0x139>

  400fdb:	8b 44 24 0c          	mov    0xc(%rsp),%eax

  400fdf:	48 8d 15 1a 0e 00 00 	lea    0xe1a(%rip),%rdx        # 401e00 <_IO_stdin_used+0x140>

0x401e00 -> %rdx


  400fe6:	48 63 04 82          	movslq (%rdx,%rax,4),%rax

0x401e1c: -56


  400fea:	48 01 d0             	add    %rdx,%rax

401dc8


  400fed:	ff e0                	jmpq   *%rax
  400fef:	e8 fe 09 00 00       	callq  4019f2 <explode_bomb>
  400ff4:	eb da                	jmp    400fd0 <phase_3+0x29>
  400ff6:	b8 63 00 00 00       	mov    $0x63,%eax
  400ffb:	81 7c 24 08 57 02 00 	cmpl   $0x257,0x8(%rsp)
  401002:	00 
  401003:	0f 84 e1 00 00 00    	je     4010ea <phase_3+0x143>
  401009:	e8 e4 09 00 00       	callq  4019f2 <explode_bomb>
  40100e:	b8 63 00 00 00       	mov    $0x63,%eax
  401013:	e9 d2 00 00 00       	jmpq   4010ea <phase_3+0x143>
  401018:	b8 77 00 00 00       	mov    $0x77,%eax
  40101d:	81 7c 24 08 0c 03 00 	cmpl   $0x30c,0x8(%rsp)
  401024:	00 
  401025:	0f 84 bf 00 00 00    	je     4010ea <phase_3+0x143>
  40102b:	e8 c2 09 00 00       	callq  4019f2 <explode_bomb>
  401030:	b8 77 00 00 00       	mov    $0x77,%eax
  401035:	e9 b0 00 00 00       	jmpq   4010ea <phase_3+0x143>
  40103a:	b8 72 00 00 00       	mov    $0x72,%eax
  40103f:	81 7c 24 08 2f 02 00 	cmpl   $0x22f,0x8(%rsp)
  401046:	00 
  401047:	0f 84 9d 00 00 00    	je     4010ea <phase_3+0x143>
  40104d:	e8 a0 09 00 00       	callq  4019f2 <explode_bomb>
  401052:	b8 72 00 00 00       	mov    $0x72,%eax
  401057:	e9 8e 00 00 00       	jmpq   4010ea <phase_3+0x143>
  40105c:	b8 79 00 00 00       	mov    $0x79,%eax
  401061:	81 7c 24 08 ff 01 00 	cmpl   $0x1ff,0x8(%rsp)
  401068:	00 
  401069:	74 7f                	je     4010ea <phase_3+0x143>
  40106b:	e8 82 09 00 00       	callq  4019f2 <explode_bomb>
  401070:	b8 79 00 00 00       	mov    $0x79,%eax
  401075:	eb 73                	jmp    4010ea <phase_3+0x143>
  401077:	b8 6e 00 00 00       	mov    $0x6e,%eax
  40107c:	81 7c 24 08 a2 02 00 	cmpl   $0x2a2,0x8(%rsp)
  401083:	00 
  401084:	74 64                	je     4010ea <phase_3+0x143>
  401086:	e8 67 09 00 00       	callq  4019f2 <explode_bomb>
  40108b:	b8 6e 00 00 00       	mov    $0x6e,%eax
  401090:	eb 58                	jmp    4010ea <phase_3+0x143>
  401092:	b8 79 00 00 00       	mov    $0x79,%eax
  401097:	81 7c 24 08 3f 02 00 	cmpl   $0x23f,0x8(%rsp)
  40109e:	00 
  40109f:	74 49                	je     4010ea <phase_3+0x143>
  4010a1:	e8 4c 09 00 00       	callq  4019f2 <explode_bomb>
  4010a6:	b8 79 00 00 00       	mov    $0x79,%eax
  4010ab:	eb 3d                	jmp    4010ea <phase_3+0x143>
  4010ad:	b8 6d 00 00 00       	mov    $0x6d,%eax
  4010b2:	81 7c 24 08 7c 02 00 	cmpl   $0x27c,0x8(%rsp)
  4010b9:	00 
  4010ba:	74 2e                	je     4010ea <phase_3+0x143>
  4010bc:	e8 31 09 00 00       	callq  4019f2 <explode_bomb>
  4010c1:	b8 6d 00 00 00       	mov    $0x6d,%eax
  4010c6:	eb 22                	jmp    4010ea <phase_3+0x143>

  
  4010c8:	b8 67 00 00 00       	mov    $0x67,%eax
  4010cd:	83 7c 24 08 4d       	cmpl   $0x4d,0x8(%rsp)
  4010d2:	74 16                	je     4010ea <phase_3+0x143>
  4010d4:	e8 19 09 00 00       	callq  4019f2 <explode_bomb>
  4010d9:	b8 67 00 00 00       	mov    $0x67,%eax
  4010de:	eb 0a                	jmp    4010ea <phase_3+0x143>
  4010e0:	e8 0d 09 00 00       	callq  4019f2 <explode_bomb>
  4010e5:	b8 77 00 00 00       	mov    $0x77,%eax
  4010ea:	3a 44 24 07          	cmp    0x7(%rsp),%al
  4010ee:	74 05                	je     4010f5 <phase_3+0x14e>
  4010f0:	e8 fd 08 00 00       	callq  4019f2 <explode_bomb>
  4010f5:	48 83 c4 18          	add    $0x18,%rsp
  4010f9:	c3                   	retq   

00000000004010fa <secret_phase>:
  4010fa:	53                   	push   %rbx
  4010fb:	e8 6f 09 00 00       	callq  401a6f <read_line>
  401100:	48 89 c3             	mov    %rax,%rbx
  401103:	48 89 c7             	mov    %rax,%rdi
  401106:	e8 b9 00 00 00       	callq  4011c4 <string_length>
  40110b:	83 f8 06             	cmp    $0x6,%eax
  40110e:	74 05                	je     401115 <secret_phase+0x1b>
  401110:	e8 dd 08 00 00       	callq  4019f2 <explode_bomb>
  401115:	48 89 da             	mov    %rbx,%rdx
  401118:	48 8d 43 06          	lea    0x6(%rbx),%rax
  40111c:	be 00 00 00 00       	mov    $0x0,%esi
  401121:	48 8d 3d f8 0c 00 00 	lea    0xcf8(%rip),%rdi        # 401e20 <array.3074>
  401128:	0f b6 0a             	movzbl (%rdx),%ecx
  40112b:	83 e1 0f             	and    $0xf,%ecx
  40112e:	03 34 8f             	add    (%rdi,%rcx,4),%esi
  401131:	48 83 c2 01          	add    $0x1,%rdx
  401135:	48 39 c2             	cmp    %rax,%rdx
  401138:	75 ee                	jne    401128 <secret_phase+0x2e>
  40113a:	83 fe 45             	cmp    $0x45,%esi
  40113d:	74 05                	je     401144 <secret_phase+0x4a>
  40113f:	e8 ae 08 00 00       	callq  4019f2 <explode_bomb>
  401144:	e8 27 0a 00 00       	callq  401b70 <phase_defused>
  401149:	5b                   	pop    %rbx
  40114a:	c3                   	retq   

000000000040114b <sig_handler>:
  40114b:	48 83 ec 08          	sub    $0x8,%rsp
  40114f:	48 8d 3d 0a 0d 00 00 	lea    0xd0a(%rip),%rdi        # 401e60 <array.3074+0x40>
  401156:	e8 35 fa ff ff       	callq  400b90 <puts@plt>
  40115b:	bf 03 00 00 00       	mov    $0x3,%edi
  401160:	e8 bb fb ff ff       	callq  400d20 <sleep@plt>
  401165:	48 8d 3d 2c 0e 00 00 	lea    0xe2c(%rip),%rdi        # 401f98 <array.3074+0x178>
  40116c:	b8 00 00 00 00       	mov    $0x0,%eax
  401171:	e8 5a fa ff ff       	callq  400bd0 <printf@plt>
  401176:	48 8b 3d e3 23 20 00 	mov    0x2023e3(%rip),%rdi        # 603560 <stdout@@GLIBC_2.2.5>
  40117d:	e8 fe fa ff ff       	callq  400c80 <fflush@plt>
  401182:	bf 01 00 00 00       	mov    $0x1,%edi
  401187:	e8 94 fb ff ff       	callq  400d20 <sleep@plt>
  40118c:	48 8d 3d 0d 0e 00 00 	lea    0xe0d(%rip),%rdi        # 401fa0 <array.3074+0x180>
  401193:	e8 f8 f9 ff ff       	callq  400b90 <puts@plt>
  401198:	bf 10 00 00 00       	mov    $0x10,%edi
  40119d:	e8 4e fb ff ff       	callq  400cf0 <exit@plt>

00000000004011a2 <invalid_phase>:
  4011a2:	48 83 ec 08          	sub    $0x8,%rsp
  4011a6:	48 89 fe             	mov    %rdi,%rsi
  4011a9:	48 8d 3d f8 0d 00 00 	lea    0xdf8(%rip),%rdi        # 401fa8 <array.3074+0x188>
  4011b0:	b8 00 00 00 00       	mov    $0x0,%eax
  4011b5:	e8 16 fa ff ff       	callq  400bd0 <printf@plt>
  4011ba:	bf 08 00 00 00       	mov    $0x8,%edi
  4011bf:	e8 2c fb ff ff       	callq  400cf0 <exit@plt>

00000000004011c4 <string_length>:
  4011c4:	80 3f 00             	cmpb   $0x0,(%rdi)
  4011c7:	74 13                	je     4011dc <string_length+0x18>
  4011c9:	b8 00 00 00 00       	mov    $0x0,%eax
  4011ce:	48 83 c7 01          	add    $0x1,%rdi
  4011d2:	83 c0 01             	add    $0x1,%eax
  4011d5:	80 3f 00             	cmpb   $0x0,(%rdi)
  4011d8:	75 f4                	jne    4011ce <string_length+0xa>
  4011da:	f3 c3                	repz retq 
  4011dc:	b8 00 00 00 00       	mov    $0x0,%eax
  4011e1:	c3                   	retq   

00000000004011e2 <strings_not_equal>:
  4011e2:	41 54                	push   %r12
  4011e4:	55                   	push   %rbp
  4011e5:	53                   	push   %rbx
  4011e6:	48 89 fb             	mov    %rdi,%rbx
  4011e9:	48 89 f5             	mov    %rsi,%rbp
  4011ec:	e8 d3 ff ff ff       	callq  4011c4 <string_length>
  4011f1:	41 89 c4             	mov    %eax,%r12d
  4011f4:	48 89 ef             	mov    %rbp,%rdi
  4011f7:	e8 c8 ff ff ff       	callq  4011c4 <string_length>
  4011fc:	ba 01 00 00 00       	mov    $0x1,%edx
  401201:	41 39 c4             	cmp    %eax,%r12d
  401204:	74 07                	je     40120d <strings_not_equal+0x2b>
  401206:	89 d0                	mov    %edx,%eax
  401208:	5b                   	pop    %rbx
  401209:	5d                   	pop    %rbp
  40120a:	41 5c                	pop    %r12
  40120c:	c3                   	retq   
  40120d:	0f b6 03             	movzbl (%rbx),%eax
  401210:	84 c0                	test   %al,%al
  401212:	74 27                	je     40123b <strings_not_equal+0x59>
  401214:	3a 45 00             	cmp    0x0(%rbp),%al
  401217:	75 29                	jne    401242 <strings_not_equal+0x60>
  401219:	48 83 c3 01          	add    $0x1,%rbx
  40121d:	48 83 c5 01          	add    $0x1,%rbp
  401221:	0f b6 03             	movzbl (%rbx),%eax
  401224:	84 c0                	test   %al,%al
  401226:	74 0c                	je     401234 <strings_not_equal+0x52>
  401228:	3a 45 00             	cmp    0x0(%rbp),%al
  40122b:	74 ec                	je     401219 <strings_not_equal+0x37>
  40122d:	ba 01 00 00 00       	mov    $0x1,%edx
  401232:	eb d2                	jmp    401206 <strings_not_equal+0x24>
  401234:	ba 00 00 00 00       	mov    $0x0,%edx
  401239:	eb cb                	jmp    401206 <strings_not_equal+0x24>
  40123b:	ba 00 00 00 00       	mov    $0x0,%edx
  401240:	eb c4                	jmp    401206 <strings_not_equal+0x24>
  401242:	ba 01 00 00 00       	mov    $0x1,%edx
  401247:	eb bd                	jmp    401206 <strings_not_equal+0x24>

0000000000401249 <open_clientfd>:
  401249:	41 54                	push   %r12
  40124b:	55                   	push   %rbp
  40124c:	53                   	push   %rbx
  40124d:	48 83 ec 10          	sub    $0x10,%rsp
  401251:	49 89 fc             	mov    %rdi,%r12
  401254:	89 f3                	mov    %esi,%ebx
  401256:	ba 00 00 00 00       	mov    $0x0,%edx
  40125b:	be 01 00 00 00       	mov    $0x1,%esi
  401260:	bf 02 00 00 00       	mov    $0x2,%edi
  401265:	e8 d6 fa ff ff       	callq  400d40 <socket@plt>
  40126a:	85 c0                	test   %eax,%eax
  40126c:	78 64                	js     4012d2 <open_clientfd+0x89>
  40126e:	89 c5                	mov    %eax,%ebp
  401270:	4c 89 e7             	mov    %r12,%rdi
  401273:	e8 d8 f9 ff ff       	callq  400c50 <gethostbyname@plt>
  401278:	48 85 c0             	test   %rax,%rax
  40127b:	74 6b                	je     4012e8 <open_clientfd+0x9f>
  40127d:	48 c7 04 24 00 00 00 	movq   $0x0,(%rsp)
  401284:	00 
  401285:	48 c7 44 24 08 00 00 	movq   $0x0,0x8(%rsp)
  40128c:	00 00 
  40128e:	66 c7 04 24 02 00    	movw   $0x2,(%rsp)
  401294:	48 63 50 14          	movslq 0x14(%rax),%rdx
  401298:	48 8d 74 24 04       	lea    0x4(%rsp),%rsi
  40129d:	48 8b 40 18          	mov    0x18(%rax),%rax
  4012a1:	48 8b 38             	mov    (%rax),%rdi
  4012a4:	e8 f7 f9 ff ff       	callq  400ca0 <bcopy@plt>
  4012a9:	89 de                	mov    %ebx,%esi
  4012ab:	66 c1 ce 08          	ror    $0x8,%si
  4012af:	66 89 74 24 02       	mov    %si,0x2(%rsp)
  4012b4:	ba 10 00 00 00       	mov    $0x10,%edx
  4012b9:	48 89 e6             	mov    %rsp,%rsi
  4012bc:	89 ef                	mov    %ebp,%edi
  4012be:	e8 3d fa ff ff       	callq  400d00 <connect@plt>
  4012c3:	85 c0                	test   %eax,%eax
  4012c5:	78 37                	js     4012fe <open_clientfd+0xb5>
  4012c7:	89 e8                	mov    %ebp,%eax
  4012c9:	48 83 c4 10          	add    $0x10,%rsp
  4012cd:	5b                   	pop    %rbx
  4012ce:	5d                   	pop    %rbp
  4012cf:	41 5c                	pop    %r12
  4012d1:	c3                   	retq   
  4012d2:	48 8d 3d e0 0c 00 00 	lea    0xce0(%rip),%rdi        # 401fb9 <array.3074+0x199>
  4012d9:	e8 b2 f8 ff ff       	callq  400b90 <puts@plt>
  4012de:	bf 08 00 00 00       	mov    $0x8,%edi
  4012e3:	e8 08 fa ff ff       	callq  400cf0 <exit@plt>
  4012e8:	48 8d 3d d8 0c 00 00 	lea    0xcd8(%rip),%rdi        # 401fc7 <array.3074+0x1a7>
  4012ef:	e8 9c f8 ff ff       	callq  400b90 <puts@plt>
  4012f4:	bf 08 00 00 00       	mov    $0x8,%edi
  4012f9:	e8 f2 f9 ff ff       	callq  400cf0 <exit@plt>
  4012fe:	48 8d 3d d0 0c 00 00 	lea    0xcd0(%rip),%rdi        # 401fd5 <array.3074+0x1b5>
  401305:	e8 86 f8 ff ff       	callq  400b90 <puts@plt>
  40130a:	bf 08 00 00 00       	mov    $0x8,%edi
  40130f:	e8 dc f9 ff ff       	callq  400cf0 <exit@plt>

0000000000401314 <initialize_bomb>:
  401314:	48 83 ec 08          	sub    $0x8,%rsp
  401318:	48 8d 35 2c fe ff ff 	lea    -0x1d4(%rip),%rsi        # 40114b <sig_handler>
  40131f:	bf 02 00 00 00       	mov    $0x2,%edi
  401324:	e8 17 f9 ff ff       	callq  400c40 <signal@plt>
  401329:	be 50 00 00 00       	mov    $0x50,%esi
  40132e:	48 8d 3d ae 0c 00 00 	lea    0xcae(%rip),%rdi        # 401fe3 <array.3074+0x1c3>
  401335:	e8 0f ff ff ff       	callq  401249 <open_clientfd>
  40133a:	89 c7                	mov    %eax,%edi
  40133c:	e8 bf f8 ff ff       	callq  400c00 <close@plt>
  401341:	48 83 c4 08          	add    $0x8,%rsp
  401345:	c3                   	retq   

0000000000401346 <blank_line>:
  401346:	55                   	push   %rbp
  401347:	53                   	push   %rbx
  401348:	48 83 ec 08          	sub    $0x8,%rsp
  40134c:	48 89 fd             	mov    %rdi,%rbp
  40134f:	0f b6 5d 00          	movzbl 0x0(%rbp),%ebx
  401353:	84 db                	test   %bl,%bl
  401355:	74 1e                	je     401375 <blank_line+0x2f>
  401357:	e8 d4 f9 ff ff       	callq  400d30 <__ctype_b_loc@plt>
  40135c:	48 83 c5 01          	add    $0x1,%rbp
  401360:	48 0f be db          	movsbq %bl,%rbx
  401364:	48 8b 00             	mov    (%rax),%rax
  401367:	f6 44 58 01 20       	testb  $0x20,0x1(%rax,%rbx,2)
  40136c:	75 e1                	jne    40134f <blank_line+0x9>
  40136e:	b8 00 00 00 00       	mov    $0x0,%eax
  401373:	eb 05                	jmp    40137a <blank_line+0x34>
  401375:	b8 01 00 00 00       	mov    $0x1,%eax
  40137a:	48 83 c4 08          	add    $0x8,%rsp
  40137e:	5b                   	pop    %rbx
  40137f:	5d                   	pop    %rbp
  401380:	c3                   	retq   

0000000000401381 <skip>:
  401381:	55                   	push   %rbp
  401382:	53                   	push   %rbx
  401383:	48 83 ec 08          	sub    $0x8,%rsp
  401387:	48 8d 2d 12 22 20 00 	lea    0x202212(%rip),%rbp        # 6035a0 <input_strings>
  40138e:	48 63 05 e7 21 20 00 	movslq 0x2021e7(%rip),%rax        # 60357c <num_input_strings>
  401395:	48 8d 3c 80          	lea    (%rax,%rax,4),%rdi
  401399:	48 c1 e7 04          	shl    $0x4,%rdi
  40139d:	48 01 ef             	add    %rbp,%rdi
  4013a0:	48 8b 15 d9 21 20 00 	mov    0x2021d9(%rip),%rdx        # 603580 <infile>
  4013a7:	be 50 00 00 00       	mov    $0x50,%esi
  4013ac:	e8 6f f8 ff ff       	callq  400c20 <fgets@plt>
  4013b1:	48 89 c3             	mov    %rax,%rbx
  4013b4:	48 85 c0             	test   %rax,%rax
  4013b7:	74 0c                	je     4013c5 <skip+0x44>
  4013b9:	48 89 c7             	mov    %rax,%rdi
  4013bc:	e8 85 ff ff ff       	callq  401346 <blank_line>
  4013c1:	85 c0                	test   %eax,%eax
  4013c3:	75 c9                	jne    40138e <skip+0xd>
  4013c5:	48 89 d8             	mov    %rbx,%rax
  4013c8:	48 83 c4 08          	add    $0x8,%rsp
  4013cc:	5b                   	pop    %rbx
  4013cd:	5d                   	pop    %rbp
  4013ce:	c3                   	retq   

00000000004013cf <writen>:
  4013cf:	41 56                	push   %r14
  4013d1:	41 55                	push   %r13
  4013d3:	41 54                	push   %r12
  4013d5:	55                   	push   %rbp
  4013d6:	53                   	push   %rbx
  4013d7:	49 89 d5             	mov    %rdx,%r13
  4013da:	48 85 d2             	test   %rdx,%rdx
  4013dd:	74 3b                	je     40141a <writen+0x4b>
  4013df:	41 89 fc             	mov    %edi,%r12d
  4013e2:	48 89 f5             	mov    %rsi,%rbp
  4013e5:	48 89 d3             	mov    %rdx,%rbx
  4013e8:	41 be 00 00 00 00    	mov    $0x0,%r14d
  4013ee:	eb 08                	jmp    4013f8 <writen+0x29>
  4013f0:	48 01 c5             	add    %rax,%rbp
  4013f3:	48 29 c3             	sub    %rax,%rbx
  4013f6:	74 22                	je     40141a <writen+0x4b>
  4013f8:	48 89 da             	mov    %rbx,%rdx
  4013fb:	48 89 ee             	mov    %rbp,%rsi
  4013fe:	44 89 e7             	mov    %r12d,%edi
  401401:	e8 9a f7 ff ff       	callq  400ba0 <write@plt>
  401406:	48 85 c0             	test   %rax,%rax
  401409:	7f e5                	jg     4013f0 <writen+0x21>
  40140b:	e8 60 f7 ff ff       	callq  400b70 <__errno_location@plt>
  401410:	83 38 04             	cmpl   $0x4,(%rax)
  401413:	75 11                	jne    401426 <writen+0x57>
  401415:	4c 89 f0             	mov    %r14,%rax
  401418:	eb d6                	jmp    4013f0 <writen+0x21>
  40141a:	4c 89 e8             	mov    %r13,%rax
  40141d:	5b                   	pop    %rbx
  40141e:	5d                   	pop    %rbp
  40141f:	41 5c                	pop    %r12
  401421:	41 5d                	pop    %r13
  401423:	41 5e                	pop    %r14
  401425:	c3                   	retq   
  401426:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  40142d:	eb ee                	jmp    40141d <writen+0x4e>

000000000040142f <send_msg>:
  40142f:	41 57                	push   %r15
  401431:	41 56                	push   %r14
  401433:	41 55                	push   %r13
  401435:	41 54                	push   %r12
  401437:	55                   	push   %rbp
  401438:	53                   	push   %rbx
  401439:	48 81 ec 68 24 00 00 	sub    $0x2468,%rsp
  401440:	41 89 fc             	mov    %edi,%r12d
  401443:	ba 00 00 00 00       	mov    $0x0,%edx
  401448:	be 01 00 00 00       	mov    $0x1,%esi
  40144d:	bf 02 00 00 00       	mov    $0x2,%edi
  401452:	e8 e9 f8 ff ff       	callq  400d40 <socket@plt>
  401457:	41 89 c7             	mov    %eax,%r15d
  40145a:	85 c0                	test   %eax,%eax
  40145c:	0f 88 2a 02 00 00    	js     40168c <send_msg+0x25d>
  401462:	48 c7 84 24 50 24 00 	movq   $0x0,0x2450(%rsp)
  401469:	00 00 00 00 00 
  40146e:	48 c7 84 24 58 24 00 	movq   $0x0,0x2458(%rsp)
  401475:	00 00 00 00 00 
  40147a:	66 c7 84 24 50 24 00 	movw   $0x2,0x2450(%rsp)
  401481:	00 02 00 
  401484:	66 c7 84 24 52 24 00 	movw   $0x62cc,0x2452(%rsp)
  40148b:	00 cc 62 
  40148e:	48 8d 94 24 54 24 00 	lea    0x2454(%rsp),%rdx
  401495:	00 
  401496:	48 8d 35 46 0b 00 00 	lea    0xb46(%rip),%rsi        # 401fe3 <array.3074+0x1c3>
  40149d:	bf 02 00 00 00       	mov    $0x2,%edi
  4014a2:	b8 00 00 00 00       	mov    $0x0,%eax
  4014a7:	e8 c4 f7 ff ff       	callq  400c70 <inet_pton@plt>
  4014ac:	85 c0                	test   %eax,%eax
  4014ae:	0f 88 09 02 00 00    	js     4016bd <send_msg+0x28e>
  4014b4:	48 8d b4 24 50 24 00 	lea    0x2450(%rsp),%rsi
  4014bb:	00 
  4014bc:	ba 10 00 00 00       	mov    $0x10,%edx
  4014c1:	44 89 ff             	mov    %r15d,%edi
  4014c4:	e8 37 f8 ff ff       	callq  400d00 <connect@plt>
  4014c9:	85 c0                	test   %eax,%eax
  4014cb:	0f 88 22 02 00 00    	js     4016f3 <send_msg+0x2c4>
  4014d1:	48 8d 6c 24 50       	lea    0x50(%rsp),%rbp
  4014d6:	48 b8 53 75 62 6a 65 	movabs $0x3a7463656a627553,%rax
  4014dd:	63 74 3a 
  4014e0:	48 89 44 24 50       	mov    %rax,0x50(%rsp)
  4014e5:	48 b8 20 42 6f 6d 62 	movabs $0x6f6e20626d6f4220,%rax
  4014ec:	20 6e 6f 
  4014ef:	48 89 44 24 58       	mov    %rax,0x58(%rsp)
  4014f4:	48 b8 74 69 66 69 63 	movabs $0x6974616369666974,%rax
  4014fb:	61 74 69 
  4014fe:	48 89 44 24 60       	mov    %rax,0x60(%rsp)
  401503:	c7 44 24 68 6f 6e 0a 	movl   $0xa6e6f,0x68(%rsp)
  40150a:	00 
  40150b:	48 8d 9c 24 50 04 00 	lea    0x450(%rsp),%rbx
  401512:	00 
  401513:	48 89 ee             	mov    %rbp,%rsi
  401516:	48 89 df             	mov    %rbx,%rdi
  401519:	e8 b2 f7 ff ff       	callq  400cd0 <strcat@plt>
  40151e:	66 c7 44 24 50 0a 00 	movw   $0xa,0x50(%rsp)
  401525:	48 89 ee             	mov    %rbp,%rsi
  401528:	48 89 df             	mov    %rbx,%rdi
  40152b:	e8 a0 f7 ff ff       	callq  400cd0 <strcat@plt>
  401530:	bf 00 00 00 00       	mov    $0x0,%edi
  401535:	e8 76 f7 ff ff       	callq  400cb0 <cuserid@plt>
  40153a:	48 85 c0             	test   %rax,%rax
  40153d:	0f 84 e6 01 00 00    	je     401729 <send_msg+0x2fa>
  401543:	48 89 e7             	mov    %rsp,%rdi
  401546:	48 89 c6             	mov    %rax,%rsi
  401549:	e8 32 f6 ff ff       	callq  400b80 <strcpy@plt>
  40154e:	45 85 e4             	test   %r12d,%r12d
  401551:	48 8d 05 a1 0a 00 00 	lea    0xaa1(%rip),%rax        # 401ff9 <array.3074+0x1d9>
  401558:	4c 8d 0d 92 0a 00 00 	lea    0xa92(%rip),%r9        # 401ff1 <array.3074+0x1d1>
  40155f:	4c 0f 44 c8          	cmove  %rax,%r9
  401563:	48 8d 5c 24 50       	lea    0x50(%rsp),%rbx
  401568:	48 83 ec 08          	sub    $0x8,%rsp
  40156c:	8b 05 0a 20 20 00    	mov    0x20200a(%rip),%eax        # 60357c <num_input_strings>
  401572:	50                   	push   %rax
  401573:	4c 8d 44 24 10       	lea    0x10(%rsp),%r8
  401578:	8b 0d c2 1f 20 00    	mov    0x201fc2(%rip),%ecx        # 603540 <bomb_id>
  40157e:	48 8d 15 bb 1b 20 00 	lea    0x201bbb(%rip),%rdx        # 603140 <lab_id>
  401585:	48 8d 35 91 0a 00 00 	lea    0xa91(%rip),%rsi        # 40201d <array.3074+0x1fd>
  40158c:	48 89 df             	mov    %rbx,%rdi
  40158f:	b8 00 00 00 00       	mov    $0x0,%eax
  401594:	e8 47 f7 ff ff       	callq  400ce0 <sprintf@plt>
  401599:	48 8d bc 24 60 04 00 	lea    0x460(%rsp),%rdi
  4015a0:	00 
  4015a1:	48 89 de             	mov    %rbx,%rsi
  4015a4:	e8 27 f7 ff ff       	callq  400cd0 <strcat@plt>
  4015a9:	48 83 c4 10          	add    $0x10,%rsp
  4015ad:	83 3d c8 1f 20 00 00 	cmpl   $0x0,0x201fc8(%rip)        # 60357c <num_input_strings>
  4015b4:	7e 70                	jle    401626 <send_msg+0x1f7>
  4015b6:	bb 00 00 00 00       	mov    $0x0,%ebx
  4015bb:	4c 8d 35 de 1f 20 00 	lea    0x201fde(%rip),%r14        # 6035a0 <input_strings>
  4015c2:	49 89 e5             	mov    %rsp,%r13
  4015c5:	48 8d 6c 24 50       	lea    0x50(%rsp),%rbp
  4015ca:	4c 8d a4 24 50 04 00 	lea    0x450(%rsp),%r12
  4015d1:	00 
  4015d2:	48 63 c3             	movslq %ebx,%rax
  4015d5:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
  4015d9:	48 c1 e0 04          	shl    $0x4,%rax
  4015dd:	4c 01 f0             	add    %r14,%rax
  4015e0:	83 c3 01             	add    $0x1,%ebx
  4015e3:	48 83 ec 08          	sub    $0x8,%rsp
  4015e7:	50                   	push   %rax
  4015e8:	41 89 d9             	mov    %ebx,%r9d
  4015eb:	4d 89 e8             	mov    %r13,%r8
  4015ee:	8b 0d 4c 1f 20 00    	mov    0x201f4c(%rip),%ecx        # 603540 <bomb_id>
  4015f4:	48 8d 15 45 1b 20 00 	lea    0x201b45(%rip),%rdx        # 603140 <lab_id>
  4015fb:	48 8d 35 37 0a 00 00 	lea    0xa37(%rip),%rsi        # 402039 <array.3074+0x219>
  401602:	48 89 ef             	mov    %rbp,%rdi
  401605:	b8 00 00 00 00       	mov    $0x0,%eax
  40160a:	e8 d1 f6 ff ff       	callq  400ce0 <sprintf@plt>
  40160f:	48 89 ee             	mov    %rbp,%rsi
  401612:	4c 89 e7             	mov    %r12,%rdi
  401615:	e8 b6 f6 ff ff       	callq  400cd0 <strcat@plt>
  40161a:	48 83 c4 10          	add    $0x10,%rsp
  40161e:	39 1d 58 1f 20 00    	cmp    %ebx,0x201f58(%rip)        # 60357c <num_input_strings>
  401624:	7f ac                	jg     4015d2 <send_msg+0x1a3>
  401626:	48 8d ac 24 50 04 00 	lea    0x450(%rsp),%rbp
  40162d:	00 
  40162e:	49 c7 c4 ff ff ff ff 	mov    $0xffffffffffffffff,%r12
  401635:	bb 00 00 00 00       	mov    $0x0,%ebx
  40163a:	4c 89 e1             	mov    %r12,%rcx
  40163d:	48 89 ef             	mov    %rbp,%rdi
  401640:	89 d8                	mov    %ebx,%eax
  401642:	f2 ae                	repnz scas %es:(%rdi),%al
  401644:	48 f7 d1             	not    %rcx
  401647:	4a 8d 14 21          	lea    (%rcx,%r12,1),%rdx
  40164b:	48 89 ee             	mov    %rbp,%rsi
  40164e:	44 89 ff             	mov    %r15d,%edi
  401651:	e8 79 fd ff ff       	callq  4013cf <writen>
  401656:	48 89 c2             	mov    %rax,%rdx
  401659:	4c 89 e1             	mov    %r12,%rcx
  40165c:	48 89 ef             	mov    %rbp,%rdi
  40165f:	89 d8                	mov    %ebx,%eax
  401661:	f2 ae                	repnz scas %es:(%rdi),%al
  401663:	48 f7 d1             	not    %rcx
  401666:	4c 01 e1             	add    %r12,%rcx
  401669:	48 39 ca             	cmp    %rcx,%rdx
  40166c:	0f 82 cf 00 00 00    	jb     401741 <send_msg+0x312>
  401672:	44 89 ff             	mov    %r15d,%edi
  401675:	e8 86 f5 ff ff       	callq  400c00 <close@plt>
  40167a:	48 81 c4 68 24 00 00 	add    $0x2468,%rsp
  401681:	5b                   	pop    %rbx
  401682:	5d                   	pop    %rbp
  401683:	41 5c                	pop    %r12
  401685:	41 5d                	pop    %r13
  401687:	41 5e                	pop    %r14
  401689:	41 5f                	pop    %r15
  40168b:	c3                   	retq   
  40168c:	48 8d 15 6f 09 00 00 	lea    0x96f(%rip),%rdx        # 402002 <array.3074+0x1e2>
  401693:	48 8d 35 43 06 00 00 	lea    0x643(%rip),%rsi        # 401cdd <_IO_stdin_used+0x1d>
  40169a:	48 8b 3d bf 1e 20 00 	mov    0x201ebf(%rip),%rdi        # 603560 <stdout@@GLIBC_2.2.5>
  4016a1:	b8 00 00 00 00       	mov    $0x0,%eax
  4016a6:	e8 b5 f5 ff ff       	callq  400c60 <fprintf@plt>
  4016ab:	44 89 ff             	mov    %r15d,%edi
  4016ae:	e8 4d f5 ff ff       	callq  400c00 <close@plt>
  4016b3:	bf 01 00 00 00       	mov    $0x1,%edi
  4016b8:	e8 33 f6 ff ff       	callq  400cf0 <exit@plt>
  4016bd:	48 8d 15 b2 09 00 00 	lea    0x9b2(%rip),%rdx        # 402076 <array.3074+0x256>
  4016c4:	48 8d 35 12 06 00 00 	lea    0x612(%rip),%rsi        # 401cdd <_IO_stdin_used+0x1d>
  4016cb:	48 8b 3d 8e 1e 20 00 	mov    0x201e8e(%rip),%rdi        # 603560 <stdout@@GLIBC_2.2.5>
  4016d2:	b8 00 00 00 00       	mov    $0x0,%eax
  4016d7:	e8 84 f5 ff ff       	callq  400c60 <fprintf@plt>
  4016dc:	45 85 ff             	test   %r15d,%r15d
  4016df:	74 08                	je     4016e9 <send_msg+0x2ba>
  4016e1:	44 89 ff             	mov    %r15d,%edi
  4016e4:	e8 17 f5 ff ff       	callq  400c00 <close@plt>
  4016e9:	bf 01 00 00 00       	mov    $0x1,%edi
  4016ee:	e8 fd f5 ff ff       	callq  400cf0 <exit@plt>
  4016f3:	48 8d 15 15 09 00 00 	lea    0x915(%rip),%rdx        # 40200f <array.3074+0x1ef>
  4016fa:	48 8d 35 dc 05 00 00 	lea    0x5dc(%rip),%rsi        # 401cdd <_IO_stdin_used+0x1d>
  401701:	48 8b 3d 58 1e 20 00 	mov    0x201e58(%rip),%rdi        # 603560 <stdout@@GLIBC_2.2.5>
  401708:	b8 00 00 00 00       	mov    $0x0,%eax
  40170d:	e8 4e f5 ff ff       	callq  400c60 <fprintf@plt>
  401712:	45 85 ff             	test   %r15d,%r15d
  401715:	74 08                	je     40171f <send_msg+0x2f0>
  401717:	44 89 ff             	mov    %r15d,%edi
  40171a:	e8 e1 f4 ff ff       	callq  400c00 <close@plt>
  40171f:	bf 01 00 00 00       	mov    $0x1,%edi
  401724:	e8 c7 f5 ff ff       	callq  400cf0 <exit@plt>
  401729:	c7 04 24 6e 6f 62 6f 	movl   $0x6f626f6e,(%rsp)
  401730:	66 c7 44 24 04 64 79 	movw   $0x7964,0x4(%rsp)
  401737:	c6 44 24 06 00       	movb   $0x0,0x6(%rsp)
  40173c:	e9 0d fe ff ff       	jmpq   40154e <send_msg+0x11f>
  401741:	48 8d 15 0d 09 00 00 	lea    0x90d(%rip),%rdx        # 402055 <array.3074+0x235>
  401748:	48 8d 35 8e 05 00 00 	lea    0x58e(%rip),%rsi        # 401cdd <_IO_stdin_used+0x1d>
  40174f:	48 8b 3d 0a 1e 20 00 	mov    0x201e0a(%rip),%rdi        # 603560 <stdout@@GLIBC_2.2.5>
  401756:	e8 05 f5 ff ff       	callq  400c60 <fprintf@plt>
  40175b:	45 85 ff             	test   %r15d,%r15d
  40175e:	74 08                	je     401768 <send_msg+0x339>
  401760:	44 89 ff             	mov    %r15d,%edi
  401763:	e8 98 f4 ff ff       	callq  400c00 <close@plt>
  401768:	bf 01 00 00 00       	mov    $0x1,%edi
  40176d:	e8 7e f5 ff ff       	callq  400cf0 <exit@plt>

0000000000401772 <send_msg_2>:
  401772:	41 57                	push   %r15
  401774:	41 56                	push   %r14
  401776:	41 55                	push   %r13
  401778:	41 54                	push   %r12
  40177a:	55                   	push   %rbp
  40177b:	53                   	push   %rbx
  40177c:	48 83 ec 68          	sub    $0x68,%rsp
  401780:	89 fb                	mov    %edi,%ebx
  401782:	bf 00 00 00 00       	mov    $0x0,%edi
  401787:	e8 64 f4 ff ff       	callq  400bf0 <dup@plt>
  40178c:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  401790:	83 f8 ff             	cmp    $0xffffffff,%eax
  401793:	0f 84 a6 01 00 00    	je     40193f <send_msg_2+0x1cd>
  401799:	bf 00 00 00 00       	mov    $0x0,%edi
  40179e:	e8 5d f4 ff ff       	callq  400c00 <close@plt>
  4017a3:	83 f8 ff             	cmp    $0xffffffff,%eax
  4017a6:	0f 84 a9 01 00 00    	je     401955 <send_msg_2+0x1e3>
  4017ac:	e8 7f f4 ff ff       	callq  400c30 <tmpfile@plt>
  4017b1:	48 89 c5             	mov    %rax,%rbp
  4017b4:	48 85 c0             	test   %rax,%rax
  4017b7:	0f 84 ae 01 00 00    	je     40196b <send_msg_2+0x1f9>
  4017bd:	48 89 c1             	mov    %rax,%rcx
  4017c0:	ba 1b 00 00 00       	mov    $0x1b,%edx
  4017c5:	be 01 00 00 00       	mov    $0x1,%esi
  4017ca:	48 8d 3d d3 08 00 00 	lea    0x8d3(%rip),%rdi        # 4020a4 <array.3074+0x284>
  4017d1:	e8 3a f5 ff ff       	callq  400d10 <fwrite@plt>
  4017d6:	48 89 ee             	mov    %rbp,%rsi
  4017d9:	bf 0a 00 00 00       	mov    $0xa,%edi
  4017de:	e8 2d f4 ff ff       	callq  400c10 <fputc@plt>
  4017e3:	bf 00 00 00 00       	mov    $0x0,%edi
  4017e8:	e8 c3 f4 ff ff       	callq  400cb0 <cuserid@plt>
  4017ed:	48 85 c0             	test   %rax,%rax
  4017f0:	0f 84 8b 01 00 00    	je     401981 <send_msg_2+0x20f>
  4017f6:	48 8d 7c 24 10       	lea    0x10(%rsp),%rdi
  4017fb:	48 89 c6             	mov    %rax,%rsi
  4017fe:	e8 7d f3 ff ff       	callq  400b80 <strcpy@plt>
  401803:	85 db                	test   %ebx,%ebx
  401805:	48 8d 05 ed 07 00 00 	lea    0x7ed(%rip),%rax        # 401ff9 <array.3074+0x1d9>
  40180c:	4c 8d 0d de 07 00 00 	lea    0x7de(%rip),%r9        # 401ff1 <array.3074+0x1d1>
  401813:	4c 0f 44 c8          	cmove  %rax,%r9
  401817:	48 83 ec 08          	sub    $0x8,%rsp
  40181b:	8b 05 5b 1d 20 00    	mov    0x201d5b(%rip),%eax        # 60357c <num_input_strings>
  401821:	50                   	push   %rax
  401822:	4c 8d 44 24 20       	lea    0x20(%rsp),%r8
  401827:	8b 0d 13 1d 20 00    	mov    0x201d13(%rip),%ecx        # 603540 <bomb_id>
  40182d:	48 8d 15 0c 19 20 00 	lea    0x20190c(%rip),%rdx        # 603140 <lab_id>
  401834:	48 8d 35 e2 07 00 00 	lea    0x7e2(%rip),%rsi        # 40201d <array.3074+0x1fd>
  40183b:	48 89 ef             	mov    %rbp,%rdi
  40183e:	b8 00 00 00 00       	mov    $0x0,%eax
  401843:	e8 18 f4 ff ff       	callq  400c60 <fprintf@plt>
  401848:	48 83 c4 10          	add    $0x10,%rsp
  40184c:	83 3d 29 1d 20 00 00 	cmpl   $0x0,0x201d29(%rip)        # 60357c <num_input_strings>
  401853:	7e 60                	jle    4018b5 <send_msg_2+0x143>
  401855:	bb 00 00 00 00       	mov    $0x0,%ebx
  40185a:	4c 8d 3d 3f 1d 20 00 	lea    0x201d3f(%rip),%r15        # 6035a0 <input_strings>
  401861:	4c 8d 74 24 10       	lea    0x10(%rsp),%r14
  401866:	4c 8d 2d d3 18 20 00 	lea    0x2018d3(%rip),%r13        # 603140 <lab_id>
  40186d:	4c 8d 25 c5 07 00 00 	lea    0x7c5(%rip),%r12        # 402039 <array.3074+0x219>
  401874:	48 63 c3             	movslq %ebx,%rax
  401877:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
  40187b:	48 c1 e0 04          	shl    $0x4,%rax
  40187f:	4c 01 f8             	add    %r15,%rax
  401882:	83 c3 01             	add    $0x1,%ebx
  401885:	48 83 ec 08          	sub    $0x8,%rsp
  401889:	50                   	push   %rax
  40188a:	41 89 d9             	mov    %ebx,%r9d
  40188d:	4d 89 f0             	mov    %r14,%r8
  401890:	8b 0d aa 1c 20 00    	mov    0x201caa(%rip),%ecx        # 603540 <bomb_id>
  401896:	4c 89 ea             	mov    %r13,%rdx
  401899:	4c 89 e6             	mov    %r12,%rsi
  40189c:	48 89 ef             	mov    %rbp,%rdi
  40189f:	b8 00 00 00 00       	mov    $0x0,%eax
  4018a4:	e8 b7 f3 ff ff       	callq  400c60 <fprintf@plt>
  4018a9:	48 83 c4 10          	add    $0x10,%rsp
  4018ad:	39 1d c9 1c 20 00    	cmp    %ebx,0x201cc9(%rip)        # 60357c <num_input_strings>
  4018b3:	7f bf                	jg     401874 <send_msg_2+0x102>
  4018b5:	48 89 ef             	mov    %rbp,%rdi
  4018b8:	e8 23 f3 ff ff       	callq  400be0 <rewind@plt>
  4018bd:	4c 8d 05 fc 07 00 00 	lea    0x7fc(%rip),%r8        # 4020c0 <array.3074+0x2a0>
  4018c4:	48 8d 0d ff 07 00 00 	lea    0x7ff(%rip),%rcx        # 4020ca <array.3074+0x2aa>
  4018cb:	48 8d 15 03 08 00 00 	lea    0x803(%rip),%rdx        # 4020d5 <array.3074+0x2b5>
  4018d2:	48 8d 35 13 08 00 00 	lea    0x813(%rip),%rsi        # 4020ec <array.3074+0x2cc>
  4018d9:	48 8d 3d 00 23 20 00 	lea    0x202300(%rip),%rdi        # 603be0 <scratch>
  4018e0:	b8 00 00 00 00       	mov    $0x0,%eax
  4018e5:	e8 f6 f3 ff ff       	callq  400ce0 <sprintf@plt>
  4018ea:	48 8d 3d ef 22 20 00 	lea    0x2022ef(%rip),%rdi        # 603be0 <scratch>
  4018f1:	e8 ca f2 ff ff       	callq  400bc0 <system@plt>
  4018f6:	85 c0                	test   %eax,%eax
  4018f8:	0f 85 9c 00 00 00    	jne    40199a <send_msg_2+0x228>
  4018fe:	48 89 ef             	mov    %rbp,%rdi
  401901:	e8 aa f2 ff ff       	callq  400bb0 <fclose@plt>
  401906:	85 c0                	test   %eax,%eax
  401908:	0f 85 a2 00 00 00    	jne    4019b0 <send_msg_2+0x23e>
  40190e:	8b 7c 24 0c          	mov    0xc(%rsp),%edi
  401912:	e8 d9 f2 ff ff       	callq  400bf0 <dup@plt>
  401917:	85 c0                	test   %eax,%eax
  401919:	0f 85 a7 00 00 00    	jne    4019c6 <send_msg_2+0x254>
  40191f:	8b 7c 24 0c          	mov    0xc(%rsp),%edi
  401923:	e8 d8 f2 ff ff       	callq  400c00 <close@plt>
  401928:	85 c0                	test   %eax,%eax
  40192a:	0f 85 ac 00 00 00    	jne    4019dc <send_msg_2+0x26a>
  401930:	48 83 c4 68          	add    $0x68,%rsp
  401934:	5b                   	pop    %rbx
  401935:	5d                   	pop    %rbp
  401936:	41 5c                	pop    %r12
  401938:	41 5d                	pop    %r13
  40193a:	41 5e                	pop    %r14
  40193c:	41 5f                	pop    %r15
  40193e:	c3                   	retq   
  40193f:	48 8d 3d 22 07 00 00 	lea    0x722(%rip),%rdi        # 402068 <array.3074+0x248>
  401946:	e8 45 f2 ff ff       	callq  400b90 <puts@plt>
  40194b:	bf 08 00 00 00       	mov    $0x8,%edi
  401950:	e8 9b f3 ff ff       	callq  400cf0 <exit@plt>
  401955:	48 8d 3d 20 07 00 00 	lea    0x720(%rip),%rdi        # 40207c <array.3074+0x25c>
  40195c:	e8 2f f2 ff ff       	callq  400b90 <puts@plt>
  401961:	bf 08 00 00 00       	mov    $0x8,%edi
  401966:	e8 85 f3 ff ff       	callq  400cf0 <exit@plt>
  40196b:	48 8d 3d 1d 07 00 00 	lea    0x71d(%rip),%rdi        # 40208f <array.3074+0x26f>
  401972:	e8 19 f2 ff ff       	callq  400b90 <puts@plt>
  401977:	bf 08 00 00 00       	mov    $0x8,%edi
  40197c:	e8 6f f3 ff ff       	callq  400cf0 <exit@plt>
  401981:	c7 44 24 10 6e 6f 62 	movl   $0x6f626f6e,0x10(%rsp)
  401988:	6f 
  401989:	66 c7 44 24 14 64 79 	movw   $0x7964,0x14(%rsp)
  401990:	c6 44 24 16 00       	movb   $0x0,0x16(%rsp)
  401995:	e9 69 fe ff ff       	jmpq   401803 <send_msg_2+0x91>
  40199a:	48 8d 3d 54 07 00 00 	lea    0x754(%rip),%rdi        # 4020f5 <array.3074+0x2d5>
  4019a1:	e8 ea f1 ff ff       	callq  400b90 <puts@plt>
  4019a6:	bf 08 00 00 00       	mov    $0x8,%edi
  4019ab:	e8 40 f3 ff ff       	callq  400cf0 <exit@plt>
  4019b0:	48 8d 3d 58 07 00 00 	lea    0x758(%rip),%rdi        # 40210f <array.3074+0x2ef>
  4019b7:	e8 d4 f1 ff ff       	callq  400b90 <puts@plt>
  4019bc:	bf 08 00 00 00       	mov    $0x8,%edi
  4019c1:	e8 2a f3 ff ff       	callq  400cf0 <exit@plt>
  4019c6:	48 8d 3d 5b 07 00 00 	lea    0x75b(%rip),%rdi        # 402128 <array.3074+0x308>
  4019cd:	e8 be f1 ff ff       	callq  400b90 <puts@plt>
  4019d2:	bf 08 00 00 00       	mov    $0x8,%edi
  4019d7:	e8 14 f3 ff ff       	callq  400cf0 <exit@plt>
  4019dc:	48 8d 3d 60 07 00 00 	lea    0x760(%rip),%rdi        # 402143 <array.3074+0x323>
  4019e3:	e8 a8 f1 ff ff       	callq  400b90 <puts@plt>
  4019e8:	bf 08 00 00 00       	mov    $0x8,%edi
  4019ed:	e8 fe f2 ff ff       	callq  400cf0 <exit@plt>

00000000004019f2 <explode_bomb>:
  4019f2:	48 83 ec 08          	sub    $0x8,%rsp
  4019f6:	48 8d 3d 5d 07 00 00 	lea    0x75d(%rip),%rdi        # 40215a <array.3074+0x33a>
  4019fd:	e8 8e f1 ff ff       	callq  400b90 <puts@plt>
  401a02:	48 8d 3d 5a 07 00 00 	lea    0x75a(%rip),%rdi        # 402163 <array.3074+0x343>
  401a09:	e8 82 f1 ff ff       	callq  400b90 <puts@plt>
  401a0e:	bf 00 00 00 00       	mov    $0x0,%edi
  401a13:	e8 17 fa ff ff       	callq  40142f <send_msg>
  401a18:	48 8d 3d 79 04 00 00 	lea    0x479(%rip),%rdi        # 401e98 <array.3074+0x78>
  401a1f:	e8 6c f1 ff ff       	callq  400b90 <puts@plt>
  401a24:	bf 08 00 00 00       	mov    $0x8,%edi
  401a29:	e8 c2 f2 ff ff       	callq  400cf0 <exit@plt>

0000000000401a2e <read_six_numbers>:
  401a2e:	48 83 ec 08          	sub    $0x8,%rsp
  401a32:	48 89 f2             	mov    %rsi,%rdx
  401a35:	48 8d 4e 04          	lea    0x4(%rsi),%rcx
  401a39:	48 8d 46 14          	lea    0x14(%rsi),%rax
  401a3d:	50                   	push   %rax
  401a3e:	48 8d 46 10          	lea    0x10(%rsi),%rax
  401a42:	50                   	push   %rax
  401a43:	4c 8d 4e 0c          	lea    0xc(%rsi),%r9
  401a47:	4c 8d 46 08          	lea    0x8(%rsi),%r8
  401a4b:	48 8d 35 28 07 00 00 	lea    0x728(%rip),%rsi        # 40217a <array.3074+0x35a>
  401a52:	b8 00 00 00 00       	mov    $0x0,%eax
  401a57:	e8 34 f2 ff ff       	callq  400c90 <__isoc99_sscanf@plt>
  401a5c:	48 83 c4 10          	add    $0x10,%rsp
  401a60:	83 f8 05             	cmp    $0x5,%eax
  401a63:	7e 05                	jle    401a6a <read_six_numbers+0x3c>
  401a65:	48 83 c4 08          	add    $0x8,%rsp
  401a69:	c3                   	retq   
  401a6a:	e8 83 ff ff ff       	callq  4019f2 <explode_bomb>

0000000000401a6f <read_line>:
  401a6f:	48 83 ec 08          	sub    $0x8,%rsp
  401a73:	b8 00 00 00 00       	mov    $0x0,%eax
  401a78:	e8 04 f9 ff ff       	callq  401381 <skip>
  401a7d:	48 85 c0             	test   %rax,%rax
  401a80:	74 6f                	je     401af1 <read_line+0x82>
  401a82:	8b 35 f4 1a 20 00    	mov    0x201af4(%rip),%esi        # 60357c <num_input_strings>
  401a88:	48 63 c6             	movslq %esi,%rax
  401a8b:	48 8d 14 80          	lea    (%rax,%rax,4),%rdx
  401a8f:	48 c1 e2 04          	shl    $0x4,%rdx
  401a93:	48 8d 05 06 1b 20 00 	lea    0x201b06(%rip),%rax        # 6035a0 <input_strings>
  401a9a:	48 01 c2             	add    %rax,%rdx
  401a9d:	b8 00 00 00 00       	mov    $0x0,%eax
  401aa2:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  401aa9:	48 89 d7             	mov    %rdx,%rdi
  401aac:	f2 ae                	repnz scas %es:(%rdi),%al
  401aae:	48 f7 d1             	not    %rcx
  401ab1:	48 83 e9 01          	sub    $0x1,%rcx
  401ab5:	83 f9 4f             	cmp    $0x4f,%ecx
  401ab8:	0f 84 a1 00 00 00    	je     401b5f <read_line+0xf0>
  401abe:	83 e9 01             	sub    $0x1,%ecx
  401ac1:	48 63 c9             	movslq %ecx,%rcx
  401ac4:	48 63 c6             	movslq %esi,%rax
  401ac7:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
  401acb:	48 c1 e0 04          	shl    $0x4,%rax
  401acf:	48 89 c7             	mov    %rax,%rdi
  401ad2:	48 8d 05 c7 1a 20 00 	lea    0x201ac7(%rip),%rax        # 6035a0 <input_strings>
  401ad9:	48 01 f8             	add    %rdi,%rax
  401adc:	c6 04 08 00          	movb   $0x0,(%rax,%rcx,1)
  401ae0:	83 c6 01             	add    $0x1,%esi
  401ae3:	89 35 93 1a 20 00    	mov    %esi,0x201a93(%rip)        # 60357c <num_input_strings>
  401ae9:	48 89 d0             	mov    %rdx,%rax
  401aec:	48 83 c4 08          	add    $0x8,%rsp
  401af0:	c3                   	retq   
  401af1:	48 8b 05 78 1a 20 00 	mov    0x201a78(%rip),%rax        # 603570 <stdin@@GLIBC_2.2.5>
  401af8:	48 39 05 81 1a 20 00 	cmp    %rax,0x201a81(%rip)        # 603580 <infile>
  401aff:	74 43                	je     401b44 <read_line+0xd5>
  401b01:	48 8d 3d a2 06 00 00 	lea    0x6a2(%rip),%rdi        # 4021aa <array.3074+0x38a>
  401b08:	e8 53 f0 ff ff       	callq  400b60 <getenv@plt>
  401b0d:	48 85 c0             	test   %rax,%rax
  401b10:	75 43                	jne    401b55 <read_line+0xe6>
  401b12:	48 8b 05 57 1a 20 00 	mov    0x201a57(%rip),%rax        # 603570 <stdin@@GLIBC_2.2.5>
  401b19:	48 89 05 60 1a 20 00 	mov    %rax,0x201a60(%rip)        # 603580 <infile>
  401b20:	b8 00 00 00 00       	mov    $0x0,%eax
  401b25:	e8 57 f8 ff ff       	callq  401381 <skip>
  401b2a:	48 85 c0             	test   %rax,%rax
  401b2d:	0f 85 4f ff ff ff    	jne    401a82 <read_line+0x13>
  401b33:	48 8d 3d 52 06 00 00 	lea    0x652(%rip),%rdi        # 40218c <array.3074+0x36c>
  401b3a:	e8 51 f0 ff ff       	callq  400b90 <puts@plt>
  401b3f:	e8 ae fe ff ff       	callq  4019f2 <explode_bomb>
  401b44:	48 8d 3d 41 06 00 00 	lea    0x641(%rip),%rdi        # 40218c <array.3074+0x36c>
  401b4b:	e8 40 f0 ff ff       	callq  400b90 <puts@plt>
  401b50:	e8 9d fe ff ff       	callq  4019f2 <explode_bomb>
  401b55:	bf 00 00 00 00       	mov    $0x0,%edi
  401b5a:	e8 91 f1 ff ff       	callq  400cf0 <exit@plt>
  401b5f:	48 8d 3d 4f 06 00 00 	lea    0x64f(%rip),%rdi        # 4021b5 <array.3074+0x395>
  401b66:	e8 25 f0 ff ff       	callq  400b90 <puts@plt>
  401b6b:	e8 82 fe ff ff       	callq  4019f2 <explode_bomb>

0000000000401b70 <phase_defused>:
  401b70:	48 83 ec 78          	sub    $0x78,%rsp
  401b74:	bf 01 00 00 00       	mov    $0x1,%edi
  401b79:	e8 b1 f8 ff ff       	callq  40142f <send_msg>
  401b7e:	83 3d f7 19 20 00 03 	cmpl   $0x3,0x2019f7(%rip)        # 60357c <num_input_strings>
  401b85:	74 05                	je     401b8c <phase_defused+0x1c>
  401b87:	48 83 c4 78          	add    $0x78,%rsp
  401b8b:	c3                   	retq   
  401b8c:	48 8d 4c 24 18       	lea    0x18(%rsp),%rcx
  401b91:	48 8d 54 24 1c       	lea    0x1c(%rsp),%rdx
  401b96:	48 83 ec 08          	sub    $0x8,%rsp
  401b9a:	48 8d 44 24 28       	lea    0x28(%rsp),%rax
  401b9f:	50                   	push   %rax
  401ba0:	48 8d 44 24 18       	lea    0x18(%rsp),%rax
  401ba5:	50                   	push   %rax
  401ba6:	48 8d 44 24 24       	lea    0x24(%rsp),%rax
  401bab:	50                   	push   %rax
  401bac:	4c 8d 4c 24 30       	lea    0x30(%rsp),%r9
  401bb1:	4c 8d 44 24 34       	lea    0x34(%rsp),%r8
  401bb6:	48 8d 35 13 06 00 00 	lea    0x613(%rip),%rsi        # 4021d0 <array.3074+0x3b0>
  401bbd:	48 8d 3d 2c 1a 20 00 	lea    0x201a2c(%rip),%rdi        # 6035f0 <input_strings+0x50>
  401bc4:	b8 00 00 00 00       	mov    $0x0,%eax
  401bc9:	e8 c2 f0 ff ff       	callq  400c90 <__isoc99_sscanf@plt>
  401bce:	48 83 c4 20          	add    $0x20,%rsp
  401bd2:	83 f8 07             	cmp    $0x7,%eax
  401bd5:	74 1a                	je     401bf1 <phase_defused+0x81>
  401bd7:	48 8d 3d 42 03 00 00 	lea    0x342(%rip),%rdi        # 401f20 <array.3074+0x100>
  401bde:	e8 ad ef ff ff       	callq  400b90 <puts@plt>
  401be3:	48 8d 3d 66 03 00 00 	lea    0x366(%rip),%rdi        # 401f50 <array.3074+0x130>
  401bea:	e8 a1 ef ff ff       	callq  400b90 <puts@plt>
  401bef:	eb 96                	jmp    401b87 <phase_defused+0x17>
  401bf1:	48 8d 7c 24 20       	lea    0x20(%rsp),%rdi
  401bf6:	48 8d 35 e8 05 00 00 	lea    0x5e8(%rip),%rsi        # 4021e5 <array.3074+0x3c5>
  401bfd:	e8 e0 f5 ff ff       	callq  4011e2 <strings_not_equal>
  401c02:	85 c0                	test   %eax,%eax
  401c04:	75 d1                	jne    401bd7 <phase_defused+0x67>
  401c06:	48 8d 3d b3 02 00 00 	lea    0x2b3(%rip),%rdi        # 401ec0 <array.3074+0xa0>
  401c0d:	e8 7e ef ff ff       	callq  400b90 <puts@plt>
  401c12:	48 8d 3d cf 02 00 00 	lea    0x2cf(%rip),%rdi        # 401ee8 <array.3074+0xc8>
  401c19:	e8 72 ef ff ff       	callq  400b90 <puts@plt>
  401c1e:	b8 00 00 00 00       	mov    $0x0,%eax
  401c23:	e8 d2 f4 ff ff       	callq  4010fa <secret_phase>
  401c28:	eb ad                	jmp    401bd7 <phase_defused+0x67>
  401c2a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000401c30 <__libc_csu_init>:
  401c30:	41 57                	push   %r15
  401c32:	41 56                	push   %r14
  401c34:	41 89 ff             	mov    %edi,%r15d
  401c37:	41 55                	push   %r13
  401c39:	41 54                	push   %r12
  401c3b:	4c 8d 25 c6 11 20 00 	lea    0x2011c6(%rip),%r12        # 602e08 <__frame_dummy_init_array_entry>
  401c42:	55                   	push   %rbp
  401c43:	48 8d 2d c6 11 20 00 	lea    0x2011c6(%rip),%rbp        # 602e10 <__init_array_end>
  401c4a:	53                   	push   %rbx
  401c4b:	49 89 f6             	mov    %rsi,%r14
  401c4e:	49 89 d5             	mov    %rdx,%r13
  401c51:	4c 29 e5             	sub    %r12,%rbp
  401c54:	48 83 ec 08          	sub    $0x8,%rsp
  401c58:	48 c1 fd 03          	sar    $0x3,%rbp
  401c5c:	e8 cf ee ff ff       	callq  400b30 <_init>
  401c61:	48 85 ed             	test   %rbp,%rbp
  401c64:	74 20                	je     401c86 <__libc_csu_init+0x56>
  401c66:	31 db                	xor    %ebx,%ebx
  401c68:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  401c6f:	00 
  401c70:	4c 89 ea             	mov    %r13,%rdx
  401c73:	4c 89 f6             	mov    %r14,%rsi
  401c76:	44 89 ff             	mov    %r15d,%edi
  401c79:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  401c7d:	48 83 c3 01          	add    $0x1,%rbx
  401c81:	48 39 dd             	cmp    %rbx,%rbp
  401c84:	75 ea                	jne    401c70 <__libc_csu_init+0x40>
  401c86:	48 83 c4 08          	add    $0x8,%rsp
  401c8a:	5b                   	pop    %rbx
  401c8b:	5d                   	pop    %rbp
  401c8c:	41 5c                	pop    %r12
  401c8e:	41 5d                	pop    %r13
  401c90:	41 5e                	pop    %r14
  401c92:	41 5f                	pop    %r15
  401c94:	c3                   	retq   
  401c95:	90                   	nop
  401c96:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  401c9d:	00 00 00 

0000000000401ca0 <__libc_csu_fini>:
  401ca0:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000401ca4 <_fini>:
  401ca4:	48 83 ec 08          	sub    $0x8,%rsp
  401ca8:	48 83 c4 08          	add    $0x8,%rsp
  401cac:	c3                   	retq   
