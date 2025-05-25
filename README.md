# 马克22的Godot中文教程项目

## 项目概述

这是一个基于Godot 4.4引擎开发的2D游戏项目，作为中文教程的示例代码。项目实现了一个简单的2D平台动作游戏，包含玩家角色、敌人和基本的游戏机制。

## 项目结构

```
├── .godot              # Godot引擎配置文件
├── .vscode             # VSCode编辑器配置
├── AssetBundle         # 游戏资源文件
│   ├── 字体资源
│   ├── 音频资源
│   └── 图像资源
├── Script              # 独立脚本文件
│   └── player.gd       # 玩家控制脚本
├── tscn_scence         # 场景文件
│   ├── Enemy_Slimer.tscn  # 敌人场景
│   ├── Game.tscn          # 主游戏场景
│   └── Player.tscn        # 玩家场景
├── icon.svg            # 项目图标
└── project.godot       # 项目配置文件
```

## 游戏特性

- 2D平台动作游戏
- 玩家角色控制系统
- 敌人AI行为
- 音效和背景音乐
- 像素风格的美术资源

## 主要场景

### 游戏场景 (Game.tscn)
主游戏场景，包含游戏的主要逻辑和对象管理。

### 玩家场景 (Player.tscn)
玩家角色场景，包含玩家的移动、跳跃和攻击等功能。

### 敌人场景 (Enemy_Slimer.tscn)
敌人"Slimer"的场景，包含敌人的AI行为和交互逻辑。

## 资源文件

### 图像资源
- `ForestBackground.png`: 森林背景
- `Foxy.png`: 玩家角色精灵图
- `Slimer.png`: 敌人精灵图
- `SlimerDeath.png`: 敌人死亡动画
- `Bullet.png`: 子弹图像

### 音频资源
- `BGM.ogg`: 背景音乐
- `EnemyDeath.mp3`: 敌人死亡音效
- `GameOver.mp3`: 游戏结束音效
- `Gun.mp3`: 射击音效
- `Running.mp3`: 奔跑音效

### 字体资源
- `Uranus_Pixel_11Px.ttf`: 像素风格字体

## 如何运行

1. 安装Godot 4.4或更高版本
2. 克隆或下载本项目
3. 使用Godot引擎打开项目文件夹
4. 点击"运行"按钮或按F5启动游戏

## 控制方式

- 方向键: 移动角色
- 空格键: 跳跃
- Z键: 攻击/射击

## 学习资源

本项目是马克22的Godot中文教程的配套代码，通过学习本项目可以了解:

1. Godot引擎的基本使用
2. 2D游戏开发的核心概念
3. GDScript脚本编程
4. 游戏场景和节点的组织方式
5. 游戏资源的管理和使用

## 开发环境

- Godot 4.4
- GDScript
- VSCode (可选)

## 许可证

本项目中的代码采用MIT许可证。
项目中使用的资源文件可能有各自的许可条款，详见AssetBundle目录中的README文件。

---

*本README文档 by Huancke*
