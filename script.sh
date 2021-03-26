printf "51\n\n" >> ~/single.txt
for i in {1..10}
do
mpirun -n 6 -machine m51 -iface enp216s0 ./allreduce-test cpu >> ~/single.txt
sleep 30s;
done

printf "42\n\n" >> ~/single.txt
for i in {1..10}
do
mpirun -n 6 -machine m42 -iface enp216s0 ./allreduce-test cpu >> ~/single.txt
sleep 30s;
done

printf "33\n\n" >> ~/single.txt
for i in {1..10}
do
mpirun -n 6 -machine m33 -iface enp216s0 ./allreduce-test cpu >> ~/single.txt
sleep 30s;
done

printf "24\n\n" >> ~/single.txt
for i in {1..10}
do
mpirun -n 6 -machine m24 -iface enp216s0 ./allreduce-test cpu >> ~/single.txt
sleep 30s;
done

printf "15\n\n" >> ~/single.txt
for i in {1..10}
do
mpirun -n 6 -machine m15 -iface enp216s0 ./allreduce-test cpu >> ~/single.txt
sleep 30s;
done
