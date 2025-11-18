python -m torch.distributed.run --nproc_per_node 2 segment/train.py \
    --cache ram \
    --resume runs/train-seg/exp4/weights/last.pt \
    --batch-size 128 \
    --device 0,1
