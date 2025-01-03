#!/bin/bash

# *****************************************************************
# (C) Copyright IBM Corp. 2020, 2021. All Rights Reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# *****************************************************************

ARCH=`uname -p`
if [[ "${ARCH}" == 'ppc64le' ]]; then
    rust_env_arch=POWERPC64LE_UNKNOWN_LINUX_GNU
elif [[ "${ARCH}" == 's390x' ]]; then
    rust_env_arch=S390X_UNKNOWN_LINUX_GNU
else
    rust_env_arch=X86_64_UNKNOWN_LINUX_GNU
fi

unset CARGO_TARGET_${rust_env_arch}_LINKER
