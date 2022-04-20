# Copyright (C) 2020 The Proton AOSP Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

PXOSP_BUILD_DATE := $(shell date -u +%Y%m%d-%H%M)
PXOSP_VERSION := 12.0.0
PXOSP_BUILD_TYPE ?= VANILLA

ifeq ($(WITH_GMS), true)
    PXOSP_BUILD_TYPE := GAPPS
endif

ADDITIONAL_SYSTEM_PROPERTIES += \
    ro.build.date.pxosp=$(PXOSP_BUILD_DATE) \
    ro.build.version.pxosp=$(PXOSP_VERSION) \
    ro.build.type.pxop=$(PXOSP_BUILD_TYPE)
