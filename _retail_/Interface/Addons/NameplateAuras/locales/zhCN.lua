local L = LibStub("AceLocale-3.0"):NewLocale("NameplateAuras", "zhCN"); -- luacheck: ignore
L = L or {} -- luacheck: ignore
--@non-debug@
L["< 1min"] = "小于1分钟"
L["< 5sec"] = "小于5秒钟"
L["> 1min"] = "大于1分钟"
L["Add spell"] = "添加法术"
L["Always show auras cast by myself"] = "始终显示自己释放的光环"
L["Anchor point"] = "锚点"
L["Anchor to icon"] = "锚定到图标"
L["anchor-point:bottom"] = "下"
L["anchor-point:bottomleft"] = "左下"
L["anchor-point:bottomright"] = "右下"
L["anchor-point:center"] = "中心"
L["anchor-point:left"] = "左"
L["anchor-point:right"] = "右"
L["anchor-point:top"] = "上"
L["anchor-point:topleft"] = "左上"
L["anchor-point:topright"] = "右上"
L["Any"] = "任意"
L["Aura type"] = "光环类型"
L["Border thickness"] = "边框粗细"
L["Buff"] = "增益"
L["Check spell ID"] = "检查法术ID (逗号分隔)"
L["Click to select spell"] = "单击选择法术"
L["Curse"] = "诅咒"
L["Debuff"] = "减益"
L["Delete all spells"] = "删除所有法术"
L["Delete spell"] = "删除法术"
L["Disabled"] = "关闭"
L["Disease"] = "疾病"
L["Display auras on nameplates of friendly units"] = "在友方姓名板上显示光环"
L["Display auras on player's nameplate"] = "在玩家姓名板上显示光环"
L["Do you really want to delete ALL spells?"] = "你真的想要删除所有法术吗?"
L["Font"] = "字体"
L["Font scale"] = "字体缩放"
L["Font size"] = "字体大小"
L["General"] = "综合"
L["Icon borders"] = "图标边框"
L["Icon X-coord offset"] = "图标横向位移"
L["Icon Y-coord offset"] = "图标纵向位移"
L["icon-grow-direction:down"] = "向下"
L["icon-grow-direction:left"] = "向左"
L["icon-grow-direction:right"] = "向右"
L["icon-grow-direction:up"] = "向上"
L["icon-sort-mode:by-aura-type+by-expire-time"] = "按光环类型+到期时间"
L["icon-sort-mode:by-expire-time"] = "按到期时间"
L["icon-sort-mode:by-icon-size"] = "按图标大小"
L["icon-sort-mode:custom"] = "自定义"
L["icon-sort-mode:none"] = "没有排序"
--[[Translation missing --]]
L["instance-type:arena"] = "Arenas"
--[[Translation missing --]]
L["instance-type:none"] = "Open World"
--[[Translation missing --]]
L["instance-type:party"] = "5ppl dungeons"
--[[Translation missing --]]
L["instance-type:pvp"] = "Battlegrounds"
--[[Translation missing --]]
L["instance-type:raid"] = "Raid dungeons"
--[[Translation missing --]]
L["instance-type:scenario"] = "Scenarios"
--[[Translation missing --]]
L["instance-type:unknown"] = "Unknown dungeons (some quest scenarios)"
L["Magic"] = "魔法"
L["Options are not available in combat!"] = "选项在战斗中不可用!"
L["options:alpha:alpha"] = "图标透明度（不包括目标姓名板）"
L["options:alpha:alpha-target"] = "图标透明度（目标姓名板）"
L["options:alpha:use-target-alpha-if-not-target-selected"] = "如果没有选择目标，使用目标的透明度显示光环。"
L["options:animation-type:ICON_ANIMATION_TYPE_ALPHA"] = "透明度"
L["options:apps:dispellable-spells"] = "在敌方姓名板上显示可驱散/可偷取的光环"
L["options:apps:dispellable-spells:black-list-button"] = "打开黑名单"
L["options:apps:dispellable-spells:tooltip"] = "在敌方姓名板上显示可驱散/可偷取的光环，这些光环边缘微亮并且是默认大小"
L["options:apps:dr"] = "启用收益递减显示 (beta)"
L["options:apps:dr:pve"] = "PvE（仅限眩晕）"
L["options:apps:dr:pvp"] = "PvP"
L["options:apps:explosive-orbs:tooltip"] = [=[在邪能爆炸球的姓名版上方显示一个特殊光环（大秘境易爆词缀）

这个光环将会发亮并且是默认大小]=]
L["options:apps:spiteful"] = "高亮显示怨毒（怨毒大秘境词缀）"
L["options:auras:enabled-state:tooltip"] = [=[%s：不显示光环
%s：如果是你施放的法术则显示光环
%s：显示全部光环]=]
L["options:auras:enabled-state-all"] = "开启，显示全部光环"
L["options:auras:enabled-state-mineonly"] = "打开,仅显示我的光环"
L["options:auras:show-on-npcs"] = "仅在NPC上显示这个光环"
L["options:auras:show-on-npcs-and-players"] = "在玩家和NPC上显示这个光环"
L["options:auras:show-on-players"] = "仅在玩家上显示这个光环"
L["options:borders:BORDER_TYPE_BUILTIN"] = "内置"
L["options:borders:BORDER_TYPE_CUSTOM"] = "自定义"
L["options:borders:border-file-path"] = "边框材质文件路径 (始于 'Interface\\')"
L["options:borders:border-type"] = "边框类型"
L["options:category:alpha"] = "透明度"
L["options:category:apps"] = "附加 功能"
L["options:category:dispel"] = "净化/偷取"
L["options:category:interrupts"] = "打断"
L["options:category:size-and-position"] = "大小和位置"
L["options:general:always-show-my-auras:tooltip"] = "这是最高级的过滤器。如果你开启了这个功能，你的光环显示设置将无视其他过滤器的设置。"
L["options:general:full-opacity-always"] = "图标始终完全不透明"
L["options:general:hide-blizz-frames"] = "隐藏暴雪的光环框架（除玩家外）"
L["options:general:hide-player-blizz-frame"] = "隐藏暴雪的光环框架（玩家）"
L["options:general:icon-grow-direction"] = "图标增长方向"
--[[Translation missing --]]
L["options:general:instance-types"] = [=[Set the visibility of the cooldowns
in different types of locations]=]
L["options:general:show-aura-tooltip"] = "当鼠标在光环图标上悬停时显示光环名称"
L["options:general:show-cooldown-animation"] = "显示冷却动画"
L["options:general:show-cooldown-text"] = "显示光环的剩余时间"
L["options:general:show-on-target-only"] = "仅在目标姓名板上显示光环"
L["options:general:show-stacks"] = "显示光环的层数"
L["options:general:test-mode"] = "测试模式"
L["options:glow-type"] = "发光类型"
L["options:glow-type:GLOW_TYPE_ACTIONBUTTON"] = "动作条按钮"
L["options:glow-type:GLOW_TYPE_ACTIONBUTTON_DIM"] = "动作条按钮(暗光)"
L["options:glow-type:GLOW_TYPE_AUTOUSE"] = "自动使用按钮"
L["options:glow-type:GLOW_TYPE_NONE"] = "无"
L["options:glow-type:GLOW_TYPE_PIXEL"] = "像素"
L["options:interrupts:enable-interrupts"] = "开启打断监视"
L["options:interrupts:enable-only-during-pvp-battles"] = "只在PvP战斗中开启"
L["options:interrupts:use-shared-icon-texture"] = "在打断法术上使用同样的材质"
L["options:size-and-position:anchor-point-of-frame"] = "锚点指向图标组"
L["options:size-and-position:anchor-point-of-frame:tooltip"] = "“图标组”是每个姓名板的图标集合"
L["options:size-and-position:anchor-point-to-nameplate"] = "锚点指向姓名板"
L["options:size-and-position:custom-sorting:tooltip"] = [=[规则：
- 代码必须是带有2个参数的匿名函数。这些参数是表(tables)，代表要比较的光环
- 如果要将第一个光环放在第二个光环之前，此函数必须返回 'true'，反之亦然
- 排序相当频繁，所以不要把排序函数写的太复杂
- 不要修改光环表(table)的内容，除非你真的知道自己在做什么
- 仔细检查从陌生人那里获得的任何代码
光环表(table)内容：
- .duration - 光环持续时间，以秒为单位。如果光环是永久的，此字段的值为0。(type: number)
- .expires - 光环结束时间。你可以将其与 GetTime() 进行比较。如果光环是永久的，此字段的值为0。(type: number)
- .stacks - 堆叠层数 (type: number)
- .spellID - 光环ID (type: number)
- .spellName - 光环名称 (type: string)
内置排序函数：
- sort_time(aura1, aura2) - 按光环剩余时间排序
- sort_size(aura1, aura2) - 按图标大小排序]=]
L["options:size-and-position:icon-align"] = "图标对齐"
L["options:size-and-position:icon-align:bottom-left"] = "水平: 底部 / 垂直: 左侧"
L["options:size-and-position:icon-align:center"] = "中心"
L["options:size-and-position:icon-align:top-right"] = "水平: 顶部 / 垂直: 右侧"
L["options:size-and-position:icon-height"] = "默认图标高度"
L["options:size-and-position:icon-width"] = "默认图标宽度"
L["options:size-and-position:icon-zoom"] = "图标缩放"
L["options:size-and-position:keep-aspect-ratio"] = "保持材质的宽高比"
L["options:size-and-position:keep-aspect-ratio:tooltip"] = "如果选中此选项，并且图标的宽度和高度不相等，则将裁剪法术材质以保持原始图像比例"
L["options:size-and-position:non-target-strata"] = "非目标姓名板上的图标层"
L["options:size-and-position:scale-target"] = "目标姓名板图标缩放"
L["options:size-and-position:target-strata"] = "目标姓名板上的图标层"
L["options:spells:add-new-spell"] = "点击添加新的法术"
L["options:spells:animation-relative:tooltip"] = "这个选项改变了左边滑块的含义。如果勾选了这个选项，当光环的剩余时间小于其最大持续时间的选择百分比时，开始动画。这很有用，例如，如果你想知道什么时候可以安全地刷新你的DoT法术而不损失时间。如果不勾选这个选项，当光环的剩余时间小于滑块的绝对值（秒）时，开始动画。"
L["options:spells:animation-type"] = "动画类型"
L["options:spells:appropriate-spell-ids"] = "适合的法术ID:"
L["options:spells:disable-all-spells"] = "禁用所有法术"
L["options:spells:enable-all-spells"] = "启用所有法术"
L["options:spells:glow-relative"] = "使用相对时间"
L["options:spells:glow-relative:tooltip"] = "这个选项改变了左边滑块的含义。如果勾选了这个选项，当光环的剩余时间小于其最大持续时间的选择百分比时，就会发光。这很有用，例如，如果你想知道什么时候可以安全地刷新你的DoT法术而不损失时间。如果不勾选这个选项，当光环的剩余时间小于滑块的绝对值（秒）时，就会发光。"
L["options:spells:icon-animation"] = "图标动画"
L["options:spells:icon-animation-always"] = "总是显示动画"
L["options:spells:icon-animation-threshold"] = "如果光环的剩余时间小于...显示动画"
L["options:spells:icon-glow"] = "显示发光"
L["options:spells:icon-glow-always"] = "总是显示发光"
L["options:spells:icon-glow-threshold"] = "如果光环的剩余时间小于...显示发光"
L["options:spells:icon-height"] = "图标高度"
L["options:spells:icon-width"] = "图标宽度"
L["options:spells:please-push-once-more"] = "请再点击一次"
L["options:spells:show-on-friends:warning0"] = [=[请注意：除非你打开这个选项，否则你将不会在友方姓名板上看到这个光环：
<综合> --> <在友方姓名板上显示光环>]=]
L["options:timer-text:min-duration-to-display-tenths-of-seconds"] = "最小显示时间为零点一秒"
L["options:timer-text:scale-font-size"] = "根据图标大小缩放字体"
L["options:timer-text:text-color-note"] = "文字颜色随剩余时间改变:"
L["Other"] = "其他"
L["Please reload UI to apply changes"] = "请重新加载用户界面来应用更改"
L["Poison"] = "毒药"
L["Profiles"] = "配置文件"
L["Reload UI"] = "重新加载用户界面"
L["Show border around buff icons"] = "在增益图标周围显示边框"
L["Show border around debuff icons"] = "在减益图标周围显示边框"
L["Show this aura on nameplates of allies"] = "在盟友的姓名板上显示这个光环"
L["Show this aura on nameplates of enemies"] = "在敌人的姓名板上显示这个光环"
L["Sort mode:"] = "排序方式:"
L["Space between icons"] = "图标间距"
L["Spell seems to be nonexistent"] = "法术似乎不存在"
L["Spells"] = "法术"
L["Stack text"] = "堆叠文字"
L["Text color"] = "文字颜色"
L["Timer text"] = "计时器文字"
L["Value must be a number"] = "值必须是数字"
L["X offset"] = "横向位移"
L["Y offset"] = "纵向位移"

--@end-non-debug@
