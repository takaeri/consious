(module
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $none_=>_none (func))
 (type $i32_i32_i32_=>_none (func (param i32 i32 i32)))
 (type $i32_i32_i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32 i32 i32)))
 (import "env" "memory" (memory $0 1 1))
 (data (i32.const 6560) "\c3\81$$\00$\99\c3")
 (data (i32.const 6572) "L\00\00\00\00\00\00\00\00\00\00\00\01\00\00\004\00\00\00H\00e\00l\00l\00o\00 \00f\00r\00o\00m\00\n\00A\00s\00s\00e\00m\00b\00l\00y\00S\00c\00r\00i\00p\00t\00!\00\00\00\00\00\00\00\00\00")
 (data (i32.const 6652) "<\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00 \00\00\00P\00r\00e\00s\00s\00 \00X\00 \00t\00o\00 \00b\00l\00i\00n\00k\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (import "env" "textUtf16" (func $src/w4/textUtf16 (param i32 i32 i32 i32)))
 (import "env" "blit" (func $src/w4/blit (param i32 i32 i32 i32 i32 i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (global $src/w4/SCREEN_SIZE i32 (i32.const 160))
 (global $src/w4/PALETTE i32 (i32.const 4))
 (global $src/w4/FRAMEBUFFER i32 (i32.const 160))
 (global $src/w4/DRAW_COLORS i32 (i32.const 20))
 (global $src/w4/GAMEPAD1 i32 (i32.const 22))
 (global $src/w4/GAMEPAD2 i32 (i32.const 23))
 (global $src/w4/GAMEPAD3 i32 (i32.const 24))
 (global $src/w4/GAMEPAD4 i32 (i32.const 25))
 (global $src/w4/MOUSE_X i32 (i32.const 26))
 (global $src/w4/MOUSE_Y i32 (i32.const 28))
 (global $src/w4/MOUSE_BUTTONS i32 (i32.const 30))
 (global $src/w4/BUTTON_1 i32 (i32.const 1))
 (global $src/w4/BUTTON_2 i32 (i32.const 2))
 (global $src/w4/BUTTON_LEFT i32 (i32.const 16))
 (global $src/w4/BUTTON_RIGHT i32 (i32.const 32))
 (global $src/w4/BUTTON_UP i32 (i32.const 64))
 (global $src/w4/BUTTON_DOWN i32 (i32.const 128))
 (global $src/w4/BLIT_2BPP i32 (i32.const 1))
 (global $src/w4/BLIT_1BPP i32 (i32.const 0))
 (global $src/w4/BLIT_FLIP_X i32 (i32.const 2))
 (global $src/w4/BLIT_FLIP_Y i32 (i32.const 4))
 (global $src/w4/BLIT_ROTATE i32 (i32.const 8))
 (global $src/w4/TONE_PULSE1 i32 (i32.const 0))
 (global $src/w4/TONE_PULSE2 i32 (i32.const 1))
 (global $src/w4/TONE_TRIANGLE i32 (i32.const 2))
 (global $src/w4/TONE_NOISE i32 (i32.const 3))
 (global $src/w4/TONE_MODE1 i32 (i32.const 0))
 (global $src/w4/TONE_MODE2 i32 (i32.const 4))
 (global $src/w4/TONE_MODE3 i32 (i32.const 8))
 (global $src/w4/TONE_MODE4 i32 (i32.const 12))
 (global $src/main/smiley i32 (i32.const 6560))
 (global $~lib/memory/__data_end i32 (i32.const 6716))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 23100))
 (global $~lib/memory/__heap_base i32 (i32.const 23100))
 (table $0 1 funcref)
 (elem $0 (i32.const 1))
 (export "update" (func $src/main/update))
 (func $src/w4/text (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  local.get $0
  i32.const 4
  i32.sub
  i32.load
  local.set $3
  local.get $0
  local.get $3
  local.get $1
  local.get $2
  call $src/w4/textUtf16
  return
 )
 (func $~stack_check
  global.get $~lib/memory/__stack_pointer
  global.get $~lib/memory/__data_end
  i32.lt_s
  if
   i32.const 23120
   i32.const 23168
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $src/main/update
  (local $0 i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $src/w4/DRAW_COLORS
  i32.const 2
  i32.store16
  i32.const 6592
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  i32.const 10
  i32.const 10
  call $src/w4/text
  global.get $src/w4/GAMEPAD1
  i32.load8_u
  local.set $0
  local.get $0
  global.get $src/w4/BUTTON_1
  i32.and
  if
   global.get $src/w4/DRAW_COLORS
   i32.const 4
   i32.store16
  end
  global.get $src/main/smiley
  i32.const 76
  i32.const 76
  i32.const 8
  i32.const 8
  global.get $src/w4/BLIT_1BPP
  call $src/w4/blit
  i32.const 6672
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  i32.const 16
  i32.const 90
  call $src/w4/text
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
)
