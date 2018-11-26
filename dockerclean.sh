#!/bin/bash
`clear`
echo "(1) remove all container"
echo "(2) remove all images"
read -n 1 -p "please choose the item: " cho
case $cho in
	1)
		echo ""
		docker rm `docker ps -a -q`
		;;
	2)
		echo ""
		docker rmi `docker images -q`
		;;
	*)
		echo "error type"
		;;
esac
