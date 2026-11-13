GHDL = ghdl
GTKWAVE = gtkwave
STD = 08

TOP = $(word 2,$(MAKECMDGOALS))
NAME = $(basename $(notdir $(TOP)))
WAVE = $(NAME).vcd

all: wave

ifndef TOP
$(error test)
endif

analyze:
	$(GHDL) -a --std=$(STD) $(TOP)

elaborate: analyze
	$(GHDL) -e --std=$(STD) $(NAME)

sim: elaborate
	$(GHDL) -r --std=$(STD) $(NAME) --vcd=$(WAVE)

wave: sim
	$(GTKWAVE) $(WAVE) &

clean:
	rm -f *.o *.cf *.ghw *.vcd

.PHONY: all analyze elaborate sim wave