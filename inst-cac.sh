PROG=cactusADM.436
echo $PROG 

SRC=/home/jun/SecondWrite_Output/benchmarks/$1
NEWSRC=/home/jun/New_SecondWrite_Output/benchmarks/$1

BINDIR=/home/jun/build/Release+Asserts/bin
INITDIR=/home/jun/straight-DTA/straightDFA
INIT=$INITDIR/init
LOG=$INITDIR/log
HELLODIR=/home/jun/build/Release+Asserts/lib
echo "opt -load $HELLODIR/LLVMHello.so -inst <$SRC/$PROG.bc >$NEWSRC/new$PROG.bc"
opt -load $HELLODIR/LLVMHello.so -inst <$SRC/$PROG.bc >$NEWSRC/new$PROG.bc
echo "llvm-link $INIT.bc $LOG.bc $NEWSRC/new$PROG.bc -o $NEWSRC/new$PROG-linked.bc"
llvm-link $INIT.bc $LOG.bc $NEWSRC/new$PROG.bc -o $NEWSRC/new$PROG-linked.bc
echo "opt -load $HELLODIR/LLVMHello.so -inst <$NEWSRC/new$PROG-linked.bc >$NEWSRC/$PROG.bc"
opt -load $HELLODIR/LLVMHello.so -inline-log -inline <$NEWSRC/new$PROG-linked.bc >$NEWSRC/$PROG.bc

