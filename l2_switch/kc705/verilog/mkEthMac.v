//
// Generated by Bluespec Compiler, version 2014.07.A (build 34078, 2014-07-30)
//
// On Sun Jun  4 09:41:01 CST 2017
//
// BVI format method schedule info:
// schedule tx_get  CF ( tx_get, rx_put, packet_tx_put, packet_rx_get );
//
// schedule rx_put  CF ( tx_get, rx_put, packet_tx_put, packet_rx_get );
//
// schedule packet_tx_put  CF ( tx_get, rx_put, packet_rx_get );
// schedule packet_tx_put  C ( packet_tx_put );
//
// schedule packet_rx_get  CF ( tx_get, rx_put, packet_tx_put );
// schedule packet_rx_get  C ( packet_rx_get );
//
//
// Ports:
// Name                         I/O  size props
// tx_get                         O    72
// RDY_packet_tx_put              O     1 reg
// packet_rx_get                  O   106 reg
// RDY_packet_rx_get              O     1 reg
// CLK_clk_50                     I     1 clock
// CLK_clk_156_25                 I     1 clock
// RST_N_rst_156_25_n             I     1 reset
// CLK                            I     1 unused
// RST_N                          I     1 reset
// rx_put                         I    72
// packet_tx_put                  I   106 reg
// EN_packet_tx_put               I     1
// EN_packet_rx_get               I     1
//
// No combinational paths from inputs to outputs
//
//

`ifdef BSV_ASSIGNMENT_DELAY
`else
  `define BSV_ASSIGNMENT_DELAY
`endif

`ifdef BSV_POSITIVE_RESET
  `define BSV_RESET_VALUE 1'b1
  `define BSV_RESET_EDGE posedge
`else
  `define BSV_RESET_VALUE 1'b0
  `define BSV_RESET_EDGE negedge
`endif

module mkEthMac(CLK_clk_50,
		CLK_clk_156_25,
		RST_N_rst_156_25_n,
		CLK,
		RST_N,

		tx_get,

		rx_put,

		packet_tx_put,
		EN_packet_tx_put,
		RDY_packet_tx_put,

		EN_packet_rx_get,
		packet_rx_get,
		RDY_packet_rx_get);
  input  CLK_clk_50;
  input  CLK_clk_156_25;
  input  RST_N_rst_156_25_n;
  input  CLK;
  input  RST_N;

  // actionvalue method tx_get
  output [71 : 0] tx_get;

  // action method rx_put
  input  [71 : 0] rx_put;

  // action method packet_tx_put
  input  [105 : 0] packet_tx_put;
  input  EN_packet_tx_put;
  output RDY_packet_tx_put;

  // actionvalue method packet_rx_get
  input  EN_packet_rx_get;
  output [105 : 0] packet_rx_get;
  output RDY_packet_rx_get;

  // signals for module outputs
  wire [105 : 0] packet_rx_get;
  wire [71 : 0] tx_get;
  wire RDY_packet_rx_get, RDY_packet_tx_put;

  // inlined wires
  wire [64 : 0] tx_data_w_wget;

  // register cntr
  reg [63 : 0] cntr;
  wire [63 : 0] cntr_D_IN;
  wire cntr_EN;

  // register rx_valid
  reg rx_valid;
  wire rx_valid_D_IN, rx_valid_EN;

  // ports of submodule mac
  wire [63 : 0] mac_rx_axis_tdata,
		mac_tx_axis_tdata,
		mac_xgmii_rxd,
		mac_xgmii_txd;
  wire [31 : 0] mac_s_axi_wdata;
  wire [15 : 0] mac_pause_val;
  wire [10 : 0] mac_s_axi_araddr, mac_s_axi_awaddr;
  wire [7 : 0] mac_rx_axis_tkeep,
	       mac_tx_axis_tkeep,
	       mac_tx_ifg_delay,
	       mac_xgmii_rxc,
	       mac_xgmii_txc;
  wire mac_mdio_in,
       mac_pause_req,
       mac_rx_axis_tlast,
       mac_rx_axis_tvalid,
       mac_rx_dcm_locked,
       mac_s_axi_arvalid,
       mac_s_axi_awvalid,
       mac_s_axi_bready,
       mac_s_axi_rready,
       mac_s_axi_wvalid,
       mac_tx_axis_tlast,
       mac_tx_axis_tready,
       mac_tx_axis_tuser,
       mac_tx_axis_tvalid,
       mac_tx_dcm_locked;

  // ports of submodule rst_50
  wire rst_50_RESET_OUT;

  // ports of submodule rst_50_n
  wire rst_50_n_OUT_RST;

  // ports of submodule rx_fifo
  wire [105 : 0] rx_fifo_D_IN, rx_fifo_D_OUT;
  wire rx_fifo_CLR, rx_fifo_DEQ, rx_fifo_EMPTY_N, rx_fifo_ENQ, rx_fifo_FULL_N;

  // ports of submodule tx_fifo
  wire [105 : 0] tx_fifo_D_IN, tx_fifo_D_OUT;
  wire tx_fifo_CLR, tx_fifo_DEQ, tx_fifo_EMPTY_N, tx_fifo_ENQ, tx_fifo_FULL_N;

  // rule scheduling signals
  wire WILL_FIRE_RL_rx_data;

  // actionvalue method tx_get
  assign tx_get = { mac_xgmii_txc, mac_xgmii_txd } ;

  // action method packet_tx_put
  assign RDY_packet_tx_put = tx_fifo_FULL_N ;

  // actionvalue method packet_rx_get
  assign packet_rx_get = rx_fifo_D_OUT ;
  assign RDY_packet_rx_get = rx_fifo_EMPTY_N ;

  // submodule mac
  ten_gig_eth_mac_0 mac(.reset(rst_50_RESET_OUT),
			.rx_axis_aresetn(RST_N_rst_156_25_n),
			.s_axi_aclk(CLK_clk_50),
			.s_axi_aresetn(rst_50_n_OUT_RST),
			.tx_axis_aresetn(RST_N_rst_156_25_n),
			.tx_clk0(CLK_clk_156_25),
			.rx_clk0(CLK_clk_156_25),
			.mdio_in(mac_mdio_in),
			.pause_req(mac_pause_req),
			.pause_val(mac_pause_val),
			.rx_dcm_locked(mac_rx_dcm_locked),
			.s_axi_araddr(mac_s_axi_araddr),
			.s_axi_arvalid(mac_s_axi_arvalid),
			.s_axi_awaddr(mac_s_axi_awaddr),
			.s_axi_awvalid(mac_s_axi_awvalid),
			.s_axi_bready(mac_s_axi_bready),
			.s_axi_rready(mac_s_axi_rready),
			.s_axi_wdata(mac_s_axi_wdata),
			.s_axi_wvalid(mac_s_axi_wvalid),
			.tx_axis_tdata(mac_tx_axis_tdata),
			.tx_axis_tkeep(mac_tx_axis_tkeep),
			.tx_axis_tlast(mac_tx_axis_tlast),
			.tx_axis_tuser(mac_tx_axis_tuser),
			.tx_axis_tvalid(mac_tx_axis_tvalid),
			.tx_dcm_locked(mac_tx_dcm_locked),
			.tx_ifg_delay(mac_tx_ifg_delay),
			.xgmii_rxc(mac_xgmii_rxc),
			.xgmii_rxd(mac_xgmii_rxd),
			.mdio_out(),
			.mdio_tri(),
			.mdc(),
			.rx_axis_tdata(mac_rx_axis_tdata),
			.rx_axis_tkeep(mac_rx_axis_tkeep),
			.rx_axis_tlast(mac_rx_axis_tlast),
			.rx_axis_tuser(),
			.rx_axis_tvalid(mac_rx_axis_tvalid),
			.rx_statistics_valid(),
			.rx_statistics_vector(),
			.s_axi_arready(),
			.s_axi_awready(),
			.s_axi_bresp(),
			.s_axi_bvalid(),
			.s_axi_rdata(),
			.s_axi_rresp(),
			.s_axi_rvalid(),
			.s_axi_wready(),
			.tx_axis_tready(mac_tx_axis_tready),
			.tx_statistics_valid(),
			.tx_statistics_vector(),
			.xgmii_txc(mac_xgmii_txc),
			.xgmii_txd(mac_xgmii_txd),
			.xgmacint());

  // submodule rst_50
  ResetInverter rst_50(.RESET_IN(rst_50_n_OUT_RST),
		       .RESET_OUT(rst_50_RESET_OUT));

  // submodule rst_50_n
  SyncResetA #(.RSTDELAY(32'd1)) rst_50_n(.CLK(CLK_clk_50),
					  .IN_RST(RST_N),
					  .OUT_RST(rst_50_n_OUT_RST));

  // submodule rx_fifo
  SizedFIFO #(.p1width(32'd106),
	      .p2depth(32'd4),
	      .p3cntr_width(32'd2),
	      .guarded(32'd1)) rx_fifo(.RST(RST_N_rst_156_25_n),
				       .CLK(CLK_clk_156_25),
				       .D_IN(rx_fifo_D_IN),
				       .ENQ(rx_fifo_ENQ),
				       .DEQ(rx_fifo_DEQ),
				       .CLR(rx_fifo_CLR),
				       .D_OUT(rx_fifo_D_OUT),
				       .FULL_N(rx_fifo_FULL_N),
				       .EMPTY_N(rx_fifo_EMPTY_N));

  // submodule tx_fifo
  SizedFIFO #(.p1width(32'd106),
	      .p2depth(32'd4),
	      .p3cntr_width(32'd2),
	      .guarded(32'd1)) tx_fifo(.RST(RST_N_rst_156_25_n),
				       .CLK(CLK_clk_156_25),
				       .D_IN(tx_fifo_D_IN),
				       .ENQ(tx_fifo_ENQ),
				       .DEQ(tx_fifo_DEQ),
				       .CLR(tx_fifo_CLR),
				       .D_OUT(tx_fifo_D_OUT),
				       .FULL_N(tx_fifo_FULL_N),
				       .EMPTY_N(tx_fifo_EMPTY_N));

  // rule RL_rx_data
  assign WILL_FIRE_RL_rx_data = !mac_rx_axis_tvalid || rx_fifo_FULL_N ;

  // inlined wires
  assign tx_data_w_wget = { 1'd1, tx_fifo_D_OUT[73:10] } ;

  // register cntr
  assign cntr_D_IN = cntr + 64'd1 ;
  assign cntr_EN = 1'd1 ;

  // register rx_valid
  assign rx_valid_D_IN = mac_rx_axis_tvalid ;
  assign rx_valid_EN = WILL_FIRE_RL_rx_data ;

  // submodule mac
  assign mac_mdio_in = 1'b0 ;
  assign mac_pause_req = 1'b0 ;
  assign mac_pause_val = 16'h0 ;
  assign mac_rx_dcm_locked = 1'b1 ;
  assign mac_s_axi_araddr = 11'h0 ;
  assign mac_s_axi_arvalid = 1'b0 ;
  assign mac_s_axi_awaddr = 11'h0 ;
  assign mac_s_axi_awvalid = 1'b0 ;
  assign mac_s_axi_bready = 1'b0 ;
  assign mac_s_axi_rready = 1'b0 ;
  assign mac_s_axi_wdata = 32'h0 ;
  assign mac_s_axi_wvalid = 1'b0 ;
  assign mac_tx_axis_tdata =
	     (!tx_fifo_EMPTY_N || !tx_data_w_wget[64]) ?
	       64'd0 :
	       tx_data_w_wget[63:0] ;
  assign mac_tx_axis_tkeep = tx_fifo_EMPTY_N ? tx_fifo_D_OUT[9:2] : 8'd0 ;
  assign mac_tx_axis_tlast = tx_fifo_EMPTY_N && tx_fifo_D_OUT[0] ;
  assign mac_tx_axis_tuser = 1'b0 ;
  assign mac_tx_axis_tvalid = tx_fifo_EMPTY_N && tx_data_w_wget[64] ;
  assign mac_tx_dcm_locked = 1'b1 ;
  assign mac_tx_ifg_delay = 8'h0 ;
  assign mac_xgmii_rxc = rx_put[71:64] ;
  assign mac_xgmii_rxd = rx_put[63:0] ;

  // submodule rx_fifo
  assign rx_fifo_D_IN =
	     { 32'd0,
	       mac_rx_axis_tdata,
	       mac_rx_axis_tkeep,
	       !rx_valid && mac_rx_axis_tvalid,
	       mac_rx_axis_tlast } ;
  assign rx_fifo_ENQ = WILL_FIRE_RL_rx_data && mac_rx_axis_tvalid ;
  assign rx_fifo_DEQ = EN_packet_rx_get ;
  assign rx_fifo_CLR = 1'b0 ;

  // submodule tx_fifo
  assign tx_fifo_D_IN = packet_tx_put ;
  assign tx_fifo_ENQ = EN_packet_tx_put ;
  assign tx_fifo_DEQ = tx_fifo_EMPTY_N && mac_tx_axis_tready ;
  assign tx_fifo_CLR = 1'b0 ;

  // handling of inlined registers

  always@(posedge CLK_clk_156_25)
  begin
    if (RST_N_rst_156_25_n == `BSV_RESET_VALUE)
      begin
        cntr <= `BSV_ASSIGNMENT_DELAY 64'd0;
	rx_valid <= `BSV_ASSIGNMENT_DELAY 1'd0;
      end
    else
      begin
        if (cntr_EN) cntr <= `BSV_ASSIGNMENT_DELAY cntr_D_IN;
	if (rx_valid_EN) rx_valid <= `BSV_ASSIGNMENT_DELAY rx_valid_D_IN;
      end
  end

  // synopsys translate_off
  `ifdef BSV_NO_INITIAL_BLOCKS
  `else // not BSV_NO_INITIAL_BLOCKS
  initial
  begin
    cntr = 64'hAAAAAAAAAAAAAAAA;
    rx_valid = 1'h0;
  end
  `endif // BSV_NO_INITIAL_BLOCKS
  // synopsys translate_on

  // handling of system tasks

  // synopsys translate_off
  always@(negedge CLK_clk_156_25)
  begin
    #0;
    if (RST_N_rst_156_25_n != `BSV_RESET_VALUE)
      if (tx_fifo_EMPTY_N && mac_tx_axis_tready) $display("deq");
    if (RST_N_rst_156_25_n != `BSV_RESET_VALUE)
      if (tx_fifo_EMPTY_N)
	$display("%d: data=%h %h %h",
		 cntr,
		 tx_fifo_D_OUT[73:10],
		 tx_fifo_D_OUT[0],
		 tx_fifo_D_OUT[9:2]);
    if (RST_N_rst_156_25_n != `BSV_RESET_VALUE)
      if (WILL_FIRE_RL_rx_data && mac_rx_axis_tvalid)
	$display("%d: rx= %h %h %h %h",
		 cntr,
		 mac_rx_axis_tdata,
		 !rx_valid && mac_rx_axis_tvalid,
		 mac_rx_axis_tlast,
		 mac_rx_axis_tkeep);
  end
  // synopsys translate_on
endmodule  // mkEthMac

