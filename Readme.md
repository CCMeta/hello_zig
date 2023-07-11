# Hello_zig

```text
- cross-compile: zig build-exe .\hello.zig -target aarch64-linux-gnu // Already test with CC50 & Android & Yocto, also aarch64-linux-musl and aarch64-linux-musleabi
- build static lib: zig build-lib .\src\main.zig
- build dynamic lib: zig build-lib .\src\main.zig -dynamic
- build with C: zig build-exe .\hello.zig -lc 
- translate C file: zig translate-c .\test.c -lc > test.zig
```
