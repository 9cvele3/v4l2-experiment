```apt-get install libv4l-dev```

What is DRM on linux ? 

```v4l2_m2m``` will try to use /dev/video*

If you only have a camera, you will not be able to attach decoder to it.

Test on jetson, patch ffmpeg to take /dev/nvdec into account.

Can I test this on raspberry pi ? 

Jetson: ioctl VIDIOC_QUERYCAP fails



