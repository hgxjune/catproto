# catproto

#### 介绍
小猫通讯协议 protobuf 文件，提供客户端 ts 解析。

```
catsvr、 catcli、 catproto 需在同一目录。
 cat
  |
  +-- catsvr
  |
  +-- catcli
  |
  +-- catproto
```


#### 安装教程

1.  TypeScript 环境
    ```sh
    > npm install -g protobufjs@6.11.3
    > npm install -g @egret/protobuf
    > script/init.bat
    ```


#### 使用说明

1.  配置 script/typescript.bat 内 CATCLI_ROOT 根目录
2.  执行 script/typescript.bat，js 文件在 ./bin/libs 内，d.ts 在 ./libs 内
3.  在 bin/index.js 内引入
    ```typescript
    // 导入 protobuf 库
    loadLib("libs/protobuf-library.js")
    loadLib("libs/protobuf-bundles.js")
    ```
4.  示例
    ```typescript
    let serverInfo = proto.CS_server_info.create();
    let bin = proto.CS_server_info.encode(serverInfo).finish();
    socket.send("login", "CS_server_info", bin);
    ```

- 服务端： https://gitee.com/tercero/catsvr
- 客户端： https://gitee.com/tercero/catcli
- 协议： https://gitee.com/tercero/catproto


#### 其他

请原谅一个起名无能的人养了猫。
