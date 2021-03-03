printf "4\n\n" >> /data/out.txt
for i in {1..40}
do
mpirun --allow-run-as-root -np 4 -mca btl_tcp_if_exclude eno0,eno1 --tag-output -mca plm_rsh_args "-p 3333" -H localhost:4 allreduce-test cpu >> /data/out.txt
sleep 30s;
done

printf "22\n\n" >> /data/out.txt
for i in {1..40}
do
mpirun --allow-run-as-root -np 4 -mca btl_tcp_if_exclude eno0,eno1 --tag-output -mca plm_rsh_args "-p 3333" -H localhost:2,tb3-ib:2 allreduce-test cpu >> /data/out.txt
sleep 30s;
done

printf "22\n\n" >> /data/out.txt
for i in {1..40}
do
mpirun --allow-run-as-root -np 4 -mca btl_tcp_if_exclude eno0,eno1 --tag-output -mca plm_rsh_args "-p 3333" -H localhost:3,tb3-ib:1 allreduce-test cpu >> /data/out.txt
sleep 30s;
done
