# Oral
口腔医疗管理系统
![login](src\main\resources\admin\admin\src\assets\img\image.png)
## 环境搭建
python: `3.6.0`(由于本项目使用了较为古老的node-nass, 他需要python环境, 他已不再更新)  
java: `1.8`  
vue: `2.6.10`
npm:`13.14`
## 技术栈
前端：`Vue`  
后端：`Springboot`  
数据库：`Mysql`
制品仓库: `docker`
## tips!!
我原先将前端与后端全都部署到`spring-boot`内置的`Tomcat`服务器上  
如果你希望继续这个风格，你需要使用`npm`的打包命令  
```npm run build```  
然后更改生成的`dist`文件的地址  
## 前端项目地址
就在这个库的`src\main\resources\admin\admin`地址下
## 食用方式
- 使用docker一键部署:
  - 在项目根目录下``docker compose up -d``即可食用
- 前后端分离部署
  - 在db文件下将sql文件导入mysql
  - 依次执行命令``npm install`` ``npm run build``在前端项目地址
  - 在项目根目录下执行``mvn spring-boot:run``
