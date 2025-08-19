# Clock-Divider
Synthesizable HDL code to acquire lower clock frequencies from higher frequency.
## IO Description
- i_clk: Input clock
- i_reset: Reset input, will turn the output clk to zero.
- o_clk: Output clock, derived from the higher frequncy **i_clk** signal.<br>
<ins>**Note**</ins><br>
Always use the provided PLLs or MMCMs to derive different clock frequencies. However, it is not always possible to derive the required clock frequency from those primitives. This method does not guarantee phase locking of derived clock with the input clock.
