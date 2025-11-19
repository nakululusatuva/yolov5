# rknn-toolkit2 supports opset range 12~19
python export.py \
  --rknpu \
  --weights /home/nova/Repos/yolov5/runs/train-seg/exp/weights.230/best.pt \
  --include onnx \
  --opset 18
