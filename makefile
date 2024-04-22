all:clean elab run 

elab:
        vcs -full64 -debug_acc+all -sverilog -l comp.log \
        -f ./file.f +vcs+fsdbon

run:
        ./simv -l run.log 

verdi:
        verdi -f ./file.f -ssf ./test.fsdb &

clean:
        rm -rf AN.DB DVEfiles csrc simv.* *simv inter.vpd ucli.key *.log noves* *fsdb verdiLog
