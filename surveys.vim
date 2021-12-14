let SessionLoad = 1
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/Downloads/SurveyCraft
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +2 Gemfile
badd +1 app/controllers/surveys_controller.rb
badd +39 README.md
badd +1 app/models/survey.rb
badd +13 app/controllers/questions_controller.rb
badd +1 app/models/question.rb
badd +31 app/views/questions/new.html.erb
badd +6 app/views/surveys/show.html.erb
badd +14 app/views/surveys/new.html.erb
badd +4 app/controllers/answers_controller.rb
badd +3 app/models/answer.rb
badd +1 config/routes.rb
badd +1 app/views/answers/new.html.erb
badd +1 db/schema.rb
badd +6 spec/controllers/survey_controller_spec.rb
badd +1 config/environments/test.rb
badd +43 spec/rails_helper.rb
badd +14 app/views/layouts/application.html.erb
badd +3 .travis.yml
badd +7 app/views/surveys/index.html.erb
badd +8 db/migrate/20211027052714_create_submissions.rb
badd +1 db/migrate/20211013004725_create_answers.rb
badd +1 db/migrate/20211013093431_update_uuid_column_to_session_id_in_answers.rb
badd +2 db/migrate/20211027052922_add_submission_id_to_answers.rb
badd +3 db/migrate/20211007090141_create_questions.rb
badd +1 app/models/submission.rb
badd +21 app/controllers/submissions_controller.rb
badd +11 app/views/submissions/new.html.erb
badd +1 babel.config.js
badd +1 spec/controllers/question_controller_spec.rb
badd +2 app/views/submissions/show.html.erb
argglobal
%argdel
set stal=2
tabnew
tabnew
tabnew
tabrewind
edit config/routes.rb
let s:save_splitbelow = &splitbelow
let s:save_splitright = &splitright
set splitbelow splitright
wincmd _ | wincmd |
split
1wincmd k
wincmd w
let &splitbelow = s:save_splitbelow
let &splitright = s:save_splitright
wincmd t
let s:save_winminheight = &winminheight
let s:save_winminwidth = &winminwidth
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe '1resize ' . ((&lines * 17 + 19) / 39)
exe '2resize ' . ((&lines * 18 + 19) / 39)
argglobal
balt README.md
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
let s:l = 7 - ((6 * winheight(0) + 8) / 17)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 7
normal! 02|
wincmd w
argglobal
if bufexists("README.md") | buffer README.md | else | edit README.md | endif
if &buftype ==# 'terminal'
  silent file README.md
endif
balt config/routes.rb
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
let s:l = 37 - ((1 * winheight(0) + 9) / 18)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 37
normal! 043|
wincmd w
exe '1resize ' . ((&lines * 17 + 19) / 39)
exe '2resize ' . ((&lines * 18 + 19) / 39)
tabnext
edit app/models/survey.rb
let s:save_splitbelow = &splitbelow
let s:save_splitright = &splitright
set splitbelow splitright
wincmd _ | wincmd |
split
wincmd _ | wincmd |
split
2wincmd k
wincmd w
wincmd w
let &splitbelow = s:save_splitbelow
let &splitright = s:save_splitright
wincmd t
let s:save_winminheight = &winminheight
let s:save_winminwidth = &winminwidth
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe '1resize ' . ((&lines * 11 + 19) / 39)
exe '2resize ' . ((&lines * 11 + 19) / 39)
exe '3resize ' . ((&lines * 12 + 19) / 39)
argglobal
balt app/controllers/surveys_controller.rb
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
let s:l = 5 - ((4 * winheight(0) + 5) / 11)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 5
normal! 033|
wincmd w
argglobal
if bufexists("app/controllers/surveys_controller.rb") | buffer app/controllers/surveys_controller.rb | else | edit app/controllers/surveys_controller.rb | endif
if &buftype ==# 'terminal'
  silent file app/controllers/surveys_controller.rb
endif
balt Gemfile
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
let s:l = 28 - ((5 * winheight(0) + 5) / 11)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 28
normal! 03|
wincmd w
argglobal
if bufexists("app/views/surveys/show.html.erb") | buffer app/views/surveys/show.html.erb | else | edit app/views/surveys/show.html.erb | endif
if &buftype ==# 'terminal'
  silent file app/views/surveys/show.html.erb
endif
balt app/views/surveys/new.html.erb
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
let s:l = 8 - ((4 * winheight(0) + 6) / 12)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 8
normal! 0
wincmd w
exe '1resize ' . ((&lines * 11 + 19) / 39)
exe '2resize ' . ((&lines * 11 + 19) / 39)
exe '3resize ' . ((&lines * 12 + 19) / 39)
tabnext
edit app/models/question.rb
let s:save_splitbelow = &splitbelow
let s:save_splitright = &splitright
set splitbelow splitright
wincmd _ | wincmd |
split
wincmd _ | wincmd |
split
2wincmd k
wincmd w
wincmd w
let &splitbelow = s:save_splitbelow
let &splitright = s:save_splitright
wincmd t
let s:save_winminheight = &winminheight
let s:save_winminwidth = &winminwidth
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe '1resize ' . ((&lines * 12 + 19) / 39)
exe '2resize ' . ((&lines * 11 + 19) / 39)
exe '3resize ' . ((&lines * 11 + 19) / 39)
argglobal
balt db/migrate/20211007090141_create_questions.rb
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
let s:l = 4 - ((3 * winheight(0) + 6) / 12)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 4
normal! 03|
wincmd w
argglobal
if bufexists("app/controllers/questions_controller.rb") | buffer app/controllers/questions_controller.rb | else | edit app/controllers/questions_controller.rb | endif
if &buftype ==# 'terminal'
  silent file app/controllers/questions_controller.rb
endif
balt app/models/question.rb
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
let s:l = 19 - ((5 * winheight(0) + 5) / 11)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 19
normal! 03|
wincmd w
argglobal
if bufexists("app/views/questions/new.html.erb") | buffer app/views/questions/new.html.erb | else | edit app/views/questions/new.html.erb | endif
if &buftype ==# 'terminal'
  silent file app/views/questions/new.html.erb
endif
balt app/controllers/questions_controller.rb
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
let s:l = 24 - ((4 * winheight(0) + 5) / 11)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 24
normal! 040|
wincmd w
exe '1resize ' . ((&lines * 12 + 19) / 39)
exe '2resize ' . ((&lines * 11 + 19) / 39)
exe '3resize ' . ((&lines * 11 + 19) / 39)
tabnext
edit app/models/submission.rb
let s:save_splitbelow = &splitbelow
let s:save_splitright = &splitright
set splitbelow splitright
wincmd _ | wincmd |
split
wincmd _ | wincmd |
split
2wincmd k
wincmd w
wincmd w
let &splitbelow = s:save_splitbelow
let &splitright = s:save_splitright
wincmd t
let s:save_winminheight = &winminheight
let s:save_winminwidth = &winminwidth
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe '1resize ' . ((&lines * 11 + 19) / 39)
exe '2resize ' . ((&lines * 11 + 19) / 39)
exe '3resize ' . ((&lines * 12 + 19) / 39)
argglobal
balt app/controllers/submissions_controller.rb
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
let s:l = 2 - ((1 * winheight(0) + 5) / 11)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 2
normal! 0
wincmd w
argglobal
if bufexists("app/controllers/submissions_controller.rb") | buffer app/controllers/submissions_controller.rb | else | edit app/controllers/submissions_controller.rb | endif
if &buftype ==# 'terminal'
  silent file app/controllers/submissions_controller.rb
endif
balt app/controllers/answers_controller.rb
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
let s:l = 26 - ((4 * winheight(0) + 5) / 11)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 26
normal! 06|
wincmd w
argglobal
if bufexists("app/views/submissions/new.html.erb") | buffer app/views/submissions/new.html.erb | else | edit app/views/submissions/new.html.erb | endif
if &buftype ==# 'terminal'
  silent file app/views/submissions/new.html.erb
endif
balt app/views/submissions/show.html.erb
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
let s:l = 15 - ((4 * winheight(0) + 6) / 12)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 15
normal! 036|
wincmd w
exe '1resize ' . ((&lines * 11 + 19) / 39)
exe '2resize ' . ((&lines * 11 + 19) / 39)
exe '3resize ' . ((&lines * 12 + 19) / 39)
tabnext 4
set stal=1
if exists('s:wipebuf') && len(win_findbuf(s:wipebuf)) == 0&& getbufvar(s:wipebuf, '&buftype') isnot# 'terminal'
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToOFI
let &winminheight = s:save_winminheight
let &winminwidth = s:save_winminwidth
let s:sx = expand("<sfile>:p:r")."x.vim"
if filereadable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &g:so = s:so_save | let &g:siso = s:siso_save
set hlsearch
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
