bomb:     file format elf64-x86-64


Disassembly of section .init:

0000000000000ef8 <_init>:
 ef8:	48 83 ec 08          	sub    $0x8,%rsp
 efc:	48 8b 05 dd 30 20 00 	mov    0x2030dd(%rip),%rax        # 203fe0 <__gmon_start__>
 f03:	48 85 c0             	test   %rax,%rax
 f06:	74 02                	je     f0a <_init+0x12>
 f08:	ff d0                	callq  *%rax
 f0a:	48 83 c4 08          	add    $0x8,%rsp
 f0e:	c3                   	retq   

Disassembly of section .plt:

0000000000000f10 <.plt>:
     f10:	ff 35 f2 30 20 00    	pushq  0x2030f2(%rip)        # 204008 <_GLOBAL_OFFSET_TABLE_+0x8>
     f16:	ff 25 f4 30 20 00    	jmpq   *0x2030f4(%rip)        # 204010 <_GLOBAL_OFFSET_TABLE_+0x10>
     f1c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000000f20 <getenv@plt>:
     f20:	ff 25 f2 30 20 00    	jmpq   *0x2030f2(%rip)        # 204018 <getenv@GLIBC_2.2.5>
     f26:	68 00 00 00 00       	pushq  $0x0
     f2b:	e9 e0 ff ff ff       	jmpq   f10 <.plt>

0000000000000f30 <__errno_location@plt>:
     f30:	ff 25 ea 30 20 00    	jmpq   *0x2030ea(%rip)        # 204020 <__errno_location@GLIBC_2.2.5>
     f36:	68 01 00 00 00       	pushq  $0x1
     f3b:	e9 d0 ff ff ff       	jmpq   f10 <.plt>

0000000000000f40 <strcpy@plt>:
     f40:	ff 25 e2 30 20 00    	jmpq   *0x2030e2(%rip)        # 204028 <strcpy@GLIBC_2.2.5>
     f46:	68 02 00 00 00       	pushq  $0x2
     f4b:	e9 c0 ff ff ff       	jmpq   f10 <.plt>

0000000000000f50 <puts@plt>:
     f50:	ff 25 da 30 20 00    	jmpq   *0x2030da(%rip)        # 204030 <puts@GLIBC_2.2.5>
     f56:	68 03 00 00 00       	pushq  $0x3
     f5b:	e9 b0 ff ff ff       	jmpq   f10 <.plt>

0000000000000f60 <write@plt>:
     f60:	ff 25 d2 30 20 00    	jmpq   *0x2030d2(%rip)        # 204038 <write@GLIBC_2.2.5>
     f66:	68 04 00 00 00       	pushq  $0x4
     f6b:	e9 a0 ff ff ff       	jmpq   f10 <.plt>

0000000000000f70 <fclose@plt>:
     f70:	ff 25 ca 30 20 00    	jmpq   *0x2030ca(%rip)        # 204040 <fclose@GLIBC_2.2.5>
     f76:	68 05 00 00 00       	pushq  $0x5
     f7b:	e9 90 ff ff ff       	jmpq   f10 <.plt>

0000000000000f80 <system@plt>:
     f80:	ff 25 c2 30 20 00    	jmpq   *0x2030c2(%rip)        # 204048 <system@GLIBC_2.2.5>
     f86:	68 06 00 00 00       	pushq  $0x6
     f8b:	e9 80 ff ff ff       	jmpq   f10 <.plt>

0000000000000f90 <printf@plt>:
     f90:	ff 25 ba 30 20 00    	jmpq   *0x2030ba(%rip)        # 204050 <printf@GLIBC_2.2.5>
     f96:	68 07 00 00 00       	pushq  $0x7
     f9b:	e9 70 ff ff ff       	jmpq   f10 <.plt>

0000000000000fa0 <rewind@plt>:
     fa0:	ff 25 b2 30 20 00    	jmpq   *0x2030b2(%rip)        # 204058 <rewind@GLIBC_2.2.5>
     fa6:	68 08 00 00 00       	pushq  $0x8
     fab:	e9 60 ff ff ff       	jmpq   f10 <.plt>

0000000000000fb0 <dup@plt>:
     fb0:	ff 25 aa 30 20 00    	jmpq   *0x2030aa(%rip)        # 204060 <dup@GLIBC_2.2.5>
     fb6:	68 09 00 00 00       	pushq  $0x9
     fbb:	e9 50 ff ff ff       	jmpq   f10 <.plt>

0000000000000fc0 <close@plt>:
     fc0:	ff 25 a2 30 20 00    	jmpq   *0x2030a2(%rip)        # 204068 <close@GLIBC_2.2.5>
     fc6:	68 0a 00 00 00       	pushq  $0xa
     fcb:	e9 40 ff ff ff       	jmpq   f10 <.plt>

0000000000000fd0 <fputc@plt>:
     fd0:	ff 25 9a 30 20 00    	jmpq   *0x20309a(%rip)        # 204070 <fputc@GLIBC_2.2.5>
     fd6:	68 0b 00 00 00       	pushq  $0xb
     fdb:	e9 30 ff ff ff       	jmpq   f10 <.plt>

0000000000000fe0 <fgets@plt>:
     fe0:	ff 25 92 30 20 00    	jmpq   *0x203092(%rip)        # 204078 <fgets@GLIBC_2.2.5>
     fe6:	68 0c 00 00 00       	pushq  $0xc
     feb:	e9 20 ff ff ff       	jmpq   f10 <.plt>

0000000000000ff0 <tmpfile@plt>:
     ff0:	ff 25 8a 30 20 00    	jmpq   *0x20308a(%rip)        # 204080 <tmpfile@GLIBC_2.2.5>
     ff6:	68 0d 00 00 00       	pushq  $0xd
     ffb:	e9 10 ff ff ff       	jmpq   f10 <.plt>

0000000000001000 <signal@plt>:
    1000:	ff 25 82 30 20 00    	jmpq   *0x203082(%rip)        # 204088 <signal@GLIBC_2.2.5>
    1006:	68 0e 00 00 00       	pushq  $0xe
    100b:	e9 00 ff ff ff       	jmpq   f10 <.plt>

0000000000001010 <gethostbyname@plt>:
    1010:	ff 25 7a 30 20 00    	jmpq   *0x20307a(%rip)        # 204090 <gethostbyname@GLIBC_2.2.5>
    1016:	68 0f 00 00 00       	pushq  $0xf
    101b:	e9 f0 fe ff ff       	jmpq   f10 <.plt>

0000000000001020 <fprintf@plt>:
    1020:	ff 25 72 30 20 00    	jmpq   *0x203072(%rip)        # 204098 <fprintf@GLIBC_2.2.5>
    1026:	68 10 00 00 00       	pushq  $0x10
    102b:	e9 e0 fe ff ff       	jmpq   f10 <.plt>

0000000000001030 <strtol@plt>:
    1030:	ff 25 6a 30 20 00    	jmpq   *0x20306a(%rip)        # 2040a0 <strtol@GLIBC_2.2.5>
    1036:	68 11 00 00 00       	pushq  $0x11
    103b:	e9 d0 fe ff ff       	jmpq   f10 <.plt>

0000000000001040 <inet_pton@plt>:
    1040:	ff 25 62 30 20 00    	jmpq   *0x203062(%rip)        # 2040a8 <inet_pton@GLIBC_2.2.5>
    1046:	68 12 00 00 00       	pushq  $0x12
    104b:	e9 c0 fe ff ff       	jmpq   f10 <.plt>

0000000000001050 <fflush@plt>:
    1050:	ff 25 5a 30 20 00    	jmpq   *0x20305a(%rip)        # 2040b0 <fflush@GLIBC_2.2.5>
    1056:	68 13 00 00 00       	pushq  $0x13
    105b:	e9 b0 fe ff ff       	jmpq   f10 <.plt>

0000000000001060 <__isoc99_sscanf@plt>:
    1060:	ff 25 52 30 20 00    	jmpq   *0x203052(%rip)        # 2040b8 <__isoc99_sscanf@GLIBC_2.7>
    1066:	68 14 00 00 00       	pushq  $0x14
    106b:	e9 a0 fe ff ff       	jmpq   f10 <.plt>

0000000000001070 <bcopy@plt>:
    1070:	ff 25 4a 30 20 00    	jmpq   *0x20304a(%rip)        # 2040c0 <bcopy@GLIBC_2.2.5>
    1076:	68 15 00 00 00       	pushq  $0x15
    107b:	e9 90 fe ff ff       	jmpq   f10 <.plt>

0000000000001080 <cuserid@plt>:
    1080:	ff 25 42 30 20 00    	jmpq   *0x203042(%rip)        # 2040c8 <cuserid@GLIBC_2.2.5>
    1086:	68 16 00 00 00       	pushq  $0x16
    108b:	e9 80 fe ff ff       	jmpq   f10 <.plt>

0000000000001090 <fopen@plt>:
    1090:	ff 25 3a 30 20 00    	jmpq   *0x20303a(%rip)        # 2040d0 <fopen@GLIBC_2.2.5>
    1096:	68 17 00 00 00       	pushq  $0x17
    109b:	e9 70 fe ff ff       	jmpq   f10 <.plt>

00000000000010a0 <strcat@plt>:
    10a0:	ff 25 32 30 20 00    	jmpq   *0x203032(%rip)        # 2040d8 <strcat@GLIBC_2.2.5>
    10a6:	68 18 00 00 00       	pushq  $0x18
    10ab:	e9 60 fe ff ff       	jmpq   f10 <.plt>

00000000000010b0 <sprintf@plt>:
    10b0:	ff 25 2a 30 20 00    	jmpq   *0x20302a(%rip)        # 2040e0 <sprintf@GLIBC_2.2.5>
    10b6:	68 19 00 00 00       	pushq  $0x19
    10bb:	e9 50 fe ff ff       	jmpq   f10 <.plt>

00000000000010c0 <exit@plt>:
    10c0:	ff 25 22 30 20 00    	jmpq   *0x203022(%rip)        # 2040e8 <exit@GLIBC_2.2.5>
    10c6:	68 1a 00 00 00       	pushq  $0x1a
    10cb:	e9 40 fe ff ff       	jmpq   f10 <.plt>

00000000000010d0 <connect@plt>:
    10d0:	ff 25 1a 30 20 00    	jmpq   *0x20301a(%rip)        # 2040f0 <connect@GLIBC_2.2.5>
    10d6:	68 1b 00 00 00       	pushq  $0x1b
    10db:	e9 30 fe ff ff       	jmpq   f10 <.plt>

00000000000010e0 <fwrite@plt>:
    10e0:	ff 25 12 30 20 00    	jmpq   *0x203012(%rip)        # 2040f8 <fwrite@GLIBC_2.2.5>
    10e6:	68 1c 00 00 00       	pushq  $0x1c
    10eb:	e9 20 fe ff ff       	jmpq   f10 <.plt>

00000000000010f0 <sleep@plt>:
    10f0:	ff 25 0a 30 20 00    	jmpq   *0x20300a(%rip)        # 204100 <sleep@GLIBC_2.2.5>
    10f6:	68 1d 00 00 00       	pushq  $0x1d
    10fb:	e9 10 fe ff ff       	jmpq   f10 <.plt>

0000000000001100 <__ctype_b_loc@plt>:
    1100:	ff 25 02 30 20 00    	jmpq   *0x203002(%rip)        # 204108 <__ctype_b_loc@GLIBC_2.3>
    1106:	68 1e 00 00 00       	pushq  $0x1e
    110b:	e9 00 fe ff ff       	jmpq   f10 <.plt>

0000000000001110 <socket@plt>:
    1110:	ff 25 fa 2f 20 00    	jmpq   *0x202ffa(%rip)        # 204110 <socket@GLIBC_2.2.5>
    1116:	68 1f 00 00 00       	pushq  $0x1f
    111b:	e9 f0 fd ff ff       	jmpq   f10 <.plt>

Disassembly of section .plt.got:

0000000000001120 <.plt.got>:
    1120:	ff 25 d2 2e 20 00    	jmpq   *0x202ed2(%rip)        # 203ff8 <__cxa_finalize@GLIBC_2.2.5>
    1126:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

0000000000001130 <_start>:
    1130:	31 ed                	xor    %ebp,%ebp
    1132:	49 89 d1             	mov    %rdx,%r9
    1135:	5e                   	pop    %rsi
    1136:	48 89 e2             	mov    %rsp,%rdx
    1139:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    113d:	50                   	push   %rax
    113e:	54                   	push   %rsp
    113f:	4c 8d 05 6a 11 00 00 	lea    0x116a(%rip),%r8        # 22b0 <__libc_csu_fini>
    1146:	48 8d 0d f3 10 00 00 	lea    0x10f3(%rip),%rcx        # 2240 <__libc_csu_init>
    114d:	48 8d 3d 0c 01 00 00 	lea    0x10c(%rip),%rdi        # 1260 <main>
    1154:	ff 15 7e 2e 20 00    	callq  *0x202e7e(%rip)        # 203fd8 <__libc_start_main@GLIBC_2.2.5>
    115a:	f4                   	hlt    
    115b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001160 <deregister_tm_clones>:
    1160:	48 8d 3d 79 36 20 00 	lea    0x203679(%rip),%rdi        # 2047e0 <stdout@@GLIBC_2.2.5>
    1167:	48 8d 05 79 36 20 00 	lea    0x203679(%rip),%rax        # 2047e7 <__TMC_END__+0x7>
    116e:	55                   	push   %rbp
    116f:	48 29 f8             	sub    %rdi,%rax
    1172:	48 89 e5             	mov    %rsp,%rbp
    1175:	48 83 f8 0e          	cmp    $0xe,%rax
    1179:	76 15                	jbe    1190 <deregister_tm_clones+0x30>
    117b:	48 8b 05 4e 2e 20 00 	mov    0x202e4e(%rip),%rax        # 203fd0 <_ITM_deregisterTMCloneTable>
    1182:	48 85 c0             	test   %rax,%rax
    1185:	74 09                	je     1190 <deregister_tm_clones+0x30>
    1187:	5d                   	pop    %rbp
    1188:	ff e0                	jmpq   *%rax
    118a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1190:	5d                   	pop    %rbp
    1191:	c3                   	retq   
    1192:	0f 1f 40 00          	nopl   0x0(%rax)
    1196:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    119d:	00 00 00 

00000000000011a0 <register_tm_clones>:
    11a0:	48 8d 3d 39 36 20 00 	lea    0x203639(%rip),%rdi        # 2047e0 <stdout@@GLIBC_2.2.5>
    11a7:	48 8d 35 32 36 20 00 	lea    0x203632(%rip),%rsi        # 2047e0 <stdout@@GLIBC_2.2.5>
    11ae:	55                   	push   %rbp
    11af:	48 29 fe             	sub    %rdi,%rsi
    11b2:	48 89 e5             	mov    %rsp,%rbp
    11b5:	48 c1 fe 03          	sar    $0x3,%rsi
    11b9:	48 89 f0             	mov    %rsi,%rax
    11bc:	48 c1 e8 3f          	shr    $0x3f,%rax
    11c0:	48 01 c6             	add    %rax,%rsi
    11c3:	48 d1 fe             	sar    %rsi
    11c6:	74 18                	je     11e0 <register_tm_clones+0x40>
    11c8:	48 8b 05 21 2e 20 00 	mov    0x202e21(%rip),%rax        # 203ff0 <_ITM_registerTMCloneTable>
    11cf:	48 85 c0             	test   %rax,%rax
    11d2:	74 0c                	je     11e0 <register_tm_clones+0x40>
    11d4:	5d                   	pop    %rbp
    11d5:	ff e0                	jmpq   *%rax
    11d7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    11de:	00 00 
    11e0:	5d                   	pop    %rbp
    11e1:	c3                   	retq   
    11e2:	0f 1f 40 00          	nopl   0x0(%rax)
    11e6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    11ed:	00 00 00 

00000000000011f0 <__do_global_dtors_aux>:
    11f0:	80 3d 01 36 20 00 00 	cmpb   $0x0,0x203601(%rip)        # 2047f8 <completed.6972>
    11f7:	75 27                	jne    1220 <__do_global_dtors_aux+0x30>
    11f9:	48 83 3d f7 2d 20 00 	cmpq   $0x0,0x202df7(%rip)        # 203ff8 <__cxa_finalize@GLIBC_2.2.5>
    1200:	00 
    1201:	55                   	push   %rbp
    1202:	48 89 e5             	mov    %rsp,%rbp
    1205:	74 0c                	je     1213 <__do_global_dtors_aux+0x23>
    1207:	48 8b 3d 1a 2f 20 00 	mov    0x202f1a(%rip),%rdi        # 204128 <__dso_handle>
    120e:	e8 0d ff ff ff       	callq  1120 <.plt.got>
    1213:	e8 48 ff ff ff       	callq  1160 <deregister_tm_clones>
    1218:	5d                   	pop    %rbp
    1219:	c6 05 d8 35 20 00 01 	movb   $0x1,0x2035d8(%rip)        # 2047f8 <completed.6972>
    1220:	f3 c3                	repz retq 
    1222:	0f 1f 40 00          	nopl   0x0(%rax)
    1226:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    122d:	00 00 00 

0000000000001230 <frame_dummy>:
    1230:	48 8d 3d b1 2b 20 00 	lea    0x202bb1(%rip),%rdi        # 203de8 <__JCR_END__>
    1237:	48 83 3f 00          	cmpq   $0x0,(%rdi)
    123b:	75 0b                	jne    1248 <frame_dummy+0x18>
    123d:	e9 5e ff ff ff       	jmpq   11a0 <register_tm_clones>
    1242:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1248:	48 8b 05 99 2d 20 00 	mov    0x202d99(%rip),%rax        # 203fe8 <_Jv_RegisterClasses>
    124f:	48 85 c0             	test   %rax,%rax
    1252:	74 e9                	je     123d <frame_dummy+0xd>
    1254:	55                   	push   %rbp
    1255:	48 89 e5             	mov    %rsp,%rbp
    1258:	ff d0                	callq  *%rax
    125a:	5d                   	pop    %rbp
    125b:	e9 40 ff ff ff       	jmpq   11a0 <register_tm_clones>

0000000000001260 <main>:
    1260:	53                   	push   %rbx
    1261:	83 ff 01             	cmp    $0x1,%edi
    1264:	0f 84 f8 00 00 00    	je     1362 <main+0x102>
    126a:	48 89 f3             	mov    %rsi,%rbx
    126d:	83 ff 02             	cmp    $0x2,%edi
    1270:	0f 85 1c 01 00 00    	jne    1392 <main+0x132>
    1276:	48 8b 7e 08          	mov    0x8(%rsi),%rdi
    127a:	48 8d 35 49 14 00 00 	lea    0x1449(%rip),%rsi        # 26ca <array.3089+0x22a>
    1281:	e8 0a fe ff ff       	callq  1090 <fopen@plt>
    1286:	48 89 05 73 35 20 00 	mov    %rax,0x203573(%rip)        # 204800 <infile>
    128d:	48 85 c0             	test   %rax,%rax
    1290:	0f 84 df 00 00 00    	je     1375 <main+0x115>
    1296:	e8 a4 06 00 00       	callq  193f <initialize_bomb>
    129b:	48 8d 3d a6 10 00 00 	lea    0x10a6(%rip),%rdi        # 2348 <_IO_stdin_used+0x88>
    12a2:	e8 a9 fc ff ff       	callq  f50 <puts@plt>
    12a7:	48 8d 3d da 10 00 00 	lea    0x10da(%rip),%rdi        # 2388 <_IO_stdin_used+0xc8>
    12ae:	e8 9d fc ff ff       	callq  f50 <puts@plt>
    12b3:	e8 e2 0d 00 00       	callq  209a <read_line>
    12b8:	48 89 c7             	mov    %rax,%rdi
    12bb:	e8 f0 00 00 00       	callq  13b0 <phase_1>
    12c0:	e8 d6 0e 00 00       	callq  219b <phase_defused>
    12c5:	48 8d 3d ec 10 00 00 	lea    0x10ec(%rip),%rdi        # 23b8 <_IO_stdin_used+0xf8>
    12cc:	e8 7f fc ff ff       	callq  f50 <puts@plt>
    12d1:	e8 c4 0d 00 00       	callq  209a <read_line>
    12d6:	48 89 c7             	mov    %rax,%rdi
    12d9:	e8 f2 00 00 00       	callq  13d0 <phase_2>
    12de:	e8 b8 0e 00 00       	callq  219b <phase_defused>
    12e3:	48 8d 3d 11 10 00 00 	lea    0x1011(%rip),%rdi        # 22fb <_IO_stdin_used+0x3b>
    12ea:	e8 61 fc ff ff       	callq  f50 <puts@plt>
    12ef:	e8 a6 0d 00 00       	callq  209a <read_line>
    12f4:	48 89 c7             	mov    %rax,%rdi
    12f7:	e8 0f 01 00 00       	callq  140b <phase_3>
    12fc:	e8 9a 0e 00 00       	callq  219b <phase_defused>
    1301:	48 8d 3d 11 10 00 00 	lea    0x1011(%rip),%rdi        # 2319 <_IO_stdin_used+0x59>
    1308:	e8 43 fc ff ff       	callq  f50 <puts@plt>
    130d:	e8 88 0d 00 00       	callq  209a <read_line>
    1312:	48 89 c7             	mov    %rax,%rdi
    1315:	e8 71 02 00 00       	callq  158b <phase_4>
    131a:	e8 7c 0e 00 00       	callq  219b <phase_defused>
    131f:	48 8d 3d c2 10 00 00 	lea    0x10c2(%rip),%rdi        # 23e8 <_IO_stdin_used+0x128>
    1326:	e8 25 fc ff ff       	callq  f50 <puts@plt>
    132b:	e8 6a 0d 00 00       	callq  209a <read_line>
    1330:	48 89 c7             	mov    %rax,%rdi
    1333:	e8 9a 02 00 00       	callq  15d2 <phase_5>
    1338:	e8 5e 0e 00 00       	callq  219b <phase_defused>
    133d:	48 8d 3d e4 0f 00 00 	lea    0xfe4(%rip),%rdi        # 2328 <_IO_stdin_used+0x68>
    1344:	e8 07 fc ff ff       	callq  f50 <puts@plt>
    1349:	e8 4c 0d 00 00       	callq  209a <read_line>
    134e:	48 89 c7             	mov    %rax,%rdi
    1351:	e8 47 03 00 00       	callq  169d <phase_6>
    1356:	e8 40 0e 00 00       	callq  219b <phase_defused>
    135b:	b8 00 00 00 00       	mov    $0x0,%eax
    1360:	5b                   	pop    %rbx
    1361:	c3                   	retq   
    1362:	48 8b 05 87 34 20 00 	mov    0x203487(%rip),%rax        # 2047f0 <stdin@@GLIBC_2.2.5>
    1369:	48 89 05 90 34 20 00 	mov    %rax,0x203490(%rip)        # 204800 <infile>
    1370:	e9 21 ff ff ff       	jmpq   1296 <main+0x36>
    1375:	48 8b 53 08          	mov    0x8(%rbx),%rdx
    1379:	48 8b 33             	mov    (%rbx),%rsi
    137c:	48 8d 3d 41 0f 00 00 	lea    0xf41(%rip),%rdi        # 22c4 <_IO_stdin_used+0x4>
    1383:	e8 08 fc ff ff       	callq  f90 <printf@plt>
    1388:	bf 08 00 00 00       	mov    $0x8,%edi
    138d:	e8 2e fd ff ff       	callq  10c0 <exit@plt>
    1392:	48 8b 36             	mov    (%rsi),%rsi
    1395:	48 8d 3d 45 0f 00 00 	lea    0xf45(%rip),%rdi        # 22e1 <_IO_stdin_used+0x21>
    139c:	b8 00 00 00 00       	mov    $0x0,%eax
    13a1:	e8 ea fb ff ff       	callq  f90 <printf@plt>
    13a6:	bf 08 00 00 00       	mov    $0x8,%edi
    13ab:	e8 10 fd ff ff       	callq  10c0 <exit@plt>

00000000000013b0 <phase_1>:
    13b0:	48 83 ec 08          	sub    $0x8,%rsp
    13b4:	48 8d 35 55 10 00 00 	lea    0x1055(%rip),%rsi        # 2410 <_IO_stdin_used+0x150>
    13bb:	e8 4d 04 00 00       	callq  180d <strings_not_equal>
    13c0:	85 c0                	test   %eax,%eax
    13c2:	75 05                	jne    13c9 <phase_1+0x19>
    13c4:	48 83 c4 08          	add    $0x8,%rsp
    13c8:	c3                   	retq   
    13c9:	e8 4f 0c 00 00       	callq  201d <explode_bomb>
    13ce:	eb f4                	jmp    13c4 <phase_1+0x14>

00000000000013d0 <phase_2>:
    13d0:	55                   	push   %rbp
    13d1:	53                   	push   %rbx
    13d2:	48 83 ec 28          	sub    $0x28,%rsp
    13d6:	48 89 e5             	mov    %rsp,%rbp
    13d9:	48 89 e6             	mov    %rsp,%rsi
    13dc:	e8 78 0c 00 00       	callq  2059 <read_six_numbers>
    13e1:	48 89 e3             	mov    %rsp,%rbx
    13e4:	48 83 c5 14          	add    $0x14,%rbp
    13e8:	eb 09                	jmp    13f3 <phase_2+0x23>
    13ea:	48 83 c3 04          	add    $0x4,%rbx
    13ee:	48 39 eb             	cmp    %rbp,%rbx
    13f1:	74 11                	je     1404 <phase_2+0x34>
    13f3:	8b 03                	mov    (%rbx),%eax
    13f5:	83 c0 05             	add    $0x5,%eax
    13f8:	39 43 04             	cmp    %eax,0x4(%rbx)
    13fb:	74 ed                	je     13ea <phase_2+0x1a>
    13fd:	e8 1b 0c 00 00       	callq  201d <explode_bomb>
    1402:	eb e6                	jmp    13ea <phase_2+0x1a>
    1404:	48 83 c4 28          	add    $0x28,%rsp
    1408:	5b                   	pop    %rbx
    1409:	5d                   	pop    %rbp
    140a:	c3                   	retq   

000000000000140b <phase_3>:
    140b:	48 83 ec 18          	sub    $0x18,%rsp
    140f:	48 8d 4c 24 07       	lea    0x7(%rsp),%rcx
    1414:	48 8d 54 24 0c       	lea    0xc(%rsp),%rdx
    1419:	4c 8d 44 24 08       	lea    0x8(%rsp),%r8
    141e:	48 8d 35 49 10 00 00 	lea    0x1049(%rip),%rsi        # 246e <_IO_stdin_used+0x1ae>
    1425:	b8 00 00 00 00       	mov    $0x0,%eax
    142a:	e8 31 fc ff ff       	callq  1060 <__isoc99_sscanf@plt>
    142f:	83 f8 02             	cmp    $0x2,%eax
    1432:	7e 1f                	jle    1453 <phase_3+0x48>
    1434:	83 7c 24 0c 07       	cmpl   $0x7,0xc(%rsp)
    1439:	0f 87 0c 01 00 00    	ja     154b <phase_3+0x140>
    143f:	8b 44 24 0c          	mov    0xc(%rsp),%eax
    1443:	48 8d 15 36 10 00 00 	lea    0x1036(%rip),%rdx        # 2480 <_IO_stdin_used+0x1c0>
    144a:	48 63 04 82          	movslq (%rdx,%rax,4),%rax
    144e:	48 01 d0             	add    %rdx,%rax
    1451:	ff e0                	jmpq   *%rax
    1453:	e8 c5 0b 00 00       	callq  201d <explode_bomb>
    1458:	eb da                	jmp    1434 <phase_3+0x29>
    145a:	b8 63 00 00 00       	mov    $0x63,%eax
    145f:	81 7c 24 08 d2 01 00 	cmpl   $0x1d2,0x8(%rsp)
    1466:	00 
    1467:	0f 84 e8 00 00 00    	je     1555 <phase_3+0x14a>
    146d:	e8 ab 0b 00 00       	callq  201d <explode_bomb>
    1472:	b8 63 00 00 00       	mov    $0x63,%eax
    1477:	e9 d9 00 00 00       	jmpq   1555 <phase_3+0x14a>
    147c:	b8 68 00 00 00       	mov    $0x68,%eax
    1481:	81 7c 24 08 c7 00 00 	cmpl   $0xc7,0x8(%rsp)
    1488:	00 
    1489:	0f 84 c6 00 00 00    	je     1555 <phase_3+0x14a>
    148f:	e8 89 0b 00 00       	callq  201d <explode_bomb>
    1494:	b8 68 00 00 00       	mov    $0x68,%eax
    1499:	e9 b7 00 00 00       	jmpq   1555 <phase_3+0x14a>
    149e:	b8 6d 00 00 00       	mov    $0x6d,%eax
    14a3:	81 7c 24 08 ff 02 00 	cmpl   $0x2ff,0x8(%rsp)
    14aa:	00 
    14ab:	0f 84 a4 00 00 00    	je     1555 <phase_3+0x14a>
    14b1:	e8 67 0b 00 00       	callq  201d <explode_bomb>
    14b6:	b8 6d 00 00 00       	mov    $0x6d,%eax
    14bb:	e9 95 00 00 00       	jmpq   1555 <phase_3+0x14a>
    14c0:	b8 75 00 00 00       	mov    $0x75,%eax
    14c5:	81 7c 24 08 e3 02 00 	cmpl   $0x2e3,0x8(%rsp)
    14cc:	00 
    14cd:	0f 84 82 00 00 00    	je     1555 <phase_3+0x14a>
    14d3:	e8 45 0b 00 00       	callq  201d <explode_bomb>
    14d8:	b8 75 00 00 00       	mov    $0x75,%eax
    14dd:	eb 76                	jmp    1555 <phase_3+0x14a>
    14df:	b8 6b 00 00 00       	mov    $0x6b,%eax
    14e4:	81 7c 24 08 a1 03 00 	cmpl   $0x3a1,0x8(%rsp)
    14eb:	00 
    14ec:	74 67                	je     1555 <phase_3+0x14a>
    14ee:	e8 2a 0b 00 00       	callq  201d <explode_bomb>
    14f3:	b8 6b 00 00 00       	mov    $0x6b,%eax
    14f8:	eb 5b                	jmp    1555 <phase_3+0x14a>
    14fa:	b8 67 00 00 00       	mov    $0x67,%eax
    14ff:	81 7c 24 08 9f 00 00 	cmpl   $0x9f,0x8(%rsp)
    1506:	00 
    1507:	74 4c                	je     1555 <phase_3+0x14a>
    1509:	e8 0f 0b 00 00       	callq  201d <explode_bomb>
    150e:	b8 67 00 00 00       	mov    $0x67,%eax
    1513:	eb 40                	jmp    1555 <phase_3+0x14a>
    1515:	b8 6e 00 00 00       	mov    $0x6e,%eax
    151a:	81 7c 24 08 50 03 00 	cmpl   $0x350,0x8(%rsp)
    1521:	00 
    1522:	74 31                	je     1555 <phase_3+0x14a>
    1524:	e8 f4 0a 00 00       	callq  201d <explode_bomb>
    1529:	b8 6e 00 00 00       	mov    $0x6e,%eax
    152e:	eb 25                	jmp    1555 <phase_3+0x14a>
    1530:	b8 76 00 00 00       	mov    $0x76,%eax
    1535:	81 7c 24 08 3a 03 00 	cmpl   $0x33a,0x8(%rsp)
    153c:	00 
    153d:	74 16                	je     1555 <phase_3+0x14a>
    153f:	e8 d9 0a 00 00       	callq  201d <explode_bomb>
    1544:	b8 76 00 00 00       	mov    $0x76,%eax
    1549:	eb 0a                	jmp    1555 <phase_3+0x14a>
    154b:	e8 cd 0a 00 00       	callq  201d <explode_bomb>
    1550:	b8 6d 00 00 00       	mov    $0x6d,%eax
    1555:	3a 44 24 07          	cmp    0x7(%rsp),%al
    1559:	74 05                	je     1560 <phase_3+0x155>
    155b:	e8 bd 0a 00 00       	callq  201d <explode_bomb>
    1560:	48 83 c4 18          	add    $0x18,%rsp
    1564:	c3                   	retq   

0000000000001565 <func4>:
    1565:	b8 01 00 00 00       	mov    $0x1,%eax
    156a:	85 ff                	test   %edi,%edi
    156c:	7e 1b                	jle    1589 <func4+0x24>
    156e:	48 83 ec 08          	sub    $0x8,%rsp
    1572:	83 ef 01             	sub    $0x1,%edi
    1575:	e8 eb ff ff ff       	callq  1565 <func4>
    157a:	8d 14 c5 00 00 00 00 	lea    0x0(,%rax,8),%edx
    1581:	29 c2                	sub    %eax,%edx
    1583:	89 d0                	mov    %edx,%eax
    1585:	48 83 c4 08          	add    $0x8,%rsp
    1589:	f3 c3                	repz retq 

000000000000158b <phase_4>:
    158b:	48 83 ec 18          	sub    $0x18,%rsp
    158f:	48 8d 54 24 0c       	lea    0xc(%rsp),%rdx
    1594:	48 8d 35 d9 0e 00 00 	lea    0xed9(%rip),%rsi        # 2474 <_IO_stdin_used+0x1b4>
    159b:	b8 00 00 00 00       	mov    $0x0,%eax
    15a0:	e8 bb fa ff ff       	callq  1060 <__isoc99_sscanf@plt>
    15a5:	83 f8 01             	cmp    $0x1,%eax
    15a8:	74 1f                	je     15c9 <phase_4+0x3e>
    15aa:	e8 6e 0a 00 00       	callq  201d <explode_bomb>
    15af:	8b 7c 24 0c          	mov    0xc(%rsp),%edi
    15b3:	e8 ad ff ff ff       	callq  1565 <func4>
    15b8:	3d 91 cb 01 00       	cmp    $0x1cb91,%eax
    15bd:	74 05                	je     15c4 <phase_4+0x39>
    15bf:	e8 59 0a 00 00       	callq  201d <explode_bomb>
    15c4:	48 83 c4 18          	add    $0x18,%rsp
    15c8:	c3                   	retq   
    15c9:	83 7c 24 0c 00       	cmpl   $0x0,0xc(%rsp)
    15ce:	7f df                	jg     15af <phase_4+0x24>
    15d0:	eb d8                	jmp    15aa <phase_4+0x1f>

00000000000015d2 <phase_5>:
    15d2:	53                   	push   %rbx
    15d3:	48 83 ec 10          	sub    $0x10,%rsp
    15d7:	48 89 fb             	mov    %rdi,%rbx
    15da:	e8 10 02 00 00       	callq  17ef <string_length>
    15df:	83 f8 06             	cmp    $0x6,%eax
    15e2:	74 05                	je     15e9 <phase_5+0x17>
    15e4:	e8 34 0a 00 00       	callq  201d <explode_bomb>
    15e9:	b8 00 00 00 00       	mov    $0x0,%eax
    15ee:	48 8d 0d ab 0e 00 00 	lea    0xeab(%rip),%rcx        # 24a0 <array.3089>
    15f5:	0f b6 14 03          	movzbl (%rbx,%rax,1),%edx
    15f9:	83 e2 0f             	and    $0xf,%edx
    15fc:	0f b6 14 11          	movzbl (%rcx,%rdx,1),%edx
    1600:	88 54 04 09          	mov    %dl,0x9(%rsp,%rax,1)
    1604:	48 83 c0 01          	add    $0x1,%rax
    1608:	48 83 f8 06          	cmp    $0x6,%rax
    160c:	75 e7                	jne    15f5 <phase_5+0x23>
    160e:	c6 44 24 0f 00       	movb   $0x0,0xf(%rsp)
    1613:	48 8d 7c 24 09       	lea    0x9(%rsp),%rdi
    1618:	48 8d 35 58 0e 00 00 	lea    0xe58(%rip),%rsi        # 2477 <_IO_stdin_used+0x1b7>
    161f:	e8 e9 01 00 00       	callq  180d <strings_not_equal>
    1624:	85 c0                	test   %eax,%eax
    1626:	75 06                	jne    162e <phase_5+0x5c>
    1628:	48 83 c4 10          	add    $0x10,%rsp
    162c:	5b                   	pop    %rbx
    162d:	c3                   	retq   
    162e:	e8 ea 09 00 00       	callq  201d <explode_bomb>
    1633:	eb f3                	jmp    1628 <phase_5+0x56>

0000000000001635 <fun6>:
    1635:	48 89 f8             	mov    %rdi,%rax
    1638:	4c 8b 47 08          	mov    0x8(%rdi),%r8
    163c:	48 c7 47 08 00 00 00 	movq   $0x0,0x8(%rdi)
    1643:	00 
    1644:	48 89 fa             	mov    %rdi,%rdx
    1647:	4d 85 c0             	test   %r8,%r8
    164a:	75 2e                	jne    167a <fun6+0x45>
    164c:	f3 c3                	repz retq 
    164e:	48 89 d1             	mov    %rdx,%rcx
    1651:	48 8b 51 08          	mov    0x8(%rcx),%rdx
    1655:	48 85 d2             	test   %rdx,%rdx
    1658:	74 04                	je     165e <fun6+0x29>
    165a:	39 32                	cmp    %esi,(%rdx)
    165c:	7f f0                	jg     164e <fun6+0x19>
    165e:	48 39 d1             	cmp    %rdx,%rcx
    1661:	74 33                	je     1696 <fun6+0x61>
    1663:	4c 89 41 08          	mov    %r8,0x8(%rcx)
    1667:	49 8b 48 08          	mov    0x8(%r8),%rcx
    166b:	49 89 50 08          	mov    %rdx,0x8(%r8)
    166f:	48 89 c2             	mov    %rax,%rdx
    1672:	49 89 c8             	mov    %rcx,%r8
    1675:	48 85 c9             	test   %rcx,%rcx
    1678:	74 21                	je     169b <fun6+0x66>
    167a:	48 85 d2             	test   %rdx,%rdx
    167d:	74 12                	je     1691 <fun6+0x5c>
    167f:	41 8b 30             	mov    (%r8),%esi
    1682:	48 89 c1             	mov    %rax,%rcx
    1685:	39 32                	cmp    %esi,(%rdx)
    1687:	7f c8                	jg     1651 <fun6+0x1c>
    1689:	48 89 c2             	mov    %rax,%rdx
    168c:	4c 89 c0             	mov    %r8,%rax
    168f:	eb d6                	jmp    1667 <fun6+0x32>
    1691:	48 89 c1             	mov    %rax,%rcx
    1694:	eb c8                	jmp    165e <fun6+0x29>
    1696:	4c 89 c0             	mov    %r8,%rax
    1699:	eb cc                	jmp    1667 <fun6+0x32>
    169b:	f3 c3                	repz retq 

000000000000169d <phase_6>:
    169d:	48 83 ec 08          	sub    $0x8,%rsp
    16a1:	ba 0a 00 00 00       	mov    $0xa,%edx
    16a6:	be 00 00 00 00       	mov    $0x0,%esi
    16ab:	e8 80 f9 ff ff       	callq  1030 <strtol@plt>
    16b0:	89 05 9a 30 20 00    	mov    %eax,0x20309a(%rip)        # 204750 <node0>
    16b6:	48 8d 3d 93 30 20 00 	lea    0x203093(%rip),%rdi        # 204750 <node0>
    16bd:	e8 73 ff ff ff       	callq  1635 <fun6>
    16c2:	48 8b 40 08          	mov    0x8(%rax),%rax
    16c6:	48 8b 40 08          	mov    0x8(%rax),%rax
    16ca:	48 8b 40 08          	mov    0x8(%rax),%rax
    16ce:	8b 0d 7c 30 20 00    	mov    0x20307c(%rip),%ecx        # 204750 <node0>
    16d4:	39 08                	cmp    %ecx,(%rax)
    16d6:	74 05                	je     16dd <phase_6+0x40>
    16d8:	e8 40 09 00 00       	callq  201d <explode_bomb>
    16dd:	48 83 c4 08          	add    $0x8,%rsp
    16e1:	c3                   	retq   

00000000000016e2 <fun7>:
    16e2:	48 85 ff             	test   %rdi,%rdi
    16e5:	74 32                	je     1719 <fun7+0x37>
    16e7:	48 83 ec 08          	sub    $0x8,%rsp
    16eb:	8b 17                	mov    (%rdi),%edx
    16ed:	39 f2                	cmp    %esi,%edx
    16ef:	7f 1b                	jg     170c <fun7+0x2a>
    16f1:	b8 00 00 00 00       	mov    $0x0,%eax
    16f6:	39 f2                	cmp    %esi,%edx
    16f8:	74 0d                	je     1707 <fun7+0x25>
    16fa:	48 8b 7f 10          	mov    0x10(%rdi),%rdi
    16fe:	e8 df ff ff ff       	callq  16e2 <fun7>
    1703:	8d 44 00 01          	lea    0x1(%rax,%rax,1),%eax
    1707:	48 83 c4 08          	add    $0x8,%rsp
    170b:	c3                   	retq   
    170c:	48 8b 7f 08          	mov    0x8(%rdi),%rdi
    1710:	e8 cd ff ff ff       	callq  16e2 <fun7>
    1715:	01 c0                	add    %eax,%eax
    1717:	eb ee                	jmp    1707 <fun7+0x25>
    1719:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    171e:	c3                   	retq   

000000000000171f <secret_phase>:
    171f:	53                   	push   %rbx
    1720:	e8 75 09 00 00       	callq  209a <read_line>
    1725:	ba 0a 00 00 00       	mov    $0xa,%edx
    172a:	be 00 00 00 00       	mov    $0x0,%esi
    172f:	48 89 c7             	mov    %rax,%rdi
    1732:	e8 f9 f8 ff ff       	callq  1030 <strtol@plt>
    1737:	48 89 c3             	mov    %rax,%rbx
    173a:	8d 40 ff             	lea    -0x1(%rax),%eax
    173d:	3d e8 03 00 00       	cmp    $0x3e8,%eax
    1742:	77 2b                	ja     176f <secret_phase+0x50>
    1744:	89 de                	mov    %ebx,%esi
    1746:	48 8d 3d 23 2f 20 00 	lea    0x202f23(%rip),%rdi        # 204670 <n1>
    174d:	e8 90 ff ff ff       	callq  16e2 <fun7>
    1752:	83 f8 01             	cmp    $0x1,%eax
    1755:	74 05                	je     175c <secret_phase+0x3d>
    1757:	e8 c1 08 00 00       	callq  201d <explode_bomb>
    175c:	48 8d 3d e5 0c 00 00 	lea    0xce5(%rip),%rdi        # 2448 <_IO_stdin_used+0x188>
    1763:	e8 e8 f7 ff ff       	callq  f50 <puts@plt>
    1768:	e8 2e 0a 00 00       	callq  219b <phase_defused>
    176d:	5b                   	pop    %rbx
    176e:	c3                   	retq   
    176f:	e8 a9 08 00 00       	callq  201d <explode_bomb>
    1774:	eb ce                	jmp    1744 <secret_phase+0x25>

0000000000001776 <sig_handler>:
    1776:	48 83 ec 08          	sub    $0x8,%rsp
    177a:	48 8d 3d 2f 0d 00 00 	lea    0xd2f(%rip),%rdi        # 24b0 <array.3089+0x10>
    1781:	e8 ca f7 ff ff       	callq  f50 <puts@plt>
    1786:	bf 03 00 00 00       	mov    $0x3,%edi
    178b:	e8 60 f9 ff ff       	callq  10f0 <sleep@plt>
    1790:	48 8d 3d 51 0e 00 00 	lea    0xe51(%rip),%rdi        # 25e8 <array.3089+0x148>
    1797:	b8 00 00 00 00       	mov    $0x0,%eax
    179c:	e8 ef f7 ff ff       	callq  f90 <printf@plt>
    17a1:	48 8b 3d 38 30 20 00 	mov    0x203038(%rip),%rdi        # 2047e0 <stdout@@GLIBC_2.2.5>
    17a8:	e8 a3 f8 ff ff       	callq  1050 <fflush@plt>
    17ad:	bf 01 00 00 00       	mov    $0x1,%edi
    17b2:	e8 39 f9 ff ff       	callq  10f0 <sleep@plt>
    17b7:	48 8d 3d 32 0e 00 00 	lea    0xe32(%rip),%rdi        # 25f0 <array.3089+0x150>
    17be:	e8 8d f7 ff ff       	callq  f50 <puts@plt>
    17c3:	bf 10 00 00 00       	mov    $0x10,%edi
    17c8:	e8 f3 f8 ff ff       	callq  10c0 <exit@plt>

00000000000017cd <invalid_phase>:
    17cd:	48 83 ec 08          	sub    $0x8,%rsp
    17d1:	48 89 fe             	mov    %rdi,%rsi
    17d4:	48 8d 3d 1d 0e 00 00 	lea    0xe1d(%rip),%rdi        # 25f8 <array.3089+0x158>
    17db:	b8 00 00 00 00       	mov    $0x0,%eax
    17e0:	e8 ab f7 ff ff       	callq  f90 <printf@plt>
    17e5:	bf 08 00 00 00       	mov    $0x8,%edi
    17ea:	e8 d1 f8 ff ff       	callq  10c0 <exit@plt>

00000000000017ef <string_length>:
    17ef:	80 3f 00             	cmpb   $0x0,(%rdi)
    17f2:	74 13                	je     1807 <string_length+0x18>
    17f4:	b8 00 00 00 00       	mov    $0x0,%eax
    17f9:	48 83 c7 01          	add    $0x1,%rdi
    17fd:	83 c0 01             	add    $0x1,%eax
    1800:	80 3f 00             	cmpb   $0x0,(%rdi)
    1803:	75 f4                	jne    17f9 <string_length+0xa>
    1805:	f3 c3                	repz retq 
    1807:	b8 00 00 00 00       	mov    $0x0,%eax
    180c:	c3                   	retq   

000000000000180d <strings_not_equal>:
    180d:	41 54                	push   %r12
    180f:	55                   	push   %rbp
    1810:	53                   	push   %rbx
    1811:	48 89 fb             	mov    %rdi,%rbx
    1814:	48 89 f5             	mov    %rsi,%rbp
    1817:	e8 d3 ff ff ff       	callq  17ef <string_length>
    181c:	41 89 c4             	mov    %eax,%r12d
    181f:	48 89 ef             	mov    %rbp,%rdi
    1822:	e8 c8 ff ff ff       	callq  17ef <string_length>
    1827:	ba 01 00 00 00       	mov    $0x1,%edx
    182c:	41 39 c4             	cmp    %eax,%r12d
    182f:	74 07                	je     1838 <strings_not_equal+0x2b>
    1831:	89 d0                	mov    %edx,%eax
    1833:	5b                   	pop    %rbx
    1834:	5d                   	pop    %rbp
    1835:	41 5c                	pop    %r12
    1837:	c3                   	retq   
    1838:	0f b6 03             	movzbl (%rbx),%eax
    183b:	84 c0                	test   %al,%al
    183d:	74 27                	je     1866 <strings_not_equal+0x59>
    183f:	3a 45 00             	cmp    0x0(%rbp),%al
    1842:	75 29                	jne    186d <strings_not_equal+0x60>
    1844:	48 83 c3 01          	add    $0x1,%rbx
    1848:	48 83 c5 01          	add    $0x1,%rbp
    184c:	0f b6 03             	movzbl (%rbx),%eax
    184f:	84 c0                	test   %al,%al
    1851:	74 0c                	je     185f <strings_not_equal+0x52>
    1853:	3a 45 00             	cmp    0x0(%rbp),%al
    1856:	74 ec                	je     1844 <strings_not_equal+0x37>
    1858:	ba 01 00 00 00       	mov    $0x1,%edx
    185d:	eb d2                	jmp    1831 <strings_not_equal+0x24>
    185f:	ba 00 00 00 00       	mov    $0x0,%edx
    1864:	eb cb                	jmp    1831 <strings_not_equal+0x24>
    1866:	ba 00 00 00 00       	mov    $0x0,%edx
    186b:	eb c4                	jmp    1831 <strings_not_equal+0x24>
    186d:	ba 01 00 00 00       	mov    $0x1,%edx
    1872:	eb bd                	jmp    1831 <strings_not_equal+0x24>

0000000000001874 <open_clientfd>:
    1874:	41 54                	push   %r12
    1876:	55                   	push   %rbp
    1877:	53                   	push   %rbx
    1878:	48 83 ec 10          	sub    $0x10,%rsp
    187c:	49 89 fc             	mov    %rdi,%r12
    187f:	89 f3                	mov    %esi,%ebx
    1881:	ba 00 00 00 00       	mov    $0x0,%edx
    1886:	be 01 00 00 00       	mov    $0x1,%esi
    188b:	bf 02 00 00 00       	mov    $0x2,%edi
    1890:	e8 7b f8 ff ff       	callq  1110 <socket@plt>
    1895:	85 c0                	test   %eax,%eax
    1897:	78 64                	js     18fd <open_clientfd+0x89>
    1899:	89 c5                	mov    %eax,%ebp
    189b:	4c 89 e7             	mov    %r12,%rdi
    189e:	e8 6d f7 ff ff       	callq  1010 <gethostbyname@plt>
    18a3:	48 85 c0             	test   %rax,%rax
    18a6:	74 6b                	je     1913 <open_clientfd+0x9f>
    18a8:	48 c7 04 24 00 00 00 	movq   $0x0,(%rsp)
    18af:	00 
    18b0:	48 c7 44 24 08 00 00 	movq   $0x0,0x8(%rsp)
    18b7:	00 00 
    18b9:	66 c7 04 24 02 00    	movw   $0x2,(%rsp)
    18bf:	48 63 50 14          	movslq 0x14(%rax),%rdx
    18c3:	48 8d 74 24 04       	lea    0x4(%rsp),%rsi
    18c8:	48 8b 40 18          	mov    0x18(%rax),%rax
    18cc:	48 8b 38             	mov    (%rax),%rdi
    18cf:	e8 9c f7 ff ff       	callq  1070 <bcopy@plt>
    18d4:	89 de                	mov    %ebx,%esi
    18d6:	66 c1 ce 08          	ror    $0x8,%si
    18da:	66 89 74 24 02       	mov    %si,0x2(%rsp)
    18df:	ba 10 00 00 00       	mov    $0x10,%edx
    18e4:	48 89 e6             	mov    %rsp,%rsi
    18e7:	89 ef                	mov    %ebp,%edi
    18e9:	e8 e2 f7 ff ff       	callq  10d0 <connect@plt>
    18ee:	85 c0                	test   %eax,%eax
    18f0:	78 37                	js     1929 <open_clientfd+0xb5>
    18f2:	89 e8                	mov    %ebp,%eax
    18f4:	48 83 c4 10          	add    $0x10,%rsp
    18f8:	5b                   	pop    %rbx
    18f9:	5d                   	pop    %rbp
    18fa:	41 5c                	pop    %r12
    18fc:	c3                   	retq   
    18fd:	48 8d 3d 05 0d 00 00 	lea    0xd05(%rip),%rdi        # 2609 <array.3089+0x169>
    1904:	e8 47 f6 ff ff       	callq  f50 <puts@plt>
    1909:	bf 08 00 00 00       	mov    $0x8,%edi
    190e:	e8 ad f7 ff ff       	callq  10c0 <exit@plt>
    1913:	48 8d 3d fd 0c 00 00 	lea    0xcfd(%rip),%rdi        # 2617 <array.3089+0x177>
    191a:	e8 31 f6 ff ff       	callq  f50 <puts@plt>
    191f:	bf 08 00 00 00       	mov    $0x8,%edi
    1924:	e8 97 f7 ff ff       	callq  10c0 <exit@plt>
    1929:	48 8d 3d f5 0c 00 00 	lea    0xcf5(%rip),%rdi        # 2625 <array.3089+0x185>
    1930:	e8 1b f6 ff ff       	callq  f50 <puts@plt>
    1935:	bf 08 00 00 00       	mov    $0x8,%edi
    193a:	e8 81 f7 ff ff       	callq  10c0 <exit@plt>

000000000000193f <initialize_bomb>:
    193f:	48 83 ec 08          	sub    $0x8,%rsp
    1943:	48 8d 35 2c fe ff ff 	lea    -0x1d4(%rip),%rsi        # 1776 <sig_handler>
    194a:	bf 02 00 00 00       	mov    $0x2,%edi
    194f:	e8 ac f6 ff ff       	callq  1000 <signal@plt>
    1954:	be 50 00 00 00       	mov    $0x50,%esi
    1959:	48 8d 3d d3 0c 00 00 	lea    0xcd3(%rip),%rdi        # 2633 <array.3089+0x193>
    1960:	e8 0f ff ff ff       	callq  1874 <open_clientfd>
    1965:	89 c7                	mov    %eax,%edi
    1967:	e8 54 f6 ff ff       	callq  fc0 <close@plt>
    196c:	48 83 c4 08          	add    $0x8,%rsp
    1970:	c3                   	retq   

0000000000001971 <blank_line>:
    1971:	55                   	push   %rbp
    1972:	53                   	push   %rbx
    1973:	48 83 ec 08          	sub    $0x8,%rsp
    1977:	48 89 fd             	mov    %rdi,%rbp
    197a:	0f b6 5d 00          	movzbl 0x0(%rbp),%ebx
    197e:	84 db                	test   %bl,%bl
    1980:	74 1e                	je     19a0 <blank_line+0x2f>
    1982:	e8 79 f7 ff ff       	callq  1100 <__ctype_b_loc@plt>
    1987:	48 83 c5 01          	add    $0x1,%rbp
    198b:	48 0f be db          	movsbq %bl,%rbx
    198f:	48 8b 00             	mov    (%rax),%rax
    1992:	f6 44 58 01 20       	testb  $0x20,0x1(%rax,%rbx,2)
    1997:	75 e1                	jne    197a <blank_line+0x9>
    1999:	b8 00 00 00 00       	mov    $0x0,%eax
    199e:	eb 05                	jmp    19a5 <blank_line+0x34>
    19a0:	b8 01 00 00 00       	mov    $0x1,%eax
    19a5:	48 83 c4 08          	add    $0x8,%rsp
    19a9:	5b                   	pop    %rbx
    19aa:	5d                   	pop    %rbp
    19ab:	c3                   	retq   

00000000000019ac <skip>:
    19ac:	55                   	push   %rbp
    19ad:	53                   	push   %rbx
    19ae:	48 83 ec 08          	sub    $0x8,%rsp
    19b2:	48 8d 2d 67 2e 20 00 	lea    0x202e67(%rip),%rbp        # 204820 <input_strings>
    19b9:	48 63 05 3c 2e 20 00 	movslq 0x202e3c(%rip),%rax        # 2047fc <num_input_strings>
    19c0:	48 8d 3c 80          	lea    (%rax,%rax,4),%rdi
    19c4:	48 c1 e7 04          	shl    $0x4,%rdi
    19c8:	48 01 ef             	add    %rbp,%rdi
    19cb:	48 8b 15 2e 2e 20 00 	mov    0x202e2e(%rip),%rdx        # 204800 <infile>
    19d2:	be 50 00 00 00       	mov    $0x50,%esi
    19d7:	e8 04 f6 ff ff       	callq  fe0 <fgets@plt>
    19dc:	48 89 c3             	mov    %rax,%rbx
    19df:	48 85 c0             	test   %rax,%rax
    19e2:	74 0c                	je     19f0 <skip+0x44>
    19e4:	48 89 c7             	mov    %rax,%rdi
    19e7:	e8 85 ff ff ff       	callq  1971 <blank_line>
    19ec:	85 c0                	test   %eax,%eax
    19ee:	75 c9                	jne    19b9 <skip+0xd>
    19f0:	48 89 d8             	mov    %rbx,%rax
    19f3:	48 83 c4 08          	add    $0x8,%rsp
    19f7:	5b                   	pop    %rbx
    19f8:	5d                   	pop    %rbp
    19f9:	c3                   	retq   

00000000000019fa <writen>:
    19fa:	41 56                	push   %r14
    19fc:	41 55                	push   %r13
    19fe:	41 54                	push   %r12
    1a00:	55                   	push   %rbp
    1a01:	53                   	push   %rbx
    1a02:	49 89 d5             	mov    %rdx,%r13
    1a05:	48 85 d2             	test   %rdx,%rdx
    1a08:	74 3b                	je     1a45 <writen+0x4b>
    1a0a:	41 89 fc             	mov    %edi,%r12d
    1a0d:	48 89 f5             	mov    %rsi,%rbp
    1a10:	48 89 d3             	mov    %rdx,%rbx
    1a13:	41 be 00 00 00 00    	mov    $0x0,%r14d
    1a19:	eb 08                	jmp    1a23 <writen+0x29>
    1a1b:	48 01 c5             	add    %rax,%rbp
    1a1e:	48 29 c3             	sub    %rax,%rbx
    1a21:	74 22                	je     1a45 <writen+0x4b>
    1a23:	48 89 da             	mov    %rbx,%rdx
    1a26:	48 89 ee             	mov    %rbp,%rsi
    1a29:	44 89 e7             	mov    %r12d,%edi
    1a2c:	e8 2f f5 ff ff       	callq  f60 <write@plt>
    1a31:	48 85 c0             	test   %rax,%rax
    1a34:	7f e5                	jg     1a1b <writen+0x21>
    1a36:	e8 f5 f4 ff ff       	callq  f30 <__errno_location@plt>
    1a3b:	83 38 04             	cmpl   $0x4,(%rax)
    1a3e:	75 11                	jne    1a51 <writen+0x57>
    1a40:	4c 89 f0             	mov    %r14,%rax
    1a43:	eb d6                	jmp    1a1b <writen+0x21>
    1a45:	4c 89 e8             	mov    %r13,%rax
    1a48:	5b                   	pop    %rbx
    1a49:	5d                   	pop    %rbp
    1a4a:	41 5c                	pop    %r12
    1a4c:	41 5d                	pop    %r13
    1a4e:	41 5e                	pop    %r14
    1a50:	c3                   	retq   
    1a51:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
    1a58:	eb ee                	jmp    1a48 <writen+0x4e>

0000000000001a5a <send_msg>:
    1a5a:	41 57                	push   %r15
    1a5c:	41 56                	push   %r14
    1a5e:	41 55                	push   %r13
    1a60:	41 54                	push   %r12
    1a62:	55                   	push   %rbp
    1a63:	53                   	push   %rbx
    1a64:	48 81 ec 68 24 00 00 	sub    $0x2468,%rsp
    1a6b:	41 89 fc             	mov    %edi,%r12d
    1a6e:	ba 00 00 00 00       	mov    $0x0,%edx
    1a73:	be 01 00 00 00       	mov    $0x1,%esi
    1a78:	bf 02 00 00 00       	mov    $0x2,%edi
    1a7d:	e8 8e f6 ff ff       	callq  1110 <socket@plt>
    1a82:	41 89 c7             	mov    %eax,%r15d
    1a85:	85 c0                	test   %eax,%eax
    1a87:	0f 88 2a 02 00 00    	js     1cb7 <send_msg+0x25d>
    1a8d:	48 c7 84 24 50 24 00 	movq   $0x0,0x2450(%rsp)
    1a94:	00 00 00 00 00 
    1a99:	48 c7 84 24 58 24 00 	movq   $0x0,0x2458(%rsp)
    1aa0:	00 00 00 00 00 
    1aa5:	66 c7 84 24 50 24 00 	movw   $0x2,0x2450(%rsp)
    1aac:	00 02 00 
    1aaf:	66 c7 84 24 52 24 00 	movw   $0x7ac8,0x2452(%rsp)
    1ab6:	00 c8 7a 
    1ab9:	48 8d 94 24 54 24 00 	lea    0x2454(%rsp),%rdx
    1ac0:	00 
    1ac1:	48 8d 35 6b 0b 00 00 	lea    0xb6b(%rip),%rsi        # 2633 <array.3089+0x193>
    1ac8:	bf 02 00 00 00       	mov    $0x2,%edi
    1acd:	b8 00 00 00 00       	mov    $0x0,%eax
    1ad2:	e8 69 f5 ff ff       	callq  1040 <inet_pton@plt>
    1ad7:	85 c0                	test   %eax,%eax
    1ad9:	0f 88 09 02 00 00    	js     1ce8 <send_msg+0x28e>
    1adf:	48 8d b4 24 50 24 00 	lea    0x2450(%rsp),%rsi
    1ae6:	00 
    1ae7:	ba 10 00 00 00       	mov    $0x10,%edx
    1aec:	44 89 ff             	mov    %r15d,%edi
    1aef:	e8 dc f5 ff ff       	callq  10d0 <connect@plt>
    1af4:	85 c0                	test   %eax,%eax
    1af6:	0f 88 22 02 00 00    	js     1d1e <send_msg+0x2c4>
    1afc:	48 8d 6c 24 50       	lea    0x50(%rsp),%rbp
    1b01:	48 b8 53 75 62 6a 65 	movabs $0x3a7463656a627553,%rax
    1b08:	63 74 3a 
    1b0b:	48 89 44 24 50       	mov    %rax,0x50(%rsp)
    1b10:	48 b8 20 42 6f 6d 62 	movabs $0x6f6e20626d6f4220,%rax
    1b17:	20 6e 6f 
    1b1a:	48 89 44 24 58       	mov    %rax,0x58(%rsp)
    1b1f:	48 b8 74 69 66 69 63 	movabs $0x6974616369666974,%rax
    1b26:	61 74 69 
    1b29:	48 89 44 24 60       	mov    %rax,0x60(%rsp)
    1b2e:	c7 44 24 68 6f 6e 0a 	movl   $0xa6e6f,0x68(%rsp)
    1b35:	00 
    1b36:	48 8d 9c 24 50 04 00 	lea    0x450(%rsp),%rbx
    1b3d:	00 
    1b3e:	48 89 ee             	mov    %rbp,%rsi
    1b41:	48 89 df             	mov    %rbx,%rdi
    1b44:	e8 57 f5 ff ff       	callq  10a0 <strcat@plt>
    1b49:	66 c7 44 24 50 0a 00 	movw   $0xa,0x50(%rsp)
    1b50:	48 89 ee             	mov    %rbp,%rsi
    1b53:	48 89 df             	mov    %rbx,%rdi
    1b56:	e8 45 f5 ff ff       	callq  10a0 <strcat@plt>
    1b5b:	bf 00 00 00 00       	mov    $0x0,%edi
    1b60:	e8 1b f5 ff ff       	callq  1080 <cuserid@plt>
    1b65:	48 85 c0             	test   %rax,%rax
    1b68:	0f 84 e6 01 00 00    	je     1d54 <send_msg+0x2fa>
    1b6e:	48 89 e7             	mov    %rsp,%rdi
    1b71:	48 89 c6             	mov    %rax,%rsi
    1b74:	e8 c7 f3 ff ff       	callq  f40 <strcpy@plt>
    1b79:	45 85 e4             	test   %r12d,%r12d
    1b7c:	48 8d 05 c6 0a 00 00 	lea    0xac6(%rip),%rax        # 2649 <array.3089+0x1a9>
    1b83:	4c 8d 0d b7 0a 00 00 	lea    0xab7(%rip),%r9        # 2641 <array.3089+0x1a1>
    1b8a:	4c 0f 44 c8          	cmove  %rax,%r9
    1b8e:	48 8d 5c 24 50       	lea    0x50(%rsp),%rbx
    1b93:	48 83 ec 08          	sub    $0x8,%rsp
    1b97:	8b 05 5f 2c 20 00    	mov    0x202c5f(%rip),%eax        # 2047fc <num_input_strings>
    1b9d:	50                   	push   %rax
    1b9e:	4c 8d 44 24 10       	lea    0x10(%rsp),%r8
    1ba3:	8b 0d b7 2a 20 00    	mov    0x202ab7(%rip),%ecx        # 204660 <bomb_id>
    1ba9:	48 8d 15 b0 26 20 00 	lea    0x2026b0(%rip),%rdx        # 204260 <lab_id>
    1bb0:	48 8d 35 b6 0a 00 00 	lea    0xab6(%rip),%rsi        # 266d <array.3089+0x1cd>
    1bb7:	48 89 df             	mov    %rbx,%rdi
    1bba:	b8 00 00 00 00       	mov    $0x0,%eax
    1bbf:	e8 ec f4 ff ff       	callq  10b0 <sprintf@plt>
    1bc4:	48 8d bc 24 60 04 00 	lea    0x460(%rsp),%rdi
    1bcb:	00 
    1bcc:	48 89 de             	mov    %rbx,%rsi
    1bcf:	e8 cc f4 ff ff       	callq  10a0 <strcat@plt>
    1bd4:	48 83 c4 10          	add    $0x10,%rsp
    1bd8:	83 3d 1d 2c 20 00 00 	cmpl   $0x0,0x202c1d(%rip)        # 2047fc <num_input_strings>
    1bdf:	7e 70                	jle    1c51 <send_msg+0x1f7>
    1be1:	bb 00 00 00 00       	mov    $0x0,%ebx
    1be6:	4c 8d 35 33 2c 20 00 	lea    0x202c33(%rip),%r14        # 204820 <input_strings>
    1bed:	49 89 e5             	mov    %rsp,%r13
    1bf0:	48 8d 6c 24 50       	lea    0x50(%rsp),%rbp
    1bf5:	4c 8d a4 24 50 04 00 	lea    0x450(%rsp),%r12
    1bfc:	00 
    1bfd:	48 63 c3             	movslq %ebx,%rax
    1c00:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
    1c04:	48 c1 e0 04          	shl    $0x4,%rax
    1c08:	4c 01 f0             	add    %r14,%rax
    1c0b:	83 c3 01             	add    $0x1,%ebx
    1c0e:	48 83 ec 08          	sub    $0x8,%rsp
    1c12:	50                   	push   %rax
    1c13:	41 89 d9             	mov    %ebx,%r9d
    1c16:	4d 89 e8             	mov    %r13,%r8
    1c19:	8b 0d 41 2a 20 00    	mov    0x202a41(%rip),%ecx        # 204660 <bomb_id>
    1c1f:	48 8d 15 3a 26 20 00 	lea    0x20263a(%rip),%rdx        # 204260 <lab_id>
    1c26:	48 8d 35 5c 0a 00 00 	lea    0xa5c(%rip),%rsi        # 2689 <array.3089+0x1e9>
    1c2d:	48 89 ef             	mov    %rbp,%rdi
    1c30:	b8 00 00 00 00       	mov    $0x0,%eax
    1c35:	e8 76 f4 ff ff       	callq  10b0 <sprintf@plt>
    1c3a:	48 89 ee             	mov    %rbp,%rsi
    1c3d:	4c 89 e7             	mov    %r12,%rdi
    1c40:	e8 5b f4 ff ff       	callq  10a0 <strcat@plt>
    1c45:	48 83 c4 10          	add    $0x10,%rsp
    1c49:	39 1d ad 2b 20 00    	cmp    %ebx,0x202bad(%rip)        # 2047fc <num_input_strings>
    1c4f:	7f ac                	jg     1bfd <send_msg+0x1a3>
    1c51:	48 8d ac 24 50 04 00 	lea    0x450(%rsp),%rbp
    1c58:	00 
    1c59:	49 c7 c4 ff ff ff ff 	mov    $0xffffffffffffffff,%r12
    1c60:	bb 00 00 00 00       	mov    $0x0,%ebx
    1c65:	4c 89 e1             	mov    %r12,%rcx
    1c68:	48 89 ef             	mov    %rbp,%rdi
    1c6b:	89 d8                	mov    %ebx,%eax
    1c6d:	f2 ae                	repnz scas %es:(%rdi),%al
    1c6f:	48 f7 d1             	not    %rcx
    1c72:	4a 8d 14 21          	lea    (%rcx,%r12,1),%rdx
    1c76:	48 89 ee             	mov    %rbp,%rsi
    1c79:	44 89 ff             	mov    %r15d,%edi
    1c7c:	e8 79 fd ff ff       	callq  19fa <writen>
    1c81:	48 89 c2             	mov    %rax,%rdx
    1c84:	4c 89 e1             	mov    %r12,%rcx
    1c87:	48 89 ef             	mov    %rbp,%rdi
    1c8a:	89 d8                	mov    %ebx,%eax
    1c8c:	f2 ae                	repnz scas %es:(%rdi),%al
    1c8e:	48 f7 d1             	not    %rcx
    1c91:	4c 01 e1             	add    %r12,%rcx
    1c94:	48 39 ca             	cmp    %rcx,%rdx
    1c97:	0f 82 cf 00 00 00    	jb     1d6c <send_msg+0x312>
    1c9d:	44 89 ff             	mov    %r15d,%edi
    1ca0:	e8 1b f3 ff ff       	callq  fc0 <close@plt>
    1ca5:	48 81 c4 68 24 00 00 	add    $0x2468,%rsp
    1cac:	5b                   	pop    %rbx
    1cad:	5d                   	pop    %rbp
    1cae:	41 5c                	pop    %r12
    1cb0:	41 5d                	pop    %r13
    1cb2:	41 5e                	pop    %r14
    1cb4:	41 5f                	pop    %r15
    1cb6:	c3                   	retq   
    1cb7:	48 8d 15 94 09 00 00 	lea    0x994(%rip),%rdx        # 2652 <array.3089+0x1b2>
    1cbe:	48 8d 35 18 06 00 00 	lea    0x618(%rip),%rsi        # 22dd <_IO_stdin_used+0x1d>
    1cc5:	48 8b 3d 14 2b 20 00 	mov    0x202b14(%rip),%rdi        # 2047e0 <stdout@@GLIBC_2.2.5>
    1ccc:	b8 00 00 00 00       	mov    $0x0,%eax
    1cd1:	e8 4a f3 ff ff       	callq  1020 <fprintf@plt>
    1cd6:	44 89 ff             	mov    %r15d,%edi
    1cd9:	e8 e2 f2 ff ff       	callq  fc0 <close@plt>
    1cde:	bf 01 00 00 00       	mov    $0x1,%edi
    1ce3:	e8 d8 f3 ff ff       	callq  10c0 <exit@plt>
    1ce8:	48 8d 15 d7 09 00 00 	lea    0x9d7(%rip),%rdx        # 26c6 <array.3089+0x226>
    1cef:	48 8d 35 e7 05 00 00 	lea    0x5e7(%rip),%rsi        # 22dd <_IO_stdin_used+0x1d>
    1cf6:	48 8b 3d e3 2a 20 00 	mov    0x202ae3(%rip),%rdi        # 2047e0 <stdout@@GLIBC_2.2.5>
    1cfd:	b8 00 00 00 00       	mov    $0x0,%eax
    1d02:	e8 19 f3 ff ff       	callq  1020 <fprintf@plt>
    1d07:	45 85 ff             	test   %r15d,%r15d
    1d0a:	74 08                	je     1d14 <send_msg+0x2ba>
    1d0c:	44 89 ff             	mov    %r15d,%edi
    1d0f:	e8 ac f2 ff ff       	callq  fc0 <close@plt>
    1d14:	bf 01 00 00 00       	mov    $0x1,%edi
    1d19:	e8 a2 f3 ff ff       	callq  10c0 <exit@plt>
    1d1e:	48 8d 15 3a 09 00 00 	lea    0x93a(%rip),%rdx        # 265f <array.3089+0x1bf>
    1d25:	48 8d 35 b1 05 00 00 	lea    0x5b1(%rip),%rsi        # 22dd <_IO_stdin_used+0x1d>
    1d2c:	48 8b 3d ad 2a 20 00 	mov    0x202aad(%rip),%rdi        # 2047e0 <stdout@@GLIBC_2.2.5>
    1d33:	b8 00 00 00 00       	mov    $0x0,%eax
    1d38:	e8 e3 f2 ff ff       	callq  1020 <fprintf@plt>
    1d3d:	45 85 ff             	test   %r15d,%r15d
    1d40:	74 08                	je     1d4a <send_msg+0x2f0>
    1d42:	44 89 ff             	mov    %r15d,%edi
    1d45:	e8 76 f2 ff ff       	callq  fc0 <close@plt>
    1d4a:	bf 01 00 00 00       	mov    $0x1,%edi
    1d4f:	e8 6c f3 ff ff       	callq  10c0 <exit@plt>
    1d54:	c7 04 24 6e 6f 62 6f 	movl   $0x6f626f6e,(%rsp)
    1d5b:	66 c7 44 24 04 64 79 	movw   $0x7964,0x4(%rsp)
    1d62:	c6 44 24 06 00       	movb   $0x0,0x6(%rsp)
    1d67:	e9 0d fe ff ff       	jmpq   1b79 <send_msg+0x11f>
    1d6c:	48 8d 15 32 09 00 00 	lea    0x932(%rip),%rdx        # 26a5 <array.3089+0x205>
    1d73:	48 8d 35 63 05 00 00 	lea    0x563(%rip),%rsi        # 22dd <_IO_stdin_used+0x1d>
    1d7a:	48 8b 3d 5f 2a 20 00 	mov    0x202a5f(%rip),%rdi        # 2047e0 <stdout@@GLIBC_2.2.5>
    1d81:	e8 9a f2 ff ff       	callq  1020 <fprintf@plt>
    1d86:	45 85 ff             	test   %r15d,%r15d
    1d89:	74 08                	je     1d93 <send_msg+0x339>
    1d8b:	44 89 ff             	mov    %r15d,%edi
    1d8e:	e8 2d f2 ff ff       	callq  fc0 <close@plt>
    1d93:	bf 01 00 00 00       	mov    $0x1,%edi
    1d98:	e8 23 f3 ff ff       	callq  10c0 <exit@plt>

0000000000001d9d <send_msg_2>:
    1d9d:	41 57                	push   %r15
    1d9f:	41 56                	push   %r14
    1da1:	41 55                	push   %r13
    1da3:	41 54                	push   %r12
    1da5:	55                   	push   %rbp
    1da6:	53                   	push   %rbx
    1da7:	48 83 ec 68          	sub    $0x68,%rsp
    1dab:	89 fb                	mov    %edi,%ebx
    1dad:	bf 00 00 00 00       	mov    $0x0,%edi
    1db2:	e8 f9 f1 ff ff       	callq  fb0 <dup@plt>
    1db7:	89 44 24 0c          	mov    %eax,0xc(%rsp)
    1dbb:	83 f8 ff             	cmp    $0xffffffff,%eax
    1dbe:	0f 84 a6 01 00 00    	je     1f6a <send_msg_2+0x1cd>
    1dc4:	bf 00 00 00 00       	mov    $0x0,%edi
    1dc9:	e8 f2 f1 ff ff       	callq  fc0 <close@plt>
    1dce:	83 f8 ff             	cmp    $0xffffffff,%eax
    1dd1:	0f 84 a9 01 00 00    	je     1f80 <send_msg_2+0x1e3>
    1dd7:	e8 14 f2 ff ff       	callq  ff0 <tmpfile@plt>
    1ddc:	48 89 c5             	mov    %rax,%rbp
    1ddf:	48 85 c0             	test   %rax,%rax
    1de2:	0f 84 ae 01 00 00    	je     1f96 <send_msg_2+0x1f9>
    1de8:	48 89 c1             	mov    %rax,%rcx
    1deb:	ba 1b 00 00 00       	mov    $0x1b,%edx
    1df0:	be 01 00 00 00       	mov    $0x1,%esi
    1df5:	48 8d 3d f8 08 00 00 	lea    0x8f8(%rip),%rdi        # 26f4 <array.3089+0x254>
    1dfc:	e8 df f2 ff ff       	callq  10e0 <fwrite@plt>
    1e01:	48 89 ee             	mov    %rbp,%rsi
    1e04:	bf 0a 00 00 00       	mov    $0xa,%edi
    1e09:	e8 c2 f1 ff ff       	callq  fd0 <fputc@plt>
    1e0e:	bf 00 00 00 00       	mov    $0x0,%edi
    1e13:	e8 68 f2 ff ff       	callq  1080 <cuserid@plt>
    1e18:	48 85 c0             	test   %rax,%rax
    1e1b:	0f 84 8b 01 00 00    	je     1fac <send_msg_2+0x20f>
    1e21:	48 8d 7c 24 10       	lea    0x10(%rsp),%rdi
    1e26:	48 89 c6             	mov    %rax,%rsi
    1e29:	e8 12 f1 ff ff       	callq  f40 <strcpy@plt>
    1e2e:	85 db                	test   %ebx,%ebx
    1e30:	48 8d 05 12 08 00 00 	lea    0x812(%rip),%rax        # 2649 <array.3089+0x1a9>
    1e37:	4c 8d 0d 03 08 00 00 	lea    0x803(%rip),%r9        # 2641 <array.3089+0x1a1>
    1e3e:	4c 0f 44 c8          	cmove  %rax,%r9
    1e42:	48 83 ec 08          	sub    $0x8,%rsp
    1e46:	8b 05 b0 29 20 00    	mov    0x2029b0(%rip),%eax        # 2047fc <num_input_strings>
    1e4c:	50                   	push   %rax
    1e4d:	4c 8d 44 24 20       	lea    0x20(%rsp),%r8
    1e52:	8b 0d 08 28 20 00    	mov    0x202808(%rip),%ecx        # 204660 <bomb_id>
    1e58:	48 8d 15 01 24 20 00 	lea    0x202401(%rip),%rdx        # 204260 <lab_id>
    1e5f:	48 8d 35 07 08 00 00 	lea    0x807(%rip),%rsi        # 266d <array.3089+0x1cd>
    1e66:	48 89 ef             	mov    %rbp,%rdi
    1e69:	b8 00 00 00 00       	mov    $0x0,%eax
    1e6e:	e8 ad f1 ff ff       	callq  1020 <fprintf@plt>
    1e73:	48 83 c4 10          	add    $0x10,%rsp
    1e77:	83 3d 7e 29 20 00 00 	cmpl   $0x0,0x20297e(%rip)        # 2047fc <num_input_strings>
    1e7e:	7e 60                	jle    1ee0 <send_msg_2+0x143>
    1e80:	bb 00 00 00 00       	mov    $0x0,%ebx
    1e85:	4c 8d 3d 94 29 20 00 	lea    0x202994(%rip),%r15        # 204820 <input_strings>
    1e8c:	4c 8d 74 24 10       	lea    0x10(%rsp),%r14
    1e91:	4c 8d 2d c8 23 20 00 	lea    0x2023c8(%rip),%r13        # 204260 <lab_id>
    1e98:	4c 8d 25 ea 07 00 00 	lea    0x7ea(%rip),%r12        # 2689 <array.3089+0x1e9>
    1e9f:	48 63 c3             	movslq %ebx,%rax
    1ea2:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
    1ea6:	48 c1 e0 04          	shl    $0x4,%rax
    1eaa:	4c 01 f8             	add    %r15,%rax
    1ead:	83 c3 01             	add    $0x1,%ebx
    1eb0:	48 83 ec 08          	sub    $0x8,%rsp
    1eb4:	50                   	push   %rax
    1eb5:	41 89 d9             	mov    %ebx,%r9d
    1eb8:	4d 89 f0             	mov    %r14,%r8
    1ebb:	8b 0d 9f 27 20 00    	mov    0x20279f(%rip),%ecx        # 204660 <bomb_id>
    1ec1:	4c 89 ea             	mov    %r13,%rdx
    1ec4:	4c 89 e6             	mov    %r12,%rsi
    1ec7:	48 89 ef             	mov    %rbp,%rdi
    1eca:	b8 00 00 00 00       	mov    $0x0,%eax
    1ecf:	e8 4c f1 ff ff       	callq  1020 <fprintf@plt>
    1ed4:	48 83 c4 10          	add    $0x10,%rsp
    1ed8:	39 1d 1e 29 20 00    	cmp    %ebx,0x20291e(%rip)        # 2047fc <num_input_strings>
    1ede:	7f bf                	jg     1e9f <send_msg_2+0x102>
    1ee0:	48 89 ef             	mov    %rbp,%rdi
    1ee3:	e8 b8 f0 ff ff       	callq  fa0 <rewind@plt>
    1ee8:	4c 8d 05 21 08 00 00 	lea    0x821(%rip),%r8        # 2710 <array.3089+0x270>
    1eef:	48 8d 0d 24 08 00 00 	lea    0x824(%rip),%rcx        # 271a <array.3089+0x27a>
    1ef6:	48 8d 15 25 08 00 00 	lea    0x825(%rip),%rdx        # 2722 <array.3089+0x282>
    1efd:	48 8d 35 35 08 00 00 	lea    0x835(%rip),%rsi        # 2739 <array.3089+0x299>
    1f04:	48 8d 3d 55 2f 20 00 	lea    0x202f55(%rip),%rdi        # 204e60 <scratch>
    1f0b:	b8 00 00 00 00       	mov    $0x0,%eax
    1f10:	e8 9b f1 ff ff       	callq  10b0 <sprintf@plt>
    1f15:	48 8d 3d 44 2f 20 00 	lea    0x202f44(%rip),%rdi        # 204e60 <scratch>
    1f1c:	e8 5f f0 ff ff       	callq  f80 <system@plt>
    1f21:	85 c0                	test   %eax,%eax
    1f23:	0f 85 9c 00 00 00    	jne    1fc5 <send_msg_2+0x228>
    1f29:	48 89 ef             	mov    %rbp,%rdi
    1f2c:	e8 3f f0 ff ff       	callq  f70 <fclose@plt>
    1f31:	85 c0                	test   %eax,%eax
    1f33:	0f 85 a2 00 00 00    	jne    1fdb <send_msg_2+0x23e>
    1f39:	8b 7c 24 0c          	mov    0xc(%rsp),%edi
    1f3d:	e8 6e f0 ff ff       	callq  fb0 <dup@plt>
    1f42:	85 c0                	test   %eax,%eax
    1f44:	0f 85 a7 00 00 00    	jne    1ff1 <send_msg_2+0x254>
    1f4a:	8b 7c 24 0c          	mov    0xc(%rsp),%edi
    1f4e:	e8 6d f0 ff ff       	callq  fc0 <close@plt>
    1f53:	85 c0                	test   %eax,%eax
    1f55:	0f 85 ac 00 00 00    	jne    2007 <send_msg_2+0x26a>
    1f5b:	48 83 c4 68          	add    $0x68,%rsp
    1f5f:	5b                   	pop    %rbx
    1f60:	5d                   	pop    %rbp
    1f61:	41 5c                	pop    %r12
    1f63:	41 5d                	pop    %r13
    1f65:	41 5e                	pop    %r14
    1f67:	41 5f                	pop    %r15
    1f69:	c3                   	retq   
    1f6a:	48 8d 3d 47 07 00 00 	lea    0x747(%rip),%rdi        # 26b8 <array.3089+0x218>
    1f71:	e8 da ef ff ff       	callq  f50 <puts@plt>
    1f76:	bf 08 00 00 00       	mov    $0x8,%edi
    1f7b:	e8 40 f1 ff ff       	callq  10c0 <exit@plt>
    1f80:	48 8d 3d 45 07 00 00 	lea    0x745(%rip),%rdi        # 26cc <array.3089+0x22c>
    1f87:	e8 c4 ef ff ff       	callq  f50 <puts@plt>
    1f8c:	bf 08 00 00 00       	mov    $0x8,%edi
    1f91:	e8 2a f1 ff ff       	callq  10c0 <exit@plt>
    1f96:	48 8d 3d 42 07 00 00 	lea    0x742(%rip),%rdi        # 26df <array.3089+0x23f>
    1f9d:	e8 ae ef ff ff       	callq  f50 <puts@plt>
    1fa2:	bf 08 00 00 00       	mov    $0x8,%edi
    1fa7:	e8 14 f1 ff ff       	callq  10c0 <exit@plt>
    1fac:	c7 44 24 10 6e 6f 62 	movl   $0x6f626f6e,0x10(%rsp)
    1fb3:	6f 
    1fb4:	66 c7 44 24 14 64 79 	movw   $0x7964,0x14(%rsp)
    1fbb:	c6 44 24 16 00       	movb   $0x0,0x16(%rsp)
    1fc0:	e9 69 fe ff ff       	jmpq   1e2e <send_msg_2+0x91>
    1fc5:	48 8d 3d 76 07 00 00 	lea    0x776(%rip),%rdi        # 2742 <array.3089+0x2a2>
    1fcc:	e8 7f ef ff ff       	callq  f50 <puts@plt>
    1fd1:	bf 08 00 00 00       	mov    $0x8,%edi
    1fd6:	e8 e5 f0 ff ff       	callq  10c0 <exit@plt>
    1fdb:	48 8d 3d 7a 07 00 00 	lea    0x77a(%rip),%rdi        # 275c <array.3089+0x2bc>
    1fe2:	e8 69 ef ff ff       	callq  f50 <puts@plt>
    1fe7:	bf 08 00 00 00       	mov    $0x8,%edi
    1fec:	e8 cf f0 ff ff       	callq  10c0 <exit@plt>
    1ff1:	48 8d 3d 7d 07 00 00 	lea    0x77d(%rip),%rdi        # 2775 <array.3089+0x2d5>
    1ff8:	e8 53 ef ff ff       	callq  f50 <puts@plt>
    1ffd:	bf 08 00 00 00       	mov    $0x8,%edi
    2002:	e8 b9 f0 ff ff       	callq  10c0 <exit@plt>
    2007:	48 8d 3d 82 07 00 00 	lea    0x782(%rip),%rdi        # 2790 <array.3089+0x2f0>
    200e:	e8 3d ef ff ff       	callq  f50 <puts@plt>
    2013:	bf 08 00 00 00       	mov    $0x8,%edi
    2018:	e8 a3 f0 ff ff       	callq  10c0 <exit@plt>

000000000000201d <explode_bomb>:
    201d:	48 83 ec 08          	sub    $0x8,%rsp
    2021:	48 8d 3d 7f 07 00 00 	lea    0x77f(%rip),%rdi        # 27a7 <array.3089+0x307>
    2028:	e8 23 ef ff ff       	callq  f50 <puts@plt>
    202d:	48 8d 3d 7c 07 00 00 	lea    0x77c(%rip),%rdi        # 27b0 <array.3089+0x310>
    2034:	e8 17 ef ff ff       	callq  f50 <puts@plt>
    2039:	bf 00 00 00 00       	mov    $0x0,%edi
    203e:	e8 17 fa ff ff       	callq  1a5a <send_msg>
    2043:	48 8d 3d 9e 04 00 00 	lea    0x49e(%rip),%rdi        # 24e8 <array.3089+0x48>
    204a:	e8 01 ef ff ff       	callq  f50 <puts@plt>
    204f:	bf 08 00 00 00       	mov    $0x8,%edi
    2054:	e8 67 f0 ff ff       	callq  10c0 <exit@plt>

0000000000002059 <read_six_numbers>:
    2059:	48 83 ec 08          	sub    $0x8,%rsp
    205d:	48 89 f2             	mov    %rsi,%rdx
    2060:	48 8d 4e 04          	lea    0x4(%rsi),%rcx
    2064:	48 8d 46 14          	lea    0x14(%rsi),%rax
    2068:	50                   	push   %rax
    2069:	48 8d 46 10          	lea    0x10(%rsi),%rax
    206d:	50                   	push   %rax
    206e:	4c 8d 4e 0c          	lea    0xc(%rsi),%r9
    2072:	4c 8d 46 08          	lea    0x8(%rsi),%r8
    2076:	48 8d 35 4a 07 00 00 	lea    0x74a(%rip),%rsi        # 27c7 <array.3089+0x327>
    207d:	b8 00 00 00 00       	mov    $0x0,%eax
    2082:	e8 d9 ef ff ff       	callq  1060 <__isoc99_sscanf@plt>
    2087:	48 83 c4 10          	add    $0x10,%rsp
    208b:	83 f8 05             	cmp    $0x5,%eax
    208e:	7e 05                	jle    2095 <read_six_numbers+0x3c>
    2090:	48 83 c4 08          	add    $0x8,%rsp
    2094:	c3                   	retq   
    2095:	e8 83 ff ff ff       	callq  201d <explode_bomb>

000000000000209a <read_line>:
    209a:	48 83 ec 08          	sub    $0x8,%rsp
    209e:	b8 00 00 00 00       	mov    $0x0,%eax
    20a3:	e8 04 f9 ff ff       	callq  19ac <skip>
    20a8:	48 85 c0             	test   %rax,%rax
    20ab:	74 6f                	je     211c <read_line+0x82>
    20ad:	8b 35 49 27 20 00    	mov    0x202749(%rip),%esi        # 2047fc <num_input_strings>
    20b3:	48 63 c6             	movslq %esi,%rax
    20b6:	48 8d 14 80          	lea    (%rax,%rax,4),%rdx
    20ba:	48 c1 e2 04          	shl    $0x4,%rdx
    20be:	48 8d 05 5b 27 20 00 	lea    0x20275b(%rip),%rax        # 204820 <input_strings>
    20c5:	48 01 c2             	add    %rax,%rdx
    20c8:	b8 00 00 00 00       	mov    $0x0,%eax
    20cd:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
    20d4:	48 89 d7             	mov    %rdx,%rdi
    20d7:	f2 ae                	repnz scas %es:(%rdi),%al
    20d9:	48 f7 d1             	not    %rcx
    20dc:	48 83 e9 01          	sub    $0x1,%rcx
    20e0:	83 f9 4f             	cmp    $0x4f,%ecx
    20e3:	0f 84 a1 00 00 00    	je     218a <read_line+0xf0>
    20e9:	83 e9 01             	sub    $0x1,%ecx
    20ec:	48 63 c9             	movslq %ecx,%rcx
    20ef:	48 63 c6             	movslq %esi,%rax
    20f2:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
    20f6:	48 c1 e0 04          	shl    $0x4,%rax
    20fa:	48 89 c7             	mov    %rax,%rdi
    20fd:	48 8d 05 1c 27 20 00 	lea    0x20271c(%rip),%rax        # 204820 <input_strings>
    2104:	48 01 f8             	add    %rdi,%rax
    2107:	c6 04 08 00          	movb   $0x0,(%rax,%rcx,1)
    210b:	83 c6 01             	add    $0x1,%esi
    210e:	89 35 e8 26 20 00    	mov    %esi,0x2026e8(%rip)        # 2047fc <num_input_strings>
    2114:	48 89 d0             	mov    %rdx,%rax
    2117:	48 83 c4 08          	add    $0x8,%rsp
    211b:	c3                   	retq   
    211c:	48 8b 05 cd 26 20 00 	mov    0x2026cd(%rip),%rax        # 2047f0 <stdin@@GLIBC_2.2.5>
    2123:	48 39 05 d6 26 20 00 	cmp    %rax,0x2026d6(%rip)        # 204800 <infile>
    212a:	74 43                	je     216f <read_line+0xd5>
    212c:	48 8d 3d c4 06 00 00 	lea    0x6c4(%rip),%rdi        # 27f7 <array.3089+0x357>
    2133:	e8 e8 ed ff ff       	callq  f20 <getenv@plt>
    2138:	48 85 c0             	test   %rax,%rax
    213b:	75 43                	jne    2180 <read_line+0xe6>
    213d:	48 8b 05 ac 26 20 00 	mov    0x2026ac(%rip),%rax        # 2047f0 <stdin@@GLIBC_2.2.5>
    2144:	48 89 05 b5 26 20 00 	mov    %rax,0x2026b5(%rip)        # 204800 <infile>
    214b:	b8 00 00 00 00       	mov    $0x0,%eax
    2150:	e8 57 f8 ff ff       	callq  19ac <skip>
    2155:	48 85 c0             	test   %rax,%rax
    2158:	0f 85 4f ff ff ff    	jne    20ad <read_line+0x13>
    215e:	48 8d 3d 74 06 00 00 	lea    0x674(%rip),%rdi        # 27d9 <array.3089+0x339>
    2165:	e8 e6 ed ff ff       	callq  f50 <puts@plt>
    216a:	e8 ae fe ff ff       	callq  201d <explode_bomb>
    216f:	48 8d 3d 63 06 00 00 	lea    0x663(%rip),%rdi        # 27d9 <array.3089+0x339>
    2176:	e8 d5 ed ff ff       	callq  f50 <puts@plt>
    217b:	e8 9d fe ff ff       	callq  201d <explode_bomb>
    2180:	bf 00 00 00 00       	mov    $0x0,%edi
    2185:	e8 36 ef ff ff       	callq  10c0 <exit@plt>
    218a:	48 8d 3d 71 06 00 00 	lea    0x671(%rip),%rdi        # 2802 <array.3089+0x362>
    2191:	e8 ba ed ff ff       	callq  f50 <puts@plt>
    2196:	e8 82 fe ff ff       	callq  201d <explode_bomb>

000000000000219b <phase_defused>:
    219b:	48 83 ec 68          	sub    $0x68,%rsp
    219f:	bf 01 00 00 00       	mov    $0x1,%edi
    21a4:	e8 b1 f8 ff ff       	callq  1a5a <send_msg>
    21a9:	83 3d 4c 26 20 00 06 	cmpl   $0x6,0x20264c(%rip)        # 2047fc <num_input_strings>
    21b0:	74 05                	je     21b7 <phase_defused+0x1c>
    21b2:	48 83 c4 68          	add    $0x68,%rsp
    21b6:	c3                   	retq   
    21b7:	48 8d 4c 24 10       	lea    0x10(%rsp),%rcx
    21bc:	48 8d 54 24 0c       	lea    0xc(%rsp),%rdx
    21c1:	48 8d 35 55 06 00 00 	lea    0x655(%rip),%rsi        # 281d <array.3089+0x37d>
    21c8:	48 8d 3d 41 27 20 00 	lea    0x202741(%rip),%rdi        # 204910 <input_strings+0xf0>
    21cf:	b8 00 00 00 00       	mov    $0x0,%eax
    21d4:	e8 87 ee ff ff       	callq  1060 <__isoc99_sscanf@plt>
    21d9:	83 f8 02             	cmp    $0x2,%eax
    21dc:	74 1a                	je     21f8 <phase_defused+0x5d>
    21de:	48 8d 3d 8b 03 00 00 	lea    0x38b(%rip),%rdi        # 2570 <array.3089+0xd0>
    21e5:	e8 66 ed ff ff       	callq  f50 <puts@plt>
    21ea:	48 8d 3d af 03 00 00 	lea    0x3af(%rip),%rdi        # 25a0 <array.3089+0x100>
    21f1:	e8 5a ed ff ff       	callq  f50 <puts@plt>
    21f6:	eb ba                	jmp    21b2 <phase_defused+0x17>
    21f8:	48 8d 7c 24 10       	lea    0x10(%rsp),%rdi
    21fd:	48 8d 35 1f 06 00 00 	lea    0x61f(%rip),%rsi        # 2823 <array.3089+0x383>
    2204:	e8 04 f6 ff ff       	callq  180d <strings_not_equal>
    2209:	85 c0                	test   %eax,%eax
    220b:	75 d1                	jne    21de <phase_defused+0x43>
    220d:	48 8d 3d fc 02 00 00 	lea    0x2fc(%rip),%rdi        # 2510 <array.3089+0x70>
    2214:	e8 37 ed ff ff       	callq  f50 <puts@plt>
    2219:	48 8d 3d 18 03 00 00 	lea    0x318(%rip),%rdi        # 2538 <array.3089+0x98>
    2220:	e8 2b ed ff ff       	callq  f50 <puts@plt>
    2225:	b8 00 00 00 00       	mov    $0x0,%eax
    222a:	e8 f0 f4 ff ff       	callq  171f <secret_phase>
    222f:	eb ad                	jmp    21de <phase_defused+0x43>
    2231:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    2238:	00 00 00 
    223b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002240 <__libc_csu_init>:
    2240:	41 57                	push   %r15
    2242:	41 56                	push   %r14
    2244:	41 89 ff             	mov    %edi,%r15d
    2247:	41 55                	push   %r13
    2249:	41 54                	push   %r12
    224b:	4c 8d 25 86 1b 20 00 	lea    0x201b86(%rip),%r12        # 203dd8 <__frame_dummy_init_array_entry>
    2252:	55                   	push   %rbp
    2253:	48 8d 2d 86 1b 20 00 	lea    0x201b86(%rip),%rbp        # 203de0 <__init_array_end>
    225a:	53                   	push   %rbx
    225b:	49 89 f6             	mov    %rsi,%r14
    225e:	49 89 d5             	mov    %rdx,%r13
    2261:	4c 29 e5             	sub    %r12,%rbp
    2264:	48 83 ec 08          	sub    $0x8,%rsp
    2268:	48 c1 fd 03          	sar    $0x3,%rbp
    226c:	e8 87 ec ff ff       	callq  ef8 <_init>
    2271:	48 85 ed             	test   %rbp,%rbp
    2274:	74 20                	je     2296 <__libc_csu_init+0x56>
    2276:	31 db                	xor    %ebx,%ebx
    2278:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    227f:	00 
    2280:	4c 89 ea             	mov    %r13,%rdx
    2283:	4c 89 f6             	mov    %r14,%rsi
    2286:	44 89 ff             	mov    %r15d,%edi
    2289:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
    228d:	48 83 c3 01          	add    $0x1,%rbx
    2291:	48 39 dd             	cmp    %rbx,%rbp
    2294:	75 ea                	jne    2280 <__libc_csu_init+0x40>
    2296:	48 83 c4 08          	add    $0x8,%rsp
    229a:	5b                   	pop    %rbx
    229b:	5d                   	pop    %rbp
    229c:	41 5c                	pop    %r12
    229e:	41 5d                	pop    %r13
    22a0:	41 5e                	pop    %r14
    22a2:	41 5f                	pop    %r15
    22a4:	c3                   	retq   
    22a5:	90                   	nop
    22a6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    22ad:	00 00 00 

00000000000022b0 <__libc_csu_fini>:
    22b0:	f3 c3                	repz retq 

Disassembly of section .fini:

00000000000022b4 <_fini>:
    22b4:	48 83 ec 08          	sub    $0x8,%rsp
    22b8:	48 83 c4 08          	add    $0x8,%rsp
    22bc:	c3                   	retq   
