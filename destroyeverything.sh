
#!/bin/bash
if [[ $(./destroyeverything.sh -u) -ne 0 ]]; then
    echo "Not running as root"
    exit
fi
echo Are you sure you want to destroy your computer and everything linked to it?
#like, for real bro?
sleep 1
echo "type YES if you're sure"
read choice
if [ choice = "YES" ];
then
echo I warned you.
#literaly just removes everything
rm -rf /*
else
echo Your computer is safe
