#!/system/bin/sh

encrypt=`getprop ro.crypto.state`
if [ "$encrypt" = "unencrypted" ]; then


PATH=/sbin:/system/sbin:/system/bin:/system/xbin
export PATH

mount -o rw,remount,barrier=1 /preload
chmod 0770 /preload/music
chown system /preload/music
#chmod 0770 /preload/image
#chmod 0770 /preload/video
#chown system /preload/image
#chown system /preload/video
mount -o ro,remount,barrier=1 /preload
   
sys_name=`getprop ro.product.sys_name`
case $sys_name in
    "EF56S" | "EF59S" | "EF59K" | "EF59L")
        mkdir "/data/media/0/Pictures"
        chmod 0775 "/data/media/0/Pictures"
        chown media_rw:media_rw "/data/media/0/Pictures"

        #ok
        mkdir "/data/media/0/Pictures/가족"
        chmod 0775 "/data/media/0/Pictures/가족"
        chown media_rw:media_rw "/data/media/0/Pictures/가족"
        mkdir "/data/media/0/Pictures/친구"
        chmod 0775 "/data/media/0/Pictures/친구"
        chown media_rw:media_rw "/data/media/0/Pictures/친구"
        /system/bin/cp  "/preload/image/Family_Best_face.jpg" "/data/media/0/Pictures/가족/Family_Best_face.jpg"
        /system/bin/cp  "/preload/image/Friends_Remote_shot.jpg" "/data/media/0/Pictures/친구/Friends_Remote_shot.jpg"
        chmod 0775 "/data/media/0/Pictures/가족/Family_Best_face.jpg"
        chmod 0775 "/data/media/0/Pictures/친구/Friends_Remote_shot.jpg"
        ;;
    *)
        ;;
esac

#chmod -R 0777 /preload/image
#/system/bin/cp -a /preload/image/* /data/media/0/DCIM/
#chmod -R 0777 /data/media/0/DCIM

#mkdir "/data/media/0/My video" 
#chmod 0775 "/data/media/0/My video"
#chown media_rw:media_rw "/data/media/0/My video"
#/system/bin/cp  "/preload/video/NGC_Clip.mp4" "/data/media/0/My video/NGC_Clip.mp4"
#chmod 0775 "/data/media/0/My video/NGC_Clip.mp4"

mkdir "/data/media/0/My music" 
chmod 0775 "/data/media/0/My music" 
chown media_rw:media_rw "/data/media/0/My music" 
/system/bin/cp "/preload/music/01_Passion_of_VEGA.flac" "/data/media/0/My music/01_Passion_of_VEGA.flac" 
/system/bin/cp "/preload/music/02_Jumping.flac" "/data/media/0/My music/02_Jumping.flac" 
/system/bin/cp "/preload/music/03_Story_from_the_Sky.flac" "/data/media/0/My music/03_Story_from_the_Sky.flac" 
chmod 0775 "/data/media/0/My music/01_Passion_of_VEGA.flac" 
chmod 0775 "/data/media/0/My music/02_Jumping.flac" 
chmod 0775 "/data/media/0/My music/03_Story_from_the_Sky.flac"

setprop persist.preload.media complete

fi
