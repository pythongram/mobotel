.class public Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialContactCell;
.super Landroid/widget/FrameLayout;
.source "SpecialContactCell.java"


# instance fields
.field private avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

.field private avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

.field private checkBox:Lorg/telegram/ui/Components/CheckBox;

.field private currentUser:Lorg/telegram/tgnet/TLRPC$User;

.field private imageView:Landroid/widget/ImageView;

.field private nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

.field private statusColor:I

.field private statusOnlineColor:I

.field private statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "padding"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RtlHardcoded"
        }
    .end annotation

    .prologue
    const/high16 v8, 0x41800000    # 16.0f

    const/high16 v7, 0x41e00000    # 28.0f

    const/4 v9, 0x5

    const/4 v10, 0x3

    const/4 v6, 0x0

    .line 39
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 34
    const v0, -0x575758

    iput v0, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialContactCell;->statusColor:I

    .line 35
    const v0, -0xc47b40

    iput v0, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialContactCell;->statusOnlineColor:I

    .line 41
    new-instance v0, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v0}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialContactCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    .line 42
    new-instance v0, Lorg/telegram/ui/Components/BackupImageView;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialContactCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    .line 43
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialContactCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    const/high16 v1, 0x41c00000    # 24.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    .line 44
    iget-object v11, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialContactCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    const/16 v0, 0x30

    const/high16 v1, 0x42400000    # 48.0f

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_132

    move v2, v9

    :goto_38
    or-int/lit8 v2, v2, 0x30

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_135

    move v3, v6

    :goto_3f
    const/high16 v4, 0x41000000    # 8.0f

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_13a

    add-int/lit8 v5, p2, 0x7

    int-to-float v5, v5

    :goto_48
    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v11, v0}, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialContactCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 46
    new-instance v0, Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-direct {v0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialContactCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    .line 47
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialContactCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const v1, -0xdededf

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 48
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialContactCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    .line 49
    iget-object v1, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialContactCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_13d

    move v0, v9

    :goto_6c
    or-int/lit8 v0, v0, 0x30

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setGravity(I)V

    .line 50
    iget-object v11, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialContactCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v0, -0x1

    const/high16 v1, 0x41a00000    # 20.0f

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_140

    move v2, v9

    :goto_7b
    or-int/lit8 v2, v2, 0x30

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_143

    move v3, v7

    :goto_82
    const/high16 v4, 0x41380000    # 11.5f

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_148

    add-int/lit8 v5, p2, 0x44

    int-to-float v5, v5

    :goto_8b
    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v11, v0}, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialContactCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 52
    new-instance v0, Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-direct {v0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialContactCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    .line 53
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialContactCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    .line 54
    iget-object v1, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialContactCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_14b

    move v0, v9

    :goto_a7
    or-int/lit8 v0, v0, 0x30

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setGravity(I)V

    .line 55
    iget-object v11, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialContactCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v0, -0x1

    const/high16 v1, 0x41a00000    # 20.0f

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_14e

    move v2, v9

    :goto_b6
    or-int/lit8 v2, v2, 0x30

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_151

    move v3, v7

    :goto_bd
    const/high16 v4, 0x420a0000    # 34.5f

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_156

    add-int/lit8 v5, p2, 0x44

    int-to-float v5, v5

    :goto_c6
    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v11, v0}, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialContactCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 57
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialContactCell;->imageView:Landroid/widget/ImageView;

    .line 58
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialContactCell;->imageView:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 59
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialContactCell;->imageView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 60
    iget-object v1, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialContactCell;->imageView:Landroid/widget/ImageView;

    const/4 v2, -0x2

    const/high16 v3, -0x40000000    # -2.0f

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_159

    move v0, v9

    :goto_ec
    or-int/lit8 v4, v0, 0x10

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_15b

    move v5, v6

    :goto_f3
    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_15d

    move v7, v8

    :goto_f8
    move v8, v6

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialContactCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 62
    new-instance v0, Lorg/telegram/ui/Components/CheckBox;

    const v1, 0x7f02023b

    invoke-direct {v0, p1, v1}, Lorg/telegram/ui/Components/CheckBox;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialContactCell;->checkBox:Lorg/telegram/ui/Components/CheckBox;

    .line 63
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialContactCell;->checkBox:Lorg/telegram/ui/Components/CheckBox;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/CheckBox;->setVisibility(I)V

    .line 64
    iget-object v7, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialContactCell;->checkBox:Lorg/telegram/ui/Components/CheckBox;

    const/16 v0, 0x16

    const/high16 v1, 0x41b00000    # 22.0f

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_15f

    :goto_11a
    or-int/lit8 v2, v9, 0x30

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_161

    move v3, v6

    :goto_121
    const/high16 v4, 0x42180000    # 38.0f

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_165

    add-int/lit8 v5, p2, 0x25

    int-to-float v5, v5

    :goto_12a
    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v7, v0}, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialContactCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 65
    return-void

    :cond_132
    move v2, v10

    .line 44
    goto/16 :goto_38

    :cond_135
    add-int/lit8 v3, p2, 0x7

    int-to-float v3, v3

    goto/16 :goto_3f

    :cond_13a
    move v5, v6

    goto/16 :goto_48

    :cond_13d
    move v0, v10

    .line 49
    goto/16 :goto_6c

    :cond_140
    move v2, v10

    .line 50
    goto/16 :goto_7b

    :cond_143
    add-int/lit8 v3, p2, 0x44

    int-to-float v3, v3

    goto/16 :goto_82

    :cond_148
    move v5, v7

    goto/16 :goto_8b

    :cond_14b
    move v0, v10

    .line 54
    goto/16 :goto_a7

    :cond_14e
    move v2, v10

    .line 55
    goto/16 :goto_b6

    :cond_151
    add-int/lit8 v3, p2, 0x44

    int-to-float v3, v3

    goto/16 :goto_bd

    :cond_156
    move v5, v7

    goto/16 :goto_c6

    :cond_159
    move v0, v10

    .line 60
    goto :goto_ec

    :cond_15b
    move v5, v8

    goto :goto_f3

    :cond_15d
    move v7, v6

    goto :goto_f8

    :cond_15f
    move v9, v10

    .line 64
    goto :goto_11a

    :cond_161
    add-int/lit8 v3, p2, 0x25

    int-to-float v3, v3

    goto :goto_121

    :cond_165
    move v5, v6

    goto :goto_12a
.end method


# virtual methods
.method protected onMeasure(II)V
    .registers 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "i2"    # I

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    .line 77
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

    .line 78
    return-void
.end method

.method public setChecked(ZZ)V
    .registers 5
    .param p1, "checked"    # Z
    .param p2, "animated"    # Z

    .prologue
    .line 68
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialContactCell;->checkBox:Lorg/telegram/ui/Components/CheckBox;

    if-eqz v0, :cond_17

    .line 69
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialContactCell;->checkBox:Lorg/telegram/ui/Components/CheckBox;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/CheckBox;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_12

    .line 70
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialContactCell;->checkBox:Lorg/telegram/ui/Components/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/CheckBox;->setVisibility(I)V

    .line 72
    :cond_12
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialContactCell;->checkBox:Lorg/telegram/ui/Components/CheckBox;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Components/CheckBox;->setChecked(ZZ)V

    .line 74
    :cond_17
    return-void
.end method

.method public setData(Lorg/telegram/tgnet/TLRPC$User;)V
    .registers 4
    .param p1, "user"    # Lorg/telegram/tgnet/TLRPC$User;

    .prologue
    .line 81
    if-nez p1, :cond_16

    .line 82
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialContactCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialContactCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialContactCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/BackupImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 86
    :cond_16
    iput-object p1, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialContactCell;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    .line 87
    invoke-virtual {p0}, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialContactCell;->update()V

    .line 88
    return-void
.end method

.method public update()V
    .registers 5

    .prologue
    .line 91
    iget-object v1, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialContactCell;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    if-nez v1, :cond_5

    .line 113
    :goto_4
    return-void

    .line 95
    :cond_5
    const/4 v0, 0x0

    .line 96
    .local v0, "tLObject":Lorg/telegram/tgnet/TLObject;
    iget-object v1, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialContactCell;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    if-eqz v1, :cond_12

    .line 97
    iget-object v1, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialContactCell;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 101
    :cond_12
    iget-object v1, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialContactCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    iget-object v2, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialContactCell;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$User;)V

    .line 102
    iget-object v1, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialContactCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    const-string v2, "50_50"

    iget-object v3, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialContactCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v1, v0, v2, v3}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 104
    iget-object v1, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialContactCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget-object v2, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialContactCell;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v3, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialContactCell;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    iget-object v1, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialContactCell;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v2

    if-eq v1, v2, :cond_67

    iget-object v1, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialContactCell;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    if-eqz v1, :cond_53

    iget-object v1, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialContactCell;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v2

    if-gt v1, v2, :cond_67

    :cond_53
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController;->onlinePrivacy:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v2, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialContactCell;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7d

    .line 107
    :cond_67
    iget-object v1, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialContactCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget v2, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialContactCell;->statusOnlineColor:I

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 108
    iget-object v1, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialContactCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const-string v2, "Online"

    const v3, 0x7f0703d6

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 110
    :cond_7d
    iget-object v1, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialContactCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget v2, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialContactCell;->statusColor:I

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 111
    iget-object v1, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialContactCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget-object v2, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialContactCell;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->formatUserStatus(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4
.end method
