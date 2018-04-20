" Author:  cocopon <cocopon@me.com>
" License: MIT License


" Color palette from vim-hybrid
let s:mono0 = '#e4e4e4'
let s:mono1 = '#d0d0d0'
let s:mono3 = '#bcbcbc'
let s:mono4 = '#5f5f5f'

let s:mono2   = '#9e9e9e'
let s:mono5   = '#000000'
let s:c_mono0 = 244
let s:c_mono1 = 252
let s:c_mono2 = 247
let s:c_mono3 = 250
let s:c_mono4 = 59
let s:c_mono5 = 16

let s:red      = '#5f0000'
let s:green    = '#005f00'
let s:blue     = '#00005f'
let s:orange   = '#875f00'
let s:c_red    = 52
let s:c_green  = 22
let s:c_blue   = 17
let s:c_orange = 94


let s:p = {
			\ 'normal':   {},
			\ 'inactive': {},
			\ 'insert':   {},
			\ 'replace':  {},
			\ 'visual':   {},
			\ 'tabline':  {}}

let s:style = exists('g:lightline_hybrid_style')
			\ ? g:lightline_hybrid_style
			\ : ''

" [[guifg, guibg, ctermfg, ctermbg], ...]
if s:style == 'plain'
	let s:p.normal.middle = [
				\ [s:mono3, s:mono4, s:c_mono3, s:c_mono4]]
	let s:p.normal.left = [
				\ [s:mono0, s:mono4, s:c_mono0, s:c_mono4],
				\ [s:mono0, s:mono4, s:c_mono0, s:c_mono4]]
	let s:p.normal.right = [
				\ [s:mono0, s:mono4, s:c_mono0, s:c_mono4],
				\ [s:mono0, s:mono4, s:c_mono0, s:c_mono4]]
else
	let s:p.normal.middle = [
				\ [s:mono4, s:mono1, s:c_mono4, s:c_mono1]]
	let s:p.normal.left = [
				\ [s:mono0, s:green, s:c_mono0, s:c_green],
				\ [s:mono5, s:mono3, s:c_mono5, s:c_mono3]]
	let s:p.normal.right = [
				\ [s:mono0, s:mono4, s:c_mono0, s:c_mono4],
				\ [s:mono0, s:mono4, s:c_mono0, s:c_mono4]]
endif

let s:p.inactive.middle = [
			\ [s:mono4, s:mono2, s:c_mono4, s:c_mono2]]
let s:p.inactive.right = [
			\ s:p.inactive.middle[0],
			\ s:p.inactive.middle[0]]
let s:p.inactive.left = [
			\ s:p.inactive.middle[0],
			\ s:p.inactive.middle[0]]

let s:p.insert.left = [
			\ [s:mono0, s:blue, s:c_mono0, s:c_blue],
			\ s:p.normal.left[1]]
let s:p.replace.left = [
			\ [s:mono0, s:red, s:c_mono0, s:c_red],
			\ s:p.normal.left[1]]
let s:p.visual.left = [
			\ [s:mono0, s:orange, s:c_mono0, s:c_orange],
			\ s:p.normal.left[1]]

if s:style == 'plain'
	let s:p.tabline.middle = [
				\ [s:mono0, s:mono5, s:c_mono0, s:c_mono5]]
	let s:p.tabline.right = [
				\ [s:mono0, s:mono5, s:c_mono0, s:c_mono5]]
	let s:p.tabline.left = [
				\ [s:mono0, s:mono5, s:c_mono0, s:c_mono5]]
	let s:p.tabline.tabsel = [
				\ [s:mono5, s:mono0, s:c_mono5, s:c_mono0]]
else
	let s:p.tabline.middle = [
				\ [s:mono0, s:mono4, s:c_mono0, s:c_mono4]]
	let s:p.tabline.right = [
				\ [s:mono4, s:mono1, s:c_mono4, s:c_mono1],
				\ [s:mono0, s:mono4, s:c_mono0, s:c_mono4]]
	let s:p.tabline.left = [
				\ [s:mono4, s:mono1, s:c_mono4, s:c_mono1]]
	let s:p.tabline.tabsel = [
				\ [s:mono5, s:mono0, s:c_mono5, s:c_mono0]]
endif


let g:lightline#colorscheme#hybrid_light#palette = s:p
