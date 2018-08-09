#! c:/iverilog/bin/vvp
:ivl_version "0.10.0 (devel)" "(s20130827)";
:ivl_delay_selection "TYPICAL";
:vpi_time_precision + 0;
:vpi_module "system";
:vpi_module "vhdl_sys";
:vpi_module "v2005_math";
:vpi_module "va_math";
S_01142FF0 .scope module, "fulladder" "fulladder" 2 1;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "s"
    .port_info 1 /OUTPUT 1 "cout"
    .port_info 2 /INPUT 1 "a"
    .port_info 3 /INPUT 1 "b"
    .port_info 4 /INPUT 1 "c"
o00F818EC .functor BUFZ 1, C4<z>; HiZ drive
o00F81904 .functor BUFZ 1, C4<z>; HiZ drive
L_01143170 .functor XOR 1, o00F818EC, o00F81904, C4<0>, C4<0>;
o00F8191C .functor BUFZ 1, C4<z>; HiZ drive
L_0114EC48 .functor XOR 1, L_01143170, o00F8191C, C4<0>, C4<0>;
L_0114EC90 .functor AND 1, o00F818EC, o00F81904, C4<1>, C4<1>;
L_0114ECD8 .functor AND 1, o00F81904, o00F8191C, C4<1>, C4<1>;
L_0114ED20 .functor OR 1, L_0114EC90, L_0114ECD8, C4<0>, C4<0>;
L_0114ED68 .functor AND 1, o00F8191C, o00F818EC, C4<1>, C4<1>;
L_0114EDB0 .functor OR 1, L_0114ED20, L_0114ED68, C4<0>, C4<0>;
v01148510_0 .net *"_s0", 0 0, L_01143170;  1 drivers
v011430C0_0 .net *"_s10", 0 0, L_0114ED68;  1 drivers
v01143118_0 .net *"_s4", 0 0, L_0114EC90;  1 drivers
v0114E648_0 .net *"_s6", 0 0, L_0114ECD8;  1 drivers
v0114E6A0_0 .net *"_s8", 0 0, L_0114ED20;  1 drivers
v0114E6F8_0 .net "a", 0 0, o00F818EC;  0 drivers
v0114E750_0 .net "b", 0 0, o00F81904;  0 drivers
v0114E7A8_0 .net "c", 0 0, o00F8191C;  0 drivers
v00FB3B00_0 .net "cout", 0 0, L_0114EDB0;  1 drivers
v00FB39F8_0 .net "s", 0 0, L_0114EC48;  1 drivers
# The file index is used to find the file name in the following table.
:file_names 3;
    "N/A";
    "<interactive>";
    "adder.v";
