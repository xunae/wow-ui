--Neuron, a World of Warcraft® user interface addon.

--This file is part of Neuron.
--
--Neuron is free software: you can redistribute it and/or modify
--it under the terms of the GNU General Public License as published by
--the Free Software Foundation, either version 3 of the License, or
--(at your option) any later version.
--
--Neuron is distributed in the hope that it will be useful,
--but WITHOUT ANY WARRANTY; without even the implied warranty of
--MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
--GNU General Public License for more details.
--
--You should have received a copy of the GNU General Public License
--along with this add-on.  If not, see <https://www.gnu.org/licenses/>.
--
--Copyright for portions of Neuron are held by Connor Chenoweth,
--a.k.a Maul, 2014 as part of his original project, Ion. All other
--copyrights for Neuron are held by Britt Yazel, 2017-2020.

local L = LibStub("AceLocale-3.0"):NewLocale("Neuron", "zhCN", false)

if not L then return end

L["Action Bar"] = "动作条"
L["Action Data"] = "动作数据"
L["Add"] = "添加"
L["Add_Description"] = "向当前选择的动作条添加按钮"
L["Alpha"] = "透明度"
L["Alpha_Description"] = "改变当前动作条透明度"
L["AlphaUp"] = "提高透明度"
L["AlphaUp Speed"] = "提高透明度的速度"
L["AlphaUp_Description"] = "设置当前动作条'提高透明度'的条件"
L["Alt"] = "ALT键"
L["Alt Down"] = "按下ALT键"
L["Alt Up"] = "松开ALT键"
L["Apply"] = "应用"
L["Arc Length"] = "弧长"
L["Arc Start"] = "起弧值"
L["ArcLen"] = "弧长"
L["ArcLen_Description"] = "设置当前动作条的弧长(单位:角度)"
L["ArcStart"] = "弧度起始"
L["ArcStart_Description"] = "设置当前动作条的弧度起始位置(单位:角度)"
L["Assist"] = "协助"
L["Attach Point"] = "附加点"
L["Attack"] = "攻击"
L["AuraInd"] = "激活光环效果"
L["AuraInd_Description"] = "开启当前动作条上的按键激活光环效果"
L["AuraText"] = "光环文本"
L["AuraText_Description"] = "开启当前动作条的光环文本"
L["Auto Select"] = "自动选择"
L["AutoHide"] = "自动隐藏"
L["AutoHide_Description"] = "开启当前动作条自动隐藏"
L["Bag Bar"] = "背包条"
L["Bar Configuration"] = "配置动作条"
L["Bar Fill"] = "填充动作条"
L["Bar States"] = "动作条状态"
L["Bar Visibility Toggles"] = "切换动作条可视性"
L["Bar_Alpha_Instructions"] = "透明度必须在0和1之间"
L["Bar_ArcLength_Instructions"] = "弧长必须在0到359之间"
L["Bar_ArcStart_Instructions"] = "起弧值必须在0和359之间"
L["Bar_Column_Instructions"] = "为动作条列数输入一个大于0的数"
L["Bar_Configuration_FAQ"] = [=[
动作条编辑模式
想进入条形码编辑器，请左键单击 NEURON 图标或在聊天窗口中输入“/ neuron config”。成功进入编辑模式后，会显示所有隐藏的动作条（包括宠物条或额外动作条），将鼠标悬停在动作条时会突出显示动作条的名称。

要退出动作条编辑模式，请再次单击NEURON图标、输入命令行或按Esc键。 一旦离开编辑模式，任何设置为隐藏的动作条将再次消失。

动作条配置菜单
要打开动作条配置菜单，进入编辑械后右键单击任何动作条即可打开动作条配置菜单。 第一次打开菜单时，它将位于常规选项卡上。 如果它在关闭后再次打开，它将显示上次的选项卡位置。
]=]
L["Bar_Lock_Modifier_Instructions"] = [=[有效的mod键：

alt键：当按住<alt>键时解锁动作条
ctrl键：当按住<ctrl>键时解锁动作条
shift键：当按住<shift>键时解锁动作条]=]
L["Bar_Shapes_List"] = [=[1=线性
2=圆形
3=圆形 + 中心单键]=]
L["Bar_State_Configuration_FAQ"] = [=[
动作条状态列表

状态选项允许添加自定义状态和可见性设置到动作条。所选择的动作和姿态都可以在动作条上生效。添加状态选项将允许您设置自动触发状态。 默认的状态称为常规。

预设行动状态

页面：选择此项后，您可以设置6个不同的按键页面。在页面之间切换功能是通过游戏自带的按键来设置的。动作条的上一页和下一页翻页箭头在动作条的下部。
姿态：这个选项仅在当前角色有不同的姿势时才可使用。选择此项后，切换姿势后将改变显示的按键动作条。
宠物：当选择此项时，只要角色获得对宠物或随从的控制，您就可以使用这个动作条。

自定义动作条状态
Neuron允许您创建自己的自定义状态。这是通过输入所需的状态条件来完成的，用分号分隔。如果输入格式不正确，聊天窗口中将显示错误消息。建议在使用自定义状态时不要使用任何已经预置好动作状态。可以使用大多数默认游戏宏条件形成自定义操作状态，在条件的前面添加“no”以检查错误状态。即 [nocombat]

范例: [actionbar:1];[stance:1];[stance3,stealth];[mounted]

动作条可视性切换
这些选项允许您自定义何时显示或隐藏动作条。如果选项旁边有绿色标记，则在满足该条件时将显示该动作条。通过取消选择该选项，如果满足条件，则将隐藏该动作条。
]=]
L["Bar_Strata_List"] = [=[1=背景
2=低
3=中
4=高
5=对话框]=]
L["BarTypes"] = "动作条类型"
L["BarTypes_Description"] = "显示所有动作条类型列表"
L["Bind"] = "绑定按键"
L["Bind_Description"] = "开启按键绑定模式"
L["Bindings_Locked_Notice"] = [=[绑定的按键已锁定.
使用左键点击解锁.]=]
L["BindText"] = "绑定热键"
L["BindText_Description"] = "显示当前动作条绑定的热键"
L["BlizzUI"] = "暴雪UI"
L["BlizzUI_Description"] = "开启暴雪默认UI"
L["Border"] = "边框"
L["Bottom"] = "底部"
L["Bottom-Left"] = "左下"
L["Bottom-Right"] = "右下"
L["Bubbles"] = "气泡"
L["Buff/Debuff Aura Border"] = "Buff/Debuff 激活边框效果"
L["Buff/Debuff Aura Countdown"] = "Buff/Debuff 激活冷却效果"
L["Cancel"] = "取消"
L["Carpaint"] = "颜色"
L["Cast Bar"] = "施法条"
L["Cast Icon"] = "施法图标"
L["Caster Form"] = "施法形态"
L["CDAlpha"] = "冷却时按键透明"
L["CDAlpha_Description"] = "开启技能冷却时按键透明效果"
L["CDText"] = "冷却计时器"
L["CDText_Description"] = "开启当前动作条技能冷却计时器"
L["Center"] = "中心"
L["Center Text"] = "中间文本"
L["Changelog"] = "更新日志"
L["Changelog_Latest_Version"] = [=[更新日志：

Neuron 0.9.11 升级更新:

完全重写了本地化系统，以便在CurseForge框架内工作。 我们现在可以拥有众多语言翻译！
完全重建所有本地化字符串以遵守Ace3-Locale标准作为上述变化的新功能，我们完全重建/Neuron的功能，更好地利用Ace3-Console，使该系统更具可扩展性。]=]
L["Circle"] = "圆形"
L["Circle + One"] = "圆形 + 中心单键"
L["Click"] = "点击"
L["Click here to edit macro note"] = "单击此处编辑宏注释"
--[[Translation missing --]]
--[[ L["Close"] = ""--]] 
L["Columns"] = "列数"
L["Columns_Description"] = "设置当前动作条的列数(只在'多列'模式下有效)"
L["Combat"] = "战斗状态"
L["Combat + Mouseover"] = "战斗状态+鼠标滑过"
L["Command"] = "命令"
L["Command List"] = "命令列表"
L["Companion"] = "同伴"
L["Conceal"] = "隐藏"
L["Conceal_Description"] = "开启当前动作条显示与隐藏"
L["Config"] = "配置模式"
L["Config_Description"] = "开启配置模式"
--[[Translation missing --]]
--[[ L["Configure Bars"] = ""--]] 
--[[Translation missing --]]
--[[ L["Configure Buttons"] = ""--]] 
L["Confirm"] = "确认"
L["Contrast"] = "对比"
L["Control Down"] = "按下CTRL键"
L["Control Up"] = "松开CTRL键"
L["Cooldown Countdown"] = "冷却倒计时"
L["Cooldown Transparency"] = "冷却时的透明度"
L["Copy and Paste the text below"] = "复制并粘贴下面的文本"
L["Count"] = "次数"
L["CountText"] = "使用次数"
L["CountText_Description"] = "开启当前动作条施法/物品次数"
L["Create"] = "新建"
L["Create New Bar"] = "新建动作条"
L["Create_Description"] = "新建指定类型的空白动作条"
L["Ctrl"] = "CTRL键"
L["Current Level/Rank"] = "当前等级/官衔"
L["Current/Next"] = "当前/下一级"
L["Custom"] = "自定义动作"
L["Custom Action States"] = "自定义动作状态"
L["Custom Icon"] = "自定义图标"
L["Custom States"] = "自定义状态"
L["Custom_Option"] = "对于自定义状态，添加所需的状态字符串（/ neuron state custom <state string>），其中<state string>是以分号分隔的状态条件列表"
L["Default"] = "默认"
L["Default Alert"] = "默认警报"
L["Defensive"] = "防御性"
L["Delete"] = "删除"
L["Delete Current Bar"] = "删除当前动作条"
L["Delete_Description"] = "删除选定的动作条"
L["Dialog"] = "对话框"
L["Display button for specialization 1"] = "天赋1显示按键"
L["Display button for specialization 2"] = "天赋2显示按键"
L["Display button for specialization 3"] = "天赋3显示按键"
L["Display button for specialization 4"] = "天赋4显示按键"
L["Display Minimap Button"] = "显示小地图图标"
L["Display the Blizzard UI"] = "显示暴雪UI"
L["Done"] = "完成"
L["Down Clicks"] = "按下快捷键施法"
L["DownClick"] = "按下快捷键施法"
L["DownClick_Description"] = "开启按下快捷键施法"
L["Edit"] = "编辑"
L["Edit Bindings"] = "编辑绑定按键"
L["Edit_Description"] = "切换按钮编辑模式"
L["Empty Button"] = "空按键"
L["Enable Tooltips"] = "开启提示"
L["Enhanced"] = "增强"
L["Extra Action Bar"] = "额外动作条"
L["Extra Bar"] = "额外条"
L["Extrabar"] = "额外条"
L["F.A.Q."] = "常问问题"
L["Faction"] = "阵营"
L["FAQ_Intro"] = [=[
Neuron 常见问题：

您将在下面找到使用Neuron时可能出现的各种问题的答案。 但请注意，并非所有答案都可以在这里找到。

对于回答的问题，请在这里查找或提问：
https://www.curseforge.com/wow/addons/neuron
要么
http://www.wowinterface.com/downloads/info10636-IonActionBars.html

此外，如果您遇到任何错误或缺少功能，请在此处直接询问所有问题：
https://github.com/brittyazel/Neuron/issues

源代码可以在这里找到：
https://github.com/brittyazel/Neuron

再次感谢您使用Neuron。]=]
L["Favorite"] = "收藏"
L["Fishing"] = "钓鱼"
L["Fishing Pole"] = "钓鱼竿"
L["Flying"] = "飞行"
L["Flyout"] = "弹出菜单"
L["Flyout Options"] = "弹出菜单选项"
L["Flyout_FAQ"] = [=[弹出菜单

Neuron 允许创建法术，物品或配套的弹出菜单。它通过添加新的宏命令并基于多个选项构建菜单来实现此功能。 以下是如何通过Neuron 按键宏编辑器来制作自定义弹出菜单的说明：

格式: /flyout <type>:<keyword>:<shape>:<flyout anchor point>:<macro button anchor point>:<columns|radius>:<click|mouse>:<show/hide flyout arrow>

类型：根据需要使用尽可能多的半角英文逗号来分隔类型（例如："spell,item"）

关键字：根据需要使用尽可能多的半角英文逗号分隔关键字（例如："questpotion,blah,blah,blah"）
使用半角叹号"!"在关键字前面排除包含该关键字的任何内容（例如："!hearthstone"）

可用类型和关键字：注意：特殊关键字如Any或Favorite需要以大写半角英文字母开头。

物品：id或部分名称
按项目添加物品：ID或包中或包含部分名称的所有项目。
示例：item:1234, item:Bandage, item:Ore

法术：id或部分名称
通过其数字ID或包含部分名称的所有法术添加一个法术。
示例：spell:1234, spell:Shout, spell:Polymorph

mount:"Flying", "Land", "Favorite", "FFlying", "FavLand"或部分名称
添加所有飞行，着陆，最爱，最喜欢的飞行，最喜欢的地面坐骑或包含部分名称的坐骑。
示例：mount:flying, mount:Raptor, mount:favflying

藏品："Favorite", "Any" 或部分名称
添加最喜欢的宠物，所有宠物或包含部分名称的宠物。
示例：companion:Crash, companion:favorite, companion:any

类型：物品类型的
在其中一个类型字段中添加包含关键字的所有项目。 有关完整列表，请访问www.wowpedia.com/ItemType。
示例：type:Quest, type:Food, type:Herb, type:Leather

专业："Primary", "Secondary", "Any"或部分名称
增加所有主要职业，第二职业或任何职业。
示例：profession:Primary, profession:Any, profession:Herb

乐趣："Favorite", "Any" 或部分名称
添加喜爱的玩具，所有玩具或包含部分名称的玩具。
示例：toy:Crash, toy:favorite, toy:any

形状：
  线性
  圆型

弹出菜单锚点将成为弹出按键的第一个按钮上的锚点，并影响其弹出方向。 即如果你将它设置为“BOTTOM”，则弹出按钮将锚定在底行，并向上显示其余按键。

宏按键锚点是弹出菜单与宏所在按键相关的位置，如果启用，则弹出指示箭头将在宏的哪一侧。 如果您将IE设置为RIGHT，则指示器将位于右侧，并且弹出按钮将显示在宏按钮的右侧。

锚点：
    left
    right
    top
    bottom
    topleft
    topright
    bottomleft
    bottomright
    center
	
列/半径：可填任意数字。 对于线性样式，这将是弹出按钮将具有多少列。 对于圆形样式，这将是圆的宽度。

点击/鼠标：
	单击：单击按键时显示弹出按钮。
	鼠标：在鼠标悬停时显示弹出按钮。

显示/隐藏弹出箭头
	显示：显示弹出指示箭头
	隐藏：隐藏弹出指示箭头。
	
举例-

/flyout type:trinket:linear:right:left:6:click:show
单击按键时弹出一个6列菜单，菜单里显示的是所有饰品

/flyout mount:invincible, phoenix, !dark:circular:center:center:15:mouse:hide
将在标题中显示任何具有无敌与凤凰的坐骑，不包括带有暗词的坐骑(黑暗凤凰)

/flyout companion:Favorite:linear:right:left:4:click:show
将显示所有标记为偏好的收藏

/flyout spell, item:heal:linear:right:left:4:click:show
将显示名称中含有“heal”的所有物品和法术

大多数选项可能缩写 - 
/flyout i:bandage:c:c:c:15:c:h 相当于 /flyout item:bandage:circular:center:center:15:click:hide]=]
L["Focus-Cast by modifier"] = "修改焦点施法键"
L["Follow"] = "跟随"
L["Frequently Asked Questions"] = "常见问题"
L["Friendly"] = "友方"
L["Fun"] = "开心"
L["Gel"] = "一般"
L["General Options"] = "一般选项"
L["General_Bar_Configuration_Option_FAQ"] = [=[动作条列表部分
在菜单的最左侧，有一个列出已创建的所有动作条的部分。 单击名称将选择该动作条，并更新动作条状态。

动作条名称
在动作条列表的右侧，有一个文本字段，以白色显示当前所选动作条的名称。 您可以通过单击文本字段并编辑文本来重命名该条。请在完成后按Enter键保存设置。

动作条显示选项
动作条名称字段下方是当前条的显示选项。这些选项允许您更改动作条的显示方式。

自动隐藏：启用后，该条将自动隐藏，直到您再次将鼠标悬停在该条上。
显示网格：启用后，将显示动作条上的空白按键框。
自动对齐：启用后，移动当前条到另一个开启此选项的动作条时会自动吸附并对齐。
松开施法：选中后，松开绑定键时触发操作。
按下施法：选中后，按下绑定键时触发操作。
多天赋支持：启用后，当角色更换天赋时，动作条自动切换为当前天赋按键。
隐藏：选中后，动作条将完全隐藏。查看动作条的唯一方法是进入编辑模式。如果将某个动作条设置为隐藏，则在编辑模式下显示时它将显示为红色。
锁定：启用后，您将无法再从栏中拖动技能。
解锁键<Shift，Ctrl，Alt>：启用锁定操作后，将显示这些选项。 选择任何这些选项后，将允许您在锁定的动作条中按下相应解锁键来拖动技能。
开启提示：启用后，当您将鼠标悬停在动作条上的项目时，将显示相应提示。
增强提示：如果启用了提示，则会显示此选项。 开启后，则会显示增强的提示（如果可用）。
战斗中隐藏：如果启用了提示，则会显示此选项。开启后，则在玩家进入战斗时将隐藏所有提示。

动作条框架层
这个菜单的设置使您能够更改动作条的布局。

比例：设置动作条的比例。默认值为1。将此值更改为较小的数字会缩小动作条，而增加数字会使动作条变大。
形状：更改动作条的按键布局。
列数：仅在“形状”选择器中选择“线性”时显示。 默认为关闭。 增加按键数量会将动作条上的按键数量除以输入的列数。
圆弧开始：仅在“形状”选择器中选择其中一个“圆形”选项时显示。 设置当前动作条的起始弧位置（以度为单位）。
圆弧长度：仅在“形状”选择器中选择其中一个“圆形”选项时显示。 设置当前动作条的弧长（以度为单位）。
水平距离：设置当前动作条的水平距离。
垂直距离：设置当前动作条的垂直距离。
水平/垂直距离：同时调整当前动作条的水平和垂直距离。
框架层：改变动作条所在的层次。 层次越低，其他的项目就越有可能在其上面显示。
透明度：更改动作条的透明度。
提高透明度：选择一个条件来改变动作条的透明状态。
提高透明度速度：这是“提高透明度”的选项生效时透明度的变化速度。
X轴：更改当前动作条的水平轴位置。
Y轴：更改当前动作条的垂直轴位置。

创建动作条的按键
选项菜单的左下角是“创建栏”按钮。 使用此按钮添加按键到当前动作条。 选择后，系统将提示您选择要创建的动作条类型。 选择类型后，新动作条将显示在屏幕和动作条列表中。新创建的条按键数为0，可根据需求自行添加。

按键数量和添加/删除按键箭头
选项菜单的底部中心是所选动作条中的按键数量。 在任意一侧是箭头，单击时将增加或减少按键计数。

删除当前动作条
选项菜单的左下角是删除当前动作条的按键。 在按下时，您将得到是/否确认删除当前选定的动作条。 如果选择是，则该动作条将被删除，并从屏幕和列表中删除。此选项无法撤消。]=]
L["Generate Macro"] = "生成宏"
L["Glassed"] = "别致样式"
L["Group"] = "队伍"
L["Group: Party"] = "队伍：小队"
L["Group: Raid"] = "队伍：团队"
L["H+V Padding"] = "水平与垂直间距"
L["Harm"] = "伤害"
L["Has Target"] = "目标存在"
L["Healer Form"] = "治疗者形态"
L["Height"] = "高度"
L["Help"] = "帮助"
L["Hidden"] = "隐藏"
L["Hide"] = "Hidden"
L["Hide in Combat"] = "战斗状态时隐藏"
L["Home State"] = "常规"
L["Horiz Padding"] = "水平间距"
L["Horizontal"] = "水平"
L["Horozontal_and_Vertical_Padding_Instructions"] = "输入有效数字以增加/减少水平和垂直按键间距"
L["Horozontal_Padding_Instructions"] = "输入有效的水平间距"
L["Hostile"] = "敌对"
L["How to use"] = "如何使用"
L["In Combat"] = "战斗状态中"
L["Indoors"] = "屋内"
L["Invalid index"] = "索引无效"
L["Item"] = "项目"
L["Keybind Label"] = "键位列表"
L["Keybind_Tooltip_1"] = "按一个键将其绑定到"
L["Keybind_Tooltip_2"] = "当前绑定"
L["Keybind_Tooltip_3"] = "左键单击以锁定当前绑定键位"
L["Keybind_Tooltip_4"] = "右键单击以赋予已绑定键位最大优先级"
L["Keybind_Tooltip_5"] = "按ESC键清除当前绑定"
L["Keys"] = "按键"
L["Last State"] = "最后的状态"
L["Left"] = "左边"
L["Left Text"] = "左边文本"
--[[Translation missing --]]
--[[ L["Left-Click"] = ""--]] 
L["Level"] = "级别"
L["Levels"] = "级别"
L["Linear"] = "线性"
L["Lock"] = "锁定"
L["Lock Actions"] = "锁定动作条"
L["Lock_Description"] = "开启动作条锁定"
L["Locked"] = "已锁定"
L["Macro Data"] = "宏数据"
L["Macro Name"] = "宏名称"
L["MacroText"] = "宏文本"
L["MacroText_Description"] = "开启当前动作条上的宏名称文本"
L["Melee"] = "近战"
L["Menu"] = "菜单"
L["Menu Bar"] = "菜单条"
L["Menu_Description"] = "打开主菜单"
L["Mirror Bar"] = "映像条"
L["Mount"] = "安装"
L["Mounted"] = "运动方式"
L["Mouseover"] = "鼠标悬停"
L["Mouse-Over Casting"] = "鼠标悬停施法"
L["Mouse-Over Casting Modifier"] = "修改鼠标悬停施法键"
L["Mouseover Text"] = "鼠标悬停文本"
L["Move To"] = "移动到"
L["MoveSpecButtons"] = "移动特殊按钮"
L["MoveSpecButtons_Description"] = "将按键从一个规格复制到一个规格"
L["Multi Spec"] = "多种天赋支持"
L["Name"] = "名称"
L["Name_Description"] = "修改当前动作条名称"
L["No"] = "否"
L["No bar selected or command invalid"] = "没有选择动作条或命令无效"
L["No Extra Bar"] = "没有额外条"
L["No Fishing Pole"] = "没有钓鱼杆"
L["No Group"] = "没有队伍条"
L["No Override Bar"] = "没有覆盖条"
L["No Pet"] = "没有宠物条"
L["No Possess"] = "没有控制条"
L["No Stealth"] = "没有潜行条"
L["No Target"] = "没有目标"
L["No Vehicle"] = "没有载具"
L["None"] = "无"
L["Number of Buttons"] = "按键数量"
L["Object Editor"] = "对象编辑器"
L["Off"] = "关闭"
--[[Translation missing --]]
--[[ L["Open the Interface Menu"] = ""--]] 
L["Option"] = "菜单"
L["Options"] = "菜单"
L["Orientation"] = "方向"
L["Out of Combat"] = "非战斗状态"
L["Outdoors"] = "屋外"
L["Out-of-Range Indicator"] = "超出范围的指示器"
L["Output"] = "结论"
L["Override"] = "覆盖"
L["Override Bar"] = "覆盖动作条"
L["PadH"] = "水平间距"
L["PadH_Description"] = "设置当前动作条的水平间距"
L["PadHV"] = "水平/垂直"
L["PadHV_Description"] = "逐步调整当前动作条的水平和垂直间距"
L["PadV"] = "垂直间距"
L["PadV_Description"] = "设置当前动作条的垂直间距"
L["Page 1"] = "第1页"
L["Page 2"] = "第2页"
L["Page 3"] = "第3页"
L["Page 4"] = "第4页"
L["Page 5"] = "第5页"
L["Page 6"] = "第6页"
L["Paged"] = "页面"
L["Passive"] = "被动"
L["Path"] = "路径"
L["Percent"] = "百分比"
L["Pet"] = "宠物"
L["Pet Actions can not be added to Neuron bars at this time."] = "宠物动作此时无法添加到Neuron动作条。"
L["Pet Bar"] = "宠物条"
L["Pet Exists"] = "宠物存在"
L["Point"] = "点数"
L["Points"] = "点数"
L["Possess"] = "控制"
L["Preset Action States"] = "预设动作状态"
L["Prestige"] = "声望"
L["Priority"] = "优先"
L["Profession"] = "专业"
L["Radius"] = "半径"
L["Reaction"] = "反应"
L["Relative To"] = "相对于"
L["Remap selected stance to:"] = "将选定的姿势重新映射到："
L["Remove"] = "删除"
L["Remove_Description"] = "从当前动作条删除按键"
L["Rep Bar"] = "声望条"
L["Rested Levels"] = "双倍经验奖励"
L["Resting"] = "休息中"
L["Retreat"] = "非战斗状态"
L["Retreat + Mouseover"] = "非战斗状态 + 鼠标悬停"
L["Reward"] = "奖励"
L["Right"] = "右边"
L["Right Text"] = "右边文本"
--[[Translation missing --]]
--[[ L["Right-Click"] = ""--]] 
L["Right-click Self-Cast"] = "右键点击自我施法"
L["Save"] = "保存"
L["Scale"] = "比例"
L["Scale_Description"] = "将动作条缩放到所需比例"
L["Search"] = "搜索"
L["Select a modifier for Mouse-Over Casting"] = "选择一个MOD键做为鼠标悬停施法键"
L["Select a stance to remap:"] = "选择要重新映射的姿态："
--[[Translation missing --]]
--[[ L["Select an Option"] = ""--]] 
L["Select Bar Type"] = "选择动作条类型"
L["Select the Focus-Cast Modifier"] = "选择一个MOD键做为焦点施法键"
L["Select the Self-Cast Modifier"] = "选择一个MOD键做为自我施法键"
L["Self-Cast by modifier"] = "自我施法MOD键"
L["Shadow Dance"] = "暗影之舞"
L["Shape"] = "形状"
L["Shape_Description"] = "修改当前动作条的形状"
L["Shapeshift"] = "变形"
L["Shift"] = "SHIFT键"
L["Shift Down"] = "按下SHIFT键"
L["Shift Up"] = "松开SHIFT键"
L["Show"] = "显示"
L["Show Border Style"] = "显示边框样式"
L["Show Grid"] = "显示网格"
L["Show On"] = "显示开启"
L["ShowGrid"] = "显示网格"
L["ShowGrid_Description"] = "开启当前动作条的网格标志"
L["Shows / Hides the Default Blizzard UI"] = "显示或隐藏暴雪默认UI"
L["Slider"] = "滑块"
L["SnapTo"] = "自动对齐"
L["SnapTo_Description"] = "开启当前动作条是否自动对齐"
L["Soft"] = "绵柔"
L["Spell"] = "施法"
L["Spell Alerts"] = "施法警报"
L["Spell Target Options"] = "施法目标菜单"
L["Spell_Target_Options_FAQ"] = [=[施法目标选项
此选项允许为您的动作条中的法术自动添加某些施法MOD键，只有从法术书中拖到动作条上的法术才会添加这些修饰符。检查一个施法是否会受到MOD键影响的一种方法是使用宏编辑器查看该按键。如果宏在开头有“#autowrite”，那么它可以使用施法目标选项。

自我施法MOD键：启用后，按下所选修改键的法术都将尝试施放到你的角色上。 请注意，此设置选定的MOD键是全局的，并且对于每个动作条都是相同的。只要在其中任意一个动作条上修改此键，其它所有的动作条都会自动更新成此MOD键。

焦点施法MOD键：启用后，按下所选修改键的法术都将尝试施放到焦点目标上。 请注意，此设置选定的MOD键是全局的，并且对于每个动作条都是相同的。只要在其中任意一个动作条上修改此键，其它所有的动作条都会自动更新成此MOD键。

右键单击自我施法：启用后，通过右键单击按键所施放的任何法术都将尝试施放到你的角色上。

鼠标悬停施法：当启用时，按下所选修改键的法术都将尝试在鼠标光标悬停的目标上施放。 如果此选项的MOD键设置为“无”，则它将始终打开。]=]
L["Spell_Targeting_Modifier_None_Reminder"] = [=[如果mod键为“None”，自我施法功能将无效。
但鼠标悬停施法功能自动开启，而且并不需要修改mod键。]=]
L["SpellGlow"] = "激活施法"
L["SpellGlow_Description"] = "开启当前动作条的激活施法动画"
L["Spellglow_Instructions"] = [=[有效选项：

默认：使用暴雪默认的法术发光动画
替换：使用备用法术发光动画]=]
L["Stack/Charge Count Label"] = "堆叠/充能计数标签"
L["Stance"] = "姿态"
L["Stance Bar"] = "姿态条"
L["State"] = "状态"
L["State_Description"] = "开启当前动作条的动作状态"
L["StateList"] = "状态列表"
L["StateList_Description"] = "列出有效状态列表"
L["Status Bar"] = "状态条"
L["Stealth"] = "潜行"
L["Strata"] = "框架层"
L["Strata_Description"] = "更改当前栏的框架层"
L["Subdued Alert"] = "报警替代"
L["Swimming"] = "游泳"
L["Target"] = "目标"
L["Timer"] = "定时器"
L["Timer_Limit_Invalid_Message"] = "定时器限制无效"
L["Timer_Limit_Set_Message"] = "定时器限制设置为 ％d 秒"
L["TimerLimit"] = "定时器限制"
L["TimerLimit_Description"] = "设置开始显示文本计时器的最短时间（以秒为单位）"
--[[Translation missing --]]
--[[ L["Toggle Keybind Mode"] = ""--]] 
L["Toggle the use of the modifier-based focus-cast functionality."] = "开启使用mod键焦点施法功能"
L["Toggle the use of the modifier-based mouse-over cast functionality."] = "开启使用mod键鼠标悬停施法功能"
L["Toggle the use of the modifier-based self-cast functionality."] = "开启使用mod键自我施法功能"
L["Toggle the use of the right-click self-cast functionality."] = "开启右键点击自我施法功能"
L["Toggles the minimap button."] = "开启小地图图标"
L["Tooltip"] = "提示"
L["Tooltip Text"] = "提示文本"
L["Tooltip_Instructions"] = [=[有效选项：

增强：显示附加功能信息
战斗：在战斗中隐藏/显示工具提示]=]
L["Tooltips"] = "提示"
L["Tooltips_Description"] = "开启当前动作条的按键提示"
L["Top"] = "顶部"
L["Top-Left"] = "左上"
L["Top-Right"] = "右上"
L["Track Azerite Power"] = "显示神器能量"
L["Track Character XP"] = "显示角色经验值"
L["Track Honor Points"] = "显示荣誉点数"
L["Type"] = "类型"
L["Unit"] = "编组"
L["Unlock on ALT"] = " 按住ALT解锁"
L["Unlock on CTRL"] = " 按住CTRL解锁"
L["Unlock on SHIFT"] = " 按住SHIFT解锁"
L["Up Clicks"] = "松开按键施法"
L["UpClick"] = "松开按键施法"
L["UpClick_Description"] = "开启抬起快捷键施法"
L["Use macro note as button tooltip"] = "使用宏注释作为按键提示"
L["Valid States"] = "有效状态"
L["Vanish"] = "消失"
L["Vehicle"] = "载具"
L["Vehicle Exit Bar"] = "载具退出条"
L["Velvet"] = "丝绒"
L["Vert Padding"] = "垂直间距"
L["Vertical"] = "垂直"
L["Vertical_Padding_Instructions"] = "输入有效的垂直间距"
L["Vis"] = "可见性"
L["Vis_Description"] = "开启当前动作条的可见性状态"
L["Width"] = "宽度"
L["X"] = "X轴"
L["X Position"] = "X位置"
L["X_Description"] = "更改当前条的水平轴位置"
L["X_Position_Instructions"] = "输入有效的x轴位置"
L["XP Bar"] = "经验条"
L["Y"] = "Y轴"
L["Y Position"] = "Y位置"
L["Y_Description"] = "更改当前条的垂直轴位置"
L["Y_Position_Instructions"] = "输入有效的y轴位置"
L["Yes"] = "确定"
L["Zone Action Bar"] = "区域动作条"


