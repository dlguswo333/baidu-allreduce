<<<<<<< Updated upstream
printf "41\n\n" >> ~/thread.txt
for i in {1..10}
do
mpirun --allow-run-as-root -np 5 -mca btl_tcp_if_exclude eno0,eno1 -mca plm_rsh_args "-p 3333" -H localhost:4,tb3-ib:1 allreduce-test cpu >> ~/thread.txt
sleep 30s;
done

printf "32\n\n" >> ~/thread.txt
for i in {1..10}
do
mpirun --allow-run-as-root -np 5 -mca btl_tcp_if_exclude eno0,eno1 -mca plm_rsh_args "-p 3333" -H localhost:3,tb3-ib:2 allreduce-test cpu >> ~/thread.txt
sleep 30s;
done

printf "23\n\n" >> ~/thread.txt
for i in {1..10}
do
mpirun --allow-run-as-root -np 5 -mca btl_tcp_if_exclude eno0,eno1 -mca plm_rsh_args "-p 3333" -H localhost:2,tb3-ib:3 allreduce-test cpu >> ~/thread.txt
sleep 30s;
done

printf "14\n\n" >> ~/thread.txt
for i in {1..10}
do
mpirun --allow-run-as-root -np 5 -mca btl_tcp_if_exclude eno0,eno1 -mca plm_rsh_args "-p 3333" -H localhost:1,tb3-ib:4 allreduce-test cpu >> ~/thread.txt
sleep 30s;
done

=======
printf "44\n\n" >> ~/single.txt
for i in {1..20}
do
mpirun --allow-run-as-root -np 8 -mca btl_tcp_if_exclude eno0,eno1 -H localhost:4,lhjtb1:4 allreduce-test cpu >> ~/single.txt
sleep 10s;
done

printf "422\n\n" >> ~/single.txt
for i in {1..20}
do
mpirun --allow-run-as-root -np 8 -mca btl_tcp_if_exclude eno0,eno1 -H localhost:4,lhjtb1:2,lhjtbi2:2 allreduce-test cpu >> ~/single.txt
sleep 10s;
done

printf "2222\n\n" >> ~/single.txt
for i in {1..20}
do
mpirun --allow-run-as-root -np 8 -mca btl_tcp_if_exclude eno0,eno1 -H localhost:2,lhjtb1:2,lhjtbi2:2,lhjtbi3:2 allreduce-test cpu >> ~/single.txt
sleep 10s;
done

printf "431\n\n" >> ~/single.txt
for i in {1..20}
do
mpirun --allow-run-as-root -np 8 -mca btl_tcp_if_exclude eno0,eno1 -H localhost:4,lhjtb1:3,lhjtbi2:1 allreduce-test cpu >> ~/single.txt
sleep 10s;
done

printf "3221\n\n" >> ~/single.txt
for i in {1..20}
do
mpirun --allow-run-as-root -np 8 -mca btl_tcp_if_exclude eno0,eno1 -H localhost:3,lhjtb1:2,lhjtbi2:2,lhjtbi3:1 allreduce-test cpu >> ~/single.txt
sleep 10s;
done

printf "3311\n\n" >> ~/single.txt
for i in {1..20}
do
mpirun --allow-run-as-root -np 8 -mca btl_tcp_if_exclude eno0,eno1 -H localhost:3,lhjtb1:3,lhjtbi2:1,lhjtbi3:1 allreduce-test cpu >> ~/single.txt
sleep 10s;
done
>>>>>>> Stashed changes
