module verilogClkTest(clk,reset,light_out);
input clk,reset;
output reg light_out;



reg[18:0] div_490196_counter;
reg[8:0] led_counter;
wire clk_102Hz;

reg[26:0] cnt;
always@(posedge clk or negedge reset)
begin
	if(reset == 1'b0)
		div_490196_counter <= 0;
	else
		if(div_490196_counter == 490165)
			div_490196_counter <= 0;
		else
			div_490196_counter <= div_490196_counter + 1;
end

assign clk_102Hz = (div_490196_counter < 245098)? 1'b1 : 1'b0;
//assign clk_102Hz=div_490196_counter[18];

always@(posedge clk_102Hz or negedge reset)
begin
	if(reset == 1'b0)
	begin
		led_counter <= 0;
		light_out <=0;
	end
	else
		if(led_counter == 101)
		begin
			led_counter = 0;
			light_out <= ~light_out;
		end
		else
			led_counter <= led_counter + 1;
end 

////
/*
reg clk_102Hz;
reg[8:0] led_counter;
reg[18:0] cnt;

always@(posedge clk or negedge reset)
begin
	if(reset == 1'b0) begin 
		cnt <= 0;
		clk_102Hz <= 0;
	end
	else
		if(cnt == 490164)
		begin
			clk_102Hz <= 1;
			cnt <= 0;
		end
		else begin
			clk_102Hz <= 0;
			cnt <= cnt + 1;
		end
end



always@(posedge clk or negedge reset)
begin
	if(reset == 1'b0)
	begin
		light_out <= 0;
		led_counter <= 0;
	end
	else
		if(clk_102Hz)
		begin
			if(led_counter == 101)
			begin
			led_counter <= 0;
			light_out <= ~light_out;
			end
			else
			led_counter <= led_counter + 1;
		end
end 

*/






endmodule