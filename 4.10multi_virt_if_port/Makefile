FILES = top.v ifc.sv dut.v test.v
IFILES = 
FLAGS = -sverilog -debug -I

run:	simv
	simv -l sim.log

simv:   ${FILES} ${IFILES} 
	vcs ${FLAGS} -l comp.log ${FILES}

waves:	${FILES} ${IFILES} 
	vcs -sverilog -RI -debug_all +cfgfile+default.cfg -l simv.log ${FILES}


DIR = $(shell basename `pwd`)

tar:	clean
	cd ..; \
	tar cvf ${DIR}.tar ${DIR}

clean:
	rm -rf simv* csrc* *.log *.key core .__solver* vcdplus.vpd
	rm -rf  vera*.rc  .vera_debugger_rc.lock *~ .__snps* *.bck
