#!/bin/bash
HTMLLINUX="${HTMLLINUX}<!DOCTYPE html><html><head><title>linux</title><meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n<link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css\" integrity=\"sha512-+4zCK9k+qNFUR5X+cKL9EIR+ZOhtIloNl9GIKS57V1MyNsYpYcUrUeQc9vNfzsWfV28IaLL3i96P9sdNyeRssA==\" crossorigin=\"anonymous\" />\n<link rel=\"stylesheet\" href=\"style.css\"><style>.linux-blog{color:black;padding-top: 20px;padding-left: 30px;}</style></head><body style=\"background-color:white;\">\n<header class=\"linux-main\">\n<nav class = \"navbar\">\n<div class = \"container\">\n<a href = \"index.html\" class = \"navbar-brand\">Learner's Blog</a>\n<div class = \"navbar-nav\">\n<a href = \"index.html\">home</a>\n<a href = \"linux.html\">Linux</a>\n<a href = \"web.html\">Web</a>\n<a href = \"\">about</a></div></div></nav></header>"
HTMLLINUX="${HTMLLINUX}\n<div class=\"linux-blog\">"
    LINUX_BLOGS=$(ls pages)
    for i in ${LINUX_BLOGS}; do
    if [[ $( echo $i| grep "linux"|wc -l ) == 1 ]];then
    HTMLLINUX="${HTMLLINUX}\n<h1>"$(echo $i | sed 's/linux.html/ /g'| sed 's/-/ /g')"</h1><img src=\"images/linux-one.jpg\" class=\"linux_image\"/><p class=\"para-content\"> \n<a href="pages/$i">Click here to read more</a> </p>"
fi
done
HTMLLINUX="${HTMLLINUX}</div></body></html>"
echo -e "${HTMLLINUX}">linux.html
