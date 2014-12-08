
# location of the Boost Python include files and library
OPENNI2_INC = ../kinect/Include
OPENNI2_LIB = ../kinect/Redist
NITE2_INC = ../kinect/Include
NITE2_LIB = ../kinect/Redist

CC = g++

TARGET = oniFixer
OBJS = main.o

$(TARGET): $(OBJS)
	$(CC) $^ -L$(BOOST_LIB) -L$(OPENNI2_LIB) -L$(NITE2_LIB) -lOpenNI2 -lNiTE2 -o $@

$(OBJS): %.o: %.cpp
	$(CC) -Wall -Wextra -O2 -I$(BOOST_INC) -I$(NITE2_INC) -I$(OPENNI2_INC) -std=gnu++11 -c $< -o $@

clean:
	rm -f oniFixer
	rm -f *.o
	rm -f *.so

.PHONY: clean

