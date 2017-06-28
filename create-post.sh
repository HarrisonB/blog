#!/bin/bash

if [ "$#" -ne 1 ] ; then
  echo "Usage: $0 <title>" >&2
  exit 1
fi


title=`echo "$1" |sed 's/ /-/g'`
fileName="_posts/`date +%Y-%m-%d-$title.markdown`"

touch $fileName

cat > $fileName <<DELIM
---
layout: post
title: "$1"
date:  `date "+%Y-%m-%d %H:%M:%S"`
excerpt_separator: <!--more-->
categories:
---

Intro Paragraph

<!--more-->

## Foci
### Blogging
### Drawing
### Learning German
### Exercise
### Cooking

---
Footnotes

DELIM

nvim $fileName +9
