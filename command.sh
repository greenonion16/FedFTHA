rep:
    python new.py --dataset cifar100 --model cnn --num_classes 100 --epochs 5 --alg fedrep --lr 0.01 \
    --num_users 100 --shard_per_user 2 --local_ep 15 --local_second_ep 5 --local_bs 10 --cos 0 --gpu 0

    nohup python -u new.py --dataset cifar100 --model cnn --num_classes 100 --epochs 100 --alg fedrep --lr 0.01 \
    --num_users 100 --shard_per_user 2 --local_ep 15 --local_second_ep 5 --local_bs 10 --cos 0 --gpu 0 \
    > log/fedrep/rep_ways_5_epo100_ep15_5_cos0_t3.log 2>&1 &

FedFTHA:
     python main_fednew.py --dataset cifar100 --model cnn --num_classes 100 --epochs 100 --alg fedftha --lr 0.01 \
    --num_users 100 --shard_per_user 2 --local_ep 10 --local_second_ep 5 --local_bs 10 --cos 1 --gpu 2

    nohup python -u new.py --dataset cifar100 --model cnn --num_classes 100 --epochs 200 --alg fedftha --lr 0.01 \
    --num_users 100 --shard_per_user 2 --local_ep 10 --local_second_ep 5 --local_bs 10 --cos 1 --gpu 1 \
    > log/5-10/ftha_epo200_ep10_5_cos1_t3.log 2>&1 &

cifar10:
    nohup python -u new.py --dataset cifar10 --model cnn --num_classes 10 --epochs 100 --alg fedftha --lr 0.01 --novel_class_num 0\
    --num_users 100 --shard_per_user 2 --local_ep 10 --local_second_ep 5 --local_bs 10 --cos 0 --gpu 3 \
    > log/cifar10/ftha_epo100_100users_2cates_cos0_t1.log 2>&1 &

lg:
    python new.py --dataset cifar100 --model cnn --num_classes 100 --epochs 5 --alg lg --lr 0.01 \
    --num_users 100 --shard_per_user 2 --local_ep 5 --local_second_ep 5 --local_bs 10 --cos 1 --gpu 0

    nohup python -u new.py --dataset cifar100 --model cnn --num_classes 100 --epochs 100 --alg lg --lr 0.01 \
    --num_users 100 --shard_per_user 5 --local_ep 5 --local_second_ep 1 --local_bs 10 --cos 0 --gpu 0 \
    > log/lg/lg_epo100_wasys_10_ep5_cos0_t2.log 2>&1 &

fedper:
    python new.py --dataset cifar100 --model cnn --num_classes 100 --epochs 5 --alg fedper --lr 0.01 \
    --num_users 100 --shard_per_user 2 --local_ep 5 --local_second_ep 5 --local_bs 10 --cos 0 --gpu 3

    nohup python -u new.py --dataset cifar100 --model cnn --num_classes 100 --epochs 100 --alg fedper --lr 0.01 \
    --num_users 100 --shard_per_user 10 --local_ep 5 --local_second_ep 1 --local_bs 10 --cos 1 --gpu 3 \
    > log/fedper/fedper_wasys_10_ep5_cos1_t1.log 2>&1 &

fedavg:
    python new.py --dataset cifar100 --model cnn --num_classes 100 --epochs 100 --alg fedavg --lr 0.01 \
    --num_users 100 --shard_per_user 5 --local_ep 1 --local_second_ep 1 --local_bs 10 --cos 0 --gpu 3

    nohup python -u new.py --dataset cifar100 --model cnn --num_classes 100 --epochs 100 --alg fedavg --lr 0.01 \
    --num_users 100 --shard_per_user 5 --local_ep 5 --local_second_ep 1 --local_bs 10 --cos 0 --gpu 1 \
    > log/fedavg/fedavg_epo100_wasys_10_ep5_cos0_t2.log 2>&1 &

fedcos:
     python new.py --dataset cifar10 --model cnn --num_classes 10 --epochs 14 --alg fedftha --lr 0.01  --novel_class_num 0\
    --num_users 100 --shard_per_user 5 --local_ep 10 --local_second_ep 9 --local_bs 10 --cos 0 --gpu 3

    nohup python -u new.py --dataset cifar100 --model cnn --num_classes 100 --epochs 100 --alg fedftha --lr 0.01 \
    --num_users 100 --shard_per_user 2 --local_ep 10 --local_second_ep 5 --local_bs 10 --cos 1 --gpu 1 \
    > log/fedcos/ftha_ways_5_epo100_ep10_5_cos1_t3.log 2>&1 &

new:
     python new.py --dataset cifar10 --model cnn --num_classes 10 --epochs 5 --alg fedftha --lr 0.01 --novel_class_num 0\
    --num_users 100 --shard_per_user 5 --local_ep 10 --local_second_ep 9 --local_bs 10 --cos 1 --gpu 3

    python new.py --dataset cifar100 --model cnn --num_classes 100 --epochs 20 --alg fedrep --lr 0.01 \
    --num_users 100 --shard_per_user 2 --local_ep 15 --local_second_ep 5 --local_bs 10 --cos 0 --gpu 0

new_local:
    python new_local.py --dataset cifar100 --model cnn --num_classes 100 --epochs 100 --alg None --lr 0.01 \
    --num_users 100 --shard_per_user 2 --local_ep 15 --local_second_ep 5 --local_bs 10 --cos 0 --gpu 0

    nohup python -u new_local.py --dataset cifar100 --model cnn --num_classes 100 --epochs 100 --alg None --lr 0.01 \
    --num_users 100 --shard_per_user 2 --local_ep 15 --local_second_ep 5 --local_bs 10 --cos 0 --gpu 0 \
    > log/local/local_ways_10_epo100_cos0_t1.log 2>&1 &

    python new_local.py --dataset mini_imagenet --model convnet --num_classes 84 --epochs 100 --novel_class_num 20 \
    --alg None --lr 0.01 \
    --num_users 100 --shard_per_user 2 --local_ep 15 --local_second_ep 5 --local_bs 10 --cos 0 --gpu 0

    nohup python -u new_local.py --dataset mini_imagenet --model convnet --num_classes 84 --epochs 100 --novel_class_num 20 \
    --alg None --lr 0.01 \
    --num_users 100 --shard_per_user 2 --local_ep 15 --local_second_ep 5 --local_bs 10 --cos 0 --gpu 0 \
    > log/mini_imagenet/others/local_mini_ways_5_epo100_ep5_cos0_t2.log 2>&1 &

mini_imagenet:
    python new.py --dataset mini_imagenet --model convnet --num_classes 84 --novel_class_num 20 --epochs 4 --alg fedftha \
     --lr 0.01 \
    --num_users 100 --shard_per_user 2 --local_ep 15 --local_second_ep 5 --local_bs 10 --cos 0 --gpu 2

    ftha
    nohup python -u new.py --dataset mini_imagenet --model convnet --num_classes 84 --novel_class_num 20 --epochs 100 \
    --alg fedftha --lr 0.01 \
    --num_users 100 --shard_per_user 2 --local_ep 10 --local_second_ep 5 --local_bs 10 --cos 1 --gpu 3 \
    > log/mini_imagenet/ftha_mini_ways_10_epo100_ep10_5_cos1_t2.log 2>&1 &

    rep
    nohup python -u new.py --dataset mini_imagenet --model convnet --num_classes 84 --novel_class_num 20 --epochs 100 \
    --alg fedrep --lr 0.01 \
    --num_users 100 --shard_per_user 2 --local_ep 15 --local_second_ep 5 --local_bs 10 --cos 1 --gpu 3 \
    > log/mini_imagenet/rep_mini_ways_10_epo100_ep15_5_cos1_t1.log 2>&1 &

    lg
    python new.py --dataset mini_imagenet --model convnet --num_classes 84 --novel_class_num 20 --epochs 100 \
    --alg lg --lr 0.01 \
    --num_users 100 --shard_per_user 2 --local_ep 5 --local_second_ep 5 --local_bs 10 --cos 0 --gpu 0

    nohup python -u new.py --dataset mini_imagenet --model convnet --num_classes 84 --novel_class_num 20 --epochs 100 \
    --alg lg --lr 0.01 \
    --num_users 100 --shard_per_user 2 --local_ep 5 --local_second_ep 5 --local_bs 10 --cos 0 --gpu 0 \
    > log/mini_imagenet/others/lg_mini_ways_5_epo100_ep5_cos0_t1.log 2>&1 &

    fedper
    python new.py --dataset mini_imagenet --model convnet --num_classes 84 --novel_class_num 20 --epochs 5 \
    --alg fedper --lr 0.01 \
    --num_users 100 --shard_per_user 2 --local_ep 5 --local_second_ep 5 --local_bs 10 --cos 0 --gpu 0

    nohup python -u new.py --dataset mini_imagenet --model convnet --num_classes 84 --novel_class_num 20 --epochs 100 \
    --alg fedper --lr 0.01 \
    --num_users 100 --local_ep 5 --local_second_ep 5 --local_bs 10 --cos 1 --gpu 3 \
    > log/mini_imagenet/others/fedper_mini_ways_10_epo100_ep5_cos1_t1.log 2>&1 &

    fedavg
    python new.py --dataset mini_imagenet --model convnet --num_classes 84 --novel_class_num 20 --epochs 100 \
    --alg fedavg --lr 0.01 \
    --num_users 100 --shard_per_user 10 --local_ep 1 --local_second_ep 0 --local_bs 10 --cos 0 --gpu 3

    nohup python -u new.py --dataset mini_imagenet --model convnet --num_classes 84 --novel_class_num 20 --epochs 100 \
    --alg fedavg --lr 0.01 \
    --num_users 100 --local_ep 5 --local_second_ep 5 --local_bs 10 --cos 0 --gpu 1 \
    > log/mini_imagenet/others/fedavg_mini_ways_10_epo100_ep5_cos0_t2.log 2>&1 &

novel:
    python novel.py --load_fed '5-10/fedrep_cifar100_100users_[5]_all_local_cor80.32' --dataset cifar100 \
     --model cnn --num_classes 100 --collec_fea 1 --novel_users 20 --gpu 3

    python novel.py --load_fed '5-10/fedftha_cifar100_100users_[10]_all_local_cor70.52' --dataset cifar100 \
     --model cnn --num_classes 100 --collec_fea 1 --novel_users 20 --gpu 3

      python novel.py --load_fed '5-10/fedavg_cifar100_100users_[10]_all_local_cor66.97' --dataset cifar100 \
     --model cnn --num_classes 100 --collec_fea 1 --novel_users 10 --cos 0 --gpu 1

    python novel.py --load_fed '5-10/fedavg_cifar100_100users_[5]_all_local_cor77.92' --dataset cifar100 \
     --model cnn --cos 0 --num_classes 100 --gpu 1

    python novel.py --load_fed 'accs_fedrep_cifar100_100_2_iter99' --dataset cifar100 --model cnn --num_classes 100 \
    --gpu 1


dif_users:
     python new.py --dataset cifar100 --model cnn --num_classes 100 --epochs 100 --alg fedftha --lr 0.01 \
    --num_users 200 --shard_per_user 5 --local_ep 10 --local_second_ep 5 --local_bs 10 --cos 0 --gpu 3

    nohup python -u new.py --dataset cifar100 --model cnn --num_classes 100 --epochs 100 --alg fedftha --lr 0.01 \
    --num_users 1000 --shard_per_user 5 --local_ep 10 --local_second_ep 5 --local_bs 10 --cos 0 --gpu 1 \
    > log/dif_users/fedcos_1000users_t1.log 2>&1 &

dif_ratio:
    nohup python -u new.py --dataset cifar100 --model cnn --num_classes 100 --epochs 100 --alg fedftha --lr 0.01 \
    --num_users 100 --frac 1.0 --local_ep 10 --local_second_ep 5 --local_bs 10 --cos 0 --gpu 1 \
    > log/dif_ratio/fedcos_10ratio_t1.log 2>&1 &

dif_local_bs:
    nohup python -u new.py --dataset cifar100 --model cnn --num_classes 100 --epochs 100 --alg fedftha --lr 0.01 \
    --num_users 100 --frac 0.1 --local_ep 10 --local_second_ep 5 --local_bs 100 --cos 0 --gpu 0 \
    > log/dif_local_bs/fedcos_100localbs_t1.log 2>&1 &

dif_lr:
    python new.py --dataset cifar100 --model cnn --num_classes 100 --epochs 100 --alg fedftha --lr 0.1 \
    --num_users 100 --frac 0.1 --local_ep 10 --local_second_ep 5 --local_bs 10 --cos 0 --gpu 0

    nohup python -u new.py --dataset cifar100 --model cnn --num_classes 100 --epochs 100 --alg fedftha --lr 0.002 \
    --num_users 100 --frac 0.1 --local_ep 10 --local_second_ep 5 --local_bs 10 --cos 0 --gpu 1 \
    > log/dif_lr/fedcos_2e-3lr_t1.log 2>&1 &

iotj:
    python new_iotj.py --dataset cifar100 --model vgg --num_classes 100 --epochs 100 --alg fedrep --lr 0.01 \
    --num_users 100 --frac 0.1 --local_ep 10 --local_second_ep 5 --local_bs 10 --cos 0 --gpu 1