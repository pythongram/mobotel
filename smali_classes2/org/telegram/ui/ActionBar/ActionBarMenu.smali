.class public Lorg/telegram/ui/ActionBar/ActionBarMenu;
.super Landroid/widget/LinearLayout;
.source "ActionBarMenu.java"


# instance fields
.field protected isActionMode:Z

.field protected parentActionBar:Lorg/telegram/ui/ActionBar/ActionBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/ActionBar;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layer"    # Lorg/telegram/ui/ActionBar/ActionBar;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 28
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->setOrientation(I)V

    .line 29
    iput-object p2, p0, Lorg/telegram/ui/ActionBar/ActionBarMenu;->parentActionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 30
    return-void
.end method


# virtual methods
.method public addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    .registers 4
    .param p1, "id"    # I
    .param p2, "icon"    # I

    .prologue
    .line 61
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenu;->isActionMode:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenu;->parentActionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget v0, v0, Lorg/telegram/ui/ActionBar/ActionBar;->itemsActionModeBackgroundColor:I

    :goto_8
    invoke-virtual {p0, p1, p2, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(III)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    return-object v0

    :cond_d
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenu;->parentActionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget v0, v0, Lorg/telegram/ui/ActionBar/ActionBar;->itemsBackgroundColor:I

    goto :goto_8
.end method

.method public addItem(III)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    .registers 10
    .param p1, "id"    # I
    .param p2, "icon"    # I
    .param p3, "backgroundColor"    # I

    .prologue
    .line 65
    const/4 v4, 0x0

    const/high16 v0, 0x42400000    # 48.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(IIILandroid/graphics/drawable/Drawable;I)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    return-object v0
.end method

.method public addItem(IIILandroid/graphics/drawable/Drawable;I)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    .registers 9
    .param p1, "id"    # I
    .param p2, "icon"    # I
    .param p3, "backgroundColor"    # I
    .param p4, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p5, "width"    # I

    .prologue
    .line 73
    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-boolean v1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenu;->isActionMode:Z

    if-eqz v1, :cond_31

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenu;->parentActionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget v1, v1, Lorg/telegram/ui/ActionBar/ActionBar;->itemsActionModeColor:I

    :goto_e
    invoke-direct {v0, v2, p0, p3, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/ActionBarMenu;II)V

    .line 74
    .local v0, "menuItem":Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setTag(Ljava/lang/Object;)V

    .line 75
    if-eqz p4, :cond_36

    .line 76
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v1, p4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 80
    :goto_1f
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, p5, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 81
    new-instance v1, Lorg/telegram/ui/ActionBar/ActionBarMenu$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ActionBar/ActionBarMenu$1;-><init>(Lorg/telegram/ui/ActionBar/ActionBarMenu;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    return-object v0

    .line 73
    .end local v0    # "menuItem":Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    :cond_31
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenu;->parentActionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget v1, v1, Lorg/telegram/ui/ActionBar/ActionBar;->itemsColor:I

    goto :goto_e

    .line 78
    .restart local v0    # "menuItem":Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    :cond_36
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1f
.end method

.method public addItem(ILandroid/graphics/drawable/Drawable;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    .registers 9
    .param p1, "id"    # I
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 57
    const/4 v2, 0x0

    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenu;->isActionMode:Z

    if-eqz v0, :cond_17

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenu;->parentActionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget v3, v0, Lorg/telegram/ui/ActionBar/ActionBar;->itemsActionModeBackgroundColor:I

    :goto_9
    const/high16 v0, 0x42400000    # 48.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    move-object v0, p0

    move v1, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(IIILandroid/graphics/drawable/Drawable;I)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    return-object v0

    :cond_17
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenu;->parentActionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget v3, v0, Lorg/telegram/ui/ActionBar/ActionBar;->itemsBackgroundColor:I

    goto :goto_9
.end method

.method public addItemWithWidth(III)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    .registers 10
    .param p1, "id"    # I
    .param p2, "icon"    # I
    .param p3, "width"    # I

    .prologue
    .line 69
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenu;->isActionMode:Z

    if-eqz v0, :cond_12

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenu;->parentActionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget v3, v0, Lorg/telegram/ui/ActionBar/ActionBar;->itemsActionModeBackgroundColor:I

    :goto_8
    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(IIILandroid/graphics/drawable/Drawable;I)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    return-object v0

    :cond_12
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenu;->parentActionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget v3, v0, Lorg/telegram/ui/ActionBar/ActionBar;->itemsBackgroundColor:I

    goto :goto_8
.end method

.method public clearItems()V
    .registers 1

    .prologue
    .line 138
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->removeAllViews()V

    .line 139
    return-void
.end method

.method public closeSearchField()V
    .registers 7

    .prologue
    .line 162
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->getChildCount()I

    move-result v1

    .line 163
    .local v1, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_5
    if-ge v0, v1, :cond_22

    .line 164
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 165
    .local v3, "view":Landroid/view/View;
    instance-of v4, v3, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v4, :cond_23

    move-object v2, v3

    .line 166
    check-cast v2, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 167
    .local v2, "item":Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->isSearchField()Z

    move-result v4

    if-eqz v4, :cond_23

    .line 168
    iget-object v4, p0, Lorg/telegram/ui/ActionBar/ActionBarMenu;->parentActionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->toggleSearch(Z)Z

    move-result v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->onSearchFieldVisibilityChanged(Z)V

    .line 173
    .end local v2    # "item":Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    .end local v3    # "view":Landroid/view/View;
    :cond_22
    return-void

    .line 163
    .restart local v3    # "view":Landroid/view/View;
    :cond_23
    add-int/lit8 v0, v0, 0x1

    goto :goto_5
.end method

.method public getItem(I)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    .registers 4
    .param p1, "id"    # I

    .prologue
    .line 212
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 213
    .local v0, "v":Landroid/view/View;
    instance-of v1, v0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v1, :cond_f

    .line 214
    check-cast v0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 216
    .end local v0    # "v":Landroid/view/View;
    :goto_e
    return-object v0

    .restart local v0    # "v":Landroid/view/View;
    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public hideAllPopupMenus()V
    .registers 5

    .prologue
    .line 100
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->getChildCount()I

    move-result v1

    .line 101
    .local v1, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_5
    if-ge v0, v1, :cond_17

    .line 102
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 103
    .local v2, "view":Landroid/view/View;
    instance-of v3, v2, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v3, :cond_14

    .line 104
    check-cast v2, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .end local v2    # "view":Landroid/view/View;
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->closeSubMenu()V

    .line 101
    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 107
    :cond_17
    return-void
.end method

.method public onItemClick(I)V
    .registers 3
    .param p1, "id"    # I

    .prologue
    .line 132
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenu;->parentActionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/ActionBar;->actionBarMenuOnItemClick:Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;

    if-eqz v0, :cond_d

    .line 133
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenu;->parentActionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/ActionBar;->actionBarMenuOnItemClick:Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;->onItemClick(I)V

    .line 135
    :cond_d
    return-void
.end method

.method public onMenuButtonPressed()V
    .registers 6

    .prologue
    .line 142
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->getChildCount()I

    move-result v1

    .line 143
    .local v1, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_5
    if-ge v0, v1, :cond_24

    .line 144
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 145
    .local v3, "view":Landroid/view/View;
    instance-of v4, v3, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v4, :cond_18

    move-object v2, v3

    .line 146
    check-cast v2, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 147
    .local v2, "item":Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_1b

    .line 143
    .end local v2    # "item":Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 150
    .restart local v2    # "item":Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    :cond_1b
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->hasSubMenu()Z

    move-result v4

    if-eqz v4, :cond_25

    .line 151
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->toggleSubMenu()V

    .line 159
    .end local v2    # "item":Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    .end local v3    # "view":Landroid/view/View;
    :cond_24
    :goto_24
    return-void

    .line 153
    .restart local v2    # "item":Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    .restart local v3    # "view":Landroid/view/View;
    :cond_25
    iget-boolean v4, v2, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->overrideMenuClick:Z

    if-eqz v4, :cond_18

    .line 154
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->onItemClick(I)V

    goto :goto_24
.end method

.method public openSearchField(ZLjava/lang/String;)V
    .registers 9
    .param p1, "toggle"    # Z
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 194
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->getChildCount()I

    move-result v1

    .line 195
    .local v1, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_5
    if-ge v0, v1, :cond_36

    .line 196
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 197
    .local v3, "view":Landroid/view/View;
    instance-of v4, v3, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v4, :cond_37

    move-object v2, v3

    .line 198
    check-cast v2, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 199
    .local v2, "item":Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->isSearchField()Z

    move-result v4

    if-eqz v4, :cond_37

    .line 200
    if-eqz p1, :cond_24

    .line 201
    iget-object v4, p0, Lorg/telegram/ui/ActionBar/ActionBarMenu;->parentActionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->toggleSearch(Z)Z

    move-result v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->onSearchFieldVisibilityChanged(Z)V

    .line 203
    :cond_24
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getSearchField()Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 204
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getSearchField()Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setSelection(I)V

    .line 209
    .end local v2    # "item":Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    .end local v3    # "view":Landroid/view/View;
    :cond_36
    return-void

    .line 195
    .restart local v3    # "view":Landroid/view/View;
    :cond_37
    add-int/lit8 v0, v0, 0x1

    goto :goto_5
.end method

.method protected redrawPopup(I)V
    .registers 7
    .param p1, "color"    # I

    .prologue
    .line 121
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->getChildCount()I

    move-result v1

    .line 122
    .local v1, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_5
    if-ge v0, v1, :cond_18

    .line 123
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 124
    .local v3, "view":Landroid/view/View;
    instance-of v4, v3, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v4, :cond_15

    move-object v2, v3

    .line 125
    check-cast v2, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 126
    .local v2, "item":Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    invoke-virtual {v2, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->redrawPopup(I)V

    .line 122
    .end local v2    # "item":Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 129
    .end local v3    # "view":Landroid/view/View;
    :cond_18
    return-void
.end method

.method protected setPopupItemsColor(I)V
    .registers 7
    .param p1, "color"    # I

    .prologue
    .line 110
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->getChildCount()I

    move-result v1

    .line 111
    .local v1, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_5
    if-ge v0, v1, :cond_18

    .line 112
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 113
    .local v3, "view":Landroid/view/View;
    instance-of v4, v3, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v4, :cond_15

    move-object v2, v3

    .line 114
    check-cast v2, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 115
    .local v2, "item":Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    invoke-virtual {v2, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setPopupItemsColor(I)V

    .line 111
    .end local v2    # "item":Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 118
    .end local v3    # "view":Landroid/view/View;
    :cond_18
    return-void
.end method

.method public setSearchTextColor(IZ)V
    .registers 8
    .param p1, "color"    # I
    .param p2, "placeholder"    # Z

    .prologue
    .line 176
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->getChildCount()I

    move-result v1

    .line 177
    .local v1, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_5
    if-ge v0, v1, :cond_21

    .line 178
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 179
    .local v3, "view":Landroid/view/View;
    instance-of v4, v3, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v4, :cond_2a

    move-object v2, v3

    .line 180
    check-cast v2, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 181
    .local v2, "item":Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->isSearchField()Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 182
    if-eqz p2, :cond_22

    .line 183
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getSearchField()Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 191
    .end local v2    # "item":Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    .end local v3    # "view":Landroid/view/View;
    :cond_21
    :goto_21
    return-void

    .line 185
    .restart local v2    # "item":Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    .restart local v3    # "view":Landroid/view/View;
    :cond_22
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getSearchField()Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/widget/EditText;->setTextColor(I)V

    goto :goto_21

    .line 177
    .end local v2    # "item":Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    :cond_2a
    add-int/lit8 v0, v0, 0x1

    goto :goto_5
.end method

.method protected updateItemsBackgroundColor()V
    .registers 5

    .prologue
    .line 37
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->getChildCount()I

    move-result v1

    .line 38
    .local v1, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_5
    if-ge v0, v1, :cond_26

    .line 39
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 40
    .local v2, "view":Landroid/view/View;
    instance-of v3, v2, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v3, :cond_1e

    .line 41
    iget-boolean v3, p0, Lorg/telegram/ui/ActionBar/ActionBarMenu;->isActionMode:Z

    if-eqz v3, :cond_21

    iget-object v3, p0, Lorg/telegram/ui/ActionBar/ActionBarMenu;->parentActionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget v3, v3, Lorg/telegram/ui/ActionBar/ActionBar;->itemsActionModeBackgroundColor:I

    :goto_17
    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 38
    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 41
    :cond_21
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/ActionBarMenu;->parentActionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget v3, v3, Lorg/telegram/ui/ActionBar/ActionBar;->itemsBackgroundColor:I

    goto :goto_17

    .line 44
    .end local v2    # "view":Landroid/view/View;
    :cond_26
    return-void
.end method

.method protected updateItemsColor()V
    .registers 5

    .prologue
    .line 47
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->getChildCount()I

    move-result v1

    .line 48
    .local v1, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_5
    if-ge v0, v1, :cond_24

    .line 49
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 50
    .local v2, "view":Landroid/view/View;
    instance-of v3, v2, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v3, :cond_1c

    .line 51
    check-cast v2, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .end local v2    # "view":Landroid/view/View;
    iget-boolean v3, p0, Lorg/telegram/ui/ActionBar/ActionBarMenu;->isActionMode:Z

    if-eqz v3, :cond_1f

    iget-object v3, p0, Lorg/telegram/ui/ActionBar/ActionBarMenu;->parentActionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget v3, v3, Lorg/telegram/ui/ActionBar/ActionBar;->itemsActionModeColor:I

    :goto_19
    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIconColor(I)V

    .line 48
    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 51
    :cond_1f
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/ActionBarMenu;->parentActionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget v3, v3, Lorg/telegram/ui/ActionBar/ActionBar;->itemsColor:I

    goto :goto_19

    .line 54
    :cond_24
    return-void
.end method
