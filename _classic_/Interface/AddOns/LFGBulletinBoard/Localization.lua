local TOCNAME,GBB=...

GBB.locales = {
	enGB = {
		["lfg_channel"]="LookingForGroup", -- must be the default chat-name!
		["world_channel"]="World", -- must be the default chat-name!
		["GuildChannel"]="Guild Channel",
				
		["msgNbRequest"]="%d request(s) - click to whisper - shift+click to 'who' - ctrl+click to 'invite'",
		["msgStartWho"]="request who on %s...",
		["msgNewRequest"]="New request by %s for dungeon %s.",
		["msgInit"]="GroupBulletinBoard %s is loaded. Type '/gbb help' to get started.",
		["msgTimeFormat"]="%dm %02ds",
		["msgLevelRange"]="(Level %d - %d)",
		["msgLevelRangeShort"]="(%d-%d)",
		["msgTotalTime"]="Total time %s",
		["msgLastTime"]="Last update %s",
		["msgLocalRestart"]="The setting is not transferred until after a restart (/reload)",
		["msgCustomList"]="Enter your own unique search patterns here. If there is nothing, the English patterns are displayed as a grayed out example.",
		["msgAddNote"]="%s note",
		["msgLastSeen"]="Last Seen:",
		["heroicAbr"]="H",
		["normalAbr"]="N",
		["raidAbr"]="R",
		
		-- option panel
		
		["HeaderSettings"]="Settings",
		["PanelFilter"]="Vanilla Filter",
		["TBCPanelFilter"]="Filter",
		["HeaderTags"]="Search patterns",	
		["HeaderTagsCustom"]="Custom search patterns",
		["PanelTags"]="Search patterns",
		["PanelLocales"]="Localization",
		["HeaderChannel"]="Channel",
		["PanelAbout"]="About",
		["HeaderSlashCommand"]="Slash Commands",
		["HeaderCredits"]="Credits",
		["HeaderInfo"]="Information",
		["HeaderUsage"]="Usage",
		["HeaderDungeon"]="Dungeon",
		
		["Cboxshowminimapbutton"]="Show minimap button",	
		["CboxLockMinimapButton"]="Lock minimap button position",		
		["CboxLockMinimapButtonDistance"]="Minimize minimap button distance",
		["CboxShowTotalTime"]="Show total time instead last update",
		["CboxOnDebug"]="Show debug information",
		["CboxNotifyChat"]="On new request make a chat notification",
		["CboxNotifySound"]="On new request make a sound notification",
		["CboxCharFilterLevel"]="Filter on recommended level ranges",
		["CboxColorOnLevel"]="Highlight dungeons on recommended level ranges",
		["CboxTagsEnglish"]="English",
		["CboxTagsGerman"]="German",
		["CboxTagsRussian"]="Russian",
		["CboxTagsFrench"]="French",
		["CboxTagsZhtw"]="Chinese (zh-tw)",
		["CboxTagsCustom"]="Custom",
		["CboxRemoveRaidSymbols"]="Remove raid symbols like {rt1}",
		["CboxOrderNewTop"]="Sort new requests above",
		["CboxColorByClass"]="Colorize name by class",
		["CboxShowClassIcon"]="and show icon",
		["CboxUseAllInLFG"]="Show all messages from lfg-channel",
		["CboxEscapeQuit"]="ESC close main window (Restart needed)",
		["CboxEnableShowOnly"]="Show a fixed number of requests per dungeon",
		["CboxChatStyle"]="Use more chat style design",
		["CboxCharDontFilterOwn"]="Don't filter own request",		 
		["CboxCharHeroicOnly"]="Heroic only filter",	
		["CboxCharNormalOnly"]="Normal only filter",  
		["CboxDontTrunicate"]="Don't truncate message",
		["CboxOneLineNotification"]="Small one line chat notification",
		["CboxCompactStyle"]="Use two line design",
		["CboxEnableGroup"]="Remember past group members",
		["CboxEnableGuild"]="Add guild in player tooltip",
		["CboxCombineSubDungeons"]="Combine sub-dungeons like Dire Maul (only new request)",
		["CboxAdditionalInfo"]="Add more info to chat on /who and when somebody comes online",
		
		["CboxNotfiyInnone"]="Enable on overworld",
		["CboxNotfiyInpvp"]="Enable in battleground",
		["CboxNotfiyInparty"]="Enable in dungeon",
		["CboxNotfiyInraid"]="Enable in raid dungeon",
		
		["EditShowOnlyNb"]="Number of requests:",
		["EditTimeOut"]="Time before removing (sec):",	
		["EditCustom_Search"]="Search words (lfg, lfm,...)",
		["EditCustom_Bad"]="Blacklist words",
		["EditCustom_Suffix"]="Suffixes",
		["EditCustom_Heroic"] = "Heroic",
		
		["BtnUnselectAll"]="Unselect all",
		["BtnSelectAll"]="Select all",
		
		["BtnWispher"]="Wispher %s",
		["BtnInvite"]="Invite %s",
		["BtnWho"]="Who %s",
		["BtnIgnore"]="Ignore %s",
		["BtnFold"]="Fold",
		["BtnFoldAll"]="Fold all",
		["BtnUnFoldAll"]="Unfold all",
		["BtnCancel"]="Cancel",
		["BtnEntryColor"]="Color of the message",
		["BtnHeroicDungeonColor"]="Color of heroic dungeon tooltip",
		["BtnNormalDungeonColor"]="Color of normal dungeon tooltip",
		["BtnTimeColor"]="Color of the time",
		["BtnNotifyColor"]="Color of the notification message",
		["BtnPlayerNoteColor"]="Color of the player note",
		["BtnColorGuild"]="Colour of the guild text",
		
		["SlashReset"]="Reset main window position",
		["SlashConfig"]="Open configuration",
		["SlashDefault"]="open main window",
		["SlashAbout"]="open about",
		["SlashChatOrganizer"]="Creates a new chat tab if one doesn't already exist, named \"LFG\" with all channels subscribed. Removes LFG heavy spam channels from default chat tab",
		
		["TabRequest"]="Requests",
		["TabGroup"]="Members",
		
		["AboutUsage"]="GBB searches the chat messages for dungeon requests in the background. To whisper a person, simply click on the entry with the left mouse button. For a '/who' a shift + left click is enough. The dungeon list can be filtered in the settings. You can also fold this by left-clicking on the dungeon name.|nOld entries are filtered out after 150 seconds.",
			
		["AboutSlashCommand"]="<value> can be true, 1, enable, false, 0, disable. If <value> is omitted, the current status switches.",
		
		
		["AboutInfo"]="GBB provides an overview of the endless requests in the chat channels. It detects all requests to the classic dungeons, sorts them and presents them clearly way. Numerous filtering options reduce the gigantic number to exactly the dungeons that interest you. And if that's not enough, GBB will let you know about any new request via a sound or chat notification. And finally, GBB can post your request repeatedly.",
		
		
	},
	
	deDE =   {
	["AboutInfo"] = "GBB verschafft euch den Überblick über die endlosen Anfragen in den Chat-Channels. Es erkennt alle Anfragen zu den klassischen Instanzen, sortiert sie und stellt sie übersichtlich da. Filtermöglichkeiten reduziert die gigantische Anzahl auf genau die Instanzen, die dich interessieren. Und falls das nicht reicht, informiert GBB dich über jede neue Anfrage mittels eines Sounds oder Chat-Benachrichtigung. Und abschließend kann GBB deine persönliche Anfrage wiederholt veröffentlichen.",
	["AboutSlashCommand"] = "<value> kann true,1,enable,false,0,disable sein. Wird <value> weggelassen, schaltet der aktuelle Status um.",
	["AboutUsage"] = "GBB durchsucht im Hintergrund die Chat-Nachrichten nach Instanz-Anfragen. Um eine Person anzuflüstern, einfach den Eintrag mit links anklicken. Für ein '/who' genügt ein Shift + links klick. Die Instanz-Liste lässt sich in den Einstellungen filtern. Zudem kann man mit einen Linksklick auf den Instanz-Namen diesen falten.|nAlte Einträge werden nach 150 Sekunden rausgefiltert.",
	["BtnCancel"] = "Abbruch",
	["BtnColorGuild"] = "Farbe der Gildentextes",
	["BtnEntryColor"] = "Farbe der Anfrage",
	["BtnHeroicDungeonColor"]="Color of heroic dungeon tooltip",
	["BtnNormalDungeonColor"]="Color of normal dungeon tooltip",
	["heroicAbr"]="H",
	["normalAbr"]="N",
	["raidAbr"]="R",
	["BtnFold"] = "Falten",
	["BtnFoldAll"] = "Alle falten",
	["BtnIgnore"] = "%s ignorieren",
	["BtnNotifyColor"] = "Farbe der Nachricht",
	["BtnPlayerNoteColor"] = "Farbe der Spielernotizen",
	["BtnSelectAll"] = "Alles auswählen",
	["BtnStartShout"] = "Announce",
	["BtnStopShout"] = "Stop",
	["BtnStopShoutMsg"] = "Stop automatic announcement",
	["BtnTimeColor"] = "Farbe der Zeit",
	["BtnUnFoldAll"] = "Alle entfalten",
	["BtnUnselectAll"] = "Alles abwählen",
	["BtnWho"] = "Who %s",
	["BtnWispher"] = "%s anflüstern",
	["CboxAdditionalInfo"] = "Mehr Informationen bei /who und wenn jemand online kommt.",
	["CboxCharDontFilterOwn"] = "Eigene Anfragen nicht filtern",
	["CboxCharHeroicOnly"]= "Nur heroischer filter",
	["CboxCharNormalOnly"]="Nur normaler Filter", 
	["CboxCharFilterLevel"] = "Anhand der Levelempfehlung filtern",
	["CboxChatStyle"] = "Design mehr an Chat anpassen",
	["CboxColorByClass"] = "Name in Klassenfarbe",
	["CboxColorOnLevel"] = "Färbe Instanzen anhand der Levelempfehlung ein",
	["CboxCombineSubDungeons"] = "Fasse Unter-Instanzen, wie Düsterbruch, zusammen (nur neue Anfragen)",
	["CboxCompactStyle"] = "Design zweizeilig",
	["CboxDontTrunicate"] = "Nachricht nicht abkürzen",
	["CboxEnableGroup"] = "Letzte Gruppenmitglieder merken",
	["CboxEnableGuild"] = "Füge Gilde in Spieler-Tooltip hinzu.",
	["CboxEnableShoutBox"] = "Enable automatic announcement",
	["CboxEnableShowOnly"] = "Zeige eine feste Anzahl von Anfragen pro Instanz",
	["CboxEscapeQuit"] = "ESC schließt Fenster (Neustart notwendig)",
	["CboxLockMinimapButton"] = "Minimap-Icon-Position sperren",
	["CboxLockMinimapButtonDistance"] = "Minimap-Icon-Entfernung minimieren",
	["CboxNotfiyInnone"] = "Aktiv auf der Welt",
	["CboxNotfiyInparty"] = "Aktiv in Instanzen",
	["CboxNotfiyInpvp"] = "Aktiv in Schlachtfeldern",
	["CboxNotfiyInraid"] = "Aktiv in Schlachtzuginstanzen",
	["CboxNotifyChat"] = "Bei neuer Anfrage eine Nachricht senden",
	["CboxNotifySound"] = "Bei neuer Anfrage ein Geräusch abspielen",
	["CboxOnDebug"] = "Debug-Informationen anzeigen",
	["CboxOneLineNotification"] = "Kurze einzeilige Chatnachricht",
	["CboxOrderNewTop"] = "Sortiere neue Anfragen nach oben",
	["CboxRemoveRaidSymbols"] = "Entferne Raid-Zeichen wie {rt1}",
	["CboxShowClassIcon"] = "und zeige Icon",
	["Cboxshowminimapbutton"] = "Minimap-Icon anzeigen",
	["CboxShowTotalTime"] = "Zeige Gesamt-Zeit anstatt vom letzten Update",
	["CboxTagsCustom"] = "Eigene",
	["CboxTagsEnglish"] = "Englisch",
	["CboxTagsGerman"] = "Deutsch",
	["CboxTagsRussian"] = "Russisch",
	["CboxTagsFrench"] = "Französisch",
	["CboxUseAllInLFG"] = "Alle Nachrichten vom LFG-Kanal anzeigen",
	["EditCustom_Bad"] = "Blacklist Wörter",
	["EditCustom_Search"] = "Suchwörter (lfg, lfm,...)",
	["EditCustom_Suffix"] = "Suffixes",
	["EditCustom_Heroic"] = "Heroic",
	["EditShowOnlyNb"] = "Anzahl der Anfragen:",
	["EditTimeOut"] = "Zeit bis zum entfernen (sek):",
	["GuildChannel"] = "Gildenchat",
	["HeaderChannel"] = "Channel",
	["HeaderCredits"] = "Credits",
	["HeaderDungeon"] = "Instanz",
	["HeaderInfo"] = "Information",
	["HeaderSettings"] = "Einstellungen",
	["HeaderSlashCommand"] = "Befehle",
	["HeaderTags"] = "Wörterlisten",
	["HeaderTagsCustom"] = "Eigene Wörterlisten",
	["HeaderUsage"] = "Benutzung",
	["lfg_channel"] = "SucheNachGruppe",
	["world_channel"] = "Welt",
	["msgAddNote"] = "Notiz von %s",
	["msgCustomList"] = "Hier die eigenen eindeutigen Suchbegriffe eingeben. Wenn nichts vorhanden ist, werden die englischen als ausgegraues Beispiel angezeigt.",
	["msgDoShout"] = "Request announced.",
	["msgInit"] = "GroupBulletinBoard %s geladen. Zum Starten '/gbb help' eingeben.",
	["msgLastSeen"] = "Zuletzt gesehen:",
	["msgLastTime"] = "Letztes Update %s",
	["msgLevelRange"] = "(Level %d - %d)",
	["msgLevelRangeShort"] = "(%d-%d)",
	["msgLocalRestart"] = "Die Lokalisierung wird erst nach einem Neustart übernommen (/reload)",
	["msgNbRequest"] = "%d Anfrage(n) - Anklicken zum Flüstern - shift + anklicken für /who ",
	["msgNewRequest"] = "Neue Anfrage von %s für Instanz %s.",
	["msgRequestHere"] = "Enter here your lfg message.",
	["msgShoutError"] = "No request for a dungeon found!",
	["msgShoutErrorChannel"] = "Channel '%s' not found.",
	["msgStartWho"] = "Sende /who für %s...",
	["msgStopShout"] = "Automatic announcement stopped.",
	["msgTimeFormat"] = "%dm %02ds",
	["msgTotalTime"] = "Gesamtzeit %s",
	["PanelAbout"] = "Über",
	["PanelFilter"] = "Vanilla Filter",
	["TBCPanelFilter"]="Filter",
	["PanelLocales"] = "Lokalisierung",
	["PanelTags"] = "Wörterlisten",
	["SlashAbout"] = "'Über' öffnen",
	["SlashConfig"] = "Konfiguration öffnen",
	["SlashDefault"] = "Hauptfenster öffnen",
	["SlashReset"] = "Hauptfenster zurücksetzen",
	["TabGroup"] = "Mitglieder",
	["TabRequest"] = "Anfragen"
},
	esMX = {
		["lfg_channel"]="BuscarGrupo",
		["world_channel"] = "Mundo",
	},
	frFR = {
		["lfg_channel"]="RechercheDeGroupe",
		["world_channel"] = "Monde"
	},
	ruRU = {	
		["AboutInfo"]="GBB обеспечивает группировку нескончаемых запросов в каналах чата. Он обнаруживает все сообщения про поиск группы в классические подземелья, сортирует и удобно представляет их. Многочисленные опции фильтрации уменьшают гигантское число сообщений и оставляют только те подземелья, которые вас интересуют. А если этого недостаточно, GBB сообщит вам о любом новом запросе через звуковое или чат-уведомление. И, наконец, GBB может публиковать ваш запрос повторно.",
		["AboutSlashCommand"]="<значение> может быть true, 1, enable, false, 0, disable. Если <значение> опущено, текущий статус будет переключен.",
		["AboutUsage"]="GBB ищет в сообщениях чата запросы на поиск группы в подземелья в фоновом режиме. Чтобы шепнуть человеку, просто нажмите на строку ЛКМ. Для '/кто' достаточно ШИФТ + ЛКМ. Список подземелий можно отфильтровать в настройках. Вы также можете свернуть это, нажав ЛКМ по названию подземелья.|nСтарые записи отфильтровываются через 150 секунд (по-умолчанию).",
		["heroicAbr"]="H",
		["normalAbr"]="N",
		["raidAbr"]="R",
		["BtnCancel"]="Отмена",
		["BtnEntryColor"]="Цвет сообщения",
		["BtnHeroicDungeonColor"]="Цвет подсказки для героического подземелья",
		["BtnNormalDungeonColor"]="Цвет подскази для обычного подземелья",
		["BtnFold"]="Свернуть",
		["BtnFoldAll"]="Свернуть все",
		["BtnIgnore"]="Игнорировать %s",
		["BtnNotifyColor"]="Цвет уведомительного сообщения",
		["BtnSelectAll"]="Выбрать все",
		["BtnStartShout"]="Объявить",
		["BtnStopShout"]="Стоп",
		["BtnStopShoutMsg"]="Остановить автоматическое объявление",
		["BtnTimeColor"]="Цвет времени",
		["BtnPlayerNoteColor"]="Цвет заметки об игроке",
		["BtnColorGuild"]="Цвет текста гильдии",
		["BtnUnFoldAll"]="Развернуть все",
		["BtnUnselectAll"]="Снять все",
		["BtnWho"]="Кто %s",
		["BtnWispher"]="Шепот %s",
		["CboxCharDontFilterOwn"]="Не фильтровать собственный запрос",
		["CboxCharHeroicOnly"]="Показывать только героические",
		["CboxCharNormalOnly"]="Только нормальный фильтр",
		["CboxCharFilterLevel"]="Фильтр по рекомендуемым диапазонам уровней",
		["CboxChatStyle"]="Уведомления более похожие на чат",
		["CboxColorByClass"]="Раскрасить имя по классу",
		["CboxColorOnLevel"]="Подсветить подземелья рекомендуемого диапазона уровней",
		["CboxCompactStyle"]="Использовать двухстрочный дизайн",
		["CboxDontTrunicate"]="Не обрезать сообщения",
		["CboxEnableShoutBox"]="Включить автоматическое объявление",
		["CboxEnableShowOnly"]="Показать фиксированное количество запросов в подземелье",
		["CboxEscapeQuit"]="Закрывать главное окно при нажатии ESC (требуется перезагрузка)",
		["CboxLockMinimapButton"]="Блокировка положения кнопки у миникарты",
		["CboxLockMinimapButtonDistance"]="Минимизировать расстояние до миникарты",
		["CboxNotfiyInnone"]="Включить в мире",
		["CboxNotfiyInparty"]="Включить в подземелье",
		["CboxNotfiyInpvp"]="Включить на полях битвы",
		["CboxNotfiyInraid"]="Включить в рейдовом подземелье",
		["CboxNotifyChat"]="Уведомлять о новых запросах в чате",
		["CboxNotifySound"]="Звуовое уведомление о новых событиях",
		["CboxOnDebug"]="Показать отладочную информацию",
		["CboxOneLineNotification"]="Маленькое однострочное уведомление в чате",
		["CboxOrderNewTop"]="Показывать сначала новые запросы",
		["CboxRemoveRaidSymbols"]="Удалить символы рейда, такие как {rt1}",
		["CboxEnableGroup"]="Запоминать участников группы",
		["CboxEnableGuild"]="Добавить название гильдии в подсказку",
		["CboxCombineSubDungeons"]="Объединить похожие подземелья, как наример Забытый город (только для новых запросов)",
		["CboxAdditionalInfo"]="Показывать больше информации в чате при /кто и когда другие игроки входят в игру",
		["CboxShowClassIcon"]="и показать значок класса",
		["Cboxshowminimapbutton"]="Показать кнопку у миникарты",
		["CboxShowTotalTime"]="Показывать общее время вместо времени последнего обновления",
		["CboxTagsCustom"]="Пользовательский",
		["CboxTagsEnglish"]="Английский",
		["CboxTagsGerman"]="Немецкий",
		["CboxTagsRussian"]="Русский",
		["CboxTagsFrench"]="Французский",
		["CboxUseAllInLFG"]="Показывать все сообщения из канала ПоискСпутников",
		["EditCustom_Bad"]="Список плохих слов",
		["EditCustom_Search"]="Поиск слов (lfg, lfm,...)",
		["EditCustom_Suffix"]="Суффиксы",
		["EditCustom_Heroic"]="Героический",
		["EditShowOnlyNb"]="Количество запросов:",
		["EditTimeOut"]="Время до удаления (сек):",
		["GuildChannel"]="Канал гильдии",
		["HeaderChannel"]="Канал",
		["HeaderCredits"]="Авторы",
		["HeaderDungeon"]="Подземелья",
		["HeaderInfo"]="Информация",
		["HeaderSettings"]="Настройки",
		["HeaderSlashCommand"]="/ Команды",
		["HeaderTags"]="Шаблоны поиска",
		["HeaderTagsCustom"]="Пользовательские шаблоны поиска",
		["HeaderUsage"]="Использование",
		["lfg_channel"]="ПоискСпутников",
		["world_channel"]="Мир",
		["msgCustomList"]="Введите здесь свои уникальные шаблоны для поиска. Если занчение не заполнено, английские шаблоны отображаются в виде примера серым цветом.",
		["msgDoShout"]="Запрос объявлен.",
		["msgInit"]="GroupBulletinBoard %s загружен. Введите '/gbb help' для получения информации.",
		["msgLastTime"]="Последнее обновление %s",
		["msgLevelRange"]="(Уровень %d - %d)",
		["msgLevelRangeShort"]="(%d-%d)",
		["msgLocalRestart"]="Настройки не сохраняться до перезагрузки интерфейса (/reload)",
		["msgNbRequest"]="%d запрос(ов) - нажмите, чтобы шепнуть - ШИФТ + ЛКМ для \"/кто\"",
		["msgNewRequest"]="Новый запрос от %s для подземелья %s.",
		["msgRequestHere"]="Введите ваше сообщение для поиска.",
		["msgShoutError"]="Запрос на подземелье не найден!",
		["msgShoutErrorChannel"]="Канал '%s' не найден.",
		["msgStartWho"]="Запросить /кто на %s...",
		["msgStopShout"]="Автоматическое объявление остановлено.",
		["msgTimeFormat"]="%dm %02ds",
		["msgTotalTime"]="Общее время %s",
		["PanelAbout"]="Информация",
		["PanelFilter"]="Фильтр Classic",
		["TBCPanelFilter"]="Фильтр",
		["PanelLocales"]="Перевод",
		["PanelTags"]="Пользовательские шаблоны",
		["SlashAbout"]="открыть информацию",
		["SlashConfig"]="Открыть конфигурацию",
		["SlashDefault"]="открыть главное окно",
		["SlashReset"]="Сбросить положение главного окна",
	},
	zhTW = {
		["lfg_channel"]="尋求組隊", -- must be the default chat-name!
		["world_channel"]="綜合", -- must be the default chat-name!
		["GuildChannel"]="公會",
				
		["msgNbRequest"]="%d 個尋求組隊 - 左鍵:密語 - shift+左鍵:查詢who - ctrl+左鍵:邀請進組 - 繁中化:帕爾提娜@伊弗斯|n",
		["msgStartWho"]="查詢 who 於 %s...",
		["msgNewRequest"]="新的尋求組隊 %s 尋找地城 %s.",
		["msgInit"]="GroupBulletinBoard %s 已載入. 輸入 '/gbb help' 開始使用.",
		["msgTimeFormat"]="%d分 %02d秒",
		["msgLevelRange"]="(等級 %d - %d)",
		["msgLevelRangeShort"]="(%d-%d)",
		["msgTotalTime"]="總時長 %s",
		["msgLastTime"]="最後更新 %s",
		["msgLocalRestart"]="這些設定直到重新啟動(/reload)前不會被載入",
		["msgCustomList"]="在此輸入你自己的獨特搜尋 patterns. 如果未輸入, 英文 patterns 會以灰字顯示範例.",
		["msgAddNote"]="%s 註記",
		["msgLastSeen"]="最後可見:",
		["heroic"]="英雄", 
		["heroicAbr"]="H",
		["normalAbr"]="N",
		
		-- option panel
		
		["HeaderSettings"]="設定",
		["PanelFilter"]="經典時代過濾",
		["TBCPanelFilter"]="燃燒遠征過濾",
		["HeaderTags"]="搜尋 patterns",	
		["HeaderTagsCustom"]="自訂搜尋 patterns",
		["PanelTags"]="搜尋 patterns",
		["PanelLocales"]="本地化",
		["HeaderChannel"]="頻道",
		["PanelAbout"]="關於",
		["HeaderSlashCommand"]="斜線指令",
		["HeaderCredits"]="製作群",
		["HeaderInfo"]="資訊",
		["HeaderUsage"]="使用方式",
		["HeaderDungeon"]="地城",
		
		["Cboxshowminimapbutton"]="顯示小地圖按鈕",	
		["CboxLockMinimapButton"]="鎖定小地圖按鈕位置",		
		["CboxLockMinimapButtonDistance"]="固定在小地圖上",
		["CboxShowTotalTime"]="顯示總時間而不是最後更新",
		["CboxOnDebug"]="顯示除錯資訊",
		["CboxNotifyChat"]="有新尋求組隊時顯示聊天通知",
		["CboxNotifySound"]="有新尋求組隊時顯示聲音通知",
		["CboxCharFilterLevel"]="過濾建議的等級區間",
		["CboxColorOnLevel"]="強調地城建議等級區間",
		["CboxTagsEnglish"]="英文",
		["CboxTagsGerman"]="德文",
		["CboxTagsRussian"]="俄文",
		["CboxTagsFrench"]="法文",
		["CboxTagsZhtw"]="中文 (台灣)",
		["CboxTagsCustom"]="自訂",
		["CboxRemoveRaidSymbols"]="移除團隊圖示 如 {rt1}",
		["CboxOrderNewTop"]="排序新尋求組隊顯示在上面",
		["CboxColorByClass"]="根據職業著色名字",
		["CboxShowClassIcon"]="並顯示圖示",
		["CboxUseAllInLFG"]="顯示來自 lfg-channel 的所有訊息",
		["CboxEscapeQuit"]="ESC 關閉主視窗 (需要重啟)",
		["CboxEnableShowOnly"]="在每個地城顯示尋求組隊的數量",
		["CboxChatStyle"]="使用聊天樣式設計",
		["CboxCharDontFilterOwn"]="不要過濾自己的請求",		 
		["CboxCharHeroicOnly"]="只過濾英雄",	 
		["CboxDontTrunicate"]="不要截斷訊息",
		["CboxOneLineNotification"]="小的單行聊天通知",
		["CboxCompactStyle"]="使用雙行設計",
		["CboxEnableGroup"]="記得過去的團隊成員",
		["CboxEnableGuild"]="新增公會於玩家提示",
		["CboxCombineSubDungeons"]="合併次副本如 厄運之槌 (僅新尋求組隊生效)",
		["CboxAdditionalInfo"]="當某人回到線上時新增更多資訊於聊天室窗於 /who",
		
		["CboxNotfiyInnone"]="於 overworld 時啟用",
		["CboxNotfiyInpvp"]="於戰場時啟用",
		["CboxNotfiyInparty"]="於地城時啟用",
		["CboxNotfiyInraid"]="於團隊副本時啟用",
		
		["EditShowOnlyNb"]="尋求組隊數量:",
		["EditTimeOut"]="移除時間 (秒):",	
		["EditCustom_Search"]="搜尋關鍵字 (lfg, lfm,...)",
		["EditCustom_Bad"]="黑名單關鍵字",
		["EditCustom_Suffix"]="後置詞",
		["EditCustom_Heroic"] = "英雄",
		
		["BtnUnselectAll"]="取消全選",
		["BtnSelectAll"]="全選",
		
		["BtnWispher"]="密語 %s",
		["BtnInvite"]="邀請 %s",
		["BtnWho"]="Who %s",
		["BtnIgnore"]="忽略 %s",
		["BtnFold"]="摺疊",
		["BtnFoldAll"]="摺疊全部",
		["BtnUnFoldAll"]="反摺疊全部",
		["BtnCancel"]="取消",
		["BtnEntryColor"]="訊息顏色",
		["BtnHeroicDungeonColor"]="英雄地城提示顏色",
		["BtnNormalDungeonColor"]="普通地城提示顏色",
		["BtnTimeColor"]="時間提示顏色",
		["BtnNotifyColor"]="通知訊息顏色",
		["BtnPlayerNoteColor"]="玩家註記顏色",
		["BtnColorGuild"]="公會文字顏色",
		
		["SlashReset"]="重設主視窗位置",
		["SlashConfig"]="開啟設定",
		["SlashDefault"]="開啟主視窗",
		["SlashAbout"]="開啟關於",
		["SlashChatOrganizer"]="如果尚未建立, 建立一個新的名為\"LFG\"的視窗,|n包含所有訂閱的頻道. 以避免大量垃圾訊息於預設的聊天視窗",
		
		["TabRequest"]="尋求組隊",
		["TabGroup"]="成員",
		
		["AboutUsage"]="GBB 於背景搜尋尋求組隊的聊天訊息. 欲密語, 單點左鍵即可. 欲查詢 '/who' shift + 左鍵即可. 地城列表可以在設定中被過濾. 你也可以對地城名稱單點左鍵折疊.|n舊的尋求組隊會在150秒後被過濾掉.",
			
		["AboutSlashCommand"]="<value> 可以是 true, 1, enable, false, 0, disable. 如 <value> 未提供, 則會改變目前狀態.",
		
		
		["AboutInfo"]="GBB provides an overview of the endless requests in the chat channels. It detects all requests to the classic dungeons, sorts them and presents them clearly way. Numerous filtering options reduce the gigantic number to exactly the dungeons that interest you. And if that's not enough, GBB will let you know about any new request via a sound or chat notification. And finally, GBB can post your request repeatedly.",
		
		
	},

}
		
GBB.locales.esES=GBB.locales.esMX
GBB.locales.enUS=GBB.locales.enGB

function GBB.LocalizationInit()
	L = GBB.locales[GetLocale()] or {}

	if GroupBulletinBoardDB and GroupBulletinBoardDB.CustomLocales and type(GroupBulletinBoardDB.CustomLocales) == "table" then
		for key,value in pairs(GroupBulletinBoardDB.CustomLocales) do
			if value~=nil and value ~="" then
				L[key.."_org"]=L[key] or GBB.locales.enGB[key]
				L[key]=value
			end
		end
	end
	
end