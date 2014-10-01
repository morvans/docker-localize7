core = 7.x
api = 2
projects[drupal][version] = "7.31"


; Modules
projects[ctools][version] = "1.4"
projects[entity][version] = "1.2"
projects[entityreference][version] = "1.1"
projects[entityreference_prepopulate][version] = "1.3"
projects[google_analytics][version] = "1.3"
projects[l10n_pconfig][version] = "1.2"
projects[migrate][version] = "2.5"
projects[og][version] = "2.x-dev"
projects[og][download][revision] = "95b1523c8d576add4dd3c954e34034b80ab93bc3"
; https://www.drupal.org/node/1985800#comment-7802723: Set default value of og_roles_permissions field during migration
projects[og][patch][] = "https://www.drupal.org/files/1985800-7-og_roles_permissions_default_value.patch"
; https://www.drupal.org/node/1565546#comment-7849761: OG User Roles (OGUR) upgrade path
; (Included upstream already.)
projects[og][patch][] = "https://www.drupal.org/files/1565546-41-upgrade_ogur.patch"
projects[potx][version] = "1.x-dev"
projects[potx][download][revision] = "8ac54a17480f9fa41ce07fd38642bca809e49a8a"
projects[views_bulk_operations][version] = "3.1"
projects[views][version] = "3.7"


; Custom modules
projects[l10n_server][version] = "1.x-dev"
projects[l10n_server][download][revision] = "53c0e50fe0ef5099fc7d1065cdf0e9b26dbc5acb"


;; Common for Drupal.org D7 sites.
;cincludes[drupalorg_common] = "https://bitbucket.org/drupalorg-infrastructure/drupal.org-sites-common/raw/7.x/drupal.org-common.make"
