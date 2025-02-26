# Compiler
JAVAC = javac
JAVA  = java

# Source files
SRCS  = $(wildcard *.java)
OBJS  = $(SRCS:.java=.class)

# Main class (Change this to match your main file)
MAIN_CLASS = Main

# Default target
all: compile

# Compile Java files
compile: $(OBJS)

%.class: %.java
	$(JAVAC) $<

# Run the program
run: compile
	$(JAVA) $(MAIN_CLASS)

# Clean up compiled files
clean:
	rm -f *.class
