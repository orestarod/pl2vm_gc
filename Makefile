CC = gcc
# CFLAGS = -DDEBUG
# GC_MODE = MARK_N_SWEEP
# GC_MODE = REF_COUNT

#mark and sweep gc edition
vm_mns.out: source/vm.c 
	$(CC) $(CFLAGS) -DMARK_N_SWEEP $? -o out/$@

#reference counter gc edition
vm_rc.out: source/vm.c 
	$(CC) $(CFLAGS) -DREF_COUNT $? -o out/$@

vm.out: source/vm.c 
	$(CC) $(CFLAGS) $? -o out/$@

clear:
	rm -rf out/* in/*

