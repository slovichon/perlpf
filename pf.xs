/* $Id$ */
#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"
#include "net/pfvar.h"

MODULE = PF
PACKAGE = PF
PROTOTYPES: DISABLE

typedef struct {
	int fd;
} p_pf_t;

void
new()
PPCODE:
	if ((self = malloc(sizeof(p_pf_t))) == NULL) {
	}
	self->fd = -1;

void
open(self, devpath = Nullsv)
	p_pf_t *self
	char* devpath
CODE:
	self->fd = open(devpath ? devpath : "/dev/pf", O_RDWR);
	if (self->fd == -1) {
		/* Set $! and $? appropriately. */
	}

void
start(self)
	p_pf_t *self
CODE:
	if (self->fd == -1)
	else
		ioctl(self->fd, DIOCSTART);

void
stop(self)
	p_pf_t *self
CODE:
	if (self->fd == -1)
	else
		ioctl(self->fd, DIOCSTOP);

/* ALTQ functions. */
void
startaltq(self)
	p_pf_t *self
CODE:
	if (self->fd == -1)
	else
		ioctl(self->fd, DIOCSTARTALTQ);

void
stopaltq(self)
	p_pf_t *self
CODE:
	if (self->fd == -1)
	else
		ioctl(self->fd, DIOCSTOPALTQ);

void
addaltq(self)
	p_pf_t *self
CODE:
	ioctl();

void
getaltqs(self)
	p_pf_t *self
CODE:

void
getaltq(self)
	p_pf_t *self
CODE:

/* Address functions. */
void
beginaddrs(self)
	p_pf_t *self
CODE:

void
addaddr(self)
	p_pf_t *self
CODE:

void
getaddr(self)
	p_pf_t *self
CODE:

void
getaddrs(self)
	p_pf_t *self
CODE:

void
changeaddr(self)
	p_pf_t *self
CODE:

void
clraddrs(self)
	p_pf_t *self
CODE:

void
addaddrs(self)
	p_pf_t *self
CODE:

void
	p_pf_t *self
deladdrs(self)
CODE:

void
	p_pf_t *self
setaddrs(self)
CODE:

void
	p_pf_t *self
getaddrs(self)
CODE:

void
tstaddrs(self)
	p_pf_t *self
CODE:

/* Rule functions. */
void
getrules(self)
	p_pf_t *self
CODE:

void
getrule(self)
	p_pf_t *self
CODE:

void
changerule(self)
	p_pf_t *self
CODE:

void
clrrulecounters(self)
	p_pf_t *self
CODE:

void
addrule(self)
	p_pf_t *self
CODE:

/* State functions. */
void
clrstates(self)
	p_pf_t *self
CODE:

void
addstate(self)
	p_pf_t *self
CODE:

void
getstate(self)
	p_pf_t *self
CODE:

void
killstates(self)
	p_pf_t *self
CODE:

void
getstates(self)
	p_pf_t *self
CODE:

/* Stat functions. */
void
getqstats(self)
	p_pf_t *self
CODE:

void
setstatusif(self)
	p_pf_t *self
CODE:

void
getstatus(self)
	p_pf_t *self
CODE:

void
clrstatus(self)
	p_pf_t *self
CODE:

void
natlook(self)
	p_pf_t *self
CODE:

void
setdebug(self)
	p_pf_t *self
CODE:

void
settimeout(self)
	p_pf_t *self
CODE:

void
gettimeout(self)
	p_pf_t *self
CODE:

void
setlimit(self)
	p_pf_t *self
CODE:

void
getlimit(self)
	p_pf_t *self
CODE:

/* Table functions. */
void
clrtables(self)
	p_pf_t *self
CODE:

void
addtables(self)
	p_pf_t *self
CODE:

void
deltables(self)
	p_pf_t *self
CODE:

void
gettables(self)
	p_pf_t *self
CODE:

void
gettstats(self)
	p_pf_t *self
CODE:

void
clrtstats(self)
	p_pf_t *self
CODE:

void
getastats(self)
	p_pf_t *self
CODE:

void
clrastats(self)
	p_pf_t *self
CODE:

void
settflags(self)
	p_pf_t *self
CODE:

void
inadefine(self)
	p_pf_t *self
CODE:

void
xbegin(self)
	p_pf_t *self
CODE:

void
xcommit(self)
	p_pf_t *self
CODE:

void
xrollback(self)
	p_pf_t *self
CODE:

void
osfpflush(self)
	p_pf_t *self
CODE:

void
osfpadd(self)
	p_pf_t *self
CODE:

void
osfpget(self)
	p_pf_t *self
CODE:

void
getsrcnodesself()
	p_pf_t *self
CODE:

void
clrsrcnodes(self)
	p_pf_t		*self
CODE:
	if (self->fd != -1)

void
getifaces(self, iface)
	p_pf_t		*self
	pf_iface_t	*iface
CODE:

void
clristats(self, iface)
	p_pf_t		*self
	p_iface_t	*iface
CODE:
	if (self->fd != -1)
		ioctl(self->fd, DIOCICLRISTATS, );

void
close(self)
	p_pf_t		*self
CODE:
	if (self->fd != -1)
		close(self->fd);
	self->fd = -1;
