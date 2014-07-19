for i in bzip2_O0 lbm_O0 mcf_O0 sjeng_O0 h264ref_O0 libquantum_O0 cactusADM_O0 omnetpp_O0 soplex_O0 leslie_O0 
do
	echo $i
	cd $i
	bash test-final.log
	cd ..
done
