############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
############################################################
set_directive_interface -mode s_axilite "conv"
set_directive_interface -mode m_axi -depth 1024 -offset slave "conv" A
set_directive_interface -mode m_axi -depth 1024 -offset slave "conv" kernel
set_directive_interface -mode m_axi -depth 1024 -offset slave "conv" out
set_directive_pipeline -II 1 "conv/Col"
