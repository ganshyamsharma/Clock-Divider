# Clock-Divider
Synthesizable HDL code to acquire lower clock frequencies from a higher frequency clock.
## IO Description
- i_clk: Input clock (Higher frequency)
- i_reset: Reset input, will turn the output clk to zero.
- o_clk: Output clock, derived from the higher frequncy **i_clk** signal.<br>
<ins>**Note**</ins><br>
It is recommended to always use the PLLs or MMCMs to derive the desired clock frequencies. However, it is not always possible to derive the required frequency clock signal from those primitives. In those cases this synthesizable clock divider circuit is useful. However, this method does not guarantee the phase locking of derived clock with the input clock.
