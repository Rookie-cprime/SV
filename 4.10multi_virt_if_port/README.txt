This is an example of a single testbench that connects to a variable
number of DUT's.

The DUT is a simple counter.  In the top.v netlist, a generate
statement is used to instantiate multiple designs.  They are all
connected using an array of interfaces, called X_if.

Change NUM_XI in top.v to increase the number of DUTs and interfaces.

The testbench has a parameter NUM_XI with the number of interfaces, set by
the top-level netlist.  The testbench creates an array of virtual
interfaces and points it to the top-level physical interface array.
Lastly, the testbench creates NUM_XI drivers that use the virtual
interfaces to stimulate the DUTs.

This has been tested with VCS 2005.06-9
