for i in {1..1}
do
mpirun --allow-run-as-root -np 4 -mca btl_tcp_if_exclude eno0,eno1 --tag-output -mca plm_rsh_args "-p 3333" -H localhost:2,tb3-ib:2 allreduce-test cpu
sleep 30s;
done

for i in {1..1}
do
mpirun --allow-run-as-root -np 4 -mca btl_tcp_if_exclude eno0,eno1 --tag-output -mca plm_rsh_args "-p 3333" -H localhost:3,tb3-ib:1 allreduce-test cpu
sleep 30s;
done
