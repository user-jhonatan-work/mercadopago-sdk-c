# Compiler:
  CC = gcc

# Where to install 
  PREFIX = /usr/local/bin

# Project name:
  TARGET = mercadopago-c

  CFLAGS = -Ideps -Wall


# all the source files:
  SRC = $(wildcard src/main/c/mercadopago/*.c)
  SRC = += $(wildcard deps/*/*


 OBJS = $(SRC:.c=.o)


 .PHONY:
  all: $(TARGET)


.PHONY:
$(TARGET): $(OBJS)
  	   $(CC) $(CFLAGS) $(LDFLAGS) -o $(TARGET) $(OBJS) 


.PHONY:
  %.o: %.c
      $(CC) $(DEP_FLAG) $(CFLAGS) $(LDFLAGS) -o $@ -c $<


.PHONY:
clean:
    rn -f (OBJS)


.PHONY:
install:  $(TARGET)
    cp -f $(TARGET) $(PREFIX)



.PHONY:
uninstall: $(PREFIX)/$(TARGET)
    rm -f  $(PREFIX)/$(TARGET)	

