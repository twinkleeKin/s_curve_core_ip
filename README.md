## Overview:

This module is designed for generating S-curve velocity profiles in stepper motor control systems. It achieves this functionality without relying on any IP cores or DSP resources, with a minimal resource footprint of **700 LUTs**. Notably, it is exclusively compatible with **Xilinx FPGAs**. To integrate this module into your project, simply add the files **s_curve_core.edf** and **s_curve_core.v**, allowing you to instantiate the `s_curve_core` module seamlessly.

1. **Extended Distance Range:** Supports travel distances of up to **1,000,000 pulses**, accommodating large-scale motion applications.
2. **High-Speed Operation:** Delivers maximum speeds of **1,000,000 pulses per second (p/s)**, fully compatible with high-resolution 256 microstep configurations for smooth, precise motion control.

## Interface

~~~verilog
module s_curve_core (
    input               sys_clk,                   	// System clock (fixed 50MHz)
    input               sys_rst_n,                 	// Low-level reset
    input               start_s,  					// Single-cycle start      
    input  [15:0]       AIM_SPEED, 					// Target speed, unit: p /s
    input  [31:0]       AA_ACCELERATION_CLK,     	// Acceleration jerk (fixed-point number), unit:  p/(s³)
    input  [31:0]       AA_ACCELERATION2_CLK,   	// Deceleration jerk (fixed-point number)
    input  [15:0]       TARGET_POS,              	// Target position, unit: p(pulse)
    input  [15:0]       theory_dec_len,         	// Theoretical deceleration length input, unit: p
    input               force_stop,            		// Emergency stop signal
    output reg [15:0]   output_counter,      		// Pulse counter, unit: p
    output reg          pulse,						// Stepper motor pulse
    output reg          pulse_sent_done       		// Step completion indicator
);
~~~



### Simplified Mode

When **AA_ACCELERATION_CLK** equals **AA_ACCELERATION2_CLK**, the velocity profile becomes symmetric. In this configuration, the **theory_dec_len** parameter does not require input. Additionally, for small **TARGET_POS** values, recalculating the limit speed is unnecessary. When the **AIM_SPEED** cannot be attained, the velocity profile will feature a triangular peak in this mode—a behavior that is acceptable for most applications.

### Full Mode

When using distinct acceleration and deceleration parameters, the module requires information about the deceleration start point, which is specified via the **theory_dec_len** parameter. Additionally, the respective acceleration and deceleration distance must be calculated. If the **TARGET_POS** is shorter than the sum of these two distances, a new limit speed must be computed to ensure a smooth velocity transition.

Calculate the acceleration and deceleration lengths based on the target speed(real_speed):

```verilog
// Example: AA_ACCELERATION=5500000 p/(s³)
AA_ACCELERATION_CLK = AA_ACCELERATION / 6776.264;
AA_ACCELERATION2_CLK = AA_ACCELERATION2 / 6776.264;

theory_acc_len = $sqrt(real_speed/AA_ACCELERATION) * real_speed;
theory_dec_len = $sqrt(real_speed/AA_ACCELERATION2) * real_speed;
```

Calculate the re-planned speed:

```verilog
// Speed limit logic
if (TARGET_POS < 100) begin
    speed_limit = 300;		// This is an example.
end else if (TARGET_POS > theory_acc_len + theory_dec_len) begin
    speed_limit = real_speed;
end else begin	// Use a smaller number to simplify the calculation.
    if (AA_ACCELERATIO <= AA_ACCELERATION2) begin
        speed_limit = ($pow($itor(TARGET_POS)*TARGET_POS*AA_ACCELERATION/4, 1.0/3));
    end else begin
        speed_limit = ($pow($itor(TARGET_POS)*TARGET_POS*AA_ACCELERATION2/4, 1.0/3));
    end
end
```

Calculate the input speed:

```verilog
// Unit: pulse/s, speed setting step value is 47.684
AIM_SPEED = speed_limit / 47.684;
```

As above, you can get the calculated AIM_SPEED, AA_ACCELERATION_CLK and AA_ACCELERATION2_CLK. Finally, calculate theory_dec_len using these parameters;

~~~
// Use these parameters to instantiate the module
theory_dec_len = $sqrt(speed_limit/AA_ACCELERATION2) * speed_limit + 1;
~~~

## Others

When you use the emergency stop signal: force_stop, please make sure that the deceleration parameters (AA_ACCELERATION2_CLK) have been inputted.

In this case, the actual deceleration length is not theory_dec_len but depends on AA_ACCELERATION2_CLK.

## Conclusion

It is recommended to use the first mode because it is easy. No pre-computation can simplify the design.

