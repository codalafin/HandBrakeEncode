::HandBrakeEncode.bat is a batch script to run the executable HandBrakeCLI.exe on a PC or server in bulk
::HandBrakeCLI is a video editor that in this function re-encodes mp4 or mkv
:: files to a new h.264 video encoding format. Check out https://handbrake.fr
::For this to run, the video files must already be in the TO ENCODE directory. 

For /R "D:\TO ENCODE" %%G IN (*.mkv) do mkdir "D:\ENCODED\%%~pG"
For /R "D:\TO ENCODE" %%G IN (*.mkv) do HandBrakeCLI -i "%%G" -o "D:\ENCODED%%~pG%%~nxG" -E faac -B 96k -6 stereo -R 44.1 -e x264 -q 27 -x cabac=1:ref=5:analyse=0x133:me=umh:subme=9:chroma-me=1:deadzone-inter=21:deadzone-intra=11:b-adapt=2:rc-lookahead=60:vbv-maxrate=10000:vbv-bufsize=10000:qpmax=69:bframes=5:b-adapt=2:direct=auto:crf-max=51:weightp=2:merange=24:chroma-qp-offset=-1:sync-lookahead=2:psy-rd=1.00,0.15:trellis=2:min-keyint=23:partitions=all

For /R "D:\TO ENCODE" %%G IN (*.mp4) do mkdir "D:\ENCODED\%%~pG"
For /R "D:\TO ENCODE" %%G IN (*.mp4) do HandBrakeCLI -i "%%G" -o "D:\ENCODED%%~pG%%~nxG" -E faac -B 96k -6 stereo -R 44.1 -e x264 -q 27 -x cabac=1:ref=5:analyse=0x133:me=umh:subme=9:chroma-me=1:deadzone-inter=21:deadzone-intra=11:b-adapt=2:rc-lookahead=60:vbv-maxrate=10000:vbv-bufsize=10000:qpmax=69:bframes=5:b-adapt=2:direct=auto:crf-max=51:weightp=2:merange=24:chroma-qp-offset=-1:sync-lookahead=2:psy-rd=1.00,0.15:trellis=2:min-keyint=23:partitions=all 