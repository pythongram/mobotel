.class public Lorg/telegram/ui/Cells/GroupCreateUserCell;
.super Landroid/widget/FrameLayout;
.source "GroupCreateUserCell.java"


# instance fields
.field private avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

.field private avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

.field private checkBox:Lorg/telegram/ui/Components/GroupCreateCheckBox;

.field private currentName:Ljava/lang/CharSequence;

.field private currentStatus:Ljava/lang/CharSequence;

.field private currentUser:Lorg/telegram/tgnet/TLRPC$User;

.field private lastAvatar:Lorg/telegram/tgnet/TLRPC$FileLocation;

.field private lastName:Ljava/lang/String;

.field private lastStatus:I

.field private nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

.field private statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .registers 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "needCheck"    # Z

    .prologue
    const/high16 v10, 0x42900000    # 72.0f

    const/high16 v9, 0x41e00000    # 28.0f

    const/4 v7, 0x5

    const/4 v8, 0x3

    const/4 v6, 0x0

    .line 46
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 47
    new-instance v0, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v0}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    .line 49
    new-instance v0, Lorg/telegram/ui/Components/BackupImageView;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    .line 50
    iget-object v0, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    const/high16 v1, 0x41c00000    # 24.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    .line 51
    iget-object v11, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    const/16 v0, 0x32

    const/high16 v1, 0x42480000    # 50.0f

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_fc

    move v2, v7

    :goto_2e
    or-int/lit8 v2, v2, 0x30

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_ff

    move v3, v6

    :goto_35
    const/high16 v4, 0x41300000    # 11.0f

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_103

    const/high16 v5, 0x41300000    # 11.0f

    :goto_3d
    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v11, v0}, Lorg/telegram/ui/Cells/GroupCreateUserCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 53
    new-instance v0, Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-direct {v0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    .line 54
    iget-object v0, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const-string v1, "windowBackgroundWhiteBlackText"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 55
    iget-object v0, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const-string v1, "fonts/rmedium.ttf"

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 56
    iget-object v0, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    .line 57
    iget-object v1, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_106

    move v0, v7

    :goto_6f
    or-int/lit8 v0, v0, 0x30

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setGravity(I)V

    .line 58
    iget-object v11, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v0, -0x1

    const/high16 v1, 0x41a00000    # 20.0f

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_109

    move v2, v7

    :goto_7e
    or-int/lit8 v2, v2, 0x30

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_10c

    move v3, v9

    :goto_85
    const/high16 v4, 0x41600000    # 14.0f

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_10f

    move v5, v10

    :goto_8c
    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v11, v0}, Lorg/telegram/ui/Cells/GroupCreateUserCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 60
    new-instance v0, Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-direct {v0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    .line 61
    iget-object v0, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    .line 62
    iget-object v1, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_112

    move v0, v7

    :goto_a8
    or-int/lit8 v0, v0, 0x30

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setGravity(I)V

    .line 63
    iget-object v11, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v0, -0x1

    const/high16 v1, 0x41a00000    # 20.0f

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_114

    move v2, v7

    :goto_b7
    or-int/lit8 v2, v2, 0x30

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_116

    move v3, v9

    :goto_be
    const/high16 v4, 0x421c0000    # 39.0f

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_118

    move v5, v10

    :goto_c5
    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v11, v0}, Lorg/telegram/ui/Cells/GroupCreateUserCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 65
    if-eqz p2, :cond_fb

    .line 66
    new-instance v0, Lorg/telegram/ui/Components/GroupCreateCheckBox;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/GroupCreateCheckBox;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->checkBox:Lorg/telegram/ui/Components/GroupCreateCheckBox;

    .line 67
    iget-object v0, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->checkBox:Lorg/telegram/ui/Components/GroupCreateCheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/GroupCreateCheckBox;->setVisibility(I)V

    .line 68
    iget-object v9, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->checkBox:Lorg/telegram/ui/Components/GroupCreateCheckBox;

    const/16 v0, 0x18

    const/high16 v1, 0x41c00000    # 24.0f

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_11a

    :goto_e5
    or-int/lit8 v2, v7, 0x30

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_11c

    move v3, v6

    :goto_ec
    const/high16 v4, 0x42240000    # 41.0f

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_11f

    const/high16 v5, 0x42240000    # 41.0f

    :goto_f4
    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v9, v0}, Lorg/telegram/ui/Cells/GroupCreateUserCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 70
    :cond_fb
    return-void

    :cond_fc
    move v2, v8

    .line 51
    goto/16 :goto_2e

    :cond_ff
    const/high16 v3, 0x41300000    # 11.0f

    goto/16 :goto_35

    :cond_103
    move v5, v6

    goto/16 :goto_3d

    :cond_106
    move v0, v8

    .line 57
    goto/16 :goto_6f

    :cond_109
    move v2, v8

    .line 58
    goto/16 :goto_7e

    :cond_10c
    move v3, v10

    goto/16 :goto_85

    :cond_10f
    move v5, v9

    goto/16 :goto_8c

    :cond_112
    move v0, v8

    .line 62
    goto :goto_a8

    :cond_114
    move v2, v8

    .line 63
    goto :goto_b7

    :cond_116
    move v3, v10

    goto :goto_be

    :cond_118
    move v5, v9

    goto :goto_c5

    :cond_11a
    move v7, v8

    .line 68
    goto :goto_e5

    :cond_11c
    const/high16 v3, 0x42240000    # 41.0f

    goto :goto_ec

    :cond_11f
    move v5, v6

    goto :goto_f4
.end method


# virtual methods
.method public getUser()Lorg/telegram/tgnet/TLRPC$User;
    .registers 2

    .prologue
    .line 84
    iget-object v0, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    return-object v0
.end method

.method public hasOverlappingRendering()Z
    .registers 2

    .prologue
    .line 171
    const/4 v0, 0x0

    return v0
.end method

.method protected onMeasure(II)V
    .registers 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    .line 89
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    const/high16 v1, 0x42900000    # 72.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-super {p0, v0, v1}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 90
    return-void
.end method

.method public recycle()V
    .registers 2

    .prologue
    .line 93
    iget-object v0, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->cancelLoadImage()V

    .line 94
    return-void
.end method

.method public setChecked(ZZ)V
    .registers 4
    .param p1, "checked"    # Z
    .param p2, "animated"    # Z

    .prologue
    .line 80
    iget-object v0, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->checkBox:Lorg/telegram/ui/Components/GroupCreateCheckBox;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Components/GroupCreateCheckBox;->setChecked(ZZ)V

    .line 81
    return-void
.end method

.method public setUser(Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .registers 5
    .param p1, "user"    # Lorg/telegram/tgnet/TLRPC$User;
    .param p2, "name"    # Ljava/lang/CharSequence;
    .param p3, "status"    # Ljava/lang/CharSequence;

    .prologue
    .line 73
    iput-object p1, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    .line 74
    iput-object p3, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->currentStatus:Ljava/lang/CharSequence;

    .line 75
    iput-object p2, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->currentName:Ljava/lang/CharSequence;

    .line 76
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Cells/GroupCreateUserCell;->update(I)V

    .line 77
    return-void
.end method

.method public update(I)V
    .registers 11
    .param p1, "mask"    # I

    .prologue
    const/4 v8, 0x1

    .line 97
    iget-object v4, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    if-nez v4, :cond_6

    .line 167
    :cond_5
    :goto_5
    return-void

    .line 100
    :cond_6
    const/4 v3, 0x0

    .line 101
    .local v3, "photo":Lorg/telegram/tgnet/TLRPC$FileLocation;
    const/4 v1, 0x0

    .line 102
    .local v1, "newName":Ljava/lang/String;
    iget-object v4, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    if-eqz v4, :cond_14

    .line 103
    iget-object v4, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    iget-object v3, v4, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 106
    :cond_14
    if-eqz p1, :cond_7f

    .line 107
    const/4 v0, 0x0

    .line 108
    .local v0, "continueUpdate":Z
    and-int/lit8 v4, p1, 0x2

    if-eqz v4, :cond_40

    .line 109
    iget-object v4, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->lastAvatar:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v4, :cond_21

    if-eqz v3, :cond_3f

    :cond_21
    iget-object v4, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->lastAvatar:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-nez v4, :cond_40

    if-eqz v3, :cond_40

    iget-object v4, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->lastAvatar:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v4, :cond_40

    if-eqz v3, :cond_40

    iget-object v4, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->lastAvatar:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-wide v4, v4, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    iget-wide v6, v3, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_3f

    iget-object v4, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->lastAvatar:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    iget v5, v3, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    if-eq v4, v5, :cond_40

    .line 110
    :cond_3f
    const/4 v0, 0x1

    .line 113
    :cond_40
    iget-object v4, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v4, :cond_60

    iget-object v4, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->currentStatus:Ljava/lang/CharSequence;

    if-nez v4, :cond_60

    if-nez v0, :cond_60

    and-int/lit8 v4, p1, 0x4

    if-eqz v4, :cond_60

    .line 114
    const/4 v2, 0x0

    .line 115
    .local v2, "newStatus":I
    iget-object v4, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    if-eqz v4, :cond_5b

    .line 116
    iget-object v4, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    iget v2, v4, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    .line 118
    :cond_5b
    iget v4, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->lastStatus:I

    if-eq v2, v4, :cond_60

    .line 119
    const/4 v0, 0x1

    .line 122
    .end local v2    # "newStatus":I
    :cond_60
    if-nez v0, :cond_7d

    iget-object v4, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->currentName:Ljava/lang/CharSequence;

    if-nez v4, :cond_7d

    iget-object v4, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->lastName:Ljava/lang/String;

    if-eqz v4, :cond_7d

    and-int/lit8 v4, p1, 0x1

    if-eqz v4, :cond_7d

    .line 123
    iget-object v4, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v4}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v1

    .line 124
    iget-object v4, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->lastName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7d

    .line 125
    const/4 v0, 0x1

    .line 128
    :cond_7d
    if-eqz v0, :cond_5

    .line 133
    .end local v0    # "continueUpdate":Z
    :cond_7f
    iget-object v4, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    iget-object v5, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$User;)V

    .line 134
    iget-object v4, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    if-eqz v4, :cond_ca

    iget-object v4, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    :goto_92
    iput v4, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->lastStatus:I

    .line 136
    iget-object v4, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->currentName:Ljava/lang/CharSequence;

    if-eqz v4, :cond_cc

    .line 137
    const/4 v4, 0x0

    iput-object v4, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->lastName:Ljava/lang/String;

    .line 138
    iget-object v4, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget-object v5, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->currentName:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5, v8}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;Z)V

    .line 144
    .end local v1    # "newName":Ljava/lang/String;
    :goto_a2
    iget-object v4, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->currentStatus:Ljava/lang/CharSequence;

    if-eqz v4, :cond_de

    .line 145
    iget-object v4, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget-object v5, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->currentStatus:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5, v8}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;Z)V

    .line 146
    iget-object v4, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const-string v5, "groupcreate_offlineText"

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTag(Ljava/lang/Object;)V

    .line 147
    iget-object v4, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const-string v5, "groupcreate_offlineText"

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 166
    :goto_bf
    iget-object v4, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    const-string v5, "50_50"

    iget-object v6, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v4, v3, v5, v6}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_5

    .line 134
    .restart local v1    # "newName":Ljava/lang/String;
    :cond_ca
    const/4 v4, 0x0

    goto :goto_92

    .line 140
    :cond_cc
    if-nez v1, :cond_d4

    iget-object v4, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v4}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v1

    .end local v1    # "newName":Ljava/lang/String;
    :cond_d4
    iput-object v1, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->lastName:Ljava/lang/String;

    .line 141
    iget-object v4, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget-object v5, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->lastName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_a2

    .line 149
    :cond_de
    iget-object v4, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-eqz v4, :cond_105

    .line 150
    iget-object v4, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const-string v5, "groupcreate_offlineText"

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTag(Ljava/lang/Object;)V

    .line 151
    iget-object v4, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const-string v5, "groupcreate_offlineText"

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 152
    iget-object v4, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const-string v5, "Bot"

    const v6, 0x7f0700d9

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_bf

    .line 154
    :cond_105
    iget-object v4, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v5

    if-eq v4, v5, :cond_139

    iget-object v4, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    if-eqz v4, :cond_125

    iget-object v4, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v5

    if-gt v4, v5, :cond_139

    :cond_125
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/messenger/MessagesController;->onlinePrivacy:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v5, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15b

    .line 155
    :cond_139
    iget-object v4, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const-string v5, "groupcreate_offlineText"

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTag(Ljava/lang/Object;)V

    .line 156
    iget-object v4, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const-string v5, "groupcreate_onlineText"

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 157
    iget-object v4, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const-string v5, "Online"

    const v6, 0x7f0703d6

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_bf

    .line 159
    :cond_15b
    iget-object v4, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const-string v5, "groupcreate_offlineText"

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTag(Ljava/lang/Object;)V

    .line 160
    iget-object v4, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const-string v5, "groupcreate_offlineText"

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 161
    iget-object v4, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget-object v5, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->formatUserStatus(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_bf
.end method
