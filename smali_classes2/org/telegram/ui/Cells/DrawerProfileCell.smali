.class public Lorg/telegram/ui/Cells/DrawerProfileCell;
.super Landroid/widget/FrameLayout;
.source "DrawerProfileCell.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Cells/DrawerProfileCell$CloudView;
    }
.end annotation


# instance fields
.field private avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

.field private cloudDrawable:Landroid/graphics/drawable/Drawable;

.field private cloudView:Lorg/telegram/ui/Cells/DrawerProfileCell$CloudView;

.field private currentColor:Ljava/lang/Integer;

.field private destRect:Landroid/graphics/Rect;

.field private lastCloudColor:I

.field private nameTextView:Landroid/widget/TextView;

.field private paint:Landroid/graphics/Paint;

.field private phoneTextView:Landroid/widget/TextView;

.field private shadowView:Landroid/widget/ImageView;

.field private srcRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v9, -0x1

    const/high16 v3, 0x41800000    # 16.0f

    const/16 v2, 0x53

    const/4 v4, 0x0

    const/4 v8, 0x1

    .line 87
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 52
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->srcRect:Landroid/graphics/Rect;

    .line 53
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->destRect:Landroid/graphics/Rect;

    .line 54
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->paint:Landroid/graphics/Paint;

    .line 88
    const-string v0, "actionBarDefault"

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Cells/DrawerProfileCell;->setBackgroundColor(I)V

    .line 90
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02009c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->cloudDrawable:Landroid/graphics/drawable/Drawable;

    .line 91
    iget-object v0, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->cloudDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    const-string v5, "chats_menuCloud"

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->lastCloudColor:I

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v5, v6}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 93
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->shadowView:Landroid/widget/ImageView;

    .line 94
    iget-object v0, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->shadowView:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 95
    iget-object v0, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->shadowView:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 96
    iget-object v0, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->shadowView:Landroid/widget/ImageView;

    const v1, 0x7f020082

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 97
    iget-object v0, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->shadowView:Landroid/widget/ImageView;

    const/16 v1, 0x46

    invoke-static {v9, v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Cells/DrawerProfileCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 99
    new-instance v0, Lorg/telegram/ui/Components/BackupImageView;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    .line 100
    iget-object v0, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    const/high16 v1, 0x42000000    # 32.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    .line 101
    iget-object v7, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    const/16 v0, 0x40

    const/high16 v1, 0x42800000    # 64.0f

    const/high16 v6, 0x42860000    # 67.0f

    move v5, v4

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v7, v0}, Lorg/telegram/ui/Cells/DrawerProfileCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 103
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->nameTextView:Landroid/widget/TextView;

    .line 104
    iget-object v0, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->nameTextView:Landroid/widget/TextView;

    const/high16 v1, 0x41700000    # 15.0f

    invoke-virtual {v0, v8, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 105
    iget-object v0, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->nameTextView:Landroid/widget/TextView;

    const-string v1, "fonts/rmedium.ttf"

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 106
    iget-object v0, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->nameTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setLines(I)V

    .line 107
    iget-object v0, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->nameTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 108
    iget-object v0, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->nameTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 109
    iget-object v0, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->nameTextView:Landroid/widget/TextView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 110
    iget-object v0, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->nameTextView:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 111
    iget-object v7, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->nameTextView:Landroid/widget/TextView;

    const/high16 v1, -0x40000000    # -2.0f

    const/high16 v5, 0x42980000    # 76.0f

    const/high16 v6, 0x41e00000    # 28.0f

    move v0, v9

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v7, v0}, Lorg/telegram/ui/Cells/DrawerProfileCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 113
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->phoneTextView:Landroid/widget/TextView;

    .line 114
    iget-object v0, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->phoneTextView:Landroid/widget/TextView;

    const/high16 v1, 0x41500000    # 13.0f

    invoke-virtual {v0, v8, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 115
    iget-object v0, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->phoneTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setLines(I)V

    .line 116
    iget-object v0, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->phoneTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 117
    iget-object v0, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->phoneTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 118
    iget-object v0, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->phoneTextView:Landroid/widget/TextView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 119
    iget-object v7, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->phoneTextView:Landroid/widget/TextView;

    const/high16 v1, -0x40000000    # -2.0f

    const/high16 v5, 0x42980000    # 76.0f

    const/high16 v6, 0x41100000    # 9.0f

    move v0, v9

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v7, v0}, Lorg/telegram/ui/Cells/DrawerProfileCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 121
    new-instance v0, Lorg/telegram/ui/Cells/DrawerProfileCell$CloudView;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Cells/DrawerProfileCell$CloudView;-><init>(Lorg/telegram/ui/Cells/DrawerProfileCell;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->cloudView:Lorg/telegram/ui/Cells/DrawerProfileCell$CloudView;

    .line 122
    iget-object v0, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->cloudView:Lorg/telegram/ui/Cells/DrawerProfileCell$CloudView;

    const/16 v1, 0x3d

    const/16 v2, 0x3d

    const/16 v3, 0x55

    invoke-static {v1, v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Cells/DrawerProfileCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 123
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Cells/DrawerProfileCell;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Cells/DrawerProfileCell;

    .prologue
    .line 45
    iget v0, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->lastCloudColor:I

    return v0
.end method

.method static synthetic access$002(Lorg/telegram/ui/Cells/DrawerProfileCell;I)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Cells/DrawerProfileCell;
    .param p1, "x1"    # I

    .prologue
    .line 45
    iput p1, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->lastCloudColor:I

    return p1
.end method

.method static synthetic access$100(Lorg/telegram/ui/Cells/DrawerProfileCell;)Landroid/graphics/drawable/Drawable;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Cells/DrawerProfileCell;

    .prologue
    .line 45
    iget-object v0, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->cloudDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method


# virtual methods
.method public invalidate()V
    .registers 2

    .prologue
    .line 214
    invoke-super {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 215
    iget-object v0, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->cloudView:Lorg/telegram/ui/Cells/DrawerProfileCell$CloudView;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/DrawerProfileCell$CloudView;->invalidate()V

    .line 216
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 20
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 146
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getCachedWallpaper()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 148
    .local v1, "backgroundDrawable":Landroid/graphics/drawable/Drawable;
    const-string v13, "chats_menuTopShadow"

    invoke-static {v13}, Lorg/telegram/ui/ActionBar/Theme;->hasThemeKey(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_9a

    .line 149
    const-string v13, "chats_menuTopShadow"

    invoke-static {v13}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    .line 153
    .local v3, "color":I
    :goto_12
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/Cells/DrawerProfileCell;->currentColor:Ljava/lang/Integer;

    if-eqz v13, :cond_22

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/Cells/DrawerProfileCell;->currentColor:Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    if-eq v13, v3, :cond_3c

    .line 154
    :cond_22
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lorg/telegram/ui/Cells/DrawerProfileCell;->currentColor:Ljava/lang/Integer;

    .line 155
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/Cells/DrawerProfileCell;->shadowView:Landroid/widget/ImageView;

    invoke-virtual {v13}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v13

    new-instance v14, Landroid/graphics/PorterDuffColorFilter;

    sget-object v15, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v14, v3, v15}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v13, v14}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 157
    :cond_3c
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/Cells/DrawerProfileCell;->nameTextView:Landroid/widget/TextView;

    const-string v14, "chats_menuName"

    invoke-static {v14}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setTextColor(I)V

    .line 158
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCustomTheme()Z

    move-result v13

    if-eqz v13, :cond_11c

    if-eqz v1, :cond_11c

    .line 159
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/Cells/DrawerProfileCell;->phoneTextView:Landroid/widget/TextView;

    const-string v14, "chats_menuPhone"

    invoke-static {v14}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setTextColor(I)V

    .line 160
    sget-object v13, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v14, "mainconfig"

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 161
    .local v6, "preferences":Landroid/content/SharedPreferences;
    const-string v13, "hide_phone"

    const/4 v14, 0x0

    invoke-interface {v6, v13, v14}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v13

    if-eqz v13, :cond_79

    .line 162
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/Cells/DrawerProfileCell;->phoneTextView:Landroid/widget/TextView;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setVisibility(I)V

    .line 164
    :cond_79
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/Cells/DrawerProfileCell;->shadowView:Landroid/widget/ImageView;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 165
    instance-of v13, v1, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v13, :cond_a4

    .line 166
    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/DrawerProfileCell;->getMeasuredWidth()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/DrawerProfileCell;->getMeasuredHeight()I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v1, v13, v14, v15, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 167
    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 195
    .end local v1    # "backgroundDrawable":Landroid/graphics/drawable/Drawable;
    :cond_99
    :goto_99
    return-void

    .line 151
    .end local v3    # "color":I
    .end local v6    # "preferences":Landroid/content/SharedPreferences;
    .restart local v1    # "backgroundDrawable":Landroid/graphics/drawable/Drawable;
    :cond_9a
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getServiceMessageColor()I

    move-result v13

    const/high16 v14, -0x1000000

    or-int v3, v13, v14

    .restart local v3    # "color":I
    goto/16 :goto_12

    .line 168
    .restart local v6    # "preferences":Landroid/content/SharedPreferences;
    :cond_a4
    instance-of v13, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v13, :cond_99

    .line 169
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .end local v1    # "backgroundDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 170
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/DrawerProfileCell;->getMeasuredWidth()I

    move-result v13

    int-to-float v13, v13

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    int-to-float v14, v14

    div-float v8, v13, v14

    .line 171
    .local v8, "scaleX":F
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/DrawerProfileCell;->getMeasuredHeight()I

    move-result v13

    int-to-float v13, v13

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    int-to-float v14, v14

    div-float v9, v13, v14

    .line 172
    .local v9, "scaleY":F
    cmpg-float v13, v8, v9

    if-gez v13, :cond_11a

    move v7, v9

    .line 173
    .local v7, "scale":F
    :goto_cb
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/DrawerProfileCell;->getMeasuredWidth()I

    move-result v13

    int-to-float v13, v13

    div-float/2addr v13, v7

    float-to-int v10, v13

    .line 174
    .local v10, "width":I
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/DrawerProfileCell;->getMeasuredHeight()I

    move-result v13

    int-to-float v13, v13

    div-float/2addr v13, v7

    float-to-int v5, v13

    .line 175
    .local v5, "height":I
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    sub-int/2addr v13, v10

    div-int/lit8 v11, v13, 0x2

    .line 176
    .local v11, "x":I
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    sub-int/2addr v13, v5

    div-int/lit8 v12, v13, 0x2

    .line 177
    .local v12, "y":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/Cells/DrawerProfileCell;->srcRect:Landroid/graphics/Rect;

    add-int v14, v11, v10

    add-int v15, v12, v5

    invoke-virtual {v13, v11, v12, v14, v15}, Landroid/graphics/Rect;->set(IIII)V

    .line 178
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/Cells/DrawerProfileCell;->destRect:Landroid/graphics/Rect;

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/DrawerProfileCell;->getMeasuredWidth()I

    move-result v16

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/DrawerProfileCell;->getMeasuredHeight()I

    move-result v17

    invoke-virtual/range {v13 .. v17}, Landroid/graphics/Rect;->set(IIII)V

    .line 180
    :try_start_103
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/Cells/DrawerProfileCell;->srcRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/Cells/DrawerProfileCell;->destRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/Cells/DrawerProfileCell;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v13, v14, v15}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    :try_end_114
    .catch Ljava/lang/Throwable; {:try_start_103 .. :try_end_114} :catch_115

    goto :goto_99

    .line 181
    :catch_115
    move-exception v4

    .line 182
    .local v4, "e":Ljava/lang/Throwable;
    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_99

    .end local v4    # "e":Ljava/lang/Throwable;
    .end local v5    # "height":I
    .end local v7    # "scale":F
    .end local v10    # "width":I
    .end local v11    # "x":I
    .end local v12    # "y":I
    :cond_11a
    move v7, v8

    .line 172
    goto :goto_cb

    .line 186
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    .end local v6    # "preferences":Landroid/content/SharedPreferences;
    .end local v8    # "scaleX":F
    .end local v9    # "scaleY":F
    .restart local v1    # "backgroundDrawable":Landroid/graphics/drawable/Drawable;
    :cond_11c
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/Cells/DrawerProfileCell;->shadowView:Landroid/widget/ImageView;

    const/4 v14, 0x4

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 187
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/Cells/DrawerProfileCell;->phoneTextView:Landroid/widget/TextView;

    const-string v14, "chats_menuPhoneCats"

    invoke-static {v14}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setTextColor(I)V

    .line 188
    sget-object v13, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v14, "mainconfig"

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 189
    .restart local v6    # "preferences":Landroid/content/SharedPreferences;
    const-string v13, "hide_phone"

    const/4 v14, 0x0

    invoke-interface {v6, v13, v14}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v13

    if-eqz v13, :cond_14c

    .line 190
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/Cells/DrawerProfileCell;->phoneTextView:Landroid/widget/TextView;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setVisibility(I)V

    .line 192
    :cond_14c
    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    goto/16 :goto_99
.end method

.method protected onMeasure(II)V
    .registers 11
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v7, 0x0

    const/high16 v6, 0x43140000    # 148.0f

    const/high16 v5, 0x40000000    # 2.0f

    .line 127
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_39

    .line 128
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sget v4, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    add-int/2addr v3, v4

    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-super {p0, v2, v3}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 138
    :goto_21
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v3, "mainconfig"

    invoke-virtual {v2, v3, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 139
    .local v1, "preferences":Landroid/content/SharedPreferences;
    const-string v2, "hide_phone"

    invoke-interface {v1, v2, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 140
    iget-object v2, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->phoneTextView:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 142
    :cond_38
    return-void

    .line 131
    .end local v1    # "preferences":Landroid/content/SharedPreferences;
    :cond_39
    :try_start_39
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    const/high16 v3, 0x43140000    # 148.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-super {p0, v2, v3}, Landroid/widget/FrameLayout;->onMeasure(II)V
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_52} :catch_53

    goto :goto_21

    .line 132
    :catch_53
    move-exception v0

    .line 133
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lorg/telegram/ui/Cells/DrawerProfileCell;->setMeasuredDimension(II)V

    .line 134
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_21
.end method

.method public setUser(Lorg/telegram/tgnet/TLRPC$User;)V
    .registers 8
    .param p1, "user"    # Lorg/telegram/tgnet/TLRPC$User;

    .prologue
    .line 198
    if-nez p1, :cond_3

    .line 210
    :goto_2
    return-void

    .line 201
    :cond_3
    const/4 v1, 0x0

    .line 202
    .local v1, "photo":Lorg/telegram/tgnet/TLRPC$FileLocation;
    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    if-eqz v2, :cond_c

    .line 203
    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 205
    :cond_c
    iget-object v2, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->nameTextView:Landroid/widget/TextView;

    invoke-static {p1}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 206
    iget-object v2, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->phoneTextView:Landroid/widget/TextView;

    invoke-static {}, Lorg/telegram/PhoneFormat/PhoneFormat;->getInstance()Lorg/telegram/PhoneFormat/PhoneFormat;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "+"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/PhoneFormat/PhoneFormat;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 207
    new-instance v0, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>(Lorg/telegram/tgnet/TLRPC$User;)V

    .line 208
    .local v0, "avatarDrawable":Lorg/telegram/ui/Components/AvatarDrawable;
    const-string v2, "avatar_backgroundInProfileBlue"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/AvatarDrawable;->setColor(I)V

    .line 209
    iget-object v2, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    const-string v3, "50_50"

    invoke-virtual {v2, v1, v3, v0}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    goto :goto_2
.end method
