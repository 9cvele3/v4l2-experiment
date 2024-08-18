
v4l2-experiments: v4l2-experiments.c
	gcc v4l2-experiments.c -O0 \
				-I./FFmpeg \
				-L./FFmpeg/libavcodec -lavcodec \
				-L./FFmpeg/libavutil -lavutil \
				-lm \
				-lpthread \
				-o $@

configure:
	cd FFmpeg && \
		./configure --disable-everything \
					--disable-asm \
					--disable-x86asm \
					--disable-vdpau \
					--disable-vaapi \
					--disable-libdrm \
					--enable-libv4l2 \
					--enable-decoder=h264_v4l2m2m \
					--enable-parser=h264 \
					--enable-debug=2

build-ffmpeg:
	cd FFmpeg && make -j4


