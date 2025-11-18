import torch


ckpt  = torch.load('runs/train-seg/exp4/weights.230/best.pt', weights_only=False)
model = ckpt['model'].float() if 'model' in ckpt else ckpt
head  = model.model[-1]  # Detect or Segment
print('keys:', list(ckpt.keys()))
print('epoch:', ckpt.get('epoch'))
print('best_fitness:', ckpt.get('best_fitness'))
print('stride:', head.stride.tolist())
print('anchors(norm):\n', head.anchors)
print('anchors(px):\n', head.anchors * head.stride.view(-1,1,1))
