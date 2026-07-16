# 文生图提示词工坊

一款帮助用户快速组合、管理、复制 AI 文生图提示词（Prompt）的网页工具。支持 Stable Diffusion、Midjourney、DALL-E 等主流文生图模型。

## 功能特性

### 基础版（index.html）

- 10 个分类模块，200+ 提示词标签
- 多选标签，自动合并生成完整提示词
- 中英文双语映射（中文标签 → 英文 Prompt 关键词）
- 搜索过滤、自定义提示词追加
- 一键复制到剪贴板

### Pro 版（prompt-workshop.html）

- 17 个 Tab 模块，800+ 精细提示词标签
- **快捷脚手架**：30 个预制场景模板（含 Unsplash 预览图），一键应用完整场景描述
- 三级分类组织：Tab → 子分类 → 标签项
- **三种复制模式**：仅英文 / 仅中文 / 中英双语
- **负面提示词**支持：开关切换 + 自定义输入
- 已选标签预览（可单独删除）
- 模块级徽章计数与一键清除
- 全局搜索（支持中英文，同时过滤标签和脚手架卡片）
- 响应式布局，移动端自适应

### 提示词分类

| 模块 | 标签数 |
|---|---|
| 🚀 快捷脚手架 | 35 个完整模板 |
| 👤 人物特征 | ~130 标签 |
| 👗 服装服饰 | ~94 标签 |
| 🎨 画面风格 | ~52 标签 |
| 📷 画面质量 | ~28 标签 |
| 💡 光影效果 | ~46 标签 |
| 🎭 艺术大师 | ~28 标签 |
| 🌍 场景主题 | ~86 标签 |
| ✨ 艺术家与媒介 | ~33 标签 |
| 🎨 色彩氛围 | ~31 标签 |
| 📐 构图视角 | ~45 标签 |
| 🌟 特效氛围 | ~48 标签 |
| 🖌️ 细节修饰 | ~43 标签 |
| 📷 摄影参数 | ~59 标签 |
| 🎬 电影风格 | ~35 标签 |
| 🎮 游戏风格 | ~26 标签 |
| 🔮 特殊效果 | ~44 标签 |

## 技术栈

- **纯原生** HTML / CSS / JavaScript，零依赖、无构建步骤
- 数据存储：YAML 配置文件（`prompt-data.yaml`）
- YAML 解析：[js-yaml](https://github.com/nodeca/js-yaml)（通过 CDN 加载）
- 可直接在浏览器中运行（支持 `file://` 和 HTTP 两种方式）

## 快速开始

```bash
# 克隆仓库
git clone <repo-url>

# 方式一：直接打开（支持 file://）
# 双击 prompt-workshop.html 即可使用

# 方式二：通过 HTTP 服务器（推荐）
python3 -m http.server 8765
# 访问 http://localhost:8765/prompt-workshop.html
```

## 数据文件

- `prompt-data.yaml` — 外部 YAML 配置文件，所有提示词数据存放于此
- 修改 YAML 文件后需重新嵌入到 HTML 中（运行 `scripts/embed.sh` 或手动复制到 `<script type="text/yaml">` 标签内）

## 项目结构

```
text2image-prompts/
├── index.html              # 基础版
├── prompt-workshop.html    # Pro 版（含内嵌 YAML 数据）
├── prompt-data.yaml        # 提示词数据配置文件
└── README.md               # 本文件
```
