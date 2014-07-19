echo $1 

SRC=/home/jun/SecondWrite_Output/benchmarks/$1
NEWSRC=/home/jun/New_SecondWrite_Output/benchmarks/$1

BINDIR=/home/jun/build/Release+Asserts/bin
INITDIR=/home/jun/straight-DTA/straightDFA
INIT=$INITDIR/init
LOG=$INITDIR/log
HELLODIR=/home/jun/build/Release+Asserts/lib
echo "opt -load $HELLODIR/LLVMHello.so -inst <$SRC/$1.bc >$NEWSRC/new$1.bc"
opt -load $HELLODIR/LLVMHello.so -inst <$SRC/$1.bc >$NEWSRC/new$1.bc
echo "llvm-link $INIT.bc $LOG.bc $NEWSRC/new$1.bc -o $NEWSRC/new$1-linked.bc"
llvm-link $INIT.bc $LOG.bc $NEWSRC/new$1.bc -o $NEWSRC/new$1-linked.bc
echo "opt -load $HELLODIR/LLVMHello.so -inst <$NEWSRC/new$1-linked.bc >$NEWSRC/$1.bc"
opt -load $HELLODIR/LLVMHello.so -inline-log -inline <$NEWSRC/new$1-linked.bc >$NEWSRC/$1.bc

