#CommentFlag // Useful tutorial: 
#CommentFlag // https://syncwithtech.blogspot.com/2014/02/create-shortcutkey-autohotkey-tutorial.html

#CommentFlag // Flipping the CapsLock and Esc
Capslock::Esc

#CommentFlag // Adding shortcut for windows terminal
#Enter::
run cmd.exe, C:\Users\daval
return

#CommentFlag // Adding shortcut for windows file explorer
#+Enter::
run explorer.exe
return
