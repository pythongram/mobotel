.class public Lorg/telegram/ui/Cells/UserCell;
.super Landroid/widget/FrameLayout;
.source "UserCell.java"


# instance fields
.field private adminImage:Landroid/widget/ImageView;

.field private avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

.field private avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

.field private checkBox:Lorg/telegram/ui/Components/CheckBox;

.field private checkBoxBig:Lorg/telegram/ui/Components/CheckBoxSquare;

.field private currentDrawable:I

.field private currentName:Ljava/lang/CharSequence;

.field private currentObject:Lorg/telegram/tgnet/TLObject;

.field private currrntStatus:Ljava/lang/CharSequence;

.field private hasMyPhoneImageView:Landroid/widget/ImageView;

.field private imageView:Landroid/widget/ImageView;

.field private lastAvatar:Lorg/telegram/tgnet/TLRPC$FileLocation;

.field private lastName:Ljava/lang/String;

.field private lastStatus:I

.field private nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

.field private statusColor:I

.field private statusOnlineColor:I

.field private statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;IIZ)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "padding"    # I
    .param p3, "checkbox"    # I
    .param p4, "admin"    # Z

    .prologue
    .line 62
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 64
    const-string v0, "windowBackgroundWhiteGrayText"

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Cells/UserCell;->statusColor:I

    .line 65
    const-string v0, "windowBackgroundWhiteBlueText"

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Cells/UserCell;->statusOnlineColor:I

    .line 67
    new-instance v0, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v0}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Cells/UserCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    .line 69
    new-instance v0, Lorg/telegram/ui/Components/BackupImageView;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/UserCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    .line 70
    iget-object v0, p0, Lorg/telegram/ui/Cells/UserCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    const/high16 v1, 0x41c00000    # 24.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    .line 71
    iget-object v7, p0, Lorg/telegram/ui/Cells/UserCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    const/16 v0, 0x30

    const/high16 v1, 0x42400000    # 48.0f

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_1cd

    const/4 v2, 0x5

    :goto_37
    or-int/lit8 v2, v2, 0x30

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_1d0

    const/4 v3, 0x0

    :goto_3e
    const/high16 v4, 0x41000000    # 8.0f

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_1d5

    add-int/lit8 v5, p2, 0x7

    int-to-float v5, v5

    :goto_47
    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v7, v0}, Lorg/telegram/ui/Cells/UserCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 73
    new-instance v0, Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-direct {v0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/UserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    .line 74
    iget-object v0, p0, Lorg/telegram/ui/Cells/UserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const-string v1, "windowBackgroundWhiteBlackText"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 75
    iget-object v0, p0, Lorg/telegram/ui/Cells/UserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    .line 76
    iget-object v0, p0, Lorg/telegram/ui/Cells/UserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const-string v1, "fonts/rmedium.ttf"

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 77
    iget-object v1, p0, Lorg/telegram/ui/Cells/UserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_1d8

    const/4 v0, 0x5

    :goto_7a
    or-int/lit8 v0, v0, 0x30

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setGravity(I)V

    .line 78
    iget-object v7, p0, Lorg/telegram/ui/Cells/UserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v0, -0x1

    const/high16 v1, 0x41a00000    # 20.0f

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_1db

    const/4 v2, 0x5

    :goto_89
    or-int/lit8 v2, v2, 0x30

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_1e1

    const/4 v3, 0x2

    if-ne p3, v3, :cond_1de

    const/16 v3, 0x12

    :goto_94
    add-int/lit8 v3, v3, 0x1c

    int-to-float v3, v3

    :goto_97
    const/high16 v4, 0x41380000    # 11.5f

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_1e6

    add-int/lit8 v5, p2, 0x44

    int-to-float v5, v5

    :goto_a0
    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v7, v0}, Lorg/telegram/ui/Cells/UserCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 80
    new-instance v0, Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-direct {v0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/UserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    .line 81
    iget-object v0, p0, Lorg/telegram/ui/Cells/UserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    .line 82
    iget-object v0, p0, Lorg/telegram/ui/Cells/UserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const-string v1, "fonts/rmedium.ttf"

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 83
    iget-object v1, p0, Lorg/telegram/ui/Cells/UserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_1f2

    const/4 v0, 0x5

    :goto_c8
    or-int/lit8 v0, v0, 0x30

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setGravity(I)V

    .line 84
    iget-object v7, p0, Lorg/telegram/ui/Cells/UserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v0, -0x1

    const/high16 v1, 0x41a00000    # 20.0f

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_1f5

    const/4 v2, 0x5

    :goto_d7
    or-int/lit8 v2, v2, 0x30

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_1f8

    const/high16 v3, 0x41e00000    # 28.0f

    :goto_df
    const/high16 v4, 0x420a0000    # 34.5f

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_1fd

    add-int/lit8 v5, p2, 0x44

    int-to-float v5, v5

    :goto_e8
    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v7, v0}, Lorg/telegram/ui/Cells/UserCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 86
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/UserCell;->imageView:Landroid/widget/ImageView;

    .line 87
    iget-object v0, p0, Lorg/telegram/ui/Cells/UserCell;->imageView:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 88
    iget-object v0, p0, Lorg/telegram/ui/Cells/UserCell;->imageView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 89
    iget-object v7, p0, Lorg/telegram/ui/Cells/UserCell;->imageView:Landroid/widget/ImageView;

    const/4 v0, -0x2

    const/high16 v1, -0x40000000    # -2.0f

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_201

    const/4 v2, 0x5

    :goto_10f
    or-int/lit8 v2, v2, 0x10

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_204

    const/4 v3, 0x0

    :goto_116
    const/4 v4, 0x0

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_208

    const/high16 v5, 0x41800000    # 16.0f

    :goto_11d
    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v7, v0}, Lorg/telegram/ui/Cells/UserCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 90
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/UserCell;->hasMyPhoneImageView:Landroid/widget/ImageView;

    .line 91
    iget-object v0, p0, Lorg/telegram/ui/Cells/UserCell;->hasMyPhoneImageView:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 92
    iget-object v0, p0, Lorg/telegram/ui/Cells/UserCell;->hasMyPhoneImageView:Landroid/widget/ImageView;

    const v1, 0x7f02014b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 93
    iget-object v0, p0, Lorg/telegram/ui/Cells/UserCell;->hasMyPhoneImageView:Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    const-string v2, "chats_actionIcon"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 94
    iget-object v0, p0, Lorg/telegram/ui/Cells/UserCell;->hasMyPhoneImageView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 95
    iget-object v7, p0, Lorg/telegram/ui/Cells/UserCell;->hasMyPhoneImageView:Landroid/widget/ImageView;

    const/4 v0, -0x2

    const/high16 v1, -0x40000000    # -2.0f

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_20b

    const/4 v2, 0x3

    :goto_15e
    or-int/lit8 v2, v2, 0x10

    const/high16 v3, 0x41800000    # 16.0f

    const/4 v4, 0x0

    const/high16 v5, 0x41800000    # 16.0f

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v7, v0}, Lorg/telegram/ui/Cells/UserCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 97
    const/4 v0, 0x2

    if-ne p3, v0, :cond_218

    .line 98
    new-instance v0, Lorg/telegram/ui/Components/CheckBoxSquare;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/telegram/ui/Components/CheckBoxSquare;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/UserCell;->checkBoxBig:Lorg/telegram/ui/Components/CheckBoxSquare;

    .line 99
    iget-object v7, p0, Lorg/telegram/ui/Cells/UserCell;->checkBoxBig:Lorg/telegram/ui/Components/CheckBoxSquare;

    const/16 v0, 0x12

    const/high16 v1, 0x41900000    # 18.0f

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_20e

    const/4 v2, 0x3

    :goto_183
    or-int/lit8 v2, v2, 0x10

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_211

    const/high16 v3, 0x41980000    # 19.0f

    :goto_18b
    const/4 v4, 0x0

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_214

    const/4 v5, 0x0

    :goto_191
    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v7, v0}, Lorg/telegram/ui/Cells/UserCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 107
    :cond_199
    :goto_199
    if-eqz p4, :cond_1cc

    .line 108
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/UserCell;->adminImage:Landroid/widget/ImageView;

    .line 109
    iget-object v0, p0, Lorg/telegram/ui/Cells/UserCell;->adminImage:Landroid/widget/ImageView;

    const v1, 0x7f020048

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 110
    iget-object v7, p0, Lorg/telegram/ui/Cells/UserCell;->adminImage:Landroid/widget/ImageView;

    const/16 v0, 0x10

    const/high16 v1, 0x41800000    # 16.0f

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_269

    const/4 v2, 0x3

    :goto_1b5
    or-int/lit8 v2, v2, 0x30

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_26c

    const/high16 v3, 0x41c00000    # 24.0f

    :goto_1bd
    const/high16 v4, 0x41580000    # 13.5f

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_26f

    const/4 v5, 0x0

    :goto_1c4
    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v7, v0}, Lorg/telegram/ui/Cells/UserCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 112
    :cond_1cc
    return-void

    .line 71
    :cond_1cd
    const/4 v2, 0x3

    goto/16 :goto_37

    :cond_1d0
    add-int/lit8 v3, p2, 0x7

    int-to-float v3, v3

    goto/16 :goto_3e

    :cond_1d5
    const/4 v5, 0x0

    goto/16 :goto_47

    .line 77
    :cond_1d8
    const/4 v0, 0x3

    goto/16 :goto_7a

    .line 78
    :cond_1db
    const/4 v2, 0x3

    goto/16 :goto_89

    :cond_1de
    const/4 v3, 0x0

    goto/16 :goto_94

    :cond_1e1
    add-int/lit8 v3, p2, 0x44

    int-to-float v3, v3

    goto/16 :goto_97

    :cond_1e6
    const/4 v5, 0x2

    if-ne p3, v5, :cond_1f0

    const/16 v5, 0x12

    :goto_1eb
    add-int/lit8 v5, v5, 0x1c

    int-to-float v5, v5

    goto/16 :goto_a0

    :cond_1f0
    const/4 v5, 0x0

    goto :goto_1eb

    .line 83
    :cond_1f2
    const/4 v0, 0x3

    goto/16 :goto_c8

    .line 84
    :cond_1f5
    const/4 v2, 0x3

    goto/16 :goto_d7

    :cond_1f8
    add-int/lit8 v3, p2, 0x44

    int-to-float v3, v3

    goto/16 :goto_df

    :cond_1fd
    const/high16 v5, 0x41e00000    # 28.0f

    goto/16 :goto_e8

    .line 89
    :cond_201
    const/4 v2, 0x3

    goto/16 :goto_10f

    :cond_204
    const/high16 v3, 0x41800000    # 16.0f

    goto/16 :goto_116

    :cond_208
    const/4 v5, 0x0

    goto/16 :goto_11d

    .line 95
    :cond_20b
    const/4 v2, 0x5

    goto/16 :goto_15e

    .line 99
    :cond_20e
    const/4 v2, 0x5

    goto/16 :goto_183

    :cond_211
    const/4 v3, 0x0

    goto/16 :goto_18b

    :cond_214
    const/high16 v5, 0x41980000    # 19.0f

    goto/16 :goto_191

    .line 100
    :cond_218
    const/4 v0, 0x1

    if-ne p3, v0, :cond_199

    .line 101
    new-instance v0, Lorg/telegram/ui/Components/CheckBox;

    const v1, 0x7f02023b

    invoke-direct {v0, p1, v1}, Lorg/telegram/ui/Components/CheckBox;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/UserCell;->checkBox:Lorg/telegram/ui/Components/CheckBox;

    .line 102
    iget-object v0, p0, Lorg/telegram/ui/Cells/UserCell;->checkBox:Lorg/telegram/ui/Components/CheckBox;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/CheckBox;->setVisibility(I)V

    .line 103
    iget-object v0, p0, Lorg/telegram/ui/Cells/UserCell;->checkBox:Lorg/telegram/ui/Components/CheckBox;

    const-string v1, "checkbox"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    const-string v2, "checkboxCheck"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/CheckBox;->setColor(II)V

    .line 104
    iget-object v7, p0, Lorg/telegram/ui/Cells/UserCell;->checkBox:Lorg/telegram/ui/Components/CheckBox;

    const/16 v0, 0x16

    const/high16 v1, 0x41b00000    # 22.0f

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_261

    const/4 v2, 0x5

    :goto_247
    or-int/lit8 v2, v2, 0x30

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_263

    const/4 v3, 0x0

    :goto_24e
    const/high16 v4, 0x42180000    # 38.0f

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_267

    add-int/lit8 v5, p2, 0x25

    int-to-float v5, v5

    :goto_257
    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v7, v0}, Lorg/telegram/ui/Cells/UserCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_199

    :cond_261
    const/4 v2, 0x3

    goto :goto_247

    :cond_263
    add-int/lit8 v3, p2, 0x25

    int-to-float v3, v3

    goto :goto_24e

    :cond_267
    const/4 v5, 0x0

    goto :goto_257

    .line 110
    :cond_269
    const/4 v2, 0x5

    goto/16 :goto_1b5

    :cond_26c
    const/4 v3, 0x0

    goto/16 :goto_1bd

    :cond_26f
    const/high16 v5, 0x41c00000    # 24.0f

    goto/16 :goto_1c4
.end method


# virtual methods
.method public hasOverlappingRendering()Z
    .registers 2

    .prologue
    .line 295
    const/4 v0, 0x0

    return v0
.end method

.method public invalidate()V
    .registers 2

    .prologue
    .line 185
    invoke-super {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 186
    iget-object v0, p0, Lorg/telegram/ui/Cells/UserCell;->checkBoxBig:Lorg/telegram/ui/Components/CheckBoxSquare;

    if-eqz v0, :cond_c

    .line 187
    iget-object v0, p0, Lorg/telegram/ui/Cells/UserCell;->checkBoxBig:Lorg/telegram/ui/Components/CheckBoxSquare;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/CheckBoxSquare;->invalidate()V

    .line 189
    :cond_c
    return-void
.end method

.method protected onMeasure(II)V
    .registers 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    .line 175
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    const/high16 v1, 0x42800000    # 64.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-super {p0, v0, v1}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 176
    return-void
.end method

.method public setCheckDisabled(Z)V
    .registers 3
    .param p1, "disabled"    # Z

    .prologue
    .line 168
    iget-object v0, p0, Lorg/telegram/ui/Cells/UserCell;->checkBoxBig:Lorg/telegram/ui/Components/CheckBoxSquare;

    if-eqz v0, :cond_9

    .line 169
    iget-object v0, p0, Lorg/telegram/ui/Cells/UserCell;->checkBoxBig:Lorg/telegram/ui/Components/CheckBoxSquare;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/CheckBoxSquare;->setDisabled(Z)V

    .line 171
    :cond_9
    return-void
.end method

.method public setChecked(ZZ)V
    .registers 5
    .param p1, "checked"    # Z
    .param p2, "animated"    # Z

    .prologue
    const/4 v1, 0x0

    .line 154
    iget-object v0, p0, Lorg/telegram/ui/Cells/UserCell;->checkBox:Lorg/telegram/ui/Components/CheckBox;

    if-eqz v0, :cond_18

    .line 155
    iget-object v0, p0, Lorg/telegram/ui/Cells/UserCell;->checkBox:Lorg/telegram/ui/Components/CheckBox;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/CheckBox;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_12

    .line 156
    iget-object v0, p0, Lorg/telegram/ui/Cells/UserCell;->checkBox:Lorg/telegram/ui/Components/CheckBox;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/CheckBox;->setVisibility(I)V

    .line 158
    :cond_12
    iget-object v0, p0, Lorg/telegram/ui/Cells/UserCell;->checkBox:Lorg/telegram/ui/Components/CheckBox;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Components/CheckBox;->setChecked(ZZ)V

    .line 165
    :cond_17
    :goto_17
    return-void

    .line 159
    :cond_18
    iget-object v0, p0, Lorg/telegram/ui/Cells/UserCell;->checkBoxBig:Lorg/telegram/ui/Components/CheckBoxSquare;

    if-eqz v0, :cond_17

    .line 160
    iget-object v0, p0, Lorg/telegram/ui/Cells/UserCell;->checkBoxBig:Lorg/telegram/ui/Components/CheckBoxSquare;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/CheckBoxSquare;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_29

    .line 161
    iget-object v0, p0, Lorg/telegram/ui/Cells/UserCell;->checkBoxBig:Lorg/telegram/ui/Components/CheckBoxSquare;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/CheckBoxSquare;->setVisibility(I)V

    .line 163
    :cond_29
    iget-object v0, p0, Lorg/telegram/ui/Cells/UserCell;->checkBoxBig:Lorg/telegram/ui/Components/CheckBoxSquare;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Components/CheckBoxSquare;->setChecked(ZZ)V

    goto :goto_17
.end method

.method public setData(Lorg/telegram/tgnet/TLObject;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V
    .registers 10
    .param p1, "user"    # Lorg/telegram/tgnet/TLObject;
    .param p2, "name"    # Ljava/lang/CharSequence;
    .param p3, "status"    # Ljava/lang/CharSequence;
    .param p4, "resId"    # I

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 130
    if-nez p1, :cond_20

    .line 131
    iput-object v2, p0, Lorg/telegram/ui/Cells/UserCell;->currrntStatus:Ljava/lang/CharSequence;

    .line 132
    iput-object v2, p0, Lorg/telegram/ui/Cells/UserCell;->currentName:Ljava/lang/CharSequence;

    .line 133
    iput-object v2, p0, Lorg/telegram/ui/Cells/UserCell;->currentObject:Lorg/telegram/tgnet/TLObject;

    .line 134
    iget-object v0, p0, Lorg/telegram/ui/Cells/UserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    iget-object v0, p0, Lorg/telegram/ui/Cells/UserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    iget-object v0, p0, Lorg/telegram/ui/Cells/UserCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/BackupImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 151
    :goto_1f
    return-void

    .line 139
    :cond_20
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v1, "mainconfig"

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "mutual_contact"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_42

    .line 140
    iget-object v0, p0, Lorg/telegram/ui/Cells/UserCell;->hasMyPhoneImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 146
    :goto_36
    iput-object p3, p0, Lorg/telegram/ui/Cells/UserCell;->currrntStatus:Ljava/lang/CharSequence;

    .line 147
    iput-object p2, p0, Lorg/telegram/ui/Cells/UserCell;->currentName:Ljava/lang/CharSequence;

    .line 148
    iput-object p1, p0, Lorg/telegram/ui/Cells/UserCell;->currentObject:Lorg/telegram/tgnet/TLObject;

    .line 149
    iput p4, p0, Lorg/telegram/ui/Cells/UserCell;->currentDrawable:I

    .line 150
    invoke-virtual {p0, v3}, Lorg/telegram/ui/Cells/UserCell;->update(I)V

    goto :goto_1f

    :cond_42
    move-object v0, p1

    .line 141
    check-cast v0, Lorg/telegram/tgnet/TLRPC$User;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$User;->mutual_contact:Z

    if-eqz v0, :cond_4f

    .line 142
    iget-object v0, p0, Lorg/telegram/ui/Cells/UserCell;->hasMyPhoneImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_36

    .line 144
    :cond_4f
    iget-object v0, p0, Lorg/telegram/ui/Cells/UserCell;->hasMyPhoneImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_36
.end method

.method public setIsAdmin(I)V
    .registers 7
    .param p1, "value"    # I

    .prologue
    const/high16 v4, 0x41800000    # 16.0f

    const/4 v1, 0x0

    .line 115
    iget-object v0, p0, Lorg/telegram/ui/Cells/UserCell;->adminImage:Landroid/widget/ImageView;

    if-nez v0, :cond_8

    .line 127
    :cond_7
    :goto_7
    return-void

    .line 118
    :cond_8
    iget-object v2, p0, Lorg/telegram/ui/Cells/UserCell;->adminImage:Landroid/widget/ImageView;

    if-eqz p1, :cond_44

    move v0, v1

    :goto_d
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 119
    iget-object v3, p0, Lorg/telegram/ui/Cells/UserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_47

    if-eqz p1, :cond_47

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    :goto_1c
    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v2, :cond_49

    if-eqz p1, :cond_49

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    :goto_26
    invoke-virtual {v3, v0, v1, v2, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setPadding(IIII)V

    .line 120
    const/4 v0, 0x1

    if-ne p1, v0, :cond_4b

    .line 121
    const-string v0, "profile_creatorIcon"

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Cells/UserCell;->setTag(Ljava/lang/Object;)V

    .line 122
    iget-object v0, p0, Lorg/telegram/ui/Cells/UserCell;->adminImage:Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    const-string v2, "profile_creatorIcon"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_7

    .line 118
    :cond_44
    const/16 v0, 0x8

    goto :goto_d

    :cond_47
    move v0, v1

    .line 119
    goto :goto_1c

    :cond_49
    move v2, v1

    goto :goto_26

    .line 123
    :cond_4b
    const/4 v0, 0x2

    if-ne p1, v0, :cond_7

    .line 124
    const-string v0, "profile_adminIcon"

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Cells/UserCell;->setTag(Ljava/lang/Object;)V

    .line 125
    iget-object v0, p0, Lorg/telegram/ui/Cells/UserCell;->adminImage:Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    const-string v2, "profile_adminIcon"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_7
.end method

.method public setStatusColors(II)V
    .registers 3
    .param p1, "color"    # I
    .param p2, "onlineColor"    # I

    .prologue
    .line 179
    iput p1, p0, Lorg/telegram/ui/Cells/UserCell;->statusColor:I

    .line 180
    iput p2, p0, Lorg/telegram/ui/Cells/UserCell;->statusOnlineColor:I

    .line 181
    return-void
.end method

.method public update(I)V
    .registers 14
    .param p1, "mask"    # I

    .prologue
    const/16 v6, 0x8

    const/4 v7, 0x0

    .line 192
    iget-object v8, p0, Lorg/telegram/ui/Cells/UserCell;->currentObject:Lorg/telegram/tgnet/TLObject;

    if-nez v8, :cond_8

    .line 291
    :cond_7
    :goto_7
    return-void

    .line 195
    :cond_8
    const/4 v5, 0x0

    .line 196
    .local v5, "photo":Lorg/telegram/tgnet/TLRPC$FileLocation;
    const/4 v3, 0x0

    .line 197
    .local v3, "newName":Ljava/lang/String;
    const/4 v2, 0x0

    .line 198
    .local v2, "currentUser":Lorg/telegram/tgnet/TLRPC$User;
    const/4 v1, 0x0

    .line 199
    .local v1, "currentChat":Lorg/telegram/tgnet/TLRPC$Chat;
    iget-object v8, p0, Lorg/telegram/ui/Cells/UserCell;->currentObject:Lorg/telegram/tgnet/TLObject;

    instance-of v8, v8, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v8, :cond_e3

    .line 200
    iget-object v2, p0, Lorg/telegram/ui/Cells/UserCell;->currentObject:Lorg/telegram/tgnet/TLObject;

    .end local v2    # "currentUser":Lorg/telegram/tgnet/TLRPC$User;
    check-cast v2, Lorg/telegram/tgnet/TLRPC$User;

    .line 201
    .restart local v2    # "currentUser":Lorg/telegram/tgnet/TLRPC$User;
    iget-object v8, v2, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    if-eqz v8, :cond_1e

    .line 202
    iget-object v8, v2, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    iget-object v5, v8, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 211
    :cond_1e
    :goto_1e
    if-eqz p1, :cond_7f

    .line 212
    const/4 v0, 0x0

    .line 213
    .local v0, "continueUpdate":Z
    and-int/lit8 v8, p1, 0x2

    if-eqz v8, :cond_4a

    .line 214
    iget-object v8, p0, Lorg/telegram/ui/Cells/UserCell;->lastAvatar:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v8, :cond_2b

    if-eqz v5, :cond_49

    :cond_2b
    iget-object v8, p0, Lorg/telegram/ui/Cells/UserCell;->lastAvatar:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-nez v8, :cond_4a

    if-eqz v5, :cond_4a

    iget-object v8, p0, Lorg/telegram/ui/Cells/UserCell;->lastAvatar:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v8, :cond_4a

    if-eqz v5, :cond_4a

    iget-object v8, p0, Lorg/telegram/ui/Cells/UserCell;->lastAvatar:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-wide v8, v8, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    iget-wide v10, v5, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    cmp-long v8, v8, v10

    if-nez v8, :cond_49

    iget-object v8, p0, Lorg/telegram/ui/Cells/UserCell;->lastAvatar:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    iget v9, v5, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    if-eq v8, v9, :cond_4a

    .line 215
    :cond_49
    const/4 v0, 0x1

    .line 218
    :cond_4a
    if-eqz v2, :cond_60

    if-nez v0, :cond_60

    and-int/lit8 v8, p1, 0x4

    if-eqz v8, :cond_60

    .line 219
    const/4 v4, 0x0

    .line 220
    .local v4, "newStatus":I
    iget-object v8, v2, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    if-eqz v8, :cond_5b

    .line 221
    iget-object v8, v2, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    iget v4, v8, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    .line 223
    :cond_5b
    iget v8, p0, Lorg/telegram/ui/Cells/UserCell;->lastStatus:I

    if-eq v4, v8, :cond_60

    .line 224
    const/4 v0, 0x1

    .line 227
    .end local v4    # "newStatus":I
    :cond_60
    if-nez v0, :cond_7d

    iget-object v8, p0, Lorg/telegram/ui/Cells/UserCell;->currentName:Ljava/lang/CharSequence;

    if-nez v8, :cond_7d

    iget-object v8, p0, Lorg/telegram/ui/Cells/UserCell;->lastName:Ljava/lang/String;

    if-eqz v8, :cond_7d

    and-int/lit8 v8, p1, 0x1

    if-eqz v8, :cond_7d

    .line 228
    if-eqz v2, :cond_f1

    .line 229
    invoke-static {v2}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v3

    .line 233
    :goto_74
    iget-object v8, p0, Lorg/telegram/ui/Cells/UserCell;->lastName:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7d

    .line 234
    const/4 v0, 0x1

    .line 237
    :cond_7d
    if-eqz v0, :cond_7

    .line 242
    .end local v0    # "continueUpdate":Z
    :cond_7f
    if-eqz v2, :cond_f7

    .line 243
    iget-object v8, p0, Lorg/telegram/ui/Cells/UserCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v8, v2}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$User;)V

    .line 244
    iget-object v8, v2, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    if-eqz v8, :cond_f4

    .line 245
    iget-object v8, v2, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    iput v8, p0, Lorg/telegram/ui/Cells/UserCell;->lastStatus:I

    .line 253
    :goto_90
    iget-object v8, p0, Lorg/telegram/ui/Cells/UserCell;->currentName:Ljava/lang/CharSequence;

    if-eqz v8, :cond_fd

    .line 254
    const/4 v8, 0x0

    iput-object v8, p0, Lorg/telegram/ui/Cells/UserCell;->lastName:Ljava/lang/String;

    .line 255
    iget-object v8, p0, Lorg/telegram/ui/Cells/UserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget-object v9, p0, Lorg/telegram/ui/Cells/UserCell;->currentName:Ljava/lang/CharSequence;

    invoke-virtual {v8, v9}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)V

    .line 264
    .end local v3    # "newName":Ljava/lang/String;
    :goto_9e
    iget-object v8, p0, Lorg/telegram/ui/Cells/UserCell;->currrntStatus:Ljava/lang/CharSequence;

    if-eqz v8, :cond_116

    .line 265
    iget-object v8, p0, Lorg/telegram/ui/Cells/UserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget v9, p0, Lorg/telegram/ui/Cells/UserCell;->statusColor:I

    invoke-virtual {v8, v9}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 266
    iget-object v8, p0, Lorg/telegram/ui/Cells/UserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget-object v9, p0, Lorg/telegram/ui/Cells/UserCell;->currrntStatus:Ljava/lang/CharSequence;

    invoke-virtual {v8, v9}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)V

    .line 286
    :cond_b0
    :goto_b0
    iget-object v8, p0, Lorg/telegram/ui/Cells/UserCell;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getVisibility()I

    move-result v8

    if-nez v8, :cond_bc

    iget v8, p0, Lorg/telegram/ui/Cells/UserCell;->currentDrawable:I

    if-eqz v8, :cond_c8

    :cond_bc
    iget-object v8, p0, Lorg/telegram/ui/Cells/UserCell;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getVisibility()I

    move-result v8

    if-ne v8, v6, :cond_d8

    iget v8, p0, Lorg/telegram/ui/Cells/UserCell;->currentDrawable:I

    if-eqz v8, :cond_d8

    .line 287
    :cond_c8
    iget-object v8, p0, Lorg/telegram/ui/Cells/UserCell;->imageView:Landroid/widget/ImageView;

    iget v9, p0, Lorg/telegram/ui/Cells/UserCell;->currentDrawable:I

    if-nez v9, :cond_1a8

    :goto_ce
    invoke-virtual {v8, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 288
    iget-object v6, p0, Lorg/telegram/ui/Cells/UserCell;->imageView:Landroid/widget/ImageView;

    iget v7, p0, Lorg/telegram/ui/Cells/UserCell;->currentDrawable:I

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 290
    :cond_d8
    iget-object v6, p0, Lorg/telegram/ui/Cells/UserCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    const-string v7, "50_50"

    iget-object v8, p0, Lorg/telegram/ui/Cells/UserCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v6, v5, v7, v8}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_7

    .line 205
    .restart local v3    # "newName":Ljava/lang/String;
    :cond_e3
    iget-object v1, p0, Lorg/telegram/ui/Cells/UserCell;->currentObject:Lorg/telegram/tgnet/TLObject;

    .end local v1    # "currentChat":Lorg/telegram/tgnet/TLRPC$Chat;
    check-cast v1, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 206
    .restart local v1    # "currentChat":Lorg/telegram/tgnet/TLRPC$Chat;
    iget-object v8, v1, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    if-eqz v8, :cond_1e

    .line 207
    iget-object v8, v1, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    iget-object v5, v8, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    goto/16 :goto_1e

    .line 231
    .restart local v0    # "continueUpdate":Z
    :cond_f1
    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    goto :goto_74

    .line 247
    .end local v0    # "continueUpdate":Z
    :cond_f4
    iput v7, p0, Lorg/telegram/ui/Cells/UserCell;->lastStatus:I

    goto :goto_90

    .line 250
    :cond_f7
    iget-object v8, p0, Lorg/telegram/ui/Cells/UserCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v8, v1}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$Chat;)V

    goto :goto_90

    .line 257
    :cond_fd
    if-eqz v2, :cond_10f

    .line 258
    if-nez v3, :cond_105

    invoke-static {v2}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v3

    .end local v3    # "newName":Ljava/lang/String;
    :cond_105
    iput-object v3, p0, Lorg/telegram/ui/Cells/UserCell;->lastName:Ljava/lang/String;

    .line 262
    :goto_107
    iget-object v8, p0, Lorg/telegram/ui/Cells/UserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget-object v9, p0, Lorg/telegram/ui/Cells/UserCell;->lastName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_9e

    .line 260
    .restart local v3    # "newName":Ljava/lang/String;
    :cond_10f
    if-nez v3, :cond_113

    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    .end local v3    # "newName":Ljava/lang/String;
    :cond_113
    iput-object v3, p0, Lorg/telegram/ui/Cells/UserCell;->lastName:Ljava/lang/String;

    goto :goto_107

    .line 267
    :cond_116
    if-eqz v2, :cond_b0

    .line 268
    iget-boolean v8, v2, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-eqz v8, :cond_153

    .line 269
    iget-object v8, p0, Lorg/telegram/ui/Cells/UserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget v9, p0, Lorg/telegram/ui/Cells/UserCell;->statusColor:I

    invoke-virtual {v8, v9}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 270
    iget-boolean v8, v2, Lorg/telegram/tgnet/TLRPC$User;->bot_chat_history:Z

    if-nez v8, :cond_133

    iget-object v8, p0, Lorg/telegram/ui/Cells/UserCell;->adminImage:Landroid/widget/ImageView;

    if-eqz v8, :cond_143

    iget-object v8, p0, Lorg/telegram/ui/Cells/UserCell;->adminImage:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getVisibility()I

    move-result v8

    if-nez v8, :cond_143

    .line 271
    :cond_133
    iget-object v8, p0, Lorg/telegram/ui/Cells/UserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const-string v9, "BotStatusRead"

    const v10, 0x7f0700e4

    invoke-static {v9, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_b0

    .line 273
    :cond_143
    iget-object v8, p0, Lorg/telegram/ui/Cells/UserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const-string v9, "BotStatusCantRead"

    const v10, 0x7f0700e3

    invoke-static {v9, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_b0

    .line 276
    :cond_153
    iget v8, v2, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v9

    if-eq v8, v9, :cond_17f

    iget-object v8, v2, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    if-eqz v8, :cond_16d

    iget-object v8, v2, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v9

    invoke-virtual {v9}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v9

    if-gt v8, v9, :cond_17f

    :cond_16d
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v8

    iget-object v8, v8, Lorg/telegram/messenger/MessagesController;->onlinePrivacy:Ljava/util/concurrent/ConcurrentHashMap;

    iget v9, v2, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_196

    .line 277
    :cond_17f
    iget-object v8, p0, Lorg/telegram/ui/Cells/UserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget v9, p0, Lorg/telegram/ui/Cells/UserCell;->statusOnlineColor:I

    invoke-virtual {v8, v9}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 278
    iget-object v8, p0, Lorg/telegram/ui/Cells/UserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const-string v9, "Online"

    const v10, 0x7f0703d6

    invoke-static {v9, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_b0

    .line 280
    :cond_196
    iget-object v8, p0, Lorg/telegram/ui/Cells/UserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget v9, p0, Lorg/telegram/ui/Cells/UserCell;->statusColor:I

    invoke-virtual {v8, v9}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 281
    iget-object v8, p0, Lorg/telegram/ui/Cells/UserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->formatUserStatus(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_b0

    :cond_1a8
    move v6, v7

    .line 287
    goto/16 :goto_ce
.end method
