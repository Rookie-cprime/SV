FILES = unique.sv
FLAGS = -ntb_opts new_constraints -sverilog -I

run:	simv
	simv -l sim.log

simv:   ${FILES}
	vcs ${FLAGS} -l comp.log ${FILES}

waves:	${FILES}
	vcs -sverilog -RI -debug_all +cfgfile+default.cfg -l simv.log ${FILES}

DIR = $(shell basename `pwd`)

tar:	clean
	cd ..; \
	tar cvf ${DIR}.tar ${DIR}

clean:
	@rm -rf simv* csrc* *.log *.key core* .__solver* vcdplus.vpd *.vro
	@rm -rf  vera*.rc  .vera_debugger_rc.lock *~ .__snps* *.bck core*
