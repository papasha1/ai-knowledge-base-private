# 开源规划

> 目标：把个人知识库做成开源项目，让任何人复制一份就能用。

---

## 现状

已有的框架层（可直接复用）：
- README.md — 使用规则
- AI_KNOWLEDGE_RULES.md — AI 工具通用规则
- _index.md — 索引模板
- QUICK_ENTRY.md — 录入模板
- backup.bat — 备份工具
- 知识条目标准格式（记忆点 + 掌握 + 场景 + 原理 + 关联 + 来源）

需要处理的内容层：
- tech/embedded/ 下 9 条个人知识（需替换为通用示例）
- 路径硬编码为 `D:\PrivateKnowledgeArchive`（需改为变量或相对路径）

---

## 待办

### 第一步：模板仓库整理

- [ ] `D:\模板\knowledge_base\` 作为开源仓库根目录
- [ ] 删除 tech/embedded/ 下的个人知识
- [ ] 添加 2-3 条跨领域示例（如：技术概念、生活常识、语言学习），展示格式怎么用
- [ ] 路径改为变量 `$KNOWLEDGE_BASE` 或提示用户自定义

### 第二步：README 完善

- [ ] 开头说明：这是什么、解决什么问题、和普通笔记的区别
- [ ] 核心卖点：AI 自动记录 + 跨工具通用 + 自评复习机制
- [ ] 快速开始：3 分钟上手步骤
- [ ] 截图：_index.md 效果、AI 记录过程、QUICK_ENTRY 模板
- [ ] 目录结构说明

### 第三步：AI 规则独立说明

- [ ] AI_KNOWLEDGE_RULES.md 作为独立卖点单独介绍
- [ ] 说明各工具接入方式和差异（Claude Code 有记忆 vs ChatGPT 无记忆）
- [ ] 提供各工具的配置文件示例（.cursorrules、copilot-instructions.md）

### 第四步：Git 初始化

- [ ] `git init` 在模板目录
- [ ] .gitignore（排除 backup_exclude.txt、.py 脚本等）
- [ ] 首次提交：框架 + 示例
- [ ] 推送到 GitHub/Gitee

### 第五步：可选增强

- [ ] 多语言 README（英文版）
- [ ] GitHub Pages 或简单网站展示
- [ ] 贡献指南（CONTRIBUTING.md）
- [ ] Issue 模板：提交新领域知识、报告问题

---

## 定位

不是又一个笔记模板，而是"让 AI 帮你积累知识"的工作流。

区别：
- 普通笔记：人写人看，容易忘
- 这套方案：AI 自动记录、带记忆点、有复习机制、跨工具同步
