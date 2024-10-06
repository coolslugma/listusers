#	Copyright (c) 1990 UNIX System Laboratories, Inc.
#	Copyright (c) 1984, 1986, 1987, 1988, 1989, 1990 AT&T
#	  All Rights Reserved

#	THIS IS UNPUBLISHED PROPRIETARY SOURCE CODE OF
#	UNIX System Laboratories, Inc.
#	The copyright notice above does not evidence any
#	actual or intended publication of such source code.

FILE=listusers
INSTALLS=listusers
SRC=users.c
OBJ=$(SRC:.c=.o)

all		: $(FILE) 

install		: all 
		$(INSTALL) -f $(BIN) $(INSTALLS)

clean:
		rm -f $(FILE) $(OBJ)

$(FILE)		:
		$(CC) -O -c $(SRC)
		$(CC) -O -o $(FILE) $(OBJ)
