RAM=32000
CPU=8
DISK_SIZE=100G
CONTAINER_NAME=n8n
IMAGE_NAME=hopingboyz/debain12
VMDATA_DIR="$PWD/vmdata"

mkdir -p "$VMDATA_DIR"

docker run -it --rm \
  --name "$CONTAINER_NAME" \
  --device /dev/kvm \
  -v "$VMDATA_DIR":/vmdata \
  -e RAM="$RAM" \
  -e CPU="$CPU" \
  -e DISK_SIZE="$DISK_SIZE" \
  "$IMAGE_NAME"
