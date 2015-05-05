// (c) Copyright 1995-2015 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:hls:aes:1.0
// IP Revision: 1503270407

(* X_CORE_INFO = "aes_top,Vivado 2013.4" *)
(* CHECK_LICENSE_TYPE = "design_1_aes_0_0,aes_top,{}" *)
(* CORE_GENERATION_INFO = "design_1_aes_0_0,aes_top,{x_ipProduct=Vivado 2013.4,x_ipVendor=xilinx.com,x_ipLibrary=hls,x_ipName=aes,x_ipVersion=1.0,x_ipCoreRevision=1503270407,x_ipLanguage=VERILOG,C_M_AXI_AXI_DMA_SLAVE_ID_WIDTH=1,C_M_AXI_AXI_DMA_SLAVE_ADDR_WIDTH=32,C_M_AXI_AXI_DMA_SLAVE_DATA_WIDTH=32,C_M_AXI_AXI_DMA_SLAVE_AWUSER_WIDTH=1,C_M_AXI_AXI_DMA_SLAVE_ARUSER_WIDTH=1,C_M_AXI_AXI_DMA_SLAVE_WUSER_WIDTH=1,C_M_AXI_AXI_DMA_SLAVE_RUSER_WIDTH=1,C_M_AXI_AXI_DMA_SLAVE_BUSER_WIDTH=1,C_M_AXI_AXI_DMA_SLAVE_TARGET_ADDR=0x44A00000,C_M_AXI_AXI_DMA_SLAVE_USER_VALUE=0x00000000,C_M_AXI_AXI_DMA_SLAVE_PROT_VALUE=000,C_M_AXI_AXI_DMA_SLAVE_CACHE_VALUE=0011,C_S_AXI_AXI4LITES_ADDR_WIDTH=7,C_S_AXI_AXI4LITES_DATA_WIDTH=32}" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_aes_0_0 (
  read_finished_interrupt_V,
  write_finished_interrupt_V,
  finished,
  ap_start,
  ap_ready,
  ap_done,
  ap_idle,
  m_axi_AXI_DMA_SLAVE_AWID,
  m_axi_AXI_DMA_SLAVE_AWADDR,
  m_axi_AXI_DMA_SLAVE_AWLEN,
  m_axi_AXI_DMA_SLAVE_AWSIZE,
  m_axi_AXI_DMA_SLAVE_AWBURST,
  m_axi_AXI_DMA_SLAVE_AWLOCK,
  m_axi_AXI_DMA_SLAVE_AWCACHE,
  m_axi_AXI_DMA_SLAVE_AWPROT,
  m_axi_AXI_DMA_SLAVE_AWQOS,
  m_axi_AXI_DMA_SLAVE_AWVALID,
  m_axi_AXI_DMA_SLAVE_AWREADY,
  m_axi_AXI_DMA_SLAVE_WDATA,
  m_axi_AXI_DMA_SLAVE_WSTRB,
  m_axi_AXI_DMA_SLAVE_WLAST,
  m_axi_AXI_DMA_SLAVE_WVALID,
  m_axi_AXI_DMA_SLAVE_WREADY,
  m_axi_AXI_DMA_SLAVE_BID,
  m_axi_AXI_DMA_SLAVE_BRESP,
  m_axi_AXI_DMA_SLAVE_BVALID,
  m_axi_AXI_DMA_SLAVE_BREADY,
  m_axi_AXI_DMA_SLAVE_ARID,
  m_axi_AXI_DMA_SLAVE_ARADDR,
  m_axi_AXI_DMA_SLAVE_ARLEN,
  m_axi_AXI_DMA_SLAVE_ARSIZE,
  m_axi_AXI_DMA_SLAVE_ARBURST,
  m_axi_AXI_DMA_SLAVE_ARLOCK,
  m_axi_AXI_DMA_SLAVE_ARCACHE,
  m_axi_AXI_DMA_SLAVE_ARPROT,
  m_axi_AXI_DMA_SLAVE_ARQOS,
  m_axi_AXI_DMA_SLAVE_ARVALID,
  m_axi_AXI_DMA_SLAVE_ARREADY,
  m_axi_AXI_DMA_SLAVE_RID,
  m_axi_AXI_DMA_SLAVE_RDATA,
  m_axi_AXI_DMA_SLAVE_RRESP,
  m_axi_AXI_DMA_SLAVE_RLAST,
  m_axi_AXI_DMA_SLAVE_RVALID,
  m_axi_AXI_DMA_SLAVE_RREADY,
  s_data_in_V_Clk_A,
  s_data_in_V_Rst_A,
  s_data_in_V_EN_A,
  s_data_in_V_WEN_A,
  s_data_in_V_Addr_A,
  s_data_in_V_Dout_A,
  s_data_in_V_Din_A,
  s_encrypted_out_V_Clk_B,
  s_encrypted_out_V_Rst_B,
  s_encrypted_out_V_EN_B,
  s_encrypted_out_V_WEN_B,
  s_encrypted_out_V_Addr_B,
  s_encrypted_out_V_Dout_B,
  s_encrypted_out_V_Din_B,
  s_axi_AXI4LiteS_AWADDR,
  s_axi_AXI4LiteS_AWVALID,
  s_axi_AXI4LiteS_AWREADY,
  s_axi_AXI4LiteS_WDATA,
  s_axi_AXI4LiteS_WSTRB,
  s_axi_AXI4LiteS_WVALID,
  s_axi_AXI4LiteS_WREADY,
  s_axi_AXI4LiteS_BRESP,
  s_axi_AXI4LiteS_BVALID,
  s_axi_AXI4LiteS_BREADY,
  s_axi_AXI4LiteS_ARADDR,
  s_axi_AXI4LiteS_ARVALID,
  s_axi_AXI4LiteS_ARREADY,
  s_axi_AXI4LiteS_RDATA,
  s_axi_AXI4LiteS_RRESP,
  s_axi_AXI4LiteS_RVALID,
  s_axi_AXI4LiteS_RREADY,
  aclk,
  aresetn
);

input wire [0 : 0] read_finished_interrupt_V;
input wire [0 : 0] write_finished_interrupt_V;
output wire finished;
input wire ap_start;
output wire ap_ready;
output wire ap_done;
output wire ap_idle;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_AXI_DMA_SLAVE AWID" *)
output wire [0 : 0] m_axi_AXI_DMA_SLAVE_AWID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_AXI_DMA_SLAVE AWADDR" *)
output wire [31 : 0] m_axi_AXI_DMA_SLAVE_AWADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_AXI_DMA_SLAVE AWLEN" *)
output wire [7 : 0] m_axi_AXI_DMA_SLAVE_AWLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_AXI_DMA_SLAVE AWSIZE" *)
output wire [2 : 0] m_axi_AXI_DMA_SLAVE_AWSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_AXI_DMA_SLAVE AWBURST" *)
output wire [1 : 0] m_axi_AXI_DMA_SLAVE_AWBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_AXI_DMA_SLAVE AWLOCK" *)
output wire [1 : 0] m_axi_AXI_DMA_SLAVE_AWLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_AXI_DMA_SLAVE AWCACHE" *)
output wire [3 : 0] m_axi_AXI_DMA_SLAVE_AWCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_AXI_DMA_SLAVE AWPROT" *)
output wire [2 : 0] m_axi_AXI_DMA_SLAVE_AWPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_AXI_DMA_SLAVE AWQOS" *)
output wire [3 : 0] m_axi_AXI_DMA_SLAVE_AWQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_AXI_DMA_SLAVE AWVALID" *)
output wire m_axi_AXI_DMA_SLAVE_AWVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_AXI_DMA_SLAVE AWREADY" *)
input wire m_axi_AXI_DMA_SLAVE_AWREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_AXI_DMA_SLAVE WDATA" *)
output wire [31 : 0] m_axi_AXI_DMA_SLAVE_WDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_AXI_DMA_SLAVE WSTRB" *)
output wire [3 : 0] m_axi_AXI_DMA_SLAVE_WSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_AXI_DMA_SLAVE WLAST" *)
output wire m_axi_AXI_DMA_SLAVE_WLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_AXI_DMA_SLAVE WVALID" *)
output wire m_axi_AXI_DMA_SLAVE_WVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_AXI_DMA_SLAVE WREADY" *)
input wire m_axi_AXI_DMA_SLAVE_WREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_AXI_DMA_SLAVE BID" *)
input wire [0 : 0] m_axi_AXI_DMA_SLAVE_BID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_AXI_DMA_SLAVE BRESP" *)
input wire [1 : 0] m_axi_AXI_DMA_SLAVE_BRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_AXI_DMA_SLAVE BVALID" *)
input wire m_axi_AXI_DMA_SLAVE_BVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_AXI_DMA_SLAVE BREADY" *)
output wire m_axi_AXI_DMA_SLAVE_BREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_AXI_DMA_SLAVE ARID" *)
output wire [0 : 0] m_axi_AXI_DMA_SLAVE_ARID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_AXI_DMA_SLAVE ARADDR" *)
output wire [31 : 0] m_axi_AXI_DMA_SLAVE_ARADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_AXI_DMA_SLAVE ARLEN" *)
output wire [7 : 0] m_axi_AXI_DMA_SLAVE_ARLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_AXI_DMA_SLAVE ARSIZE" *)
output wire [2 : 0] m_axi_AXI_DMA_SLAVE_ARSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_AXI_DMA_SLAVE ARBURST" *)
output wire [1 : 0] m_axi_AXI_DMA_SLAVE_ARBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_AXI_DMA_SLAVE ARLOCK" *)
output wire [1 : 0] m_axi_AXI_DMA_SLAVE_ARLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_AXI_DMA_SLAVE ARCACHE" *)
output wire [3 : 0] m_axi_AXI_DMA_SLAVE_ARCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_AXI_DMA_SLAVE ARPROT" *)
output wire [2 : 0] m_axi_AXI_DMA_SLAVE_ARPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_AXI_DMA_SLAVE ARQOS" *)
output wire [3 : 0] m_axi_AXI_DMA_SLAVE_ARQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_AXI_DMA_SLAVE ARVALID" *)
output wire m_axi_AXI_DMA_SLAVE_ARVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_AXI_DMA_SLAVE ARREADY" *)
input wire m_axi_AXI_DMA_SLAVE_ARREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_AXI_DMA_SLAVE RID" *)
input wire [0 : 0] m_axi_AXI_DMA_SLAVE_RID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_AXI_DMA_SLAVE RDATA" *)
input wire [31 : 0] m_axi_AXI_DMA_SLAVE_RDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_AXI_DMA_SLAVE RRESP" *)
input wire [1 : 0] m_axi_AXI_DMA_SLAVE_RRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_AXI_DMA_SLAVE RLAST" *)
input wire m_axi_AXI_DMA_SLAVE_RLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_AXI_DMA_SLAVE RVALID" *)
input wire m_axi_AXI_DMA_SLAVE_RVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_AXI_DMA_SLAVE RREADY" *)
output wire m_axi_AXI_DMA_SLAVE_RREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 s_data_in_V_PORTA CLK" *)
output wire s_data_in_V_Clk_A;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 s_data_in_V_PORTA RST" *)
output wire s_data_in_V_Rst_A;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 s_data_in_V_PORTA EN" *)
output wire s_data_in_V_EN_A;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 s_data_in_V_PORTA WE" *)
output wire [15 : 0] s_data_in_V_WEN_A;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 s_data_in_V_PORTA ADDR" *)
output wire [31 : 0] s_data_in_V_Addr_A;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 s_data_in_V_PORTA DIN" *)
output wire [127 : 0] s_data_in_V_Dout_A;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 s_data_in_V_PORTA DOUT" *)
input wire [127 : 0] s_data_in_V_Din_A;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 s_encrypted_out_V_PORTB CLK" *)
output wire s_encrypted_out_V_Clk_B;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 s_encrypted_out_V_PORTB RST" *)
output wire s_encrypted_out_V_Rst_B;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 s_encrypted_out_V_PORTB EN" *)
output wire s_encrypted_out_V_EN_B;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 s_encrypted_out_V_PORTB WE" *)
output wire [15 : 0] s_encrypted_out_V_WEN_B;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 s_encrypted_out_V_PORTB ADDR" *)
output wire [31 : 0] s_encrypted_out_V_Addr_B;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 s_encrypted_out_V_PORTB DIN" *)
output wire [127 : 0] s_encrypted_out_V_Dout_B;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 s_encrypted_out_V_PORTB DOUT" *)
input wire [127 : 0] s_encrypted_out_V_Din_B;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_AXI4LITES AWADDR" *)
input wire [6 : 0] s_axi_AXI4LiteS_AWADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_AXI4LITES AWVALID" *)
input wire s_axi_AXI4LiteS_AWVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_AXI4LITES AWREADY" *)
output wire s_axi_AXI4LiteS_AWREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_AXI4LITES WDATA" *)
input wire [31 : 0] s_axi_AXI4LiteS_WDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_AXI4LITES WSTRB" *)
input wire [3 : 0] s_axi_AXI4LiteS_WSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_AXI4LITES WVALID" *)
input wire s_axi_AXI4LiteS_WVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_AXI4LITES WREADY" *)
output wire s_axi_AXI4LiteS_WREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_AXI4LITES BRESP" *)
output wire [1 : 0] s_axi_AXI4LiteS_BRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_AXI4LITES BVALID" *)
output wire s_axi_AXI4LiteS_BVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_AXI4LITES BREADY" *)
input wire s_axi_AXI4LiteS_BREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_AXI4LITES ARADDR" *)
input wire [6 : 0] s_axi_AXI4LiteS_ARADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_AXI4LITES ARVALID" *)
input wire s_axi_AXI4LiteS_ARVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_AXI4LITES ARREADY" *)
output wire s_axi_AXI4LiteS_ARREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_AXI4LITES RDATA" *)
output wire [31 : 0] s_axi_AXI4LiteS_RDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_AXI4LITES RRESP" *)
output wire [1 : 0] s_axi_AXI4LiteS_RRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_AXI4LITES RVALID" *)
output wire s_axi_AXI4LiteS_RVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_AXI4LITES RREADY" *)
input wire s_axi_AXI4LiteS_RREADY;
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 aclk CLK" *)
input wire aclk;
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 aresetn RST" *)
input wire aresetn;

  aes_top #(
    .C_M_AXI_AXI_DMA_SLAVE_ID_WIDTH(1),
    .C_M_AXI_AXI_DMA_SLAVE_ADDR_WIDTH(32),
    .C_M_AXI_AXI_DMA_SLAVE_DATA_WIDTH(32),
    .C_M_AXI_AXI_DMA_SLAVE_AWUSER_WIDTH(1),
    .C_M_AXI_AXI_DMA_SLAVE_ARUSER_WIDTH(1),
    .C_M_AXI_AXI_DMA_SLAVE_WUSER_WIDTH(1),
    .C_M_AXI_AXI_DMA_SLAVE_RUSER_WIDTH(1),
    .C_M_AXI_AXI_DMA_SLAVE_BUSER_WIDTH(1),
    .C_M_AXI_AXI_DMA_SLAVE_TARGET_ADDR('H44A00000),
    .C_M_AXI_AXI_DMA_SLAVE_USER_VALUE('H00000000),
    .C_M_AXI_AXI_DMA_SLAVE_PROT_VALUE('B000),
    .C_M_AXI_AXI_DMA_SLAVE_CACHE_VALUE('B0011),
    .C_S_AXI_AXI4LITES_ADDR_WIDTH(7),
    .C_S_AXI_AXI4LITES_DATA_WIDTH(32)
  ) inst (
    .read_finished_interrupt_V(read_finished_interrupt_V),
    .write_finished_interrupt_V(write_finished_interrupt_V),
    .finished(finished),
    .ap_start(ap_start),
    .ap_ready(ap_ready),
    .ap_done(ap_done),
    .ap_idle(ap_idle),
    .m_axi_AXI_DMA_SLAVE_AWID(m_axi_AXI_DMA_SLAVE_AWID),
    .m_axi_AXI_DMA_SLAVE_AWADDR(m_axi_AXI_DMA_SLAVE_AWADDR),
    .m_axi_AXI_DMA_SLAVE_AWLEN(m_axi_AXI_DMA_SLAVE_AWLEN),
    .m_axi_AXI_DMA_SLAVE_AWSIZE(m_axi_AXI_DMA_SLAVE_AWSIZE),
    .m_axi_AXI_DMA_SLAVE_AWBURST(m_axi_AXI_DMA_SLAVE_AWBURST),
    .m_axi_AXI_DMA_SLAVE_AWLOCK(m_axi_AXI_DMA_SLAVE_AWLOCK),
    .m_axi_AXI_DMA_SLAVE_AWCACHE(m_axi_AXI_DMA_SLAVE_AWCACHE),
    .m_axi_AXI_DMA_SLAVE_AWPROT(m_axi_AXI_DMA_SLAVE_AWPROT),
    .m_axi_AXI_DMA_SLAVE_AWQOS(m_axi_AXI_DMA_SLAVE_AWQOS),
    .m_axi_AXI_DMA_SLAVE_AWUSER(),
    .m_axi_AXI_DMA_SLAVE_AWVALID(m_axi_AXI_DMA_SLAVE_AWVALID),
    .m_axi_AXI_DMA_SLAVE_AWREADY(m_axi_AXI_DMA_SLAVE_AWREADY),
    .m_axi_AXI_DMA_SLAVE_WDATA(m_axi_AXI_DMA_SLAVE_WDATA),
    .m_axi_AXI_DMA_SLAVE_WSTRB(m_axi_AXI_DMA_SLAVE_WSTRB),
    .m_axi_AXI_DMA_SLAVE_WLAST(m_axi_AXI_DMA_SLAVE_WLAST),
    .m_axi_AXI_DMA_SLAVE_WUSER(),
    .m_axi_AXI_DMA_SLAVE_WVALID(m_axi_AXI_DMA_SLAVE_WVALID),
    .m_axi_AXI_DMA_SLAVE_WREADY(m_axi_AXI_DMA_SLAVE_WREADY),
    .m_axi_AXI_DMA_SLAVE_BID(m_axi_AXI_DMA_SLAVE_BID),
    .m_axi_AXI_DMA_SLAVE_BRESP(m_axi_AXI_DMA_SLAVE_BRESP),
    .m_axi_AXI_DMA_SLAVE_BUSER(1'B0),
    .m_axi_AXI_DMA_SLAVE_BVALID(m_axi_AXI_DMA_SLAVE_BVALID),
    .m_axi_AXI_DMA_SLAVE_BREADY(m_axi_AXI_DMA_SLAVE_BREADY),
    .m_axi_AXI_DMA_SLAVE_ARID(m_axi_AXI_DMA_SLAVE_ARID),
    .m_axi_AXI_DMA_SLAVE_ARADDR(m_axi_AXI_DMA_SLAVE_ARADDR),
    .m_axi_AXI_DMA_SLAVE_ARLEN(m_axi_AXI_DMA_SLAVE_ARLEN),
    .m_axi_AXI_DMA_SLAVE_ARSIZE(m_axi_AXI_DMA_SLAVE_ARSIZE),
    .m_axi_AXI_DMA_SLAVE_ARBURST(m_axi_AXI_DMA_SLAVE_ARBURST),
    .m_axi_AXI_DMA_SLAVE_ARLOCK(m_axi_AXI_DMA_SLAVE_ARLOCK),
    .m_axi_AXI_DMA_SLAVE_ARCACHE(m_axi_AXI_DMA_SLAVE_ARCACHE),
    .m_axi_AXI_DMA_SLAVE_ARPROT(m_axi_AXI_DMA_SLAVE_ARPROT),
    .m_axi_AXI_DMA_SLAVE_ARQOS(m_axi_AXI_DMA_SLAVE_ARQOS),
    .m_axi_AXI_DMA_SLAVE_ARUSER(),
    .m_axi_AXI_DMA_SLAVE_ARVALID(m_axi_AXI_DMA_SLAVE_ARVALID),
    .m_axi_AXI_DMA_SLAVE_ARREADY(m_axi_AXI_DMA_SLAVE_ARREADY),
    .m_axi_AXI_DMA_SLAVE_RID(m_axi_AXI_DMA_SLAVE_RID),
    .m_axi_AXI_DMA_SLAVE_RDATA(m_axi_AXI_DMA_SLAVE_RDATA),
    .m_axi_AXI_DMA_SLAVE_RRESP(m_axi_AXI_DMA_SLAVE_RRESP),
    .m_axi_AXI_DMA_SLAVE_RLAST(m_axi_AXI_DMA_SLAVE_RLAST),
    .m_axi_AXI_DMA_SLAVE_RUSER(1'B0),
    .m_axi_AXI_DMA_SLAVE_RVALID(m_axi_AXI_DMA_SLAVE_RVALID),
    .m_axi_AXI_DMA_SLAVE_RREADY(m_axi_AXI_DMA_SLAVE_RREADY),
    .s_data_in_V_Clk_A(s_data_in_V_Clk_A),
    .s_data_in_V_Rst_A(s_data_in_V_Rst_A),
    .s_data_in_V_EN_A(s_data_in_V_EN_A),
    .s_data_in_V_WEN_A(s_data_in_V_WEN_A),
    .s_data_in_V_Addr_A(s_data_in_V_Addr_A),
    .s_data_in_V_Dout_A(s_data_in_V_Dout_A),
    .s_data_in_V_Din_A(s_data_in_V_Din_A),
    .s_encrypted_out_V_Clk_B(s_encrypted_out_V_Clk_B),
    .s_encrypted_out_V_Rst_B(s_encrypted_out_V_Rst_B),
    .s_encrypted_out_V_EN_B(s_encrypted_out_V_EN_B),
    .s_encrypted_out_V_WEN_B(s_encrypted_out_V_WEN_B),
    .s_encrypted_out_V_Addr_B(s_encrypted_out_V_Addr_B),
    .s_encrypted_out_V_Dout_B(s_encrypted_out_V_Dout_B),
    .s_encrypted_out_V_Din_B(s_encrypted_out_V_Din_B),
    .s_axi_AXI4LiteS_AWADDR(s_axi_AXI4LiteS_AWADDR),
    .s_axi_AXI4LiteS_AWVALID(s_axi_AXI4LiteS_AWVALID),
    .s_axi_AXI4LiteS_AWREADY(s_axi_AXI4LiteS_AWREADY),
    .s_axi_AXI4LiteS_WDATA(s_axi_AXI4LiteS_WDATA),
    .s_axi_AXI4LiteS_WSTRB(s_axi_AXI4LiteS_WSTRB),
    .s_axi_AXI4LiteS_WVALID(s_axi_AXI4LiteS_WVALID),
    .s_axi_AXI4LiteS_WREADY(s_axi_AXI4LiteS_WREADY),
    .s_axi_AXI4LiteS_BRESP(s_axi_AXI4LiteS_BRESP),
    .s_axi_AXI4LiteS_BVALID(s_axi_AXI4LiteS_BVALID),
    .s_axi_AXI4LiteS_BREADY(s_axi_AXI4LiteS_BREADY),
    .s_axi_AXI4LiteS_ARADDR(s_axi_AXI4LiteS_ARADDR),
    .s_axi_AXI4LiteS_ARVALID(s_axi_AXI4LiteS_ARVALID),
    .s_axi_AXI4LiteS_ARREADY(s_axi_AXI4LiteS_ARREADY),
    .s_axi_AXI4LiteS_RDATA(s_axi_AXI4LiteS_RDATA),
    .s_axi_AXI4LiteS_RRESP(s_axi_AXI4LiteS_RRESP),
    .s_axi_AXI4LiteS_RVALID(s_axi_AXI4LiteS_RVALID),
    .s_axi_AXI4LiteS_RREADY(s_axi_AXI4LiteS_RREADY),
    .aclk(aclk),
    .aresetn(aresetn)
  );
endmodule
