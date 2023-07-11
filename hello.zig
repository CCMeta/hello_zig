const std = @import("std");
const system = @import("system");
const c = @cImport({
    // See https://github.com/ziglang/zig/issues/515
    @cDefine("_NO_CRT_STDIO_INLINE", "1");
    @cInclude("stdio.h");
});

pub fn main() !void {
    const stdout = std.io.getStdOut().writer();
    try stdout.print("Hello, {s}!\n", .{"world"});
    _ = c.printf("hello\n");

    // const args = std.process.execv("cmd", std.process.args());
    // _ = args;
}
