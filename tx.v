module tx(
  clk,
  n_rst,
  txen,
  tx_data,
  load,
  TXD
);

input clk;
input n_rst;
input txen;
input [7:0]tx_data;
input load;
//input [7:0]sw;

output TXD;

reg TXD;
reg [2:0] state;
reg [2:0] next_state;

localparam IDLE = 3'h0;  
localparam WAIT = 3'h1;
localparam START = 3'h2;
localparam WRITE = 3'h3;
localparam STOP = 3'h4;

reg [7:0]in_data;

always @ (posedge clk or negedge n_rst)
    if(!n_rst)
        in_data <= 8'h00;
    else if (state == WRITE) begin
        in_data <= (txen == 1'b1) ? {1'b0 ,in_data[7:1]} : in_data; // right shift
    end
    else if (state == START) begin
        in_data <= tx_data;
    end
    else
        in_data <= in_data;   
        
always @ (posedge clk or negedge n_rst)
  if(!n_rst)begin
    TXD <= 1'b1; 
  end
  else if(state == START) begin
    TXD <= 1'b0;
  end
  else if(state == WRITE)begin
    TXD <= (txen == 1'b0) ? in_data[0] : TXD;
  end
  else if(state == STOP)begin
    TXD <= 1'b1;
  end
  else begin
    TXD <= TXD;
  end
     
      
reg [3:0] cnt; // 4bit

always @(posedge clk or negedge n_rst)  // Flip flop = if affected by previous circumstances
    if(!n_rst)
      cnt <= 4'h0;
  else
    cnt <= (txen == 1'b0) ? cnt :
           (cnt == 4'h9) ? 4'h0 : cnt + 4'h1;

always @ (*)
    case(state)
        IDLE : next_state = (load  == 1'b1) ? WAIT : state;
        WAIT : next_state = (txen == 1'b1) ? START : state;
        START : next_state = (cnt == 4'd1) ? WRITE : state;
        WRITE : next_state = (cnt == 4'd9)? STOP : state;
        STOP : next_state = (cnt == 4'd10) ? IDLE : state;
        default : next_state = IDLE;
    endcase


endmodule