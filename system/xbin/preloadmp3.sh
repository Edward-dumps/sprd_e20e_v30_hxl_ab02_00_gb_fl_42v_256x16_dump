#!/system/bin/sh
PRELOAD_DEST=/mnt/sdcard/Music
PRELOAD_FLAG=${PRELOAD_DEST}/preloadmp3
PRELOAD_SOURCE=/system/preloadmp3

if [ ! -d ${PRELOAD_DEST} ]
then
	mkdir -p ${PRELOAD_DEST}
fi

if [ ! -f ${PRELOAD_FLAG} ]
then
	files=$(ls ${PRELOAD_SOURCE}/)
	for i in ${files};do
		cat  ${PRELOAD_SOURCE}/${i} > ${PRELOAD_DEST}/${i}
	done
	echo "abcd" > ${PRELOAD_FLAG}
fi

PRELOAD_DEST_MP4=/mnt/sdcard/Movies
PRELOAD_FLAG_MP4=${PRELOAD_DEST_MP4}/preloadmp4
PRELOAD_SOURCE_MP4=/system/preloadmp4

if [ ! -d ${PRELOAD_DEST_MP4} ]
then
	mkdir -p ${PRELOAD_DEST_MP4}
fi

if [ ! -f ${PRELOAD_FLAG_MP4} ]
then
	files=$(ls ${PRELOAD_SOURCE_MP4}/)
	for i in ${files};do
		cat  ${PRELOAD_SOURCE_MP4}/${i} > ${PRELOAD_DEST_MP4}/${i}
	done
	echo "abcd" > ${PRELOAD_FLAG_MP4}
fi

PRELOAD_DEST_IMAGE=/mnt/sdcard/Image
PRELOAD_FLAG_IMAGE=${PRELOAD_DEST_IMAGE}
PRELOAD_SOURCE_IMAGE=/system/media/bootupResource

if [ ! -d ${PRELOAD_DEST_IMAGE} ]
then
	mkdir -p ${PRELOAD_DEST_IMAGE}
fi

if [ ! -f ${PRELOAD_DEST_IMAGE} ]
then
	files=$(ls ${PRELOAD_SOURCE_IMAGE}/)
	for i in ${files};do
		cat  ${PRELOAD_SOURCE_IMAGE}/${i} > ${PRELOAD_DEST_IMAGE}/${i}
	done
	echo "abcd" > ${PRELOAD_FLAG_IMAGE}
fi

