local L = LibStub("AceLocale-3.0"):NewLocale("NameplateAuras", "koKR");
L = L or {}
--@non-debug@
L["< 1min"] = "< 1분"
L["< 5sec"] = "< 5초"
L["> 1min"] = "> 1분"
L["Add new spell: "] = "새로운 주문 추가하기:"
L["Add spell"] = "주문 추가"
L["All auras"] = "모든 효과"
L["Always display icons at full opacity (ReloadUI is required)"] = "완전 불투명하게 아이콘을 표시합니다 (UI 재시작 필요)."
L["Always show auras cast by myself"] = "내가 시전한 효과 항상 보이기"
L["Anchor point"] = "포인트 기준점"
L["Anchor to icon"] = "아이콘 기준점"
--[[Translation missing --]]
L["Any"] = "Any"
L["Aura type"] = "오라 종류"
L["Border thickness"] = "테두리 두께"
L["BOTTOM"] = "하단"
L["BOTTOMLEFT"] = "좌측 하단"
L["BOTTOMRIGHT"] = "우측 하단"
L["Buff"] = "버프"
L["By aura type (de/buff) + expire time"] = "버프 유형 (디 / 버프) + 만료 시간"
L["By expire time, ascending"] = "만료 시간, 오름차순"
L["By expire time, descending"] = "만료 시간, 내림차순"
L["By icon size, ascending"] = "아이콘 크기에 따라 오름차순"
L["By icon size, descending"] = "아이콘 크기에 따라 내림차순"
L["CENTER"] = "중앙"
L["Check spell ID"] = "주문 ID 확인"
--[[Translation missing --]]
L["Circular"] = "Circular"
--[[Translation missing --]]
L["Circular with OmniCC support"] = "Circular with OmniCC support"
--[[Translation missing --]]
L["Circular with timer"] = "Circular with timer"
L["Click to select spell"] = "주문을 선택하려면 클릭"
L["Curse"] = "저주"
L["Debuff"] = "디버프"
L["Default icon size"] = "기본 아이콘 크기"
L["Delete all spells"] = "모든 주문 삭제"
L["Delete spell"] = "주문 삭제"
L["Disabled"] = "비활성화 됨"
L["Disease"] = "질병"
L["Display auras on nameplates of friendly units"] = "아군 유닛들의 이름표에 효과들 표시하기"
L["Display auras on player's nameplate"] = "플레이어의 이름표에 효과들 표시하기"
L["Display tenths of seconds"] = "10분의 1초 단위까지 표시하기"
L["Do you really want to delete ALL spells?"] = "정말 모든 스킬을 삭제하실 건가요?"
L["Font"] = "글씨체"
L["Font scale"] = "글씨체 크기"
L["Font size"] = "글씨체 크기"
L["Frame anchor:"] = "프레임 기준점:"
L["General"] = "일반"
L["Icon anchor:"] = "아이콘 기준점:"
L["Icon borders"] = "아이콘 테두리"
L["Icon size"] = "아이콘 크기"
L["Icon X-coord offset"] = "아이콘 X좌표"
L["Icon Y-coord offset"] = "아이콘 Y좌표"
L["LEFT"] = "왼쪽"
L["Magic"] = "마법"
L["Mode"] = "모드"
L["No"] = "아니요"
L["None"] = "없음"
L["Only my auras"] = "오직 내 오라"
L["Open profiles dialog"] = "프로필 파일 대화 상자 열기"
L["Options are not available in combat!"] = "전투 중에는 옵션을 사용할 수 없습니다!"
--[[Translation missing --]]
L["options:apps:explosive-orbs:tooltip"] = [=[Show special aura above Fel Explosive's nameplates (M+ Explosive Affix)
This aura have a bright glow and default size]=]
--[[Translation missing --]]
L["options:aura-options:allow-multiple-instances"] = "Allow multiple instances of this aura"
--[[Translation missing --]]
L["options:aura-options:allow-multiple-instances:tooltip"] = [=[If this option is checked, you will see all instances of this aura, even on the same nameplate.
Otherwise you will see only one instance of this aura (the longest one)]=]
L["options:auras:add-new-spell:error1"] = [=[주문 ID 대신 주문 이름을 입력해야합니다. 
주문 ID로 주문을 찾을려면 "%s" 옵션을 사용하십시오.]=]
L["options:auras:enabled-state:tooltip"] = [=[사용/비사용 오라
%s: 오라 보지 않기
%s: 내가 시전한 오라만 보기 
%s: 모두 보기]=]
L["options:auras:enabled-state-all"] = "사용, 모든 오라 표시"
L["options:auras:enabled-state-mineonly"] = "사용, 내 오라만 표시"
L["options:auras:pvp-state-dontshowinpvp"] = "PVP 전투중 오라 표시 안함."
L["options:auras:pvp-state-indefinite"] = "PVP 전투중 오라 표시"
L["options:auras:pvp-state-onlyduringpvpbattles"] = "PVP 전투에서만 오라 표시"
L["options:category:apps"] = "앱"
L["options:category:interrupts"] = "방해"
--[[Translation missing --]]
L["options:category:size-and-position"] = "Size & position"
L["options:general:always-show-my-auras:tooltip"] = [=[이것은 최우선 순위 필터입니다.
이 기능을 사용하면 다른 필터와 관계없이 오라가 표시됩니다]=]
--[[Translation missing --]]
L["options:general:error-omnicc-is-not-loaded"] = "You cannot select this option because OmniCC is not loaded!"
L["options:general:hide-blizz-frames"] = "블리자드 프레임 숨기기 (UI 재시작 필요)"
--[[Translation missing --]]
L["options:general:hide-player-blizz-frame"] = "Hide Blizzard's aura frames on player"
--[[Translation missing --]]
L["options:general:show-aura-tooltip"] = "Show aura name when mouse is over auras icon"
--[[Translation missing --]]
L["options:general:test-mode"] = "Test mode on/off"
--[[Translation missing --]]
L["options:general:use-dim-glow"] = "Weak glow of icons"
--[[Translation missing --]]
L["options:general:use-dim-glow:tooltip"] = [=[If this option is selected you will not see constant inner and outer glow of the icons
(this option is valid only for those spells for which you explicitly turned on the glow of icons)]=]
L["options:interrupts:enable-interrupts"] = "방해 추적 활성화"
L["options:interrupts:enable-only-during-pvp-battles"] = "PVP 전투에서만 사용 가능"
L["options:interrupts:glow"] = "아이콘 반짝임"
L["options:interrupts:icon-size"] = "아이콘 크기"
L["options:interrupts:use-shared-icon-texture"] = "모든 방해 주문에 동일한 텍스처 사용"
L["options:selector:search"] = "검색:"
--[[Translation missing --]]
L["options:spells:appropriate-spell-ids"] = "Appropriate spell IDs:"
--[[Translation missing --]]
L["options:spells:disable-all-spells"] = "Disable all spells"
--[[Translation missing --]]
L["options:spells:enable-all-spells"] = "Enable all spells"
L["options:spells:icon-glow"] = "반짝임 보기"
L["options:spells:icon-glow-always"] = "항상 반짝임"
--[[Translation missing --]]
L["options:spells:icon-glow-threshold"] = "Show glow if aura's remaining time is less than"
--[[Translation missing --]]
L["options:spells:please-push-once-more"] = "Please push once more"
L["options:spells:show-on-friends:warning0"] = [=[주의하십시오 : 
이 옵션을 사용 가능 할 때까지 nameplates에 이 오라를 볼 수 없습니다 : 
<일반> -> <아군 유닛의 nameplates에 오라를 표시하십시오>]=]
--[[Translation missing --]]
L["options:timer-text:min-duration-to-display-tenths-of-seconds"] = "Minimum duration to display tenths of seconds"
L["options:timer-text:scale-font-size"] = "아이콘 크기에 따라 글꼴 크기 조정"
L["options:timer-text:text-color-note"] = "남은 시간에 따라 텍스트 색상이 변경됩니다."
L["Other"] = "기타"
L["Please reload UI to apply changes"] = "변경점을 적용하려면 UI를 재시작 해주세요"
L["Poison"] = "독"
L["Profiles"] = "프로필"
L["Reload UI"] = "UI 새로고침"
L["RIGHT"] = "오른쪽"
L["Show border around buff icons"] = "이로운 효과 아이콘의 테두리 표시하기"
L["Show border around debuff icons"] = "해로운 효과 아이콘의 테두리 표시하기"
L["Show this aura on nameplates of allies"] = "이 효과를 아군 이름표에 표시하기"
L["Show this aura on nameplates of enemies"] = "이 효과를 적 이름표에 표시하기"
L["Sort mode:"] = "정렬 방식:"
L["Space between icons"] = "아이콘 간 거리"
L["Spell already exists (%s)"] = "주문이 이미 존재합니다. (%s)"
L["Spell seems to be nonexistent"] = "주문이 존재하지 않습니다"
L["Spells"] = "주문"
--[[Translation missing --]]
L["Stack text"] = "Stack text"
L["Text"] = "텍스트"
L["Text color"] = "텍스트 색상"
L["Texture with timer"] = "타이머가 있는 텍스처"
L["Timer style:"] = "타이머 스타일 :"
L["Timer text"] = "타이머 텍스트"
L["TOP"] = "상단"
L["TOPLEFT"] = "좌측 상단"
L["TOPRIGHT"] = "우측 상단"
L["Unknown spell: %s"] = "알 수없는 주문: %s"
L["Value must be a number"] = "값은 숫자여야 합니다."
L["X offset"] = "X 좌표 위치"
L["Y offset"] = "Y 좌표 위치"
L["Yes"] = "예"

--@end-non-debug@
