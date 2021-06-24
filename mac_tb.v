#! /usr/local/Cellar/icarus-verilog/11.0/bin/vvp
:ivl_version "11.0 (stable)";
:ivl_delay_selection "TYPICAL";
:vpi_time_precision - 9;
:vpi_module "/usr/local/Cellar/icarus-verilog/11.0/lib/ivl/system.vpi";
:vpi_module "/usr/local/Cellar/icarus-verilog/11.0/lib/ivl/vhdl_sys.vpi";
:vpi_module "/usr/local/Cellar/icarus-verilog/11.0/lib/ivl/vhdl_textio.vpi";
:vpi_module "/usr/local/Cellar/icarus-verilog/11.0/lib/ivl/v2005_math.vpi";
:vpi_module "/usr/local/Cellar/icarus-verilog/11.0/lib/ivl/va_math.vpi";
S_0x7fd5b83041c0 .scope module, "mac" "mac" 2 2;
 .timescale -9 -9;
    .port_info 0 /OUTPUT 24 "so";
    .port_info 1 /INPUT 24 "si";
    .port_info 2 /INPUT 8 "di";
    .port_info 3 /INPUT 8 "wi";
P_0x7fd5b8304330 .param/l "inputWeightSize" 0 2 4, +C4<00000000000000000000000000001000>;
P_0x7fd5b8304370 .param/l "outputSize" 0 2 6, +C4<00000000000000000000000000011000>;
P_0x7fd5b83043b0 .param/l "parSumSize" 0 2 5, +C4<00000000000000000000000000011000>;
o0x7fd5b76321b8 .functor BUFZ 8, C4<zzzzzzzz>; HiZ drive
v0x7fd5b74173b0_0 .net "di", 7 0, o0x7fd5b76321b8;  0 drivers
v0x7fd5b7417460_0 .net "multOut", 15 0, L_0x7fd5b7417990;  1 drivers
o0x7fd5b7632068 .functor BUFZ 24, C4<zzzzzzzzzzzzzzzzzzzzzzzz>; HiZ drive
v0x7fd5b7417530_0 .net "si", 23 0, o0x7fd5b7632068;  0 drivers
v0x7fd5b74175e0_0 .net "so", 23 0, L_0x7fd5b7417bd0;  1 drivers
o0x7fd5b76321e8 .functor BUFZ 8, C4<zzzzzzzz>; HiZ drive
v0x7fd5b7417690_0 .net "wi", 7 0, o0x7fd5b76321e8;  0 drivers
S_0x7fd5b74066d0 .scope module, "ADD" "adder" 2 18, 3 2 0, S_0x7fd5b83041c0;
 .timescale -9 -9;
    .port_info 0 /INPUT 16 "a";
    .port_info 1 /INPUT 24 "b";
    .port_info 2 /OUTPUT 24 "o";
P_0x7fd5b7405a60 .param/l "firstInpSize" 0 3 3, +C4<0000000000000000000000000000000000000000000000000000000000010000>;
P_0x7fd5b7405aa0 .param/l "outputSize" 0 3 5, +C4<00000000000000000000000000011000>;
P_0x7fd5b7405ae0 .param/l "secondInpSize" 0 3 4, +C4<00000000000000000000000000011000>;
v0x7fd5b7406a70_0 .net/s *"_ivl_0", 23 0, L_0x7fd5b7417ab0;  1 drivers
v0x7fd5b7416b10_0 .net/s "a", 15 0, L_0x7fd5b7417990;  alias, 1 drivers
v0x7fd5b7416bb0_0 .net/s "b", 23 0, o0x7fd5b7632068;  alias, 0 drivers
v0x7fd5b7416c40_0 .net/s "o", 23 0, L_0x7fd5b7417bd0;  alias, 1 drivers
L_0x7fd5b7417ab0 .extend/s 24, L_0x7fd5b7417990;
L_0x7fd5b7417bd0 .arith/sum 24, L_0x7fd5b7417ab0, o0x7fd5b7632068;
S_0x7fd5b7416d00 .scope module, "MUL" "multSigned" 2 17, 4 2 0, S_0x7fd5b83041c0;
 .timescale -9 -9;
    .port_info 0 /INPUT 8 "x";
    .port_info 1 /INPUT 8 "y";
    .port_info 2 /OUTPUT 16 "po";
P_0x7fd5b7416ed0 .param/l "size" 0 4 2, +C4<00000000000000000000000000001000>;
v0x7fd5b7417040_0 .net/s *"_ivl_0", 15 0, L_0x7fd5b74177b0;  1 drivers
v0x7fd5b74170f0_0 .net/s *"_ivl_2", 15 0, L_0x7fd5b74178b0;  1 drivers
v0x7fd5b7417190_0 .net/s "po", 15 0, L_0x7fd5b7417990;  alias, 1 drivers
v0x7fd5b7417220_0 .net/s "x", 7 0, o0x7fd5b76321b8;  alias, 0 drivers
v0x7fd5b74172b0_0 .net/s "y", 7 0, o0x7fd5b76321e8;  alias, 0 drivers
L_0x7fd5b74177b0 .extend/s 16, o0x7fd5b76321b8;
L_0x7fd5b74178b0 .extend/s 16, o0x7fd5b76321e8;
L_0x7fd5b7417990 .arith/mult 16, L_0x7fd5b74177b0, L_0x7fd5b74178b0;
# The file index is used to find the file name in the following table.
:file_names 5;
    "N/A";
    "<interactive>";
    "mac.v";
    "adder.v";
    "mult_signed.v";
