CXX="g++"
all: ex.cpp
	$(CXX) ex.cpp $(CXXFLAGS) -std=c++11 -lpthread -o ex
	./ex > out.txt
clean:
	rm -f ex out.txt
	rm -fr ex.unstripped *.s *.old*  dl_files *.gtirb
check:
	./ex >/tmp/res.txt
	@ diff out.txt /tmp/res.txt && echo TEST OK
