/* Any copyright is dedicated to the Public Domain.
 * http://creativecommons.org/publicdomain/zero/1.0/ */
/* for C++ support */

.section .text
exit: .weak exit /* If linked without newlib, used by crt0. Can't be defined in crt0, as newlibs exit is also weak */
	bl __crt0_exit

_init_signal: .weak _init_signal /* Same here */
	bx lr
 
.section .init_array
	.long -1 /* Terminating character for ctor list */
    
.section .fini_array
	.long -1
