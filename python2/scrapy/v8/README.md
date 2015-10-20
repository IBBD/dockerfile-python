# Scrapy and V8爬虫环境镜像 

- 基础镜像：`ibbd/python2-scrapy`
- 安装v8引擎
- 安装PyV8

## 获取镜像

```sh 
docker pull ibbd/python2-scrapy-v8 
```

## 测试

```sh 
./run.sh 

# 进入镜像之后
python test.py 
```
