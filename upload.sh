from=app
to=$1
ip=10.0.10.1

echo from=$from
echo to=$to
echo ip=$ip

echo "Upload user application file"
echo "  BT PAN IP: $ip"
echo "  FILE NAME: (Local) \"$from\" -> (Remote) \"$to\""
echo "Execute cURL:"
curl -f --noproxy "*" -H "Content-Type: ev3rt/app" -H "Content-Disposition: inline; filename=\"$to\"" --data-binary @$from http://$ip/upload > /dev/null
echo "Done."
