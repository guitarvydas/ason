LIBSRC=0D/odin/std
ODIN_FLAGS ?= -debug -o:none
D2J=0d/das2json/das2json

dev: repo clean run

run: ason transpile.drawio.json
	./ason test.ason main ason.drawio $(LIBSRC)/transpile.drawio

ason: ason.drawio.json
	odin build . $(ODIN_FLAGS)

ason.drawio.json: ason.drawio transpile.drawio.json
	$(D2J) ason.drawio

transpile.drawio.json: $(LIBSRC)/transpile.drawio
	$(D2J) $(LIBSRC)/transpile.drawio

clean:
	rm -rf ason ason.dSYM *~ *.json

repo:
	(cd 0D ; git pull)
