printf "51\n\n" >> ~/single.txt
for i in {1..20}
do
mpirun --allow-run-as-root -np 6 -mca btl_tcp_if_exclude eno0,eno1 -H localhost:5,lhjtbi2:1 allreduce-test cpu >> ~/single.txt
sleep 10s;
done

printf "42\n\n" >> ~/single.txt
for i in {1..20}
do
mpirun --allow-run-as-root -np 6 -mca btl_tcp_if_exclude eno0,eno1 -H localhost:4,lhjtbi2:2 allreduce-test cpu >> ~/single.txt
sleep 10s;
done

printf "33\n\n" >> ~/single.txt
for i in {1..20}
do
mpirun --allow-run-as-root -np 6 -mca btl_tcp_if_exclude eno0,eno1 -H localhost:3,lhjtbi2:3 allreduce-test cpu >> ~/single.txt
sleep 10s;
done

printf "24\n\n" >> ~/single.txt
for i in {1..20}
do
mpirun --allow-run-as-root -np 6 -mca btl_tcp_if_exclude eno0,eno1 -H localhost:2,lhjtbi2:4 allreduce-test cpu >> ~/single.txt
sleep 10s;
done

printf "15\n\n" >> ~/single.txt
for i in {1..20}
do
mpirun --allow-run-as-root -np 6 -mca btl_tcp_if_exclude eno0,eno1 -H localhost:1,lhjtbi2:5 allreduce-test cpu >> ~/single.txt
sleep 10s;
done
