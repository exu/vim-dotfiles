# img2data.vim

## Description
Converting link to image in clipboard to embedded data

## Requirements
VIM with python support

## Usage
Copy image link URL to your clipboard (VIMs @+ register), then enter VIM and call:
    :call Img2Data()

plugin insert converted text under cursor in current buffer. 

## Installation

Copy file to your ~/.vim/plugins directory

You can map it to a key e.g.
    map <Leader>ii :call Img2Data()<CR>
