# =============================================================================
# Makefile — vulcano.brisecom.org (sello de trabajo artesano de BRISECOM)
# Framework: makeit (https://github.com/javi-jimenez/makeit)
# =============================================================================

# --- Configuración del proyecto (antes de los include) ---------------------
MAKEIT          ?= $(HOME)/data/repo/makeit
PROJECT         ?= vulcano.brisecom.org
COMMIT_MSG      ?= Update VULCANO page
GIT_REMOTE      ?= gitea
GIT_BRANCH      ?= main

FTP_LOCAL_DIR   ?= public
# `override`: el destino es intrínseco a este repo (evita que un
# FTP_REMOTE_PATH heredado del shell desvíe el deploy a otro directorio).
override FTP_REMOTE_PATH := /vulcano.brisecom.org
FTP_DELETE      ?= 1

# --- makeit -----------------------------------------------------------------
include $(MAKEIT)/makeit.mk
include $(MAKEIT)/modules/ftp.mk
include $(MAKEIT)/modules/git.mk

# =============================================================================
##@ Proyecto
# =============================================================================

.PHONY: deploy
deploy: ftp-upload ## Publica public/ en vulcano.brisecom.org por FTP

.PHONY: serve
serve: ## Previsualiza la página en http://localhost:4182
	@printf "$(C_CYAN)▶ http://localhost:4182$(C_RESET)\n"
	@python3 -m http.server 4182 --directory $(FTP_LOCAL_DIR)

.PHONY: push-all
push-all: ## Empuja a gitea y a github
	git push gitea main
	git push github main
