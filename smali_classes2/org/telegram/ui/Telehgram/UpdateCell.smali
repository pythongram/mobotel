.class public Lorg/telegram/ui/Telehgram/UpdateCell;
.super Landroid/widget/FrameLayout;
.source "UpdateCell.java"


# instance fields
.field private avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

.field private avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

.field private checkBox:Lorg/telegram/ui/Components/CheckBox;

.field private currentUser:Lorg/telegram/tgnet/TLRPC$User;

.field private dateTextView:Lorg/telegram/ui/Components/SimpleTextView;

.field private imageView:Landroid/widget/ImageView;

.field private lastName:Ljava/lang/String;

.field private nameTextView:Lorg/telegram/ui/Components/SimpleTextView;

.field private newValueColor:I

.field private newValueTextView:Lorg/telegram/ui/Components/SimpleTextView;

.field private oldValueColor:I

.field private oldValueTextView:Lorg/telegram/ui/Components/SimpleTextView;

.field private updateModel:Lorg/telegram/ui/Telehgram/UpdateModel;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "i"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RtlHardcoded"
        }
    .end annotation

    .prologue
    .line 44
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 45
    const/4 v7, 0x5

    .line 46
    .local v7, "i2":I
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Telehgram/UpdateCell;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Telehgram/UpdateCell;->lastName:Ljava/lang/String;

    .line 48
    const v0, -0x575758

    iput v0, p0, Lorg/telegram/ui/Telehgram/UpdateCell;->oldValueColor:I

    .line 49
    const v0, -0xc47b40

    iput v0, p0, Lorg/telegram/ui/Telehgram/UpdateCell;->newValueColor:I

    .line 50
    new-instance v0, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v0}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Telehgram/UpdateCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    .line 51
    new-instance v0, Lorg/telegram/ui/Components/BackupImageView;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Telehgram/UpdateCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    .line 52
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/UpdateCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    const/high16 v1, 0x41c00000    # 24.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    .line 53
    sget-boolean v9, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    .line 54
    .local v9, "z":Z
    iget-object v10, p0, Lorg/telegram/ui/Telehgram/UpdateCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    const/16 v0, 0x30

    const/high16 v1, 0x42400000    # 48.0f

    if-eqz v9, :cond_185

    const/4 v2, 0x5

    :goto_38
    or-int/lit8 v2, v2, 0x30

    if-eqz v9, :cond_188

    const/4 v3, 0x0

    :goto_3d
    const/high16 v4, 0x41000000    # 8.0f

    if-eqz v9, :cond_18d

    add-int/lit8 v5, p2, 0x7

    int-to-float v5, v5

    :goto_44
    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v10, v0}, Lorg/telegram/ui/Telehgram/UpdateCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 55
    new-instance v0, Lorg/telegram/ui/Components/SimpleTextView;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/SimpleTextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Telehgram/UpdateCell;->nameTextView:Lorg/telegram/ui/Components/SimpleTextView;

    .line 56
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/UpdateCell;->nameTextView:Lorg/telegram/ui/Components/SimpleTextView;

    const v1, -0xdededf

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/SimpleTextView;->setTextColor(I)V

    .line 57
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/UpdateCell;->nameTextView:Lorg/telegram/ui/Components/SimpleTextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/SimpleTextView;->setTextSize(I)V

    .line 58
    iget-object v1, p0, Lorg/telegram/ui/Telehgram/UpdateCell;->nameTextView:Lorg/telegram/ui/Components/SimpleTextView;

    if-eqz v9, :cond_190

    const/4 v0, 0x5

    :goto_67
    or-int/lit8 v0, v0, 0x30

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/SimpleTextView;->setGravity(I)V

    .line 59
    iget-object v10, p0, Lorg/telegram/ui/Telehgram/UpdateCell;->nameTextView:Lorg/telegram/ui/Components/SimpleTextView;

    const/4 v0, -0x1

    const/high16 v1, 0x41a00000    # 20.0f

    if-eqz v9, :cond_193

    const/4 v2, 0x5

    :goto_74
    or-int/lit8 v2, v2, 0x30

    if-eqz v9, :cond_196

    const/high16 v3, 0x41e00000    # 28.0f

    :goto_7a
    const/high16 v4, 0x41380000    # 11.5f

    if-eqz v9, :cond_19b

    add-int/lit8 v5, p2, 0x44

    int-to-float v5, v5

    :goto_81
    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v10, v0}, Lorg/telegram/ui/Telehgram/UpdateCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 60
    new-instance v0, Lorg/telegram/ui/Components/SimpleTextView;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/SimpleTextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Telehgram/UpdateCell;->oldValueTextView:Lorg/telegram/ui/Components/SimpleTextView;

    .line 61
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/UpdateCell;->oldValueTextView:Lorg/telegram/ui/Components/SimpleTextView;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/SimpleTextView;->setTextSize(I)V

    .line 62
    iget-object v1, p0, Lorg/telegram/ui/Telehgram/UpdateCell;->oldValueTextView:Lorg/telegram/ui/Components/SimpleTextView;

    if-eqz v9, :cond_19f

    const/4 v0, 0x5

    :goto_9c
    or-int/lit8 v0, v0, 0x30

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/SimpleTextView;->setGravity(I)V

    .line 63
    iget-object v10, p0, Lorg/telegram/ui/Telehgram/UpdateCell;->oldValueTextView:Lorg/telegram/ui/Components/SimpleTextView;

    const/4 v0, -0x1

    const/high16 v1, 0x41a00000    # 20.0f

    if-eqz v9, :cond_1a2

    const/4 v2, 0x5

    :goto_a9
    or-int/lit8 v2, v2, 0x30

    if-eqz v9, :cond_1a5

    const/high16 v3, 0x41e00000    # 28.0f

    :goto_af
    const/high16 v4, 0x420a0000    # 34.5f

    if-eqz v9, :cond_1aa

    add-int/lit8 v5, p2, 0x44

    int-to-float v5, v5

    :goto_b6
    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v10, v0}, Lorg/telegram/ui/Telehgram/UpdateCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 64
    new-instance v0, Lorg/telegram/ui/Components/SimpleTextView;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/SimpleTextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Telehgram/UpdateCell;->newValueTextView:Lorg/telegram/ui/Components/SimpleTextView;

    .line 65
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/UpdateCell;->newValueTextView:Lorg/telegram/ui/Components/SimpleTextView;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/SimpleTextView;->setTextSize(I)V

    .line 66
    iget-object v1, p0, Lorg/telegram/ui/Telehgram/UpdateCell;->newValueTextView:Lorg/telegram/ui/Components/SimpleTextView;

    if-eqz v9, :cond_1ae

    const/4 v0, 0x5

    :goto_d1
    or-int/lit8 v0, v0, 0x30

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/SimpleTextView;->setGravity(I)V

    .line 67
    iget-object v10, p0, Lorg/telegram/ui/Telehgram/UpdateCell;->newValueTextView:Lorg/telegram/ui/Components/SimpleTextView;

    const/4 v0, -0x1

    const/high16 v1, 0x41a00000    # 20.0f

    if-eqz v9, :cond_1b1

    const/4 v2, 0x5

    :goto_de
    or-int/lit8 v2, v2, 0x30

    if-eqz v9, :cond_1b4

    const/high16 v3, 0x41e00000    # 28.0f

    :goto_e4
    const/high16 v4, 0x42660000    # 57.5f

    if-eqz v9, :cond_1b9

    add-int/lit8 v5, p2, 0x44

    int-to-float v5, v5

    :goto_eb
    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v10, v0}, Lorg/telegram/ui/Telehgram/UpdateCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 68
    new-instance v0, Lorg/telegram/ui/Components/SimpleTextView;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/SimpleTextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Telehgram/UpdateCell;->dateTextView:Lorg/telegram/ui/Components/SimpleTextView;

    .line 69
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/UpdateCell;->dateTextView:Lorg/telegram/ui/Components/SimpleTextView;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/SimpleTextView;->setTextSize(I)V

    .line 70
    iget-object v1, p0, Lorg/telegram/ui/Telehgram/UpdateCell;->dateTextView:Lorg/telegram/ui/Components/SimpleTextView;

    if-eqz v9, :cond_1bd

    const/4 v0, 0x3

    :goto_106
    or-int/lit8 v0, v0, 0x30

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/SimpleTextView;->setGravity(I)V

    .line 71
    iget-object v10, p0, Lorg/telegram/ui/Telehgram/UpdateCell;->dateTextView:Lorg/telegram/ui/Components/SimpleTextView;

    const/4 v0, -0x1

    const/high16 v1, 0x41a00000    # 20.0f

    if-eqz v9, :cond_1c0

    const/4 v2, 0x3

    :goto_113
    or-int/lit8 v2, v2, 0x30

    if-eqz v9, :cond_1c3

    add-int/lit8 v3, p2, 0x5

    int-to-float v3, v3

    :goto_11a
    const/high16 v4, 0x42a10000    # 80.5f

    if-eqz v9, :cond_1c7

    const/high16 v5, 0x41e00000    # 28.0f

    :goto_120
    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v10, v0}, Lorg/telegram/ui/Telehgram/UpdateCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 72
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Telehgram/UpdateCell;->imageView:Landroid/widget/ImageView;

    .line 73
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/UpdateCell;->imageView:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 74
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/UpdateCell;->imageView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 75
    iget-object v10, p0, Lorg/telegram/ui/Telehgram/UpdateCell;->imageView:Landroid/widget/ImageView;

    const/4 v0, -0x2

    const/high16 v1, -0x40000000    # -2.0f

    if-eqz v9, :cond_1cc

    const/4 v2, 0x5

    :goto_145
    or-int/lit8 v2, v2, 0x10

    if-eqz v9, :cond_1cf

    const/4 v3, 0x0

    :goto_14a
    const/4 v4, 0x0

    if-eqz v9, :cond_1d3

    const/high16 v5, 0x41800000    # 16.0f

    :goto_14f
    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v10, v0}, Lorg/telegram/ui/Telehgram/UpdateCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 76
    new-instance v0, Lorg/telegram/ui/Components/CheckBox;

    const v1, 0x7f02023b

    invoke-direct {v0, p1, v1}, Lorg/telegram/ui/Components/CheckBox;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lorg/telegram/ui/Telehgram/UpdateCell;->checkBox:Lorg/telegram/ui/Components/CheckBox;

    .line 77
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/UpdateCell;->checkBox:Lorg/telegram/ui/Components/CheckBox;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/CheckBox;->setVisibility(I)V

    .line 78
    iget-object v8, p0, Lorg/telegram/ui/Telehgram/UpdateCell;->checkBox:Lorg/telegram/ui/Components/CheckBox;

    .line 79
    .local v8, "view":Landroid/view/View;
    if-nez v9, :cond_16c

    .line 80
    const/4 v7, 0x3

    .line 82
    :cond_16c
    const/16 v0, 0x16

    const/high16 v1, 0x41b00000    # 22.0f

    or-int/lit8 v2, v7, 0x30

    if-eqz v9, :cond_1d6

    const/4 v3, 0x0

    :goto_175
    const/high16 v4, 0x42180000    # 38.0f

    if-eqz v9, :cond_1da

    add-int/lit8 v5, p2, 0x25

    int-to-float v5, v5

    :goto_17c
    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v8, v0}, Lorg/telegram/ui/Telehgram/UpdateCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 83
    return-void

    .line 54
    .end local v8    # "view":Landroid/view/View;
    :cond_185
    const/4 v2, 0x3

    goto/16 :goto_38

    :cond_188
    add-int/lit8 v3, p2, 0x7

    int-to-float v3, v3

    goto/16 :goto_3d

    :cond_18d
    const/4 v5, 0x0

    goto/16 :goto_44

    .line 58
    :cond_190
    const/4 v0, 0x3

    goto/16 :goto_67

    .line 59
    :cond_193
    const/4 v2, 0x3

    goto/16 :goto_74

    :cond_196
    add-int/lit8 v3, p2, 0x44

    int-to-float v3, v3

    goto/16 :goto_7a

    :cond_19b
    const/high16 v5, 0x41e00000    # 28.0f

    goto/16 :goto_81

    .line 62
    :cond_19f
    const/4 v0, 0x3

    goto/16 :goto_9c

    .line 63
    :cond_1a2
    const/4 v2, 0x3

    goto/16 :goto_a9

    :cond_1a5
    add-int/lit8 v3, p2, 0x44

    int-to-float v3, v3

    goto/16 :goto_af

    :cond_1aa
    const/high16 v5, 0x41e00000    # 28.0f

    goto/16 :goto_b6

    .line 66
    :cond_1ae
    const/4 v0, 0x3

    goto/16 :goto_d1

    .line 67
    :cond_1b1
    const/4 v2, 0x3

    goto/16 :goto_de

    :cond_1b4
    add-int/lit8 v3, p2, 0x44

    int-to-float v3, v3

    goto/16 :goto_e4

    :cond_1b9
    const/high16 v5, 0x41e00000    # 28.0f

    goto/16 :goto_eb

    .line 70
    :cond_1bd
    const/4 v0, 0x5

    goto/16 :goto_106

    .line 71
    :cond_1c0
    const/4 v2, 0x5

    goto/16 :goto_113

    :cond_1c3
    const/high16 v3, 0x41e00000    # 28.0f

    goto/16 :goto_11a

    :cond_1c7
    add-int/lit8 v5, p2, 0xa

    int-to-float v5, v5

    goto/16 :goto_120

    .line 75
    :cond_1cc
    const/4 v2, 0x3

    goto/16 :goto_145

    :cond_1cf
    const/high16 v3, 0x41800000    # 16.0f

    goto/16 :goto_14a

    :cond_1d3
    const/4 v5, 0x0

    goto/16 :goto_14f

    .line 82
    .restart local v8    # "view":Landroid/view/View;
    :cond_1d6
    add-int/lit8 v3, p2, 0x25

    int-to-float v3, v3

    goto :goto_175

    :cond_1da
    const/4 v5, 0x0

    goto :goto_17c
.end method


# virtual methods
.method public getAvatarImageView()Lorg/telegram/ui/Components/BackupImageView;
    .registers 2

    .prologue
    .line 86
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/UpdateCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    return-object v0
.end method

.method protected onMeasure(II)V
    .registers 5
    .param p1, "i"    # I
    .param p2, "i2"    # I

    .prologue
    .line 90
    const/high16 v0, 0x42d00000    # 104.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-super {p0, p1, v0}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 91
    return-void
.end method

.method public setChecked(ZZ)V
    .registers 5
    .param p1, "z"    # Z
    .param p2, "z2"    # Z

    .prologue
    .line 94
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/UpdateCell;->checkBox:Lorg/telegram/ui/Components/CheckBox;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/CheckBox;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_e

    .line 95
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/UpdateCell;->checkBox:Lorg/telegram/ui/Components/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/CheckBox;->setVisibility(I)V

    .line 97
    :cond_e
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/UpdateCell;->checkBox:Lorg/telegram/ui/Components/CheckBox;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Components/CheckBox;->setChecked(ZZ)V

    .line 98
    return-void
.end method

.method public setData(Lorg/telegram/ui/Telehgram/UpdateModel;)V
    .registers 5
    .param p1, "updateModel"    # Lorg/telegram/ui/Telehgram/UpdateModel;

    .prologue
    .line 101
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-virtual {p1}, Lorg/telegram/ui/Telehgram/UpdateModel;->getUserId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    .line 102
    .local v0, "user":Lorg/telegram/tgnet/TLRPC$User;
    if-nez v0, :cond_1f

    .line 103
    iget-object v1, p0, Lorg/telegram/ui/Telehgram/UpdateCell;->nameTextView:Lorg/telegram/ui/Components/SimpleTextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/SimpleTextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    iget-object v1, p0, Lorg/telegram/ui/Telehgram/UpdateCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/BackupImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 106
    :cond_1f
    iput-object v0, p0, Lorg/telegram/ui/Telehgram/UpdateCell;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    .line 107
    iput-object p1, p0, Lorg/telegram/ui/Telehgram/UpdateCell;->updateModel:Lorg/telegram/ui/Telehgram/UpdateModel;

    .line 108
    invoke-virtual {p0}, Lorg/telegram/ui/Telehgram/UpdateCell;->update()V

    .line 109
    return-void
.end method

.method public update()V
    .registers 12

    .prologue
    const/4 v10, 0x2

    .line 112
    iget-object v5, p0, Lorg/telegram/ui/Telehgram/UpdateCell;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v5, :cond_37

    .line 113
    const/4 v3, 0x0

    .line 114
    .local v3, "tLObject":Lorg/telegram/tgnet/TLObject;
    iget-object v5, p0, Lorg/telegram/ui/Telehgram/UpdateCell;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    if-eqz v5, :cond_12

    .line 115
    iget-object v5, p0, Lorg/telegram/ui/Telehgram/UpdateCell;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    iget-object v3, v5, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 117
    :cond_12
    iget-object v5, p0, Lorg/telegram/ui/Telehgram/UpdateCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    iget-object v6, p0, Lorg/telegram/ui/Telehgram/UpdateCell;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$User;)V

    .line 118
    iget-object v5, p0, Lorg/telegram/ui/Telehgram/UpdateCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    const-string v6, "50_50"

    iget-object v7, p0, Lorg/telegram/ui/Telehgram/UpdateCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v5, v3, v6, v7}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 119
    iget-object v5, p0, Lorg/telegram/ui/Telehgram/UpdateCell;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v6, p0, Lorg/telegram/ui/Telehgram/UpdateCell;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v5, v6}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/telegram/ui/Telehgram/UpdateCell;->lastName:Ljava/lang/String;

    .line 120
    iget-object v5, p0, Lorg/telegram/ui/Telehgram/UpdateCell;->nameTextView:Lorg/telegram/ui/Components/SimpleTextView;

    iget-object v6, p0, Lorg/telegram/ui/Telehgram/UpdateCell;->lastName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Components/SimpleTextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    .end local v3    # "tLObject":Lorg/telegram/tgnet/TLObject;
    :cond_37
    iget-object v5, p0, Lorg/telegram/ui/Telehgram/UpdateCell;->oldValueTextView:Lorg/telegram/ui/Components/SimpleTextView;

    iget v6, p0, Lorg/telegram/ui/Telehgram/UpdateCell;->oldValueColor:I

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Components/SimpleTextView;->setTextColor(I)V

    .line 123
    iget-object v5, p0, Lorg/telegram/ui/Telehgram/UpdateCell;->newValueTextView:Lorg/telegram/ui/Components/SimpleTextView;

    iget v6, p0, Lorg/telegram/ui/Telehgram/UpdateCell;->newValueColor:I

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Components/SimpleTextView;->setTextColor(I)V

    .line 124
    iget-object v5, p0, Lorg/telegram/ui/Telehgram/UpdateCell;->updateModel:Lorg/telegram/ui/Telehgram/UpdateModel;

    invoke-virtual {v5}, Lorg/telegram/ui/Telehgram/UpdateModel;->getType()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_eb

    .line 125
    iget-object v5, p0, Lorg/telegram/ui/Telehgram/UpdateCell;->oldValueTextView:Lorg/telegram/ui/Components/SimpleTextView;

    const-string v6, ""

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Components/SimpleTextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    iget-object v5, p0, Lorg/telegram/ui/Telehgram/UpdateCell;->updateModel:Lorg/telegram/ui/Telehgram/UpdateModel;

    invoke-virtual {v5}, Lorg/telegram/ui/Telehgram/UpdateModel;->getNewValue()Ljava/lang/String;

    move-result-object v5

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_da

    .line 127
    iget-object v5, p0, Lorg/telegram/ui/Telehgram/UpdateCell;->newValueTextView:Lorg/telegram/ui/Components/SimpleTextView;

    invoke-virtual {p0}, Lorg/telegram/ui/Telehgram/UpdateCell;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f07087a

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Components/SimpleTextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    :cond_73
    :goto_73
    iget-object v5, p0, Lorg/telegram/ui/Telehgram/UpdateCell;->updateModel:Lorg/telegram/ui/Telehgram/UpdateModel;

    invoke-virtual {v5}, Lorg/telegram/ui/Telehgram/UpdateModel;->getChangeDate()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 142
    .local v4, "valueOf":Ljava/lang/Long;
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-eqz v5, :cond_d9

    .line 143
    new-instance v1, Ljava/util/Date;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-direct {v1, v6, v7}, Ljava/util/Date;-><init>(J)V

    .line 144
    .local v1, "date":Ljava/util/Date;
    invoke-static {v1}, Lorg/telegram/ui/Telehgram/Teleh/bd;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 145
    .local v0, "a":Ljava/lang/String;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 146
    .local v2, "instance":Ljava/util/Calendar;
    invoke-virtual {v2, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 147
    iget-object v5, p0, Lorg/telegram/ui/Telehgram/UpdateCell;->dateTextView:Lorg/telegram/ui/Components/SimpleTextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0xb

    invoke-virtual {v2, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-static {v7, v10}, Lorg/telegram/ui/Telehgram/Teleh/bd;->a(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0xc

    invoke-virtual {v2, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-static {v7, v10}, Lorg/telegram/ui/Telehgram/Teleh/bd;->a(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Components/SimpleTextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    .end local v0    # "a":Ljava/lang/String;
    .end local v1    # "date":Ljava/util/Date;
    .end local v2    # "instance":Ljava/util/Calendar;
    :cond_d9
    return-void

    .line 129
    .end local v4    # "valueOf":Ljava/lang/Long;
    :cond_da
    iget-object v5, p0, Lorg/telegram/ui/Telehgram/UpdateCell;->newValueTextView:Lorg/telegram/ui/Components/SimpleTextView;

    invoke-virtual {p0}, Lorg/telegram/ui/Telehgram/UpdateCell;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f070879

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Components/SimpleTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_73

    .line 131
    :cond_eb
    iget-object v5, p0, Lorg/telegram/ui/Telehgram/UpdateCell;->updateModel:Lorg/telegram/ui/Telehgram/UpdateModel;

    invoke-virtual {v5}, Lorg/telegram/ui/Telehgram/UpdateModel;->getType()I

    move-result v5

    if-ne v5, v10, :cond_15f

    .line 132
    iget-object v5, p0, Lorg/telegram/ui/Telehgram/UpdateCell;->oldValueTextView:Lorg/telegram/ui/Components/SimpleTextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/telegram/ui/Telehgram/UpdateCell;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f07088e

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/telegram/ui/Telehgram/UpdateCell;->updateModel:Lorg/telegram/ui/Telehgram/UpdateModel;

    invoke-virtual {v7}, Lorg/telegram/ui/Telehgram/UpdateModel;->getOldValue()Ljava/lang/String;

    move-result-object v7

    const-string v8, ";;;"

    const-string v9, " - "

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Components/SimpleTextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    iget-object v5, p0, Lorg/telegram/ui/Telehgram/UpdateCell;->newValueTextView:Lorg/telegram/ui/Components/SimpleTextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/telegram/ui/Telehgram/UpdateCell;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f070883

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/telegram/ui/Telehgram/UpdateCell;->updateModel:Lorg/telegram/ui/Telehgram/UpdateModel;

    invoke-virtual {v7}, Lorg/telegram/ui/Telehgram/UpdateModel;->getNewValue()Ljava/lang/String;

    move-result-object v7

    const-string v8, ";;;"

    const-string v9, " - "

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Components/SimpleTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_73

    .line 134
    :cond_15f
    iget-object v5, p0, Lorg/telegram/ui/Telehgram/UpdateCell;->updateModel:Lorg/telegram/ui/Telehgram/UpdateModel;

    invoke-virtual {v5}, Lorg/telegram/ui/Telehgram/UpdateModel;->getType()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_181

    .line 135
    iget-object v5, p0, Lorg/telegram/ui/Telehgram/UpdateCell;->oldValueTextView:Lorg/telegram/ui/Components/SimpleTextView;

    const-string v6, ""

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Components/SimpleTextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    iget-object v5, p0, Lorg/telegram/ui/Telehgram/UpdateCell;->newValueTextView:Lorg/telegram/ui/Components/SimpleTextView;

    invoke-virtual {p0}, Lorg/telegram/ui/Telehgram/UpdateCell;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f070852

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Components/SimpleTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_73

    .line 137
    :cond_181
    iget-object v5, p0, Lorg/telegram/ui/Telehgram/UpdateCell;->updateModel:Lorg/telegram/ui/Telehgram/UpdateModel;

    invoke-virtual {v5}, Lorg/telegram/ui/Telehgram/UpdateModel;->getType()I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_73

    .line 138
    iget-object v5, p0, Lorg/telegram/ui/Telehgram/UpdateCell;->oldValueTextView:Lorg/telegram/ui/Components/SimpleTextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/telegram/ui/Telehgram/UpdateCell;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f07088f

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/telegram/ui/Telehgram/UpdateCell;->updateModel:Lorg/telegram/ui/Telehgram/UpdateModel;

    invoke-virtual {v7}, Lorg/telegram/ui/Telehgram/UpdateModel;->getOldValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Components/SimpleTextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    iget-object v5, p0, Lorg/telegram/ui/Telehgram/UpdateCell;->newValueTextView:Lorg/telegram/ui/Components/SimpleTextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/telegram/ui/Telehgram/UpdateCell;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f070884

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/telegram/ui/Telehgram/UpdateCell;->updateModel:Lorg/telegram/ui/Telehgram/UpdateModel;

    invoke-virtual {v7}, Lorg/telegram/ui/Telehgram/UpdateModel;->getNewValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Components/SimpleTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_73
.end method
