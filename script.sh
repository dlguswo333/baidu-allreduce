for i in {1..20}
do
mpirun --allow-run-as-root -np 8 -mca btl_tcp_if_exclude eno0,eno1 -mca plm_rsh_args "-p 3333" -H localhost:4,tb1-ib:2,tb3-ib:2 allreduce-test cpu
sleep 30s;
done

for i in {1..20}
do
mpirun --allow-run-as-root -np 8 -mca btl_tcp_if_exclude eno0,eno1 -mca plm_rsh_args "-p 3333" -H localhost:4,tb1-ib:3,tb3-ib:1 allreduce-test cpu
sleep 30s;
done
