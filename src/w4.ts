export const SCREEN_SIZE: u32 = 160;
export const PALETTE: usize = 0x04;
export const FRAMEBUFFER: usize = 0xa0;
export const DRAW_COLORS: usize = 0x14;

export const GAMEPAD1: usize = 0x16;
export const GAMEPAD2: usize = 0x17;
export const GAMEPAD3: usize = 0x18;
export const GAMEPAD4: usize = 0x19;

export const MOUSE_X: usize = 0x1a;
export const MOUSE_Y: usize = 0x1c;
export const MOUSE_BUTTONS: usize = 0x1e;

export const BUTTON_1: u8 = 1;
export const BUTTON_2: u8 = 2;
export const BUTTON_LEFT: u8 = 16;
export const BUTTON_RIGHT: u8 = 32;
export const BUTTON_UP: u8 = 64;
export const BUTTON_DOWN: u8 = 128;

// @ts-ignore
@external("env", "blit")
export declare function blit(
    spritePtr: usize,
    x: i32,
    y: i32,
    width: u32,
    height: u32,
    flags: u32
): void;

// @ts-ignore
@external("env", "blitSub")
export declare function blitSub (spritePtr: usize, x: i32, y: i32, width: u32, height: u32,
    srcX: u32, srcY: u32, stride: i32, flags: u32): void;

export const BLIT_2BPP: u32 = 1;
export const BLIT_1BPP: u32 = 0;
export const BLIT_FLIP_X: u32 = 2;
export const BLIT_FLIP_Y: u32 = 4;
export const BLIT_ROTATE: u32 = 8;

// @ts-ignore
@external("env", "line")
export declare function line(
    x1: i32,
    y1: i32,
    x2: i32,
    y2: i32
): void;

// @ts-ignore
@external("env", "oval")
export declare function oval(
    x: i32,
    y: i32,
    width: u32,
    height: u32
): void;

// @ts-ignore
@external("env", "rect")
export declare function rect(
    x: i32,
    y: i32,
    width: u32,
    height: u32
): void;

export function text(str: string, x: i32, y: i32): void {
    const byteLength = load<u32>(changetype<usize>(str) - 4);
    textUtf16(str, byteLength, x, y);
    return;
}

// @ts-ignore
@external("env", "textUtf16")
declare function textUtf16(
    text: string,
    byteLength: i32,
    x: i32,
    y: i32
): void;

// @ts-ignore
@external("env", "tone")
export declare function tone(
    frequency: u32,
    volume: u32,
    duration: u32,
    flags: u32
): void;

export const TONE_PULSE1: u32 = 0;
export const TONE_PULSE2: u32 = 1;
export const TONE_TRIANGLE: u32 = 2;
export const TONE_NOISE: u32 = 3;
export const TONE_MODE1: u32 = 0;
export const TONE_MODE2: u32 = 4;
export const TONE_MODE3: u32 = 8;
export const TONE_MODE4: u32 = 12;

// @ts-ignore
@external("env", "diskr")
export declare function diskr(
    dest: usize,
    size: u32
): u32;

// @ts-ignore
@external("env", "diskw")
export declare function diskw(
    src: usize,
    size: u32
): u32;

// @ts-ignore
@external("env", "memcpy")
export declare function memcpy(
    dest: usize,
    src: usize,
    size: u32
): usize;

// @ts-ignore@external("env", "memset")
export declare function memset(
    dest: usize,
    byte: u8,
    size: u32
): usize;

export function trace (str: string): void {
    const byteLength = load<u32>(changetype<usize>(str) - 4);
    traceUtf16(str, byteLength);
}

// @ts-ignore
@external("env", "traceUtf16")
declare function traceUtf16(
    str: string,
    byteLength: i32
): void;