.class public Lorg/telegram/ui/Cells/AdminedChannelCell;
.super Landroid/widget/FrameLayout;
.source "AdminedChannelCell.java"


# instance fields
.field private avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

.field private avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

.field private currentChannel:Lorg/telegram/tgnet/TLRPC$Chat;

.field private deleteButton:Landroid/widget/ImageView;

.field private isLast:Z

.field private nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

.field private statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View$OnClickListener;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "onClickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 46
    new-instance v0, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v0}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Cells/AdminedChannelCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    .line 48
    new-instance v0, Lorg/telegram/ui/Components/BackupImageView;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/AdminedChannelCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    .line 49
    iget-object v0, p0, Lorg/telegram/ui/Cells/AdminedChannelCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    const/high16 v1, 0x41c00000    # 24.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    .line 50
    iget-object v7, p0, Lorg/telegram/ui/Cells/AdminedChannelCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    const/16 v0, 0x30

    const/high16 v1, 0x42400000    # 48.0f

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_127

    const/4 v2, 0x5

    :goto_27
    or-int/lit8 v2, v2, 0x30

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_12a

    const/4 v3, 0x0

    :goto_2e
    const/high16 v4, 0x41400000    # 12.0f

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_12e

    const/high16 v5, 0x41400000    # 12.0f

    :goto_36
    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v7, v0}, Lorg/telegram/ui/Cells/AdminedChannelCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 52
    new-instance v0, Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-direct {v0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/AdminedChannelCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    .line 53
    iget-object v0, p0, Lorg/telegram/ui/Cells/AdminedChannelCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const-string v1, "windowBackgroundWhiteBlackText"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 54
    iget-object v0, p0, Lorg/telegram/ui/Cells/AdminedChannelCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    .line 55
    iget-object v1, p0, Lorg/telegram/ui/Cells/AdminedChannelCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_131

    const/4 v0, 0x5

    :goto_5e
    or-int/lit8 v0, v0, 0x30

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setGravity(I)V

    .line 56
    iget-object v7, p0, Lorg/telegram/ui/Cells/AdminedChannelCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v0, -0x1

    const/high16 v1, 0x41a00000    # 20.0f

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_134

    const/4 v2, 0x5

    :goto_6d
    or-int/lit8 v2, v2, 0x30

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_137

    const/high16 v3, 0x42780000    # 62.0f

    :goto_75
    const/high16 v4, 0x41780000    # 15.5f

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_13b

    const/high16 v5, 0x42920000    # 73.0f

    :goto_7d
    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v7, v0}, Lorg/telegram/ui/Cells/AdminedChannelCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 58
    new-instance v0, Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-direct {v0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/AdminedChannelCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    .line 59
    iget-object v0, p0, Lorg/telegram/ui/Cells/AdminedChannelCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    .line 60
    iget-object v0, p0, Lorg/telegram/ui/Cells/AdminedChannelCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const-string v1, "windowBackgroundWhiteGrayText"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 61
    iget-object v0, p0, Lorg/telegram/ui/Cells/AdminedChannelCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const-string v1, "windowBackgroundWhiteLinkText"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setLinkTextColor(I)V

    .line 62
    iget-object v1, p0, Lorg/telegram/ui/Cells/AdminedChannelCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_13f

    const/4 v0, 0x5

    :goto_b0
    or-int/lit8 v0, v0, 0x30

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setGravity(I)V

    .line 63
    iget-object v7, p0, Lorg/telegram/ui/Cells/AdminedChannelCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v0, -0x1

    const/high16 v1, 0x41a00000    # 20.0f

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_142

    const/4 v2, 0x5

    :goto_bf
    or-int/lit8 v2, v2, 0x30

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_145

    const/high16 v3, 0x42780000    # 62.0f

    :goto_c7
    const/high16 v4, 0x421a0000    # 38.5f

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_148

    const/high16 v5, 0x42920000    # 73.0f

    :goto_cf
    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v7, v0}, Lorg/telegram/ui/Cells/AdminedChannelCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 65
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/AdminedChannelCell;->deleteButton:Landroid/widget/ImageView;

    .line 66
    iget-object v0, p0, Lorg/telegram/ui/Cells/AdminedChannelCell;->deleteButton:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 67
    iget-object v0, p0, Lorg/telegram/ui/Cells/AdminedChannelCell;->deleteButton:Landroid/widget/ImageView;

    const v1, 0x7f0201df

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 68
    iget-object v0, p0, Lorg/telegram/ui/Cells/AdminedChannelCell;->deleteButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    iget-object v0, p0, Lorg/telegram/ui/Cells/AdminedChannelCell;->deleteButton:Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    const-string v2, "windowBackgroundWhiteGrayText"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 70
    iget-object v7, p0, Lorg/telegram/ui/Cells/AdminedChannelCell;->deleteButton:Landroid/widget/ImageView;

    const/16 v0, 0x30

    const/high16 v1, 0x42400000    # 48.0f

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_14b

    const/4 v2, 0x3

    :goto_10f
    or-int/lit8 v2, v2, 0x30

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_14d

    const/high16 v3, 0x40e00000    # 7.0f

    :goto_117
    const/high16 v4, 0x41400000    # 12.0f

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_14f

    const/4 v5, 0x0

    :goto_11e
    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v7, v0}, Lorg/telegram/ui/Cells/AdminedChannelCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 71
    return-void

    .line 50
    :cond_127
    const/4 v2, 0x3

    goto/16 :goto_27

    :cond_12a
    const/high16 v3, 0x41400000    # 12.0f

    goto/16 :goto_2e

    :cond_12e
    const/4 v5, 0x0

    goto/16 :goto_36

    .line 55
    :cond_131
    const/4 v0, 0x3

    goto/16 :goto_5e

    .line 56
    :cond_134
    const/4 v2, 0x3

    goto/16 :goto_6d

    :cond_137
    const/high16 v3, 0x42920000    # 73.0f

    goto/16 :goto_75

    :cond_13b
    const/high16 v5, 0x42780000    # 62.0f

    goto/16 :goto_7d

    .line 62
    :cond_13f
    const/4 v0, 0x3

    goto/16 :goto_b0

    .line 63
    :cond_142
    const/4 v2, 0x3

    goto/16 :goto_bf

    :cond_145
    const/high16 v3, 0x42920000    # 73.0f

    goto :goto_c7

    :cond_148
    const/high16 v5, 0x42780000    # 62.0f

    goto :goto_cf

    .line 70
    :cond_14b
    const/4 v2, 0x5

    goto :goto_10f

    :cond_14d
    const/4 v3, 0x0

    goto :goto_117

    :cond_14f
    const/high16 v5, 0x40e00000    # 7.0f

    goto :goto_11e
.end method


# virtual methods
.method public getCurrentChannel()Lorg/telegram/tgnet/TLRPC$Chat;
    .registers 2

    .prologue
    .line 95
    iget-object v0, p0, Lorg/telegram/ui/Cells/AdminedChannelCell;->currentChannel:Lorg/telegram/tgnet/TLRPC$Chat;

    return-object v0
.end method

.method public getDeleteButton()Landroid/widget/ImageView;
    .registers 2

    .prologue
    .line 117
    iget-object v0, p0, Lorg/telegram/ui/Cells/AdminedChannelCell;->deleteButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getNameTextView()Lorg/telegram/ui/ActionBar/SimpleTextView;
    .registers 2

    .prologue
    .line 109
    iget-object v0, p0, Lorg/telegram/ui/Cells/AdminedChannelCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    return-object v0
.end method

.method public getStatusTextView()Lorg/telegram/ui/ActionBar/SimpleTextView;
    .registers 2

    .prologue
    .line 113
    iget-object v0, p0, Lorg/telegram/ui/Cells/AdminedChannelCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    return-object v0
.end method

.method public hasOverlappingRendering()Z
    .registers 2

    .prologue
    .line 105
    const/4 v0, 0x0

    return v0
.end method

.method protected onMeasure(II)V
    .registers 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    .line 100
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iget-boolean v0, p0, Lorg/telegram/ui/Cells/AdminedChannelCell;->isLast:Z

    if-eqz v0, :cond_1f

    const/16 v0, 0xc

    :goto_10
    add-int/lit8 v0, v0, 0x3c

    int-to-float v0, v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-super {p0, v1, v0}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 101
    return-void

    .line 100
    :cond_1f
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public setChannel(Lorg/telegram/tgnet/TLRPC$Chat;Z)V
    .registers 10
    .param p1, "channel"    # Lorg/telegram/tgnet/TLRPC$Chat;
    .param p2, "last"    # Z

    .prologue
    .line 74
    const/4 v0, 0x0

    .line 75
    .local v0, "photo":Lorg/telegram/tgnet/TLRPC$FileLocation;
    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    if-eqz v3, :cond_9

    .line 76
    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    iget-object v0, v3, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 78
    :cond_9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/messenger/MessagesController;->linkPrefix:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 79
    .local v2, "url":Ljava/lang/String;
    iput-object p1, p0, Lorg/telegram/ui/Cells/AdminedChannelCell;->currentChannel:Lorg/telegram/tgnet/TLRPC$Chat;

    .line 80
    iget-object v3, p0, Lorg/telegram/ui/Cells/AdminedChannelCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v3, p1}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$Chat;)V

    .line 81
    iget-object v3, p0, Lorg/telegram/ui/Cells/AdminedChannelCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget-object v4, p1, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    new-instance v1, Landroid/text/SpannableStringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lorg/telegram/tgnet/TLRPC$Chat;->username:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 83
    .local v1, "stringBuilder":Landroid/text/SpannableStringBuilder;
    new-instance v3, Lorg/telegram/ui/Components/URLSpanNoUnderline;

    const-string v4, ""

    invoke-direct {v3, v4}, Lorg/telegram/ui/Components/URLSpanNoUnderline;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    const/16 v6, 0x21

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 84
    iget-object v3, p0, Lorg/telegram/ui/Cells/AdminedChannelCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v3, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    iget-object v3, p0, Lorg/telegram/ui/Cells/AdminedChannelCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    const-string v4, "50_50"

    iget-object v5, p0, Lorg/telegram/ui/Cells/AdminedChannelCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v3, v0, v4, v5}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 86
    iput-boolean p2, p0, Lorg/telegram/ui/Cells/AdminedChannelCell;->isLast:Z

    .line 87
    return-void
.end method

.method public update()V
    .registers 3

    .prologue
    .line 90
    iget-object v0, p0, Lorg/telegram/ui/Cells/AdminedChannelCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    iget-object v1, p0, Lorg/telegram/ui/Cells/AdminedChannelCell;->currentChannel:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$Chat;)V

    .line 91
    iget-object v0, p0, Lorg/telegram/ui/Cells/AdminedChannelCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BackupImageView;->invalidate()V

    .line 92
    return-void
.end method
