.class public Lorg/telegram/ui/Components/ScrollSlidingTabStrip;
.super Landroid/widget/HorizontalScrollView;
.source "ScrollSlidingTabStrip.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/ScrollSlidingTabStrip$ScrollSlidingTabStripDelegate;
    }
.end annotation


# instance fields
.field private currentPosition:I

.field private defaultTabLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

.field private delegate:Lorg/telegram/ui/Components/ScrollSlidingTabStrip$ScrollSlidingTabStripDelegate;

.field private dividerPadding:I

.field private indicatorColor:I

.field private indicatorHeight:I

.field private lastScrollX:I

.field private onTabLongClickListener:Lorg/telegram/ui/Components/PagerSlidingTabStrip$OnTabLongClickListener;

.field private rectPaint:Landroid/graphics/Paint;

.field private scrollOffset:I

.field private tabCount:I

.field private tabPadding:I

.field private tabsContainer:Landroid/widget/LinearLayout;

.field private underlineColor:I

.field private underlineHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    const/high16 v3, 0x42500000    # 52.0f

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 59
    invoke-direct {p0, p1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 47
    const v0, -0x99999a

    iput v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->indicatorColor:I

    .line 48
    const/high16 v0, 0x1a000000

    iput v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->underlineColor:I

    .line 51
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->scrollOffset:I

    .line 52
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->underlineHeight:I

    .line 53
    const/high16 v0, 0x41400000    # 12.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->dividerPadding:I

    .line 54
    const/high16 v0, 0x41c00000    # 24.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabPadding:I

    .line 56
    iput v1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->lastScrollX:I

    .line 61
    invoke-virtual {p0, v4}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->setFillViewport(Z)V

    .line 62
    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->setWillNotDraw(Z)V

    .line 64
    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->setHorizontalScrollBarEnabled(Z)V

    .line 65
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    .line 66
    iget-object v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 67
    iget-object v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 68
    iget-object v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->addView(Landroid/view/View;)V

    .line 70
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->rectPaint:Landroid/graphics/Paint;

    .line 71
    iget-object v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->rectPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 72
    iget-object v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->rectPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 74
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->defaultTabLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 75
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/ScrollSlidingTabStrip;)Lorg/telegram/ui/Components/ScrollSlidingTabStrip$ScrollSlidingTabStripDelegate;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    .prologue
    .line 30
    iget-object v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->delegate:Lorg/telegram/ui/Components/ScrollSlidingTabStrip$ScrollSlidingTabStripDelegate;

    return-object v0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/ScrollSlidingTabStrip;)Lorg/telegram/ui/Components/PagerSlidingTabStrip$OnTabLongClickListener;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    .prologue
    .line 30
    iget-object v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->onTabLongClickListener:Lorg/telegram/ui/Components/PagerSlidingTabStrip$OnTabLongClickListener;

    return-object v0
.end method

.method private scrollToChild(I)V
    .registers 8
    .param p1, "position"    # I

    .prologue
    const/4 v5, 0x0

    .line 193
    iget v2, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabCount:I

    if-eqz v2, :cond_d

    iget-object v2, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_e

    .line 210
    :cond_d
    :goto_d
    return-void

    .line 196
    :cond_e
    iget-object v2, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 197
    .local v1, "newScrollX":I
    if-lez p1, :cond_1d

    .line 198
    iget v2, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->scrollOffset:I

    sub-int/2addr v1, v2

    .line 200
    :cond_1d
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->getScrollX()I

    move-result v0

    .line 201
    .local v0, "currentScrollX":I
    iget v2, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->lastScrollX:I

    if-eq v1, v2, :cond_d

    .line 202
    if-ge v1, v0, :cond_2f

    .line 203
    iput v1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->lastScrollX:I

    .line 204
    iget v2, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->lastScrollX:I

    invoke-virtual {p0, v2, v5}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->smoothScrollTo(II)V

    goto :goto_d

    .line 205
    :cond_2f
    iget v2, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->scrollOffset:I

    add-int/2addr v2, v1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->getWidth()I

    move-result v3

    add-int/2addr v3, v0

    iget v4, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->scrollOffset:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    if-le v2, v3, :cond_d

    .line 206
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->getWidth()I

    move-result v2

    sub-int v2, v1, v2

    iget v3, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->scrollOffset:I

    mul-int/lit8 v3, v3, 0x3

    add-int/2addr v2, v3

    iput v2, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->lastScrollX:I

    .line 207
    iget v2, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->lastScrollX:I

    invoke-virtual {p0, v2, v5}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->smoothScrollTo(II)V

    goto :goto_d
.end method


# virtual methods
.method public addIconTab(Landroid/graphics/drawable/Drawable;)V
    .registers 6
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v2, 0x1

    .line 141
    iget v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabCount:I

    add-int/lit8 v3, v0, 0x1

    iput v3, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabCount:I

    .line 142
    .local v0, "position":I
    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 143
    .local v1, "tab":Landroid/widget/ImageView;
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 144
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 145
    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 146
    new-instance v3, Lorg/telegram/ui/Components/ScrollSlidingTabStrip$3;

    invoke-direct {v3, p0, v0}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip$3;-><init>(Lorg/telegram/ui/Components/ScrollSlidingTabStrip;I)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    iget-object v3, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 153
    iget v3, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->currentPosition:I

    if-ne v0, v3, :cond_30

    :goto_2c
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 154
    return-void

    .line 153
    :cond_30
    const/4 v2, 0x0

    goto :goto_2c
.end method

.method public addIconTabWithCounter(Landroid/graphics/drawable/Drawable;)Landroid/widget/TextView;
    .registers 13
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v4, -0x1

    const/high16 v1, 0x41900000    # 18.0f

    const/high16 v3, 0x40a00000    # 5.0f

    const/4 v5, 0x0

    const/4 v2, 0x1

    .line 100
    iget v8, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabCount:I

    add-int/lit8 v0, v8, 0x1

    iput v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabCount:I

    .line 101
    .local v8, "position":I
    new-instance v9, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v9, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 102
    .local v9, "tab":Landroid/widget/FrameLayout;
    invoke-virtual {v9, v2}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 103
    iget-object v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 105
    new-instance v7, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v7, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 106
    .local v7, "imageView":Landroid/widget/ImageView;
    invoke-virtual {v7, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 107
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 108
    new-instance v0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip$1;

    invoke-direct {v0, p0, v8}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip$1;-><init>(Lorg/telegram/ui/Components/ScrollSlidingTabStrip;I)V

    invoke-virtual {v9, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    new-instance v0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip$2;

    invoke-direct {v0, p0, v8}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip$2;-><init>(Lorg/telegram/ui/Components/ScrollSlidingTabStrip;I)V

    invoke-virtual {v9, v0}, Landroid/widget/FrameLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 123
    const/high16 v0, -0x40800000    # -1.0f

    invoke-static {v4, v0}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v9, v7, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 125
    iget v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->currentPosition:I

    if-ne v8, v0, :cond_9e

    move v0, v2

    :goto_4d
    invoke-virtual {v9, v0}, Landroid/widget/FrameLayout;->setSelected(Z)V

    .line 127
    new-instance v10, Landroid/widget/TextView;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v10, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 128
    .local v10, "textView":Landroid/widget/TextView;
    const-string v0, "fonts/rmedium.ttf"

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 129
    const/high16 v0, 0x41400000    # 12.0f

    invoke-virtual {v10, v2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 130
    invoke-virtual {v10, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 131
    const/16 v0, 0x11

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 132
    const v0, 0x7f02025b

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 133
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setMinWidth(I)V

    .line 134
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    const/4 v2, 0x0

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-virtual {v10, v0, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 135
    const/4 v0, -0x2

    const/16 v2, 0x33

    const/high16 v3, 0x41d00000    # 26.0f

    const/high16 v4, 0x40c00000    # 6.0f

    move v6, v5

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v9, v10, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 137
    return-object v10

    .line 125
    .end local v10    # "textView":Landroid/widget/TextView;
    :cond_9e
    const/4 v0, 0x0

    goto :goto_4d
.end method

.method public addStickerTab(Lorg/telegram/tgnet/TLRPC$Document;)V
    .registers 10
    .param p1, "sticker"    # Lorg/telegram/tgnet/TLRPC$Document;

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0x1e

    const/4 v4, 0x1

    .line 157
    iget v1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabCount:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabCount:I

    .line 158
    .local v1, "position":I
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 159
    .local v2, "tab":Landroid/widget/FrameLayout;
    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 160
    new-instance v3, Lorg/telegram/ui/Components/ScrollSlidingTabStrip$4;

    invoke-direct {v3, p0, v1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip$4;-><init>(Lorg/telegram/ui/Components/ScrollSlidingTabStrip;I)V

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    new-instance v3, Lorg/telegram/ui/Components/ScrollSlidingTabStrip$5;

    invoke-direct {v3, p0, v1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip$5;-><init>(Lorg/telegram/ui/Components/ScrollSlidingTabStrip;I)V

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 175
    iget-object v3, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 176
    iget v3, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->currentPosition:I

    if-ne v1, v3, :cond_58

    move v3, v4

    :goto_30
    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setSelected(Z)V

    .line 177
    new-instance v0, Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    .line 178
    .local v0, "imageView":Lorg/telegram/ui/Components/BackupImageView;
    if-eqz p1, :cond_4b

    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    if-eqz v3, :cond_4b

    .line 179
    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    const-string v5, "webp"

    invoke-virtual {v0, v3, v7, v5, v7}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 181
    :cond_4b
    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/BackupImageView;->setAspectFit(Z)V

    .line 182
    const/16 v3, 0x11

    invoke-static {v6, v6, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 183
    return-void

    .line 176
    .end local v0    # "imageView":Lorg/telegram/ui/Components/BackupImageView;
    :cond_58
    const/4 v3, 0x0

    goto :goto_30
.end method

.method public getCurrentPosition()I
    .registers 2

    .prologue
    .line 247
    iget v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->currentPosition:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v1, 0x0

    .line 219
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onDraw(Landroid/graphics/Canvas;)V

    .line 221
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_e

    iget v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabCount:I

    if-nez v0, :cond_f

    .line 244
    :cond_e
    :goto_e
    return-void

    .line 225
    :cond_f
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->getHeight()I

    move-result v9

    .line 227
    .local v9, "height":I
    iget-object v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->rectPaint:Landroid/graphics/Paint;

    iget v2, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->underlineColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 228
    iget v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->underlineHeight:I

    sub-int v0, v9, v0

    int-to-float v2, v0

    iget-object v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v0

    int-to-float v3, v0

    int-to-float v4, v9

    iget-object v5, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->rectPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 230
    iget-object v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    iget v2, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->currentPosition:I

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 231
    .local v8, "currentTab":Landroid/view/View;
    const/4 v3, 0x0

    .line 232
    .local v3, "lineLeft":F
    const/4 v5, 0x0

    .line 233
    .local v5, "lineRight":F
    if-eqz v8, :cond_43

    .line 234
    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v3, v0

    .line 235
    invoke-virtual {v8}, Landroid/view/View;->getRight()I

    move-result v0

    int-to-float v5, v0

    .line 238
    :cond_43
    iget-object v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->rectPaint:Landroid/graphics/Paint;

    iget v2, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->indicatorColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 239
    iget v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->indicatorHeight:I

    if-nez v0, :cond_57

    .line 240
    int-to-float v6, v9

    iget-object v7, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->rectPaint:Landroid/graphics/Paint;

    move-object v2, p1

    move v4, v1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_e

    .line 242
    :cond_57
    iget v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->indicatorHeight:I

    sub-int v0, v9, v0

    int-to-float v4, v0

    int-to-float v6, v9

    iget-object v7, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->rectPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_e
.end method

.method public onPageScrolled(II)V
    .registers 7
    .param p1, "position"    # I
    .param p2, "first"    # I

    .prologue
    const/4 v2, 0x1

    .line 253
    iget v1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->currentPosition:I

    if-ne v1, p1, :cond_6

    .line 269
    :cond_5
    :goto_5
    return-void

    .line 256
    :cond_6
    iput p1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->currentPosition:I

    .line 257
    iget-object v1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge p1, v1, :cond_5

    .line 260
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_11
    iget-object v1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2a

    .line 261
    iget-object v1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-ne v0, p1, :cond_28

    move v1, v2

    :goto_22
    invoke-virtual {v3, v1}, Landroid/view/View;->setSelected(Z)V

    .line 260
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 261
    :cond_28
    const/4 v1, 0x0

    goto :goto_22

    .line 263
    :cond_2a
    if-ne p2, p1, :cond_37

    if-le p1, v2, :cond_37

    .line 264
    add-int/lit8 v1, p1, -0x1

    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->scrollToChild(I)V

    .line 268
    :goto_33
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->invalidate()V

    goto :goto_5

    .line 266
    :cond_37
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->scrollToChild(I)V

    goto :goto_33
.end method

.method protected onScrollChanged(IIII)V
    .registers 5
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "oldl"    # I
    .param p4, "oldt"    # I

    .prologue
    .line 214
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/HorizontalScrollView;->onScrollChanged(IIII)V

    .line 215
    return-void
.end method

.method public removeTabs()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 82
    iget-object v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 83
    iput v1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabCount:I

    .line 84
    iput v1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->currentPosition:I

    .line 85
    return-void
.end method

.method public selectTab(I)V
    .registers 5
    .param p1, "num"    # I

    .prologue
    .line 88
    if-ltz p1, :cond_6

    iget v1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabCount:I

    if-lt p1, v1, :cond_7

    .line 97
    :cond_6
    :goto_6
    return-void

    .line 91
    :cond_7
    iget-object v1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 92
    .local v0, "tab":Landroid/view/View;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xf

    if-lt v1, v2, :cond_17

    .line 93
    invoke-virtual {v0}, Landroid/view/View;->callOnClick()Z

    goto :goto_6

    .line 95
    :cond_17
    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    goto :goto_6
.end method

.method public setDelegate(Lorg/telegram/ui/Components/ScrollSlidingTabStrip$ScrollSlidingTabStripDelegate;)V
    .registers 2
    .param p1, "scrollSlidingTabStripDelegate"    # Lorg/telegram/ui/Components/ScrollSlidingTabStrip$ScrollSlidingTabStripDelegate;

    .prologue
    .line 78
    iput-object p1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->delegate:Lorg/telegram/ui/Components/ScrollSlidingTabStrip$ScrollSlidingTabStripDelegate;

    .line 79
    return-void
.end method

.method public setIndicatorColor(I)V
    .registers 2
    .param p1, "value"    # I

    .prologue
    .line 277
    iput p1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->indicatorColor:I

    .line 278
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->invalidate()V

    .line 279
    return-void
.end method

.method public setIndicatorHeight(I)V
    .registers 2
    .param p1, "value"    # I

    .prologue
    .line 272
    iput p1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->indicatorHeight:I

    .line 273
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->invalidate()V

    .line 274
    return-void
.end method

.method public setOnTabLongClickListener(Lorg/telegram/ui/Components/PagerSlidingTabStrip$OnTabLongClickListener;)V
    .registers 2
    .param p1, "onTabLongClickListener"    # Lorg/telegram/ui/Components/PagerSlidingTabStrip$OnTabLongClickListener;

    .prologue
    .line 296
    iput-object p1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->onTabLongClickListener:Lorg/telegram/ui/Components/PagerSlidingTabStrip$OnTabLongClickListener;

    .line 297
    return-void
.end method

.method public setUnderlineColor(I)V
    .registers 2
    .param p1, "value"    # I

    .prologue
    .line 282
    iput p1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->underlineColor:I

    .line 283
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->invalidate()V

    .line 284
    return-void
.end method

.method public setUnderlineColorResource(I)V
    .registers 3
    .param p1, "resId"    # I

    .prologue
    .line 287
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->underlineColor:I

    .line 288
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->invalidate()V

    .line 289
    return-void
.end method

.method public setUnderlineHeight(I)V
    .registers 2
    .param p1, "value"    # I

    .prologue
    .line 292
    iput p1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->underlineHeight:I

    .line 293
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->invalidate()V

    .line 294
    return-void
.end method

.method public updateTabStyles()V
    .registers 4

    .prologue
    .line 186
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v2, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabCount:I

    if-ge v0, v2, :cond_13

    .line 187
    iget-object v2, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 188
    .local v1, "v":Landroid/view/View;
    iget-object v2, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->defaultTabLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 186
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 190
    .end local v1    # "v":Landroid/view/View;
    :cond_13
    return-void
.end method
