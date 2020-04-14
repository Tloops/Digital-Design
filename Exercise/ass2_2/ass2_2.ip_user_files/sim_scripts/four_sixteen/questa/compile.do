vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib
vlib questa_lib/msim/util_vector_logic_v2_0_1

vmap xil_defaultlib questa_lib/msim/xil_defaultlib
vmap util_vector_logic_v2_0_1 questa_lib/msim/util_vector_logic_v2_0_1

vlog -work xil_defaultlib -64 \
"../../../bd/four_sixteen/ip/four_sixteen_three_eight_0_0/sim/four_sixteen_three_eight_0_0.v" \
"../../../bd/four_sixteen/ip/four_sixteen_three_eight_1_0/sim/four_sixteen_three_eight_1_0.v" \

vlog -work util_vector_logic_v2_0_1 -64 \
"../../../../ass2_2.srcs/sources_1/bd/four_sixteen/ipshared/2137/hdl/util_vector_logic_v2_0_vl_rfs.v" \

vlog -work xil_defaultlib -64 \
"../../../bd/four_sixteen/ip/four_sixteen_util_vector_logic_0_1/sim/four_sixteen_util_vector_logic_0_1.v" \
"../../../bd/four_sixteen/sim/four_sixteen.v" \
"../../../bd/four_sixteen/ip/four_sixteen_util_vector_logic_1_6/sim/four_sixteen_util_vector_logic_1_6.v" \
"../../../bd/four_sixteen/ip/four_sixteen_util_vector_logic_1_7/sim/four_sixteen_util_vector_logic_1_7.v" \
"../../../bd/four_sixteen/ip/four_sixteen_util_vector_logic_1_8/sim/four_sixteen_util_vector_logic_1_8.v" \
"../../../bd/four_sixteen/ip/four_sixteen_util_vector_logic_1_9/sim/four_sixteen_util_vector_logic_1_9.v" \
"../../../bd/four_sixteen/ip/four_sixteen_util_vector_logic_1_10/sim/four_sixteen_util_vector_logic_1_10.v" \
"../../../bd/four_sixteen/ip/four_sixteen_util_vector_logic_2_1/sim/four_sixteen_util_vector_logic_2_1.v" \
"../../../bd/four_sixteen/ip/four_sixteen_util_vector_logic_3_0/sim/four_sixteen_util_vector_logic_3_0.v" \
"../../../bd/four_sixteen/ip/four_sixteen_util_vector_logic_4_0/sim/four_sixteen_util_vector_logic_4_0.v" \
"../../../bd/four_sixteen/ip/four_sixteen_util_vector_logic_1_11/sim/four_sixteen_util_vector_logic_1_11.v" \
"../../../bd/four_sixteen/ip/four_sixteen_util_vector_logic_2_2/sim/four_sixteen_util_vector_logic_2_2.v" \
"../../../bd/four_sixteen/ip/four_sixteen_util_vector_logic_3_1/sim/four_sixteen_util_vector_logic_3_1.v" \
"../../../bd/four_sixteen/ip/four_sixteen_util_vector_logic_4_1/sim/four_sixteen_util_vector_logic_4_1.v" \
"../../../bd/four_sixteen/ip/four_sixteen_util_vector_logic_5_0/sim/four_sixteen_util_vector_logic_5_0.v" \
"../../../bd/four_sixteen/ip/four_sixteen_util_vector_logic_6_0/sim/four_sixteen_util_vector_logic_6_0.v" \
"../../../bd/four_sixteen/ip/four_sixteen_util_vector_logic_7_0/sim/four_sixteen_util_vector_logic_7_0.v" \
"../../../bd/four_sixteen/ip/four_sixteen_util_vector_logic_8_0/sim/four_sixteen_util_vector_logic_8_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

