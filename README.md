# 捕鱼

运行步骤:

1.下载源码:

    git clone https://github.com/jiy1012/fish

2.编译:
    make build
   
3.配置nginx:
```
    server {
        listen       80;
        server_name  fish.com;
        charset utf8;
        index index.html index.htm;
        location /qq {
            add_header Access-Control-Allow-Origin *;
            proxy_set_header X-Target $request_uri;
            proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
            proxy_pass http://127.0.0.1:9000;
        }
        location / {
            root ~/Project/fish/client/fish;
            add_header Access-Control-Allow-Origin *;
            expires 7d;
        }
    }
```
     配置文件位置 /common/conf 内含redis配置和qq第三方登录配置，请自行修改。


License

This project is released under the terms of the MIT license. See [LICENSE](LICENSE) for more
information or see https://opensource.org/licenses/MIT.