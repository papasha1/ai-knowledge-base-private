# 开发工具

---

## PlatformIO

**记忆点：** 一个配置文件管编译、库、调试，比 Keil 省事。

**掌握程度：** 🟡 基本会用，未深入高级功能

### include 路径规则

- `src/` 可访问 `src/` 和 `include/`
- `lib/xxx/` 可访问自己和同级 `lib/` 目录
- `include/` 全局可见
- 跨目录引用：共享头文件放 `include/`，加 `build_flags = -I include`

### 头文件冲突（大小写不敏感）

Windows/macOS 不区分大小写，`vl53l0x.h` 和 `VL53L0X.h` 会被视为同一个文件。Linux 区分。自己写的文件加后缀如 `_drv` 避免冲突。

### USB CDC 串口

STM32 没有板载 USB 转串口，但可以用 USB 虚拟串口（CDC）。在 `platformio.ini` 加：
```
build_flags = -D USBCON -D USBD_USE_CDC
```
之后 `Serial` 走 USB 口，直接用 USB 线就能看串口输出。

**代码：** `FeedBowlForA/platformio.ini`

**关联：** [HAL](basics.md#硬件抽象层hal)

**来源：** FeedBowlForA，2026-05-20
