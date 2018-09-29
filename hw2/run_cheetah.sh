for batch_size in 10000 30000 50000
do
for learning_rate in 0.02 0.005 0.01
do
    python train_pg_f18.py HalfCheetah-v2 -ep 150 --discount 0.9 -n 100 -e 3 -l 2 -s 32 -b ${batch_size} -lr ${learning_rate} -rtg --nn_baseline --exp_name hc_b${batch_size}_r${learning_rate}
done
done