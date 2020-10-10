﻿function AtrBuildLTable_zhTW ()

AtrL = {};

AtrL["SCAN_EXPLANATION"] = ""
.."掃描拍賣場會建立價格資料庫，用於兩種途徑："
.."<br/>"
.."1.在滑鼠提示中顯示價格"
.."<br/>"
.."2.在你建立拍賣，場上無其他拍賣品的時候顯示建議價格。"
.."<br/><br/>"
.."掃描通常需要約10秒鐘，但有時需要更久的時間。"
.."<br/><br/>"
.."有些人會在掃描時從WoW斷線，你可以在以下網址讀取相關原因及可能的解決辦法:"
.."<br/>"
.."https://github.com/Auctionator/Auctionator/wiki";

-- New Vars
--- Globals
AUCTIONATOR_SELL_TAB_TEXT = "Sell"
AUCTIONATOR_AUCTION_DURATION = "Default Auction Duration"
AUCTIONATOR_DEFAULT_AUCTIONATOR_TAB = "Default Auctionator tab"
AUCTIONATOR_MINIMUM_QUALITY_LEVEL = "Minimum quality level:"
AUCTIONATOR_MEMORY_USAGE = "Auctionator Memory Usage"
AUCTIONATOR_ITEMS_IN_THE_DATABASE = "Items in the database:"
AUCTIONATOR_DELETE_HISTORICAL_PRICES = "On start-up delete historical prices older than:"
AUCTIONATOR_DELETE_HISTORICAL_PRICES_DAYS = "day/s"
AUCTIONATOR_CLEAR_SCANNING_HISTORY_BTN = "Clear Scanning History"
AUCTIONATOR_CLEAR_POSTING_HISTORY_BTN = "Clear Posting History"
AUCTIONATOR_CLEAR_STACKING_PREFERENCES_BTN = "Clear Stacking Preferences"
AUCTIONATOR_CLEAR_SHOPPING_LISTS_BTN = "Clear Shopping Lists"
AUCTIONATOR_SHOPPING_LISTS_OPTION_DESCRIPTION = "Select multiple shopping lists by holding down the control key while clicking"
AUCTIONATOR_SHPLIST_IMPORTSAVEBTN = "Shopping List Import Button"
AUCTIONATOR_SHPLIST_SAVEBTN = "Save"
AUCTIONATOR_SHPLIST_SELECTALLBTN = "Select All"
AUCTIONATOR_SHPLIST_ALREADY_EXIST = "The following shopping list(s) already exist:"
AUCTIONATOR_SHPLIST_OKAY = "OKAY"
AUCTIONATOR_SHPLIST_NEW_NAME_TEXT = "New name for this list"
AUCTIONATOR_AUTOR_TEXT = "Author:  Borjamacare (US)"
AUCTIONATOR_ITEM_NAME = "Item Name"
AUCTIONATOR_ITEM_PRICE = "Item Price"
AUCTIONATOR_CURRENT_AUCTIONS = "Current Auctions"
AUCTIONATOR_SAVE_THIS_SHPLIST = "Save this Shopping List"
AUCTIONATOR_LOWEST_PRICE = "Lowest Price"
AUCTIONATOR_ITEM_NAME = "Item Name"
AUCTIONATOR_NEW = "New"
AUCTIONATOR_IMPORT = "Import"
AUCTIONATOR_EXPORT = "Export"
AUCTIONATOR_ARE_YOU_SURE = "Are you sure?"
AUCTIONATOR_CLEAR_IT = "Clear It"
AUCTIONATOR_ADD_ITEM = "Add Item"
AUCTIONATOR_REMOVE_ITEM = "Remove Item"
AUCTIONATOR_SEARCH_FOR_ALL_ITEMS = "Search for All Items"
AUCTIONATOR_MANAGE_SHOPPING_LISTS = "Manage Shopping Lists"
AUCTIONATOR_NEW_SHOPPING_LIST = "New Shopping List"
AUCTIONATOR_NEXT_SCAN_ALLOWED = "Next scan allowed:"
AUCTIONATOR_LAST_SCAN = "Last scan:"
AUCTIONATOR_ITEMS_IN_DB = "Items in database:"
AUCTIONATOR_START_SCANNING = "Start Scanning"
AUCTIONATOR_AUCTIONS_SCANNED = "Auctions scanned:"
AUCTIONATOR_ITEMS_ADDED = "Items added:"
AUCTIONATOR_ITEMS_UPDATED = "Items updated:"
AUCTIONATOR_ITEMS_IGNORED = "Items ignored:"
--- End Globals
AtrL["AH"] = ""
AtrL["%A, %B %d at %I:%M %p"] = "%d/%m/%Y alle %H:%M" -- Date and Time. Refer to https://www.lua.org/pil/22.1.html
AtrL["Date"] = ""
AtrL["Today"] = ""
AtrL["Yesterday"] = ""
AtrL["Slow scan"] = ""
AtrL["Level"] = ""
AtrL["Shopping list overwritten:"] = ""
AtrL["Shopping list created:"] = ""
AtrL["Paste text that was previously exported into the text area to the left."] = ""
AtrL["Create new shopping lists with new names"] = ""
AtrL["Create new shopping lists with new names."] = ""
AtrL["Overwrite the existing shopping lists with the imported lists."] = ""
AtrL["Abort the import.  You can hand-edit the import text to change the names and then try again."] = ""
AtrL["Click Select All, type Ctrl-C to copy the text and then paste into any text document."] = ""
AtrL["%6d items"] = "" -- AUCTIONATOR_ITEMS_IN_THE_DATABASE %6d items description
AtrL["Default Auction duration"] = ""
AtrL["Options..."] = ""
AtrL["More"] = ""
AtrL["Yes, cancel them"] = ""
AtrL["No, leave them"] = ""
AtrL["Basic Options"] = "Attiva scorciatoia tasto Alt"
AtrL["Show Starting Price on the Sell Tab"] = ""
AtrL["Enable debug mode"] = ""
AtrL["basic options saved"] = ""
AtrL["Reset to Default"] = ""
AtrL["Shopping Lists"] = ""
AtrL["New"] = ""
AtrL["Edit"] = ""
AtrL["Delete"] = ""
AtrL["Rename"] = ""
AtrL["Import"] = ""
AtrL["Export"] = ""
AtrL["Tooltips"] = ""
AtrL["Show vendor prices in tooltips"] = ""
AtrL["Show auction house prices in tooltips"] = ""
AtrL["Show disenchant prices in tooltips"] = ""
AtrL["Show auction house prices in mailbox tooltips"] = ""
AtrL["Undercutting"] = ""
AtrL["Selling"] = ""
AtrL["Configure how you typically like to sell the items listed below."] = ""
AtrL["Clears"] = "Pulizia"
AtrL["The features below will help you clear out data that Auctionator stores.  Typically you would only need this in the event that that data gets corrupted."] = ""
AtrL["Read the FAQ at"] = "Leggi le FAQ su"
AtrL["MoP disenchanting data courtesy of the Norganna's AddOns (the Auctioneer folks)"] = ""
AtrL["Subcategory"] = ""
AtrL["Search For"] = ""
AtrL["Level Range"] = LEVEL_RANGE.."."
AtrL["Advanced Search"] = ""
AtrL["Advanced"] = ADVANCED_LABEL
AtrL["Vendor"] = AUCTION_CREATOR
AtrL["Version"] = GAME_VERSION_LABEL
AtrL["items"] = ""
AtrL["Time:"] = ""
AtrL["auctions returned empty results (out of %d)"] = ""
AtrL["auctions returned null itemLinks (out of %d)"] = ""
AtrL["Blizzard server failed to return all items"] = ""
AtrL["You might want to try slow scanning."] = ""
AtrL["Buy Another"] = ""
AtrL["Buy One"] = ""
AtrL["Are you sure you want to clear the scanned prices database?"] = ""
AtrL["This will clear the pricing history for all items for all your characters - even characters on different servers."] = ""
AtrL["Pricing history cleared."] = ""
AtrL["Are you sure you want to clear the posting history?"] = ""
AtrL["This will clear the information that Auctionator keeps for all items that you've posted - as shown on the \"Other\" tab after you scan for an item that you've sold in the past."] = ""
AtrL["Posting history cleared."] = ""
AtrL["Are you sure you want to clear your stacking preferences?"] = ""
AtrL["Go ahead - this isn't a big deal.  Auctionator will figure it out again fairly quickly.  This is just some info Auctionator keeps to help it set the default stack size a bit more intelligently."] = ""
AtrL["Stacking preferences cleared."] = ""
AtrL["Are you sure you want to clear your shopping lists?"] = ""
AtrL["If you put a lot of time into constructing detailed shopping lists, this will require you to build them all over again."] = ""
AtrL["Shopping lists cleared."] = ""
AtrL["Memory went from"] = ""
AtrL["to"] = ""
AtrL["Disenchant data restored. Number of entries:"] = ""
AtrL["No data available to be restored."] = ""
AtrL["1 stack available"] = ""
AtrL["%d stacks available"] = ""
AtrL["none available"] = ""
AtrL["Waiting for auction data"] = ""
AtrL["Updating database"] = ""
AtrL["Scan complete"] = ""
AtrL["Analyzing data"] = ""
AtrL["out of"] = ""
AtrL["Page %s of %s"] = ""
AtrL["FULL SCAN:"] = ""
AtrL["AUCTIONATOR_FS_CHUNK:"] = ""
AtrL["Warning"] = ""
AtrL["Bad item scanned."] = ""
AtrL["Name:"] = ""
AtrL["Count:"] = ""
AtrL["badItemCount:"] = ""
AtrL["ignored"] = ""
AtrL["Scanning auctions: page %d of %d"] = ""
AtrL["Scanning auctions for %s%s"] = ""
AtrL["When the Auction House is open\nclicking this button tells Auctionator\nto scan for the item and all its reagents."] = ""
AtrL["%d bought so far"] = ""
AtrL["%d available"] = ""
AtrL["Italian translation courtesy of %s"] = ""
-- End New Vars

-- Old Vars
AtrL["%6d items"]="%6d 項物品"
AtrL["%d auctions created for %s"] = "已建立%d項拍賣:%s"
AtrL["%d available"] = "%d 項可購買"
AtrL["%d bought so far"] = "目前購入: %d"
AtrL["%d of %d bought so far"] = "目前購入: %d/%d"
AtrL["%d of your auctions are not the lowest priced.\n\nWould you like to cancel them?"]="%d項你的拍賣非目前最低價\n\n要取消拍賣嗎?"
AtrL["%d stacks available"] = "%d 堆疊可購買"
AtrL["+"] = "進階搜尋"
AtrL["1 stack available"] = "1 堆疊可購買"
AtrL["About Auctionator"]="關於 Auctionator"
AtrL["About"] = "關於"
AtrL["Active Items"] = "目前拍賣"
AtrL["Add Item To List"] = "增加物品至清單"
AtrL["Add Item"] = "增加物品"
AtrL["Advanced Search"] = "條件"
AtrL["All Items"] = "全部物品"
AtrL["always"] = "總是"
AtrL["Are you sure you want to create\nan auction with no buyout price?"] = "確定不設直購價?"
AtrL["As many as possible"] = "最多"
AtrL["Auction #%d created for %s"] = "已建立%d項拍賣:%s"
AtrL["Auction cancelled for "] = "已取消拍賣:"
AtrL["Auction created for %s"] = "已建立拍賣:%s"
AtrL["Auction House timed out"] = "時間過期"
AtrL["Auction"] = "拍賣"
AtrL["Auctionator has yet to record any auctions for this item"] = "尚無此物品記錄"
AtrL["Auctionator memory usage:"] = "Auctionator 記憶體用量"
AtrL["Auctionator provided an auction module to LilSparky's Workshop."] = ""
AtrL["Auctionator scan data"] = "Auctionator 掃描資料"
AtrL["Auctionator"] = ""
AtrL["Auctions scanned"] = "拍賣已掃描"
AtrL["Auctions scanned:"] = "拍賣已掃描:"
AtrL["Author:  Borjamacare"] = "作者: Borjamacare"
AtrL["Automatically cancel all of your auctions|n|nthat are not the lowest priced?"] = "自動下架目前非最低價物品?"
AtrL["available"] = "項"
AtrL["average of your auctions for"] = "平均在你的拍賣"
AtrL["Back"] = "返回"
AtrL["based on cheapest current auction"] = "根據目前最低價"
AtrL["based on cheapest stack of the same size"] = "根據目前同堆疊數最低價"
AtrL["based on selected auction"] = "根據選擇的拍賣物品"
AtrL["based on"] = "根據"
AtrL["Basic Options for %s"] = "%s的基本設定"
AtrL["basic options saved"] = "基本設定已儲存"
AtrL["Basic Options"] = "基本設定"
AtrL["BOP"] = "拾取綁定"
AtrL["Buy Another"] = "再購入一項"
AtrL["Buy One"] = "購入一項"
AtrL["Buy"] = "購入"
AtrL["Buyout Price"] = "直購價"
AtrL["Cancel Auctions"] = "取消拍賣"
AtrL["Cancel"] = "取消"
AtrL["Category"] = "主分類"
AtrL["Check and Cancel Auctions"] = "檢查並取消拍賣"
AtrL["Check for Undercuts"] = "最低價檢查"
AtrL["Checking stopped"] = "檢查停止"
AtrL["Cleaning up"] = "清理"
AtrL["Common items"] = "普通物品"
AtrL["Common"] = "普通"
AtrL["Configure how you typically like to sell the items listed below."]="設定賣出時的偏好選項"
AtrL["Continue"] = "繼續"
AtrL["Create %d Auctions"] = "開始%d項拍賣"
AtrL["Create Auction"] = "開始拍賣"
AtrL["Create Multiple Auctions failed.\nYou need at least one empty slot in your bags."] = "拍賣複數物品失敗\n背包中至少要有一格空位"
AtrL["Current Auctions"] = "目前拍賣"
AtrL["Current"] = "目前拍賣"
AtrL["Database"] = "資料庫"
AtrL["Date"] = "日期"
AtrL["days"]="天"
AtrL["Default Auctionator tab"] = "開啟拍賣時預設頁面"
AtrL["default behavior"] = "預設"
AtrL["Delete Shopping List"] = "刪除物品清單"
AtrL["Deposit"] = "保證金"
AtrL["Disenchant"] = "分解"
AtrL["Done"] = "完成"
AtrL["Drag an item you want to sell to this area."] = "將物品放到這裡以供拍賣"
AtrL["Duration"] = "時限"
AtrL["Edit"] = "編輯"
AtrL["Enable alt-key shortcut"]="啟用Alt鍵捷徑"
AtrL["Epic items"] = "史詩物品"
AtrL["Epic"] = "史詩"
AtrL["Flasks"] = "精煉藥劑"
AtrL["For information on the latest version browse to"] = "取得最新版本資訊:"
AtrL["for your stack of %d"] = "總價 (堆疊數%d)"
AtrL["Forget this Item"] = "刪除此項"
AtrL["French translation courtesy of %s"] = "法文翻譯: %s"
AtrL["full scan database cleared"] = "掃描資料庫已清除"
AtrL["Full Scan..."] = "掃描..."
AtrL["Gems - Cut"] = "寶石-已切割"
AtrL["Gems - Uncut"] = "寶石-未切割"
AtrL["German translation courtesy of %s"] = "德文翻譯: %s"
AtrL["Glyphs"] = "雕文"
AtrL["Herbs"] = "草藥"
AtrL["History"] = "紀錄"
AtrL["If this option is checked, every time you initiate a new auction the auction duration will be reset to the default duration you've selected."]="若勾選此選項，每當你擺放拍賣物品時，將自動設定有效期限被預設值"
AtrL["If this option is checked, holding the Alt key down while clicking an item in your bags will switch to the Auctionator panel, place the item in the Auction Item area, and start the scan."]="若勾選此選項，在背包中按下Alt並點擊物品，會自動跳至Auctionator的賣出頁面、擺放物品，並查詢當前價格"
AtrL["If this option is checked, the Auctionator BUY panel will display first whenever you open the Auction House window."]=""
AtrL["Ignore any ERROR message to the contrary below."] = ""
AtrL["in about %d minutes"] = "約%d分後"
AtrL["in about one minute"] = "約1分後"
AtrL["in less than a minute"] = "不到一分後"
AtrL["Item Enhancements"] = "物品附魔"
AtrL["Item Name"] = "物品"
AtrL["Item Price"] = "單價"
AtrL["Items added to database"] = "物品新增到資料庫"
AtrL["Items added:"] = "新增物品:"
AtrL["Items ignored"] = "忽略物品"
AtrL["Items ignored:"] = "忽略物品"
AtrL["Items in database:"] = "資料庫中物品:"
AtrL["Items in the database:"] = "資料庫中物品:"
AtrL["Items updated in database"] = "資料庫物品已更新"
AtrL["Items updated:"] = "更新物品:"
AtrL["items"] = "物品"
AtrL["Just Check Auctions"] = "只檢查拍賣"
AtrL["Last scan:"] = "上次已掃描:"
AtrL["Level Range"] = "等級範圍"
AtrL["Low Low Price"] = "最低價"
AtrL["Lowest Price"] = "最低價"
AtrL["max"] = "最多"
AtrL["max. stacks of %d"] = "最多個，堆疊 %d"
AtrL["Minimum Quality Level"] = "最低物品品質"
AtrL["Minimum quality level:"] = "最低物品品質"
AtrL["More"] = "其他"
AtrL["Name for your new shopping list"] = "物品清單名稱"
AtrL["never"] = "從不"
AtrL["Never"] = "從不"
AtrL["New Shopping List"] = "新增物品清單"
AtrL["New"] = "新建"
AtrL["Next scan allowed:"] = "下次可掃描:"
AtrL["no buyout price"] = "無直購價"
AtrL["No current auctions found"] = "查無物品"
AtrL["No current auctions found\n\n(related auctions shown)"] = "查無物品\n\n(顯示相關物品)"
AtrL["No current auctions with buyouts found"] = "查無已設定直購價的物品"
AtrL["No, leave them"]="保持拍賣"
AtrL["none available"] = "無"
AtrL["None"] = "無"
AtrL["Now"] = "立即"
AtrL["On start-up delete historical prices older than:"]="啟動時刪除過舊的歷史紀錄:"
AtrL["Only include items in the scanning database that are this level or higher"] = "資料庫中只包含高於此品質的物品"
AtrL["Options"] = "設定"
AtrL["Other"] = "其他"
AtrL["over %d gold"] = "逾 %3d 金"
AtrL["over %d silver"] = "逾 %3d 銀"
AtrL["over 1 gold"] = "逾 %3d 銅"
AtrL["Past"] = "過去"
AtrL["per item price"] = "物品單價"
AtrL["Per Item"] = "單價"
AtrL["per item"] = "單價"
AtrL["per stack"] = "總價"
AtrL["percent"] = "%"
AtrL["Poor (all)"] = "粗糙(全部)"
AtrL["Poor items"] = "粗糙物品"
AtrL["Potions and Elixirs"] = "藥水及藥劑"
AtrL["pricing history cleared"] = "價格紀錄已清除"
AtrL["Processing"] = "處理中"
AtrL["Quest Item"] = "任務物品"
AtrL["Rare items"] = "精良物品"
AtrL["Rare"] = "精良"
AtrL["Really delete the shopping list %s ?"] = "真的要刪除物品清單 %s ?"
AtrL["Entry must not be blank"] = ""
AtrL["Recent Searches"] = "最近搜尋"
AtrL["Recommended buyout price"] = "建議直購價"
AtrL["Recommended Buyout Price"] = "建議直購價"
AtrL["Remove Item From List"] = "從清單移除物品"
AtrL["Remove Item"] = "移除物品"
AtrL["removed from database"] = "'從資料庫中移除"
AtrL["Required DE skill level"] = "需求附魔等級"
AtrL["Reset to Default"] = "重設"
AtrL["Russian translation courtesy of %s"] = "俄文翻譯: %s"
AtrL["Scan complete"] = "掃描完成"
AtrL["Scan in progress"] = "掃描中"
AtrL["Scanning auctions for %s%s"] = "搜尋 %s%s"
AtrL["Scanning auctions for %s: page %d"] = "搜尋 %s :第%d頁"
AtrL["Scanning auctions: page %d"] = "搜尋中:第%d頁"
AtrL["Scanning is entirely optional."] = "掃描是選擇性的"
AtrL["scanning options saved"] = "掃描選項已儲存"
AtrL["Scanning"] = "掃描中"
AtrL["Scanning..."] = "掃描中"
AtrL["Search for All Items"] = "搜尋全部物品"
AtrL["Search For"] = "名稱"
AtrL["Search"] = "搜尋"
AtrL["Select an item from the list on the left\n or type a search term above to start a scan."] = "在左邊的清單中選擇物品\n或在上方輸入物品名稱"
AtrL["Select the Auctionator panel to be displayed first whenever you open the Auction House window."]="選擇當你進入拍賣時首先開啟的頁面"
AtrL["Sell"] = "賣出"
AtrL["Selling"] = "賣出"
AtrL["Set a default duration"]="設定有效期限預設值"
AtrL["Show auction house prices in tooltips"]="顯示拍賣價格"
AtrL["Show disenchant prices in tooltips"]="顯示分解價格"
AtrL["Show disenchanting details"] = "顯示分解價格..."
AtrL["Show Starting Price on the Sell Tab"]="在賣出頁面顯示起始價格"
AtrL["Show vendor prices in tooltips"]="顯示商店價格"
AtrL["Source"] = "來源"
AtrL["Spanish translation courtesy of %s"] = "西文翻譯: %s"
AtrL["stack available"] = "堆疊可購買"
AtrL["stack for"] = "堆疊的"
AtrL["stack of"] = "項，堆疊"
AtrL["stack price"] = "堆疊總價"
AtrL["Stack Price"] = "總價"
AtrL["stack"] = "堆疊"
AtrL["stacks available"] = "堆疊可購買"
AtrL["stacks for"] = "堆疊的"
AtrL["stacks for:"] = "堆疊的:"
AtrL["stacks of"] = "項，堆疊"
AtrL["Start canceling"]="取消拍賣"
AtrL["Start Scanning"] = "開始掃描"
AtrL["Starting Price Discount"] = "競標價折扣"
AtrL["Starting Price"] = "起始價格"
AtrL["Stop Checking"] = "停止檢查"
AtrL["Subcategory"] = "副分類"
AtrL["Swedish translation courtesy of %s"] = "瑞典翻譯: %s"
AtrL["The latest information on Auctionator can be found at"] = "Auctionator的最新資訊在:<br/>"
AtrL["There is a more recent version of Auctionator: VERSION"] = "有更新的Auctionator版本:"
AtrL["Today"] = "今天"
AtrL["tooltip configuration saved"] = "滑鼠提示選項已儲存"
AtrL["Tooltips"] = "滑鼠提示"
AtrL["Total Price"] = "總價"
AtrL["trade volume"] = "交易量" --?
AtrL["Uncommon items"] = "優秀物品"
AtrL["Uncommon"] = "優秀"
AtrL["Undercut by"] = "壓價金額:"
AtrL["undercutting configuration saved"] = "最低價選項已儲存"
AtrL["Undercutting"] = "最低價"
AtrL["unknown"] = "未知"
AtrL["unrecognized command"] = "未知指令"
AtrL["Vendor"] = "售價"
AtrL["Version"] = "版本"
AtrL["when ALT is held down"] = "當按下Alt鍵時"
AtrL["when CONTROL is held down"] = "當按下Ctrl鍵時"
AtrL["When SHIFT is down show"] = "當按下Shift鍵時顯示..."
AtrL["when SHIFT is held down"] = "當按下Shift鍵時"
AtrL["Wowecon global price"] = ""
AtrL["Wowecon server price"] = ""
AtrL["Yesterday"] = "昨天"
AtrL["You can buy at most %d auctions"] = "你最多可購入 %d 項拍賣物品"
AtrL["You can create at most %d auctions"] = "你最多可建立 %d 項拍賣物品"
AtrL["You can stack at most %d of these items"] = "此物品最多可設定 %d 堆疊量"
AtrL["You do not have enough gold\n\nto make any more purchases."] = "你身上的金錢不足以購買更多拍賣物品"
AtrL["You may have at most 40 single-stack (x1)\nauctions posted for this item.\n\nYou already have %d such auctions and\nyou are trying to post %d more."] = "你最多可建立 40 項 1 堆疊量的相同物品\n\n你已有 %d 項此物品的拍賣，試圖再建立 %d 項"
AtrL["You may have no more than\n\n%d items on a shopping list."] = "物品清單最多可設定 %d 物品"
AtrL["your auction on"] = "你拍賣於"
AtrL["your most recent posting"] = "你最近的拍賣"
AtrL["yours"] = "你的"


end
