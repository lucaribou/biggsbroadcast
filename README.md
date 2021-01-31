# Biggs' Steam broadcast
Scripts used for broadcasting a video to Steam

- At startup the VM will execute the `startup.sh` script that will mount the Azure File Share with the video in it and automatically start the broadcast.
- Every day at 11:20 AM the broadcast will restart.

---

1. Install ffmpeg
1. Put the scripts in your home directory
1. `chmod +x` on all the scripts
1. Configure your crontab with the file in this repo : `crontab -e`
