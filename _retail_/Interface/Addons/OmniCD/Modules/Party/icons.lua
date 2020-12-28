local E, L, C = select(2, ...):unpack()

local P = E["Party"]

local sortPriority = function(a, b)
	local aprio, bprio = E.db.priority[a.type], E.db.priority[b.type]
	if aprio == bprio then
		return a.spellID < b.spellID
	end
	return aprio > bprio
end

function P:SetIconLayout(f, sortOrder)
	if sortOrder then
		sort(f.icons, sortPriority)
	end

	local count, rows, numActive, lastActiveIndex = 0, 1, 1

	for i = 1, f.numIcons do
		local icon = f.icons[i]

		icon:Hide()

		if self.displayInactive or icon.active then
			icon:ClearAllPoints()
			if numActive > 1 then
				count = count + 1
				if not self.doubleRow and count == self.columns or (self.doubleRow and rows == 1 and E.db.priority[icon.type] <= self.breakPoint) then
					icon:SetPoint(self.point, f.container, self.ofsX * rows, self.ofsY * rows)
					count = 0
					rows = rows + 1
				else
					icon:SetPoint(self.point2, f.icons[lastActiveIndex], self.relativePoint2, self.ofsX2, self.ofsY2)
				end
			else
				if self.doubleRow and E.db.priority[icon.type] <= self.breakPoint then
					icon:SetPoint(self.point, f.container, self.ofsX * rows, self.ofsY * rows)
					rows = rows + 1
				else
					icon:SetPoint(self.point, f.container)
				end
			end
			numActive = numActive + 1
			lastActiveIndex = i

			icon:Show()
		end
	end
end

--[[
function P:SetIconLayout(f, sortOrder)
	if sortOrder then
		sort(f.icons, sortPriority)
	end

	local count, rows, numActive, lastActiveIndex = 0, 1, 1

	local isDoubleRow = self.doubleRow
	local isDoubleRowOpt = isDoubleRow and E.db.icons.secondRowEnabled
	if isDoubleRow then
		f.bottomRow:ClearAllPoints()
		f.bottomRow:SetPoint(self.point, f.container, 0, self.ofsY)
	end

	for i = 1, f.numIcons do
		local icon = f.icons[i]
		icon:Hide()

		if self.displayInactive or icon.active then
			icon:ClearAllPoints()
			if numActive > 1 then
				count = count + 1
				if not isDoubleRow and count == self.columns or (isDoubleRow and rows == 1 and E.db.priority[icon.type] <= self.breakPoint) then
					if isDoubleRowOpt then
						icon:SetParent(f.bottomRow.container)
						icon:SetPoint(self.point, f.bottomRow.container)
					else
						icon:SetParent(f.container)
						icon:SetPoint(self.point, f.container, self.ofsX * rows, self.ofsY * rows)
					end
					count = 0
					rows = rows + 1
				else
					if isDoubleRowOpt and rows > 1 then
						icon:SetParent(f.bottomRow.container)
					else
						icon:SetParent(f.container)
					end
					icon:SetPoint(self.point2, f.icons[lastActiveIndex], self.relativePoint2, self.ofsX2, self.ofsY2)
				end
			else
				if isDoubleRow and E.db.priority[icon.type] <= self.breakPoint then
					if isDoubleRowOpt then
						icon:SetParent(f.bottomRow.container)
						icon:SetPoint(self.point, f.bottomRow.container)
					else
						icon:SetParent(f.container)
						icon:SetPoint(self.point, f.container, self.ofsX * rows, self.ofsY * rows)
					end
					rows = rows + 1
				else
					icon:SetParent(f.container)
					icon:SetPoint(self.point, f.container)
				end
			end
			numActive = numActive + 1
			lastActiveIndex = i

			icon:Show()
		end
	end
end
]]

function P:SetAnchor(f)
	if E.db.general.showAnchor or (E.db.position.detached and not E.db.position.locked) then
		f.anchor:Show()
	else
		f.anchor:Hide()
	end

	if not E.db.position.detached or E.db.position.locked then
		f.anchor:EnableMouse(false)
		f.anchor.background:SetColorTexture(0, 0, 0, 1)
	else
		f.anchor:EnableMouse(true)
		f.anchor.background:SetColorTexture(0, 0.8, 0, 1)
	end
end

function P:SetIconScale(f)
	local db = E.db.icons
	local scale = db.scale
	f.anchor:SetScale(math.min(math.max(0.7, scale), 1))
	f.container:SetScale(scale)

	--[[
	if self.doubleRow and db.secondRowEnabled then
		f.bottomRow.container:SetScale(db.secondRowScale)
	end
	]]
end

function P:SetBorder(icon)
	local db = E.db.icons
	if db.displayBorder then
		--[[
		local isModRow = self.doubleRow and db.secondRowEnabled and E.db.priority[icon.type] <= self.breakPoint
		if isModRow and db.secondRowCropped then
			icon:SetHeight(24)
			icon.icon:SetTexCoord(0.05, 0.95, 0.1, 0.6)
			icon.isCropped = true
		else
			icon:SetHeight(36)
			icon.icon:SetTexCoord(0.07, 0.93, 0.07, 0.93)
			icon.isCropped = nil
		end
		]]
		icon.icon:SetTexCoord(0.07, 0.93, 0.07, 0.93)

		icon.borderTop:ClearAllPoints()
		icon.borderBottom:ClearAllPoints()
		icon.borderRight:ClearAllPoints()
		icon.borderLeft:ClearAllPoints()

		--[[
		local edgeSize = db.borderPixels * E.NumPixels / (isModRow and db.secondRowScale * db.scale or db.scale)
		]]
		local edgeSize = db.borderPixels * E.NumPixels / db.scale
		icon.borderTop:SetPoint("TOPLEFT", icon, "TOPLEFT")
		icon.borderTop:SetPoint("BOTTOMRIGHT", icon, "TOPRIGHT", 0, -edgeSize)
		icon.borderBottom:SetPoint("BOTTOMLEFT", icon, "BOTTOMLEFT")
		icon.borderBottom:SetPoint("TOPRIGHT", icon, "BOTTOMRIGHT", 0, edgeSize)
		icon.borderLeft:SetPoint("TOPLEFT", icon, "TOPLEFT")
		icon.borderLeft:SetPoint("BOTTOMRIGHT", icon, "BOTTOMLEFT", edgeSize, 0)
		icon.borderRight:SetPoint("TOPRIGHT", icon, "TOPRIGHT")
		icon.borderRight:SetPoint("BOTTOMLEFT", icon, "BOTTOMRIGHT", -edgeSize, 0)

		local r, g, b = db.borderColor.r, db.borderColor.g, db.borderColor.b
		icon.borderTop:SetColorTexture(r, g, b)
		icon.borderBottom:SetColorTexture(r, g, b)
		icon.borderRight:SetColorTexture(r, g, b)
		icon.borderLeft:SetColorTexture(r, g, b)

		icon.borderTop:Show()
		icon.borderBottom:Show()
		icon.borderRight:Show()
		icon.borderLeft:Show()
	else
		icon.borderTop:Hide()
		icon.borderBottom:Hide()
		icon.borderRight:Hide()
		icon.borderLeft:Hide()

		--[[
		icon:SetHeight(36)
		icon.icon:SetTexCoord(0, 1, 0, 1)
		icon.isCropped = nil
		]]
		icon.icon:SetTexCoord(0, 1, 0, 1)
	end
end

function P:SetMarker(icon)
	local hotkey = icon.HotKey
	if E.db.icons.markEnhanced then
		local spellID = icon.spellID
		local mark = E.spell_marked[spellID] or E.db.highlight.markedSpells[spellID]
		if mark and (mark == true or self:IsTalent(mark, icon.guid)) then
			hotkey:SetText(RANGE_INDICATOR)
			hotkey:SetTextColor(0, 0.8, 0) -- 2.5.6
			hotkey:Show()
		else
			hotkey:Hide()
		end
	else
		hotkey:Hide()
	end
end

function P:SetAlpha(icon)
	if icon.statusBar and not E.db.extraBars[icon.statusBar.key].useIconAlpha then
		icon:SetAlpha(1.0)
	else
		icon:SetAlpha(icon.active and E.db.icons.activeAlpha or E.db.icons.inactiveAlpha)
	end

	local charges = icon.maxcharges and tonumber(icon.Count:GetText())
	icon.icon:SetDesaturated(E.db.icons.desaturateActive and icon.active and not icon.overlay and (not charges or charges == 0));
end

function P:SetSwipe(icon)
	if icon.statusBar then
		icon.cooldown:SetSwipeColor(0, 0, 0, 0)
	else
		icon.cooldown:SetReverse(E.db.icons.reverse)
		icon.cooldown:SetSwipeColor(0, 0, 0, E.db.icons.swipeAlpha)
	end
end

function P:SetCounter(icon)
	if icon.statusBar then
		icon.cooldown:SetHideCountdownNumbers(true)
	else
		local charges = icon.maxcharges and tonumber(icon.Count:GetText())
		local noCount = charges and charges > 0 or (icon.overlay and true) or not E.db.icons.showCounter
		icon.cooldown:SetHideCountdownNumbers(noCount) -- [11]
		icon.counter:SetScale(E.db.icons.counterScale)
	end
end

function P:SetChargeScale(icon)
	icon.Count:SetScale(E.db.icons.chargeScale)
end

function P:SetTooltip(icon)
	icon:EnableMouse(E.db.icons.showTooltip)
end

function P:ApplySettings(f)
	self:SetAnchor(f)
	self:SetIconScale(f)

	for i = 1, f.numIcons do
		local icon = f.icons[i]
		self:SetBorder(icon)
		self:SetMarker(icon)
		self:SetAlpha(icon)
		self:SetSwipe(icon)
		self:SetCounter(icon)
		self:SetChargeScale(icon)
		self:SetTooltip(icon)
	end
end
