## Dir是一个表示用于给出操作系统中目录中的文件名的目录流。Dir类也拥有与目录相关的操作，比如通配符文件名匹配、改变工作目录等



# 类方法

## Dir::chdir(path) # 改变当前目录

## Dir::delete(path) # 删除path指定的目录。目录必须是空的

## Dir::entries(path) # 返回一个数组，包含目录path中的文件名

## Dir::foreach(path){|f| ...} # 为path指定的目录中的每个文件执行一次块

## Dir::pwd # 返回当前目录

## Dir::mkdir(path[,mode = 0777]) #创建path指定的目录

## Dir::new(path), Dir::open(path), Dir::open(path){|dir|...}
### 返回path的新目录对象。如果open给出一个块，则新目录对象会传到该块，块会在终止前关闭目录对象。



## Dir::rmdir(path), Dir::unlink(path), Dir::delete(path), 删除path指定的目录。目录必须是空的


# 实例方法

