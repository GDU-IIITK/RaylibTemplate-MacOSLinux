cc = g++
src = src/Main.cpp
exe = build/Main

$(exe): $(src)
	mkdir -p build
	cp raylib/lib/* build
	$(cc) -o $(exe) $(src) -Iraylib/include -Lraylib/lib -lraylib

clean:
	rm -rf build
