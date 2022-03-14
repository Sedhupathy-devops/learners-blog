#!/bin/bash
HTML="${HTML}<!DOCTYPE html><html><head><meta charset=\"utf-8\"><meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\"><title>Learner's Blog</title><meta name=\"viewport\" content=\"width=device-width, initial-scale=1\"><!-- Font awesome icon --><link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css\" integrity=\"sha512-+4zCK9k+qNFUR5X+cKL9EIR+ZOhtIloNl9GIKS57V1MyNsYpYcUrUeQc9vNfzsWfV28IaLL3i96P9sdNyeRssA==\" crossorigin=\"anonymous\" /><link rel=\"stylesheet\" href=\"style.css\"></head>\n"
HTML="${HTML}<body><header><nav class = \"navbar\">\n<div class = \"container\">\n\n<a href = \"index.html\" class = \"navbar-brand\">Learner's Blog</a>\n<div class = \"navbar-nav\">\n\n<a href = \"#\">home</a>\n\n<a href = \"linux.html\">Linux</a>\n\n<a href = \"web.html\">Web</a>\n\n<a href = \"\">about</a></div></div></nav>\n"
HTML="${HTML}\n<div class = \"banner\">\n<div class = \"container\">\n<h1 class = \"banner-title\">\n<span>Learner's</span> Blog</h1>\n<p>Learn everything from Linux to Full stack</p></div></div></header>"
HTML="${HTML}\n<section class = \"blog\" id = \"blog\">\n<div class = \"container\">\n<div class = \"title\"><h2>Latest Blog</h2>\n<p>Recent blogs on tech stacks</p></div>\n<div class = \"blog-content\">"
LINUX_BLOGS=$(ls pages)
for i in ${LINUX_BLOGS}; do
if [[ $( echo $i| grep "linux"|wc -l ) == 1 ]];then
    HTML="${HTML}\n<div class = \"blog-item\">\n<div class = \"blog-img\"><img src = \"images/linux.jpg\" alt = \"\">\n<span><i class = \"far fa-heart\"></i></span></div>\n<div class = \"blog-text\"><h2>"$(echo $i | sed 's/linux.html/ /g'| sed 's/-/ /g')"</h2>\n\n\n<a href = "pages/$i">Read More</a></div></div>\n"
else
HTML="${HTML}\n<div class = \"blog-item\">\n<div class = \"blog-img\"><img src = \"images/web-1.jpg\" alt = \"\">\n<span><i class = \"far fa-heart\"></i></span></div>\n<div class = \"blog-text\"><h2>"$(echo $i | sed 's/web.html/ /g'|sed 's/-/ /g')"</h2>\n\n\n<a href = "pages/$i">Read More</a></div></div>\n"
fi
done
HTML="${HTML}</div></div></section>\n<section class = \"about\" id = \"about\">\n<div class = \"container\">\n<div class = \"about-content\"><div>\n<img style=\"border-radius: 50%; width:60%;\" src = \"images/about-bg.jpg\" alt = \"\"></div>\n<div class = \"about-text\">\n<div class = \"title\"><h2>Sedhupathy</h2>\n<p>Learners blog</p></div>\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Id totam voluptatem saepe eius ipsum nam provident sapiente, natus et vel eligendi laboriosam odit eos temporibus impedit veritatis ut, illo deserunt illum voluptate quis beatae quod. Necessitatibus provident dicta consectetur labore!</p>\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ipsam corrupti natus, eos quia recusandae voluptatem veniam modi officiis minima provident rem sint porro fuga quos tempora ea suscipit vero velit sed laudantium eaque necessitatibus maxime!</p>\n</div></div></div></section>\n"
HTML="${HTML}<footer>\n<div class = \"social-links\">\n\n<a href = \"#\"><i class = \"fab fa-facebook-f\"></i></a>\n\n<a href = \"#\"><i class = \"fab fa-twitter\"></i></a>\n\n<a href = \"#\"><i class = \"fab fa-instagram\"></i></a>\n\n<a href = \"#\"><i class = \"fab fa-pinterest\"></i></a></div>\n<span>Learners Blog Page</span></footer></body></html>\n"
echo -e "${HTML}" >index.html