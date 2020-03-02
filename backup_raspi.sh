#!/bin/bash
################################################################################
#                              Copy Backup image                               #
#                                                                              #
# This script will automate the steps for raspberry pi remote backup           #
#                                                                              #
#                                                                              #
# Change History                                                               #
# 02/25/2020  Donko Dimov   Original code.                                     #
#                                                                              #
#                                                                              #
#                                                                              #
#                                                                              #
################################################################################
################################################################################
################################################################################
#                                                                              #
#  Copyright (C) 2020 Donko Dimov                                              #
#                                                                              #
#                                                                              #
#  This program is free software; you can redistribute it and/or modify        #
#  it under the terms of the GNU General Public License as published by        #
#  the Free Software Foundation; either version 2 of the License, or           #
#  (at your option) any later version.                                         #
#                                                                              #
#  This program is distributed in the hope that it will be useful,             #
#  but WITHOUT ANY WARRANTY; without even the implied warranty of              #
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the               #
#  GNU General Public License for more details.                                #
#                                                                              #
#  You should have received a copy of the GNU General Public License           #
#  along with this program; if not, write to the Free Software                 #
#  Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA   #
#                                                                              #
################################################################################
################################################################################
################################################################################

## Var for filename
DEST_FILE="backup-$(date +%F_%R).img"

## Var for destination folder
DEST_FOLDER="/backup"

## Connect with ssh start to copy image of the full disk and save to local folder
ssh USER@IP-ADDRESS-RPI "sudo dd if=/dev/mmcblk0 bs=4M " | dd of=$DEST_FOLDER/$DEST_FILE
