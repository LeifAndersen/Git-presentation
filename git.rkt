#lang slideshow

(require slideshow/play
         slideshow/code)

(define (medium-text txt)
  (text txt (current-main-font) 50))

(define (large-text txt)
  (text txt (current-main-font) 62))

(define (massive-text txt)
  (text txt (current-main-font) 120))

(slide
 (scale (bitmap "gitlogo.png") 2)
 (colorize (medium-text "Leif Andersen") "blue")
 (colorize (t "University of Utah") "red"))

(play-n
 (λ (n)
   (fade-pict n (massive-text "What is git?")
               (scale (bitmap "magicbox.jpg") 2))))

(slide
 #:title "This guy didn't use git."
 (scale (bitmap "grahm.jpg") 0.25))

(slide
 (massive-text "git init"))

(slide
 (massive-text "git add"))

(play-n
 (λ (n1 n2)
   (fade-around-pict n2 (fade-around-pict n1 (massive-text "git commit")
                                          (λ (x)
                                            (hc-append 0 x (massive-text " -m"))))
                     (λ (x) 
                       (hc-append 0 x (massive-text " -a"))))))

(slide
 (massive-text "git status"))

(slide
 (massive-text ".gitignore"))

(slide
 (large-text "Git is also a time machine")
 (scale (bitmap "delorean.jpg") 1))

(slide
 (massive-text "git log"))

(slide
 (massive-text "gitk"))

(play-n
 #:skip-first? #t
 (λ (n)
   (vc-append 0 (large-text "Traveling through time and space")
              (t "Branching and Merging")
              (cellophane (scale (bitmap "tardis.jpg") 0.5) n))))

(slide
 (massive-text "git branch"))

(play-n
 (λ (n)
   (fade-around-pict n (massive-text "git checkout")
                     (λ (x)
                       (hc-append 0 x (massive-text " -b"))))))

(slide
 (massive-text "git merge"))

(slide
 (massive-text "git stash"))

(slide
 (large-text "What about code sharing?"))

(play-n
 #:skip-first? #t
 (λ (n1 n2)
   (vc-append 100 (cellophane (scale (bitmap "github.png") 0.7) n1)
              (cellophane (scale (bitmap "bitbucket.png") 0.6) n2))))


(slide
 (massive-text "git remote add"))

(slide
 (massive-text "git clone"))

(slide
 (massive-text "git push"))

(slide
 (massive-text "git fetch"))

(play-n
 (λ (n)
   (fade-pict n (vc-append 0 (large-text "git fetch")
                           (large-text "git merge"))
              (massive-text "git pull"))))

(slide
 (large-text "Installing git")
 (scale (bitmap "canhazgit.jpg") 1.7))

(play-n
 (λ (n)
   (fade-around-pict n (large-text "Step One:")
                     (λ (x)
                       (vc-append 0 x (massive-text "Install Git"))))))

(play-n
 (λ (n)
   (fade-pict n (massive-text "Windows")
              (vc-append 0 (vc-append 0 (scale (bitmap "git-windows.png") 1)
                                     (massive-text "Git for Windows"))
                         (medium-text "http://msysgit.github.com/")))))

(play-n
 (λ (n)
   (fade-pict n (massive-text "Ubuntu")
              (large-text "supo apt-get install git-core"))))

(play-n
 (λ (n)
   (fade-pict n (massive-text "Other")
              (large-text "http://git-scm.com/"))))

(play-n
 (λ (n1 n2)
   (fade-pict n2 (fade-around-pict n1 (large-text "Step Two:")
                                    (λ (x)
                                      (vc-append 0 x (massive-text "git config"))))
              (vc-append 0 (t "git config --global user.name \"Leif Andersen\"")
                         (t "git config --global user.email \"leif@leifandersen.net\"")))))


(slide
 #:title "Now they use git."
 (scale (bitmap "grahm-and-sarah.jpg") 0.25))

(slide
 (massive-text "Questions?"))