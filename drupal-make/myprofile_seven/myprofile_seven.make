; My Profile for Drupal 7
; A sample Drupal 7 install profile for use with Forge Drupal Make.

; Drush Make API
api = 2

; Drupal
core = 7.x

; Core
projects[drupal][version] = 7.31

; Modules
projects[] = devel
projects[] = libraries
projects[] = jquery_update

; Themes
projects[] = bootstrap

; Libraries

libraries[jquery][download][type] = "file"
libraries[jquery][download][url] = "http://code.jquery.com/jquery-1.11.1.min.js"
