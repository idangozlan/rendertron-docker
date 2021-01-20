if [ -z ${SKIP_RENDERTRON_UPDATE+x} ];
	then npm i -g rendertron --unsafe; 
fi

rendertron
