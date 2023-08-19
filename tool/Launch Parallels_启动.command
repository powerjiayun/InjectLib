#!/bin/sh

PDFM_DIR="/Applications/Parallels Desktop.app"
PDFM_DISP_DST="${PDFM_DIR}/Contents/MacOS/Parallels Service.app/Contents/MacOS/prl_disp_service"
PDFM_DISP_BCUP="${PDFM_DISP_DST}_backup"

sudo cp -f "${PDFM_DISP_BCUP}" "${PDFM_DISP_DST}"