"===========================================
" Vim plugin for load licences template file
" File:	  loadLicences.vim
" Maintainer: zpcat <suzp1984@gmail.com>
" Version: 0.1 beta
" Description:
" 	give a license name and Load a license from a template file
" Usage:
"   :call LoadMyLicense('licenses_name')
"
" TODO: autoload filename
"
"==========================
"

"the function to load License
function! LoadMyLicense(license)
	silent! :execute "1"
	silent! :execute '0r ~/.vim/templates/license/'.a:license.'.license'
	if exists("g:T_AUTHOR")
		echo "execute (".g:T_AUTHOR.")"
		sil! execute 1.','."$"."s/<+T_AUTHOR+>/".g:T_AUTHOR."/g"
	endif
	if exists("g:T_AUTHOR_EMAIL")
		sil! execute 1.','."$"."s/<+T_AUTHOR_EMAIL+>/".g:T_AUTHOR_EMAIL."/g"
	endif

	if exists("g:T_DATE_FORMAT")
		sil! execute 1.','."$"."s/<+T_CREATE_DATE+>/".strftime(g:T_DATE_FORMAT)."/g"
	endif
endfunction

