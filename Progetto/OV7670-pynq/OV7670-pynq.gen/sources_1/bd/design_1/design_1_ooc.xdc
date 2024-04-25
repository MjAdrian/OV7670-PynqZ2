################################################################################

# This XDC is used only for OOC mode of synthesis, implementation
# This constraints file contains default clock frequencies to be used during
# out-of-context flows such as OOC Synthesis and Hierarchical Designs.
# This constraints file is not used in normal top-down synthesis (default flow
# of Vivado)
################################################################################
create_clock -name PCLK -period 41.667 [get_ports PCLK]
create_clock -name processing_system7_FCLK_CLK0 -period 10 [get_pins processing_system7/FCLK_CLK0]
create_clock -name processing_system7_FCLK_CLK1 -period 25 [get_pins processing_system7/FCLK_CLK1]

################################################################################