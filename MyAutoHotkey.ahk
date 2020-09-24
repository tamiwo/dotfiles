#InstallKeybdHook
#UseHook	;ホットキーラベルの定義で、常にフックを使用するようにする

Gui +LastFound
hWnd := WinExist()




;キー設定は左上から右下に向かって並べる
F13 & 1::send {Blind}{F1}
F13 & 2::send {Blind}{F2}
F13 & 3::send {Blind}{F3}
F13 & 4::
    if GetKeyState("Shift", "P")
        send {Blind}{End}
    else
        send {Blind}{F4}
    return
F13 & 5::send {Blind}{F5}
F13 & 6::send {Blind}{F6}
F13 & 7::send {Blind}{F7}
F13 & 8::send {Blind}{F8}
F13 & 9::send {Blind}{F9}
F13 & 0::
    if GetKeyState("Shift", "P")
        send {Blind}{Home}
    else
        send {Blind}{F10}
    return
F13 & -::send {Blind}{F11}
F13 & ^::send {Blind}{F12}
F13 & BS::
    if GetKeyState("Shift", "P")
        send {Blind}{Delete}
    else
        send {Blind}{BS}
    return
;閉じる
F13 & q:: send !{F4}
; 未割り当て
F13 & w:: return
;このファイルを開く
F13 & e:: edit
;Redo
F13 & r::send ^y
;quick luncherにフォーカ;
F13 & t::send #t{tab}
;Excelでセルを黄色にする
F13 & y::
    if (WinActive("ahk_class XLMAIN")) ;Excel用
    {
        ; セルを黄色く塗る
        ;send ^{Enter}
        send {Alt}hh{Up}{Up}{Up}{Left}{Left}{Enter}
    }
    return
;Undo
F13 & u::send ^z
;Excelでセルを編集モードにする
F13 & i::
    if (WinActive("ahk_class XLMAIN")) || ;Excel用
       (WinActive("ahk_class CabinetWClass")) ;Exproler
        send {F2}
    return
; 未割り当て
F13 & o:: return
;    if (WinActive("ahk_class XLMAIN")) ;Excel用
;        send +{Space}{Apps}
;    return
;PgDn
F13 & p::
    if (WinActive("ahk_class XLMAIN"))
    { ;Excel用
        send ^{PgUp}
    }
    else if (WinActive("ahk_class OpusApp")) ;Word
    {
        send +{F6}
    }
    else if (WinActive("ahk_class WinMergeWindowClassW")) ;Winmarge
    {
        send {F6}
    }
    else if (WinActive("ahk_class CabinetWClass")){  ;Exproler
        send {Shift Down}{Blind}^{Tab}{Shift Up}
    }
    else if (WinActive("ahk_class AcrobatSDIWindow")){  ;Adobe Acrebat
        send {Shift Down}{Blind}^{Tab}{Shift Up}
    }
    else if (WinActive("ahk_class MozillaWindowClass")){ ;FireFox 
        if (WinActive("ahk_exe thunderbird.exe")){ ;Thunderbird
            send +{F6}
        }
        else {
            send {Shift Down}{Blind}^{Tab}{Shift Up}
        }
    }
    else{}
    return
; 未割り当て
F13 & @:: return
F13 & [::
    if (WinActive("ahk_class XLMAIN")) ;Excel用
        send {Enter}{Up}
    else
        send {Esc}
    return
F13 & Enter::
    if (WinActive("ahk_class XLMAIN")) ;Excel用
        send !{Enter}
    else
        send {Blind}{Enter}
    return
; 未割り当て
F13 & a:: return
;このファイルを再読み込みする
F13 & s::reload
;文字削除
F13 & d::send {Blind}{Delete}
;home
F13 & f::send {Blind}{Home}
; 未割り当て
F13 & g::return
;移動
F13 & h::
    if GetKeyState("sc07B", "P"){
        send {Blind}{Home} 
        return
    }
    else{
        send {Blind}{Left}
        return
    }
    return
F13 & j::
    if GetKeyState("sc07B", "P"){
        send {Blind}{PgDn}
        return
    }
    else{
        ;{Blind}修飾キー{Shift}なども反映される
        send {Blind}{Down}
        return
    }
    return
F13 & k::
    if GetKeyState("sc07B", "P"){
        send {Blind}{PgUp}
        return
    }
    else{
        send {Blind}{up} 
        return
    }
    return
F13 & l::
    if GetKeyState("sc07B", "P"){
        send {Blind}{End}
        return
    }
    else{
        send {Blind}{Right}
        return
    }
    return
; セミコロンは`でエスケープする必要がある
; 未割り当て
F13 & `;::
    return
;コロン
F13 & sc028::
    Run "D:\tools\bat\!.bat.lnk"
    return
F13 & x::send {Blind}{BS}
;Ctrlのかわりに使う
F13 & c::send ^c
;Ctrlのかわりに使う
F13 & v::send ^v
;end
F13 & b::send {Blind}{End}
;PgUp
F13 & n::
    if (WinActive("ahk_class XLMAIN")){ ;Excel用
        send ^{PgDn}
    }
    else if (WinActive("ahk_class OpusApp")) ;Word
    {
        send {F6}
    }
    else if (WinActive("ahk_class WinMergeWindowClassW")) ;Winmarge
    {
        send {F6}
    }
    else if (WinActive("ahk_class CabinetWClass")) ;Exproler
    {
        send ^{Tab}
    }
    else if (WinActive("ahk_class AcrobatSDIWindow")){  ;Adobe Acrebat
        send ^{Tab}
    }
    else if (WinActive("ahk_class MozillaWindowClass"))
    {
        if (WinActive("ahk_exe thunderbird.exe")){ ;Thunderbird
            send {F6}
        }
        else ;FireFox 
        {
            send ^{Tab}
        }
    }
    else{
    }
    return
;F13 & m::
F13 & ,::
    if GetKeyState("Shift", "P"){
        ;仮想デスクトップの移動
        send {Ctrl Down}{Blind}#{Left}{Ctrl Up}
        return
    }
    else{
        ;backspace
        send {Blind}{BS}
    }
    return

F13 & .::
    if GetKeyState("Shift", "P"){
        ;仮想デスクトップの移動
        send {Ctrl Down}{Blind}#{Right}{Ctrl Up}
        return
    }
    else{
        ;delete
        send {Blind}{Delete}
    }
    return

F13 & /::send ^f

F13 & Space::send {RWin}

;F13 & sc079::send {Enter}


;========================================
; Note
;========================================
;変換               sc079
;無変換             sc07B
;ひらがなカタカナ   sc070
;半角/全角 	        sc029
;Ctrlキー  ^ 	
;Altキー   ! 	
;Shiftキー + 	
;Winキー   # 	
;
;Changeキーでキー入力を以下の通り変更
;scanコードを設定
;Caps Lock → F13 0x0064
;左Win     → F14 0x0065
;以下未割り当てのスキャンコード
;F15 0x0066
;F16 0x0067
;F17 0x0068
;F18 0x0069
;F19 0x006A
;F20 0x006B
;F21 0x006C
;F22 0x006D
;F23 0x006E
;F24 0x0076


;========================================
;AutoHotKeyで、ウィンドウを瞬間移動してみた（マルチモニタ対応）。 
;https://poimono.exblog.jp/19210175/
;
;例えば、Win+NumPad7で今いるモニタの基準位置（左上）に、
;Win+NumPad3なら今いるモニタの右下に移動。
;Win+NumPad5かWin+Cで画面中央に移動。Win+1でモニタ1の基準位置へ移動。
;========================================
WinMoveG9(MntIdx = 0, MoveArea = 7) {
/*
　MntIdx : 異動先となるモニタ。デフォルトは0（移動しない）。
　MoveArea : 移動先となるグリッド（位置はテンキー参照）。デフォルトは7（左上）。
*/
  WinGet,WinId, ID, A
  WinGetPos, WinX, WinY, WinW, WinH, ahk_id %WinId%
  if MntIdx
    SysGet, Mnt, MonitorWorkArea, %MntIdx%
  else {
    WinYC := WinH // 2 + WinY, WinXC := WinW // 2 + WinX
    MntNum := 2 ; 有効なモニタ数（頻繁に変更するなら↓をアンコメント）
    ;~ SysGet, MntNum, 80
    Loop, %MntNum%
    {
      SysGet, Mnt, MonitorWorkArea, %A_Index%
      if (MntTop < WinYC) && (WinYC < MntBottom) && (MntLeft < WinXC) && (WinXC < MntRight)
        break
    }
  }

  if (7 == MoveArea || 4 == MoveArea || 1 == MoveArea) {
    MoveX := MntLeft
    MoveX -= 7 ;隙間ができるので
  }
  else if (8 == MoveArea || 5 == MoveArea || 2 == MoveArea){
    MoveX := (MntRight - MntLeft - WinW) / 2 + MntLeft
  }
  else {  ; if (9 == MoveArea || 6 == MoveArea || 3 == MoveArea)
    MoveX := MntRight - WinW
    MoveX += 7 ;隙間ができるので
  }

  if (7 == MoveArea || 8 == MoveArea || 9 == MoveArea)
    MoveY := MntTop
  else if (4 == MoveArea || 5 == MoveArea || 6 == MoveArea)
    MoveY := (MntBottom - MntTop - WinH) / 2 + MntTop
  else ; if (1 == MoveArea || 2 == MoveArea || 3 == MoveArea)
    MoveY := MntBottom - WinH


  
  WinMove, ahk_id %WinId%, , %MoveX%, %MoveY%, 655, 1207
}

#Numpad1::WinMoveG9(0, 1)
#Numpad2::WinMoveG9(0, 2)
#Numpad3::WinMoveG9(0, 3)
#Numpad4::WinMoveG9(0, 4)
#Numpad5::WinMoveG9(0, 5)
#Numpad6::WinMoveG9(0, 6)
#Numpad7::WinMoveG9(0, 7)
#Numpad8::WinMoveG9(0, 8)
#Numpad9::WinMoveG9(0, 9)

#1::
  WinMoveG9(1)
return
#2::
  WinMoveG9(2)
return

#c::
  WinMoveG9(0, 5)
return
