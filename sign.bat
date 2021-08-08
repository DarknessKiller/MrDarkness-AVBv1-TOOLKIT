@echo off
echo Welcome to MrDarkness AVBv1 Script!
set /p bootname="Enter your boot image name: "
java -jar BootSignature.jar /boot %bootname% avb/verity.pk8 avb/verity.x509.pem %bootname%-signed.img