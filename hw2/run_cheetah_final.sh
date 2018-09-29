batch_size=50000
learning_rate=0.02

python train_pg_f18.py HalfCheetah-v2 -ep 150 --discount 0.95 -n 100 -e 3 -l 2 -s 32 -b ${batch_size} -lr ${learning_rate} --exp_name hc_nortg_b${batch_size}_r${learning_rate}
python train_pg_f18.py HalfCheetah-v2 -ep 150 --discount 0.95 -n 100 -e 3 -l 2 -s 32 -b ${batch_size} -lr ${learning_rate} -rtg --exp_name hc_rtg_b${batch_size}_r${learning_rate}
python train_pg_f18.py HalfCheetah-v2 -ep 150 --discount 0.95 -n 100 -e 3 -l 2 -s 32 -b ${batch_size} -lr ${learning_rate} --nn_baseline --exp_name hc_nortg_baseline_b${batch_size}_r${learning_rate}
python train_pg_f18.py HalfCheetah-v2 -ep 150 --discount 0.95 -n 100 -e 3 -l 2 -s 32 -b ${batch_size} -lr ${learning_rate} -rtg --nn_baseline --exp_name hc_rtg_baseline_b${batch_size}_r${learning_rate}