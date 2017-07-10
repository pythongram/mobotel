.class public Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
.super Landroid/widget/FrameLayout;
.source "ActionBarMenuItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemDelegate;,
        Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;
    }
.end annotation


# static fields
.field private static layoutInScreenMethod:Ljava/lang/reflect/Method;


# instance fields
.field private allowCloseAnimation:Z

.field private clearButton:Landroid/widget/ImageView;

.field private delegate:Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemDelegate;

.field protected iconView:Landroid/widget/ImageView;

.field private isSearchField:Z

.field private layoutInScreen:Z

.field private listener:Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;

.field private location:[I

.field private menuHeight:I

.field protected overrideMenuClick:Z

.field private parentMenu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

.field private popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

.field private popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

.field private processedPopupClick:Z

.field private rect:Landroid/graphics/Rect;

.field private searchContainer:Landroid/widget/FrameLayout;

.field private searchField:Landroid/widget/EditText;

.field private selectedMenuView:Landroid/view/View;

.field private showFromBottom:Z

.field private showMenuRunnable:Ljava/lang/Runnable;

.field private subMenuOpenSide:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/ActionBarMenu;II)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menu"    # Lorg/telegram/ui/ActionBar/ActionBarMenu;
    .param p3, "backgroundColor"    # I
    .param p4, "iconColor"    # I

    .prologue
    const/4 v1, 0x0

    .line 94
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 77
    iput-boolean v1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->isSearchField:Z

    .line 84
    const/high16 v0, 0x41800000    # 16.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->menuHeight:I

    .line 85
    iput v1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->subMenuOpenSide:I

    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->allowCloseAnimation:Z

    .line 95
    if-eqz p3, :cond_1c

    .line 96
    invoke-static {p3}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 98
    :cond_1c
    iput-object p2, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->parentMenu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    .line 100
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->iconView:Landroid/widget/ImageView;

    .line 101
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->iconView:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 102
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->iconView:Landroid/widget/ImageView;

    const/4 v1, -0x1

    const/high16 v2, -0x40800000    # -1.0f

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 103
    if-eqz p4, :cond_46

    .line 104
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->iconView:Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, p4, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 106
    :cond_46
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .prologue
    .line 45
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    return-object v0
.end method

.method static synthetic access$100(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)Landroid/graphics/Rect;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .prologue
    .line 45
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->rect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$200(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .prologue
    .line 45
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->processedPopupClick:Z

    return v0
.end method

.method static synthetic access$202(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;Z)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    .param p1, "x1"    # Z

    .prologue
    .line 45
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->processedPopupClick:Z

    return p1
.end method

.method static synthetic access$300(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .prologue
    .line 45
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->allowCloseAnimation:Z

    return v0
.end method

.method static synthetic access$400(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)Lorg/telegram/ui/ActionBar/ActionBarMenu;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .prologue
    .line 45
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->parentMenu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    return-object v0
.end method

.method static synthetic access$500(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemDelegate;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .prologue
    .line 45
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->delegate:Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemDelegate;

    return-object v0
.end method

.method static synthetic access$600(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)Landroid/widget/EditText;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .prologue
    .line 45
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchField:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$700(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .prologue
    .line 45
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->listener:Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;

    return-object v0
.end method

.method static synthetic access$800(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)Landroid/widget/ImageView;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .prologue
    .line 45
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->clearButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method private updateOrShowPopup(ZZ)V
    .registers 15
    .param p1, "show"    # Z
    .param p2, "update"    # Z

    .prologue
    const/high16 v6, 0x41000000    # 8.0f

    const/4 v4, -0x1

    .line 550
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->showFromBottom:Z

    if-eqz v0, :cond_5b

    .line 551
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->location:[I

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getLocationOnScreen([I)V

    .line 552
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->location:[I

    const/4 v2, 0x1

    aget v0, v0, v2

    sget v2, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v0, v2

    iget v2, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->menuHeight:I

    sub-int v11, v0, v2

    .line 553
    .local v11, "diff":I
    iget v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->menuHeight:I

    neg-int v3, v0

    .line 554
    .local v3, "offsetY":I
    if-gez v11, :cond_23

    .line 555
    sub-int/2addr v3, v11

    .line 565
    .end local v11    # "diff":I
    :cond_23
    :goto_23
    if-eqz p1, :cond_2a

    .line 566
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->scrollToTop()V

    .line 569
    :cond_2a
    iget v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->subMenuOpenSide:I

    if-nez v0, :cond_108

    .line 570
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->showFromBottom:Z

    if-eqz v0, :cond_7b

    .line 571
    if-eqz p1, :cond_45

    .line 572
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getMeasuredWidth()I

    move-result v2

    neg-int v2, v2

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v2, v5

    invoke-virtual {v0, p0, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 574
    :cond_45
    if-eqz p2, :cond_5a

    .line 575
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getMeasuredWidth()I

    move-result v2

    neg-int v2, v2

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v2, v5

    move-object v1, p0

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->update(Landroid/view/View;IIII)V

    .line 604
    :cond_5a
    :goto_5a
    return-void

    .line 558
    .end local v3    # "offsetY":I
    :cond_5b
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->parentMenu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    if-eqz v0, :cond_75

    iget v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->subMenuOpenSide:I

    if-nez v0, :cond_75

    .line 559
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->parentMenu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/ActionBarMenu;->parentActionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->getMeasuredHeight()I

    move-result v0

    neg-int v0, v0

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->parentMenu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->getTop()I

    move-result v2

    add-int v3, v0, v2

    .restart local v3    # "offsetY":I
    goto :goto_23

    .line 561
    .end local v3    # "offsetY":I
    :cond_75
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getMeasuredHeight()I

    move-result v0

    neg-int v3, v0

    .restart local v3    # "offsetY":I
    goto :goto_23

    .line 578
    :cond_7b
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->parentMenu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    if-eqz v0, :cond_c1

    .line 579
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->parentMenu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/ActionBarMenu;->parentActionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 580
    .local v1, "parent":Landroid/view/View;
    if-eqz p1, :cond_a1

    .line 581
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getLeft()I

    move-result v2

    iget-object v5, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->parentMenu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->getLeft()I

    move-result v5

    add-int/2addr v2, v5

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v2, v5

    iget-object v5, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getMeasuredWidth()I

    move-result v5

    sub-int/2addr v2, v5

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 583
    :cond_a1
    if-eqz p2, :cond_5a

    .line 584
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getLeft()I

    move-result v2

    iget-object v5, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->parentMenu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->getLeft()I

    move-result v5

    add-int/2addr v2, v5

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v2, v5

    iget-object v5, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getMeasuredWidth()I

    move-result v5

    sub-int/2addr v2, v5

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->update(Landroid/view/View;IIII)V

    goto :goto_5a

    .line 586
    .end local v1    # "parent":Landroid/view/View;
    :cond_c1
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_5a

    .line 587
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 588
    .restart local v1    # "parent":Landroid/view/View;
    if-eqz p1, :cond_e9

    .line 589
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iget-object v5, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getMeasuredWidth()I

    move-result v5

    sub-int/2addr v2, v5

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getLeft()I

    move-result v5

    sub-int/2addr v2, v5

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v5

    sub-int/2addr v2, v5

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 591
    :cond_e9
    if-eqz p2, :cond_5a

    .line 592
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iget-object v5, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getMeasuredWidth()I

    move-result v5

    sub-int/2addr v2, v5

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getLeft()I

    move-result v5

    sub-int/2addr v2, v5

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v5

    sub-int/2addr v2, v5

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->update(Landroid/view/View;IIII)V

    goto/16 :goto_5a

    .line 597
    .end local v1    # "parent":Landroid/view/View;
    :cond_108
    if-eqz p1, :cond_114

    .line 598
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    neg-int v2, v2

    invoke-virtual {v0, p0, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 600
    :cond_114
    if-eqz p2, :cond_5a

    .line 601
    iget-object v5, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    neg-int v7, v0

    move-object v6, p0

    move v8, v3

    move v9, v4

    move v10, v4

    invoke-virtual/range {v5 .. v10}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->update(Landroid/view/View;IIII)V

    goto/16 :goto_5a
.end method


# virtual methods
.method public addSubItem(ILjava/lang/String;)Landroid/widget/TextView;
    .registers 9
    .param p1, "id"    # I
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    const/high16 v5, 0x41800000    # 16.0f

    const/4 v4, 0x0

    .line 212
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    if-nez v2, :cond_32

    .line 213
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->rect:Landroid/graphics/Rect;

    .line 214
    const/4 v2, 0x2

    new-array v2, v2, [I

    iput-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->location:[I

    .line 215
    new-instance v2, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    .line 216
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    new-instance v3, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$2;

    invoke-direct {v3, p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$2;-><init>(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 230
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    new-instance v3, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$3;

    invoke-direct {v3, p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$3;-><init>(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->setDispatchKeyEventListener(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$OnDispatchKeyEventListener;)V

    .line 239
    :cond_32
    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 240
    .local v1, "textView":Landroid/widget/TextView;
    const-string v2, "actionBarDefaultSubmenuItem"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 241
    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 242
    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v2, :cond_af

    .line 243
    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 247
    :goto_54
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {v1, v2, v4, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 248
    const/4 v2, 0x1

    const/high16 v3, 0x41900000    # 18.0f

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 249
    const/high16 v2, 0x43440000    # 196.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMinWidth(I)V

    .line 250
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 251
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 252
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    iget-boolean v3, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->showFromBottom:Z

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->setShowedFromBotton(Z)V

    .line 253
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;)V

    .line 254
    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 255
    .local v0, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_91

    .line 256
    const/4 v2, 0x5

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 258
    :cond_91
    const/4 v2, -0x1

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 259
    const/high16 v2, 0x42400000    # 48.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 260
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 262
    new-instance v2, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$4;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$4;-><init>(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 279
    iget v2, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->menuHeight:I

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    add-int/2addr v2, v3

    iput v2, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->menuHeight:I

    .line 280
    return-object v1

    .line 245
    .end local v0    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    :cond_af
    const/16 v2, 0x15

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_54
.end method

.method public closeSubMenu()V
    .registers 2

    .prologue
    .line 402
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 403
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss()V

    .line 405
    :cond_11
    return-void
.end method

.method public getImageView()Landroid/widget/ImageView;
    .registers 2

    .prologue
    .line 416
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->iconView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getSearchField()Landroid/widget/EditText;
    .registers 2

    .prologue
    .line 420
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchField:Landroid/widget/EditText;

    return-object v0
.end method

.method public hasSubMenu()Z
    .registers 2

    .prologue
    .line 304
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public hideSubItem(I)V
    .registers 5
    .param p1, "id"    # I

    .prologue
    .line 607
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 608
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_11

    .line 609
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 611
    :cond_11
    return-void
.end method

.method public isSearchField()Z
    .registers 2

    .prologue
    .line 527
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->isSearchField:Z

    return v0
.end method

.method protected onLayout(ZIIII)V
    .registers 8
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 542
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 543
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 544
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->updateOrShowPopup(ZZ)V

    .line 546
    :cond_14
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 12
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x0

    const/16 v9, 0x15

    const/4 v5, 0x1

    const/4 v8, 0x0

    .line 110
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    if-nez v4, :cond_34

    .line 111
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->hasSubMenu()Z

    move-result v4

    if-eqz v4, :cond_2f

    iget-object v4, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eqz v4, :cond_21

    iget-object v4, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eqz v4, :cond_2f

    iget-object v4, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->isShowing()Z

    move-result v4

    if-nez v4, :cond_2f

    .line 112
    :cond_21
    new-instance v4, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$1;

    invoke-direct {v4, p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$1;-><init>(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)V

    iput-object v4, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->showMenuRunnable:Ljava/lang/Runnable;

    .line 121
    iget-object v4, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->showMenuRunnable:Ljava/lang/Runnable;

    const-wide/16 v6, 0xc8

    invoke-static {v4, v6, v7}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 182
    :cond_2f
    :goto_2f
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    :goto_33
    return v4

    .line 123
    :cond_34
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    const/4 v6, 0x2

    if-ne v4, v6, :cond_10e

    .line 124
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->hasSubMenu()Z

    move-result v4

    if-eqz v4, :cond_70

    iget-object v4, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eqz v4, :cond_51

    iget-object v4, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eqz v4, :cond_70

    iget-object v4, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->isShowing()Z

    move-result v4

    if-nez v4, :cond_70

    .line 125
    :cond_51
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getHeight()I

    move-result v6

    int-to-float v6, v6

    cmpl-float v4, v4, v6

    if-lez v4, :cond_2f

    .line 126
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_6b

    .line 127
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    invoke-interface {v4, v5}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 129
    :cond_6b
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->toggleSubMenu()V

    move v4, v5

    .line 130
    goto :goto_33

    .line 132
    :cond_70
    iget-object v4, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eqz v4, :cond_2f

    iget-object v4, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 133
    iget-object v4, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->location:[I

    invoke-virtual {p0, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getLocationOnScreen([I)V

    .line 134
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iget-object v6, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->location:[I

    aget v6, v6, v8

    int-to-float v6, v6

    add-float v2, v4, v6

    .line 135
    .local v2, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iget-object v6, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->location:[I

    aget v6, v6, v5

    int-to-float v6, v6

    add-float v3, v4, v6

    .line 136
    .local v3, "y":F
    iget-object v4, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    iget-object v6, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->location:[I

    invoke-virtual {v4, v6}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getLocationOnScreen([I)V

    .line 137
    iget-object v4, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->location:[I

    aget v4, v4, v8

    int-to-float v4, v4

    sub-float/2addr v2, v4

    .line 138
    iget-object v4, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->location:[I

    aget v4, v4, v5

    int-to-float v4, v4

    sub-float/2addr v3, v4

    .line 139
    iput-object v7, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->selectedMenuView:Landroid/view/View;

    .line 140
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_ad
    iget-object v4, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getItemsCount()I

    move-result v4

    if-ge v0, v4, :cond_2f

    .line 141
    iget-object v4, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v4, v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getItemAt(I)Landroid/view/View;

    move-result-object v1

    .line 142
    .local v1, "child":Landroid/view/View;
    iget-object v4, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->rect:Landroid/graphics/Rect;

    invoke-virtual {v1, v4}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 143
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v6, 0x64

    if-ge v4, v6, :cond_e9

    .line 144
    iget-object v4, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->rect:Landroid/graphics/Rect;

    float-to-int v6, v2

    float-to-int v7, v3

    invoke-virtual {v4, v6, v7}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-nez v4, :cond_ec

    .line 145
    invoke-virtual {v1, v8}, Landroid/view/View;->setPressed(Z)V

    .line 146
    invoke-virtual {v1, v8}, Landroid/view/View;->setSelected(Z)V

    .line 147
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ne v4, v9, :cond_e9

    .line 148
    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4, v8, v8}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 140
    :cond_e9
    :goto_e9
    add-int/lit8 v0, v0, 0x1

    goto :goto_ad

    .line 151
    :cond_ec
    invoke-virtual {v1, v5}, Landroid/view/View;->setPressed(Z)V

    .line 152
    invoke-virtual {v1, v5}, Landroid/view/View;->setSelected(Z)V

    .line 153
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v9, :cond_10b

    .line 154
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ne v4, v9, :cond_101

    .line 155
    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4, v5, v8}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 157
    :cond_101
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v4

    int-to-float v4, v4

    sub-float v4, v3, v4

    invoke-virtual {v1, v2, v4}, Landroid/view/View;->drawableHotspotChanged(FF)V

    .line 159
    :cond_10b
    iput-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->selectedMenuView:Landroid/view/View;

    goto :goto_e9

    .line 164
    .end local v0    # "a":I
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "x":F
    .end local v3    # "y":F
    :cond_10e
    iget-object v4, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eqz v4, :cond_164

    iget-object v4, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_164

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    if-ne v4, v5, :cond_164

    .line 165
    iget-object v4, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->selectedMenuView:Landroid/view/View;

    if-eqz v4, :cond_15d

    .line 166
    iget-object v4, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->selectedMenuView:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->setSelected(Z)V

    .line 167
    iget-object v4, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->parentMenu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    if-eqz v4, :cond_147

    .line 168
    iget-object v5, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->parentMenu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    iget-object v4, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->selectedMenuView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v5, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->onItemClick(I)V

    .line 172
    :cond_13e
    :goto_13e
    iget-object v4, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    iget-boolean v5, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->allowCloseAnimation:Z

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss(Z)V

    goto/16 :goto_2f

    .line 169
    :cond_147
    iget-object v4, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->delegate:Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemDelegate;

    if-eqz v4, :cond_13e

    .line 170
    iget-object v5, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->delegate:Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemDelegate;

    iget-object v4, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->selectedMenuView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v5, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemDelegate;->onItemClick(I)V

    goto :goto_13e

    .line 174
    :cond_15d
    iget-object v4, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss()V

    goto/16 :goto_2f

    .line 177
    :cond_164
    iget-object v4, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->selectedMenuView:Landroid/view/View;

    if-eqz v4, :cond_2f

    .line 178
    iget-object v4, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->selectedMenuView:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->setSelected(Z)V

    .line 179
    iput-object v7, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->selectedMenuView:Landroid/view/View;

    goto/16 :goto_2f
.end method

.method public openSearch(Z)V
    .registers 4
    .param p1, "openKeyboard"    # Z

    .prologue
    .line 365
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchContainer:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->parentMenu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    if-nez v0, :cond_11

    .line 369
    :cond_10
    :goto_10
    return-void

    .line 368
    :cond_11
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->parentMenu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/ActionBarMenu;->parentActionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->toggleSearch(Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->onSearchFieldVisibilityChanged(Z)V

    goto :goto_10
.end method

.method protected redrawPopup(I)V
    .registers 5
    .param p1, "color"    # I

    .prologue
    .line 284
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    if-eqz v0, :cond_17

    .line 285
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, p1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 286
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->invalidate()V

    .line 288
    :cond_17
    return-void
.end method

.method public setActionBarMenuItemSearchListener(Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    .registers 2
    .param p1, "listener"    # Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;

    .prologue
    .line 531
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->listener:Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;

    .line 532
    return-object p0
.end method

.method public setAllowCloseAnimation(Z)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    .registers 2
    .param p1, "value"    # Z

    .prologue
    .line 536
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->allowCloseAnimation:Z

    .line 537
    return-object p0
.end method

.method public setDelegate(Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemDelegate;)V
    .registers 2
    .param p1, "delegate"    # Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemDelegate;

    .prologue
    .line 186
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->delegate:Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemDelegate;

    .line 187
    return-void
.end method

.method public setIcon(I)V
    .registers 3
    .param p1, "resId"    # I

    .prologue
    .line 408
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 409
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 412
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 413
    return-void
.end method

.method public setIconColor(I)V
    .registers 5
    .param p1, "color"    # I

    .prologue
    .line 197
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->iconView:Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, p1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 198
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->clearButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_1c

    .line 199
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->clearButton:Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, p1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 201
    :cond_1c
    return-void
.end method

.method public setIsSearchField(Z)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    .registers 15
    .param p1, "value"    # Z

    .prologue
    const/4 v12, 0x1

    const/4 v1, -0x1

    const/4 v11, 0x0

    const/4 v0, 0x0

    .line 429
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->parentMenu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    if-nez v2, :cond_9

    .line 523
    :goto_8
    return-object p0

    .line 432
    :cond_9
    if-eqz p1, :cond_114

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchContainer:Landroid/widget/FrameLayout;

    if-nez v2, :cond_114

    .line 433
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchContainer:Landroid/widget/FrameLayout;

    .line 434
    iget-object v7, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->parentMenu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    iget-object v10, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchContainer:Landroid/widget/FrameLayout;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x6

    move v4, v0

    move v5, v0

    move v6, v0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v7, v10, v0, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 435
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchContainer:Landroid/widget/FrameLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 437
    new-instance v2, Landroid/widget/EditText;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchField:Landroid/widget/EditText;

    .line 438
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchField:Landroid/widget/EditText;

    const/high16 v3, 0x41900000    # 18.0f

    invoke-virtual {v2, v12, v3}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 439
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchField:Landroid/widget/EditText;

    const-string v3, "actionBarDefaultSearchPlaceholder"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 440
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchField:Landroid/widget/EditText;

    const-string v3, "actionBarDefaultSearch"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setTextColor(I)V

    .line 441
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchField:Landroid/widget/EditText;

    invoke-virtual {v2, v12}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 442
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchField:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 443
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchField:Landroid/widget/EditText;

    invoke-virtual {v2, v0, v0, v0, v0}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 444
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchField:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getInputType()I

    move-result v2

    const/high16 v3, 0x80000

    or-int v8, v2, v3

    .line 445
    .local v8, "inputType":I
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchField:Landroid/widget/EditText;

    invoke-virtual {v2, v8}, Landroid/widget/EditText;->setInputType(I)V

    .line 446
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchField:Landroid/widget/EditText;

    new-instance v3, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$6;

    invoke-direct {v3, p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$6;-><init>(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    .line 463
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchField:Landroid/widget/EditText;

    new-instance v3, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$7;

    invoke-direct {v3, p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$7;-><init>(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 475
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchField:Landroid/widget/EditText;

    new-instance v3, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$8;

    invoke-direct {v3, p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$8;-><init>(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 498
    :try_start_96
    const-class v2, Landroid/widget/TextView;

    const-string v3, "mCursorDrawableRes"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v9

    .line 499
    .local v9, "mCursorDrawableRes":Ljava/lang/reflect/Field;
    const/4 v2, 0x1

    invoke-virtual {v9, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 500
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchField:Landroid/widget/EditText;

    const v3, 0x7f020242

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v9, v2, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_ae
    .catch Ljava/lang/Exception; {:try_start_96 .. :try_end_ae} :catch_118

    .line 504
    .end local v9    # "mCursorDrawableRes":Ljava/lang/reflect/Field;
    :goto_ae
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchField:Landroid/widget/EditText;

    const v3, 0x2000003

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 505
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchField:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setTextIsSelectable(Z)V

    .line 506
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchContainer:Landroid/widget/FrameLayout;

    iget-object v10, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchField:Landroid/widget/EditText;

    const/high16 v2, 0x42100000    # 36.0f

    const/16 v3, 0x10

    const/high16 v6, 0x42400000    # 48.0f

    move v4, v11

    move v5, v11

    move v7, v11

    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v10, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 508
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->clearButton:Landroid/widget/ImageView;

    .line 509
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->clearButton:Landroid/widget/ImageView;

    const v2, 0x7f020110

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 510
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->clearButton:Landroid/widget/ImageView;

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    iget-object v3, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->parentMenu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    iget-object v3, v3, Lorg/telegram/ui/ActionBar/ActionBarMenu;->parentActionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget v3, v3, Lorg/telegram/ui/ActionBar/ActionBar;->itemsColor:I

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 511
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->clearButton:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 512
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->clearButton:Landroid/widget/ImageView;

    new-instance v2, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$9;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$9;-><init>(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 520
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->clearButton:Landroid/widget/ImageView;

    const/16 v3, 0x30

    const/16 v4, 0x15

    invoke-static {v3, v1, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 522
    .end local v8    # "inputType":I
    :cond_114
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->isSearchField:Z

    goto/16 :goto_8

    .line 501
    .restart local v8    # "inputType":I
    :catch_118
    move-exception v2

    goto :goto_ae
.end method

.method public setLayoutInScreen(Z)V
    .registers 2
    .param p1, "value"    # Z

    .prologue
    .line 208
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->layoutInScreen:Z

    .line 209
    return-void
.end method

.method public setOverrideMenuClick(Z)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    .registers 2
    .param p1, "value"    # Z

    .prologue
    .line 424
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->overrideMenuClick:Z

    .line 425
    return-object p0
.end method

.method public setPopupItemsColor(I)V
    .registers 6
    .param p1, "color"    # I

    .prologue
    .line 291
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    if-nez v3, :cond_5

    .line 301
    :cond_4
    return-void

    .line 294
    :cond_5
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    iget-object v3, v3, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    .line 295
    .local v2, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_e
    if-ge v0, v2, :cond_4

    .line 296
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    iget-object v3, v3, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 297
    .local v1, "child":Landroid/view/View;
    instance-of v3, v1, Landroid/widget/TextView;

    if-eqz v3, :cond_21

    .line 298
    check-cast v1, Landroid/widget/TextView;

    .end local v1    # "child":Landroid/view/View;
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 295
    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_e
.end method

.method public setShowFromBottom(Z)V
    .registers 4
    .param p1, "value"    # Z

    .prologue
    .line 190
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->showFromBottom:Z

    .line 191
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    if-eqz v0, :cond_d

    .line 192
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    iget-boolean v1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->showFromBottom:Z

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->setShowedFromBotton(Z)V

    .line 194
    :cond_d
    return-void
.end method

.method public setSubMenuOpenSide(I)V
    .registers 2
    .param p1, "side"    # I

    .prologue
    .line 204
    iput p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->subMenuOpenSide:I

    .line 205
    return-void
.end method

.method public showSubItem(I)V
    .registers 5
    .param p1, "id"    # I

    .prologue
    .line 614
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 615
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_10

    .line 616
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 618
    :cond_10
    return-void
.end method

.method public toggleSearch(Z)Z
    .registers 5
    .param p1, "openKeyboard"    # Z

    .prologue
    const/16 v2, 0x8

    const/4 v0, 0x0

    .line 372
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchContainer:Landroid/widget/FrameLayout;

    if-nez v1, :cond_8

    .line 397
    :cond_7
    :goto_7
    return v0

    .line 375
    :cond_8
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_3c

    .line 376
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->listener:Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;

    if-eqz v1, :cond_20

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->listener:Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->listener:Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;->canCollapseSearch()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 377
    :cond_20
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 378
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchField:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    .line 379
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setVisibility(I)V

    .line 380
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchField:Landroid/widget/EditText;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 381
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->listener:Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;

    if-eqz v1, :cond_7

    .line 382
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->listener:Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;->onSearchCollapse()V

    goto :goto_7

    .line 387
    :cond_3c
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 388
    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setVisibility(I)V

    .line 389
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchField:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 390
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchField:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 391
    if-eqz p1, :cond_57

    .line 392
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchField:Landroid/widget/EditText;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)V

    .line 394
    :cond_57
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->listener:Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;

    if-eqz v0, :cond_60

    .line 395
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->listener:Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;->onSearchExpand()V

    .line 397
    :cond_60
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public toggleSubMenu()V
    .registers 11

    .prologue
    const/4 v3, -0x2

    const/high16 v9, -0x80000000

    const/high16 v8, 0x447a0000    # 1000.0f

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 308
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    if-nez v1, :cond_c

    .line 362
    :goto_b
    return-void

    .line 311
    :cond_c
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->showMenuRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_18

    .line 312
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->showMenuRunnable:Ljava/lang/Runnable;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 313
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->showMenuRunnable:Ljava/lang/Runnable;

    .line 315
    :cond_18
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eqz v1, :cond_2a

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 316
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss()V

    goto :goto_b

    .line 319
    :cond_2a
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-nez v1, :cond_b5

    .line 320
    new-instance v1, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-direct {v1, v2, v3, v3}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    .line 321
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_ce

    .line 322
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v1, v7}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->setAnimationStyle(I)V

    .line 326
    :goto_42
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v1, v6}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->setOutsideTouchable(Z)V

    .line 327
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v1, v6}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->setClippingEnabled(Z)V

    .line 328
    iget-boolean v1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->layoutInScreen:Z

    if-eqz v1, :cond_7e

    .line 330
    :try_start_50
    sget-object v1, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->layoutInScreenMethod:Ljava/lang/reflect/Method;

    if-nez v1, :cond_6c

    .line 331
    const-class v1, Landroid/widget/PopupWindow;

    const-string v2, "setLayoutInScreenEnabled"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->layoutInScreenMethod:Ljava/lang/reflect/Method;

    .line 332
    sget-object v1, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->layoutInScreenMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 334
    :cond_6c
    sget-object v1, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->layoutInScreenMethod:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_7e} :catch_d8

    .line 339
    :cond_7e
    :goto_7e
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->setInputMethodMode(I)V

    .line 340
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v1, v7}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->setSoftInputMode(I)V

    .line 341
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static {v2, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static {v3, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->measure(II)V

    .line 342
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->getContentView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 343
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->getContentView()Landroid/view/View;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$5;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$5;-><init>(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 354
    :cond_b5
    iput-boolean v7, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->processedPopupClick:Z

    .line 355
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v1, v6}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->setFocusable(Z)V

    .line 356
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getMeasuredWidth()I

    move-result v1

    if-nez v1, :cond_dd

    .line 357
    invoke-direct {p0, v6, v6}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->updateOrShowPopup(ZZ)V

    .line 361
    :goto_c7
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->startAnimation()V

    goto/16 :goto_b

    .line 324
    :cond_ce
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    const v2, 0x7f0a0119

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->setAnimationStyle(I)V

    goto/16 :goto_42

    .line 335
    :catch_d8
    move-exception v0

    .line 336
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_7e

    .line 359
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_dd
    invoke-direct {p0, v6, v7}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->updateOrShowPopup(ZZ)V

    goto :goto_c7
.end method
