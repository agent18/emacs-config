## Introduction

Emacs allows crazy customizations. I have been using emacs for 8
months now, and I love it. Emacs usually is heavily customized by the
user. I hope this serves the newbies a base on which they can build
without wasting too much time.

**What you can find in this config:**

- regarding automatically installing packages upon switching on emacs

	This will allow to basically not worry one second about your
configuration when you have to re-install/install on a new computer.

- contains shortcuts for starting and stopping a mode
- contains shortcuts for triggering certain features in a mode when the
  mode is running.

## Prerequisites

You need Emacs. I have tested this init-file on `Emacs 25.3.2`. If you
are new to emacs and need help getting started look
[here](/Emacs-introduction.html). Instructions are only for Linux (I do not know how it works
in windows).

## Installing

Just download the files into your `~/.emacs.d/` folder. Delete the
`elpa` folder and the `.gitignore` file. That's it! Open Emacs. All the
packages needed will be installed automatically! Bye!

In case you want to try it and see how it works, download the files in
the git repository to `~/.emacs2.d/` and then,

	emacs -q -l ~/.emacs2

[Source](https://emacs.stackexchange.com/a/6002/17941) (I haven't tested this).

## Info

This `init.el` file contains shortcuts, settings of packages and
loading of the `packages-init.el` file. The `packages-init.el` file
contains the packages that need to be installed.

>For GnuEmacs, your init file is ~/.emacs, ~/.emacs.el, or
>~/.emacs.d/init.el. You can choose to use any of these names. ‘~/’
>stands for your home directory. - [Emacs init wiki](https://www.emacswiki.org/emacs/InitFile)

## License

Do what you want.

## Acknowledgments

All links of where the code was taken or modified from is in the `init.el`
and `package-init.el` files. This template was obtained from
[purplebooth](https://gist.github.com/PurpleBooth/109311bb0361f32d87a2#file-readme-template-md).

