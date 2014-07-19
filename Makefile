#SUBTESTS := lbm_O0.out lbm_O3.out mcf_O0.out mcf_O3.out sjeng_O0.out sjeng_O3.out h264ref_O0.out h264ref_O3.out \
	libquantum_O0.out libquantum_O3.out bzip2_O0.out bzip2_O3.out perlbench_O0.out perlbench_O3.out \
	gcc_O0.out gcc_O3.out cactusADM_O0.out cactusADM_O3.out omnetpp_O0.out omnetpp_O3.out gromacs_O0.out \
	gromacs_O3.out calculix_O0.out calculix_O3.out dealII_O0.out dealII_O3.out namd_O0.out namd_O3.out \
	tonto_O3.out povray_O0.out povray_O3.out gobmk_O0.out gobmk_O3.out xalancbmk_O0.out \
	xalancbmk_O3.out milc_O0.out milc_O3.out sphinx3_O0.out sphinx3_O3.out bwaves_O0.out bwaves_O3.out \
	soplex_O0.out soplex_O3.out zeusmp_O0.out zeusmp_O3.out leslie_O0.out leslie_O3.out
INITDIR=/home/jun/straight-DTA/straightDFA
SUBTESTS :=leslie_O0.out 

all: $(SUBTESTS)


TOP := $(shell pwd)

initlogger:
	@clang -emit-llvm -c $(INITDIR)/init.c -o $(INITDIR)/init.bc
	@clang -emit-llvm -c $(INITDIR)/log.c -o $(INITDIR)/log.bc
lbm_O0.out:
	@./inst.sh lbm_O0
	@cd lbm_O0; ./output.log; cd ../; done
lbm_O3.out: 
	@cd lbm_O3; ./output.log; cd ../; done
mcf_O0.out:
	@./inst.sh mcf_O0
	@cd mcf_O0; ./output.log; cd ../; done
mcf_O3.out: 
	@cd mcf_O3; ./output.log; cd ../; done
sjeng_O0.out: 
	@./inst.sh sjeng_O0
	@cd sjeng_O0; ./output.log; cd ../; done
sjeng_O3.out: 
	@cd sjeng_O3; ./output.log; cd ../; done
h264ref_O0.out:
	@./inst.sh  h264ref_O0
	@cd h264ref_O0; ./output.log; cd ../; done
h264ref_O3.out: 
	@cd h264ref_O3; ./output.log; cd ../; done
libquantum_O0.out: 
	@./inst.sh libquantum_O0
	@cd libquantum_O0; ./output.log; cd ../; done
libquantum_O3.out: 
	@cd libquantum_O3; ./output.log; cd ../; done
bzip2_O0.out:
	@./inst.sh bzip2_O0
	@cd bzip2_O0; ./output.log; cd ../; done
bzip2_O3.out: 
	@cd bzip2_O3; ./output.log; cd ../; done
perlbench_O0.out: 
	@cd perlbench_O0; ./output.log; cd ../; done
perlbench_O3.out: 
	@cd perlbench_O3; ./output.log; cd ../; done
gcc_O0.out: 
	@./inst.sh gcc_O0
	@cd gcc_O0; ./output.log; cd ../; done
gcc_O3.out: 
	@cd gcc_O3; ./output.log; cd ../; done
cactusADM_O0.out:
	@./inst-cac.sh cactusADM_O0
	@cd cactusADM_O0; ./output.log; cd ../; done
cactusADM_O3.out: 
	@cd cactusADM_O3; ./output.log; cd ../; done
omnetpp_O0.out:
	@./inst.sh omnetpp_O0
	@cd omnetpp_O0; ./output.log; cd ../; done
omnetpp_O3.out: 
	@cd omnetpp_O3; ./output.log; cd ../; done
gromacs_O0.out:
	@./inst-gro.sh gromacs_O0
	@cd gromacs_O0; ./output.log; cd ../; done
gromacs_O3.out: 
	@cd gromacs_O3; ./output.log; cd ../; done
calculix_O0.out: 
	@./inst-cal.sh calculix_O0
	@cd calculix_O0; ./output.log; cd ../; done
calculix_O3.out: 
	@cd calculix_O3; ./output.log; cd ../; done
dealII_O0.out:
	@./inst-dea.sh dealII_O0
	@cd dealII_O0; ./output.log; cd ../; done
dealII_O3.out: 
	@cd dealII_O3; ./output.log; cd ../; done
namd_O0.out:
	@./inst.sh namd_O0
	@cd namd_O0; ./output.log; cd ../; done
namd_O3.out: 
	@cd namd_O3; ./output.log; cd ../; done
tonto_O3.out:
	@./inst.sh tonto_O3
	@cd tonto_O3; ./output.log; cd ../; done
povray_O0.out: 
	@./inst.sh povray_O0
	@cd povray_O0; ./output.log; cd ../; done
povray_O3.out: 
	@cd povray_O3; ./output.log; cd ../; done
gobmk_O0.out:
	@./inst-gob.sh gobmk_O0
	@cd gobmk_O0; ./output.log; cd ../; done
gobmk_O3.out: 
	@cd gobmk_O3; ./output.log; cd ../; done
xalancbmk_O0.out:
	@./inst-xal.sh xalancbmk_O0
	@cd xalancbmk_O0; ./output.log; cd ../; done
xalancbmk_O3.out: 
	@cd xalancbmk_O3; ./output.log; cd ../; done
milc_O0.out:
	@./inst.sh milc_O0
	@cd milc_O0; ./output.log; cd ../; done
milc_O3.out: 
	@cd milc_O3; ./output.log; cd ../; done
sphinx3_O0.out:
	@./inst-sph.sh sphinx3_O0
	@cd sphinx3_O0; ./output.log; cd ../; done
sphinx3_O3.out: 
	@cd sphinx3_O3; ./output.log; cd ../; done
bwaves_O0.out:
	@./inst.sh bwaves_O0 
	@cd bwaves_O0; ./output.log; cd ../; done
bwaves_O3.out: 
	@cd bwaves_O3; ./output.log; cd ../; done
zeusmp_O0.out:
	@./inst.sh zeusmp_O0
	@cd zeusmp_O0; ./output.log; cd ../; done
zeusmp_O3.out: 
	@cd zeusmp_O3; ./output.log; cd ../; done
soplex_O0.out:
	@./inst-sop.sh soplex_O0
	@cd soplex_O0; ./output.log; cd ../; done
soplex_O3.out: 
	@cd soplex_O3; ./output.log; cd ../; done
leslie_O0.out:
	@./inst.sh leslie_O0
	@cd leslie_O0; ./output.log; cd ../; done
leslie_O3.out: 
	@cd leslie_O3; ./output.log; cd ../; done



#SUBTESTS1 := lbm_O0.test lbm_O3.test mcf_O0.test mcf_O3.test sjeng_O0.test sjeng_O3.test h264ref_O0.test h264ref_O3.test \
	libquantum_O0.test libquantum_O3.test bzip2_O0.test bzip2_O3.test perlbench_O0.test perlbench_O3.test \
	gcc_O0.test gcc_O3.test cactusADM_O0.test cactusADM_O3.test omnetpp_O0.test omnetpp_O3.test gromacs_O0.test \
	gromacs_O3.test calculix_O0.test calculix_O3.test dealII_O0.test dealII_O3.test namd_O0.test namd_O3.test \
	tonto_O3.test povray_O0.test povray_O3.test gobmk_O0.test gobmk_O3.test xalancbmk_O0.test \
	xalancbmk_O3.test lynx.test sphinx3_O0.test sphinx3_O3.test bwaves_O0.test bwaves_O3.test \
	zeusmp_O0.test zeusmp_O3.test leslie_O0.test leslie_O3.test soplex_O0.test soplex_O3.test

#SUBTESTS1 := bzip2_O0.test lbm_O0.test mcf_O0.test h264ref_O0.test libquantum_O0.test cactusADM_O0.test gromacs_O0.test namd_O.test0 soplex_O0.test leslie_O0.test
SUBTESTS1 :=  namd_O0.test soplex_O0.test leslie_O0.test

all_test: $(SUBTESTS1)


lbm_O0.test:
	echo lbm_O0.test
	@cd lbm_O0; ./test.log; cd ../; done
	@./clean.sh lbm_O0
lbm_O3.test:
	@cd lbm_O3; ./test.log; cd ../; done
mcf_O0.test: 
	echo mcf_O0.test
	@cd mcf_O0; ./test.log; cd ../; done
	./clean.sh mcf_O0
mcf_O3.test: 
	@cd mcf_O3; ./test.log; cd ../; done
sjeng_O0.test: 
	@cd sjeng_O0; ./test.log; cd ../; done
sjeng_O3.test: 
	@cd sjeng_O3; ./test.log; cd ../; done
h264ref_O0.test:
	echo h264ref_O0.test
	@cd h264ref_O0; ./test.log; cd ../; done
h264ref_O3.test: 
	@cd h264ref_O3; ./test.log; cd ../; done
libquantum_O0.test: 
	echo libquantum_O0.test
	@cd libquantum_O0; ./test.log; cd ../; done
libquantum_O3.test: 
	@cd libquantum_O3; ./test.log; cd ../; done
bzip2_O0.test: 
	@cd bzip2_O0; ./test.log; cd ../; done
	@./clean.sh bzip2_O0
bzip2_O3.test: 
	@cd bzip2_O3; ./test.log; cd ../; done
perlbench_O0.test: 
	@cd perlbench_O0; ./test.log; cd ../; done
perlbench_O3.test: 
	@cd perlbench_O3; ./test.log; cd ../; done
gcc_O0.test: 
	@cd gcc_O0; ./test.log; cd ../; done
	@./clean.sh gcc_O0
gcc_O3.test: 
	@cd gcc_O3; ./test.log; cd ../; done
cactusADM_O0.test:
	echo cactusADM_O0.test
	@cd cactusADM_O0; ./test.log; cd ../; done
cactusADM_O3.test: 
	@cd cactusADM_O3; ./test.log; cd ../; done
omnetpp_O0.test: 
	@cd omnetpp_O0; ./test.log; cd ../; done
	@./clean.sh omnetpp_O0
omnetpp_O3.test: 
	@cd omnetpp_O3; ./test.log; cd ../; done
gromacs_O0.test:
	echo gromacs_O0.test
	@cd gromacs_O0; ./test.log; cd ../; done
gromacs_O3.test: 
	@cd gromacs_O3; ./test.log; cd ../; done
calculix_O0.test: 
	@cd calculix_O0; ./test.log; cd ../; done
	@./clean.sh calculix_O0
calculix_O3.test: 
	@cd calculix_O3; ./test.log; cd ../; done
dealII_O0.test: 
	@cd dealII_O0; ./test.log; cd ../; done
	@./clean.sh dealII_O0
dealII_O3.test: 
	@cd dealII_O3; ./test.log; cd ../; done
namd_O0.test:
	echo namd_O0.test
	@cd namd_O0; ./test.log; cd ../; done
namd_O3.test: 
	@cd namd_O3; ./test.log; cd ../; done
tonto_O3.test: 
	@cd tonto_O3; ./test.log; cd ../; done
	@./clean.sh tonto_O3
povray_O0.test: 
	@cd povray_O0; ./test.log; cd ../; done
	@./clean.sh povray_O0
povray_O3.test: 
	@cd povray_O3; ./test.log; cd ../; done
gobmk_O0.test: 
	@cd gobmk_O0; ./test.log; cd ../; done
	@./clean.sh gobmk_O0
gobmk_O3.test: 
	@cd gobmk_O3; ./test.log; cd ../; done
xalancbmk_O0.test: 
	@cd xalancbmk_O0; ./test.log; cd ../; done
	@./clean.sh xalancbmk_O0
xalancbmk_O3.test: 
	@cd xalancbmk_O3; ./test.log; cd ../; done
milc_O0.test:
	@cd milc_O0; ./test.log; cd ../;
milc_O3.test: 
	@cd milc_O3; ./test.log; cd ../; 
sphinx3_O0.test: 
	@cd sphinx3_O0; ./test.log; cd ../; done
sphinx3_O3.test: 
	@cd sphinx3_O3; ./test.log; cd ../; done
bwaves_O0.test: 
	@cd bwaves_O0; ./test.log; cd ../; done
bwaves_O3.test: 
	@cd bwaves_O3; ./test.log; cd ../; done
zeusmp_O0.test: 
	@cd zeusmp_O0; ./test.log; cd ../; done
zeusmp_O3.test: 
	@cd zeusmp_O3; ./test.log; cd ../; done
soplex_O0.test:
	echo soplex_O0.test
	@cd soplex_O0; ./test.log; cd ../; done
soplex_O3.test: 
	@cd soplex_O3; ./test.log; cd ../; done
leslie_O0.test: 
	echo leslie_O0.test
	@cd leslie_O0; ./test.log; cd ../; done
leslie_O3.test: 
	@cd leslie_O3; ./test.log; cd ../; done
lynx.test: 
	@cd lynx; ./test.log; cd ../; done
