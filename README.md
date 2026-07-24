# x264-ESMR

> **x264 Encoding Settings Metadata Remover**

A Windows batch script designed to remove x264 encoding parameters and writing library metadata from video files using `ffmpeg`.

## Features

* Strips encoder settings invisible in MediaInfo / NFO output.
* Processes video files without re-encoding or destroy quality (remux/stream copy).
* Lightweight and easy to run on batch files.

## Prerequisites

* **FFmpeg**: Must be installed and accessible in your system's `PATH` environment variable.

## Usage

1. Download bat file.
2. drag and drop your video(s) into the batch file.

## Output Comparison

### Before

```text
Scan type                                : Progressive
Bits/(Pixel*Frame)                       : 0.052
Stream size                              : 1.64 GiB (87%)
Writing library                          : x264 core 165
Encoding settings                        : cabac=1 / ref=2 / deblock=1:0:0 / analyse=0x3:0x113 / me=hex / subme=6 / psy=1 / psy_rd=1.00:0.00 / mixed_ref=1 / me_range=16 / chroma_me=1 / trellis=1 / 8x8dct=1 / cqm=0 / deadzone=21,11 / fast_pskip=1 / chroma_qp_offset=-2 / threads=16 / lookahead_threads=2 / sliced_threads=0 / nr=0 / decimate=1 / interlaced=0 / bluray_compat=0 / constrained_intra=0 / bframes=3 / b_pyramid=2 / b_adapt=1 / b_bias=0 / direct=1 / weightb=1 / open_gop=0 / weightp=1 / keyint=576 / keyint_min=288 / scenecut=40 / intra_refresh=0 / rc_lookahead=250 / rc=crf / mbtree=1 / crf=22.0 / qcomp=0.60 / qpmin=0 / qpmax=69 / qpstep=4 / vbv_maxrate=2600 / vbv_bufsize=25644 / crf_max=0.0 / nal_hrd=none / filler=0 / ip_ratio=1.40 / aq=1:1.00
Language                                 : English
Default                                  : Yes
Forced                                   : Yes
Color range                              : Limited
Color primaries                          : BT.709
Transfer characteristics                 : BT.709
Matrix coefficients                      : BT.709

```

### After

```text
Scan type                                : Progressive
Bits/(Pixel*Frame)                       : 0.052
Stream size                              : 1.64 GiB (87%)
Language                                 : English
Default                                  : Yes
Forced                                   : Yes
Color range                              : Limited
Color primaries                          : BT.709
Transfer characteristics                 : BT.709
Matrix coefficients                      : BT.709

```
