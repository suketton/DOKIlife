[_tb_system_call storage=system/_preview.ks ]

[mask time=10]
[mask_off time=10]
[cm  ]
*start

[mask_off  time="1000"  effect="fadeOut"  ]
[tb_ptext_show  x="350"  y="0"  size="25"  color="0xff0000"  time="0"  text="メンタルポイント："  anim="false"  face="sans-serif,'メイリオ'"  edge="undefined"  shadow="undefined"  ]
[tb_ptext_show  x="580"  y="0"  size="25"  color="0xff0000"  time="50"  text="&f.メンタルポイント"  anim="false"  face="sans-serif,'メイリオ'"  edge="undefined"  shadow="undefined"  ]
[tb_eval  exp="f.count+=1"  name="count"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[bg  time="1000"  method="crossfade"  storage="背景.jpg"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#櫻井
「今日も仕事頑張るか」[p]
#人事課長
「櫻井くん、ちょっと来てくれる？」[p]
#櫻井
「（うわ、最悪だ...10円ハゲ野郎に呼ばれてしまった...）」[p]
「すぐ行きます！」[p]
#
[_tb_end_text]

[bg  time="1000"  method="crossfade"  storage="課長室.jpg"  ]
[chara_show  name="人事課長"  time="1000"  wait="true"  storage="chara/3/C6BFE221-F7FA-43AE-973A-3CFF44560FE9.PNG"  width="300"  height="300"  left="170"  top="238"  reflect="false"  ]
[tb_eval  exp="f.ran=Math.floor(Math.random()*(99-0+1)+0)"  name="ran"  cmd="="  op="r"  val="0"  val_2="99"  ]
[jump  storage="jinji.ks"  target="*小言"  cond="f.ran<20"  ]
[jump  storage="jinji.ks"  target="*陰口"  cond="f.ran<40"  ]
[jump  storage="jinji.ks"  target="*罵倒"  cond="f.ran<60"  ]
[jump  storage="jinji.ks"  target="*ONA褒め"  cond="f.ran<75"  ]
[jump  storage="jinji.ks"  target="*人事評価"  cond="f.ran<90"  ]
[jump  storage="jinji.ks"  target="*暴力"  cond="f.ran<100"  ]
*小言

[tb_start_text mode=1 ]
#人事課長
「最近仕事が遅いよな。遊んでんじゃねえよ」[p]
#
遊んでんのはONAだろ[p]
#櫻井
「すみませんでした。」[p]
#

[_tb_end_text]

[tb_eval  exp="f.メンタルポイント-=Math.floor(Math.random()*(8-3+1)+3)"  name="メンタルポイント"  cmd="-="  op="r"  val="3"  val_2="8"  ]
[edit  left="433"  top="0"  width="200"  height="40"  size="20"  maxchars="200"  name="f.メンタルポイント"  reflect="false"  ]
[jump  storage="jinji.ks"  target="*人事課長終了"  ]
*陰口

[tb_start_text mode=1 ]
#人事課長
「櫻井くんって部下を指導するの下手だよな。部下の教育さぼってんじゃねえよ！」[p]
#
部下の教育をさぼってるのはお前だろ[p]
#櫻井
「すみませんでした。」[p]
#

[_tb_end_text]

[tb_eval  exp="f.メンタルポイント-=Math.floor(Math.random()*(13-8+1)+8)"  name="メンタルポイント"  cmd="-="  op="r"  val="8"  val_2="13"  ]
[jump  storage="jinji.ks"  target="*人事課長終了"  ]
*ONA褒め

[tb_start_text mode=1 ]
#人事課長
「ONAはほんとによくやってくれてるよ。それに比べて...」[p]
#
ONAがよくやってると思うお前の頭がどうかしてるよ。[p]
#櫻井
「すみませんでした。」[p]
#

[_tb_end_text]

[tb_eval  exp="f.メンタルポイント-=Math.floor(Math.random()*(25-15+1)+15)"  name="メンタルポイント"  cmd="-="  op="r"  val="15"  val_2="25"  ]
[jump  storage="jinji.ks"  target="*人事課長終了"  ]
*罵倒

[tb_start_text mode=1 ]
#人事課長
「なんで3年間も左側ばっかり見て仕事してんだ！右側に首が回らないのかよ。」[p]
#
[_tb_end_text]

[tb_eval  exp="f.メンタルポイント-=Math.floor(Math.random()*(35-25+1)+25)"  name="メンタルポイント"  cmd="-="  op="r"  val="25"  val_2="35"  ]
[jump  storage="jinji.ks"  target="*人事課長終了"  ]
*人事評価

[tb_start_text mode=1 ]
#人事課長
「次の人事評価はかなり低く査定するから覚悟しろよ！」[p]
「もちろんKGちゃんはS評価だけどな」[p]
#
お前も寝てんのかよ。[p]
#櫻井
「すみませんでした。」[p]
#

[_tb_end_text]

[tb_eval  exp="f.メンタルポイント-=Math.floor(Math.random()*(45-35+1)+35)"  name="メンタルポイント"  cmd="-="  op="r"  val="35"  val_2="45"  ]
[jump  storage="jinji.ks"  target="*人事課長終了"  ]
*暴力

[tb_start_text mode=1 ]
#人事課長
「櫻井君の家燃やしたから。お前の家ねえから！」[p]
#
#櫻井
？？？？？？？？？？[p]
は？普通に犯罪だろ。[p]
#
[_tb_end_text]

[tb_eval  exp="f.メンタルポイント-=Math.floor(Math.random()*(55-45+1)+45)"  name="メンタルポイント"  cmd="-="  op="r"  val="45"  val_2="55"  ]
*人事課長終了

[jump  storage="gameover.ks"  target=""  cond="f.メンタルポイント<1"  ]
[chara_hide  name="人事課長"  time="1000"  wait="true"  pos_mode="true"  ]
[tb_ptext_hide  time="1000"  ]
[tb_ptext_show  x="350"  y="0"  size="25"  color="0xff0000"  time="0"  text="メンタルポイント："  anim="false"  face="sans-serif,'メイリオ'"  edge="undefined"  shadow="undefined"  ]
[tb_ptext_show  x="580"  y="0"  size="25"  color="0xff0000"  time="50"  text="&f.メンタルポイント"  anim="false"  face="sans-serif,'メイリオ'"  edge="undefined"  shadow="undefined"  ]
[font  size="24"  color="0xff0000"  face="sans-serif,'メイリオ'"  ]
[tb_start_text mode=1 ]
メンタルポイントが下がった[p]
[_tb_end_text]

[resetfont  ]
[tb_start_text mode=1 ]
意味が分からない。[p]
全く納得できない。[p]
[_tb_end_text]

[bg  time="1000"  method="fadeIn"  storage="背景.jpg"  cross="true"  ]
[tb_start_text mode=1 ]
#櫻井
「10円ハゲ野郎...絶対許さない...」[p]
#
自分の席に戻ると、ちょうどお昼休みになった。[p]
[_tb_end_text]

[jump  storage="SS1.ks"  target=""  ]
