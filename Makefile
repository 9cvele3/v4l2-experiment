
v4l2-experiments: v4l2-experiments.c
	gcc v4l2-experiments.c -L./FFmpeg/libavcodec -lavcodec \
							-L./FFmpeg/libavutil -lavutil \
							-lm \
							-o $@

configure:
	cd FFmpeg && ./configure --disable-x86asm --enable-debug=2
