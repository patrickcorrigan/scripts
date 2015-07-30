set -e
function cleanup {
  xautolock -enable
  echo "xautolock enabled"
}
trap cleanup EXIT
xautolock -disable
sleep $1
