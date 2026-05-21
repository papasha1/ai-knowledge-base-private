# 个人知识库

> 长期积累的个人知识体系，跨项目、跨 AI 工具通用。

---

## 快速导航

- `_index.md` — 索引 & 自评（一个文件搞定，直接改 emoji）
- `tools/QUICK_ENTRY.md` — 快速录入模板（最简 3 字段就能记一条）
- `tools/backup.bat` — 一键备份

## 怎么用

**日常：** 不用管，AI 在对话中遇到重要知识会自动记录。

**复习：** 打开 `_index.md`，扫记忆点列。想不起来的点链接看详情，看完更新"上次复习"日期。掌握程度不对的顺手改 emoji。

**录入：** 想手动记一条，复制 `tools/QUICK_ENTRY.md` 里的模板，填到对应文件。

**备份：** 双击 `tools/backup.bat`，或等 AI 提醒。

## 知识库结构

```
D:/PrivateKnowledgeArchive/
├── README.md              # 规则
├── _index.md              # 索引 & 自评
│
├── tech/embedded/         # 嵌入式知识
├── tools/                 # 工具
│   ├── QUICK_ENTRY.md     #   快速录入模板
│   └── backup.bat         #   一键备份
└── other/                 # 其他（随时扩展）
```

## 每条知识的标准格式

```markdown
## 知识标题

**记忆点：** 一句话口诀，回忆时最先想到的那句

**掌握程度：** 
  🔴 只是知道概念（优先学习）
  🟡 理解原理，实操过一两次（需要练习）
  🟢 多次实操，能独立解决问题（已掌握）

**场景：** 什么情况下遇到的

**原理：** 通俗解释，专有名词保留但紧跟解释

**代码：** `项目路径/文件:行号`

**关联：** [相关条目](文件.md#标题)

**来源：** 项目名，日期
```

**要求：**
- 专有名词保留，但紧跟通俗解释
- 必须让非专业人士能看懂
- 不确定标"（待验证）"，绝不编造
- **关联必须用 markdown 链接**，格式 `[标题](文件.md#锚点)`，创建时就写好，不要写成纯文字

## 什么时候记录

1. AI 主动判断：出现重要原理时主动记录
2. 用户要求：说"记一下"、"这个重要"时立即记录
3. 踩坑经验：解决 bug 后记录原因和方法

## 提醒复习

AI 不定时提醒查看知识库，自然不啰嗦。

## 备份

双击 `tools/backup.bat` 即可备份，备份文件存放在 `D:\PrivateKnowledgeArchiveBackups\`。
AI 会不定期提醒你备份。

## 定期整理

建议每月整理一次：合并重复、删除过时、补充新理解、更新掌握程度、更新索引。

---

## 各 AI 工具接入

通用规则见 `AI_KNOWLEDGE_RULES.md`，按以下方式接入：

- **Claude Code**：`~/.claude/CLAUDE.md` 已配置，自动生效
- **Cursor**：项目根目录放 `.cursorrules`，粘贴 `AI_KNOWLEDGE_RULES.md` 内容
- **ChatGPT**：Settings → Custom Instructions → 粘贴 `AI_KNOWLEDGE_RULES.md` 内容
- **Copilot**：项目放 `.github/copilot-instructions.md`，粘贴 `AI_KNOWLEDGE_RULES.md` 内容
