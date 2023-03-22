module cpu(
    input clk,
    input reset,
    input switch_0,
    input switch_1,
    input switch_2,
    input switch_3,
    input btn_0,
    input btn_1,
    output [3:0]out
    );
    
    reg [3:0]A, B, X, Y, PC, SP;
    
    reg LOAD, LOAD1, START;
    
    reg ZERO, CARRY, SIGN, HALT;
    
    reg [3:0]PROG[15:0];
       
    wire [3:0] bus_in;

    assign bus_in = {switch_0,switch_1,switch_2,switch_3};
    assign bus_out = PC;
    
    always @(*) begin
        if(reset) begin 
            LOAD = 1;
            START = 0;
            PC = 0;
            SP = 0;
        end  
        
        PC = PC;
        SP = SP;
        START = START;
        LOAD = LOAD;  
        LOAD1 = LOAD1;
        
        if(LOAD && btn_0 && !LOAD1) begin 
            PROG[PC] = bus_in;
            PC = PC + 1;
            LOAD1 = 1;
        end
        
        if(LOAD1 && !btn_0) LOAD1 = 0;
    end
    
    always @(posedge clk) begin
        if(reset) begin 
            HALT=0;
            A = 0;
            B = 0;
            X = 0; 
            Y = 0;
        end
        
        HALT=HALT;
        A = A;
        B = B;
        X = X; 
        Y = Y;
        ZERO = 0; 
        CARRY= 0;
        SIGN = 0;
        
//        if(!HALT && START) begin 
//            case(PROG[PC][3:0]) 
//                4'b0000: begin 
//                end 
                
//                4'b0001: begin
                    
//                end
//            endcase
//        end
    end
    
endmodule
