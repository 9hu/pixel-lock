# Pixel lock

Lock screen bash script that pixelates the sessions current screen output.
No lock icon, nor feedback for passphrase entry/attempt.
Type your passphrase while the session is locked and press enter to unlock.
Compatible with all aesthetics!

## Usage

1. Import the `plock.sh` script.
1. Make sure you have the following dependencies installed: bash, ImageMagick, scrot, i3lock.
1. Give proper permissions to be executed: `$ chmod +x plock.sh`.
1. Execute it with a virtual pixel value: `$ ./plock.sh 4` (This would make each lockscreen pixel 4 output pixels tall/wide.)

### Automatic screen locking

If you want laptop lid shuts or other lock requests to lock your session with this, pair it with something like `xss-lock`.

    xss-lock -l -- /path/to/plock.sh 4 &

## Example images

An example screen output:

![](images/example-pre-lock.png)

An example of the lock screen with a virtual pixel size of 5:

![](images/example-pixel-size-5.png)

An example of the lock screen with a virtual pixel size of 25:

![](images/example-pixel-size-25.png)

## Warning

If you pick a virtual pixel size that either dimension of your screen isn't divisible by, the lockscreen won't fit the output.

## Origins 

Based on [this](https://github.com/savoca/dotfiles/blob/gray/home/.bin/scripts/lock.sh) which I found [here](https://www.reddit.com/r/unixporn/comments/3358vu/i3lock_unixpornworthy_lock_screen/).
