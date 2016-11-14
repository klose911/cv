(require 'ox-publish)
(setq org-publish-project-alist
      '(
        ;; These are the main web files
        ("notes-html"
         :base-directory "~/Documents/programming/latex/cv/material/" 
         :base-extension "org"
         :publishing-directory "~/Documents/programming/html/klose911.github.io/material/"
         :recursive nil
         :publishing-function org-html-publish-to-html
         :headline-levels 4
         :auto-sitemap nil
	 :section-numbers nil
         ;; :with-toc nil
         :html-head "<link rel=\"stylesheet\"
                       href=\"css/main.css\" type=\"text/css\"/>"
         :html-preamble t
	 :htmlized-source t
         )

        ;; css
        ("notes-css"
         :base-directory "~/Documents/programming/latex/cv/material/css" ;; Change this to your local dir
         :base-extension "css"
         :publishing-directory "~/Documents/programming/html/klose911.github.io/material/css"
         :recursive t
         :publishing-function org-publish-attachment
         )

	;; picture
        ("notes-pic"
         :base-directory "~/Documents/programming/latex/cv/material/pic" ;; Change this to your local dir
         :base-extension "png\\|jpg\\|gif"
         :publishing-directory "~/Documents/programming/html/klose911.github.io/material/pic"
         :recursive t
         :publishing-function org-publish-attachment
         )
	
        ("note" :components ("notes-css" "notes-pic" "notes-html"))
        )
      )

(defun note-publish nil
  "Publish notes"
  (interactive)
  (org-publish "note" nil))
