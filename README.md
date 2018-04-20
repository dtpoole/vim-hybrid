# hybrid.vim

A dark colour scheme for Vim that combines the:

-   Default palette from [Tomorrow-Night](https://github.com/chriskempson/vim-tomorrow-theme).
-   Reduced contrast palette from [Codecademy](https://www.codecademy.com)'s
    online editor.
-   Syntax group highlighting scheme from [Jellybeans](https://github.com/nanotech/jellybeans.vim)
-   Vimscript from [Solarized](https://github.com/altercation/vim-colors-solarized)

## Updates

-   05/01/2016: Replaced `let g:hybrid_use_Xresources = 1` in favour of __`let
    g:hybrid_custom_term_colors = 1`__
-   05/01/2016: Added `let g:hybrid_reduced_contrast = 1`

## Requirements

-   gVim 7.3+ on Linux, Mac and Windows.
-   Vim 7.3+ on Linux and Mac, using a terminal that supports 256 colours.

## Installation

1.  Copy colors/hybrid.vim to:

    ```
    ~/.vim/colors/hybrid.vim
    ```

    or alternatively, use a plugin manger such as
    [vim-plug](https://github.com/junegunn/vim-plug),
    [NeoBundle](https://github.com/Shougo/neobundle.vim),
    [Vundle](https://github.com/gmarik/Vundle.vim), or
    [Pathogen](https://github.com/tpope/vim-pathogen).

2.  Add to ~/.vimrc:

    ```vim
    set background=dark
    colorscheme hybrid
    ```

## Define custom terminal colours (recommended)

Due to the limited 256 palette, colours in Vim and gVim will still be slightly
different.

In order to have Vim use the same colours as gVim (the way this colour scheme
is intended) define the basic 16 colours in your terminal.

#### Linux users: rxvt-unicode, xterm

1.  Add the default palette to ~/.Xresources:

    https://gist.github.com/3278077

    ![palette](http://dl.dropbox.com/u/23813887/Xresources-palette.png)

    or alternatively, add the reduced contrast palette to ~/.Xresources:

    https://gist.github.com/w0ng/16e33902508b4a0350ae

    ![palette](https://www.dropbox.com/s/0ny88dmfw84kcma/Xresources-palette-low.png?dl=1)

2.  Add to ~/.vimrc:

    ```vim
    let g:hybrid_custom_term_colors = 1
    let g:hybrid_reduced_contrast = 1 " Remove this line if using the default palette.
    colorscheme hybrid
    ```

#### OSX users: iTerm

1.  Import the default colour preset into iTerm:

    https://raw.githubusercontent.com/w0ng/dotfiles/master/iterm2/hybrid.itermcolors

    ![iterm_palette](http://i.imgur.com/wSWCyen.png)

    or alternatively, import the reduced contrast color preset into iTerm:

    https://raw.githubusercontent.com/w0ng/dotfiles/master/iterm2/hybrid-reduced-contrast.itermcolors

    ![iterm_palette_reduced](https://www.dropbox.com/s/mrvr3ftkmym0fok/iterm_palette_reduced.png?dl=1)


2.  Add to ~/.vimrc:

    ```vim
    let g:hybrid_custom_term_colors = 1
    let g:hybrid_reduced_contrast = 1 " Remove this line if using the default palette.
    colorscheme hybrid
    ```

## Screenshots

### Default palette on Linux

![vim-help](http://dl.dropbox.com/u/23813887/vim-help.png)
![vim-python](http://dl.dropbox.com/u/23813887/vim-python.png)
![vim-markdown](http://dl.dropbox.com/u/23813887/vim-markdown.png)
![vim-diff](http://dl.dropbox.com/u/23813887/vim-diff.png)
![vim-spell](https://dl.dropboxusercontent.com/u/23813887/vim-spell.png)

### Reduced contrast palette on OSX

![vim-reduced1](https://www.dropbox.com/s/57mjs7rfzq1h128/vim-reduced1.png?dl=1)
![vim-reduced2](https://www.dropbox.com/s/l6nvcm91llfxwjx/vim-reduced2.png?dl=1)
![vim-reduced3](https://www.dropbox.com/s/838qoahio9klsz6/vim-reduced3.png?dl=1)

# Fork

This is a fork. Original documentation found [here](https://github.com/w0ng/vim-hybrid).

I have modified a few highlight groups to my taste.

![](https://cloud.githubusercontent.com/assets/9126138/13645145/bb474cb6-e5e6-11e5-8063-3ba0b8515d5b.png)


lightline-hybrid
================

Overview
--------
lightline-hybrid brings awesome color scheme [vim-hybrid](https://github.com/w0ng/vim-hybrid) into [lightline.vim](https://github.com/itchyny/lightline.vim).


Setup
-----
Put `lightline-hybrid.vim` into your plugin directory.

Or if you are mad about [NeoBundle](https://github.com/Shougo/neobundle.vim), add the following line to your `.vimrc`:
```vim
NeoBundle 'cocopon/lightline-hybrid.vim'
```

Finally, set color scheme of lightline in `.vimrc`:
```vim
let g:lightline = {}
let g:lightline.colorscheme = 'hybrid'
```


Screenshots
-----------
![default](http://cocopon.me/app/lightline-hybrid/img/default.png)

If you prefer a simple one, how about a plain style?

![plain](http://cocopon.me/app/lightline-hybrid/img/plain.png)

```vim
let g:lightline_hybrid_style = 'plain'
```


License
-------
MIT License.
See LICENSE.txt for more information.
