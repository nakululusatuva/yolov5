python -m torch.distributed.run --nproc_per_node 2 segment/train.py \
    --cache ram \
    --data cihp.yaml \
    --cfg yolov5n-seg.yaml \
    --img 640 \
    --weights '' \
    --epochs 300 \
    --patience 30 \
    --batch-size 256 \
    --device 0,1
