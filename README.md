# Exploiting Shared Representations for Personalized Federated Learning (ICML 2021)

Authors: Liam Collins, Hamed Hassani, Aryan Mokhtari, Sanjay Shakkottai

This repository contains the official code for our proposed method, FedRep, and the experiments in our paper [Exploiting Shared Representations for Personalized Federated Learning](https://arxiv.org/pdf/2102.07078.pdf).

*This paper has been accepted at ICML 2021.*

<img src="fedrep.png" width="500" height="360" />

## Dependencies

The code requires Python >= 3.6 and PyTorch >= 1.2.0. To install the other dependencies: `pip3 install -r requirements.txt`.

## Data

This code uses the CIFAR10, CIFAR100, Federated Extended MNIST (FEMNIST), MNIST, and Sentiment140 (Sent140) datasets.

The CIFAR10, CIFAR100 AND MNIST datasets are downloaded automatically by the torchvision package. 
FEMNIST and Sent140 are provided by the LEAF repository, which should be downloaded from https://github.com/TalwalkarLab/leaf/ and placed in `FedRep/`. 
Then the raw FEMNIST and Sent140 datasets can be downloaded by following the instructions in LEAF. 
In order to generate the versions of these datasets that we use the paper, we use the following commands from within `FedRep/leaf-master/data/sent140/` and `FedRep/leaf-master/data/femnist/`, respectively:

Sent140: `./preprocess.sh -s niid --sf 0.3 -k 50 -tf 0.8 -t sample`

FEMNIST: `./preprocess.sh -s niid --sf 0.5 -k 50 -tf 0.8 -t sample`

For FEMNIST, we re-sample and re-partition the data to increase its heterogeneity. In order to do so, first navigate to `FedRep/`, then execute 

`mv my_sample.py leaf-master/data/femnist/data/`

`cd leaf-master/data/femnist/data/`

`python my_sample.py`

## Usage

FedRep is run using a command of the following form:

`python main_fedrep.py --alg fedrep --dataset [dataset] --num_users [num_users] --model [model] --model [model] --shard_per_user [shard_per_user] --frac [frac] --local_bs [local_bs] --lr [lr] --epochs [epochs] --local_ep [local_ep] --local_second_ep [local_second_ep] --gpu [gpu]`

Explanation of parameters:

- `alg` : algorithm to run, may be `fedrep`, `fedavg`, `prox` (FedProx), `fedper` (FedPer), or `lg` (LG-FedAvg)
- `dataset` : dataset, may be `cifar10`, `cifar100`, `femnist`, `mnist`, `sent140`
- `num_users` : number of users
- `model` : for the CIFAR datasets, we use `cnn`, for the MNIST datasets, we use `mlp`, and for `sent140`, we use `res`
- `num_classes` : total number of classes
- `shard_per_user` : number of classes per user (specific to CIFAR datasets and MNIST)
- `frac` : fraction of participating users in each round (for all experiments we use 0.1)
- `local_bs` : batch size used locally by each user
- `lr` : learning rate
- `epochs` : total number of communication rounds
- `local_ep` : total number of local epochs
- `local_second_ep` : number of local epochs to execute for the representation (specific to FedRep)
- `gpu` : GPU ID

A full list of configuration parameters and their descriptions are given in `utils/options.py`.
For examples of running FedRep as well as the FL baselines we compare against, please see the executable files in `scripts/`, which recover the results from the paper.

## Citation

Please cite our paper if you use our implementation of FedRep:

```
@article{collins2021exploiting,
  title={Exploiting Shared Representations for Personalized Federated Learning},
  author={Collins, Liam and Hassani, Hamed and Mokhtari, Aryan and Shakkottai, Sanjay},
  journal={arXiv preprint arXiv:2102.07078},
  year={2021}
}
```

# Acknowledgements

Much of the code in this repository was adapted from code in [this repository](https://github.com/pliang279/LG-FedAvg) by Paul Pu Liang et al., which in turn was adapted from [this repository](https://github.com/shaoxiongji/federated-learning) by Shaoxiong Ji. For the implementation of Per-FedAvg, some of the code was adapted from the MAML PyTorch implementation [here](https://github.com/AntreasAntoniou/HowToTrainYourMAMLPytorch) by Antreas Antoniou.
