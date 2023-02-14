# if defined(__ppc__) || defined(__powerpc__)
/* Sun-$Revision: 30.6 $ */

/* Copyright 1992-2006 Sun Microsystems, Inc. and Stanford University.
   See the LICENSE file for license information. */

# ifdef INTERFACE_PRAGMAS
  # pragma interface
# endif


// included in node.hh

    void saveReturnPC();

    void saveNonVolatileRegisters();

    void copyIncomingRegisterArgsToNonVolatileRegisters();

    void saveIncomingRegisterArgsOnStackIfNecessary(); 

    void actuallyCreateStackFrame();
# endif // __ppc__
