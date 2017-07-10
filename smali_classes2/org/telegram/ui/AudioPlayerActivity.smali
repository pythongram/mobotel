.class public Lorg/telegram/ui/AudioPlayerActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "AudioPlayerActivity.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;
.implements Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/AudioPlayerActivity$SeekBarView;
    }
.end annotation


# instance fields
.field private TAG:I

.field private bottomView:Landroid/widget/FrameLayout;

.field private buttons:[Landroid/widget/ImageView;

.field private durationTextView:Landroid/widget/TextView;

.field private lastMessageObject:Lorg/telegram/messenger/MessageObject;

.field private lastTimeString:Ljava/lang/String;

.field private nextButton:Landroid/widget/ImageView;

.field private placeholder:Landroid/widget/ImageView;

.field private playButton:Landroid/widget/ImageView;

.field private prevButton:Landroid/widget/ImageView;

.field private progressView:Lorg/telegram/ui/Components/LineProgressView;

.field private repeatButton:Landroid/widget/ImageView;

.field private seekBarContainer:Landroid/widget/FrameLayout;

.field private seekBarView:Lorg/telegram/ui/AudioPlayerActivity$SeekBarView;

.field private shuffleButton:Landroid/widget/ImageView;

.field private timeTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 42
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    .line 50
    const/4 v0, 0x5

    new-array v0, v0, [Landroid/widget/ImageView;

    iput-object v0, p0, Lorg/telegram/ui/AudioPlayerActivity;->buttons:[Landroid/widget/ImageView;

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/AudioPlayerActivity;F)V
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/AudioPlayerActivity;
    .param p1, "x1"    # F

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lorg/telegram/ui/AudioPlayerActivity;->onSeekBarDrag(F)V

    return-void
.end method

.method static synthetic access$100(Lorg/telegram/ui/AudioPlayerActivity;)[Landroid/widget/ImageView;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/AudioPlayerActivity;

    .prologue
    .line 42
    iget-object v0, p0, Lorg/telegram/ui/AudioPlayerActivity;->buttons:[Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$200(Lorg/telegram/ui/AudioPlayerActivity;)V
    .registers 1
    .param p0, "x0"    # Lorg/telegram/ui/AudioPlayerActivity;

    .prologue
    .line 42
    invoke-direct {p0}, Lorg/telegram/ui/AudioPlayerActivity;->updateRepeatButton()V

    return-void
.end method

.method static synthetic access$300(Lorg/telegram/ui/AudioPlayerActivity;)V
    .registers 1
    .param p0, "x0"    # Lorg/telegram/ui/AudioPlayerActivity;

    .prologue
    .line 42
    invoke-direct {p0}, Lorg/telegram/ui/AudioPlayerActivity;->updateShuffleButton()V

    return-void
.end method

.method private checkIfMusicDownloaded(Lorg/telegram/messenger/MessageObject;)V
    .registers 9
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x0

    .line 408
    const/4 v0, 0x0

    .line 409
    .local v0, "cacheFile":Ljava/io/File;
    iget-object v3, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    if-eqz v3, :cond_23

    iget-object v3, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_23

    .line 410
    new-instance v0, Ljava/io/File;

    .end local v0    # "cacheFile":Ljava/io/File;
    iget-object v3, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 411
    .restart local v0    # "cacheFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_23

    .line 412
    const/4 v0, 0x0

    .line 415
    :cond_23
    if-nez v0, :cond_2b

    .line 416
    iget-object v3, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v3}, Lorg/telegram/messenger/FileLoader;->getPathToMessage(Lorg/telegram/tgnet/TLRPC$Message;)Ljava/io/File;

    move-result-object v0

    .line 418
    :cond_2b
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_61

    .line 419
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getFileName()Ljava/lang/String;

    move-result-object v1

    .line 420
    .local v1, "fileName":Ljava/lang/String;
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v3

    invoke-virtual {v3, v1, p0}, Lorg/telegram/messenger/MediaController;->addLoadingFileObserver(Ljava/lang/String;Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;)V

    .line 421
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/telegram/messenger/ImageLoader;->getFileProgress(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    .line 422
    .local v2, "progress":Ljava/lang/Float;
    iget-object v4, p0, Lorg/telegram/ui/AudioPlayerActivity;->progressView:Lorg/telegram/ui/Components/LineProgressView;

    if-eqz v2, :cond_5f

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v3

    :goto_4c
    invoke-virtual {v4, v3, v5}, Lorg/telegram/ui/Components/LineProgressView;->setProgress(FZ)V

    .line 423
    iget-object v3, p0, Lorg/telegram/ui/AudioPlayerActivity;->progressView:Lorg/telegram/ui/Components/LineProgressView;

    invoke-virtual {v3, v5}, Lorg/telegram/ui/Components/LineProgressView;->setVisibility(I)V

    .line 424
    iget-object v3, p0, Lorg/telegram/ui/AudioPlayerActivity;->seekBarView:Lorg/telegram/ui/AudioPlayerActivity$SeekBarView;

    invoke-virtual {v3, v6}, Lorg/telegram/ui/AudioPlayerActivity$SeekBarView;->setVisibility(I)V

    .line 425
    iget-object v3, p0, Lorg/telegram/ui/AudioPlayerActivity;->playButton:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 432
    .end local v1    # "fileName":Ljava/lang/String;
    .end local v2    # "progress":Ljava/lang/Float;
    :goto_5e
    return-void

    .line 422
    .restart local v1    # "fileName":Ljava/lang/String;
    .restart local v2    # "progress":Ljava/lang/Float;
    :cond_5f
    const/4 v3, 0x0

    goto :goto_4c

    .line 427
    .end local v1    # "fileName":Ljava/lang/String;
    .end local v2    # "progress":Ljava/lang/Float;
    :cond_61
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v3

    invoke-virtual {v3, p0}, Lorg/telegram/messenger/MediaController;->removeLoadingFileObserver(Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;)V

    .line 428
    iget-object v3, p0, Lorg/telegram/ui/AudioPlayerActivity;->progressView:Lorg/telegram/ui/Components/LineProgressView;

    invoke-virtual {v3, v6}, Lorg/telegram/ui/Components/LineProgressView;->setVisibility(I)V

    .line 429
    iget-object v3, p0, Lorg/telegram/ui/AudioPlayerActivity;->seekBarView:Lorg/telegram/ui/AudioPlayerActivity$SeekBarView;

    invoke-virtual {v3, v5}, Lorg/telegram/ui/AudioPlayerActivity$SeekBarView;->setVisibility(I)V

    .line 430
    iget-object v3, p0, Lorg/telegram/ui/AudioPlayerActivity;->playButton:Landroid/widget/ImageView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto :goto_5e
.end method

.method private onSeekBarDrag(F)V
    .registers 4
    .param p1, "progress"    # F

    .prologue
    .line 364
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lorg/telegram/messenger/MediaController;->seekToProgress(Lorg/telegram/messenger/MessageObject;F)Z

    .line 365
    return-void
.end method

.method private updateProgress(Lorg/telegram/messenger/MessageObject;)V
    .registers 7
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;

    .prologue
    .line 395
    iget-object v1, p0, Lorg/telegram/ui/AudioPlayerActivity;->seekBarView:Lorg/telegram/ui/AudioPlayerActivity$SeekBarView;

    if-eqz v1, :cond_49

    .line 396
    iget-object v1, p0, Lorg/telegram/ui/AudioPlayerActivity;->seekBarView:Lorg/telegram/ui/AudioPlayerActivity$SeekBarView;

    invoke-virtual {v1}, Lorg/telegram/ui/AudioPlayerActivity$SeekBarView;->isDragging()Z

    move-result v1

    if-nez v1, :cond_13

    .line 397
    iget-object v1, p0, Lorg/telegram/ui/AudioPlayerActivity;->seekBarView:Lorg/telegram/ui/AudioPlayerActivity$SeekBarView;

    iget v2, p1, Lorg/telegram/messenger/MessageObject;->audioProgress:F

    invoke-virtual {v1, v2}, Lorg/telegram/ui/AudioPlayerActivity$SeekBarView;->setProgress(F)V

    .line 399
    :cond_13
    const-string v1, "%d:%02d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p1, Lorg/telegram/messenger/MessageObject;->audioProgressSec:I

    div-int/lit8 v4, v4, 0x3c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p1, Lorg/telegram/messenger/MessageObject;->audioProgressSec:I

    rem-int/lit8 v4, v4, 0x3c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 400
    .local v0, "timeString":Ljava/lang/String;
    iget-object v1, p0, Lorg/telegram/ui/AudioPlayerActivity;->lastTimeString:Ljava/lang/String;

    if-eqz v1, :cond_42

    iget-object v1, p0, Lorg/telegram/ui/AudioPlayerActivity;->lastTimeString:Ljava/lang/String;

    if-eqz v1, :cond_49

    iget-object v1, p0, Lorg/telegram/ui/AudioPlayerActivity;->lastTimeString:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_49

    .line 401
    :cond_42
    iput-object v0, p0, Lorg/telegram/ui/AudioPlayerActivity;->lastTimeString:Ljava/lang/String;

    .line 402
    iget-object v1, p0, Lorg/telegram/ui/AudioPlayerActivity;->timeTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 405
    .end local v0    # "timeString":Ljava/lang/String;
    :cond_49
    return-void
.end method

.method private updateRepeatButton()V
    .registers 6

    .prologue
    const v2, 0x7f02022b

    .line 378
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MediaController;->getRepeatMode()I

    move-result v0

    .line 379
    .local v0, "mode":I
    if-nez v0, :cond_2c

    .line 380
    iget-object v1, p0, Lorg/telegram/ui/AudioPlayerActivity;->repeatButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 381
    iget-object v1, p0, Lorg/telegram/ui/AudioPlayerActivity;->repeatButton:Landroid/widget/ImageView;

    const-string v2, "player_button"

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 382
    iget-object v1, p0, Lorg/telegram/ui/AudioPlayerActivity;->repeatButton:Landroid/widget/ImageView;

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    const-string v3, "player_button"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 392
    :cond_2b
    :goto_2b
    return-void

    .line 383
    :cond_2c
    const/4 v1, 0x1

    if-ne v0, v1, :cond_4e

    .line 384
    iget-object v1, p0, Lorg/telegram/ui/AudioPlayerActivity;->repeatButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 385
    iget-object v1, p0, Lorg/telegram/ui/AudioPlayerActivity;->repeatButton:Landroid/widget/ImageView;

    const-string v2, "player_buttonActive"

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 386
    iget-object v1, p0, Lorg/telegram/ui/AudioPlayerActivity;->repeatButton:Landroid/widget/ImageView;

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    const-string v3, "player_buttonActive"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_2b

    .line 387
    :cond_4e
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2b

    .line 388
    iget-object v1, p0, Lorg/telegram/ui/AudioPlayerActivity;->repeatButton:Landroid/widget/ImageView;

    const v2, 0x7f02022c

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 389
    iget-object v1, p0, Lorg/telegram/ui/AudioPlayerActivity;->repeatButton:Landroid/widget/ImageView;

    const-string v2, "player_buttonActive"

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 390
    iget-object v1, p0, Lorg/telegram/ui/AudioPlayerActivity;->repeatButton:Landroid/widget/ImageView;

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    const-string v3, "player_buttonActive"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_2b
.end method

.method private updateShuffleButton()V
    .registers 5

    .prologue
    .line 368
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaController;->isShuffleMusic()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 369
    iget-object v0, p0, Lorg/telegram/ui/AudioPlayerActivity;->shuffleButton:Landroid/widget/ImageView;

    const-string v1, "player_buttonActive"

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 370
    iget-object v0, p0, Lorg/telegram/ui/AudioPlayerActivity;->shuffleButton:Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    const-string v2, "player_buttonActive"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 375
    :goto_23
    return-void

    .line 372
    :cond_24
    iget-object v0, p0, Lorg/telegram/ui/AudioPlayerActivity;->shuffleButton:Landroid/widget/ImageView;

    const-string v1, "player_button"

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 373
    iget-object v0, p0, Lorg/telegram/ui/AudioPlayerActivity;->shuffleButton:Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    const-string v2, "player_button"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_23
.end method

.method private updateTitle(Z)V
    .registers 15
    .param p1, "shutdown"    # Z

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x0

    .line 435
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v5

    .line 436
    .local v5, "messageObject":Lorg/telegram/messenger/MessageObject;
    if-nez v5, :cond_e

    if-nez p1, :cond_16

    :cond_e
    if-eqz v5, :cond_40

    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v6

    if-nez v6, :cond_40

    .line 437
    :cond_16
    iget-object v6, p0, Lorg/telegram/ui/AudioPlayerActivity;->parentLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    if-eqz v6, :cond_3c

    iget-object v6, p0, Lorg/telegram/ui/AudioPlayerActivity;->parentLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v6, v6, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3c

    iget-object v6, p0, Lorg/telegram/ui/AudioPlayerActivity;->parentLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v6, v6, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    iget-object v7, p0, Lorg/telegram/ui/AudioPlayerActivity;->parentLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v7, v7, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, p0, :cond_3c

    .line 438
    invoke-virtual {p0}, Lorg/telegram/ui/AudioPlayerActivity;->finishFragment()V

    .line 488
    :cond_3b
    :goto_3b
    return-void

    .line 440
    :cond_3c
    invoke-virtual {p0}, Lorg/telegram/ui/AudioPlayerActivity;->removeSelfFromStack()V

    goto :goto_3b

    .line 443
    :cond_40
    if-eqz v5, :cond_3b

    .line 446
    invoke-direct {p0, v5}, Lorg/telegram/ui/AudioPlayerActivity;->checkIfMusicDownloaded(Lorg/telegram/messenger/MessageObject;)V

    .line 447
    invoke-direct {p0, v5}, Lorg/telegram/ui/AudioPlayerActivity;->updateProgress(Lorg/telegram/messenger/MessageObject;)V

    .line 449
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/messenger/MediaController;->isAudioPaused()Z

    move-result v6

    if-eqz v6, :cond_fa

    .line 450
    iget-object v6, p0, Lorg/telegram/ui/AudioPlayerActivity;->playButton:Landroid/widget/ImageView;

    iget-object v7, p0, Lorg/telegram/ui/AudioPlayerActivity;->playButton:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f020229

    const-string v9, "player_button"

    invoke-static {v9}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v9

    const-string v10, "player_buttonActive"

    invoke-static {v10}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v10

    invoke-static {v7, v8, v9, v10}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorDrawable(Landroid/content/Context;III)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 454
    :goto_70
    iget-object v6, p0, Lorg/telegram/ui/AudioPlayerActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    if-eqz v6, :cond_86

    .line 455
    iget-object v6, p0, Lorg/telegram/ui/AudioPlayerActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->getMusicTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 456
    iget-object v6, p0, Lorg/telegram/ui/AudioPlayerActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->getMusicAuthor()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/telegram/ui/ActionBar/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 458
    :cond_86
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/messenger/MediaController;->getAudioInfo()Lorg/telegram/messenger/audioinfo/AudioInfo;

    move-result-object v2

    .line 459
    .local v2, "audioInfo":Lorg/telegram/messenger/audioinfo/AudioInfo;
    if-eqz v2, :cond_11a

    invoke-virtual {v2}, Lorg/telegram/messenger/audioinfo/AudioInfo;->getCover()Landroid/graphics/Bitmap;

    move-result-object v6

    if-eqz v6, :cond_11a

    .line 460
    iget-object v6, p0, Lorg/telegram/ui/AudioPlayerActivity;->placeholder:Landroid/widget/ImageView;

    invoke-virtual {v2}, Lorg/telegram/messenger/audioinfo/AudioInfo;->getCover()Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 461
    iget-object v6, p0, Lorg/telegram/ui/AudioPlayerActivity;->placeholder:Landroid/widget/ImageView;

    invoke-virtual {v6, v11, v11, v11, v11}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 462
    iget-object v6, p0, Lorg/telegram/ui/AudioPlayerActivity;->placeholder:Landroid/widget/ImageView;

    sget-object v7, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 463
    iget-object v6, p0, Lorg/telegram/ui/AudioPlayerActivity;->placeholder:Landroid/widget/ImageView;

    invoke-virtual {v6, v12}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 464
    iget-object v6, p0, Lorg/telegram/ui/AudioPlayerActivity;->placeholder:Landroid/widget/ImageView;

    invoke-virtual {v6, v12}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 473
    :goto_b5
    iget-object v6, p0, Lorg/telegram/ui/AudioPlayerActivity;->durationTextView:Landroid/widget/TextView;

    if-eqz v6, :cond_3b

    .line 474
    const/4 v4, 0x0

    .line 475
    .local v4, "duration":I
    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v3

    .line 476
    .local v3, "document":Lorg/telegram/tgnet/TLRPC$Document;
    if-eqz v3, :cond_d7

    .line 477
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_c1
    iget-object v6, v3, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v0, v6, :cond_d7

    .line 478
    iget-object v6, v3, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    .line 479
    .local v1, "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    instance-of v6, v1, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;

    if-eqz v6, :cond_14f

    .line 480
    iget v4, v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->duration:I

    .line 485
    .end local v0    # "a":I
    .end local v1    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :cond_d7
    iget-object v7, p0, Lorg/telegram/ui/AudioPlayerActivity;->durationTextView:Landroid/widget/TextView;

    if-eqz v4, :cond_153

    const-string v6, "%d:%02d"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    div-int/lit8 v9, v4, 0x3c

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v11

    const/4 v9, 0x1

    rem-int/lit8 v10, v4, 0x3c

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v6, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    :goto_f5
    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3b

    .line 452
    .end local v2    # "audioInfo":Lorg/telegram/messenger/audioinfo/AudioInfo;
    .end local v3    # "document":Lorg/telegram/tgnet/TLRPC$Document;
    .end local v4    # "duration":I
    :cond_fa
    iget-object v6, p0, Lorg/telegram/ui/AudioPlayerActivity;->playButton:Landroid/widget/ImageView;

    iget-object v7, p0, Lorg/telegram/ui/AudioPlayerActivity;->playButton:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f020228

    const-string v9, "player_button"

    invoke-static {v9}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v9

    const-string v10, "player_buttonActive"

    invoke-static {v10}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v10

    invoke-static {v7, v8, v9, v10}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorDrawable(Landroid/content/Context;III)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_70

    .line 466
    .restart local v2    # "audioInfo":Lorg/telegram/messenger/audioinfo/AudioInfo;
    :cond_11a
    iget-object v6, p0, Lorg/telegram/ui/AudioPlayerActivity;->placeholder:Landroid/widget/ImageView;

    const v7, 0x7f0201f7

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 467
    iget-object v6, p0, Lorg/telegram/ui/AudioPlayerActivity;->placeholder:Landroid/widget/ImageView;

    const/high16 v7, 0x41f00000    # 30.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-virtual {v6, v11, v11, v11, v7}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 468
    iget-object v6, p0, Lorg/telegram/ui/AudioPlayerActivity;->placeholder:Landroid/widget/ImageView;

    sget-object v7, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 469
    iget-object v6, p0, Lorg/telegram/ui/AudioPlayerActivity;->placeholder:Landroid/widget/ImageView;

    const-string v7, "player_placeholder"

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 470
    iget-object v6, p0, Lorg/telegram/ui/AudioPlayerActivity;->placeholder:Landroid/widget/ImageView;

    new-instance v7, Landroid/graphics/PorterDuffColorFilter;

    const-string v8, "player_placeholder"

    invoke-static {v8}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v8

    sget-object v9, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v7, v8, v9}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto/16 :goto_b5

    .line 477
    .restart local v0    # "a":I
    .restart local v1    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    .restart local v3    # "document":Lorg/telegram/tgnet/TLRPC$Document;
    .restart local v4    # "duration":I
    :cond_14f
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_c1

    .line 485
    .end local v0    # "a":I
    .end local v1    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :cond_153
    const-string v6, "-:--"

    goto :goto_f5
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .registers 13
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 178
    new-instance v7, Landroid/widget/FrameLayout;

    invoke-direct {v7, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 179
    .local v7, "frameLayout":Landroid/widget/FrameLayout;
    const-string v0, "windowBackgroundGray"

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v7, v0}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 180
    new-instance v0, Lorg/telegram/ui/AudioPlayerActivity$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/AudioPlayerActivity$1;-><init>(Lorg/telegram/ui/AudioPlayerActivity;)V

    invoke-virtual {v7, v0}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 186
    iput-object v7, p0, Lorg/telegram/ui/AudioPlayerActivity;->fragmentView:Landroid/view/View;

    .line 188
    iget-object v0, p0, Lorg/telegram/ui/AudioPlayerActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string v1, "player_actionBar"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackgroundColor(I)V

    .line 189
    iget-object v0, p0, Lorg/telegram/ui/AudioPlayerActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const v1, 0x7f0200dd

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 190
    iget-object v0, p0, Lorg/telegram/ui/AudioPlayerActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string v1, "player_actionBarItems"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsColor(IZ)V

    .line 191
    iget-object v0, p0, Lorg/telegram/ui/AudioPlayerActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string v1, "player_actionBarSelector"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsBackgroundColor(IZ)V

    .line 192
    iget-object v0, p0, Lorg/telegram/ui/AudioPlayerActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string v1, "player_actionBarTitle"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitleColor(I)V

    .line 193
    iget-object v0, p0, Lorg/telegram/ui/AudioPlayerActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string v1, "player_actionBarSubtitle"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setSubtitleColor(I)V

    .line 195
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-nez v0, :cond_6f

    .line 196
    iget-object v0, p0, Lorg/telegram/ui/AudioPlayerActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->showActionModeTop()V

    .line 197
    iget-object v0, p0, Lorg/telegram/ui/AudioPlayerActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string v1, "player_actionBarTop"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionModeTopColor(I)V

    .line 199
    :cond_6f
    iget-object v0, p0, Lorg/telegram/ui/AudioPlayerActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v1, Lorg/telegram/ui/AudioPlayerActivity$2;

    invoke-direct {v1, p0}, Lorg/telegram/ui/AudioPlayerActivity$2;-><init>(Lorg/telegram/ui/AudioPlayerActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 208
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/AudioPlayerActivity;->placeholder:Landroid/widget/ImageView;

    .line 209
    iget-object v9, p0, Lorg/telegram/ui/AudioPlayerActivity;->placeholder:Landroid/widget/ImageView;

    const/4 v0, -0x1

    const/high16 v1, -0x40800000    # -1.0f

    const/16 v2, 0x33

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x42840000    # 66.0f

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v7, v9, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 211
    new-instance v8, Landroid/view/View;

    invoke-direct {v8, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 212
    .local v8, "shadow":Landroid/view/View;
    const v0, 0x7f0200da

    invoke-virtual {v8, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 213
    const/4 v0, -0x1

    const/high16 v1, 0x40400000    # 3.0f

    const/16 v2, 0x53

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x42c00000    # 96.0f

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v7, v8, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 215
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/AudioPlayerActivity;->seekBarContainer:Landroid/widget/FrameLayout;

    .line 216
    iget-object v0, p0, Lorg/telegram/ui/AudioPlayerActivity;->seekBarContainer:Landroid/widget/FrameLayout;

    const-string v1, "player_seekBarBackground"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 217
    iget-object v9, p0, Lorg/telegram/ui/AudioPlayerActivity;->seekBarContainer:Landroid/widget/FrameLayout;

    const/4 v0, -0x1

    const/high16 v1, 0x41f00000    # 30.0f

    const/16 v2, 0x53

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x42840000    # 66.0f

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v7, v9, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 219
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/AudioPlayerActivity;->timeTextView:Landroid/widget/TextView;

    .line 220
    iget-object v0, p0, Lorg/telegram/ui/AudioPlayerActivity;->timeTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    const/high16 v2, 0x41400000    # 12.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 221
    iget-object v0, p0, Lorg/telegram/ui/AudioPlayerActivity;->timeTextView:Landroid/widget/TextView;

    const-string v1, "player_time"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 222
    iget-object v0, p0, Lorg/telegram/ui/AudioPlayerActivity;->timeTextView:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 223
    iget-object v0, p0, Lorg/telegram/ui/AudioPlayerActivity;->timeTextView:Landroid/widget/TextView;

    const-string v1, "0:00"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 224
    iget-object v0, p0, Lorg/telegram/ui/AudioPlayerActivity;->seekBarContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/AudioPlayerActivity;->timeTextView:Landroid/widget/TextView;

    const/16 v2, 0x2c

    const/4 v3, -0x1

    const/16 v4, 0x33

    invoke-static {v2, v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 226
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/AudioPlayerActivity;->durationTextView:Landroid/widget/TextView;

    .line 227
    iget-object v0, p0, Lorg/telegram/ui/AudioPlayerActivity;->durationTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    const/high16 v2, 0x41400000    # 12.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 228
    iget-object v0, p0, Lorg/telegram/ui/AudioPlayerActivity;->durationTextView:Landroid/widget/TextView;

    const-string v1, "player_duration"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 229
    iget-object v0, p0, Lorg/telegram/ui/AudioPlayerActivity;->durationTextView:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 230
    iget-object v0, p0, Lorg/telegram/ui/AudioPlayerActivity;->durationTextView:Landroid/widget/TextView;

    const-string v1, "3:00"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 231
    iget-object v0, p0, Lorg/telegram/ui/AudioPlayerActivity;->seekBarContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/AudioPlayerActivity;->durationTextView:Landroid/widget/TextView;

    const/16 v2, 0x2c

    const/4 v3, -0x1

    const/16 v4, 0x35

    invoke-static {v2, v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 233
    new-instance v0, Lorg/telegram/ui/AudioPlayerActivity$SeekBarView;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/AudioPlayerActivity$SeekBarView;-><init>(Lorg/telegram/ui/AudioPlayerActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/AudioPlayerActivity;->seekBarView:Lorg/telegram/ui/AudioPlayerActivity$SeekBarView;

    .line 234
    iget-object v9, p0, Lorg/telegram/ui/AudioPlayerActivity;->seekBarContainer:Landroid/widget/FrameLayout;

    iget-object v10, p0, Lorg/telegram/ui/AudioPlayerActivity;->seekBarView:Lorg/telegram/ui/AudioPlayerActivity$SeekBarView;

    const/4 v0, -0x1

    const/high16 v1, -0x40800000    # -1.0f

    const/16 v2, 0x33

    const/high16 v3, 0x42000000    # 32.0f

    const/4 v4, 0x0

    const/high16 v5, 0x42000000    # 32.0f

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v9, v10, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 236
    new-instance v0, Lorg/telegram/ui/Components/LineProgressView;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/LineProgressView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/AudioPlayerActivity;->progressView:Lorg/telegram/ui/Components/LineProgressView;

    .line 237
    iget-object v0, p0, Lorg/telegram/ui/AudioPlayerActivity;->progressView:Lorg/telegram/ui/Components/LineProgressView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/LineProgressView;->setVisibility(I)V

    .line 238
    iget-object v0, p0, Lorg/telegram/ui/AudioPlayerActivity;->progressView:Lorg/telegram/ui/Components/LineProgressView;

    const-string v1, "player_progressBackground"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/LineProgressView;->setBackgroundColor(I)V

    .line 239
    iget-object v0, p0, Lorg/telegram/ui/AudioPlayerActivity;->progressView:Lorg/telegram/ui/Components/LineProgressView;

    const-string v1, "player_progress"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/LineProgressView;->setProgressColor(I)V

    .line 240
    iget-object v9, p0, Lorg/telegram/ui/AudioPlayerActivity;->seekBarContainer:Landroid/widget/FrameLayout;

    iget-object v10, p0, Lorg/telegram/ui/AudioPlayerActivity;->progressView:Lorg/telegram/ui/Components/LineProgressView;

    const/4 v0, -0x1

    const/high16 v1, 0x40000000    # 2.0f

    const/16 v2, 0x13

    const/high16 v3, 0x42300000    # 44.0f

    const/4 v4, 0x0

    const/high16 v5, 0x42300000    # 44.0f

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v9, v10, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 242
    new-instance v0, Lorg/telegram/ui/AudioPlayerActivity$3;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/AudioPlayerActivity$3;-><init>(Lorg/telegram/ui/AudioPlayerActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/AudioPlayerActivity;->bottomView:Landroid/widget/FrameLayout;

    .line 253
    iget-object v0, p0, Lorg/telegram/ui/AudioPlayerActivity;->bottomView:Landroid/widget/FrameLayout;

    const-string v1, "windowBackgroundWhite"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 254
    iget-object v0, p0, Lorg/telegram/ui/AudioPlayerActivity;->bottomView:Landroid/widget/FrameLayout;

    const/4 v1, -0x1

    const/16 v2, 0x42

    const/16 v3, 0x53

    invoke-static {v1, v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 256
    iget-object v0, p0, Lorg/telegram/ui/AudioPlayerActivity;->buttons:[Landroid/widget/ImageView;

    const/4 v1, 0x0

    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/AudioPlayerActivity;->repeatButton:Landroid/widget/ImageView;

    aput-object v2, v0, v1

    .line 257
    iget-object v0, p0, Lorg/telegram/ui/AudioPlayerActivity;->repeatButton:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 258
    iget-object v0, p0, Lorg/telegram/ui/AudioPlayerActivity;->bottomView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/AudioPlayerActivity;->repeatButton:Landroid/widget/ImageView;

    const/16 v2, 0x30

    const/16 v3, 0x30

    const/16 v4, 0x33

    invoke-static {v2, v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 259
    iget-object v0, p0, Lorg/telegram/ui/AudioPlayerActivity;->repeatButton:Landroid/widget/ImageView;

    new-instance v1, Lorg/telegram/ui/AudioPlayerActivity$4;

    invoke-direct {v1, p0}, Lorg/telegram/ui/AudioPlayerActivity$4;-><init>(Lorg/telegram/ui/AudioPlayerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 267
    iget-object v0, p0, Lorg/telegram/ui/AudioPlayerActivity;->buttons:[Landroid/widget/ImageView;

    const/4 v1, 0x1

    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/AudioPlayerActivity;->prevButton:Landroid/widget/ImageView;

    aput-object v2, v0, v1

    .line 268
    iget-object v0, p0, Lorg/telegram/ui/AudioPlayerActivity;->prevButton:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 269
    iget-object v0, p0, Lorg/telegram/ui/AudioPlayerActivity;->prevButton:Landroid/widget/ImageView;

    const v1, 0x7f02022a

    const-string v2, "player_button"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    const-string v3, "player_buttonActive"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-static {p1, v1, v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorDrawable(Landroid/content/Context;III)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 270
    iget-object v0, p0, Lorg/telegram/ui/AudioPlayerActivity;->bottomView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/AudioPlayerActivity;->prevButton:Landroid/widget/ImageView;

    const/16 v2, 0x30

    const/16 v3, 0x30

    const/16 v4, 0x33

    invoke-static {v2, v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 271
    iget-object v0, p0, Lorg/telegram/ui/AudioPlayerActivity;->prevButton:Landroid/widget/ImageView;

    new-instance v1, Lorg/telegram/ui/AudioPlayerActivity$5;

    invoke-direct {v1, p0}, Lorg/telegram/ui/AudioPlayerActivity$5;-><init>(Lorg/telegram/ui/AudioPlayerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 278
    iget-object v0, p0, Lorg/telegram/ui/AudioPlayerActivity;->buttons:[Landroid/widget/ImageView;

    const/4 v1, 0x2

    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/AudioPlayerActivity;->playButton:Landroid/widget/ImageView;

    aput-object v2, v0, v1

    .line 279
    iget-object v0, p0, Lorg/telegram/ui/AudioPlayerActivity;->playButton:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 280
    iget-object v0, p0, Lorg/telegram/ui/AudioPlayerActivity;->playButton:Landroid/widget/ImageView;

    const v1, 0x7f020229

    const-string v2, "player_button"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    const-string v3, "player_buttonActive"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-static {p1, v1, v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorDrawable(Landroid/content/Context;III)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 281
    iget-object v0, p0, Lorg/telegram/ui/AudioPlayerActivity;->bottomView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/AudioPlayerActivity;->playButton:Landroid/widget/ImageView;

    const/16 v2, 0x30

    const/16 v3, 0x30

    const/16 v4, 0x33

    invoke-static {v2, v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 282
    iget-object v0, p0, Lorg/telegram/ui/AudioPlayerActivity;->playButton:Landroid/widget/ImageView;

    new-instance v1, Lorg/telegram/ui/AudioPlayerActivity$6;

    invoke-direct {v1, p0}, Lorg/telegram/ui/AudioPlayerActivity$6;-><init>(Lorg/telegram/ui/AudioPlayerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 296
    iget-object v0, p0, Lorg/telegram/ui/AudioPlayerActivity;->buttons:[Landroid/widget/ImageView;

    const/4 v1, 0x3

    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/AudioPlayerActivity;->nextButton:Landroid/widget/ImageView;

    aput-object v2, v0, v1

    .line 297
    iget-object v0, p0, Lorg/telegram/ui/AudioPlayerActivity;->nextButton:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 298
    iget-object v0, p0, Lorg/telegram/ui/AudioPlayerActivity;->nextButton:Landroid/widget/ImageView;

    const v1, 0x7f020227

    const-string v2, "player_button"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    const-string v3, "player_buttonActive"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-static {p1, v1, v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorDrawable(Landroid/content/Context;III)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 299
    iget-object v0, p0, Lorg/telegram/ui/AudioPlayerActivity;->bottomView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/AudioPlayerActivity;->nextButton:Landroid/widget/ImageView;

    const/16 v2, 0x30

    const/16 v3, 0x30

    const/16 v4, 0x33

    invoke-static {v2, v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 300
    iget-object v0, p0, Lorg/telegram/ui/AudioPlayerActivity;->nextButton:Landroid/widget/ImageView;

    new-instance v1, Lorg/telegram/ui/AudioPlayerActivity$7;

    invoke-direct {v1, p0}, Lorg/telegram/ui/AudioPlayerActivity$7;-><init>(Lorg/telegram/ui/AudioPlayerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 307
    iget-object v0, p0, Lorg/telegram/ui/AudioPlayerActivity;->buttons:[Landroid/widget/ImageView;

    const/4 v1, 0x4

    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/AudioPlayerActivity;->shuffleButton:Landroid/widget/ImageView;

    aput-object v2, v0, v1

    .line 308
    iget-object v0, p0, Lorg/telegram/ui/AudioPlayerActivity;->shuffleButton:Landroid/widget/ImageView;

    const v1, 0x7f02022d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 309
    iget-object v0, p0, Lorg/telegram/ui/AudioPlayerActivity;->shuffleButton:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 310
    iget-object v0, p0, Lorg/telegram/ui/AudioPlayerActivity;->bottomView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/AudioPlayerActivity;->shuffleButton:Landroid/widget/ImageView;

    const/16 v2, 0x30

    const/16 v3, 0x30

    const/16 v4, 0x33

    invoke-static {v2, v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 311
    iget-object v0, p0, Lorg/telegram/ui/AudioPlayerActivity;->shuffleButton:Landroid/widget/ImageView;

    new-instance v1, Lorg/telegram/ui/AudioPlayerActivity$8;

    invoke-direct {v1, p0}, Lorg/telegram/ui/AudioPlayerActivity$8;-><init>(Lorg/telegram/ui/AudioPlayerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 319
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/telegram/ui/AudioPlayerActivity;->updateTitle(Z)V

    .line 320
    invoke-direct {p0}, Lorg/telegram/ui/AudioPlayerActivity;->updateRepeatButton()V

    .line 321
    invoke-direct {p0}, Lorg/telegram/ui/AudioPlayerActivity;->updateShuffleButton()V

    .line 323
    return-object v7
.end method

.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .registers 6
    .param p1, "id"    # I
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    .line 328
    sget v1, Lorg/telegram/messenger/NotificationCenter;->audioDidStarted:I

    if-eq p1, v1, :cond_d

    sget v1, Lorg/telegram/messenger/NotificationCenter;->audioPlayStateChanged:I

    if-eq p1, v1, :cond_d

    sget v1, Lorg/telegram/messenger/NotificationCenter;->audioDidReset:I

    if-ne p1, v1, :cond_22

    .line 329
    :cond_d
    sget v1, Lorg/telegram/messenger/NotificationCenter;->audioDidReset:I

    if-ne p1, v1, :cond_20

    aget-object v1, p2, v2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_20

    move v1, v2

    :goto_1c
    invoke-direct {p0, v1}, Lorg/telegram/ui/AudioPlayerActivity;->updateTitle(Z)V

    .line 336
    :cond_1f
    :goto_1f
    return-void

    .line 329
    :cond_20
    const/4 v1, 0x0

    goto :goto_1c

    .line 330
    :cond_22
    sget v1, Lorg/telegram/messenger/NotificationCenter;->audioProgressDidChanged:I

    if-ne p1, v1, :cond_1f

    .line 331
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    .line 332
    .local v0, "messageObject":Lorg/telegram/messenger/MessageObject;
    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 333
    invoke-direct {p0, v0}, Lorg/telegram/ui/AudioPlayerActivity;->updateProgress(Lorg/telegram/messenger/MessageObject;)V

    goto :goto_1f
.end method

.method public getObserverTag()I
    .registers 2

    .prologue
    .line 360
    iget v0, p0, Lorg/telegram/ui/AudioPlayerActivity;->TAG:I

    return v0
.end method

.method public getThemeDescriptions()[Lorg/telegram/ui/ActionBar/ThemeDescription;
    .registers 12

    .prologue
    const/4 v10, 0x0

    const/4 v3, 0x0

    .line 492
    const/16 v0, 0x1a

    new-array v8, v0, [Lorg/telegram/ui/ActionBar/ThemeDescription;

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/AudioPlayerActivity;->fragmentView:Landroid/view/View;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const-string v7, "windowBackgroundGray"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v8, v10

    const/4 v9, 0x1

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/AudioPlayerActivity;->bottomView:Landroid/widget/FrameLayout;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const-string v7, "windowBackgroundWhite"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v8, v9

    const/4 v9, 0x2

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/AudioPlayerActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const-string v7, "player_actionBar"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v8, v9

    const/4 v9, 0x3

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/AudioPlayerActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    const-string v7, "player_actionBarItems"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v8, v9

    const/4 v9, 0x4

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/AudioPlayerActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_TITLECOLOR:I

    const-string v7, "player_actionBarTitle"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v8, v9

    const/4 v9, 0x5

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/AudioPlayerActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SUBTITLECOLOR:I

    const-string v7, "player_actionBarSubtitle"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v8, v9

    const/4 v9, 0x6

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/AudioPlayerActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    const-string v7, "player_actionBarSelector"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v8, v9

    const/4 v9, 0x7

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/AudioPlayerActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_AM_TOPBACKGROUND:I

    const-string v7, "player_actionBarTop"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v8, v9

    const/16 v9, 0x8

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/AudioPlayerActivity;->seekBarContainer:Landroid/widget/FrameLayout;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const-string v7, "player_seekBarBackground"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v8, v9

    const/16 v9, 0x9

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/AudioPlayerActivity;->timeTextView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const-string v7, "player_time"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v8, v9

    const/16 v9, 0xa

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/AudioPlayerActivity;->durationTextView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const-string v7, "player_time"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v8, v9

    const/16 v9, 0xb

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/AudioPlayerActivity;->progressView:Lorg/telegram/ui/Components/LineProgressView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const-string v7, "player_progressBackground"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v8, v9

    const/16 v9, 0xc

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/AudioPlayerActivity;->progressView:Lorg/telegram/ui/Components/LineProgressView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_PROGRESSBAR:I

    const-string v7, "player_progress"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v8, v9

    const/16 v9, 0xd

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/AudioPlayerActivity;->seekBarView:Lorg/telegram/ui/AudioPlayerActivity$SeekBarView;

    iget-object v2, p0, Lorg/telegram/ui/AudioPlayerActivity;->seekBarView:Lorg/telegram/ui/AudioPlayerActivity$SeekBarView;

    .line 511
    # getter for: Lorg/telegram/ui/AudioPlayerActivity$SeekBarView;->innerPaint1:Landroid/graphics/Paint;
    invoke-static {v2}, Lorg/telegram/ui/AudioPlayerActivity$SeekBarView;->access$400(Lorg/telegram/ui/AudioPlayerActivity$SeekBarView;)Landroid/graphics/Paint;

    move-result-object v4

    const-string v7, "player_progressBackground"

    move v2, v10

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v8, v9

    const/16 v9, 0xe

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/AudioPlayerActivity;->seekBarView:Lorg/telegram/ui/AudioPlayerActivity$SeekBarView;

    iget-object v2, p0, Lorg/telegram/ui/AudioPlayerActivity;->seekBarView:Lorg/telegram/ui/AudioPlayerActivity$SeekBarView;

    .line 512
    # getter for: Lorg/telegram/ui/AudioPlayerActivity$SeekBarView;->outerPaint1:Landroid/graphics/Paint;
    invoke-static {v2}, Lorg/telegram/ui/AudioPlayerActivity$SeekBarView;->access$500(Lorg/telegram/ui/AudioPlayerActivity$SeekBarView;)Landroid/graphics/Paint;

    move-result-object v4

    const-string v7, "player_progress"

    move v2, v10

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v8, v9

    const/16 v9, 0xf

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/AudioPlayerActivity;->repeatButton:Landroid/widget/ImageView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_IMAGECOLOR:I

    or-int/2addr v2, v4

    const-string v7, "player_buttonActive"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v8, v9

    const/16 v9, 0x10

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/AudioPlayerActivity;->repeatButton:Landroid/widget/ImageView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_IMAGECOLOR:I

    or-int/2addr v2, v4

    const-string v7, "player_button"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v8, v9

    const/16 v9, 0x11

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/AudioPlayerActivity;->shuffleButton:Landroid/widget/ImageView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_IMAGECOLOR:I

    or-int/2addr v2, v4

    const-string v7, "player_buttonActive"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v8, v9

    const/16 v9, 0x12

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/AudioPlayerActivity;->shuffleButton:Landroid/widget/ImageView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_IMAGECOLOR:I

    or-int/2addr v2, v4

    const-string v7, "player_button"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v8, v9

    const/16 v9, 0x13

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/AudioPlayerActivity;->placeholder:Landroid/widget/ImageView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_IMAGECOLOR:I

    or-int/2addr v2, v4

    const-string v7, "player_placeholder"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v8, v9

    const/16 v9, 0x14

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/AudioPlayerActivity;->prevButton:Landroid/widget/ImageView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_IMAGECOLOR:I

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_USEBACKGROUNDDRAWABLE:I

    or-int/2addr v2, v4

    const-string v7, "player_button"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v8, v9

    const/16 v9, 0x15

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/AudioPlayerActivity;->prevButton:Landroid/widget/ImageView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_IMAGECOLOR:I

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_USEBACKGROUNDDRAWABLE:I

    or-int/2addr v2, v4

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_DRAWABLESELECTEDSTATE:I

    or-int/2addr v2, v4

    const-string v7, "player_buttonActive"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v8, v9

    const/16 v9, 0x16

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/AudioPlayerActivity;->playButton:Landroid/widget/ImageView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_IMAGECOLOR:I

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_USEBACKGROUNDDRAWABLE:I

    or-int/2addr v2, v4

    const-string v7, "player_button"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v8, v9

    const/16 v9, 0x17

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/AudioPlayerActivity;->playButton:Landroid/widget/ImageView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_IMAGECOLOR:I

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_USEBACKGROUNDDRAWABLE:I

    or-int/2addr v2, v4

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_DRAWABLESELECTEDSTATE:I

    or-int/2addr v2, v4

    const-string v7, "player_buttonActive"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v8, v9

    const/16 v9, 0x18

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/AudioPlayerActivity;->nextButton:Landroid/widget/ImageView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_IMAGECOLOR:I

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_USEBACKGROUNDDRAWABLE:I

    or-int/2addr v2, v4

    const-string v7, "player_button"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v8, v9

    const/16 v9, 0x19

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/AudioPlayerActivity;->nextButton:Landroid/widget/ImageView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_IMAGECOLOR:I

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_USEBACKGROUNDDRAWABLE:I

    or-int/2addr v2, v4

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_DRAWABLESELECTEDSTATE:I

    or-int/2addr v2, v4

    const-string v7, "player_buttonActive"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v8, v9

    .line 492
    return-object v8
.end method

.method public onFailedDownload(Ljava/lang/String;)V
    .registers 2
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 341
    return-void
.end method

.method public onFragmentCreate()Z
    .registers 3

    .prologue
    .line 158
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaController;->generateObserverTag()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/AudioPlayerActivity;->TAG:I

    .line 159
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->audioDidReset:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 160
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->audioPlayStateChanged:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 161
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->audioDidStarted:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 162
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->audioProgressDidChanged:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 163
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    move-result v0

    return v0
.end method

.method public onFragmentDestroy()V
    .registers 3

    .prologue
    .line 168
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->audioDidReset:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 169
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->audioPlayStateChanged:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 170
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->audioDidStarted:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 171
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->audioProgressDidChanged:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 172
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/telegram/messenger/MediaController;->removeLoadingFileObserver(Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;)V

    .line 173
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    .line 174
    return-void
.end method

.method public onProgressDownload(Ljava/lang/String;F)V
    .registers 5
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "progress"    # F

    .prologue
    .line 350
    iget-object v0, p0, Lorg/telegram/ui/AudioPlayerActivity;->progressView:Lorg/telegram/ui/Components/LineProgressView;

    const/4 v1, 0x1

    invoke-virtual {v0, p2, v1}, Lorg/telegram/ui/Components/LineProgressView;->setProgress(FZ)V

    .line 351
    return-void
.end method

.method public onProgressUpload(Ljava/lang/String;FZ)V
    .registers 4
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "progress"    # F
    .param p3, "isEncrypted"    # Z

    .prologue
    .line 356
    return-void
.end method

.method public onSuccessDownload(Ljava/lang/String;)V
    .registers 2
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 346
    return-void
.end method
