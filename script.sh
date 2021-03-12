printf "41\n\n" >> /data/out.txt
for i in {1..10}
do
mpirun --allow-run-as-root -np 5 -mca btl_tcp_if_exclude eno0,eno1 -mca plm_rsh_args "-p 3333" -H localhost:4,tb3-ib:1 allreduce-test cpu >> /data/out.txt
sleep 30s;
done

printf "32\n\n" >> /data/out.txt
for i in {1..10}
do
mpirun --allow-run-as-root -np 5 -mca btl_tcp_if_exclude eno0,eno1 -mca plm_rsh_args "-p 3333" -H localhost:3,tb3-ib:2 allreduce-test cpu >> /data/out.txt
sleep 30s;
done

printf "23\n\n" >> /data/out.txt
for i in {1..10}
do
mpirun --allow-run-as-root -np 5 -mca btl_tcp_if_exclude eno0,eno1 -mca plm_rsh_args "-p 3333" -H localhost:2,tb3-ib:3 allreduce-test cpu >> /data/out.txt
sleep 30s;
done

printf "14\n\n" >> /data/out.txt
for i in {1..10}
do
mpirun --allow-run-as-root -np 5 -mca btl_tcp_if_exclude eno0,eno1 -mca plm_rsh_args "-p 3333" -H localhost:1,tb3-ib:4 allreduce-test cpu >> /data/out.txt
sleep 30s;
done

