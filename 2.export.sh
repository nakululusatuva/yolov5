# rknn-toolkit2 supports opset range 12~19
python export.py \
  --weights /home/nova/Repos/yolov5/runs/train-seg/exp4/weights.230/best.pt \
  --include onnx \
  --opset 18 \
  --simplify \
  --imgsz 640 640 \
  --batch 1
