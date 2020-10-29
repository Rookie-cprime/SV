/*
this module is the under test module
Arbiter example
*/

module arb(arb_if.DUT arbif);
parameter IDLE = 1,GRANT0 = 0,GRANT1 = 1;
reg last_winner;
reg winner;
reg [1:0] next_grant;
reg [1:0] state,n_state;


always	@(*)begin
		case(state)
		IDLE:begin
			if(next_grant[0])
				n_state	= GRANT0;
			else if(next_grant[1])
				n_state	= GRANT1;
			else if(next_grant == 2'b11)
				$display("ERROR: two grants asserted simultaneously");
			else
				n_state = state;
		end
		GRANT0:begin
			if(~arbif.request[0])
				n_state = IDLE	;
		end
		GRANT1:begin
			if(~arbif.request[1])
				n_state = IDLE  ;
		end
		default:begin
			n_state = state;
		end
		endcase
end

always	@(*)begin
		case(state)
		IDLE:begin
			next_grant[0] = arbif.request[0] & ~(arbif.request[1]&~last_winner) ;
			next_grant[1] = arbif.request[1] & ~(arbif.request[0]& last_winner);
		end
		GRANT0:begin
			if(~arbif.request[0])
			next_grant = 'd0	;
		end
		GRANT1:begin
			if(~arbif.request[1])
			next_grant = 'd0	;
		end
		default:begin
			next_grant = arbif.grant;
		end
		endcase
end

always	@(*)begin
		case(state)
			IDLE:begin
				if(next_grant[0])
					winner = 1'b0	;
				else if(next_grant[1])
					winner = 1'b1	;
				else
					winner = last_winner;
			end
			default:winner = last_winner;
		endcase
end

always	@(posedge arbif.clk or negedge arbif.reset)begin
		if(arbif.reset)begin
			state  <= IDLE	;
			last_winner <= 1'b0;
			arbif.grant <= 2'b00;
		end
		else begin
			state <= n_state;
			last_winner <= winner;
			arbif.grant <= next_grant;
		end
end

endmodule