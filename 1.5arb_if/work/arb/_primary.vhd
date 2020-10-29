library verilog;
use verilog.vl_types.all;
entity arb is
    generic(
        IDLE            : integer := 1;
        GRANT0          : integer := 0;
        GRANT1          : integer := 1
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of IDLE : constant is 1;
    attribute mti_svvh_generic_type of GRANT0 : constant is 1;
    attribute mti_svvh_generic_type of GRANT1 : constant is 1;
end arb;
