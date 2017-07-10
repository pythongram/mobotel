.class public Lorg/telegram/ui/Cells/SharedDocumentCell;
.super Landroid/widget/FrameLayout;
.source "SharedDocumentCell.java"

# interfaces
.implements Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;


# instance fields
.field private TAG:I

.field private checkBox:Lorg/telegram/ui/Components/CheckBox;

.field private dateTextView:Landroid/widget/TextView;

.field private extTextView:Landroid/widget/TextView;

.field private icons:[I

.field private loaded:Z

.field private loading:Z

.field private message:Lorg/telegram/messenger/MessageObject;

.field private nameTextView:Landroid/widget/TextView;

.field private needDivider:Z

.field private placeholderImageView:Landroid/widget/ImageView;

.field private progressView:Lorg/telegram/ui/Components/LineProgressView;

.field private statusImageView:Landroid/widget/ImageView;

.field private thumbImageView:Lorg/telegram/ui/Components/BackupImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 68
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 60
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_2b8

    iput-object v0, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->icons:[I

    .line 70
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaController;->generateObserverTag()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->TAG:I

    .line 72
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->placeholderImageView:Landroid/widget/ImageView;

    .line 73
    iget-object v7, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->placeholderImageView:Landroid/widget/ImageView;

    const/16 v0, 0x28

    const/high16 v1, 0x42200000    # 40.0f

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_261

    const/4 v2, 0x5

    :goto_27
    or-int/lit8 v2, v2, 0x30

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_264

    const/4 v3, 0x0

    :goto_2e
    const/high16 v4, 0x41000000    # 8.0f

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_268

    const/high16 v5, 0x41400000    # 12.0f

    :goto_36
    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v7, v0}, Lorg/telegram/ui/Cells/SharedDocumentCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 75
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->extTextView:Landroid/widget/TextView;

    .line 76
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->extTextView:Landroid/widget/TextView;

    const-string v1, "files_iconText"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 77
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->extTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    const/high16 v2, 0x41600000    # 14.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 78
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->extTextView:Landroid/widget/TextView;

    const-string v1, "fonts/rmedium.ttf"

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 79
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->extTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLines(I)V

    .line 80
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->extTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 81
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->extTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 82
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->extTextView:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 83
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->extTextView:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 84
    iget-object v7, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->extTextView:Landroid/widget/TextView;

    const/16 v0, 0x20

    const/high16 v1, -0x40000000    # -2.0f

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_26b

    const/4 v2, 0x5

    :goto_8e
    or-int/lit8 v2, v2, 0x30

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_26e

    const/4 v3, 0x0

    :goto_95
    const/high16 v4, 0x41b00000    # 22.0f

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_272

    const/high16 v5, 0x41800000    # 16.0f

    :goto_9d
    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v7, v0}, Lorg/telegram/ui/Cells/SharedDocumentCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 86
    new-instance v0, Lorg/telegram/ui/Components/BackupImageView;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->thumbImageView:Lorg/telegram/ui/Components/BackupImageView;

    .line 87
    iget-object v7, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->thumbImageView:Lorg/telegram/ui/Components/BackupImageView;

    const/16 v0, 0x28

    const/high16 v1, 0x42200000    # 40.0f

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_275

    const/4 v2, 0x5

    :goto_b7
    or-int/lit8 v2, v2, 0x30

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_278

    const/4 v3, 0x0

    :goto_be
    const/high16 v4, 0x41000000    # 8.0f

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_27c

    const/high16 v5, 0x41400000    # 12.0f

    :goto_c6
    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v7, v0}, Lorg/telegram/ui/Cells/SharedDocumentCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 88
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->thumbImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Cells/SharedDocumentCell$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Cells/SharedDocumentCell$1;-><init>(Lorg/telegram/ui/Cells/SharedDocumentCell;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageReceiver;->setDelegate(Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;)V

    .line 96
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->nameTextView:Landroid/widget/TextView;

    .line 97
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->nameTextView:Landroid/widget/TextView;

    const-string v1, "windowBackgroundWhiteBlackText"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 98
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->nameTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    const/high16 v2, 0x41800000    # 16.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 99
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->nameTextView:Landroid/widget/TextView;

    const-string v1, "fonts/rmedium.ttf"

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 100
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->nameTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLines(I)V

    .line 101
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->nameTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 102
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->nameTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 103
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->nameTextView:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 104
    iget-object v1, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->nameTextView:Landroid/widget/TextView;

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_27f

    const/4 v0, 0x5

    :goto_121
    or-int/lit8 v0, v0, 0x10

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 105
    iget-object v7, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->nameTextView:Landroid/widget/TextView;

    const/4 v0, -0x1

    const/high16 v1, -0x40000000    # -2.0f

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_282

    const/4 v2, 0x5

    :goto_130
    or-int/lit8 v2, v2, 0x30

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_285

    const/high16 v3, 0x41000000    # 8.0f

    :goto_138
    const/high16 v4, 0x40a00000    # 5.0f

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_289

    const/high16 v5, 0x42900000    # 72.0f

    :goto_140
    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v7, v0}, Lorg/telegram/ui/Cells/SharedDocumentCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 107
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->statusImageView:Landroid/widget/ImageView;

    .line 108
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->statusImageView:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 109
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->statusImageView:Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    const-string v2, "sharedMedia_startStopLoadIcon"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 110
    iget-object v7, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->statusImageView:Landroid/widget/ImageView;

    const/4 v0, -0x2

    const/high16 v1, -0x40000000    # -2.0f

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_28d

    const/4 v2, 0x5

    :goto_171
    or-int/lit8 v2, v2, 0x30

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_290

    const/high16 v3, 0x41000000    # 8.0f

    :goto_179
    const/high16 v4, 0x420c0000    # 35.0f

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_294

    const/high16 v5, 0x42900000    # 72.0f

    :goto_181
    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v7, v0}, Lorg/telegram/ui/Cells/SharedDocumentCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 112
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->dateTextView:Landroid/widget/TextView;

    .line 113
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->dateTextView:Landroid/widget/TextView;

    const-string v1, "windowBackgroundWhiteGrayText3"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 114
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->dateTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    const/high16 v2, 0x41600000    # 14.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 115
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->dateTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLines(I)V

    .line 116
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->dateTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 117
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->dateTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 118
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->dateTextView:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 119
    iget-object v1, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->dateTextView:Landroid/widget/TextView;

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_298

    const/4 v0, 0x5

    :goto_1c3
    or-int/lit8 v0, v0, 0x10

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 120
    iget-object v7, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->dateTextView:Landroid/widget/TextView;

    const/4 v0, -0x1

    const/high16 v1, -0x40000000    # -2.0f

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_29b

    const/4 v2, 0x5

    :goto_1d2
    or-int/lit8 v2, v2, 0x30

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_29e

    const/high16 v3, 0x41000000    # 8.0f

    :goto_1da
    const/high16 v4, 0x41f00000    # 30.0f

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_2a2

    const/high16 v5, 0x42900000    # 72.0f

    :goto_1e2
    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v7, v0}, Lorg/telegram/ui/Cells/SharedDocumentCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 122
    new-instance v0, Lorg/telegram/ui/Components/LineProgressView;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/LineProgressView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->progressView:Lorg/telegram/ui/Components/LineProgressView;

    .line 123
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->progressView:Lorg/telegram/ui/Components/LineProgressView;

    const-string v1, "sharedMedia_startStopLoadIcon"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/LineProgressView;->setProgressColor(I)V

    .line 124
    iget-object v7, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->progressView:Lorg/telegram/ui/Components/LineProgressView;

    const/4 v0, -0x1

    const/high16 v1, 0x40000000    # 2.0f

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_2a6

    const/4 v2, 0x5

    :goto_206
    or-int/lit8 v2, v2, 0x30

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_2a9

    const/4 v3, 0x0

    :goto_20d
    const/high16 v4, 0x42580000    # 54.0f

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_2ad

    const/high16 v5, 0x42900000    # 72.0f

    :goto_215
    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v7, v0}, Lorg/telegram/ui/Cells/SharedDocumentCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 126
    new-instance v0, Lorg/telegram/ui/Components/CheckBox;

    const v1, 0x7f02023b

    invoke-direct {v0, p1, v1}, Lorg/telegram/ui/Components/CheckBox;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->checkBox:Lorg/telegram/ui/Components/CheckBox;

    .line 127
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->checkBox:Lorg/telegram/ui/Components/CheckBox;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/CheckBox;->setVisibility(I)V

    .line 128
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->checkBox:Lorg/telegram/ui/Components/CheckBox;

    const-string v1, "checkbox"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    const-string v2, "checkboxCheck"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/CheckBox;->setColor(II)V

    .line 129
    iget-object v7, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->checkBox:Lorg/telegram/ui/Components/CheckBox;

    const/16 v0, 0x16

    const/high16 v1, 0x41b00000    # 22.0f

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_2b0

    const/4 v2, 0x5

    :goto_249
    or-int/lit8 v2, v2, 0x30

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_2b2

    const/4 v3, 0x0

    :goto_250
    const/high16 v4, 0x41f00000    # 30.0f

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_2b5

    const/high16 v5, 0x42080000    # 34.0f

    :goto_258
    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v7, v0}, Lorg/telegram/ui/Cells/SharedDocumentCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 130
    return-void

    .line 73
    :cond_261
    const/4 v2, 0x3

    goto/16 :goto_27

    :cond_264
    const/high16 v3, 0x41400000    # 12.0f

    goto/16 :goto_2e

    :cond_268
    const/4 v5, 0x0

    goto/16 :goto_36

    .line 84
    :cond_26b
    const/4 v2, 0x3

    goto/16 :goto_8e

    :cond_26e
    const/high16 v3, 0x41800000    # 16.0f

    goto/16 :goto_95

    :cond_272
    const/4 v5, 0x0

    goto/16 :goto_9d

    .line 87
    :cond_275
    const/4 v2, 0x3

    goto/16 :goto_b7

    :cond_278
    const/high16 v3, 0x41400000    # 12.0f

    goto/16 :goto_be

    :cond_27c
    const/4 v5, 0x0

    goto/16 :goto_c6

    .line 104
    :cond_27f
    const/4 v0, 0x3

    goto/16 :goto_121

    .line 105
    :cond_282
    const/4 v2, 0x3

    goto/16 :goto_130

    :cond_285
    const/high16 v3, 0x42900000    # 72.0f

    goto/16 :goto_138

    :cond_289
    const/high16 v5, 0x41000000    # 8.0f

    goto/16 :goto_140

    .line 110
    :cond_28d
    const/4 v2, 0x3

    goto/16 :goto_171

    :cond_290
    const/high16 v3, 0x42900000    # 72.0f

    goto/16 :goto_179

    :cond_294
    const/high16 v5, 0x41000000    # 8.0f

    goto/16 :goto_181

    .line 119
    :cond_298
    const/4 v0, 0x3

    goto/16 :goto_1c3

    .line 120
    :cond_29b
    const/4 v2, 0x3

    goto/16 :goto_1d2

    :cond_29e
    const/high16 v3, 0x42900000    # 72.0f

    goto/16 :goto_1da

    :cond_2a2
    const/high16 v5, 0x41000000    # 8.0f

    goto/16 :goto_1e2

    .line 124
    :cond_2a6
    const/4 v2, 0x3

    goto/16 :goto_206

    :cond_2a9
    const/high16 v3, 0x42900000    # 72.0f

    goto/16 :goto_20d

    :cond_2ad
    const/4 v5, 0x0

    goto/16 :goto_215

    .line 129
    :cond_2b0
    const/4 v2, 0x3

    goto :goto_249

    :cond_2b2
    const/high16 v3, 0x42080000    # 34.0f

    goto :goto_250

    :cond_2b5
    const/4 v5, 0x0

    goto :goto_258

    .line 60
    nop

    :array_2b8
    .array-data 4
        0x7f0201ba
        0x7f0201bb
        0x7f0201be
        0x7f0201bf
    .end array-data
.end method

.method static synthetic access$000(Lorg/telegram/ui/Cells/SharedDocumentCell;)Landroid/widget/TextView;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Cells/SharedDocumentCell;

    .prologue
    .line 41
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->extTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Cells/SharedDocumentCell;)Landroid/widget/ImageView;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Cells/SharedDocumentCell;

    .prologue
    .line 41
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->placeholderImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method private getThumbForNameOrMime(Ljava/lang/String;Ljava/lang/String;)I
    .registers 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "mime"    # Ljava/lang/String;

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 133
    if-eqz p1, :cond_b3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_b3

    .line 134
    const/4 v0, -0x1

    .line 135
    .local v0, "color":I
    const-string v3, ".doc"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_23

    const-string v3, ".txt"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_23

    const-string v3, ".psd"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_44

    .line 136
    :cond_23
    const/4 v0, 0x0

    .line 144
    :cond_24
    :goto_24
    if-ne v0, v5, :cond_3f

    .line 146
    const/16 v3, 0x2e

    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .local v2, "idx":I
    if-ne v2, v5, :cond_a2

    const-string v1, ""

    .line 147
    .local v1, "ext":Ljava/lang/String;
    :goto_30
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_a9

    .line 148
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->icons:[I

    array-length v4, v4

    rem-int v0, v3, v4

    .line 153
    .end local v1    # "ext":Ljava/lang/String;
    .end local v2    # "idx":I
    :cond_3f
    :goto_3f
    iget-object v3, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->icons:[I

    aget v3, v3, v0

    .line 155
    .end local v0    # "color":I
    :goto_43
    return v3

    .line 137
    .restart local v0    # "color":I
    :cond_44
    const-string v3, ".xls"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_54

    const-string v3, ".csv"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_56

    .line 138
    :cond_54
    const/4 v0, 0x1

    goto :goto_24

    .line 139
    :cond_56
    const-string v3, ".pdf"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6e

    const-string v3, ".ppt"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6e

    const-string v3, ".key"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_70

    .line 140
    :cond_6e
    const/4 v0, 0x2

    goto :goto_24

    .line 141
    :cond_70
    const-string v3, ".zip"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a0

    const-string v3, ".rar"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a0

    const-string v3, ".ai"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a0

    const-string v3, ".mp3"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a0

    const-string v3, ".mov"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a0

    const-string v3, ".avi"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 142
    :cond_a0
    const/4 v0, 0x3

    goto :goto_24

    .line 146
    .restart local v2    # "idx":I
    :cond_a2
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_30

    .line 150
    .restart local v1    # "ext":Ljava/lang/String;
    :cond_a9
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->icons:[I

    array-length v4, v4

    rem-int v0, v3, v4

    goto :goto_3f

    .line 155
    .end local v0    # "color":I
    .end local v1    # "ext":Ljava/lang/String;
    .end local v2    # "idx":I
    :cond_b3
    iget-object v3, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->icons:[I

    aget v3, v3, v4

    goto :goto_43
.end method


# virtual methods
.method public getMessage()Lorg/telegram/messenger/MessageObject;
    .registers 2

    .prologue
    .line 306
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->message:Lorg/telegram/messenger/MessageObject;

    return-object v0
.end method

.method public getObserverTag()I
    .registers 2

    .prologue
    .line 355
    iget v0, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->TAG:I

    return v0
.end method

.method public isLoaded()Z
    .registers 2

    .prologue
    .line 310
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->loaded:Z

    return v0
.end method

.method public isLoading()Z
    .registers 2

    .prologue
    .line 314
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->loading:Z

    return v0
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 191
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 192
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/telegram/messenger/MediaController;->removeLoadingFileObserver(Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;)V

    .line 193
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 324
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->needDivider:Z

    if-eqz v0, :cond_29

    .line 325
    const/high16 v0, 0x42900000    # 72.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v1, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/SharedDocumentCell;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v2, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/SharedDocumentCell;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/SharedDocumentCell;->getPaddingRight()I

    move-result v3

    sub-int/2addr v0, v3

    int-to-float v3, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/SharedDocumentCell;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v4, v0

    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 327
    :cond_29
    return-void
.end method

.method public onFailedDownload(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 331
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/SharedDocumentCell;->updateFileExistIcon()V

    .line 332
    return-void
.end method

.method protected onMeasure(II)V
    .registers 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 319
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    const/high16 v0, 0x42600000    # 56.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iget-boolean v0, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->needDivider:Z

    if-eqz v0, :cond_1e

    const/4 v0, 0x1

    :goto_15
    add-int/2addr v0, v2

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-super {p0, v1, v0}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 320
    return-void

    .line 319
    :cond_1e
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public onProgressDownload(Ljava/lang/String;F)V
    .registers 5
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "progress"    # F

    .prologue
    .line 342
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->progressView:Lorg/telegram/ui/Components/LineProgressView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/LineProgressView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_b

    .line 343
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/SharedDocumentCell;->updateFileExistIcon()V

    .line 345
    :cond_b
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->progressView:Lorg/telegram/ui/Components/LineProgressView;

    const/4 v1, 0x1

    invoke-virtual {v0, p2, v1}, Lorg/telegram/ui/Components/LineProgressView;->setProgress(FZ)V

    .line 346
    return-void
.end method

.method public onProgressUpload(Ljava/lang/String;FZ)V
    .registers 4
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "progress"    # F
    .param p3, "isEncrypted"    # Z

    .prologue
    .line 351
    return-void
.end method

.method public onSuccessDownload(Ljava/lang/String;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 336
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->progressView:Lorg/telegram/ui/Components/LineProgressView;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/LineProgressView;->setProgress(FZ)V

    .line 337
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/SharedDocumentCell;->updateFileExistIcon()V

    .line 338
    return-void
.end method

.method public setChecked(ZZ)V
    .registers 5
    .param p1, "checked"    # Z
    .param p2, "animated"    # Z

    .prologue
    .line 196
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->checkBox:Lorg/telegram/ui/Components/CheckBox;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/CheckBox;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_e

    .line 197
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->checkBox:Lorg/telegram/ui/Components/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/CheckBox;->setVisibility(I)V

    .line 199
    :cond_e
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->checkBox:Lorg/telegram/ui/Components/CheckBox;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Components/CheckBox;->setChecked(ZZ)V

    .line 200
    return-void
.end method

.method public setDocument(Lorg/telegram/messenger/MessageObject;Z)V
    .registers 23
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;
    .param p2, "divider"    # Z

    .prologue
    .line 203
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/telegram/ui/Cells/SharedDocumentCell;->needDivider:Z

    .line 204
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/Cells/SharedDocumentCell;->message:Lorg/telegram/messenger/MessageObject;

    .line 205
    const/4 v10, 0x0

    move-object/from16 v0, p0

    iput-boolean v10, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->loaded:Z

    .line 206
    const/4 v10, 0x0

    move-object/from16 v0, p0

    iput-boolean v10, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->loading:Z

    .line 208
    if-eqz p1, :cond_1a8

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v10

    if-eqz v10, :cond_1a8

    .line 210
    const/4 v9, 0x0

    .line 211
    .local v9, "name":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v10

    if-eqz v10, :cond_8d

    .line 213
    move-object/from16 v0, p1

    iget v10, v0, Lorg/telegram/messenger/MessageObject;->type:I

    if-nez v10, :cond_84

    .line 214
    move-object/from16 v0, p1

    iget-object v10, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v10, v10, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v10, v10, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v6, v10, Lorg/telegram/tgnet/TLRPC$WebPage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 218
    .local v6, "document":Lorg/telegram/tgnet/TLRPC$Document;
    :goto_35
    const/4 v2, 0x0

    .local v2, "a":I
    :goto_36
    iget-object v10, v6, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v2, v10, :cond_8d

    .line 219
    iget-object v10, v6, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    .line 220
    .local v3, "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    instance-of v10, v3, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;

    if-eqz v10, :cond_81

    .line 221
    iget-object v10, v3, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->performer:Ljava/lang/String;

    if-eqz v10, :cond_56

    iget-object v10, v3, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->performer:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_62

    :cond_56
    iget-object v10, v3, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->title:Ljava/lang/String;

    if-eqz v10, :cond_81

    iget-object v10, v3, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->title:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-eqz v10, :cond_81

    .line 222
    :cond_62
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->getMusicAuthor()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->getMusicTitle()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 218
    :cond_81
    add-int/lit8 v2, v2, 0x1

    goto :goto_36

    .line 216
    .end local v2    # "a":I
    .end local v3    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    .end local v6    # "document":Lorg/telegram/tgnet/TLRPC$Document;
    :cond_84
    move-object/from16 v0, p1

    iget-object v10, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v10, v10, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v6, v10, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .restart local v6    # "document":Lorg/telegram/tgnet/TLRPC$Document;
    goto :goto_35

    .line 227
    .end local v6    # "document":Lorg/telegram/tgnet/TLRPC$Document;
    :cond_8d
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v10

    invoke-static {v10}, Lorg/telegram/messenger/FileLoader;->getDocumentFileName(Lorg/telegram/tgnet/TLRPC$Document;)Ljava/lang/String;

    move-result-object v7

    .line 228
    .local v7, "fileName":Ljava/lang/String;
    if-nez v9, :cond_98

    .line 229
    move-object v9, v7

    .line 231
    :cond_98
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->nameTextView:Landroid/widget/TextView;

    invoke-virtual {v10, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 232
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->placeholderImageView:Landroid/widget/ImageView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 233
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->extTextView:Landroid/widget/TextView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 234
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->placeholderImageView:Landroid/widget/ImageView;

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v11

    iget-object v11, v11, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v11}, Lorg/telegram/ui/Cells/SharedDocumentCell;->getThumbForNameOrMime(Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 235
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->extTextView:Landroid/widget/TextView;

    const/16 v10, 0x2e

    invoke-virtual {v7, v10}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v8

    .local v8, "idx":I
    const/4 v10, -0x1

    if-ne v8, v10, :cond_17e

    const-string v10, ""

    :goto_d1
    invoke-virtual {v11, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 236
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v10

    iget-object v10, v10, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    instance-of v10, v10, Lorg/telegram/tgnet/TLRPC$TL_photoSizeEmpty;

    if-nez v10, :cond_e6

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v10

    iget-object v10, v10, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    if-nez v10, :cond_18a

    .line 237
    :cond_e6
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->thumbImageView:Lorg/telegram/ui/Components/BackupImageView;

    const/4 v11, 0x4

    invoke-virtual {v10, v11}, Lorg/telegram/ui/Components/BackupImageView;->setVisibility(I)V

    .line 238
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->thumbImageView:Lorg/telegram/ui/Components/BackupImageView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lorg/telegram/ui/Components/BackupImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 243
    :goto_f6
    move-object/from16 v0, p1

    iget-object v10, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v10, v10, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    int-to-long v10, v10

    const-wide/16 v12, 0x3e8

    mul-long v4, v10, v12

    .line 244
    .local v4, "date":J
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->dateTextView:Landroid/widget/TextView;

    const-string v11, "%s, %s"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v14

    iget v14, v14, Lorg/telegram/tgnet/TLRPC$Document;->size:I

    int-to-long v14, v14

    invoke-static {v14, v15}, Lorg/telegram/messenger/AndroidUtilities;->formatFileSize(J)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    const-string v14, "formatDateAtTime"

    const v15, 0x7f0705d1

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v18

    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/telegram/messenger/LocaleController;->formatterYear:Lorg/telegram/messenger/time/FastDateFormat;

    move-object/from16 v18, v0

    new-instance v19, Ljava/util/Date;

    move-object/from16 v0, v19

    invoke-direct {v0, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual/range {v18 .. v19}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x1

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v18

    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/telegram/messenger/LocaleController;->formatterDay:Lorg/telegram/messenger/time/FastDateFormat;

    move-object/from16 v18, v0

    new-instance v19, Ljava/util/Date;

    move-object/from16 v0, v19

    invoke-direct {v0, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual/range {v18 .. v19}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v14 .. v16}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 255
    .end local v4    # "date":J
    .end local v7    # "fileName":Ljava/lang/String;
    .end local v8    # "idx":I
    .end local v9    # "name":Ljava/lang/String;
    :goto_165
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->needDivider:Z

    if-nez v10, :cond_1e4

    const/4 v10, 0x1

    :goto_16c
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lorg/telegram/ui/Cells/SharedDocumentCell;->setWillNotDraw(Z)V

    .line 256
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->progressView:Lorg/telegram/ui/Components/LineProgressView;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lorg/telegram/ui/Components/LineProgressView;->setProgress(FZ)V

    .line 257
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/SharedDocumentCell;->updateFileExistIcon()V

    .line 258
    return-void

    .line 235
    .restart local v7    # "fileName":Ljava/lang/String;
    .restart local v8    # "idx":I
    .restart local v9    # "name":Ljava/lang/String;
    :cond_17e
    add-int/lit8 v10, v8, 0x1

    invoke-virtual {v7, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_d1

    .line 240
    :cond_18a
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->thumbImageView:Lorg/telegram/ui/Components/BackupImageView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lorg/telegram/ui/Components/BackupImageView;->setVisibility(I)V

    .line 241
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->thumbImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v10

    iget-object v10, v10, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v12, v10, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    const-string v13, "40_40"

    const/4 v10, 0x0

    check-cast v10, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11, v12, v13, v10}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_f6

    .line 246
    .end local v7    # "fileName":Ljava/lang/String;
    .end local v8    # "idx":I
    .end local v9    # "name":Ljava/lang/String;
    :cond_1a8
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->nameTextView:Landroid/widget/TextView;

    const-string v11, ""

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 247
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->extTextView:Landroid/widget/TextView;

    const-string v11, ""

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 248
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->dateTextView:Landroid/widget/TextView;

    const-string v11, ""

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 249
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->placeholderImageView:Landroid/widget/ImageView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 250
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->extTextView:Landroid/widget/TextView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 251
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->thumbImageView:Lorg/telegram/ui/Components/BackupImageView;

    const/4 v11, 0x4

    invoke-virtual {v10, v11}, Lorg/telegram/ui/Components/BackupImageView;->setVisibility(I)V

    .line 252
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->thumbImageView:Lorg/telegram/ui/Components/BackupImageView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lorg/telegram/ui/Components/BackupImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_165

    .line 255
    :cond_1e4
    const/4 v10, 0x0

    goto :goto_16c
.end method

.method public setTextAndValueAndTypeAndThumb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 12
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "thumb"    # Ljava/lang/String;
    .param p5, "resId"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 159
    iget-object v1, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->nameTextView:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    iget-object v1, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->dateTextView:Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    if-eqz p3, :cond_3c

    .line 162
    iget-object v1, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->extTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 163
    iget-object v1, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->extTextView:Landroid/widget/TextView;

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    :goto_19
    if-nez p5, :cond_42

    .line 168
    iget-object v1, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->placeholderImageView:Landroid/widget/ImageView;

    invoke-direct {p0, p1, p3}, Lorg/telegram/ui/Cells/SharedDocumentCell;->getThumbForNameOrMime(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 169
    iget-object v1, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->placeholderImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 173
    :goto_29
    if-nez p4, :cond_2d

    if-eqz p5, :cond_6b

    .line 174
    :cond_2d
    if-eqz p4, :cond_48

    .line 175
    iget-object v1, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->thumbImageView:Lorg/telegram/ui/Components/BackupImageView;

    const-string v2, "40_40"

    invoke-virtual {v1, p4, v2, v5}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 182
    :goto_36
    iget-object v1, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->thumbImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/BackupImageView;->setVisibility(I)V

    .line 187
    :goto_3b
    return-void

    .line 165
    :cond_3c
    iget-object v1, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->extTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_19

    .line 171
    :cond_42
    iget-object v1, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->placeholderImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_29

    .line 177
    :cond_48
    const/high16 v1, 0x42200000    # 40.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {v1, p5}, Lorg/telegram/ui/ActionBar/Theme;->createCircleDrawableWithIcon(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 178
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    const-string v1, "files_folderIconBackground"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1, v3}, Lorg/telegram/ui/ActionBar/Theme;->setCombinedDrawableColor(Landroid/graphics/drawable/Drawable;IZ)V

    .line 179
    const-string v1, "files_folderIcon"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->setCombinedDrawableColor(Landroid/graphics/drawable/Drawable;IZ)V

    .line 180
    iget-object v1, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->thumbImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/BackupImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_36

    .line 184
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_6b
    iget-object v1, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->thumbImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v1, v5}, Lorg/telegram/ui/Components/BackupImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 185
    iget-object v1, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->thumbImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Components/BackupImageView;->setVisibility(I)V

    goto :goto_3b
.end method

.method public updateFileExistIcon()V
    .registers 11

    .prologue
    const/4 v6, 0x1

    const/high16 v9, 0x41600000    # 14.0f

    const/4 v8, 0x0

    const/4 v7, 0x4

    const/4 v4, 0x0

    .line 261
    iget-object v3, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->message:Lorg/telegram/messenger/MessageObject;

    if-eqz v3, :cond_d0

    iget-object v3, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v3, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v3, :cond_d0

    .line 262
    const/4 v1, 0x0

    .line 264
    .local v1, "fileName":Ljava/lang/String;
    iget-object v3, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v3, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    if-eqz v3, :cond_38

    iget-object v3, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v3, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_38

    new-instance v3, Ljava/io/File;

    iget-object v5, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v5, v5, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_50

    .line 265
    :cond_38
    iget-object v3, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v3, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v3}, Lorg/telegram/messenger/FileLoader;->getPathToMessage(Lorg/telegram/tgnet/TLRPC$Message;)Ljava/io/File;

    move-result-object v0

    .line 266
    .local v0, "cacheFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_50

    .line 267
    iget-object v3, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v1

    .line 270
    .end local v0    # "cacheFile":Ljava/io/File;
    :cond_50
    iput-boolean v4, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->loaded:Z

    .line 271
    if-nez v1, :cond_6a

    .line 272
    iget-object v3, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->statusImageView:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 273
    iget-object v3, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->dateTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v4, v4, v4, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 274
    iput-boolean v4, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->loading:Z

    .line 275
    iput-boolean v6, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->loaded:Z

    .line 276
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v3

    invoke-virtual {v3, p0}, Lorg/telegram/messenger/MediaController;->removeLoadingFileObserver(Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;)V

    .line 303
    .end local v1    # "fileName":Ljava/lang/String;
    :goto_69
    return-void

    .line 278
    .restart local v1    # "fileName":Ljava/lang/String;
    :cond_6a
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v3

    invoke-virtual {v3, v1, p0}, Lorg/telegram/messenger/MediaController;->addLoadingFileObserver(Ljava/lang/String;Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;)V

    .line 279
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/telegram/messenger/FileLoader;->isLoadingFile(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->loading:Z

    .line 280
    iget-object v3, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->statusImageView:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 281
    iget-object v5, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->statusImageView:Landroid/widget/ImageView;

    iget-boolean v3, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->loading:Z

    if-eqz v3, :cond_bf

    const v3, 0x7f0201bd

    :goto_89
    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 282
    iget-object v6, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->dateTextView:Landroid/widget/TextView;

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_c3

    move v3, v4

    :goto_93
    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_c8

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    :goto_9b
    invoke-virtual {v6, v3, v4, v5, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 283
    iget-boolean v3, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->loading:Z

    if-eqz v3, :cond_ca

    .line 284
    iget-object v3, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->progressView:Lorg/telegram/ui/Components/LineProgressView;

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/LineProgressView;->setVisibility(I)V

    .line 285
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/telegram/messenger/ImageLoader;->getFileProgress(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    .line 286
    .local v2, "progress":Ljava/lang/Float;
    if-nez v2, :cond_b5

    .line 287
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    .line 289
    :cond_b5
    iget-object v3, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->progressView:Lorg/telegram/ui/Components/LineProgressView;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-virtual {v3, v5, v4}, Lorg/telegram/ui/Components/LineProgressView;->setProgress(FZ)V

    goto :goto_69

    .line 281
    .end local v2    # "progress":Ljava/lang/Float;
    :cond_bf
    const v3, 0x7f0201bc

    goto :goto_89

    .line 282
    :cond_c3
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    goto :goto_93

    :cond_c8
    move v5, v4

    goto :goto_9b

    .line 291
    :cond_ca
    iget-object v3, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->progressView:Lorg/telegram/ui/Components/LineProgressView;

    invoke-virtual {v3, v7}, Lorg/telegram/ui/Components/LineProgressView;->setVisibility(I)V

    goto :goto_69

    .line 295
    .end local v1    # "fileName":Ljava/lang/String;
    :cond_d0
    iput-boolean v4, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->loading:Z

    .line 296
    iput-boolean v6, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->loaded:Z

    .line 297
    iget-object v3, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->progressView:Lorg/telegram/ui/Components/LineProgressView;

    invoke-virtual {v3, v7}, Lorg/telegram/ui/Components/LineProgressView;->setVisibility(I)V

    .line 298
    iget-object v3, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->progressView:Lorg/telegram/ui/Components/LineProgressView;

    invoke-virtual {v3, v8, v4}, Lorg/telegram/ui/Components/LineProgressView;->setProgress(FZ)V

    .line 299
    iget-object v3, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->statusImageView:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 300
    iget-object v3, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->dateTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v4, v4, v4, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 301
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v3

    invoke-virtual {v3, p0}, Lorg/telegram/messenger/MediaController;->removeLoadingFileObserver(Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;)V

    goto/16 :goto_69
.end method
