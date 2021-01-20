if [ ! "$1" ];
	then echo "Please specifiy the desired version as an argument.";
	exit 1;
fi
./build.sh $1
docker push idangozlan/rendertron:$1
echo "Version $1 published successfuly!"
