.class public Lorg/telegram/ui/Cells/ContextLinkCell;
.super Landroid/view/View;
.source "ContextLinkCell.java"

# interfaces
.implements Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Cells/ContextLinkCell$ContextLinkCellDelegate;
    }
.end annotation


# static fields
.field private static final DOCUMENT_ATTACH_TYPE_AUDIO:I = 0x3

.field private static final DOCUMENT_ATTACH_TYPE_DOCUMENT:I = 0x1

.field private static final DOCUMENT_ATTACH_TYPE_GEO:I = 0x8

.field private static final DOCUMENT_ATTACH_TYPE_GIF:I = 0x2

.field private static final DOCUMENT_ATTACH_TYPE_MUSIC:I = 0x5

.field private static final DOCUMENT_ATTACH_TYPE_NONE:I = 0x0

.field private static final DOCUMENT_ATTACH_TYPE_PHOTO:I = 0x7

.field private static final DOCUMENT_ATTACH_TYPE_STICKER:I = 0x6

.field private static final DOCUMENT_ATTACH_TYPE_VIDEO:I = 0x4

.field private static interpolator:Landroid/view/animation/AccelerateInterpolator;


# instance fields
.field private TAG:I

.field private buttonPressed:Z

.field private buttonState:I

.field private currentMessageObject:Lorg/telegram/messenger/MessageObject;

.field private delegate:Lorg/telegram/ui/Cells/ContextLinkCell$ContextLinkCellDelegate;

.field private descriptionLayout:Landroid/text/StaticLayout;

.field private descriptionY:I

.field private documentAttach:Lorg/telegram/tgnet/TLRPC$Document;

.field private documentAttachType:I

.field private drawLinkImageView:Z

.field private inlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

.field private lastUpdateTime:J

.field private letterDrawable:Lorg/telegram/ui/Components/LetterDrawable;

.field private linkImageView:Lorg/telegram/messenger/ImageReceiver;

.field private linkLayout:Landroid/text/StaticLayout;

.field private linkY:I

.field private mediaWebpage:Z

.field private needDivider:Z

.field private needShadow:Z

.field private radialProgress:Lorg/telegram/ui/Components/RadialProgress;

.field private scale:F

.field private scaled:Z

.field private time:J

.field private titleLayout:Landroid/text/StaticLayout;

.field private titleY:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 90
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-direct {v0, v1}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    sput-object v0, Lorg/telegram/ui/Cells/ContextLinkCell;->interpolator:Landroid/view/animation/AccelerateInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 95
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 70
    const/high16 v0, 0x40e00000    # 7.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->titleY:I

    .line 73
    const/high16 v0, 0x41d80000    # 27.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->descriptionY:I

    .line 89
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->time:J

    .line 97
    new-instance v0, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/ImageReceiver;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->linkImageView:Lorg/telegram/messenger/ImageReceiver;

    .line 98
    new-instance v0, Lorg/telegram/ui/Components/LetterDrawable;

    invoke-direct {v0}, Lorg/telegram/ui/Components/LetterDrawable;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->letterDrawable:Lorg/telegram/ui/Components/LetterDrawable;

    .line 99
    new-instance v0, Lorg/telegram/ui/Components/RadialProgress;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/RadialProgress;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress;

    .line 100
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaController;->generateObserverTag()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->TAG:I

    .line 101
    return-void
.end method

.method private didPressedButton()V
    .registers 9

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 518
    iget v1, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->documentAttachType:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_e

    iget v1, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->documentAttachType:I

    if-ne v1, v7, :cond_2c

    .line 519
    :cond_e
    iget v1, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->buttonState:I

    if-nez v1, :cond_2d

    .line 520
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MediaController;->playAudio(Lorg/telegram/messenger/MessageObject;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 521
    iput v5, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->buttonState:I

    .line 522
    iget-object v1, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress;

    invoke-direct {p0}, Lorg/telegram/ui/Cells/ContextLinkCell;->getDrawableForCurrentState()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2, v4, v4}, Lorg/telegram/ui/Components/RadialProgress;->setBackground(Landroid/graphics/drawable/Drawable;ZZ)V

    .line 523
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/ContextLinkCell;->invalidate()V

    .line 553
    :cond_2c
    :goto_2c
    return-void

    .line 525
    :cond_2d
    iget v1, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->buttonState:I

    if-ne v1, v5, :cond_4c

    .line 526
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MediaController;->pauseAudio(Lorg/telegram/messenger/MessageObject;)Z

    move-result v0

    .line 527
    .local v0, "result":Z
    if-eqz v0, :cond_2c

    .line 528
    iput v4, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->buttonState:I

    .line 529
    iget-object v1, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress;

    invoke-direct {p0}, Lorg/telegram/ui/Cells/ContextLinkCell;->getDrawableForCurrentState()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2, v4, v4}, Lorg/telegram/ui/Components/RadialProgress;->setBackground(Landroid/graphics/drawable/Drawable;ZZ)V

    .line 530
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/ContextLinkCell;->invalidate()V

    goto :goto_2c

    .line 532
    .end local v0    # "result":Z
    :cond_4c
    iget v1, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->buttonState:I

    if-ne v1, v3, :cond_87

    .line 533
    iget-object v1, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v4}, Lorg/telegram/ui/Components/RadialProgress;->setProgress(FZ)V

    .line 534
    iget-object v1, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->documentAttach:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v1, :cond_72

    .line 535
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->documentAttach:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-virtual {v1, v2, v5, v4}, Lorg/telegram/messenger/FileLoader;->loadFile(Lorg/telegram/tgnet/TLRPC$Document;ZZ)V

    .line 539
    :goto_63
    iput v6, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->buttonState:I

    .line 540
    iget-object v1, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress;

    invoke-direct {p0}, Lorg/telegram/ui/Cells/ContextLinkCell;->getDrawableForCurrentState()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2, v5, v4}, Lorg/telegram/ui/Components/RadialProgress;->setBackground(Landroid/graphics/drawable/Drawable;ZZ)V

    .line 541
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/ContextLinkCell;->invalidate()V

    goto :goto_2c

    .line 537
    :cond_72
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v2

    iget-object v1, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->inlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->content_url:Ljava/lang/String;

    iget v1, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->documentAttachType:I

    if-ne v1, v7, :cond_84

    const-string v1, "mp3"

    :goto_80
    invoke-virtual {v2, v3, v1}, Lorg/telegram/messenger/ImageLoader;->loadHttpFile(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_63

    :cond_84
    const-string v1, "ogg"

    goto :goto_80

    .line 542
    :cond_87
    iget v1, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->buttonState:I

    if-ne v1, v6, :cond_2c

    .line 543
    iget-object v1, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->documentAttach:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v1, :cond_a7

    .line 544
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->documentAttach:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/FileLoader;->cancelLoadFile(Lorg/telegram/tgnet/TLRPC$Document;)V

    .line 548
    :goto_98
    iput v3, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->buttonState:I

    .line 549
    iget-object v1, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress;

    invoke-direct {p0}, Lorg/telegram/ui/Cells/ContextLinkCell;->getDrawableForCurrentState()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2, v4, v4}, Lorg/telegram/ui/Components/RadialProgress;->setBackground(Landroid/graphics/drawable/Drawable;ZZ)V

    .line 550
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/ContextLinkCell;->invalidate()V

    goto :goto_2c

    .line 546
    :cond_a7
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->inlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->content_url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/ImageLoader;->cancelLoadHttpFile(Ljava/lang/String;)V

    goto :goto_98
.end method

.method private getDrawableForCurrentState()Landroid/graphics/drawable/Drawable;
    .registers 7

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x5

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 663
    iget v3, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->documentAttachType:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_d

    iget v3, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->documentAttachType:I

    if-ne v3, v5, :cond_2a

    .line 664
    :cond_d
    iget v3, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->buttonState:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_14

    move-object v0, v2

    .line 670
    :goto_13
    return-object v0

    .line 667
    :cond_14
    iget-object v2, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/RadialProgress;->setAlphaForPrevious(Z)V

    .line 668
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->chat_fileStatesDrawable:[[Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->buttonState:I

    add-int/lit8 v3, v3, 0x5

    aget-object v2, v2, v3

    iget-boolean v3, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->buttonPressed:Z

    if-eqz v3, :cond_28

    :goto_25
    aget-object v0, v2, v0

    goto :goto_13

    :cond_28
    move v0, v1

    goto :goto_25

    .line 670
    :cond_2a
    iget v3, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->buttonState:I

    if-ne v3, v0, :cond_35

    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->chat_photoStatesDrawables:[[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, v5

    aget-object v0, v0, v1

    goto :goto_13

    :cond_35
    move-object v0, v2

    goto :goto_13
.end method

.method private setAttachType()V
    .registers 14

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    const/4 v8, 0x3

    const/4 v10, 0x0

    const/4 v9, 0x5

    .line 311
    iput-object v12, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    .line 312
    iput v10, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->documentAttachType:I

    .line 313
    iget-object v4, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->documentAttach:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v4, :cond_9e

    .line 314
    iget-object v4, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->documentAttach:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v4}, Lorg/telegram/messenger/MessageObject;->isGifDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v4

    if-eqz v4, :cond_7b

    .line 315
    const/4 v4, 0x2

    iput v4, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->documentAttachType:I

    .line 332
    :cond_18
    :goto_18
    iget v4, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->documentAttachType:I

    if-eq v4, v8, :cond_20

    iget v4, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->documentAttachType:I

    if-ne v4, v9, :cond_7a

    .line 333
    :cond_20
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    .line 334
    .local v3, "message":Lorg/telegram/tgnet/TLRPC$TL_message;
    iput-boolean v11, v3, Lorg/telegram/tgnet/TLRPC$TL_message;->out:Z

    .line 335
    sget-object v4, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-virtual {v4}, Ljava/security/SecureRandom;->nextInt()I

    move-result v4

    neg-int v4, v4

    iput v4, v3, Lorg/telegram/tgnet/TLRPC$TL_message;->id:I

    .line 336
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 337
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v5

    iput v5, v3, Lorg/telegram/tgnet/TLRPC$TL_message;->from_id:I

    iput v5, v4, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    .line 338
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    long-to-int v4, v4

    iput v4, v3, Lorg/telegram/tgnet/TLRPC$TL_message;->date:I

    .line 339
    const-string v4, "-1"

    iput-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_message;->message:Ljava/lang/String;

    .line 340
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;-><init>()V

    iput-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 341
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_document;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_document;-><init>()V

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 342
    iget v4, v3, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    or-int/lit16 v4, v4, 0x300

    iput v4, v3, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    .line 344
    iget-object v4, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->documentAttach:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v4, :cond_cd

    .line 345
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v5, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->documentAttach:Lorg/telegram/tgnet/TLRPC$Document;

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 346
    const-string v4, ""

    iput-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_message;->attachPath:Ljava/lang/String;

    .line 375
    :goto_73
    new-instance v4, Lorg/telegram/messenger/MessageObject;

    invoke-direct {v4, v3, v12, v10}, Lorg/telegram/messenger/MessageObject;-><init>(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/AbstractMap;Z)V

    iput-object v4, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    .line 377
    .end local v3    # "message":Lorg/telegram/tgnet/TLRPC$TL_message;
    :cond_7a
    return-void

    .line 316
    :cond_7b
    iget-object v4, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->documentAttach:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v4}, Lorg/telegram/messenger/MessageObject;->isStickerDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v4

    if-eqz v4, :cond_87

    .line 317
    const/4 v4, 0x6

    iput v4, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->documentAttachType:I

    goto :goto_18

    .line 318
    :cond_87
    iget-object v4, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->documentAttach:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v4}, Lorg/telegram/messenger/MessageObject;->isMusicDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v4

    if-eqz v4, :cond_92

    .line 319
    iput v9, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->documentAttachType:I

    goto :goto_18

    .line 320
    :cond_92
    iget-object v4, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->documentAttach:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v4}, Lorg/telegram/messenger/MessageObject;->isVoiceDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 321
    iput v8, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->documentAttachType:I

    goto/16 :goto_18

    .line 323
    :cond_9e
    iget-object v4, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->inlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    if-eqz v4, :cond_18

    .line 324
    iget-object v4, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->inlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz v4, :cond_ad

    .line 325
    const/4 v4, 0x7

    iput v4, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->documentAttachType:I

    goto/16 :goto_18

    .line 326
    :cond_ad
    iget-object v4, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->inlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->type:Ljava/lang/String;

    const-string v5, "audio"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_bd

    .line 327
    iput v9, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->documentAttachType:I

    goto/16 :goto_18

    .line 328
    :cond_bd
    iget-object v4, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->inlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->type:Ljava/lang/String;

    const-string v5, "voice"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 329
    iput v8, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->documentAttachType:I

    goto/16 :goto_18

    .line 348
    .restart local v3    # "message":Lorg/telegram/tgnet/TLRPC$TL_message;
    :cond_cd
    iget-object v4, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->inlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->content_url:Ljava/lang/String;

    iget v4, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->documentAttachType:I

    if-ne v4, v9, :cond_1e5

    const-string v4, "mp3"

    :goto_d7
    invoke-static {v5, v4}, Lorg/telegram/messenger/ImageLoader;->getHttpUrlExtension(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 349
    .local v1, "ext":Ljava/lang/String;
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    const-wide/16 v6, 0x0

    iput-wide v6, v4, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    .line 350
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    const-wide/16 v6, 0x0

    iput-wide v6, v4, Lorg/telegram/tgnet/TLRPC$Document;->access_hash:J

    .line 351
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget v5, v3, Lorg/telegram/tgnet/TLRPC$TL_message;->date:I

    iput v5, v4, Lorg/telegram/tgnet/TLRPC$Document;->date:I

    .line 352
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "audio/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    .line 353
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iput v10, v4, Lorg/telegram/tgnet/TLRPC$Document;->size:I

    .line 354
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_photoSizeEmpty;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_photoSizeEmpty;-><init>()V

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 355
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    const-string v5, "s"

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->type:Ljava/lang/String;

    .line 356
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iput v10, v4, Lorg/telegram/tgnet/TLRPC$Document;->dc_id:I

    .line 358
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;-><init>()V

    .line 359
    .local v0, "attributeAudio":Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;
    iget-object v4, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->inlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->duration:I

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;->duration:I

    .line 360
    iget-object v4, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->inlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->title:Ljava/lang/String;

    if-eqz v4, :cond_1e9

    iget-object v4, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->inlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->title:Ljava/lang/String;

    :goto_142
    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;->title:Ljava/lang/String;

    .line 361
    iget-object v4, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->inlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->description:Ljava/lang/String;

    if-eqz v4, :cond_1ed

    iget-object v4, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->inlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->description:Ljava/lang/String;

    :goto_14e
    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;->performer:Ljava/lang/String;

    .line 362
    iget v4, v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;->flags:I

    or-int/lit8 v4, v4, 0x3

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;->flags:I

    .line 363
    iget v4, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->documentAttachType:I

    if-ne v4, v8, :cond_15c

    .line 364
    iput-boolean v11, v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;->voice:Z

    .line 366
    :cond_15c
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 368
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeFilename;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeFilename;-><init>()V

    .line 369
    .local v2, "fileName":Lorg/telegram/tgnet/TLRPC$TL_documentAttributeFilename;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->inlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->content_url:Ljava/lang/String;

    invoke-static {v5}, Lorg/telegram/messenger/Utilities;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v4, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->inlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v6, v4, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->content_url:Ljava/lang/String;

    iget v4, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->documentAttachType:I

    if-ne v4, v9, :cond_1f1

    const-string v4, "mp3"

    :goto_18b
    invoke-static {v6, v4}, Lorg/telegram/messenger/ImageLoader;->getHttpUrlExtension(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeFilename;->file_name:Ljava/lang/String;

    .line 370
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 372
    new-instance v5, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v4

    const/4 v6, 0x4

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->inlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->content_url:Ljava/lang/String;

    invoke-static {v7}, Lorg/telegram/messenger/Utilities;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "."

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v4, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->inlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v8, v4, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->content_url:Ljava/lang/String;

    iget v4, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->documentAttachType:I

    if-ne v4, v9, :cond_1f4

    const-string v4, "mp3"

    :goto_1ce
    invoke-static {v8, v4}, Lorg/telegram/messenger/ImageLoader;->getHttpUrlExtension(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v6, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_message;->attachPath:Ljava/lang/String;

    goto/16 :goto_73

    .line 348
    .end local v0    # "attributeAudio":Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;
    .end local v1    # "ext":Ljava/lang/String;
    .end local v2    # "fileName":Lorg/telegram/tgnet/TLRPC$TL_documentAttributeFilename;
    :cond_1e5
    const-string v4, "ogg"

    goto/16 :goto_d7

    .line 360
    .restart local v0    # "attributeAudio":Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;
    .restart local v1    # "ext":Ljava/lang/String;
    :cond_1e9
    const-string v4, ""

    goto/16 :goto_142

    .line 361
    :cond_1ed
    const-string v4, ""

    goto/16 :goto_14e

    .line 369
    .restart local v2    # "fileName":Lorg/telegram/tgnet/TLRPC$TL_documentAttributeFilename;
    :cond_1f1
    const-string v4, "ogg"

    goto :goto_18b

    .line 372
    :cond_1f4
    const-string v4, "ogg"

    goto :goto_1ce
.end method


# virtual methods
.method public getDocument()Lorg/telegram/tgnet/TLRPC$Document;
    .registers 2

    .prologue
    .line 414
    iget-object v0, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->documentAttach:Lorg/telegram/tgnet/TLRPC$Document;

    return-object v0
.end method

.method public getMessageObject()Lorg/telegram/messenger/MessageObject;
    .registers 2

    .prologue
    .line 447
    iget-object v0, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    return-object v0
.end method

.method public getObserverTag()I
    .registers 2

    .prologue
    .line 800
    iget v0, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->TAG:I

    return v0
.end method

.method public getPhotoImage()Lorg/telegram/messenger/ImageReceiver;
    .registers 2

    .prologue
    .line 418
    iget-object v0, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->linkImageView:Lorg/telegram/messenger/ImageReceiver;

    return-object v0
.end method

.method public getResult()Lorg/telegram/tgnet/TLRPC$BotInlineResult;
    .registers 2

    .prologue
    .line 765
    iget-object v0, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->inlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    return-object v0
.end method

.method public isSticker()Z
    .registers 3

    .prologue
    .line 406
    iget v0, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->documentAttachType:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method protected onAttachedToWindow()V
    .registers 2

    .prologue
    .line 438
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 439
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->drawLinkImageView:Z

    if-eqz v0, :cond_13

    .line 440
    iget-object v0, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->linkImageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 441
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Cells/ContextLinkCell;->updateButtonState(Z)V

    .line 444
    :cond_13
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 429
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 430
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->drawLinkImageView:Z

    if-eqz v0, :cond_c

    .line 431
    iget-object v0, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->linkImageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    .line 433
    :cond_c
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/telegram/messenger/MediaController;->removeLoadingFileObserver(Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;)V

    .line 434
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 16
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 557
    iget-object v0, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->titleLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_20

    .line 558
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 559
    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_162

    const/high16 v0, 0x41000000    # 8.0f

    :goto_d
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->titleY:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 560
    iget-object v0, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->titleLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 561
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 564
    :cond_20
    iget-object v0, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->descriptionLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_4b

    .line 565
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->chat_contextResult_descriptionTextPaint:Landroid/text/TextPaint;

    const-string v1, "windowBackgroundWhiteGrayText2"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 566
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 567
    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_167

    const/high16 v0, 0x41000000    # 8.0f

    :goto_38
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->descriptionY:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 568
    iget-object v0, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->descriptionLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 569
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 572
    :cond_4b
    iget-object v0, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->linkLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_76

    .line 573
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->chat_contextResult_descriptionTextPaint:Landroid/text/TextPaint;

    const-string v1, "windowBackgroundWhiteLinkText"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 574
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 575
    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_16c

    const/high16 v0, 0x41000000    # 8.0f

    :goto_63
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->linkY:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 576
    iget-object v0, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->linkLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 577
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 580
    :cond_76
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->mediaWebpage:Z

    if-nez v0, :cond_30e

    .line 581
    iget v0, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->documentAttachType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_84

    iget v0, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->documentAttachType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_175

    .line 582
    :cond_84
    iget-object v1, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress;

    iget-boolean v0, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->buttonPressed:Z

    if-eqz v0, :cond_171

    const-string v0, "chat_inAudioSelectedProgress"

    :goto_8c
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/RadialProgress;->setProgressColor(I)V

    .line 583
    iget-object v0, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/RadialProgress;->draw(Landroid/graphics/Canvas;)V

    .line 622
    :cond_98
    :goto_98
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->drawLinkImageView:Z

    if-eqz v0, :cond_106

    .line 623
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 624
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->scaled:Z

    if-eqz v0, :cond_ac

    iget v0, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->scale:F

    const v1, 0x3f4ccccd

    cmpl-float v0, v0, v1

    if-nez v0, :cond_b8

    :cond_ac
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->scaled:Z

    if-nez v0, :cond_e9

    iget v0, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->scale:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_e9

    .line 625
    :cond_b8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 626
    .local v10, "newTime":J
    iget-wide v0, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->lastUpdateTime:J

    sub-long v6, v10, v0

    .line 627
    .local v6, "dt":J
    iput-wide v10, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->lastUpdateTime:J

    .line 628
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->scaled:Z

    if-eqz v0, :cond_390

    iget v0, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->scale:F

    const v1, 0x3f4ccccd

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_390

    .line 629
    iget v0, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->scale:F

    long-to-float v1, v6

    const/high16 v2, 0x43c80000    # 400.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->scale:F

    .line 630
    iget v0, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->scale:F

    const v1, 0x3f4ccccd

    cmpg-float v0, v0, v1

    if-gez v0, :cond_e6

    .line 631
    const v0, 0x3f4ccccd

    iput v0, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->scale:F

    .line 639
    :cond_e6
    :goto_e6
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/ContextLinkCell;->invalidate()V

    .line 641
    .end local v6    # "dt":J
    .end local v10    # "newTime":J
    :cond_e9
    iget v0, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->scale:F

    iget v1, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->scale:F

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/ContextLinkCell;->getMeasuredWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/ContextLinkCell;->getMeasuredHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 642
    iget-object v0, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->linkImageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    .line 643
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 645
    :cond_106
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->mediaWebpage:Z

    if-eqz v0, :cond_119

    iget v0, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->documentAttachType:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_114

    iget v0, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->documentAttachType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_119

    .line 646
    :cond_114
    iget-object v0, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/RadialProgress;->draw(Landroid/graphics/Canvas;)V

    .line 649
    :cond_119
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->needDivider:Z

    if-eqz v0, :cond_147

    iget-boolean v0, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->mediaWebpage:Z

    if-nez v0, :cond_147

    .line 650
    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_3a7

    .line 651
    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/ContextLinkCell;->getMeasuredHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v2, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/ContextLinkCell;->getMeasuredWidth()I

    move-result v0

    sget v3, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    int-to-float v3, v3

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int/2addr v0, v3

    int-to-float v3, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/ContextLinkCell;->getMeasuredHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v4, v0

    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 656
    :cond_147
    :goto_147
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->needShadow:Z

    if-eqz v0, :cond_161

    .line 657
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->chat_contextResult_shadowUnderSwitchDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/ContextLinkCell;->getMeasuredWidth()I

    move-result v3

    const/high16 v4, 0x40400000    # 3.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 658
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->chat_contextResult_shadowUnderSwitchDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 660
    :cond_161
    return-void

    .line 559
    :cond_162
    sget v0, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    int-to-float v0, v0

    goto/16 :goto_d

    .line 567
    :cond_167
    sget v0, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    int-to-float v0, v0

    goto/16 :goto_38

    .line 575
    :cond_16c
    sget v0, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    int-to-float v0, v0

    goto/16 :goto_63

    .line 582
    :cond_171
    const-string v0, "chat_inAudioProgress"

    goto/16 :goto_8c

    .line 584
    :cond_175
    iget-object v0, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->inlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    if-eqz v0, :cond_1f3

    iget-object v0, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->inlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->type:Ljava/lang/String;

    const-string v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f3

    .line 585
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->chat_inlineResultFile:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    .line 586
    .local v9, "w":I
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->chat_inlineResultFile:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    .line 587
    .local v8, "h":I
    iget-object v0, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->linkImageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getImageX()I

    move-result v0

    const/high16 v1, 0x42500000    # 52.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr v1, v9

    div-int/lit8 v1, v1, 0x2

    add-int v12, v0, v1

    .line 588
    .local v12, "x":I
    iget-object v0, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->linkImageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getImageY()I

    move-result v0

    const/high16 v1, 0x42500000    # 52.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr v1, v8

    div-int/lit8 v1, v1, 0x2

    add-int v13, v0, v1

    .line 589
    .local v13, "y":I
    iget-object v0, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->linkImageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getImageX()I

    move-result v0

    int-to-float v1, v0

    iget-object v0, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->linkImageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getImageY()I

    move-result v0

    int-to-float v2, v0

    iget-object v0, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->linkImageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getImageX()I

    move-result v0

    const/high16 v3, 0x42500000    # 52.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    add-int/2addr v0, v3

    int-to-float v3, v0

    iget-object v0, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->linkImageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getImageY()I

    move-result v0

    const/high16 v4, 0x42500000    # 52.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v0, v4

    int-to-float v4, v0

    sget-object v5, Lorg/telegram/ui/Components/LetterDrawable;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 590
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->chat_inlineResultFile:Landroid/graphics/drawable/Drawable;

    add-int v1, v12, v9

    add-int v2, v13, v8

    invoke-virtual {v0, v12, v13, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 591
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->chat_inlineResultFile:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_98

    .line 592
    .end local v8    # "h":I
    .end local v9    # "w":I
    .end local v12    # "x":I
    .end local v13    # "y":I
    :cond_1f3
    iget-object v0, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->inlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    if-eqz v0, :cond_27d

    iget-object v0, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->inlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->type:Ljava/lang/String;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20f

    iget-object v0, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->inlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->type:Ljava/lang/String;

    const-string v1, "voice"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27d

    .line 593
    :cond_20f
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->chat_inlineResultAudio:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    .line 594
    .restart local v9    # "w":I
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->chat_inlineResultAudio:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    .line 595
    .restart local v8    # "h":I
    iget-object v0, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->linkImageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getImageX()I

    move-result v0

    const/high16 v1, 0x42500000    # 52.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr v1, v9

    div-int/lit8 v1, v1, 0x2

    add-int v12, v0, v1

    .line 596
    .restart local v12    # "x":I
    iget-object v0, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->linkImageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getImageY()I

    move-result v0

    const/high16 v1, 0x42500000    # 52.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr v1, v8

    div-int/lit8 v1, v1, 0x2

    add-int v13, v0, v1

    .line 597
    .restart local v13    # "y":I
    iget-object v0, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->linkImageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getImageX()I

    move-result v0

    int-to-float v1, v0

    iget-object v0, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->linkImageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getImageY()I

    move-result v0

    int-to-float v2, v0

    iget-object v0, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->linkImageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getImageX()I

    move-result v0

    const/high16 v3, 0x42500000    # 52.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    add-int/2addr v0, v3

    int-to-float v3, v0

    iget-object v0, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->linkImageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getImageY()I

    move-result v0

    const/high16 v4, 0x42500000    # 52.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v0, v4

    int-to-float v4, v0

    sget-object v5, Lorg/telegram/ui/Components/LetterDrawable;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 598
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->chat_inlineResultAudio:Landroid/graphics/drawable/Drawable;

    add-int v1, v12, v9

    add-int v2, v13, v8

    invoke-virtual {v0, v12, v13, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 599
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->chat_inlineResultAudio:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_98

    .line 600
    .end local v8    # "h":I
    .end local v9    # "w":I
    .end local v12    # "x":I
    .end local v13    # "y":I
    :cond_27d
    iget-object v0, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->inlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    if-eqz v0, :cond_307

    iget-object v0, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->inlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->type:Ljava/lang/String;

    const-string v1, "venue"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_299

    iget-object v0, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->inlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->type:Ljava/lang/String;

    const-string v1, "geo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_307

    .line 601
    :cond_299
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->chat_inlineResultLocation:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    .line 602
    .restart local v9    # "w":I
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->chat_inlineResultLocation:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    .line 603
    .restart local v8    # "h":I
    iget-object v0, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->linkImageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getImageX()I

    move-result v0

    const/high16 v1, 0x42500000    # 52.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr v1, v9

    div-int/lit8 v1, v1, 0x2

    add-int v12, v0, v1

    .line 604
    .restart local v12    # "x":I
    iget-object v0, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->linkImageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getImageY()I

    move-result v0

    const/high16 v1, 0x42500000    # 52.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr v1, v8

    div-int/lit8 v1, v1, 0x2

    add-int v13, v0, v1

    .line 605
    .restart local v13    # "y":I
    iget-object v0, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->linkImageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getImageX()I

    move-result v0

    int-to-float v1, v0

    iget-object v0, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->linkImageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getImageY()I

    move-result v0

    int-to-float v2, v0

    iget-object v0, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->linkImageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getImageX()I

    move-result v0

    const/high16 v3, 0x42500000    # 52.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    add-int/2addr v0, v3

    int-to-float v3, v0

    iget-object v0, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->linkImageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getImageY()I

    move-result v0

    const/high16 v4, 0x42500000    # 52.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v0, v4

    int-to-float v4, v0

    sget-object v5, Lorg/telegram/ui/Components/LetterDrawable;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 606
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->chat_inlineResultLocation:Landroid/graphics/drawable/Drawable;

    add-int v1, v12, v9

    add-int v2, v13, v8

    invoke-virtual {v0, v12, v13, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 607
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->chat_inlineResultLocation:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_98

    .line 609
    .end local v8    # "h":I
    .end local v9    # "w":I
    .end local v12    # "x":I
    .end local v13    # "y":I
    :cond_307
    iget-object v0, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->letterDrawable:Lorg/telegram/ui/Components/LetterDrawable;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/LetterDrawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_98

    .line 612
    :cond_30e
    iget-object v0, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->inlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    if-eqz v0, :cond_98

    iget-object v0, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->inlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->send_message:Lorg/telegram/tgnet/TLRPC$BotInlineMessage;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_botInlineMessageMediaGeo;

    if-nez v0, :cond_322

    iget-object v0, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->inlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->send_message:Lorg/telegram/tgnet/TLRPC$BotInlineMessage;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_botInlineMessageMediaVenue;

    if-eqz v0, :cond_98

    .line 613
    :cond_322
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->chat_inlineResultLocation:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    .line 614
    .restart local v9    # "w":I
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->chat_inlineResultLocation:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    .line 615
    .restart local v8    # "h":I
    iget-object v0, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->linkImageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getImageX()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->linkImageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->getImageWidth()I

    move-result v1

    sub-int/2addr v1, v9

    div-int/lit8 v1, v1, 0x2

    add-int v12, v0, v1

    .line 616
    .restart local v12    # "x":I
    iget-object v0, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->linkImageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getImageY()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->linkImageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->getImageHeight()I

    move-result v1

    sub-int/2addr v1, v8

    div-int/lit8 v1, v1, 0x2

    add-int v13, v0, v1

    .line 617
    .restart local v13    # "y":I
    iget-object v0, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->linkImageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getImageX()I

    move-result v0

    int-to-float v1, v0

    iget-object v0, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->linkImageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getImageY()I

    move-result v0

    int-to-float v2, v0

    iget-object v0, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->linkImageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getImageX()I

    move-result v0

    iget-object v3, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->linkImageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->getImageWidth()I

    move-result v3

    add-int/2addr v0, v3

    int-to-float v3, v0

    iget-object v0, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->linkImageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getImageY()I

    move-result v0

    iget-object v4, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->linkImageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v4}, Lorg/telegram/messenger/ImageReceiver;->getImageHeight()I

    move-result v4

    add-int/2addr v0, v4

    int-to-float v4, v0

    sget-object v5, Lorg/telegram/ui/Components/LetterDrawable;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 618
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->chat_inlineResultLocation:Landroid/graphics/drawable/Drawable;

    add-int v1, v12, v9

    add-int v2, v13, v8

    invoke-virtual {v0, v12, v13, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 619
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->chat_inlineResultLocation:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_98

    .line 634
    .end local v8    # "h":I
    .end local v9    # "w":I
    .end local v12    # "x":I
    .end local v13    # "y":I
    .restart local v6    # "dt":J
    .restart local v10    # "newTime":J
    :cond_390
    iget v0, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->scale:F

    long-to-float v1, v6

    const/high16 v2, 0x43c80000    # 400.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->scale:F

    .line 635
    iget v0, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->scale:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_e6

    .line 636
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->scale:F

    goto/16 :goto_e6

    .line 653
    .end local v6    # "dt":J
    .end local v10    # "newTime":J
    :cond_3a7
    sget v0, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    int-to-float v0, v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v1, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/ContextLinkCell;->getMeasuredHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v2, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/ContextLinkCell;->getMeasuredWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/ContextLinkCell;->getMeasuredHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v4, v0

    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_147
.end method

.method public onFailedDownload(Ljava/lang/String;)V
    .registers 3
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 770
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Cells/ContextLinkCell;->updateButtonState(Z)V

    .line 771
    return-void
.end method

.method protected onMeasure(II)V
    .registers 55
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DrawAllocation"
        }
    .end annotation

    .prologue
    .line 106
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lorg/telegram/ui/Cells/ContextLinkCell;->drawLinkImageView:Z

    .line 107
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/Cells/ContextLinkCell;->descriptionLayout:Landroid/text/StaticLayout;

    .line 108
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/Cells/ContextLinkCell;->titleLayout:Landroid/text/StaticLayout;

    .line 109
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/Cells/ContextLinkCell;->linkLayout:Landroid/text/StaticLayout;

    .line 110
    const/high16 v4, 0x41d80000    # 27.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lorg/telegram/ui/Cells/ContextLinkCell;->linkY:I

    .line 112
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Cells/ContextLinkCell;->inlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    if-nez v4, :cond_3c

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Cells/ContextLinkCell;->documentAttach:Lorg/telegram/tgnet/TLRPC$Document;

    if-nez v4, :cond_3c

    .line 113
    const/high16 v4, 0x42c80000    # 100.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    const/high16 v6, 0x42c80000    # 100.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6}, Lorg/telegram/ui/Cells/ContextLinkCell;->setMeasuredDimension(II)V

    .line 308
    :cond_3b
    :goto_3b
    return-void

    .line 117
    :cond_3c
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v47

    .line 118
    .local v47, "viewWidth":I
    sget v4, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    int-to-float v4, v4

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int v4, v47, v4

    const/high16 v6, 0x41000000    # 8.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    sub-int v45, v4, v6

    .line 120
    .local v45, "maxWidth":I
    const/16 v35, 0x0

    .line 121
    .local v35, "currentPhotoObject":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    const/16 v36, 0x0

    .line 122
    .local v36, "currentPhotoObjectThumb":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    const/16 v46, 0x0

    .line 123
    .local v46, "photoThumbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$PhotoSize;>;"
    const/16 v17, 0x0

    .line 125
    .local v17, "url":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Cells/ContextLinkCell;->documentAttach:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v4, :cond_3b3

    .line 126
    new-instance v46, Ljava/util/ArrayList;

    .end local v46    # "photoThumbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$PhotoSize;>;"
    invoke-direct/range {v46 .. v46}, Ljava/util/ArrayList;-><init>()V

    .line 127
    .restart local v46    # "photoThumbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$PhotoSize;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Cells/ContextLinkCell;->documentAttach:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-object/from16 v0, v46

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    :cond_6f
    :goto_6f
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/telegram/ui/Cells/ContextLinkCell;->mediaWebpage:Z

    if-nez v4, :cond_196

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Cells/ContextLinkCell;->inlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    if-eqz v4, :cond_196

    .line 133
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Cells/ContextLinkCell;->inlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->title:Ljava/lang/String;

    if-eqz v4, :cond_ed

    .line 135
    :try_start_83
    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->chat_contextResult_titleTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/Cells/ContextLinkCell;->inlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->title:Ljava/lang/String;

    invoke-virtual {v4, v6}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v4

    float-to-double v8, v4

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v0, v8

    move/from16 v49, v0

    .line 136
    .local v49, "width":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Cells/ContextLinkCell;->inlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->title:Ljava/lang/String;

    const/16 v6, 0xa

    const/16 v8, 0x20

    invoke-virtual {v4, v6, v8}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->chat_contextResult_titleTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v6}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v6

    const/high16 v8, 0x41700000    # 15.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    const/4 v9, 0x0

    invoke-static {v4, v6, v8, v9}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;IZ)Ljava/lang/CharSequence;

    move-result-object v4

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->chat_contextResult_titleTextPaint:Landroid/text/TextPaint;

    move/from16 v0, v49

    move/from16 v1, v45

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v8

    int-to-float v8, v8

    sget-object v9, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v4, v6, v8, v9}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 137
    .local v5, "titleFinal":Ljava/lang/CharSequence;
    new-instance v4, Landroid/text/StaticLayout;

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->chat_contextResult_titleTextPaint:Landroid/text/TextPaint;

    const/high16 v8, 0x40800000    # 4.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    add-int v7, v45, v8

    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct/range {v4 .. v11}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/Cells/ContextLinkCell;->titleLayout:Landroid/text/StaticLayout;
    :try_end_e0
    .catch Ljava/lang/Exception; {:try_start_83 .. :try_end_e0} :catch_3d2

    .line 141
    .end local v5    # "titleFinal":Ljava/lang/CharSequence;
    .end local v49    # "width":I
    :goto_e0
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Cells/ContextLinkCell;->letterDrawable:Lorg/telegram/ui/Components/LetterDrawable;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/Cells/ContextLinkCell;->inlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->title:Ljava/lang/String;

    invoke-virtual {v4, v6}, Lorg/telegram/ui/Components/LetterDrawable;->setTitle(Ljava/lang/String;)V

    .line 144
    :cond_ed
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Cells/ContextLinkCell;->inlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->description:Ljava/lang/String;

    if-eqz v4, :cond_148

    .line 146
    :try_start_f5
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Cells/ContextLinkCell;->inlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->description:Ljava/lang/String;

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->chat_contextResult_descriptionTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v6}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v6

    const/high16 v8, 0x41500000    # 13.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    const/4 v9, 0x0

    invoke-static {v4, v6, v8, v9}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;IZ)Ljava/lang/CharSequence;

    move-result-object v6

    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->chat_contextResult_descriptionTextPaint:Landroid/text/TextPaint;

    const/4 v10, 0x0

    const/4 v11, 0x3

    move/from16 v8, v45

    move/from16 v9, v45

    invoke-static/range {v6 .. v11}, Lorg/telegram/ui/Cells/ChatMessageCell;->generateStaticLayout(Ljava/lang/CharSequence;Landroid/text/TextPaint;IIII)Landroid/text/StaticLayout;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/Cells/ContextLinkCell;->descriptionLayout:Landroid/text/StaticLayout;

    .line 147
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Cells/ContextLinkCell;->descriptionLayout:Landroid/text/StaticLayout;

    invoke-virtual {v4}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v4

    if-lez v4, :cond_148

    .line 148
    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/ui/Cells/ContextLinkCell;->descriptionY:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/Cells/ContextLinkCell;->descriptionLayout:Landroid/text/StaticLayout;

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/telegram/ui/Cells/ContextLinkCell;->descriptionLayout:Landroid/text/StaticLayout;

    invoke-virtual {v8}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v6, v8}, Landroid/text/StaticLayout;->getLineBottom(I)I

    move-result v6

    add-int/2addr v4, v6

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    add-int/2addr v4, v6

    move-object/from16 v0, p0

    iput v4, v0, Lorg/telegram/ui/Cells/ContextLinkCell;->linkY:I
    :try_end_148
    .catch Ljava/lang/Exception; {:try_start_f5 .. :try_end_148} :catch_3d8

    .line 155
    :cond_148
    :goto_148
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Cells/ContextLinkCell;->inlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->url:Ljava/lang/String;

    if-eqz v4, :cond_196

    .line 157
    :try_start_150
    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->chat_contextResult_descriptionTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/Cells/ContextLinkCell;->inlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->url:Ljava/lang/String;

    invoke-virtual {v4, v6}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v4

    float-to-double v8, v4

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v0, v8

    move/from16 v49, v0

    .line 158
    .restart local v49    # "width":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Cells/ContextLinkCell;->inlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->url:Ljava/lang/String;

    const/16 v6, 0xa

    const/16 v8, 0x20

    invoke-virtual {v4, v6, v8}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->chat_contextResult_descriptionTextPaint:Landroid/text/TextPaint;

    move/from16 v0, v49

    move/from16 v1, v45

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v8

    int-to-float v8, v8

    sget-object v9, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v4, v6, v8, v9}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v7

    .line 159
    .local v7, "linkFinal":Ljava/lang/CharSequence;
    new-instance v6, Landroid/text/StaticLayout;

    sget-object v8, Lorg/telegram/ui/ActionBar/Theme;->chat_contextResult_descriptionTextPaint:Landroid/text/TextPaint;

    sget-object v10, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v12, 0x0

    const/4 v13, 0x0

    move/from16 v9, v45

    invoke-direct/range {v6 .. v13}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    move-object/from16 v0, p0

    iput-object v6, v0, Lorg/telegram/ui/Cells/ContextLinkCell;->linkLayout:Landroid/text/StaticLayout;
    :try_end_196
    .catch Ljava/lang/Exception; {:try_start_150 .. :try_end_196} :catch_3de

    .line 166
    .end local v7    # "linkFinal":Ljava/lang/CharSequence;
    .end local v49    # "width":I
    :cond_196
    :goto_196
    const/4 v14, 0x0

    .line 167
    .local v14, "ext":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Cells/ContextLinkCell;->documentAttach:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v4, :cond_412

    .line 168
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Cells/ContextLinkCell;->documentAttach:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v4}, Lorg/telegram/messenger/MessageObject;->isGifDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v4

    if-eqz v4, :cond_3e4

    .line 169
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Cells/ContextLinkCell;->documentAttach:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v0, v4, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-object/from16 v35, v0

    .line 185
    :cond_1af
    :goto_1af
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Cells/ContextLinkCell;->inlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    if-eqz v4, :cond_1f9

    .line 186
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Cells/ContextLinkCell;->inlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->content_url:Ljava/lang/String;

    if-eqz v4, :cond_1e7

    .line 187
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Cells/ContextLinkCell;->inlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->type:Ljava/lang/String;

    if-eqz v4, :cond_1e7

    .line 188
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Cells/ContextLinkCell;->inlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->type:Ljava/lang/String;

    const-string v6, "gif"

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_43d

    .line 189
    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/ui/Cells/ContextLinkCell;->documentAttachType:I

    const/4 v6, 0x2

    if-eq v4, v6, :cond_1e7

    .line 190
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Cells/ContextLinkCell;->inlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v0, v4, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->content_url:Ljava/lang/String;

    move-object/from16 v17, v0

    .line 191
    const/4 v4, 0x2

    move-object/from16 v0, p0

    iput v4, v0, Lorg/telegram/ui/Cells/ContextLinkCell;->documentAttachType:I

    .line 201
    :cond_1e7
    :goto_1e7
    if-nez v17, :cond_1f9

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Cells/ContextLinkCell;->inlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->thumb_url:Ljava/lang/String;

    if-eqz v4, :cond_1f9

    .line 202
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Cells/ContextLinkCell;->inlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v0, v4, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->thumb_url:Ljava/lang/String;

    move-object/from16 v17, v0

    .line 205
    :cond_1f9
    if-nez v17, :cond_26a

    if-nez v35, :cond_26a

    if-nez v36, :cond_26a

    .line 206
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Cells/ContextLinkCell;->inlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->send_message:Lorg/telegram/tgnet/TLRPC$BotInlineMessage;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_botInlineMessageMediaVenue;

    if-nez v4, :cond_213

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Cells/ContextLinkCell;->inlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->send_message:Lorg/telegram/tgnet/TLRPC$BotInlineMessage;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_botInlineMessageMediaGeo;

    if-eqz v4, :cond_26a

    .line 207
    :cond_213
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Cells/ContextLinkCell;->inlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->send_message:Lorg/telegram/tgnet/TLRPC$BotInlineMessage;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$BotInlineMessage;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    iget-wide v0, v4, Lorg/telegram/tgnet/TLRPC$GeoPoint;->lat:D

    move-wide/from16 v40, v0

    .line 208
    .local v40, "lat":D
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Cells/ContextLinkCell;->inlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->send_message:Lorg/telegram/tgnet/TLRPC$BotInlineMessage;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$BotInlineMessage;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    iget-wide v0, v4, Lorg/telegram/tgnet/TLRPC$GeoPoint;->_long:D

    move-wide/from16 v42, v0

    .line 209
    .local v42, "lon":D
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "https://maps.googleapis.com/maps/api/staticmap?center=%f,%f&zoom=15&size=72x72&maptype=roadmap&scale=%d&markers=color:red|size:small|%f,%f&sensor=false"

    const/4 v8, 0x5

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static/range {v40 .. v41}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static/range {v42 .. v43}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const/4 v10, 0x2

    sget v11, Lorg/telegram/messenger/AndroidUtilities;->density:F

    float-to-double v0, v11

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-int v11, v0

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x3

    invoke-static/range {v40 .. v41}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x4

    invoke-static/range {v42 .. v43}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v4, v6, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    .line 214
    .end local v40    # "lat":D
    .end local v42    # "lon":D
    :cond_26a
    const/16 v48, 0x0

    .line 215
    .local v48, "w":I
    const/16 v38, 0x0

    .line 217
    .local v38, "h":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Cells/ContextLinkCell;->documentAttach:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v4, :cond_2aa

    .line 218
    const/16 v34, 0x0

    .local v34, "b":I
    :goto_276
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Cells/ContextLinkCell;->documentAttach:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v34

    if-ge v0, v4, :cond_2aa

    .line 219
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Cells/ContextLinkCell;->documentAttach:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    move/from16 v0, v34

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    .line 220
    .local v33, "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    move-object/from16 v0, v33

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeImageSize;

    if-nez v4, :cond_29e

    move-object/from16 v0, v33

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;

    if-eqz v4, :cond_45f

    .line 221
    :cond_29e
    move-object/from16 v0, v33

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->w:I

    move/from16 v48, v0

    .line 222
    move-object/from16 v0, v33

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->h:I

    move/from16 v38, v0

    .line 227
    .end local v33    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    .end local v34    # "b":I
    :cond_2aa
    if-eqz v48, :cond_2ae

    if-nez v38, :cond_2c3

    .line 228
    :cond_2ae
    if-eqz v35, :cond_463

    .line 229
    if-eqz v36, :cond_2b7

    .line 230
    const/4 v4, -0x1

    move-object/from16 v0, v36

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->size:I

    .line 232
    :cond_2b7
    move-object/from16 v0, v35

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    move/from16 v48, v0

    .line 233
    move-object/from16 v0, v35

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    move/from16 v38, v0

    .line 239
    :cond_2c3
    :goto_2c3
    if-eqz v48, :cond_2c7

    if-nez v38, :cond_2cf

    .line 240
    :cond_2c7
    const/high16 v4, 0x42a00000    # 80.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v38

    move/from16 v48, v38

    .line 242
    :cond_2cf
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Cells/ContextLinkCell;->documentAttach:Lorg/telegram/tgnet/TLRPC$Document;

    if-nez v4, :cond_2d9

    if-nez v35, :cond_2d9

    if-eqz v17, :cond_358

    .line 244
    :cond_2d9
    const-string v22, "52_52_b"

    .line 246
    .local v22, "currentPhotoFilterThumb":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/telegram/ui/Cells/ContextLinkCell;->mediaWebpage:Z

    if-eqz v4, :cond_4b2

    .line 247
    move/from16 v0, v48

    int-to-float v4, v0

    move/from16 v0, v38

    int-to-float v6, v0

    const/high16 v8, 0x42a00000    # 80.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v6, v8

    div-float/2addr v4, v6

    float-to-int v0, v4

    move/from16 v49, v0

    .line 248
    .restart local v49    # "width":I
    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/ui/Cells/ContextLinkCell;->documentAttachType:I

    const/4 v6, 0x2

    if-ne v4, v6, :cond_47b

    .line 249
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "%d_%d_b"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    move/from16 v0, v49

    int-to-float v10, v0

    sget v11, Lorg/telegram/messenger/AndroidUtilities;->density:F

    div-float/2addr v10, v11

    float-to-int v10, v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const/16 v10, 0x50

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v4, v6, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .local v12, "currentPhotoFilter":Ljava/lang/String;
    move-object/from16 v22, v12

    .line 257
    .end local v49    # "width":I
    :goto_31e
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/Cells/ContextLinkCell;->linkImageView:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/ui/Cells/ContextLinkCell;->documentAttachType:I

    const/4 v8, 0x6

    if-ne v4, v8, :cond_4b6

    const/4 v4, 0x1

    :goto_32a
    invoke-virtual {v6, v4}, Lorg/telegram/messenger/ImageReceiver;->setAspectFit(Z)V

    .line 259
    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/ui/Cells/ContextLinkCell;->documentAttachType:I

    const/4 v6, 0x2

    if-ne v4, v6, :cond_4de

    .line 260
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Cells/ContextLinkCell;->documentAttach:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v4, :cond_4bc

    .line 261
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/telegram/ui/Cells/ContextLinkCell;->linkImageView:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/ui/Cells/ContextLinkCell;->documentAttach:Lorg/telegram/tgnet/TLRPC$Document;

    const/4 v10, 0x0

    if-eqz v35, :cond_4b9

    move-object/from16 v0, v35

    iget-object v11, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    :goto_349
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Cells/ContextLinkCell;->documentAttach:Lorg/telegram/tgnet/TLRPC$Document;

    iget v13, v4, Lorg/telegram/tgnet/TLRPC$Document;->size:I

    const/4 v15, 0x0

    invoke-virtual/range {v8 .. v15}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;ILjava/lang/String;Z)V

    .line 272
    .end local v22    # "currentPhotoFilterThumb":Ljava/lang/String;
    :goto_353
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lorg/telegram/ui/Cells/ContextLinkCell;->drawLinkImageView:Z

    .line 275
    .end local v12    # "currentPhotoFilter":Ljava/lang/String;
    :cond_358
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/telegram/ui/Cells/ContextLinkCell;->mediaWebpage:Z

    if-eqz v4, :cond_52e

    .line 276
    move/from16 v49, v47

    .line 277
    .restart local v49    # "width":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v39

    .line 278
    .local v39, "height":I
    if-nez v39, :cond_36c

    .line 279
    const/high16 v4, 0x42c80000    # 100.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v39

    .line 281
    :cond_36c
    move-object/from16 v0, p0

    move/from16 v1, v49

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Cells/ContextLinkCell;->setMeasuredDimension(II)V

    .line 282
    const/high16 v4, 0x41c00000    # 24.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int v4, v49, v4

    div-int/lit8 v50, v4, 0x2

    .line 283
    .local v50, "x":I
    const/high16 v4, 0x41c00000    # 24.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int v4, v39, v4

    div-int/lit8 v51, v4, 0x2

    .line 284
    .local v51, "y":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Cells/ContextLinkCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress;

    const/high16 v6, 0x41c00000    # 24.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    add-int v6, v6, v50

    const/high16 v8, 0x41c00000    # 24.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    add-int v8, v8, v51

    move/from16 v0, v50

    move/from16 v1, v51

    invoke-virtual {v4, v0, v1, v6, v8}, Lorg/telegram/ui/Components/RadialProgress;->setProgressRect(IIII)V

    .line 285
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Cells/ContextLinkCell;->linkImageView:Lorg/telegram/messenger/ImageReceiver;

    const/4 v6, 0x0

    const/4 v8, 0x0

    move/from16 v0, v49

    move/from16 v1, v39

    invoke-virtual {v4, v6, v8, v0, v1}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(IIII)V

    goto/16 :goto_3b

    .line 128
    .end local v14    # "ext":Ljava/lang/String;
    .end local v38    # "h":I
    .end local v39    # "height":I
    .end local v48    # "w":I
    .end local v49    # "width":I
    .end local v50    # "x":I
    .end local v51    # "y":I
    :cond_3b3
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Cells/ContextLinkCell;->inlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    if-eqz v4, :cond_6f

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Cells/ContextLinkCell;->inlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz v4, :cond_6f

    .line 129
    new-instance v46, Ljava/util/ArrayList;

    .end local v46    # "photoThumbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$PhotoSize;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Cells/ContextLinkCell;->inlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    move-object/from16 v0, v46

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .restart local v46    # "photoThumbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$PhotoSize;>;"
    goto/16 :goto_6f

    .line 138
    :catch_3d2
    move-exception v37

    .line 139
    .local v37, "e":Ljava/lang/Exception;
    invoke-static/range {v37 .. v37}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_e0

    .line 150
    .end local v37    # "e":Ljava/lang/Exception;
    :catch_3d8
    move-exception v37

    .line 151
    .restart local v37    # "e":Ljava/lang/Exception;
    invoke-static/range {v37 .. v37}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_148

    .line 160
    .end local v37    # "e":Ljava/lang/Exception;
    :catch_3de
    move-exception v37

    .line 161
    .restart local v37    # "e":Ljava/lang/Exception;
    invoke-static/range {v37 .. v37}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_196

    .line 170
    .end local v37    # "e":Ljava/lang/Exception;
    .restart local v14    # "ext":Ljava/lang/String;
    :cond_3e4
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Cells/ContextLinkCell;->documentAttach:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v4}, Lorg/telegram/messenger/MessageObject;->isStickerDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v4

    if-eqz v4, :cond_3fa

    .line 171
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Cells/ContextLinkCell;->documentAttach:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v0, v4, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-object/from16 v35, v0

    .line 172
    const-string v14, "webp"

    goto/16 :goto_1af

    .line 174
    :cond_3fa
    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/ui/Cells/ContextLinkCell;->documentAttachType:I

    const/4 v6, 0x5

    if-eq v4, v6, :cond_1af

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/ui/Cells/ContextLinkCell;->documentAttachType:I

    const/4 v6, 0x3

    if-eq v4, v6, :cond_1af

    .line 175
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Cells/ContextLinkCell;->documentAttach:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v0, v4, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-object/from16 v35, v0

    goto/16 :goto_1af

    .line 178
    :cond_412
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Cells/ContextLinkCell;->inlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    if-eqz v4, :cond_1af

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Cells/ContextLinkCell;->inlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz v4, :cond_1af

    .line 179
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I

    move-result v4

    const/4 v6, 0x1

    move-object/from16 v0, v46

    invoke-static {v0, v4, v6}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;IZ)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v35

    .line 180
    const/16 v4, 0x50

    move-object/from16 v0, v46

    invoke-static {v0, v4}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v36

    .line 181
    move-object/from16 v0, v36

    move-object/from16 v1, v35

    if-ne v0, v1, :cond_1af

    .line 182
    const/16 v36, 0x0

    goto/16 :goto_1af

    .line 193
    :cond_43d
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Cells/ContextLinkCell;->inlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->type:Ljava/lang/String;

    const-string v6, "photo"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e7

    .line 194
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Cells/ContextLinkCell;->inlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v0, v4, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->thumb_url:Ljava/lang/String;

    move-object/from16 v17, v0

    .line 195
    if-nez v17, :cond_1e7

    .line 196
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Cells/ContextLinkCell;->inlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v0, v4, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->content_url:Ljava/lang/String;

    move-object/from16 v17, v0

    goto/16 :goto_1e7

    .line 218
    .restart local v33    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    .restart local v34    # "b":I
    .restart local v38    # "h":I
    .restart local v48    # "w":I
    :cond_45f
    add-int/lit8 v34, v34, 0x1

    goto/16 :goto_276

    .line 234
    .end local v33    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    .end local v34    # "b":I
    :cond_463
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Cells/ContextLinkCell;->inlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    if-eqz v4, :cond_2c3

    .line 235
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Cells/ContextLinkCell;->inlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget v0, v4, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->w:I

    move/from16 v48, v0

    .line 236
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Cells/ContextLinkCell;->inlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget v0, v4, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->h:I

    move/from16 v38, v0

    goto/16 :goto_2c3

    .line 251
    .restart local v22    # "currentPhotoFilterThumb":Ljava/lang/String;
    .restart local v49    # "width":I
    :cond_47b
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "%d_%d"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    move/from16 v0, v49

    int-to-float v10, v0

    sget v11, Lorg/telegram/messenger/AndroidUtilities;->density:F

    div-float/2addr v10, v11

    float-to-int v10, v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const/16 v10, 0x50

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v4, v6, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 252
    .restart local v12    # "currentPhotoFilter":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "_b"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    goto/16 :goto_31e

    .line 255
    .end local v12    # "currentPhotoFilter":Ljava/lang/String;
    .end local v49    # "width":I
    :cond_4b2
    const-string v12, "52_52"

    .restart local v12    # "currentPhotoFilter":Ljava/lang/String;
    goto/16 :goto_31e

    .line 257
    :cond_4b6
    const/4 v4, 0x0

    goto/16 :goto_32a

    .line 261
    :cond_4b9
    const/4 v11, 0x0

    goto/16 :goto_349

    .line 263
    :cond_4bc
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/Cells/ContextLinkCell;->linkImageView:Lorg/telegram/messenger/ImageReceiver;

    const/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    if-eqz v35, :cond_4db

    move-object/from16 v0, v35

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-object/from16 v20, v0

    :goto_4ce
    const/16 v22, -0x1

    const/16 v24, 0x1

    move-object/from16 v21, v12

    move-object/from16 v23, v14

    invoke-virtual/range {v15 .. v24}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;ILjava/lang/String;Z)V

    goto/16 :goto_353

    :cond_4db
    const/16 v20, 0x0

    goto :goto_4ce

    .line 266
    :cond_4de
    if-eqz v35, :cond_508

    .line 267
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Cells/ContextLinkCell;->linkImageView:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v18, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-object/from16 v19, v0

    if-eqz v36, :cond_505

    move-object/from16 v0, v36

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-object/from16 v21, v0

    :goto_4f4
    move-object/from16 v0, v35

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->size:I

    move/from16 v23, v0

    const/16 v25, 0x0

    move-object/from16 v20, v12

    move-object/from16 v24, v14

    invoke-virtual/range {v18 .. v25}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;ILjava/lang/String;Z)V

    goto/16 :goto_353

    :cond_505
    const/16 v21, 0x0

    goto :goto_4f4

    .line 269
    :cond_508
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Cells/ContextLinkCell;->linkImageView:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/16 v27, 0x0

    if-eqz v36, :cond_52b

    move-object/from16 v0, v36

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-object/from16 v28, v0

    :goto_51a
    const/16 v30, -0x1

    const/16 v32, 0x1

    move-object/from16 v25, v17

    move-object/from16 v26, v12

    move-object/from16 v29, v22

    move-object/from16 v31, v14

    invoke-virtual/range {v23 .. v32}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;ILjava/lang/String;Z)V

    goto/16 :goto_353

    :cond_52b
    const/16 v28, 0x0

    goto :goto_51a

    .line 287
    .end local v12    # "currentPhotoFilter":Ljava/lang/String;
    .end local v22    # "currentPhotoFilterThumb":Ljava/lang/String;
    :cond_52e
    const/16 v39, 0x0

    .line 288
    .restart local v39    # "height":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Cells/ContextLinkCell;->titleLayout:Landroid/text/StaticLayout;

    if-eqz v4, :cond_554

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Cells/ContextLinkCell;->titleLayout:Landroid/text/StaticLayout;

    invoke-virtual {v4}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v4

    if-eqz v4, :cond_554

    .line 289
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Cells/ContextLinkCell;->titleLayout:Landroid/text/StaticLayout;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/Cells/ContextLinkCell;->titleLayout:Landroid/text/StaticLayout;

    invoke-virtual {v6}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v4, v6}, Landroid/text/StaticLayout;->getLineBottom(I)I

    move-result v4

    add-int v39, v39, v4

    .line 291
    :cond_554
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Cells/ContextLinkCell;->descriptionLayout:Landroid/text/StaticLayout;

    if-eqz v4, :cond_578

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Cells/ContextLinkCell;->descriptionLayout:Landroid/text/StaticLayout;

    invoke-virtual {v4}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v4

    if-eqz v4, :cond_578

    .line 292
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Cells/ContextLinkCell;->descriptionLayout:Landroid/text/StaticLayout;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/Cells/ContextLinkCell;->descriptionLayout:Landroid/text/StaticLayout;

    invoke-virtual {v6}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v4, v6}, Landroid/text/StaticLayout;->getLineBottom(I)I

    move-result v4

    add-int v39, v39, v4

    .line 294
    :cond_578
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Cells/ContextLinkCell;->linkLayout:Landroid/text/StaticLayout;

    if-eqz v4, :cond_59c

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Cells/ContextLinkCell;->linkLayout:Landroid/text/StaticLayout;

    invoke-virtual {v4}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v4

    if-lez v4, :cond_59c

    .line 295
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Cells/ContextLinkCell;->linkLayout:Landroid/text/StaticLayout;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/Cells/ContextLinkCell;->linkLayout:Landroid/text/StaticLayout;

    invoke-virtual {v6}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v4, v6}, Landroid/text/StaticLayout;->getLineBottom(I)I

    move-result v4

    add-int v39, v39, v4

    .line 297
    :cond_59c
    const/high16 v4, 0x42500000    # 52.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    move/from16 v0, v39

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v39

    .line 298
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    const/high16 v4, 0x42880000    # 68.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    const/high16 v8, 0x41800000    # 16.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    add-int v8, v8, v39

    invoke-static {v4, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/telegram/ui/Cells/ContextLinkCell;->needDivider:Z

    if-eqz v4, :cond_63f

    const/4 v4, 0x1

    :goto_5c5
    add-int/2addr v4, v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v4}, Lorg/telegram/ui/Cells/ContextLinkCell;->setMeasuredDimension(II)V

    .line 300
    const/high16 v4, 0x42500000    # 52.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v44

    .line 301
    .local v44, "maxPhotoWidth":I
    sget-boolean v4, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v4, :cond_641

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    const/high16 v6, 0x41000000    # 8.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    sub-int/2addr v4, v6

    sub-int v50, v4, v44

    .line 302
    .restart local v50    # "x":I
    :goto_5e2
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Cells/ContextLinkCell;->letterDrawable:Lorg/telegram/ui/Components/LetterDrawable;

    const/high16 v6, 0x41000000    # 8.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    add-int v8, v50, v44

    const/high16 v9, 0x42700000    # 60.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    move/from16 v0, v50

    invoke-virtual {v4, v0, v6, v8, v9}, Lorg/telegram/ui/Components/LetterDrawable;->setBounds(IIII)V

    .line 303
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Cells/ContextLinkCell;->linkImageView:Lorg/telegram/messenger/ImageReceiver;

    const/high16 v6, 0x41000000    # 8.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    move/from16 v0, v50

    move/from16 v1, v44

    move/from16 v2, v44

    invoke-virtual {v4, v0, v6, v1, v2}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(IIII)V

    .line 304
    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/ui/Cells/ContextLinkCell;->documentAttachType:I

    const/4 v6, 0x3

    if-eq v4, v6, :cond_61a

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/ui/Cells/ContextLinkCell;->documentAttachType:I

    const/4 v6, 0x5

    if-ne v4, v6, :cond_3b

    .line 305
    :cond_61a
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Cells/ContextLinkCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress;

    const/high16 v6, 0x40800000    # 4.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    add-int v6, v6, v50

    const/high16 v8, 0x41400000    # 12.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    const/high16 v9, 0x42400000    # 48.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    add-int v9, v9, v50

    const/high16 v10, 0x42600000    # 56.0f

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    invoke-virtual {v4, v6, v8, v9, v10}, Lorg/telegram/ui/Components/RadialProgress;->setProgressRect(IIII)V

    goto/16 :goto_3b

    .line 298
    .end local v44    # "maxPhotoWidth":I
    .end local v50    # "x":I
    :cond_63f
    const/4 v4, 0x0

    goto :goto_5c5

    .line 301
    .restart local v44    # "maxPhotoWidth":I
    :cond_641
    const/high16 v4, 0x41000000    # 8.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v50

    goto :goto_5e2
.end method

.method public onProgressDownload(Ljava/lang/String;F)V
    .registers 7
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "progress"    # F

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 781
    iget-object v0, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress;

    invoke-virtual {v0, p2, v3}, Lorg/telegram/ui/Components/RadialProgress;->setProgress(FZ)V

    .line 782
    iget v0, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->documentAttachType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_11

    iget v0, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->documentAttachType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1a

    .line 783
    :cond_11
    iget v0, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->buttonState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_19

    .line 784
    invoke-virtual {p0, v2}, Lorg/telegram/ui/Cells/ContextLinkCell;->updateButtonState(Z)V

    .line 791
    :cond_19
    :goto_19
    return-void

    .line 787
    :cond_1a
    iget v0, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->buttonState:I

    if-eq v0, v3, :cond_19

    .line 788
    invoke-virtual {p0, v2}, Lorg/telegram/ui/Cells/ContextLinkCell;->updateButtonState(Z)V

    goto :goto_19
.end method

.method public onProgressUpload(Ljava/lang/String;FZ)V
    .registers 4
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "progress"    # F
    .param p3, "isEncrypted"    # Z

    .prologue
    .line 796
    return-void
.end method

.method public onSuccessDownload(Ljava/lang/String;)V
    .registers 5
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 775
    iget-object v0, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/RadialProgress;->setProgress(FZ)V

    .line 776
    invoke-virtual {p0, v2}, Lorg/telegram/ui/Cells/ContextLinkCell;->updateButtonState(Z)V

    .line 777
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 13
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x3

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 452
    iget-boolean v5, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->mediaWebpage:Z

    if-nez v5, :cond_10

    iget-object v5, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->delegate:Lorg/telegram/ui/Cells/ContextLinkCell$ContextLinkCellDelegate;

    if-eqz v5, :cond_10

    iget-object v5, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->inlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    if-nez v5, :cond_15

    .line 453
    :cond_10
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 514
    :cond_14
    :goto_14
    return v1

    .line 455
    :cond_15
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v3, v5

    .line 456
    .local v3, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v4, v5

    .line 458
    .local v4, "y":I
    const/4 v1, 0x0

    .line 459
    .local v1, "result":Z
    const/high16 v5, 0x42400000    # 48.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    .line 460
    .local v2, "side":I
    iget v5, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->documentAttachType:I

    if-eq v5, v9, :cond_2f

    iget v5, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->documentAttachType:I

    const/4 v6, 0x5

    if-ne v5, v6, :cond_90

    .line 461
    :cond_2f
    iget-object v5, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->letterDrawable:Lorg/telegram/ui/Components/LetterDrawable;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/LetterDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    .line 462
    .local v0, "area":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_57

    .line 463
    if-eqz v0, :cond_50

    .line 464
    iput-boolean v8, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->buttonPressed:Z

    .line 465
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/ContextLinkCell;->invalidate()V

    .line 466
    const/4 v1, 0x1

    .line 467
    iget-object v5, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress;

    invoke-direct {p0}, Lorg/telegram/ui/Cells/ContextLinkCell;->getDrawableForCurrentState()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Components/RadialProgress;->swapBackground(Landroid/graphics/drawable/Drawable;)Z

    .line 510
    .end local v0    # "area":Z
    :cond_50
    :goto_50
    if-nez v1, :cond_14

    .line 511
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_14

    .line 469
    .restart local v0    # "area":Z
    :cond_57
    iget-boolean v5, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->buttonPressed:Z

    if-eqz v5, :cond_50

    .line 470
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-ne v5, v8, :cond_76

    .line 471
    iput-boolean v7, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->buttonPressed:Z

    .line 472
    invoke-virtual {p0, v7}, Lorg/telegram/ui/Cells/ContextLinkCell;->playSoundEffect(I)V

    .line 473
    invoke-direct {p0}, Lorg/telegram/ui/Cells/ContextLinkCell;->didPressedButton()V

    .line 474
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/ContextLinkCell;->invalidate()V

    .line 484
    :cond_6c
    :goto_6c
    iget-object v5, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress;

    invoke-direct {p0}, Lorg/telegram/ui/Cells/ContextLinkCell;->getDrawableForCurrentState()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Components/RadialProgress;->swapBackground(Landroid/graphics/drawable/Drawable;)Z

    goto :goto_50

    .line 475
    :cond_76
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-ne v5, v9, :cond_82

    .line 476
    iput-boolean v7, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->buttonPressed:Z

    .line 477
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/ContextLinkCell;->invalidate()V

    goto :goto_6c

    .line 478
    :cond_82
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-ne v5, v10, :cond_6c

    .line 479
    if-nez v0, :cond_6c

    .line 480
    iput-boolean v7, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->buttonPressed:Z

    .line 481
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/ContextLinkCell;->invalidate()V

    goto :goto_6c

    .line 487
    .end local v0    # "area":Z
    :cond_90
    iget-object v5, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->inlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    if-eqz v5, :cond_50

    iget-object v5, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->inlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->content_url:Ljava/lang/String;

    if-eqz v5, :cond_50

    iget-object v5, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->inlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->content_url:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_50

    .line 488
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_ba

    .line 489
    iget-object v5, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->letterDrawable:Lorg/telegram/ui/Components/LetterDrawable;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/LetterDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v5

    if-eqz v5, :cond_50

    .line 490
    iput-boolean v8, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->buttonPressed:Z

    .line 491
    const/4 v1, 0x1

    goto :goto_50

    .line 494
    :cond_ba
    iget-boolean v5, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->buttonPressed:Z

    if-eqz v5, :cond_50

    .line 495
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-ne v5, v8, :cond_cf

    .line 496
    iput-boolean v7, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->buttonPressed:Z

    .line 497
    invoke-virtual {p0, v7}, Lorg/telegram/ui/Cells/ContextLinkCell;->playSoundEffect(I)V

    .line 498
    iget-object v5, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->delegate:Lorg/telegram/ui/Cells/ContextLinkCell$ContextLinkCellDelegate;

    invoke-interface {v5, p0}, Lorg/telegram/ui/Cells/ContextLinkCell$ContextLinkCellDelegate;->didPressedImage(Lorg/telegram/ui/Cells/ContextLinkCell;)V

    goto :goto_50

    .line 499
    :cond_cf
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-ne v5, v9, :cond_d9

    .line 500
    iput-boolean v7, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->buttonPressed:Z

    goto/16 :goto_50

    .line 501
    :cond_d9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-ne v5, v10, :cond_50

    .line 502
    iget-object v5, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->letterDrawable:Lorg/telegram/ui/Components/LetterDrawable;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/LetterDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v5

    if-nez v5, :cond_50

    .line 503
    iput-boolean v7, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->buttonPressed:Z

    goto/16 :goto_50
.end method

.method public setDelegate(Lorg/telegram/ui/Cells/ContextLinkCell$ContextLinkCellDelegate;)V
    .registers 2
    .param p1, "contextLinkCellDelegate"    # Lorg/telegram/ui/Cells/ContextLinkCell$ContextLinkCellDelegate;

    .prologue
    .line 761
    iput-object p1, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->delegate:Lorg/telegram/ui/Cells/ContextLinkCell$ContextLinkCellDelegate;

    .line 762
    return-void
.end method

.method public setGif(Lorg/telegram/tgnet/TLRPC$Document;Z)V
    .registers 5
    .param p1, "document"    # Lorg/telegram/tgnet/TLRPC$Document;
    .param p2, "divider"    # Z

    .prologue
    const/4 v1, 0x0

    .line 395
    iput-boolean p2, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->needDivider:Z

    .line 396
    iput-boolean v1, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->needShadow:Z

    .line 397
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->inlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    .line 398
    iput-object p1, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->documentAttach:Lorg/telegram/tgnet/TLRPC$Document;

    .line 399
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->mediaWebpage:Z

    .line 400
    invoke-direct {p0}, Lorg/telegram/ui/Cells/ContextLinkCell;->setAttachType()V

    .line 401
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/ContextLinkCell;->requestLayout()V

    .line 402
    invoke-virtual {p0, v1}, Lorg/telegram/ui/Cells/ContextLinkCell;->updateButtonState(Z)V

    .line 403
    return-void
.end method

.method public setLink(Lorg/telegram/tgnet/TLRPC$BotInlineResult;ZZZ)V
    .registers 6
    .param p1, "contextResult"    # Lorg/telegram/tgnet/TLRPC$BotInlineResult;
    .param p2, "media"    # Z
    .param p3, "divider"    # Z
    .param p4, "shadow"    # Z

    .prologue
    .line 380
    iput-boolean p3, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->needDivider:Z

    .line 381
    iput-boolean p4, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->needShadow:Z

    .line 382
    iput-object p1, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->inlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    .line 383
    iget-object v0, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->inlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    if-eqz v0, :cond_23

    iget-object v0, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->inlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v0, :cond_23

    .line 384
    iget-object v0, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->inlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iput-object v0, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->documentAttach:Lorg/telegram/tgnet/TLRPC$Document;

    .line 388
    :goto_16
    iput-boolean p2, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->mediaWebpage:Z

    .line 389
    invoke-direct {p0}, Lorg/telegram/ui/Cells/ContextLinkCell;->setAttachType()V

    .line 390
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/ContextLinkCell;->requestLayout()V

    .line 391
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Cells/ContextLinkCell;->updateButtonState(Z)V

    .line 392
    return-void

    .line 386
    :cond_23
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->documentAttach:Lorg/telegram/tgnet/TLRPC$Document;

    goto :goto_16
.end method

.method public setScaled(Z)V
    .registers 4
    .param p1, "value"    # Z

    .prologue
    .line 422
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->scaled:Z

    .line 423
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->lastUpdateTime:J

    .line 424
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/ContextLinkCell;->invalidate()V

    .line 425
    return-void
.end method

.method public showingBitmap()Z
    .registers 2

    .prologue
    .line 410
    iget-object v0, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->linkImageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public updateButtonState(Z)V
    .registers 14
    .param p1, "animated"    # Z

    .prologue
    .line 674
    const/4 v2, 0x0

    .line 675
    .local v2, "fileName":Ljava/lang/String;
    const/4 v0, 0x0

    .line 676
    .local v0, "cacheFile":Ljava/io/File;
    iget v7, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->documentAttachType:I

    const/4 v8, 0x5

    if-eq v7, v8, :cond_c

    iget v7, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->documentAttachType:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_6f

    .line 677
    :cond_c
    iget-object v7, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->documentAttach:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v7, :cond_2b

    .line 678
    iget-object v7, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->documentAttach:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v7}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v2

    .line 679
    iget-object v7, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->documentAttach:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v7}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;)Ljava/io/File;

    move-result-object v0

    .line 705
    :cond_1c
    :goto_1c
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_141

    .line 706
    iget-object v7, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v10}, Lorg/telegram/ui/Components/RadialProgress;->setBackground(Landroid/graphics/drawable/Drawable;ZZ)V

    .line 758
    :goto_2a
    return-void

    .line 681
    :cond_2b
    iget-object v7, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->inlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v2, v7, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->content_url:Ljava/lang/String;

    .line 682
    new-instance v0, Ljava/io/File;

    .end local v0    # "cacheFile":Ljava/io/File;
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v7

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v8

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->inlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->content_url:Ljava/lang/String;

    invoke-static {v9}, Lorg/telegram/messenger/Utilities;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "."

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v7, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->inlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v10, v7, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->content_url:Ljava/lang/String;

    iget v7, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->documentAttachType:I

    const/4 v11, 0x5

    if-ne v7, v11, :cond_6c

    const-string v7, "mp3"

    :goto_5c
    invoke-static {v10, v7}, Lorg/telegram/messenger/ImageLoader;->getHttpUrlExtension(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v8, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .restart local v0    # "cacheFile":Ljava/io/File;
    goto :goto_1c

    .end local v0    # "cacheFile":Ljava/io/File;
    :cond_6c
    const-string v7, "ogg"

    goto :goto_5c

    .line 684
    .restart local v0    # "cacheFile":Ljava/io/File;
    :cond_6f
    iget-boolean v7, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->mediaWebpage:Z

    if-eqz v7, :cond_1c

    .line 685
    iget-object v7, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->inlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    if-eqz v7, :cond_12f

    .line 686
    iget-object v7, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->inlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->document:Lorg/telegram/tgnet/TLRPC$Document;

    instance-of v7, v7, Lorg/telegram/tgnet/TLRPC$TL_document;

    if-eqz v7, :cond_90

    .line 687
    iget-object v7, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->inlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v7}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v2

    .line 688
    iget-object v7, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->inlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v7}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;)Ljava/io/File;

    move-result-object v0

    goto :goto_1c

    .line 689
    :cond_90
    iget-object v7, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->inlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    instance-of v7, v7, Lorg/telegram/tgnet/TLRPC$TL_photo;

    if-eqz v7, :cond_b1

    .line 690
    iget-object v7, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->inlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I

    move-result v8

    const/4 v9, 0x1

    invoke-static {v7, v8, v9}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;IZ)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v1

    .line 691
    .local v1, "currentPhotoObject":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    invoke-static {v1}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v2

    .line 692
    invoke-static {v1}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;)Ljava/io/File;

    move-result-object v0

    .line 693
    goto/16 :goto_1c

    .end local v1    # "currentPhotoObject":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    :cond_b1
    iget-object v7, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->inlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->content_url:Ljava/lang/String;

    if-eqz v7, :cond_f0

    .line 694
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->inlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->content_url:Ljava/lang/String;

    invoke-static {v8}, Lorg/telegram/messenger/Utilities;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->inlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->content_url:Ljava/lang/String;

    const-string v9, "jpg"

    invoke-static {v8, v9}, Lorg/telegram/messenger/ImageLoader;->getHttpUrlExtension(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 695
    new-instance v0, Ljava/io/File;

    .end local v0    # "cacheFile":Ljava/io/File;
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v7

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v7

    invoke-direct {v0, v7, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .restart local v0    # "cacheFile":Ljava/io/File;
    goto/16 :goto_1c

    .line 696
    :cond_f0
    iget-object v7, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->inlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->thumb_url:Ljava/lang/String;

    if-eqz v7, :cond_1c

    .line 697
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->inlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->thumb_url:Ljava/lang/String;

    invoke-static {v8}, Lorg/telegram/messenger/Utilities;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->inlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->thumb_url:Ljava/lang/String;

    const-string v9, "jpg"

    invoke-static {v8, v9}, Lorg/telegram/messenger/ImageLoader;->getHttpUrlExtension(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 698
    new-instance v0, Ljava/io/File;

    .end local v0    # "cacheFile":Ljava/io/File;
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v7

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v7

    invoke-direct {v0, v7, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .restart local v0    # "cacheFile":Ljava/io/File;
    goto/16 :goto_1c

    .line 700
    :cond_12f
    iget-object v7, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->documentAttach:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v7, :cond_1c

    .line 701
    iget-object v7, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->documentAttach:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v7}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v2

    .line 702
    iget-object v7, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->documentAttach:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v7}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;)Ljava/io/File;

    move-result-object v0

    goto/16 :goto_1c

    .line 709
    :cond_141
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_154

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-nez v7, :cond_154

    .line 710
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 712
    :cond_154
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_1e6

    .line 713
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v7

    invoke-virtual {v7, v2, p0}, Lorg/telegram/messenger/MediaController;->addLoadingFileObserver(Ljava/lang/String;Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;)V

    .line 714
    iget v7, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->documentAttachType:I

    const/4 v8, 0x5

    if-eq v7, v8, :cond_16b

    iget v7, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->documentAttachType:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_1c2

    .line 716
    :cond_16b
    iget-object v7, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->documentAttach:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v7, :cond_191

    .line 717
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v7

    invoke-virtual {v7, v2}, Lorg/telegram/messenger/FileLoader;->isLoadingFile(Ljava/lang/String;)Z

    move-result v3

    .line 721
    .local v3, "isLoading":Z
    :goto_177
    if-nez v3, :cond_19a

    .line 722
    const/4 v7, 0x2

    iput v7, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->buttonState:I

    .line 723
    iget-object v7, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress;

    const/4 v8, 0x0

    invoke-virtual {v7, v8, p1}, Lorg/telegram/ui/Components/RadialProgress;->setProgress(FZ)V

    .line 724
    iget-object v7, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress;

    invoke-direct {p0}, Lorg/telegram/ui/Cells/ContextLinkCell;->getDrawableForCurrentState()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9, p1}, Lorg/telegram/ui/Components/RadialProgress;->setBackground(Landroid/graphics/drawable/Drawable;ZZ)V

    .line 742
    .end local v3    # "isLoading":Z
    :goto_18c
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/ContextLinkCell;->invalidate()V

    goto/16 :goto_2a

    .line 719
    :cond_191
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v7

    invoke-virtual {v7, v2}, Lorg/telegram/messenger/ImageLoader;->isLoadingHttpFile(Ljava/lang/String;)Z

    move-result v3

    .restart local v3    # "isLoading":Z
    goto :goto_177

    .line 726
    :cond_19a
    const/4 v7, 0x4

    iput v7, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->buttonState:I

    .line 727
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v7

    invoke-virtual {v7, v2}, Lorg/telegram/messenger/ImageLoader;->getFileProgress(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v5

    .line 728
    .local v5, "progress":Ljava/lang/Float;
    if-eqz v5, :cond_1bb

    .line 729
    iget-object v7, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v8

    invoke-virtual {v7, v8, p1}, Lorg/telegram/ui/Components/RadialProgress;->setProgress(FZ)V

    .line 733
    :goto_1b0
    iget-object v7, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress;

    invoke-direct {p0}, Lorg/telegram/ui/Cells/ContextLinkCell;->getDrawableForCurrentState()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9, p1}, Lorg/telegram/ui/Components/RadialProgress;->setBackground(Landroid/graphics/drawable/Drawable;ZZ)V

    goto :goto_18c

    .line 731
    :cond_1bb
    iget-object v7, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress;

    const/4 v8, 0x0

    invoke-virtual {v7, v8, p1}, Lorg/telegram/ui/Components/RadialProgress;->setProgress(FZ)V

    goto :goto_1b0

    .line 736
    .end local v3    # "isLoading":Z
    .end local v5    # "progress":Ljava/lang/Float;
    :cond_1c2
    const/4 v7, 0x1

    iput v7, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->buttonState:I

    .line 737
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v7

    invoke-virtual {v7, v2}, Lorg/telegram/messenger/ImageLoader;->getFileProgress(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v5

    .line 738
    .restart local v5    # "progress":Ljava/lang/Float;
    if-eqz v5, :cond_1e4

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v6

    .line 739
    .local v6, "setProgress":F
    :goto_1d3
    iget-object v7, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress;

    const/4 v8, 0x0

    invoke-virtual {v7, v6, v8}, Lorg/telegram/ui/Components/RadialProgress;->setProgress(FZ)V

    .line 740
    iget-object v7, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress;

    invoke-direct {p0}, Lorg/telegram/ui/Cells/ContextLinkCell;->getDrawableForCurrentState()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9, p1}, Lorg/telegram/ui/Components/RadialProgress;->setBackground(Landroid/graphics/drawable/Drawable;ZZ)V

    goto :goto_18c

    .line 738
    .end local v6    # "setProgress":F
    :cond_1e4
    const/4 v6, 0x0

    goto :goto_1d3

    .line 744
    .end local v5    # "progress":Ljava/lang/Float;
    :cond_1e6
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v7

    invoke-virtual {v7, p0}, Lorg/telegram/messenger/MediaController;->removeLoadingFileObserver(Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;)V

    .line 745
    iget v7, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->documentAttachType:I

    const/4 v8, 0x5

    if-eq v7, v8, :cond_1f7

    iget v7, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->documentAttachType:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_225

    .line 746
    :cond_1f7
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v7

    iget-object v8, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v7, v8}, Lorg/telegram/messenger/MediaController;->isPlayingAudio(Lorg/telegram/messenger/MessageObject;)Z

    move-result v4

    .line 747
    .local v4, "playing":Z
    if-eqz v4, :cond_20f

    if-eqz v4, :cond_221

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/messenger/MediaController;->isAudioPaused()Z

    move-result v7

    if-eqz v7, :cond_221

    .line 748
    :cond_20f
    const/4 v7, 0x0

    iput v7, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->buttonState:I

    .line 755
    .end local v4    # "playing":Z
    :goto_212
    iget-object v7, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress;

    invoke-direct {p0}, Lorg/telegram/ui/Cells/ContextLinkCell;->getDrawableForCurrentState()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9, p1}, Lorg/telegram/ui/Components/RadialProgress;->setBackground(Landroid/graphics/drawable/Drawable;ZZ)V

    .line 756
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/ContextLinkCell;->invalidate()V

    goto/16 :goto_2a

    .line 750
    .restart local v4    # "playing":Z
    :cond_221
    const/4 v7, 0x1

    iput v7, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->buttonState:I

    goto :goto_212

    .line 753
    .end local v4    # "playing":Z
    :cond_225
    const/4 v7, -0x1

    iput v7, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->buttonState:I

    goto :goto_212
.end method
