
v4l2-experiments: v4l2-experiments.c
	gcc v4l2-experiments.c -L./FFmpeg/libavcodec -lavcodec \
							-L./FFmpeg/libavutil -lavutil \
							-lm \
							-o $@

configure:
	cd FFmpeg && \
		./configure --disable-everything \
					--disable-x86asm \
					--disable-vdpau \
					--disable-vaapi \
					--disable-libdrm \
					--enable-decoder=h264_v4l2m2m \
					--enable-debug=2

build-ffmpeg:
	cd FFmpeg && make -j4


