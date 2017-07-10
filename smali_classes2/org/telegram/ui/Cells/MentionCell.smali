.class public Lorg/telegram/ui/Cells/MentionCell;
.super Landroid/widget/LinearLayout;
.source "MentionCell.java"


# instance fields
.field private avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

.field private imageView:Lorg/telegram/ui/Components/BackupImageView;

.field private nameTextView:Landroid/widget/TextView;

.field private usernameTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v2, 0x41400000    # 12.0f

    const/4 v4, 0x0

    const/4 v10, 0x1

    const/4 v9, -0x2

    const/4 v8, 0x0

    .line 35
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 37
    invoke-virtual {p0, v8}, Lorg/telegram/ui/Cells/MentionCell;->setOrientation(I)V

    .line 39
    new-instance v0, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v0}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Cells/MentionCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    .line 40
    iget-object v0, p0, Lorg/telegram/ui/Cells/MentionCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AvatarDrawable;->setTextSize(I)V

    .line 42
    new-instance v0, Lorg/telegram/ui/Components/BackupImageView;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/MentionCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    .line 43
    iget-object v0, p0, Lorg/telegram/ui/Cells/MentionCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    const/high16 v1, 0x41600000    # 14.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    .line 44
    iget-object v6, p0, Lorg/telegram/ui/Cells/MentionCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    const/16 v0, 0x1c

    const/16 v1, 0x1c

    const/high16 v3, 0x40800000    # 4.0f

    move v5, v4

    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v6, v0}, Lorg/telegram/ui/Cells/MentionCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 46
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/MentionCell;->nameTextView:Landroid/widget/TextView;

    .line 47
    iget-object v0, p0, Lorg/telegram/ui/Cells/MentionCell;->nameTextView:Landroid/widget/TextView;

    const-string v1, "windowBackgroundWhiteBlackText"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 48
    iget-object v0, p0, Lorg/telegram/ui/Cells/MentionCell;->nameTextView:Landroid/widget/TextView;

    const/high16 v1, 0x41700000    # 15.0f

    invoke-virtual {v0, v10, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 49
    iget-object v0, p0, Lorg/telegram/ui/Cells/MentionCell;->nameTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 50
    iget-object v0, p0, Lorg/telegram/ui/Cells/MentionCell;->nameTextView:Landroid/widget/TextView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 51
    iget-object v0, p0, Lorg/telegram/ui/Cells/MentionCell;->nameTextView:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 52
    iget-object v7, p0, Lorg/telegram/ui/Cells/MentionCell;->nameTextView:Landroid/widget/TextView;

    const/16 v2, 0x10

    const/16 v3, 0xc

    move v0, v9

    move v1, v9

    move v4, v8

    move v5, v8

    move v6, v8

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v7, v0}, Lorg/telegram/ui/Cells/MentionCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 54
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/MentionCell;->usernameTextView:Landroid/widget/TextView;

    .line 55
    iget-object v0, p0, Lorg/telegram/ui/Cells/MentionCell;->usernameTextView:Landroid/widget/TextView;

    const-string v1, "windowBackgroundWhiteGrayText3"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 56
    iget-object v0, p0, Lorg/telegram/ui/Cells/MentionCell;->usernameTextView:Landroid/widget/TextView;

    const/high16 v1, 0x41700000    # 15.0f

    invoke-virtual {v0, v10, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 57
    iget-object v0, p0, Lorg/telegram/ui/Cells/MentionCell;->usernameTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 58
    iget-object v0, p0, Lorg/telegram/ui/Cells/MentionCell;->usernameTextView:Landroid/widget/TextView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 59
    iget-object v0, p0, Lorg/telegram/ui/Cells/MentionCell;->usernameTextView:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 60
    iget-object v7, p0, Lorg/telegram/ui/Cells/MentionCell;->usernameTextView:Landroid/widget/TextView;

    const/16 v2, 0x10

    const/16 v3, 0xc

    const/16 v5, 0x8

    move v0, v9

    move v1, v9

    move v4, v8

    move v6, v8

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v7, v0}, Lorg/telegram/ui/Cells/MentionCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 61
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .registers 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    .line 65
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    const/high16 v1, 0x42100000    # 36.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-super {p0, v0, v1}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 66
    return-void
.end method

.method public setBotCommand(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$User;)V
    .registers 9
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "help"    # Ljava/lang/String;
    .param p3, "user"    # Lorg/telegram/tgnet/TLRPC$User;

    .prologue
    const/4 v4, 0x0

    .line 98
    if-eqz p3, :cond_50

    .line 99
    iget-object v0, p0, Lorg/telegram/ui/Cells/MentionCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/BackupImageView;->setVisibility(I)V

    .line 100
    iget-object v0, p0, Lorg/telegram/ui/Cells/MentionCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v0, p3}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$User;)V

    .line 101
    iget-object v0, p3, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    if-eqz v0, :cond_48

    iget-object v0, p3, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v0, :cond_48

    .line 102
    iget-object v0, p0, Lorg/telegram/ui/Cells/MentionCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v1, p3, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    const-string v2, "50_50"

    iget-object v3, p0, Lorg/telegram/ui/Cells/MentionCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 109
    :goto_24
    iget-object v0, p0, Lorg/telegram/ui/Cells/MentionCell;->usernameTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 110
    iget-object v0, p0, Lorg/telegram/ui/Cells/MentionCell;->nameTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    iget-object v0, p0, Lorg/telegram/ui/Cells/MentionCell;->usernameTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lorg/telegram/ui/Cells/MentionCell;->usernameTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v1

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static {p2, v1, v2, v4}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;IZ)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    return-void

    .line 104
    :cond_48
    iget-object v0, p0, Lorg/telegram/ui/Cells/MentionCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v1, p0, Lorg/telegram/ui/Cells/MentionCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/BackupImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_24

    .line 107
    :cond_50
    iget-object v0, p0, Lorg/telegram/ui/Cells/MentionCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/BackupImageView;->setVisibility(I)V

    goto :goto_24
.end method

.method public setIsDarkTheme(Z)V
    .registers 4
    .param p1, "isDarkTheme"    # Z

    .prologue
    .line 115
    if-eqz p1, :cond_11

    .line 116
    iget-object v0, p0, Lorg/telegram/ui/Cells/MentionCell;->nameTextView:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 117
    iget-object v0, p0, Lorg/telegram/ui/Cells/MentionCell;->usernameTextView:Landroid/widget/TextView;

    const v1, -0x666667

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 122
    :goto_10
    return-void

    .line 119
    :cond_11
    iget-object v0, p0, Lorg/telegram/ui/Cells/MentionCell;->nameTextView:Landroid/widget/TextView;

    const-string v1, "windowBackgroundWhiteBlackText"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 120
    iget-object v0, p0, Lorg/telegram/ui/Cells/MentionCell;->usernameTextView:Landroid/widget/TextView;

    const-string v1, "windowBackgroundWhiteGrayText3"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_10
.end method

.method public setText(Ljava/lang/String;)V
    .registers 4
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x4

    .line 92
    iget-object v0, p0, Lorg/telegram/ui/Cells/MentionCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/BackupImageView;->setVisibility(I)V

    .line 93
    iget-object v0, p0, Lorg/telegram/ui/Cells/MentionCell;->usernameTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 94
    iget-object v0, p0, Lorg/telegram/ui/Cells/MentionCell;->nameTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    return-void
.end method

.method public setUser(Lorg/telegram/tgnet/TLRPC$User;)V
    .registers 7
    .param p1, "user"    # Lorg/telegram/tgnet/TLRPC$User;

    .prologue
    const/4 v4, 0x0

    .line 69
    if-nez p1, :cond_18

    .line 70
    iget-object v0, p0, Lorg/telegram/ui/Cells/MentionCell;->nameTextView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    iget-object v0, p0, Lorg/telegram/ui/Cells/MentionCell;->usernameTextView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    iget-object v0, p0, Lorg/telegram/ui/Cells/MentionCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/BackupImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 89
    :goto_17
    return-void

    .line 75
    :cond_18
    iget-object v0, p0, Lorg/telegram/ui/Cells/MentionCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$User;)V

    .line 76
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    if-eqz v0, :cond_66

    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v0, :cond_66

    .line 77
    iget-object v0, p0, Lorg/telegram/ui/Cells/MentionCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    const-string v2, "50_50"

    iget-object v3, p0, Lorg/telegram/ui/Cells/MentionCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 81
    :goto_34
    iget-object v0, p0, Lorg/telegram/ui/Cells/MentionCell;->nameTextView:Landroid/widget/TextView;

    invoke-static {p1}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    if-eqz v0, :cond_6e

    .line 83
    iget-object v0, p0, Lorg/telegram/ui/Cells/MentionCell;->usernameTextView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    :goto_5b
    iget-object v0, p0, Lorg/telegram/ui/Cells/MentionCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/BackupImageView;->setVisibility(I)V

    .line 88
    iget-object v0, p0, Lorg/telegram/ui/Cells/MentionCell;->usernameTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_17

    .line 79
    :cond_66
    iget-object v0, p0, Lorg/telegram/ui/Cells/MentionCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v1, p0, Lorg/telegram/ui/Cells/MentionCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/BackupImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_34

    .line 85
    :cond_6e
    iget-object v0, p0, Lorg/telegram/ui/Cells/MentionCell;->usernameTextView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5b
.end method
