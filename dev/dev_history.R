#------------------------------------------------------------------------#
# Exemple sous https://linogaliana.gitlab.io/collaboratif/package.html #

####################  AU QUOTIDIEN  ###############################
# 3.a. Inclure du code, le documenter et le tester
# Pour chaque fonction du package :
usethis::use_r("add_table")
usethis::use_test("add_table")
# écrire le code de la fonction
# documenter la fonction
# # Pour mettre à jour la documentation et le NAMESPACE
# devtools::document()
roxygen2::roxygenise()

# écrire les tests
# exécuter les tests
devtools::test()

# 3.b. Si besoin, déclarer une dépendance dans DESCRIPTION
usethis::use_package("openxlsx")
# pour utiliser %>% dans un package
# usethis::use_pipe()

# Pour réaliser le contrôle de conformité du package
devtools::check()

# 3.c. Astuce qui peut aider durant le développement
# Charger l'ensemble des fonctions de son package
devtools::load_all()

# Pour le code coverage
covr::package_coverage()
covr::report()
#------------------------------------------------#

# Ajout de  `dev/dev_history.R` au .Rbuildignore
usethis::use_build_ignore("dev/dev_history.R")

# Ajout d'un fichier NEWS
usethis::use_news_md()

# Creation du squelette du pkgdown
usethis::use_pkgdown()

# Configuration des GHA
usethis::use_github_action(name = "check-release")

# Ajout des fichiers dans `data-raw`
usethis::use_data_raw("style_guide")

# Creation des vignettes
usethis::use_vignette("aa-examples")

# Creation du repertoire testthat
usethis::use_testthat()

# Pour avoir le détail du code coverage par fonction
covr::report()

################ En fin de developpement ##########

# Construction du site (uniquement sur SSP Cloud)
pkgdown::build_site(override = list(destination = "../website"))

# Construction du fichier .tar.gz
devtools::build()

# Construction du fichier .zip (format binaire)
devtools::build(binary=TRUE)

# Construction du manuel au format pdf
devtools::build_manual(path = "manuel")
