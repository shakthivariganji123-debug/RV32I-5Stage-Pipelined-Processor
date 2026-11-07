// 32-bit RISC Core Top-Level Module (RV32I Base Pipeline)
module riscv_core (
    input  wire        clk,
    input  wire        reset,
    output wire [31:0] pc_out,
    input  wire [31:0] instr_in,
    output wire [31:0] mem_addr,
    output wire [31:0] mem_wdata,
    input  wire [31:0] mem_rdata,
    output wire        mem_we
);

    reg [31:0] pc;
    wire [31:0] pc_next;

    // Fetch Stage
    always @(posedge clk or posedge reset) begin
        if (reset)
            pc <= 32'h00000000;
        else
            pc <= pc_next;
    end

    assign pc_next = pc + 4;
    assign pc_out  = pc;

    // Instruction Decode & Execution Control Logic
    wire [6:0] opcode = instr_in[6:0];
    wire [4:0] rd     = instr_in[11:7];
    wire [2:0] funct3 = instr_in[14:12];
    wire [4:0] rs1    = instr_in[19:15];
    wire [4:0] rs2    = instr_in[24:20];
    wire [6:0] funct7 = instr_in[31:25];

    assign mem_addr  = 32'h0;
    assign mem_wdata = 32'h0;
    assign mem_we    = 1'b0;

endmodule
