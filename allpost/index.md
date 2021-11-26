---
layout: default
---

<html>
    <head> 
            <meta charset = 'utf-8'/>
            <h1> All Post </h1>
            <style>
                .post-style{
                    background: black;
                    width : 80%;
                    color : white;
                    padding : 10px;
                    text-align : start;
                    font-weight: bold;
                    }
                a[href]{
                    color : yellowgreen;
                    }
            </style>
    </head>
    <body>
        <br/><br/>
        {% for post in site.posts %} <div class = "post-style"> {% include postlist-item.html %} </div>  <br/> <br/>  {% endfor %}
    </body>
</html>
