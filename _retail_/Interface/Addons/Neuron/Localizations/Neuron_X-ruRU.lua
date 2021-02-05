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

local L = LibStub("AceLocale-3.0"):NewLocale("Neuron", "ruRU", false)

if not L then return end

L["Action Bar"] = "Панель Действий"
L["Action Data"] = "Данные о действиях"
L["Add"] = "Добавить"
L["Add_Description"] = "Добавляет кнопки к текущей выбранной панели"
L["Alpha"] = "Прозрачность"
L["Alpha_Description"] = "Изменение прозрачности текущей панели"
L["AlphaUp"] = "Повысить прозрачность"
L["AlphaUp Speed"] = "Быстрое повышение прозрачности"
L["AlphaUp_Description"] = "Установите условия текущей панели на 'повышение прозрачности'"
L["Alt"] = "Alt"
L["Alt Down"] = "Alt Down"
L["Alt Up"] = "Alt Up"
L["Apply"] = "Применять"
L["Arc Length"] = "Длина дуги"
L["Arc Start"] = "Начало дуги"
L["ArcLen"] = "Дуга"
L["ArcLen_Description"] = "Установить длину дуги на панели (в градусах)"
L["ArcStart"] = "Начало дуги"
L["ArcStart_Description"] = "Установить начальную позицию дуги панели (в градусах)"
L["Assist"] = "Помощь"
L["Attach Point"] = "Прикрепить точку"
L["Attack"] = "Атака"
L["AuraInd"] = "AuraInd"
L["AuraInd_Description"] = "Переключить индикаторы кнопки ауры на текущую панель"
L["AuraText"] = "Текст Ауры"
L["AuraText_Description"] = "Переключить текст просмотра ауры на текущую панель"
L["Auto Select"] = "Автоматический выбор"
L["AutoHide"] = "Авто-скрытие"
L["AutoHide_Description"] = "Переключить Авто-скрытие для текущей панели"
L["Bag Bar"] = "Панель Сумок"
L["Bar Configuration"] = "Конфигурация панели"
L["Bar Fill"] = "Заполнение Панели"
L["Bar States"] = "Состояние Панели"
L["Bar Visibility Toggles"] = "Переключатели видимости"
L["Bar_Alpha_Instructions"] = "Прозрачность должна быть от нуля (0) до одного (1)"
L["Bar_ArcLength_Instructions"] = "Длина дуги должна быть от 0 до 359"
L["Bar_ArcStart_Instructions"] = "Начало дуги должно составлять от 0 до 359"
L["Bar_Column_Instructions"] = [=[Введите число желаемых столбцов для столбца выше нуля (0)
Опустить число, чтобы отключить столбцы]=]
L["Bar_Configuration_FAQ"] = [=[Режим редактора
Чтобы войти в редактора панели, щелкните левой кнопкой мыши по значку NEURON или введите "/neuron config" в окно чата. Вы узнаете, что режим включен, потому что будут отображаться любые скрытые полосы (IE Pet или Extra Action Bars), и на панелях будет отображаться подсветка и имя мыши.

Чтобы выйти из режима редактора панелей, щелкните левой кнопкой мыши значок NEURON, введите команду текстовой строки или нажмите клавишу Escape. Когда вы покинете этот режим, все панели, установленные для скрытия, снова исчезнут.

Меню настройки панели
Чтобы открыть меню настройки панели, щелкните правой кнопкой мыши на любой панели, когда включен режим редактора. При первом открытии меню он будет на вкладке общих опций. Если он открывается во второй раз после закрытия, он откроется до последней отображаемой вкладки.]=]
L["Bar_Lock_Modifier_Instructions"] = [=[Действующие комбинации клавиш:

alt: разблокировать панель, когда клавиша <alt>
ctrl: разблокировать панель, когда клавиша <ctrl>
shift: разблокировать панель, когда клавиша <shift>]=]
L["Bar_Shapes_List"] = [=[1 = Линейный
2 = Круг
3 = Круг + Один]=]
L["Bar_State_Configuration_FAQ"] = [=[Селектор состояний панели
Параметры Состояние Панели позволяют добавлять пользовательские состояния и триггеры видимости в панель. Состояние панели - это то, что в данный момент отображается на нем. Добавление дополнительных состояний позволит вам автоматически изменять то, что отображается при запуске заданного состояния. Состояние по умолчанию называется исходным состоянием.

Предустановленные действия

Страницы: если выбрано это значение, вы можете установить 6 разных страниц кнопок. Возможность переключения между страницами осуществляется с помощью настроек привязки ключа игры. Настройки следующий и предыдущий панели действий находятся в разделе «Панель действий».
Позиция: эта опция доступна только в том случае, если у персонажа есть разные позиции. Когда выбрано, позиция переключения изменит отображаемые кнопки.
Питомцы: когда она выбрана, вы можете изменить полосу, когда персонаж получает контроль над питомцем.

Пользовательские действия
Neuron позволяет создавать собственные пользовательские состояния панелей. Это делается путем ввода желаемых состояний, разделенных точкой с запятой. Если вы введете неверно отформатированное состояние, в окне чата появится сообщение об ошибке. Не рекомендуется использовать какие-либо состояния Предустановленных действий при использовании пользовательских состояний. Состояние пользовательских действий может быть сформировано с использованием большинства условных макросов игры по умолчанию, при этом «нет» добавляется к фронту условного выражения для проверки наличия ложного состояния. IE [nocombat]

Пример: [actionbar: 1]; [позиция: 1]; [stance3, stealth]; [установлен]

Переключатели видимости
Эти параметры позволяют настраивать, когда панель должна отображаться или скрываться. Если рядом с ним выделена зеленая метка, тогда полоса будет отображаться при выполнении этого условия. Отбрасывая опцию, панель будет скрыта, если условие выполнено.]=]
L["Bar_Strata_List"] = [=[1=фон
2=низкий
3=средний
4=высокий
5=диалог]=]
L["BarTypes"] = "Типы панелей"
L["BarTypes_Description"] = "Распечатайте список доступных типов панелей, чтобы сделать"
L["Bind"] = "Связать"
L["Bind_Description"] = "Переключить режим связки для всех кнопок"
L["Bindings_Locked_Notice"] = [=[Связки этой кнопки заблокированы.
ЛКМ для разблокировки.]=]
L["BindText"] = "Связать текст"
L["BindText_Description"] = "Переключить текст клавиш на текущую панель"
--[[Translation missing --]]
--[[ L["BlizzUI"] = ""--]] 
--[[Translation missing --]]
--[[ L["BlizzUI_Description"] = ""--]] 
L["Border"] = "Граница"
L["Bottom"] = "Низ"
L["Bottom-Left"] = "Нижняя левая"
L["Bottom-Right"] = "Внизу справа"
L["Bubbles"] = "Пузыри"
L["Buff/Debuff Aura Border"] = "Бафф/Дебафф Границы Ауры"
L["Buff/Debuff Aura Countdown"] = "Бафф/Дебафф Кулдаун Ауры"
L["Cancel"] = "Отмена"
L["Carpaint"] = [=[
Цвет]=]
L["Cast Bar"] = "Панель Каста"
L["Cast Icon"] = "Иконка Каста"
L["Caster Form"] = "Форма Каста"
L["CDAlpha"] = "КД Прозрачности"
L["CDAlpha_Description"] = "Переключить кнопку прозрачности во время восстановления"
L["CDText"] = "КД Текст"
L["CDText_Description"] = "Переключить время перезарядки в текущей строке"
L["Center"] = "Центр"
L["Center Text"] = "Текст по Центру"
L["Changelog"] = "Изменения"
L["Changelog_Latest_Version"] = [=[Список изменений:

Neuron 0.9.11 Изменения обновления:

Полностью переработана система локализации для работы в рамках CurseForge. Теперь мы можем использовать переводы!
Полностью перестроить все локализованные строки, чтобы соблюдать рекомендации Ace3-Locale
В качестве побочного эффекта вышеупомянутого изменения мы полностью перестроили функциональность / neuron, чтобы лучше использовать Ace3-Console и сделать эту систему более расширяемой]=]
L["Circle"] = "Круг"
L["Circle + One"] = "Круг + Один"
L["Click"] = "Нажать"
L["Click here to edit macro note"] = "Нажмите здесь, чтобы изменить макрос-заметку"
--[[Translation missing --]]
--[[ L["Close"] = ""--]] 
L["Columns"] = "Столбцы"
L["Columns_Description"] = "Задайте количество столбцов текущей строки (для многострочной формы)"
L["Combat"] = "Бой"
L["Combat + Mouseover"] = "Бой + При наведении курсора"
L["Command"] = "Команда"
L["Command List"] = "Список команд"
L["Companion"] = "Соратник"
L["Conceal"] = "Скрывать"
L["Conceal_Description"] = "Переключение, если текущая панель отображается или скрывается в любое время"
L["Config"] = "Конфигурация"
L["Config_Description"] = "Переключить режим конфигурации для всех панелей"
--[[Translation missing --]]
--[[ L["Configure Bars"] = ""--]] 
--[[Translation missing --]]
--[[ L["Configure Buttons"] = ""--]] 
L["Confirm"] = "Подтверждать"
L["Contrast"] = "Отличие"
L["Control Down"] = "Уменьшить Контроль"
L["Control Up"] = "Увеличить Контроль"
L["Cooldown Countdown"] = "Обратный отсчет"
L["Cooldown Transparency"] = "Восстановление Прозрачности"
L["Copy and Paste the text below"] = "Скопируйте и вставьте текст ниже"
L["Count"] = "Рассчитывать"
L["CountText"] = "Учитываются при подсчете текста"
L["CountText_Description"] = "Переключить заклинание / предмет на текущую панель"
L["Create"] = "Создайте"
L["Create New Bar"] = "Создайте новую панель"
L["Create_Description"] = "Создать пустую строку данного типа"
L["Ctrl"] = "Ctrl"
L["Current Level/Rank"] = "Текущий уровень/Ранг"
L["Current/Next"] = "Текущая/Следующая"
L["Custom"] = "Пользовательский"
L["Custom Action States"] = "Пользовательские действия"
L["Custom Icon"] = "Пользовательская Иконка"
L["Custom States"] = "Пользовательское состояние"
L["Custom_Option"] = "Для пользовательские состояния, добавьте нужное состояние строки (/neuron пользовательское состояние <state string>), где <state string> точкой с запятой отделены список состояния"
L["Default"] = "По умолчанию"
L["Default Alert"] = "Предупреждение по умолчанию"
L["Defensive"] = "Защитный"
L["Delete"] = "Удалить"
L["Delete Current Bar"] = "Удалить текущую панель"
L["Delete_Description"] = "Удалить текущую выбранную панель"
L["Dialog"] = "Диалог"
L["Display button for specialization 1"] = "Кнопка отображения для специализации 1"
L["Display button for specialization 2"] = "Кнопка отображения для специализации 2"
L["Display button for specialization 3"] = "Кнопка отображения для специализации 3"
L["Display button for specialization 4"] = "Кнопка отображения для специализации 4"
L["Display Minimap Button"] = "Кнопка отображения мини-карты"
--[[Translation missing --]]
--[[ L["Display the Blizzard UI"] = ""--]] 
L["Done"] = "Готово"
L["Down Clicks"] = "Вниз"
L["DownClick"] = "Вниз"
L["DownClick_Description"] = "Переключить, если кнопки на текущей панели реагируют на нажатие"
L["Edit"] = "Редактировать"
L["Edit Bindings"] = "Редактировать Привязки"
L["Edit_Description"] = "Переключить режим редактирования для всех кнопок"
L["Empty Button"] = "Пустая кнопка"
L["Enable Tooltips"] = "Включить подсказки"
L["Enhanced"] = "Усовершенствование"
L["Extra Action Bar"] = "Дополнительная Панель Действий"
L["Extra Bar"] = "Дополнительная панель"
L["Extrabar"] = "Дополнительная панель"
L["F.A.Q."] = "ВОПРОСЫ-ОТВЕТЫ."
L["Faction"] = "Фракция"
L["FAQ_Intro"] = [=[Neuron Вопрос-Ответ:

Ниже вы найдете ответы на различные вопросы, которые могут возникнуть при использовании Neuron. Обратите внимание, что не все ответы можно найти здесь.

Если вы не нашли ответили на вопросы, пожалуйста, направляйте их сюда:
https://www.curseforge.com/wow/addons/neuron
или
http://www.wowinterface.com/downloads/info10636-IonActionBars.html

Кроме того, если вы столкнулись с некоторыми ошибками или отсутствующими функциями, пожалуйста, направьте все запросы сюда:
https://github.com/brittyazel/Neuron/issues

Исходный код можно найти здесь:
https://github.com/brittyazel/Neuron

Еще раз спасибо за использование Neuron.]=]
L["Favorite"] = "Любимый"
L["Fishing"] = "Рыбалка"
L["Fishing Pole"] = "Удочка"
L["Flying"] = "Летающий"
L["Flyout"] = "Вылететь"
L["Flyout Options"] = "Параметры вылета"
--[[Translation missing --]]
--[[ L["Flyout_FAQ"] = ""--]] 
L["Focus-Cast by modifier"] = "Фокус-каст с помощью модификатора"
L["Follow"] = "Следовать"
L["Frequently Asked Questions"] = "Часто задаваемые вопросы"
L["Friendly"] = "Дружелюбный"
L["Fun"] = "Весело"
L["Gel"] = "Гель"
L["General Options"] = "Общие Настройки"
--[[Translation missing --]]
--[[ L["General_Bar_Configuration_Option_FAQ"] = ""--]] 
L["Generate Macro"] = "Создать макрос"
L["Glassed"] = "Застекленный"
L["Group"] = "Группа"
L["Group: Party"] = "Группа: Участники"
L["Group: Raid"] = "Группа: Рейд"
L["H+V Padding"] = "H+V Заполнение"
L["Harm"] = "Вред"
L["Has Target"] = "Цель"
L["Healer Form"] = "Форма Целителя"
L["Height"] = "Высота"
L["Help"] = "Помощь"
L["Hidden"] = "Скрытый"
L["Hide"] = "Скрыть"
L["Hide in Combat"] = "Скрыть в бою"
L["Home State"] = "Первоначальное состояние"
L["Horiz Padding"] = "Горизонт"
L["Horizontal"] = "Горизонтальный"
L["Horozontal_and_Vertical_Padding_Instructions"] = "Введите действительное число, чтобы увеличить/уменьшить как горизонтальное, так и вертикальное добавление кнопок"
L["Horozontal_Padding_Instructions"] = "Введите допустимый номер для желаемого горизонтального заполнения кнопки"
L["Hostile"] = "Враждебный"
L["How to use"] = "Как использовать"
L["In Combat"] = "В бою"
L["Indoors"] = "Внутри"
L["Invalid index"] = "Неверный индекс"
L["Item"] = "Предмет"
L["Keybind Label"] = "Ярлык привязки клавиш"
L["Keybind_Tooltip_1"] = "Нажмите клавишу, чтобы связать ее с"
L["Keybind_Tooltip_2"] = [=[ЛКМ, чтобы заблокировать привязки %s's.

ПКМ, чтобы сделать привязки %s's кнопок по приоритету

Нажмите ESC, чтобы очистить текущую привязку %s's]]=]
L["Keybind_Tooltip_3"] = "Текущая привязка (и):"
--[[Translation missing --]]
--[[ L["Keybind_Tooltip_4"] = ""--]] 
--[[Translation missing --]]
--[[ L["Keybind_Tooltip_5"] = ""--]] 
L["Keys"] = "Ключ"
L["Last State"] = "Последнее состояние"
L["Left"] = "Оставил"
L["Left Text"] = "Текст слева"
--[[Translation missing --]]
--[[ L["Left-Click"] = ""--]] 
L["Level"] = "Уровень"
L["Levels"] = "Уровни"
L["Linear"] = "Линейный"
L["Lock"] = "Замок"
L["Lock Actions"] = "Действия блокировки"
L["Lock_Description"] = "Переключатель блокировки."
L["Locked"] = "Закрытый"
L["Macro Data"] = "Дата Макроса"
L["Macro Name"] = "Имя Макроса"
L["MacroText"] = "Текст Макроса"
L["MacroText_Description"] = "Переключить текст имени макроса на текущую строку"
L["Melee"] = "Ближний бой"
L["Menu"] = "Меню"
L["Menu Bar"] = "Строка меню"
L["Menu_Description"] = "Откройте главное меню"
L["Mirror Bar"] = "Зеркальная панель"
L["Mount"] = "Маунт"
L["Mounted"] = "Средство Передвижения"
L["Mouseover"] = "Мышь над"
L["Mouse-Over Casting"] = "Мышь - над кастом"
L["Mouse-Over Casting Modifier"] = "Модификатор изменения мыши"
L["Mouseover Text"] = "Текст для мыши"
L["Move To"] = "Переместить в"
L["MoveSpecButtons"] = "Переместить специальные кнопки"
L["MoveSpecButtons_Description"] = "Копирует кнопки с первой специализации на вторую"
L["Multi Spec"] = "Мульти-Специализация"
L["Name"] = "Имя"
L["Name_Description"] = "Изменить имя текущей панели"
L["No"] = "Нет"
L["No bar selected or command invalid"] = "Не выбрана ни одна из панелей или команда недействительна."
L["No Extra Bar"] = "Нет дополнительной панели"
L["No Fishing Pole"] = "Нет удочки"
L["No Group"] = "Без группы"
L["No Override Bar"] = "Нет панели переопределения"
L["No Pet"] = "Без питомца"
L["No Possess"] = "Нет"
L["No Stealth"] = "Нет Скрытности"
L["No Target"] = "Нет Цели"
L["No Vehicle"] = "Нет Транспортного Средства"
L["None"] = "Никто"
L["Number of Buttons"] = "Количество кнопок"
L["Object Editor"] = "Редактор объектов"
L["Off"] = "Выключено"
--[[Translation missing --]]
--[[ L["Open the Interface Menu"] = ""--]] 
L["Option"] = "Настройки"
L["Options"] = "Настройки"
L["Orientation"] = "Ориентация"
L["Out of Combat"] = "Вне боя"
L["Outdoors"] = "На открытом воздухе"
L["Out-of-Range Indicator"] = "Индикатор вне диапазона"
L["Output"] = "Вывод"
L["Override"] = "Отменять"
L["Override Bar"] = "Панель Переопределения"
L["PadH"] = "PadH"
L["PadH_Description"] = "Установка горизонтальное местоположение текущей панели"
L["PadHV"] = "PadHV"
L["PadHV_Description"] = "Настройте горизонтальное и вертикальное постепенное заполнение текущей панели"
L["PadV"] = "PadV"
L["PadV_Description"] = "Установка вертикальное местоположение текущей панели"
L["Page 1"] = "Страница 1"
L["Page 2"] = "Страница 2"
L["Page 3"] = "Страница 3"
L["Page 4"] = "Страница 4"
L["Page 5"] = "Страница 5"
L["Page 6"] = "Страница 6"
L["Paged"] = "Постранично"
L["Passive"] = "Пассивный"
L["Path"] = "Патч"
L["Percent"] = "Процент"
L["Pet"] = "Питомец"
--[[Translation missing --]]
--[[ L["Pet Actions can not be added to Neuron bars at this time."] = ""--]] 
L["Pet Bar"] = "Панель Питомца"
L["Pet Exists"] = "Питомец уже есть"
L["Point"] = "Точка"
L["Points"] = "Точки"
L["Possess"] = "Обладать"
L["Preset Action States"] = "Предустановленные действия"
L["Prestige"] = "Престиж"
L["Priority"] = "Приоритеты"
L["Profession"] = "Профессия"
L["Radius"] = "Радиус"
L["Reaction"] = "Реакция"
L["Relative To"] = "Относительно"
L["Remap selected stance to:"] = "Переведите выбранную позицию в положение:"
L["Remove"] = "Удалить"
L["Remove_Description"] = "Удаляет кнопки из текущей выбранной панели"
L["Rep Bar"] = "Панель Репутации"
L["Rested Levels"] = "Отложенные уровни"
L["Resting"] = "Отдыхающий"
L["Retreat"] = "Отбой"
L["Retreat + Mouseover"] = "Retreat + Mouseover"
L["Reward"] = "Награда"
L["Right"] = "Вправо"
L["Right Text"] = "Текст справа"
--[[Translation missing --]]
--[[ L["Right-Click"] = ""--]] 
L["Right-click Self-Cast"] = "Щелкните правой кнопкой мыши Self-Cast"
L["Save"] = "Сохранить"
L["Scale"] = "Масштаб"
L["Scale_Description"] = "Масштабируйте панель до нужного размера"
L["Search"] = "Поиск"
L["Select a modifier for Mouse-Over Casting"] = "Выберите модификатор для Mouse-Over Casting"
L["Select a stance to remap:"] = "Выберите позицию для переназначения:"
--[[Translation missing --]]
--[[ L["Select an Option"] = ""--]] 
L["Select Bar Type"] = "Выберите тип панели"
L["Select the Focus-Cast Modifier"] = "Выберите Модификатор фокусировки"
--[[Translation missing --]]
--[[ L["Select the Self-Cast Modifier"] = ""--]] 
--[[Translation missing --]]
--[[ L["Self-Cast by modifier"] = ""--]] 
L["Shadow Dance"] = "Теневой танец"
L["Shape"] = "Форма"
--[[Translation missing --]]
--[[ L["Shape_Description"] = ""--]] 
--[[Translation missing --]]
--[[ L["Shapeshift"] = ""--]] 
L["Shift"] = "Shift"
L["Shift Down"] = "Shift Вниз"
L["Shift Up"] = "Shift Вверх"
L["Show"] = "Показать"
--[[Translation missing --]]
--[[ L["Show Border Style"] = ""--]] 
--[[Translation missing --]]
--[[ L["Show Grid"] = ""--]] 
--[[Translation missing --]]
--[[ L["Show On"] = ""--]] 
--[[Translation missing --]]
--[[ L["ShowGrid"] = ""--]] 
--[[Translation missing --]]
--[[ L["ShowGrid_Description"] = ""--]] 
--[[Translation missing --]]
--[[ L["Shows / Hides the Default Blizzard UI"] = ""--]] 
--[[Translation missing --]]
--[[ L["Slider"] = ""--]] 
--[[Translation missing --]]
--[[ L["SnapTo"] = ""--]] 
--[[Translation missing --]]
--[[ L["SnapTo_Description"] = ""--]] 
--[[Translation missing --]]
--[[ L["Soft"] = ""--]] 
--[[Translation missing --]]
--[[ L["Spell"] = ""--]] 
--[[Translation missing --]]
--[[ L["Spell Alerts"] = ""--]] 
--[[Translation missing --]]
--[[ L["Spell Target Options"] = ""--]] 
--[[Translation missing --]]
--[[ L["Spell_Target_Options_FAQ"] = ""--]] 
--[[Translation missing --]]
--[[ L["Spell_Targeting_Modifier_None_Reminder"] = ""--]] 
--[[Translation missing --]]
--[[ L["SpellGlow"] = ""--]] 
--[[Translation missing --]]
--[[ L["SpellGlow_Description"] = ""--]] 
--[[Translation missing --]]
--[[ L["Spellglow_Instructions"] = ""--]] 
--[[Translation missing --]]
--[[ L["Stack/Charge Count Label"] = ""--]] 
--[[Translation missing --]]
--[[ L["Stance"] = ""--]] 
--[[Translation missing --]]
--[[ L["Stance Bar"] = ""--]] 
--[[Translation missing --]]
--[[ L["State"] = ""--]] 
--[[Translation missing --]]
--[[ L["State_Description"] = ""--]] 
--[[Translation missing --]]
--[[ L["StateList"] = ""--]] 
--[[Translation missing --]]
--[[ L["StateList_Description"] = ""--]] 
--[[Translation missing --]]
--[[ L["Status Bar"] = ""--]] 
--[[Translation missing --]]
--[[ L["Stealth"] = ""--]] 
--[[Translation missing --]]
--[[ L["Strata"] = ""--]] 
--[[Translation missing --]]
--[[ L["Strata_Description"] = ""--]] 
--[[Translation missing --]]
--[[ L["Subdued Alert"] = ""--]] 
--[[Translation missing --]]
--[[ L["Swimming"] = ""--]] 
--[[Translation missing --]]
--[[ L["Target"] = ""--]] 
--[[Translation missing --]]
--[[ L["Timer"] = ""--]] 
--[[Translation missing --]]
--[[ L["Timer_Limit_Invalid_Message"] = ""--]] 
--[[Translation missing --]]
--[[ L["Timer_Limit_Set_Message"] = ""--]] 
--[[Translation missing --]]
--[[ L["TimerLimit"] = ""--]] 
--[[Translation missing --]]
--[[ L["TimerLimit_Description"] = ""--]] 
--[[Translation missing --]]
--[[ L["Toggle Keybind Mode"] = ""--]] 
--[[Translation missing --]]
--[[ L["Toggle the use of the modifier-based focus-cast functionality."] = ""--]] 
--[[Translation missing --]]
--[[ L["Toggle the use of the modifier-based mouse-over cast functionality."] = ""--]] 
--[[Translation missing --]]
--[[ L["Toggle the use of the modifier-based self-cast functionality."] = ""--]] 
--[[Translation missing --]]
--[[ L["Toggle the use of the right-click self-cast functionality."] = ""--]] 
--[[Translation missing --]]
--[[ L["Toggles the minimap button."] = ""--]] 
--[[Translation missing --]]
--[[ L["Tooltip"] = ""--]] 
--[[Translation missing --]]
--[[ L["Tooltip Text"] = ""--]] 
--[[Translation missing --]]
--[[ L["Tooltip_Instructions"] = ""--]] 
--[[Translation missing --]]
--[[ L["Tooltips"] = ""--]] 
--[[Translation missing --]]
--[[ L["Tooltips_Description"] = ""--]] 
--[[Translation missing --]]
--[[ L["Top"] = ""--]] 
--[[Translation missing --]]
--[[ L["Top-Left"] = ""--]] 
--[[Translation missing --]]
--[[ L["Top-Right"] = ""--]] 
--[[Translation missing --]]
--[[ L["Track Azerite Power"] = ""--]] 
--[[Translation missing --]]
--[[ L["Track Character XP"] = ""--]] 
--[[Translation missing --]]
--[[ L["Track Honor Points"] = ""--]] 
--[[Translation missing --]]
--[[ L["Type"] = ""--]] 
--[[Translation missing --]]
--[[ L["Unit"] = ""--]] 
--[[Translation missing --]]
--[[ L["Unlock on ALT"] = ""--]] 
--[[Translation missing --]]
--[[ L["Unlock on CTRL"] = ""--]] 
--[[Translation missing --]]
--[[ L["Unlock on SHIFT"] = ""--]] 
--[[Translation missing --]]
--[[ L["Up Clicks"] = ""--]] 
--[[Translation missing --]]
--[[ L["UpClick"] = ""--]] 
--[[Translation missing --]]
--[[ L["UpClick_Description"] = ""--]] 
--[[Translation missing --]]
--[[ L["Use macro note as button tooltip"] = ""--]] 
--[[Translation missing --]]
--[[ L["Valid States"] = ""--]] 
--[[Translation missing --]]
--[[ L["Vanish"] = ""--]] 
--[[Translation missing --]]
--[[ L["Vehicle"] = ""--]] 
--[[Translation missing --]]
--[[ L["Vehicle Exit Bar"] = ""--]] 
--[[Translation missing --]]
--[[ L["Velvet"] = ""--]] 
--[[Translation missing --]]
--[[ L["Vert Padding"] = ""--]] 
--[[Translation missing --]]
--[[ L["Vertical"] = ""--]] 
--[[Translation missing --]]
--[[ L["Vertical_Padding_Instructions"] = ""--]] 
--[[Translation missing --]]
--[[ L["Vis"] = ""--]] 
--[[Translation missing --]]
--[[ L["Vis_Description"] = ""--]] 
--[[Translation missing --]]
--[[ L["Width"] = ""--]] 
L["X"] = "X"
--[[Translation missing --]]
--[[ L["X Position"] = ""--]] 
--[[Translation missing --]]
--[[ L["X_Description"] = ""--]] 
--[[Translation missing --]]
--[[ L["X_Position_Instructions"] = ""--]] 
--[[Translation missing --]]
--[[ L["XP Bar"] = ""--]] 
L["Y"] = "Y"
--[[Translation missing --]]
--[[ L["Y Position"] = ""--]] 
--[[Translation missing --]]
--[[ L["Y_Description"] = ""--]] 
--[[Translation missing --]]
--[[ L["Y_Position_Instructions"] = ""--]] 
L["Yes"] = "Да"
--[[Translation missing --]]
--[[ L["Zone Action Bar"] = ""--]] 


