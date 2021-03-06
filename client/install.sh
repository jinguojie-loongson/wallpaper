# 主程序文件

cp -rf opt /

chmod 777 /usr/share/backgrounds/f21/default/f21.xml

cp  HOME/wallpaper.desktop  /etc/xdg/autostart/

# 注意：由于是使用root运行的，所以一定要获得实际登录用户
ALL_HOME=`cut -d: -f6 /etc/passwd | grep -E   'root|home' | sort | uniq`

for home in $ALL_HOME; do
  cp opt/wallpaper/file/.wallpaper.conf  $home
done

sudo -u $USER python /opt/wallpaper/file/wallpaper.py

exit 0
