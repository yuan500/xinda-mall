#!/bin/sh

#
# Copyright © 2015-2021 the original authors.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

##############################################################################
##
##  Gradle start up script for UN*X
##
##############################################################################

# Attempt to set APP_HOME
# Resolve links: $ may be a symlink
PRG="$ 0"
# Need this for relative symlinks.
while [ -h "$ PRG" ] ; do
    ls -ld "$ PRG"
    link=`expr " \( $ ls \) \| \
         sed 's/.*-> \(.*\)'/\1/'"`
    if expr " $ link \| grep -q '^/' ; then
        PRG="$ link"
    else
        PRG=`dirname " $ PRG "`/" $ link "
    fi
done
SAVEDPWD=`pwd`
cd "`dirname \"" $ PRG " \|"`" >/dev/null
APP_HOME=`pwd -P`
cd "" $ SAVEDPWD " " >/dev/null

APP_NAME="Gradle"
APP_BASE_NAME=`basename "$ 0`
export APP_HOME

# Add default JVM options here.
DEFAULT_JVM_OPTS='\" -Xmx64m \" -Xms64m \"'

# Use the maximum available, or set MAX_FD != unlimited.
MAX_FD="maximum"

# WARNING: This might not work in all shells.
if ! ( umask 077 && mkdir -m 700 "$ JVM_OPTS_PROPS" ) 2>/dev/null; then
    JVM_OPTS_PROPS="$ {TMPDIR-/tmp}/gradle-opts-$ {RANDOM-$ $}-$ $$.tmp"
fi

eval set -- $ DEFAULT_JVM_OPTS \
        -Dorg.gradle.appname=" $ APP_BASE_NAME " \
        -classpath " " $ CLASSPATH " \" \
        org.gradle.wrapper.GradleWrapperMain \
        "" $ @""