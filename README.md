# Sofa Regsitry 测试Docker集群

## 构建镜像

```
docker build . -t sofa-registry:5.2.1
```

## 运行

> 启动集群

本地测试前会自动创建网段`10.1.1.0/24`作为registry工作网段

```
> ./bin/startup.sh
```

运行实例

| container | ip | configuration |
|:---:|:---:|:---:|
| registry1 | 10.1.1.2 | ./instance/1/conf | 
| registry2 | 10.1.1.3 | ./instance/2/conf |
| registry3 | 10.1.1.4 | ./instance/3/conf |

> 销毁集群

```
> ./bin/shutdown.sh
```




