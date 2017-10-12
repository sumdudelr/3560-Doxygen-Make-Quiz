all: build doczip
	#Makes the entire project by default
clean:
	rm -r *.o myexe html/ latex/
build: *.cc *.h
	g++ collegemain.cc -o myexe
myexe: build
	#Same as target build
doc: *.cc *.h
	doxygen doxyfile
doczip: doc
	tar azf latex/ html/

