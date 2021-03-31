printf "31\n\n" >> ~/thread.txt
for i in {1..20}
do
mpirun -n 4 -iface enp216s0 -machine m31 ./allreduce-test cpu >> /thread.txt
sleep 30s;
done

printf "22\n\n" >> ~/thread.txt
for i in {1..20}
do
mpirun -n 4 -iface enp216s0 -machine m22 ./allreduce-test cpu >> /thread.txt
sleep 30s;
done

printf "13\n\n" >> ~/thread.txt
for i in {1..20}
do
mpirun -n 4 -iface enp216s0 -machine m13 ./allreduce-test cpu >> /thread.txt
sleep 30s;
done

