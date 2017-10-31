LFLAGS+=-lpng
LFLAGS+=-lz

PNG_INC= 
PNG_LIB= 

CORE_O= MImage.o DotMatrix.o
EXECUTE= DotMatrix

$(EXECUTE): DotMatrix.o MImage.o
	g++ $(CORE_O) -o $(EXECUTE) -L$(PNG_LIB) $(LFLAGS)

clean:
	rm -f $(CORE_O) $(EXECUTE)

.cpp.o:
	$(CC) -I$(PNG_INC) -c -o $@ $<

MImage.o: MImage.cpp MImage.h	
DotMatrix.o: DotMatrix.cpp MImage.h

