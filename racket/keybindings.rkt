#lang s-exp framework/keybinding-lang

(define (rebind key command)
  (keybinding
   key
   (λ (ed evt)
     (send (send ed get-keymap) call-function
           command ed evt #t))))
 
(rebind "c:u" "backward-kill-word")

(rebind "c:c;u" "command-repeat-0")
