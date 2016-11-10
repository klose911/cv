(require 'ox-publish)
(setq org-publish-project-alist
      '(
        ;; These are the main web files
        ("jcip-notes"
         :base-directory "~/Documents/programming/latex/cv/material/jcip/" 
         :base-extension "org"
         :publishing-directory "~/tmp/jcip/"
         :recursive t
         :publishing-function org-html-publish-to-html
         :headline-levels 4
         :auto-sitemap nil
	 :section-numbers nil
         :with-toc nil
         :html-head "<link rel=\"stylesheet\"
                       href=\"css/org.css\" type=\"text/css\"/>"
         :html-preamble t
	 :htmlized-source t
         )

        ;; These are static files (images, pdf, etc)
        ("jcip-static"
         :base-directory "~/Documents/programming/latex/cv/material/jcip/" ;; Change this to your local dir
         :base-extension "css\\|js\\|png\\|jpg\\|gif\\|pdf\\|mp3\\|ogg\\|swf\\|txt\\|asc"
         :publishing-directory "~/tmp/jcip/"
         :recursive t
         :publishing-function org-publish-attachment
         )

        ("jcip" :components ("jcip-notes" "jcip-static"))
        )
      )

(defun jcip-publish nil
  "Publish jcip"
  (interactive)
  (org-publish "jcip" t))