# Arch-setup-scripts

This Repository contains shell scripts to use while installing Arch Linux.
Modify the content of the scripts to suit your requirements if needed.

Steps to Follow :

1. Load your Keymap (Not needed if your keymap is ENGLISH US)
2. partition your drive as you need.
3. Format the partitions created.
4. mount your partitions.
5. run pacstrap ( pacstrap /mnt base linux linux-firmware git vim intel-ucode ) you can replace 'linux' and 'intel-ucode' with the package of your choice.
6. chroot into Arch ( arch-chroot /mnt )
7. clone this repo using 'git clone https://github.com/CookieFiend/Arch-setup-scripts'
8. cd Arch-setup-scripts
9. give executable permissions using chmod +x script-name.sh
10. run the script ( ./script-name.sh )
