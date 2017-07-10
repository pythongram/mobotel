.class public Lorg/telegram/messenger/SendMessagesHelper;
.super Ljava/lang/Object;
.source "SendMessagesHelper.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;,
        Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;
    }
.end annotation


# static fields
.field private static volatile Instance:Lorg/telegram/messenger/SendMessagesHelper;


# instance fields
.field private currentChatInfo:Lorg/telegram/tgnet/TLRPC$ChatFull;

.field private delayedMessages:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;",
            ">;>;"
        }
    .end annotation
.end field

.field private locationProvider:Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;

.field private sendingMessages:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/telegram/tgnet/TLRPC$Message;",
            ">;"
        }
    .end annotation
.end field

.field private unsentMessages:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/telegram/messenger/MessageObject;",
            ">;"
        }
    .end annotation
.end field

.field private waitingForCallback:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/telegram/messenger/MessageObject;",
            ">;"
        }
    .end annotation
.end field

.field private waitingForLocation:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/telegram/messenger/MessageObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 216
    const/4 v0, 0x0

    sput-object v0, Lorg/telegram/messenger/SendMessagesHelper;->Instance:Lorg/telegram/messenger/SendMessagesHelper;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper;->currentChatInfo:Lorg/telegram/tgnet/TLRPC$ChatFull;

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper;->delayedMessages:Ljava/util/HashMap;

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper;->unsentMessages:Ljava/util/HashMap;

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper;->sendingMessages:Ljava/util/HashMap;

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper;->waitingForLocation:Ljava/util/HashMap;

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper;->waitingForCallback:Ljava/util/HashMap;

    .line 63
    new-instance v0, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;

    new-instance v1, Lorg/telegram/messenger/SendMessagesHelper$1;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/SendMessagesHelper$1;-><init>(Lorg/telegram/messenger/SendMessagesHelper;)V

    invoke-direct {v0, v1}, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;-><init>(Lorg/telegram/messenger/SendMessagesHelper$LocationProvider$LocationProviderDelegate;)V

    iput-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper;->locationProvider:Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;

    .line 232
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->FileDidUpload:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 233
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->FileDidFailUpload:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 234
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->FilePreparingStarted:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 235
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->FileNewChunkAvailable:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 236
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->FilePreparingFailed:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 237
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->httpFileDidFailedLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 238
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->httpFileDidLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 239
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->FileDidLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 240
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->FileDidFailedLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 241
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/messenger/SendMessagesHelper;Landroid/location/Location;)V
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/SendMessagesHelper;
    .param p1, "x1"    # Landroid/location/Location;

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lorg/telegram/messenger/SendMessagesHelper;->sendLocation(Landroid/location/Location;)V

    return-void
.end method

.method static synthetic access$100(Lorg/telegram/messenger/SendMessagesHelper;)Ljava/util/HashMap;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/SendMessagesHelper;

    .prologue
    .line 54
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper;->waitingForLocation:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1000(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Ljava/lang/String;)Z
    .registers 10
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Landroid/net/Uri;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # J
    .param p6, "x5"    # Lorg/telegram/messenger/MessageObject;
    .param p7, "x6"    # Ljava/lang/String;

    .prologue
    .line 54
    invoke-static/range {p0 .. p7}, Lorg/telegram/messenger/SendMessagesHelper;->prepareSendingDocumentInternal(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 54
    invoke-static {p0}, Lorg/telegram/messenger/SendMessagesHelper;->getTrimmedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;Lorg/telegram/messenger/VideoEditedInfo;)V
    .registers 3
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;
    .param p2, "x2"    # Lorg/telegram/messenger/VideoEditedInfo;

    .prologue
    .line 54
    invoke-static {p0, p1, p2}, Lorg/telegram/messenger/SendMessagesHelper;->fillVideoAttribute(Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;Lorg/telegram/messenger/VideoEditedInfo;)V

    return-void
.end method

.method static synthetic access$700(Lorg/telegram/messenger/SendMessagesHelper;Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;)V
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/SendMessagesHelper;
    .param p1, "x1"    # Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lorg/telegram/messenger/SendMessagesHelper;->performSendDelayedMessage(Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;)V

    return-void
.end method

.method static synthetic access$800(Lorg/telegram/messenger/SendMessagesHelper;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$Message;Ljava/lang/String;Z)V
    .registers 5
    .param p0, "x0"    # Lorg/telegram/messenger/SendMessagesHelper;
    .param p1, "x1"    # Lorg/telegram/messenger/MessageObject;
    .param p2, "x2"    # Lorg/telegram/tgnet/TLRPC$Message;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Z

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/SendMessagesHelper;->updateMediaPaths(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$Message;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$900(Lorg/telegram/messenger/SendMessagesHelper;)Ljava/util/HashMap;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/SendMessagesHelper;

    .prologue
    .line 54
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper;->waitingForCallback:Ljava/util/HashMap;

    return-object v0
.end method

.method private static fillVideoAttribute(Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;Lorg/telegram/messenger/VideoEditedInfo;)V
    .registers 19
    .param p0, "videoPath"    # Ljava/lang/String;
    .param p1, "attributeVideo"    # Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;
    .param p2, "videoEditedInfo"    # Lorg/telegram/messenger/VideoEditedInfo;

    .prologue
    .line 4554
    const/4 v5, 0x0

    .line 4556
    .local v5, "infoObtained":Z
    const/4 v6, 0x0

    .line 4558
    .local v6, "mediaMetadataRetriever":Landroid/media/MediaMetadataRetriever;
    :try_start_2
    new-instance v7, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v7}, Landroid/media/MediaMetadataRetriever;-><init>()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_7} :catch_e7
    .catchall {:try_start_2 .. :try_end_7} :catchall_d3

    .line 4559
    .end local v6    # "mediaMetadataRetriever":Landroid/media/MediaMetadataRetriever;
    .local v7, "mediaMetadataRetriever":Landroid/media/MediaMetadataRetriever;
    :try_start_7
    move-object/from16 v0, p0

    invoke-virtual {v7, v0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 4560
    const/16 v13, 0x12

    invoke-virtual {v7, v13}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v12

    .line 4561
    .local v12, "width":Ljava/lang/String;
    if-eqz v12, :cond_1c

    .line 4562
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p1

    iput v13, v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;->w:I

    .line 4564
    :cond_1c
    const/16 v13, 0x13

    invoke-virtual {v7, v13}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v4

    .line 4565
    .local v4, "height":Ljava/lang/String;
    if-eqz v4, :cond_2c

    .line 4566
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p1

    iput v13, v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;->h:I

    .line 4568
    :cond_2c
    const/16 v13, 0x9

    invoke-virtual {v7, v13}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v2

    .line 4569
    .local v2, "duration":Ljava/lang/String;
    if-eqz v2, :cond_46

    .line 4570
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    long-to-float v13, v14

    const/high16 v14, 0x447a0000    # 1000.0f

    div-float/2addr v13, v14

    float-to-double v14, v13

    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v14

    double-to-int v13, v14

    move-object/from16 v0, p1

    iput v13, v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;->duration:I

    .line 4572
    :cond_46
    sget v13, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v14, 0x11

    if-lt v13, v14, :cond_62

    .line 4573
    const/16 v13, 0x18

    invoke-virtual {v7, v13}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v9

    .line 4574
    .local v9, "rotation":Ljava/lang/String;
    if-eqz v9, :cond_62

    .line 4575
    invoke-static {v9}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 4576
    .local v11, "val":I
    if-eqz p2, :cond_a4

    .line 4577
    move-object/from16 v0, p2

    iput v11, v0, Lorg/telegram/messenger/VideoEditedInfo;->rotationValue:I
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_62} :catch_bd
    .catchall {:try_start_7 .. :try_end_62} :catchall_e4

    .line 4585
    .end local v9    # "rotation":Ljava/lang/String;
    .end local v11    # "val":I
    :cond_62
    :goto_62
    const/4 v5, 0x1

    .line 4590
    if-eqz v7, :cond_68

    .line 4591
    :try_start_65
    invoke-virtual {v7}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_68} :catch_cd

    :cond_68
    move-object v6, v7

    .line 4597
    .end local v2    # "duration":Ljava/lang/String;
    .end local v4    # "height":Ljava/lang/String;
    .end local v7    # "mediaMetadataRetriever":Landroid/media/MediaMetadataRetriever;
    .end local v12    # "width":Ljava/lang/String;
    .restart local v6    # "mediaMetadataRetriever":Landroid/media/MediaMetadataRetriever;
    :cond_69
    :goto_69
    if-nez v5, :cond_a3

    .line 4599
    :try_start_6b
    sget-object v13, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    new-instance v14, Ljava/io/File;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v14}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaPlayer;

    move-result-object v8

    .line 4600
    .local v8, "mp":Landroid/media/MediaPlayer;
    if-eqz v8, :cond_a3

    .line 4601
    invoke-virtual {v8}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v13

    int-to-float v13, v13

    const/high16 v14, 0x447a0000    # 1000.0f

    div-float/2addr v13, v14

    float-to-double v14, v13

    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v14

    double-to-int v13, v14

    move-object/from16 v0, p1

    iput v13, v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;->duration:I

    .line 4602
    invoke-virtual {v8}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v13

    move-object/from16 v0, p1

    iput v13, v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;->w:I

    .line 4603
    invoke-virtual {v8}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v13

    move-object/from16 v0, p1

    iput v13, v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;->h:I

    .line 4604
    invoke-virtual {v8}, Landroid/media/MediaPlayer;->release()V
    :try_end_a3
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_a3} :catch_df

    .line 4610
    .end local v8    # "mp":Landroid/media/MediaPlayer;
    :cond_a3
    :goto_a3
    return-void

    .line 4578
    .end local v6    # "mediaMetadataRetriever":Landroid/media/MediaMetadataRetriever;
    .restart local v2    # "duration":Ljava/lang/String;
    .restart local v4    # "height":Ljava/lang/String;
    .restart local v7    # "mediaMetadataRetriever":Landroid/media/MediaMetadataRetriever;
    .restart local v9    # "rotation":Ljava/lang/String;
    .restart local v11    # "val":I
    .restart local v12    # "width":Ljava/lang/String;
    :cond_a4
    const/16 v13, 0x5a

    if-eq v11, v13, :cond_ac

    const/16 v13, 0x10e

    if-ne v11, v13, :cond_62

    .line 4579
    :cond_ac
    :try_start_ac
    move-object/from16 v0, p1

    iget v10, v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;->w:I

    .line 4580
    .local v10, "temp":I
    move-object/from16 v0, p1

    iget v13, v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;->h:I

    move-object/from16 v0, p1

    iput v13, v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;->w:I

    .line 4581
    move-object/from16 v0, p1

    iput v10, v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;->h:I
    :try_end_bc
    .catch Ljava/lang/Exception; {:try_start_ac .. :try_end_bc} :catch_bd
    .catchall {:try_start_ac .. :try_end_bc} :catchall_e4

    goto :goto_62

    .line 4586
    .end local v2    # "duration":Ljava/lang/String;
    .end local v4    # "height":Ljava/lang/String;
    .end local v9    # "rotation":Ljava/lang/String;
    .end local v10    # "temp":I
    .end local v11    # "val":I
    .end local v12    # "width":Ljava/lang/String;
    :catch_bd
    move-exception v3

    move-object v6, v7

    .line 4587
    .end local v7    # "mediaMetadataRetriever":Landroid/media/MediaMetadataRetriever;
    .local v3, "e":Ljava/lang/Exception;
    .restart local v6    # "mediaMetadataRetriever":Landroid/media/MediaMetadataRetriever;
    :goto_bf
    :try_start_bf
    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_c2
    .catchall {:try_start_bf .. :try_end_c2} :catchall_d3

    .line 4590
    if-eqz v6, :cond_69

    .line 4591
    :try_start_c4
    invoke-virtual {v6}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_c7
    .catch Ljava/lang/Exception; {:try_start_c4 .. :try_end_c7} :catch_c8

    goto :goto_69

    .line 4593
    :catch_c8
    move-exception v3

    .line 4594
    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_69

    .line 4593
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v6    # "mediaMetadataRetriever":Landroid/media/MediaMetadataRetriever;
    .restart local v2    # "duration":Ljava/lang/String;
    .restart local v4    # "height":Ljava/lang/String;
    .restart local v7    # "mediaMetadataRetriever":Landroid/media/MediaMetadataRetriever;
    .restart local v12    # "width":Ljava/lang/String;
    :catch_cd
    move-exception v3

    .line 4594
    .restart local v3    # "e":Ljava/lang/Exception;
    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    move-object v6, v7

    .line 4596
    .end local v7    # "mediaMetadataRetriever":Landroid/media/MediaMetadataRetriever;
    .restart local v6    # "mediaMetadataRetriever":Landroid/media/MediaMetadataRetriever;
    goto :goto_69

    .line 4589
    .end local v2    # "duration":Ljava/lang/String;
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v4    # "height":Ljava/lang/String;
    .end local v12    # "width":Ljava/lang/String;
    :catchall_d3
    move-exception v13

    .line 4590
    :goto_d4
    if-eqz v6, :cond_d9

    .line 4591
    :try_start_d6
    invoke-virtual {v6}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_d9
    .catch Ljava/lang/Exception; {:try_start_d6 .. :try_end_d9} :catch_da

    .line 4595
    :cond_d9
    :goto_d9
    throw v13

    .line 4593
    :catch_da
    move-exception v3

    .line 4594
    .restart local v3    # "e":Ljava/lang/Exception;
    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_d9

    .line 4606
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_df
    move-exception v3

    .line 4607
    .restart local v3    # "e":Ljava/lang/Exception;
    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_a3

    .line 4589
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v6    # "mediaMetadataRetriever":Landroid/media/MediaMetadataRetriever;
    .restart local v7    # "mediaMetadataRetriever":Landroid/media/MediaMetadataRetriever;
    :catchall_e4
    move-exception v13

    move-object v6, v7

    .end local v7    # "mediaMetadataRetriever":Landroid/media/MediaMetadataRetriever;
    .restart local v6    # "mediaMetadataRetriever":Landroid/media/MediaMetadataRetriever;
    goto :goto_d4

    .line 4586
    :catch_e7
    move-exception v3

    goto :goto_bf
.end method

.method public static getInstance()Lorg/telegram/messenger/SendMessagesHelper;
    .registers 4

    .prologue
    .line 219
    sget-object v0, Lorg/telegram/messenger/SendMessagesHelper;->Instance:Lorg/telegram/messenger/SendMessagesHelper;

    .line 220
    .local v0, "localInstance":Lorg/telegram/messenger/SendMessagesHelper;
    if-nez v0, :cond_14

    .line 221
    const-class v3, Lorg/telegram/messenger/SendMessagesHelper;

    monitor-enter v3

    .line 222
    :try_start_7
    sget-object v0, Lorg/telegram/messenger/SendMessagesHelper;->Instance:Lorg/telegram/messenger/SendMessagesHelper;

    .line 223
    if-nez v0, :cond_13

    .line 224
    new-instance v1, Lorg/telegram/messenger/SendMessagesHelper;

    invoke-direct {v1}, Lorg/telegram/messenger/SendMessagesHelper;-><init>()V
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_15

    .end local v0    # "localInstance":Lorg/telegram/messenger/SendMessagesHelper;
    .local v1, "localInstance":Lorg/telegram/messenger/SendMessagesHelper;
    :try_start_10
    sput-object v1, Lorg/telegram/messenger/SendMessagesHelper;->Instance:Lorg/telegram/messenger/SendMessagesHelper;
    :try_end_12
    .catchall {:try_start_10 .. :try_end_12} :catchall_18

    move-object v0, v1

    .line 226
    .end local v1    # "localInstance":Lorg/telegram/messenger/SendMessagesHelper;
    .restart local v0    # "localInstance":Lorg/telegram/messenger/SendMessagesHelper;
    :cond_13
    :try_start_13
    monitor-exit v3

    .line 228
    :cond_14
    return-object v0

    .line 226
    :catchall_15
    move-exception v2

    :goto_16
    monitor-exit v3
    :try_end_17
    .catchall {:try_start_13 .. :try_end_17} :catchall_15

    throw v2

    .end local v0    # "localInstance":Lorg/telegram/messenger/SendMessagesHelper;
    .restart local v1    # "localInstance":Lorg/telegram/messenger/SendMessagesHelper;
    :catchall_18
    move-exception v2

    move-object v0, v1

    .end local v1    # "localInstance":Lorg/telegram/messenger/SendMessagesHelper;
    .restart local v0    # "localInstance":Lorg/telegram/messenger/SendMessagesHelper;
    goto :goto_16
.end method

.method private static getTrimmedString(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "src"    # Ljava/lang/String;

    .prologue
    .line 4378
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 4379
    .local v0, "result":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_b

    .line 4388
    .end local v0    # "result":Ljava/lang/String;
    :goto_a
    return-object v0

    .line 4382
    .restart local v0    # "result":Ljava/lang/String;
    :cond_b
    :goto_b
    const-string v1, "\n"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 4383
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_b

    .line 4385
    :cond_19
    :goto_19
    const-string v1, "\n"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 4386
    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_19

    :cond_2d
    move-object v0, p0

    .line 4388
    goto :goto_a
.end method

.method private performSendDelayedMessage(Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;)V
    .registers 16
    .param p1, "message"    # Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;

    .prologue
    const/high16 v5, 0x2000000

    const/high16 v6, 0x1000000

    const/4 v4, 0x4

    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 3140
    iget v0, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->type:I

    if-nez v0, :cond_8d

    .line 3141
    iget-object v0, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->httpLocation:Ljava/lang/String;

    if-eqz v0, :cond_20

    .line 3142
    iget-object v0, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->httpLocation:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lorg/telegram/messenger/SendMessagesHelper;->putToDelayedMessages(Ljava/lang/String;Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;)V

    .line 3143
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v0

    iget-object v2, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->httpLocation:Ljava/lang/String;

    const-string v3, "file"

    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/ImageLoader;->loadHttpFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 3260
    :cond_1f
    :goto_1f
    return-void

    .line 3145
    :cond_20
    iget-object v0, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendRequest:Lorg/telegram/tgnet/TLObject;

    if-eqz v0, :cond_39

    .line 3146
    iget-object v0, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3147
    .local v1, "location":Ljava/lang/String;
    invoke-direct {p0, v1, p1}, Lorg/telegram/messenger/SendMessagesHelper;->putToDelayedMessages(Ljava/lang/String;Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;)V

    .line 3148
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    invoke-virtual {v0, v1, v2, v8, v6}, Lorg/telegram/messenger/FileLoader;->uploadFile(Ljava/lang/String;ZZI)V

    goto :goto_1f

    .line 3150
    .end local v1    # "location":Ljava/lang/String;
    :cond_39
    iget-object v0, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3151
    .restart local v1    # "location":Ljava/lang/String;
    iget-object v0, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendEncryptedRequest:Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;

    if-eqz v0, :cond_82

    iget-object v0, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$FileLocation;->dc_id:I

    if-eqz v0, :cond_82

    .line 3152
    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3153
    .local v12, "file":Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_67

    .line 3154
    iget-object v0, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    invoke-static {v0, v8}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3155
    new-instance v12, Ljava/io/File;

    .end local v12    # "file":Ljava/io/File;
    invoke-direct {v12, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3157
    .restart local v12    # "file":Ljava/io/File;
    :cond_67
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_82

    .line 3158
    iget-object v0, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/telegram/messenger/SendMessagesHelper;->putToDelayedMessages(Ljava/lang/String;Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;)V

    .line 3159
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    iget-object v3, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    const-string v4, "jpg"

    invoke-virtual {v0, v3, v4, v2, v2}, Lorg/telegram/messenger/FileLoader;->loadFile(Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;IZ)V

    goto :goto_1f

    .line 3163
    .end local v12    # "file":Ljava/io/File;
    :cond_82
    invoke-direct {p0, v1, p1}, Lorg/telegram/messenger/SendMessagesHelper;->putToDelayedMessages(Ljava/lang/String;Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;)V

    .line 3164
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    invoke-virtual {v0, v1, v8, v8, v6}, Lorg/telegram/messenger/FileLoader;->uploadFile(Ljava/lang/String;ZZI)V

    goto :goto_1f

    .line 3167
    .end local v1    # "location":Ljava/lang/String;
    :cond_8d
    iget v0, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->type:I

    if-ne v0, v8, :cond_1ff

    .line 3168
    iget-object v0, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    if-eqz v0, :cond_d4

    .line 3169
    iget-object v0, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    .line 3170
    .restart local v1    # "location":Ljava/lang/String;
    if-nez v1, :cond_c6

    .line 3171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v2

    invoke-virtual {v2, v4}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->documentLocation:Lorg/telegram/tgnet/TLRPC$TL_document;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$TL_document;->id:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".mp4"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3173
    :cond_c6
    invoke-direct {p0, v1, p1}, Lorg/telegram/messenger/SendMessagesHelper;->putToDelayedMessages(Ljava/lang/String;Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;)V

    .line 3174
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    iget-object v2, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/MediaController;->scheduleVideoConvert(Lorg/telegram/messenger/MessageObject;)V

    goto/16 :goto_1f

    .line 3176
    .end local v1    # "location":Ljava/lang/String;
    :cond_d4
    iget-object v0, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendRequest:Lorg/telegram/tgnet/TLObject;

    if-eqz v0, :cond_183

    .line 3178
    iget-object v0, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendRequest:Lorg/telegram/tgnet/TLObject;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;

    if-eqz v0, :cond_130

    .line 3179
    iget-object v0, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendRequest:Lorg/telegram/tgnet/TLObject;

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;

    iget-object v13, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->media:Lorg/telegram/tgnet/TLRPC$InputMedia;

    .line 3183
    .local v13, "media":Lorg/telegram/tgnet/TLRPC$InputMedia;
    :goto_e4
    iget-object v0, v13, Lorg/telegram/tgnet/TLRPC$InputMedia;->file:Lorg/telegram/tgnet/TLRPC$InputFile;

    if-nez v0, :cond_140

    .line 3184
    iget-object v0, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    .line 3185
    .restart local v1    # "location":Ljava/lang/String;
    if-nez v1, :cond_119

    .line 3186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v3

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->documentLocation:Lorg/telegram/tgnet/TLRPC$TL_document;

    iget-wide v6, v3, Lorg/telegram/tgnet/TLRPC$TL_document;->id:J

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ".mp4"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3188
    :cond_119
    invoke-direct {p0, v1, p1}, Lorg/telegram/messenger/SendMessagesHelper;->putToDelayedMessages(Ljava/lang/String;Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;)V

    .line 3189
    iget-object v0, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    if-eqz v0, :cond_137

    .line 3190
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    iget-object v3, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->documentLocation:Lorg/telegram/tgnet/TLRPC$TL_document;

    iget v4, v3, Lorg/telegram/tgnet/TLRPC$TL_document;->size:I

    move v3, v2

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/messenger/FileLoader;->uploadFile(Ljava/lang/String;ZZII)V

    goto/16 :goto_1f

    .line 3181
    .end local v1    # "location":Ljava/lang/String;
    .end local v13    # "media":Lorg/telegram/tgnet/TLRPC$InputMedia;
    :cond_130
    iget-object v0, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendRequest:Lorg/telegram/tgnet/TLObject;

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendBroadcast;

    iget-object v13, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendBroadcast;->media:Lorg/telegram/tgnet/TLRPC$InputMedia;

    .restart local v13    # "media":Lorg/telegram/tgnet/TLRPC$InputMedia;
    goto :goto_e4

    .line 3192
    .restart local v1    # "location":Ljava/lang/String;
    :cond_137
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    invoke-virtual {v0, v1, v2, v2, v5}, Lorg/telegram/messenger/FileLoader;->uploadFile(Ljava/lang/String;ZZI)V

    goto/16 :goto_1f

    .line 3195
    .end local v1    # "location":Ljava/lang/String;
    :cond_140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v3

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-wide v4, v3, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "_"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ".jpg"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3196
    .restart local v1    # "location":Ljava/lang/String;
    invoke-direct {p0, v1, p1}, Lorg/telegram/messenger/SendMessagesHelper;->putToDelayedMessages(Ljava/lang/String;Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;)V

    .line 3197
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    invoke-virtual {v0, v1, v2, v8, v6}, Lorg/telegram/messenger/FileLoader;->uploadFile(Ljava/lang/String;ZZI)V

    goto/16 :goto_1f

    .line 3200
    .end local v1    # "location":Ljava/lang/String;
    .end local v13    # "media":Lorg/telegram/tgnet/TLRPC$InputMedia;
    :cond_183
    iget-object v0, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    .line 3201
    .restart local v1    # "location":Ljava/lang/String;
    if-nez v1, :cond_1b4

    .line 3202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v3

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->documentLocation:Lorg/telegram/tgnet/TLRPC$TL_document;

    iget-wide v6, v3, Lorg/telegram/tgnet/TLRPC$TL_document;->id:J

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ".mp4"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3204
    :cond_1b4
    iget-object v0, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendEncryptedRequest:Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;

    if-eqz v0, :cond_1dd

    iget-object v0, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->documentLocation:Lorg/telegram/tgnet/TLRPC$TL_document;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->dc_id:I

    if-eqz v0, :cond_1dd

    .line 3205
    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3206
    .restart local v12    # "file":Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1dd

    .line 3207
    iget-object v0, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->documentLocation:Lorg/telegram/tgnet/TLRPC$TL_document;

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/telegram/messenger/SendMessagesHelper;->putToDelayedMessages(Ljava/lang/String;Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;)V

    .line 3208
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    iget-object v3, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->documentLocation:Lorg/telegram/tgnet/TLRPC$TL_document;

    invoke-virtual {v0, v3, v8, v2}, Lorg/telegram/messenger/FileLoader;->loadFile(Lorg/telegram/tgnet/TLRPC$Document;ZZ)V

    goto/16 :goto_1f

    .line 3212
    .end local v12    # "file":Ljava/io/File;
    :cond_1dd
    invoke-direct {p0, v1, p1}, Lorg/telegram/messenger/SendMessagesHelper;->putToDelayedMessages(Ljava/lang/String;Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;)V

    .line 3213
    iget-object v0, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    if-eqz v0, :cond_1f6

    .line 3214
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v6

    iget-object v0, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->documentLocation:Lorg/telegram/tgnet/TLRPC$TL_document;

    iget v10, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->size:I

    move-object v7, v1

    move v9, v2

    move v11, v5

    invoke-virtual/range {v6 .. v11}, Lorg/telegram/messenger/FileLoader;->uploadFile(Ljava/lang/String;ZZII)V

    goto/16 :goto_1f

    .line 3216
    :cond_1f6
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    invoke-virtual {v0, v1, v8, v2, v5}, Lorg/telegram/messenger/FileLoader;->uploadFile(Ljava/lang/String;ZZI)V

    goto/16 :goto_1f

    .line 3220
    .end local v1    # "location":Ljava/lang/String;
    :cond_1ff
    iget v0, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->type:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_2d7

    .line 3221
    iget-object v0, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->httpLocation:Ljava/lang/String;

    if-eqz v0, :cond_21a

    .line 3222
    iget-object v0, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->httpLocation:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lorg/telegram/messenger/SendMessagesHelper;->putToDelayedMessages(Ljava/lang/String;Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;)V

    .line 3223
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v0

    iget-object v2, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->httpLocation:Ljava/lang/String;

    const-string v3, "gif"

    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/ImageLoader;->loadHttpFile(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1f

    .line 3225
    :cond_21a
    iget-object v0, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendRequest:Lorg/telegram/tgnet/TLObject;

    if-eqz v0, :cond_29a

    .line 3227
    iget-object v0, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendRequest:Lorg/telegram/tgnet/TLObject;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;

    if-eqz v0, :cond_246

    .line 3228
    iget-object v0, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendRequest:Lorg/telegram/tgnet/TLObject;

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;

    iget-object v13, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->media:Lorg/telegram/tgnet/TLRPC$InputMedia;

    .line 3232
    .restart local v13    # "media":Lorg/telegram/tgnet/TLRPC$InputMedia;
    :goto_22a
    iget-object v0, v13, Lorg/telegram/tgnet/TLRPC$InputMedia;->file:Lorg/telegram/tgnet/TLRPC$InputFile;

    if-nez v0, :cond_24f

    .line 3233
    iget-object v0, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    .line 3234
    .restart local v1    # "location":Ljava/lang/String;
    invoke-direct {p0, v1, p1}, Lorg/telegram/messenger/SendMessagesHelper;->putToDelayedMessages(Ljava/lang/String;Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;)V

    .line 3235
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    iget-object v3, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendRequest:Lorg/telegram/tgnet/TLObject;

    if-nez v3, :cond_24d

    :goto_23f
    const/high16 v3, 0x4000000

    invoke-virtual {v0, v1, v8, v2, v3}, Lorg/telegram/messenger/FileLoader;->uploadFile(Ljava/lang/String;ZZI)V

    goto/16 :goto_1f

    .line 3230
    .end local v1    # "location":Ljava/lang/String;
    .end local v13    # "media":Lorg/telegram/tgnet/TLRPC$InputMedia;
    :cond_246
    iget-object v0, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendRequest:Lorg/telegram/tgnet/TLObject;

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendBroadcast;

    iget-object v13, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendBroadcast;->media:Lorg/telegram/tgnet/TLRPC$InputMedia;

    .restart local v13    # "media":Lorg/telegram/tgnet/TLRPC$InputMedia;
    goto :goto_22a

    .restart local v1    # "location":Ljava/lang/String;
    :cond_24d
    move v8, v2

    .line 3235
    goto :goto_23f

    .line 3236
    .end local v1    # "location":Ljava/lang/String;
    :cond_24f
    iget-object v0, v13, Lorg/telegram/tgnet/TLRPC$InputMedia;->thumb:Lorg/telegram/tgnet/TLRPC$InputFile;

    if-nez v0, :cond_1f

    iget-object v0, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v0, :cond_1f

    .line 3237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v3

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-wide v4, v3, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "_"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ".jpg"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3238
    .restart local v1    # "location":Ljava/lang/String;
    invoke-direct {p0, v1, p1}, Lorg/telegram/messenger/SendMessagesHelper;->putToDelayedMessages(Ljava/lang/String;Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;)V

    .line 3239
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    invoke-virtual {v0, v1, v2, v8, v6}, Lorg/telegram/messenger/FileLoader;->uploadFile(Ljava/lang/String;ZZI)V

    goto/16 :goto_1f

    .line 3242
    .end local v1    # "location":Ljava/lang/String;
    .end local v13    # "media":Lorg/telegram/tgnet/TLRPC$InputMedia;
    :cond_29a
    iget-object v0, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    .line 3243
    .restart local v1    # "location":Ljava/lang/String;
    iget-object v0, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendEncryptedRequest:Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;

    if-eqz v0, :cond_2c9

    iget-object v0, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->documentLocation:Lorg/telegram/tgnet/TLRPC$TL_document;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->dc_id:I

    if-eqz v0, :cond_2c9

    .line 3244
    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3245
    .restart local v12    # "file":Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2c9

    .line 3246
    iget-object v0, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->documentLocation:Lorg/telegram/tgnet/TLRPC$TL_document;

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/telegram/messenger/SendMessagesHelper;->putToDelayedMessages(Ljava/lang/String;Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;)V

    .line 3247
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    iget-object v3, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->documentLocation:Lorg/telegram/tgnet/TLRPC$TL_document;

    invoke-virtual {v0, v3, v8, v2}, Lorg/telegram/messenger/FileLoader;->loadFile(Lorg/telegram/tgnet/TLRPC$Document;ZZ)V

    goto/16 :goto_1f

    .line 3251
    .end local v12    # "file":Ljava/io/File;
    :cond_2c9
    invoke-direct {p0, v1, p1}, Lorg/telegram/messenger/SendMessagesHelper;->putToDelayedMessages(Ljava/lang/String;Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;)V

    .line 3252
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    const/high16 v3, 0x4000000

    invoke-virtual {v0, v1, v8, v2, v3}, Lorg/telegram/messenger/FileLoader;->uploadFile(Ljava/lang/String;ZZI)V

    goto/16 :goto_1f

    .line 3255
    .end local v1    # "location":Ljava/lang/String;
    :cond_2d7
    iget v0, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->type:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_1f

    .line 3256
    iget-object v0, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    .line 3257
    .restart local v1    # "location":Ljava/lang/String;
    invoke-direct {p0, v1, p1}, Lorg/telegram/messenger/SendMessagesHelper;->putToDelayedMessages(Ljava/lang/String;Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;)V

    .line 3258
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    iget-object v3, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendRequest:Lorg/telegram/tgnet/TLObject;

    if-nez v3, :cond_2ee

    move v2, v8

    :cond_2ee
    const/high16 v3, 0x3000000

    invoke-virtual {v0, v1, v2, v8, v3}, Lorg/telegram/messenger/FileLoader;->uploadFile(Ljava/lang/String;ZZI)V

    goto/16 :goto_1f
.end method

.method private performSendMessageRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;)V
    .registers 11
    .param p1, "req"    # Lorg/telegram/tgnet/TLObject;
    .param p2, "msgObj"    # Lorg/telegram/messenger/MessageObject;
    .param p3, "originalPath"    # Ljava/lang/String;

    .prologue
    .line 3289
    iget-object v2, p2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    .line 3290
    .local v2, "newMsgObj":Lorg/telegram/tgnet/TLRPC$Message;
    invoke-virtual {p0, v2}, Lorg/telegram/messenger/SendMessagesHelper;->putToSendingMessages(Lorg/telegram/tgnet/TLRPC$Message;)V

    .line 3291
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v6

    new-instance v0, Lorg/telegram/messenger/SendMessagesHelper$9;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/SendMessagesHelper$9;-><init>(Lorg/telegram/messenger/SendMessagesHelper;Lorg/telegram/tgnet/TLRPC$Message;Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;)V

    new-instance v3, Lorg/telegram/messenger/SendMessagesHelper$10;

    invoke-direct {v3, p0, v2}, Lorg/telegram/messenger/SendMessagesHelper$10;-><init>(Lorg/telegram/messenger/SendMessagesHelper;Lorg/telegram/tgnet/TLRPC$Message;)V

    instance-of v1, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;

    if-eqz v1, :cond_23

    const/16 v1, 0x80

    :goto_1d
    or-int/lit8 v1, v1, 0x44

    invoke-virtual {v6, p1, v0, v3, v1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;Lorg/telegram/tgnet/QuickAckDelegate;I)I

    .line 3450
    return-void

    .line 3291
    :cond_23
    const/4 v1, 0x0

    goto :goto_1d
.end method

.method public static prepareSendingAudioDocuments(Ljava/util/ArrayList;JLorg/telegram/messenger/MessageObject;)V
    .registers 7
    .param p1, "dialog_id"    # J
    .param p3, "reply_to_msg"    # Lorg/telegram/messenger/MessageObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;J",
            "Lorg/telegram/messenger/MessageObject;",
            ")V"
        }
    .end annotation

    .prologue
    .line 3850
    .local p0, "messageObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lorg/telegram/messenger/SendMessagesHelper$13;

    invoke-direct {v1, p0, p1, p2, p3}, Lorg/telegram/messenger/SendMessagesHelper$13;-><init>(Ljava/util/ArrayList;JLorg/telegram/messenger/MessageObject;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 3895
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 3896
    return-void
.end method

.method public static prepareSendingBotContextResult(Lorg/telegram/tgnet/TLRPC$BotInlineResult;Ljava/util/HashMap;JLorg/telegram/messenger/MessageObject;)V
    .registers 27
    .param p0, "result"    # Lorg/telegram/tgnet/TLRPC$BotInlineResult;
    .param p2, "dialog_id"    # J
    .param p4, "reply_to_msg"    # Lorg/telegram/messenger/MessageObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/tgnet/TLRPC$BotInlineResult;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J",
            "Lorg/telegram/messenger/MessageObject;",
            ")V"
        }
    .end annotation

    .prologue
    .line 3965
    .local p1, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p0, :cond_3

    .line 4219
    :cond_2
    :goto_2
    return-void

    .line 3968
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->send_message:Lorg/telegram/tgnet/TLRPC$BotInlineMessage;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_botInlineMessageMediaAuto;

    if-eqz v2, :cond_21

    .line 3969
    new-instance v8, Ljava/lang/Thread;

    new-instance v2, Lorg/telegram/messenger/SendMessagesHelper$15;

    move-object/from16 v3, p0

    move-wide/from16 v4, p2

    move-object/from16 v6, p1

    move-object/from16 v7, p4

    invoke-direct/range {v2 .. v7}, Lorg/telegram/messenger/SendMessagesHelper$15;-><init>(Lorg/telegram/tgnet/TLRPC$BotInlineResult;JLjava/util/HashMap;Lorg/telegram/messenger/MessageObject;)V

    invoke-direct {v8, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 4186
    invoke-virtual {v8}, Ljava/lang/Thread;->run()V

    goto :goto_2

    .line 4187
    :cond_21
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->send_message:Lorg/telegram/tgnet/TLRPC$BotInlineMessage;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_botInlineMessageText;

    if-eqz v2, :cond_a0

    .line 4188
    const/4 v7, 0x0

    .line 4189
    .local v7, "webPage":Lorg/telegram/tgnet/TLRPC$WebPage;
    move-wide/from16 v0, p2

    long-to-int v2, v0

    if-nez v2, :cond_71

    .line 4190
    const/16 v19, 0x0

    .local v19, "a":I
    :goto_31
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->send_message:Lorg/telegram/tgnet/TLRPC$BotInlineMessage;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$BotInlineMessage;->entities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v19

    if-ge v0, v2, :cond_71

    .line 4191
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->send_message:Lorg/telegram/tgnet/TLRPC$BotInlineMessage;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$BotInlineMessage;->entities:Ljava/util/ArrayList;

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lorg/telegram/tgnet/TLRPC$MessageEntity;

    .line 4192
    .local v20, "entity":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    move-object/from16 v0, v20

    instance-of v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messageEntityUrl;

    if-eqz v2, :cond_9b

    .line 4193
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_webPagePending;

    .end local v7    # "webPage":Lorg/telegram/tgnet/TLRPC$WebPage;
    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_webPagePending;-><init>()V

    .line 4194
    .restart local v7    # "webPage":Lorg/telegram/tgnet/TLRPC$WebPage;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->send_message:Lorg/telegram/tgnet/TLRPC$BotInlineMessage;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$BotInlineMessage;->message:Ljava/lang/String;

    move-object/from16 v0, v20

    iget v3, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    move-object/from16 v0, v20

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    move-object/from16 v0, v20

    iget v5, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    add-int/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v7, Lorg/telegram/tgnet/TLRPC$WebPage;->url:Ljava/lang/String;

    .line 4199
    .end local v19    # "a":I
    .end local v20    # "entity":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    :cond_71
    invoke-static {}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->send_message:Lorg/telegram/tgnet/TLRPC$BotInlineMessage;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$BotInlineMessage;->message:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->send_message:Lorg/telegram/tgnet/TLRPC$BotInlineMessage;

    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$BotInlineMessage;->no_webpage:Z

    if-nez v4, :cond_9e

    const/4 v8, 0x1

    :goto_84
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->send_message:Lorg/telegram/tgnet/TLRPC$BotInlineMessage;

    iget-object v9, v4, Lorg/telegram/tgnet/TLRPC$BotInlineMessage;->entities:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->send_message:Lorg/telegram/tgnet/TLRPC$BotInlineMessage;

    iget-object v10, v4, Lorg/telegram/tgnet/TLRPC$BotInlineMessage;->reply_markup:Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

    move-wide/from16 v4, p2

    move-object/from16 v6, p4

    move-object/from16 v11, p1

    invoke-virtual/range {v2 .. v11}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$WebPage;ZLjava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;)V

    goto/16 :goto_2

    .line 4190
    .restart local v19    # "a":I
    .restart local v20    # "entity":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    :cond_9b
    add-int/lit8 v19, v19, 0x1

    goto :goto_31

    .line 4199
    .end local v19    # "a":I
    .end local v20    # "entity":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    :cond_9e
    const/4 v8, 0x0

    goto :goto_84

    .line 4200
    .end local v7    # "webPage":Lorg/telegram/tgnet/TLRPC$WebPage;
    :cond_a0
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->send_message:Lorg/telegram/tgnet/TLRPC$BotInlineMessage;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_botInlineMessageMediaVenue;

    if-eqz v2, :cond_ea

    .line 4201
    new-instance v9, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;

    invoke-direct {v9}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;-><init>()V

    .line 4202
    .local v9, "venue":Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->send_message:Lorg/telegram/tgnet/TLRPC$BotInlineMessage;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$BotInlineMessage;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    iput-object v2, v9, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    .line 4203
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->send_message:Lorg/telegram/tgnet/TLRPC$BotInlineMessage;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$BotInlineMessage;->address:Ljava/lang/String;

    iput-object v2, v9, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;->address:Ljava/lang/String;

    .line 4204
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->send_message:Lorg/telegram/tgnet/TLRPC$BotInlineMessage;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$BotInlineMessage;->title:Ljava/lang/String;

    iput-object v2, v9, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;->title:Ljava/lang/String;

    .line 4205
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->send_message:Lorg/telegram/tgnet/TLRPC$BotInlineMessage;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$BotInlineMessage;->provider:Ljava/lang/String;

    iput-object v2, v9, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;->provider:Ljava/lang/String;

    .line 4206
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->send_message:Lorg/telegram/tgnet/TLRPC$BotInlineMessage;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$BotInlineMessage;->venue_id:Ljava/lang/String;

    iput-object v2, v9, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;->venue_id:Ljava/lang/String;

    .line 4207
    invoke-static {}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->send_message:Lorg/telegram/tgnet/TLRPC$BotInlineMessage;

    iget-object v13, v2, Lorg/telegram/tgnet/TLRPC$BotInlineMessage;->reply_markup:Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

    move-wide/from16 v10, p2

    move-object/from16 v12, p4

    move-object/from16 v14, p1

    invoke-virtual/range {v8 .. v14}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Lorg/telegram/tgnet/TLRPC$MessageMedia;JLorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;)V

    goto/16 :goto_2

    .line 4208
    .end local v9    # "venue":Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;
    :cond_ea
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->send_message:Lorg/telegram/tgnet/TLRPC$BotInlineMessage;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_botInlineMessageMediaGeo;

    if-eqz v2, :cond_114

    .line 4209
    new-instance v11, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeo;

    invoke-direct {v11}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeo;-><init>()V

    .line 4210
    .local v11, "location":Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeo;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->send_message:Lorg/telegram/tgnet/TLRPC$BotInlineMessage;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$BotInlineMessage;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    iput-object v2, v11, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeo;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    .line 4211
    invoke-static {}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->send_message:Lorg/telegram/tgnet/TLRPC$BotInlineMessage;

    iget-object v15, v2, Lorg/telegram/tgnet/TLRPC$BotInlineMessage;->reply_markup:Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

    move-wide/from16 v12, p2

    move-object/from16 v14, p4

    move-object/from16 v16, p1

    invoke-virtual/range {v10 .. v16}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Lorg/telegram/tgnet/TLRPC$MessageMedia;JLorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;)V

    goto/16 :goto_2

    .line 4212
    .end local v11    # "location":Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeo;
    :cond_114
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->send_message:Lorg/telegram/tgnet/TLRPC$BotInlineMessage;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_botInlineMessageMediaContact;

    if-eqz v2, :cond_2

    .line 4213
    new-instance v13, Lorg/telegram/tgnet/TLRPC$TL_user;

    invoke-direct {v13}, Lorg/telegram/tgnet/TLRPC$TL_user;-><init>()V

    .line 4214
    .local v13, "user":Lorg/telegram/tgnet/TLRPC$User;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->send_message:Lorg/telegram/tgnet/TLRPC$BotInlineMessage;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$BotInlineMessage;->phone_number:Ljava/lang/String;

    iput-object v2, v13, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    .line 4215
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->send_message:Lorg/telegram/tgnet/TLRPC$BotInlineMessage;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$BotInlineMessage;->first_name:Ljava/lang/String;

    iput-object v2, v13, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    .line 4216
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->send_message:Lorg/telegram/tgnet/TLRPC$BotInlineMessage;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$BotInlineMessage;->last_name:Ljava/lang/String;

    iput-object v2, v13, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    .line 4217
    invoke-static {}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->send_message:Lorg/telegram/tgnet/TLRPC$BotInlineMessage;

    iget-object v0, v2, Lorg/telegram/tgnet/TLRPC$BotInlineMessage;->reply_markup:Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

    move-object/from16 v17, v0

    move-wide/from16 v14, p2

    move-object/from16 v16, p4

    move-object/from16 v18, p1

    invoke-virtual/range {v12 .. v18}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Lorg/telegram/tgnet/TLRPC$User;JLorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;)V

    goto/16 :goto_2
.end method

.method public static prepareSendingDocument(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Landroid/support/v13/view/inputmethod/InputContentInfoCompat;)V
    .registers 16
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "originalPath"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "mine"    # Ljava/lang/String;
    .param p4, "dialog_id"    # J
    .param p6, "reply_to_msg"    # Lorg/telegram/messenger/MessageObject;
    .param p7, "inputContent"    # Landroid/support/v13/view/inputmethod/InputContentInfoCompat;

    .prologue
    .line 3832
    if-eqz p0, :cond_4

    if-nez p1, :cond_7

    :cond_4
    if-nez p2, :cond_7

    .line 3847
    :goto_6
    return-void

    .line 3835
    :cond_7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3836
    .local v0, "paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3837
    .local v1, "originalPaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 3838
    .local v2, "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    if-eqz p2, :cond_1c

    .line 3839
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3840
    .restart local v2    # "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3842
    :cond_1c
    if-eqz p0, :cond_24

    .line 3843
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3844
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_24
    move-object v3, p3

    move-wide v4, p4

    move-object v6, p6

    move-object v7, p7

    .line 3846
    invoke-static/range {v0 .. v7}, Lorg/telegram/messenger/SendMessagesHelper;->prepareSendingDocuments(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Landroid/support/v13/view/inputmethod/InputContentInfoCompat;)V

    goto :goto_6
.end method

.method private static prepareSendingDocumentInternal(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Ljava/lang/String;)Z
    .registers 42
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "originalPath"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "mime"    # Ljava/lang/String;
    .param p4, "dialog_id"    # J
    .param p6, "reply_to_msg"    # Lorg/telegram/messenger/MessageObject;
    .param p7, "caption"    # Ljava/lang/String;

    .prologue
    .line 3663
    if-eqz p0, :cond_8

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_c

    :cond_8
    if-nez p2, :cond_c

    .line 3664
    const/4 v2, 0x0

    .line 3828
    :goto_b
    return v2

    .line 3666
    :cond_c
    if-eqz p2, :cond_16

    invoke-static/range {p2 .. p2}, Lorg/telegram/messenger/AndroidUtilities;->isInternalUri(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 3667
    const/4 v2, 0x0

    goto :goto_b

    .line 3669
    :cond_16
    if-eqz p0, :cond_2b

    new-instance v2, Ljava/io/File;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->isInternalUri(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 3670
    const/4 v2, 0x0

    goto :goto_b

    .line 3672
    :cond_2b
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v30

    .line 3673
    .local v30, "myMime":Landroid/webkit/MimeTypeMap;
    const/4 v11, 0x0

    .line 3674
    .local v11, "attributeAudio":Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;
    const/16 v22, 0x0

    .line 3675
    .local v22, "extension":Ljava/lang/String;
    if-eqz p2, :cond_4e

    .line 3676
    if-eqz p3, :cond_3e

    .line 3677
    move-object/from16 v0, v30

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/webkit/MimeTypeMap;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 3679
    :cond_3e
    if-nez v22, :cond_42

    .line 3680
    const-string v22, "txt"

    .line 3682
    :cond_42
    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lorg/telegram/messenger/MediaController;->copyFileToCache(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 3683
    if-nez p0, :cond_4e

    .line 3684
    const/4 v2, 0x0

    goto :goto_b

    .line 3687
    :cond_4e
    new-instance v23, Ljava/io/File;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3688
    .local v23, "f":Ljava/io/File;
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_67

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v6, 0x0

    cmp-long v2, v2, v6

    if-nez v2, :cond_69

    .line 3689
    :cond_67
    const/4 v2, 0x0

    goto :goto_b

    .line 3692
    :cond_69
    move-wide/from16 v0, p4

    long-to-int v2, v0

    if-nez v2, :cond_bf

    const/16 v28, 0x1

    .line 3693
    .local v28, "isEncrypted":Z
    :goto_70
    if-nez v28, :cond_c2

    const/4 v10, 0x1

    .line 3695
    .local v10, "allowSticker":Z
    :goto_73
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v31

    .line 3696
    .local v31, "name":Ljava/lang/String;
    const-string v21, ""

    .line 3697
    .local v21, "ext":Ljava/lang/String;
    if-eqz v22, :cond_c4

    .line 3698
    move-object/from16 v21, v22

    .line 3705
    :cond_7d
    :goto_7d
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mp3"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_95

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "m4a"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_111

    .line 3706
    :cond_95
    invoke-static/range {v23 .. v23}, Lorg/telegram/messenger/audioinfo/AudioInfo;->getAudioInfo(Ljava/io/File;)Lorg/telegram/messenger/audioinfo/AudioInfo;

    move-result-object v14

    .line 3707
    .local v14, "audioInfo":Lorg/telegram/messenger/audioinfo/AudioInfo;
    if-eqz v14, :cond_111

    invoke-virtual {v14}, Lorg/telegram/messenger/audioinfo/AudioInfo;->getDuration()J

    move-result-wide v2

    const-wide/16 v6, 0x0

    cmp-long v2, v2, v6

    if-eqz v2, :cond_111

    .line 3708
    if-eqz v28, :cond_2c2

    .line 3709
    const/16 v2, 0x20

    shr-long v2, p4, v2

    long-to-int v0, v2

    move/from16 v26, v0

    .line 3710
    .local v26, "high_id":I
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getEncryptedChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-result-object v20

    .line 3711
    .local v20, "encryptedChat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    if-nez v20, :cond_da

    .line 3712
    const/4 v2, 0x0

    goto/16 :goto_b

    .line 3692
    .end local v10    # "allowSticker":Z
    .end local v14    # "audioInfo":Lorg/telegram/messenger/audioinfo/AudioInfo;
    .end local v20    # "encryptedChat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    .end local v21    # "ext":Ljava/lang/String;
    .end local v26    # "high_id":I
    .end local v28    # "isEncrypted":Z
    .end local v31    # "name":Ljava/lang/String;
    :cond_bf
    const/16 v28, 0x0

    goto :goto_70

    .line 3693
    .restart local v28    # "isEncrypted":Z
    :cond_c2
    const/4 v10, 0x0

    goto :goto_73

    .line 3700
    .restart local v10    # "allowSticker":Z
    .restart local v21    # "ext":Ljava/lang/String;
    .restart local v31    # "name":Ljava/lang/String;
    :cond_c4
    const/16 v2, 0x2e

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v27

    .line 3701
    .local v27, "idx":I
    const/4 v2, -0x1

    move/from16 v0, v27

    if-eq v0, v2, :cond_7d

    .line 3702
    add-int/lit8 v2, v27, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v21

    goto :goto_7d

    .line 3714
    .end local v27    # "idx":I
    .restart local v14    # "audioInfo":Lorg/telegram/messenger/audioinfo/AudioInfo;
    .restart local v20    # "encryptedChat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    .restart local v26    # "high_id":I
    :cond_da
    new-instance v11, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;

    .end local v11    # "attributeAudio":Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;
    invoke-direct {v11}, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;-><init>()V

    .line 3718
    .end local v20    # "encryptedChat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    .end local v26    # "high_id":I
    .restart local v11    # "attributeAudio":Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;
    :goto_df
    invoke-virtual {v14}, Lorg/telegram/messenger/audioinfo/AudioInfo;->getDuration()J

    move-result-wide v2

    const-wide/16 v6, 0x3e8

    div-long/2addr v2, v6

    long-to-int v2, v2

    iput v2, v11, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;->duration:I

    .line 3719
    invoke-virtual {v14}, Lorg/telegram/messenger/audioinfo/AudioInfo;->getTitle()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v11, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;->title:Ljava/lang/String;

    .line 3720
    invoke-virtual {v14}, Lorg/telegram/messenger/audioinfo/AudioInfo;->getArtist()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v11, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;->performer:Ljava/lang/String;

    .line 3721
    iget-object v2, v11, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;->title:Ljava/lang/String;

    if-nez v2, :cond_fd

    .line 3722
    const-string v2, ""

    iput-object v2, v11, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;->title:Ljava/lang/String;

    .line 3724
    :cond_fd
    iget v2, v11, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;->flags:I

    or-int/lit8 v2, v2, 0x1

    iput v2, v11, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;->flags:I

    .line 3725
    iget-object v2, v11, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;->performer:Ljava/lang/String;

    if-nez v2, :cond_10b

    .line 3726
    const-string v2, ""

    iput-object v2, v11, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;->performer:Ljava/lang/String;

    .line 3728
    :cond_10b
    iget v2, v11, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;->flags:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v11, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;->flags:I

    .line 3731
    .end local v14    # "audioInfo":Lorg/telegram/messenger/audioinfo/AudioInfo;
    :cond_111
    const/16 v32, 0x0

    .line 3732
    .local v32, "sendNew":Z
    if-eqz p1, :cond_121

    .line 3733
    const-string v2, "attheme"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2c9

    .line 3734
    const/16 v32, 0x1

    .line 3742
    :cond_121
    :goto_121
    const/16 v18, 0x0

    .line 3743
    .local v18, "document":Lorg/telegram/tgnet/TLRPC$TL_document;
    if-nez v32, :cond_164

    if-nez v28, :cond_164

    .line 3744
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v3

    if-nez v28, :cond_309

    const/4 v2, 0x1

    :goto_12e
    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v2}, Lorg/telegram/messenger/MessagesStorage;->getSentFile(Ljava/lang/String;I)Lorg/telegram/tgnet/TLObject;

    move-result-object v18

    .end local v18    # "document":Lorg/telegram/tgnet/TLRPC$TL_document;
    check-cast v18, Lorg/telegram/tgnet/TLRPC$TL_document;

    .line 3745
    .restart local v18    # "document":Lorg/telegram/tgnet/TLRPC$TL_document;
    if-nez v18, :cond_164

    invoke-virtual/range {p0 .. p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_164

    if-nez v28, :cond_164

    .line 3746
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    if-nez v28, :cond_30c

    const/4 v2, 0x1

    :goto_15e
    invoke-virtual {v3, v6, v2}, Lorg/telegram/messenger/MessagesStorage;->getSentFile(Ljava/lang/String;I)Lorg/telegram/tgnet/TLObject;

    move-result-object v18

    .end local v18    # "document":Lorg/telegram/tgnet/TLRPC$TL_document;
    check-cast v18, Lorg/telegram/tgnet/TLRPC$TL_document;

    .line 3749
    .restart local v18    # "document":Lorg/telegram/tgnet/TLRPC$TL_document;
    :cond_164
    if-nez v18, :cond_29b

    .line 3750
    new-instance v18, Lorg/telegram/tgnet/TLRPC$TL_document;

    .end local v18    # "document":Lorg/telegram/tgnet/TLRPC$TL_document;
    invoke-direct/range {v18 .. v18}, Lorg/telegram/tgnet/TLRPC$TL_document;-><init>()V

    .line 3751
    .restart local v18    # "document":Lorg/telegram/tgnet/TLRPC$TL_document;
    const-wide/16 v2, 0x0

    move-object/from16 v0, v18

    iput-wide v2, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->id:J

    .line 3752
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v2

    move-object/from16 v0, v18

    iput v2, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->date:I

    .line 3753
    new-instance v25, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeFilename;

    invoke-direct/range {v25 .. v25}, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeFilename;-><init>()V

    .line 3754
    .local v25, "fileName":Lorg/telegram/tgnet/TLRPC$TL_documentAttributeFilename;
    move-object/from16 v0, v31

    move-object/from16 v1, v25

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeFilename;->file_name:Ljava/lang/String;

    .line 3755
    move-object/from16 v0, v18

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->attributes:Ljava/util/ArrayList;

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3756
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int v2, v2

    move-object/from16 v0, v18

    iput v2, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->size:I

    .line 3757
    const/4 v2, 0x0

    move-object/from16 v0, v18

    iput v2, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->dc_id:I

    .line 3758
    if-eqz v11, :cond_1a8

    .line 3759
    move-object/from16 v0, v18

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3761
    :cond_1a8
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_32b

    .line 3762
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "webp"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_30f

    .line 3763
    const-string v2, "image/webp"

    move-object/from16 v0, v18

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->mime_type:Ljava/lang/String;

    .line 3775
    :goto_1c0
    move-object/from16 v0, v18

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->mime_type:Ljava/lang/String;

    const-string v3, "image/gif"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f5

    .line 3777
    :try_start_1cc
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/high16 v6, 0x42b40000    # 90.0f

    const/high16 v7, 0x42b40000    # 90.0f

    const/4 v8, 0x1

    invoke-static {v2, v3, v6, v7, v8}, Lorg/telegram/messenger/ImageLoader;->loadBitmap(Ljava/lang/String;Landroid/net/Uri;FFZ)Landroid/graphics/Bitmap;

    move-result-object v15

    .line 3778
    .local v15, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v15, :cond_1f5

    .line 3779
    const-string v2, "animation.gif"

    move-object/from16 v0, v25

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeFilename;->file_name:Ljava/lang/String;

    .line 3780
    const/high16 v2, 0x42b40000    # 90.0f

    const/high16 v3, 0x42b40000    # 90.0f

    const/16 v6, 0x37

    move/from16 v0, v28

    invoke-static {v15, v2, v3, v6, v0}, Lorg/telegram/messenger/ImageLoader;->scaleAndSaveImage(Landroid/graphics/Bitmap;FFIZ)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v2

    move-object/from16 v0, v18

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 3781
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_1f5
    .catch Ljava/lang/Exception; {:try_start_1cc .. :try_end_1f5} :catch_333

    .line 3787
    .end local v15    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1f5
    :goto_1f5
    move-object/from16 v0, v18

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->mime_type:Ljava/lang/String;

    const-string v3, "image/webp"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_284

    if-eqz v10, :cond_284

    .line 3788
    new-instance v16, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 3790
    .local v16, "bmOptions":Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x1

    :try_start_209
    move-object/from16 v0, v16

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 3791
    new-instance v24, Ljava/io/RandomAccessFile;

    const-string v2, "r"

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3792
    .local v24, "file":Ljava/io/RandomAccessFile;
    invoke-virtual/range {v24 .. v24}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    sget-object v3, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v4, 0x0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v17

    .line 3793
    .local v17, "buffer":Ljava/nio/ByteBuffer;
    const/4 v2, 0x0

    invoke-virtual/range {v17 .. v17}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    const/4 v6, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-static {v2, v0, v3, v1, v6}, Lorg/telegram/messenger/Utilities;->loadWebpImage(Landroid/graphics/Bitmap;Ljava/nio/ByteBuffer;ILandroid/graphics/BitmapFactory$Options;Z)Z

    .line 3794
    invoke-virtual/range {v24 .. v24}, Ljava/io/RandomAccessFile;->close()V
    :try_end_239
    .catch Ljava/lang/Exception; {:try_start_209 .. :try_end_239} :catch_339

    .line 3798
    .end local v17    # "buffer":Ljava/nio/ByteBuffer;
    .end local v24    # "file":Ljava/io/RandomAccessFile;
    :goto_239
    move-object/from16 v0, v16

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-eqz v2, :cond_284

    move-object/from16 v0, v16

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-eqz v2, :cond_284

    move-object/from16 v0, v16

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    const/16 v3, 0x320

    if-gt v2, v3, :cond_284

    move-object/from16 v0, v16

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    const/16 v3, 0x320

    if-gt v2, v3, :cond_284

    .line 3799
    new-instance v13, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeSticker;

    invoke-direct {v13}, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeSticker;-><init>()V

    .line 3800
    .local v13, "attributeSticker":Lorg/telegram/tgnet/TLRPC$TL_documentAttributeSticker;
    const-string v2, ""

    iput-object v2, v13, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeSticker;->alt:Ljava/lang/String;

    .line 3801
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetEmpty;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetEmpty;-><init>()V

    iput-object v2, v13, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeSticker;->stickerset:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    .line 3802
    move-object/from16 v0, v18

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3803
    new-instance v12, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeImageSize;

    invoke-direct {v12}, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeImageSize;-><init>()V

    .line 3804
    .local v12, "attributeImageSize":Lorg/telegram/tgnet/TLRPC$TL_documentAttributeImageSize;
    move-object/from16 v0, v16

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v2, v12, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeImageSize;->w:I

    .line 3805
    move-object/from16 v0, v16

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v2, v12, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeImageSize;->h:I

    .line 3806
    move-object/from16 v0, v18

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3809
    .end local v12    # "attributeImageSize":Lorg/telegram/tgnet/TLRPC$TL_documentAttributeImageSize;
    .end local v13    # "attributeSticker":Lorg/telegram/tgnet/TLRPC$TL_documentAttributeSticker;
    .end local v16    # "bmOptions":Landroid/graphics/BitmapFactory$Options;
    :cond_284
    move-object/from16 v0, v18

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    if-nez v2, :cond_29b

    .line 3810
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_photoSizeEmpty;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_photoSizeEmpty;-><init>()V

    move-object/from16 v0, v18

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 3811
    move-object/from16 v0, v18

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    const-string v3, "s"

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$PhotoSize;->type:Ljava/lang/String;

    .line 3814
    .end local v25    # "fileName":Lorg/telegram/tgnet/TLRPC$TL_documentAttributeFilename;
    :cond_29b
    move-object/from16 v0, p7

    move-object/from16 v1, v18

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_document;->caption:Ljava/lang/String;

    .line 3816
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 3817
    .local v9, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_2af

    .line 3818
    const-string v2, "originalPath"

    move-object/from16 v0, p1

    invoke-virtual {v9, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3820
    :cond_2af
    move-object/from16 v4, v18

    .line 3821
    .local v4, "documentFinal":Lorg/telegram/tgnet/TLRPC$TL_document;
    move-object/from16 v5, p0

    .line 3822
    .local v5, "pathFinal":Ljava/lang/String;
    new-instance v3, Lorg/telegram/messenger/SendMessagesHelper$12;

    move-wide/from16 v6, p4

    move-object/from16 v8, p6

    invoke-direct/range {v3 .. v9}, Lorg/telegram/messenger/SendMessagesHelper$12;-><init>(Lorg/telegram/tgnet/TLRPC$TL_document;Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Ljava/util/HashMap;)V

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 3828
    const/4 v2, 0x1

    goto/16 :goto_b

    .line 3716
    .end local v4    # "documentFinal":Lorg/telegram/tgnet/TLRPC$TL_document;
    .end local v5    # "pathFinal":Ljava/lang/String;
    .end local v9    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v18    # "document":Lorg/telegram/tgnet/TLRPC$TL_document;
    .end local v32    # "sendNew":Z
    .restart local v14    # "audioInfo":Lorg/telegram/messenger/audioinfo/AudioInfo;
    :cond_2c2
    new-instance v11, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;

    .end local v11    # "attributeAudio":Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;
    invoke-direct {v11}, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;-><init>()V

    .restart local v11    # "attributeAudio":Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;
    goto/16 :goto_df

    .line 3735
    .end local v14    # "audioInfo":Lorg/telegram/messenger/audioinfo/AudioInfo;
    .restart local v32    # "sendNew":Z
    :cond_2c9
    if-eqz v11, :cond_2ea

    .line 3736
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_121

    .line 3738
    :cond_2ea
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_121

    .line 3744
    .restart local v18    # "document":Lorg/telegram/tgnet/TLRPC$TL_document;
    :cond_309
    const/4 v2, 0x4

    goto/16 :goto_12e

    .line 3746
    :cond_30c
    const/4 v2, 0x4

    goto/16 :goto_15e

    .line 3765
    .restart local v25    # "fileName":Lorg/telegram/tgnet/TLRPC$TL_documentAttributeFilename;
    :cond_30f
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 3766
    .local v29, "mimeType":Ljava/lang/String;
    if-eqz v29, :cond_323

    .line 3767
    move-object/from16 v0, v29

    move-object/from16 v1, v18

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_document;->mime_type:Ljava/lang/String;

    goto/16 :goto_1c0

    .line 3769
    :cond_323
    const-string v2, "application/octet-stream"

    move-object/from16 v0, v18

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->mime_type:Ljava/lang/String;

    goto/16 :goto_1c0

    .line 3773
    .end local v29    # "mimeType":Ljava/lang/String;
    :cond_32b
    const-string v2, "application/octet-stream"

    move-object/from16 v0, v18

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->mime_type:Ljava/lang/String;

    goto/16 :goto_1c0

    .line 3783
    :catch_333
    move-exception v19

    .line 3784
    .local v19, "e":Ljava/lang/Exception;
    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_1f5

    .line 3795
    .end local v19    # "e":Ljava/lang/Exception;
    .restart local v16    # "bmOptions":Landroid/graphics/BitmapFactory$Options;
    :catch_339
    move-exception v19

    .line 3796
    .restart local v19    # "e":Ljava/lang/Exception;
    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_239
.end method

.method public static prepareSendingDocuments(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Landroid/support/v13/view/inputmethod/InputContentInfoCompat;)V
    .registers 18
    .param p3, "mime"    # Ljava/lang/String;
    .param p4, "dialog_id"    # J
    .param p6, "reply_to_msg"    # Lorg/telegram/messenger/MessageObject;
    .param p7, "inputContent"    # Landroid/support/v13/view/inputmethod/InputContentInfoCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            "J",
            "Lorg/telegram/messenger/MessageObject;",
            "Landroid/support/v13/view/inputmethod/InputContentInfoCompat;",
            ")V"
        }
    .end annotation

    .prologue
    .line 3899
    .local p0, "paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p1, "originalPaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p2, "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    if-nez p0, :cond_6

    if-nez p1, :cond_6

    if-eqz p2, :cond_14

    :cond_6
    if-eqz p0, :cond_15

    if-eqz p1, :cond_15

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eq v0, v1, :cond_15

    .line 3938
    :cond_14
    :goto_14
    return-void

    .line 3902
    :cond_15
    new-instance v9, Ljava/lang/Thread;

    new-instance v0, Lorg/telegram/messenger/SendMessagesHelper$14;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-wide v4, p4

    move-object/from16 v6, p6

    move-object v7, p2

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lorg/telegram/messenger/SendMessagesHelper$14;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Ljava/util/ArrayList;Landroid/support/v13/view/inputmethod/InputContentInfoCompat;)V

    invoke-direct {v9, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 3937
    invoke-virtual {v9}, Ljava/lang/Thread;->start()V

    goto :goto_14
.end method

.method public static prepareSendingPhoto(Ljava/lang/String;Landroid/net/Uri;JLorg/telegram/messenger/MessageObject;Ljava/lang/CharSequence;Ljava/util/ArrayList;Landroid/support/v13/view/inputmethod/InputContentInfoCompat;)V
    .registers 16
    .param p0, "imageFilePath"    # Ljava/lang/String;
    .param p1, "imageUri"    # Landroid/net/Uri;
    .param p2, "dialog_id"    # J
    .param p4, "reply_to_msg"    # Lorg/telegram/messenger/MessageObject;
    .param p5, "caption"    # Ljava/lang/CharSequence;
    .param p7, "inputContent"    # Landroid/support/v13/view/inputmethod/InputContentInfoCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "J",
            "Lorg/telegram/messenger/MessageObject;",
            "Ljava/lang/CharSequence;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$InputDocument;",
            ">;",
            "Landroid/support/v13/view/inputmethod/InputContentInfoCompat;",
            ")V"
        }
    .end annotation

    .prologue
    .line 3941
    .local p6, "stickers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$InputDocument;>;"
    const/4 v0, 0x0

    .line 3942
    .local v0, "paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 3943
    .local v1, "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    const/4 v5, 0x0

    .line 3944
    .local v5, "captions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 3945
    .local v6, "masks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$InputDocument;>;>;"
    if-eqz p0, :cond_14

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_14

    .line 3946
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3947
    .restart local v0    # "paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3949
    :cond_14
    if-eqz p1, :cond_1e

    .line 3950
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3951
    .restart local v1    # "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3953
    :cond_1e
    if-eqz p5, :cond_2c

    .line 3954
    new-instance v5, Ljava/util/ArrayList;

    .end local v5    # "captions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 3955
    .restart local v5    # "captions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {p5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3957
    :cond_2c
    if-eqz p6, :cond_41

    invoke-virtual {p6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_41

    .line 3958
    new-instance v6, Ljava/util/ArrayList;

    .end local v6    # "masks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$InputDocument;>;>;"
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 3959
    .restart local v6    # "masks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$InputDocument;>;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_41
    move-wide v2, p2

    move-object v4, p4

    move-object v7, p7

    .line 3961
    invoke-static/range {v0 .. v7}, Lorg/telegram/messenger/SendMessagesHelper;->prepareSendingPhotos(Ljava/util/ArrayList;Ljava/util/ArrayList;JLorg/telegram/messenger/MessageObject;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/support/v13/view/inputmethod/InputContentInfoCompat;)V

    .line 3962
    return-void
.end method

.method public static prepareSendingPhotos(Ljava/util/ArrayList;Ljava/util/ArrayList;JLorg/telegram/messenger/MessageObject;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/support/v13/view/inputmethod/InputContentInfoCompat;)V
    .registers 18
    .param p2, "dialog_id"    # J
    .param p4, "reply_to_msg"    # Lorg/telegram/messenger/MessageObject;
    .param p7, "inputContent"    # Landroid/support/v13/view/inputmethod/InputContentInfoCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;J",
            "Lorg/telegram/messenger/MessageObject;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$InputDocument;",
            ">;>;",
            "Landroid/support/v13/view/inputmethod/InputContentInfoCompat;",
            ")V"
        }
    .end annotation

    .prologue
    .line 4418
    .local p0, "paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p1, "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    .local p5, "captions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p6, "masks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$InputDocument;>;>;"
    if-nez p0, :cond_4

    if-eqz p1, :cond_14

    :cond_4
    if-eqz p0, :cond_c

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14

    :cond_c
    if-eqz p1, :cond_15

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 4551
    :cond_14
    :goto_14
    return-void

    .line 4421
    :cond_15
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 4422
    .local v4, "pathsCopy":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 4423
    .local v5, "urisCopy":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    if-eqz p0, :cond_24

    .line 4424
    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 4426
    :cond_24
    if-eqz p1, :cond_29

    .line 4427
    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 4429
    :cond_29
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lorg/telegram/messenger/SendMessagesHelper$18;

    move-wide v2, p2

    move-object v6, p5

    move-object/from16 v7, p6

    move-object v8, p4

    move-object/from16 v9, p7

    invoke-direct/range {v1 .. v9}, Lorg/telegram/messenger/SendMessagesHelper$18;-><init>(JLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lorg/telegram/messenger/MessageObject;Landroid/support/v13/view/inputmethod/InputContentInfoCompat;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 4550
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_14
.end method

.method public static prepareSendingPhotosSearch(Ljava/util/ArrayList;JLorg/telegram/messenger/MessageObject;)V
    .registers 7
    .param p1, "dialog_id"    # J
    .param p3, "reply_to_msg"    # Lorg/telegram/messenger/MessageObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MediaController$SearchImage;",
            ">;J",
            "Lorg/telegram/messenger/MessageObject;",
            ")V"
        }
    .end annotation

    .prologue
    .line 4222
    .local p0, "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MediaController$SearchImage;>;"
    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 4375
    :cond_8
    :goto_8
    return-void

    .line 4225
    :cond_9
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lorg/telegram/messenger/SendMessagesHelper$16;

    invoke-direct {v1, p1, p2, p0, p3}, Lorg/telegram/messenger/SendMessagesHelper$16;-><init>(JLjava/util/ArrayList;Lorg/telegram/messenger/MessageObject;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 4374
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_8
.end method

.method public static prepareSendingText(Ljava/lang/String;J)V
    .registers 6
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "dialog_id"    # J

    .prologue
    .line 4392
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v0

    new-instance v1, Lorg/telegram/messenger/SendMessagesHelper$17;

    invoke-direct {v1, p0, p1, p2}, Lorg/telegram/messenger/SendMessagesHelper$17;-><init>(Ljava/lang/String;J)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 4415
    return-void
.end method

.method public static prepareSendingVideo(Ljava/lang/String;JJIILorg/telegram/messenger/VideoEditedInfo;JLorg/telegram/messenger/MessageObject;Ljava/lang/String;)V
    .registers 27
    .param p0, "videoPath"    # Ljava/lang/String;
    .param p1, "estimatedSize"    # J
    .param p3, "duration"    # J
    .param p5, "width"    # I
    .param p6, "height"    # I
    .param p7, "videoEditedInfo"    # Lorg/telegram/messenger/VideoEditedInfo;
    .param p8, "dialog_id"    # J
    .param p10, "reply_to_msg"    # Lorg/telegram/messenger/MessageObject;
    .param p11, "caption"    # Ljava/lang/String;

    .prologue
    .line 4613
    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    .line 4700
    :cond_8
    :goto_8
    return-void

    .line 4616
    :cond_9
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lorg/telegram/messenger/SendMessagesHelper$19;

    move-wide/from16 v2, p8

    move-object/from16 v4, p7

    move-object v5, p0

    move-wide/from16 v6, p3

    move/from16 v8, p6

    move/from16 v9, p5

    move-wide/from16 v10, p1

    move-object/from16 v12, p11

    move-object/from16 v13, p10

    invoke-direct/range {v1 .. v13}, Lorg/telegram/messenger/SendMessagesHelper$19;-><init>(JLorg/telegram/messenger/VideoEditedInfo;Ljava/lang/String;JIIJLjava/lang/String;Lorg/telegram/messenger/MessageObject;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 4699
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_8
.end method

.method private putToDelayedMessages(Ljava/lang/String;Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;)V
    .registers 5
    .param p1, "location"    # Ljava/lang/String;
    .param p2, "message"    # Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;

    .prologue
    .line 3594
    iget-object v1, p0, Lorg/telegram/messenger/SendMessagesHelper;->delayedMessages:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 3595
    .local v0, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;>;"
    if-nez v0, :cond_14

    .line 3596
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3597
    .restart local v0    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;>;"
    iget-object v1, p0, Lorg/telegram/messenger/SendMessagesHelper;->delayedMessages:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3599
    :cond_14
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3600
    return-void
.end method

.method private sendLocation(Landroid/location/Location;)V
    .registers 11
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    const/4 v5, 0x0

    .line 1033
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeo;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeo;-><init>()V

    .line 1034
    .local v1, "mediaGeo":Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeo;
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_geoPoint;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_geoPoint;-><init>()V

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeo;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    .line 1035
    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeo;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    iput-wide v2, v0, Lorg/telegram/tgnet/TLRPC$GeoPoint;->lat:D

    .line 1036
    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeo;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    iput-wide v2, v0, Lorg/telegram/tgnet/TLRPC$GeoPoint;->_long:D

    .line 1037
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper;->waitingForLocation:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_27
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_46

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 1038
    .local v7, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/telegram/messenger/MessageObject;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/MessageObject;

    .line 1039
    .local v4, "messageObject":Lorg/telegram/messenger/MessageObject;
    invoke-static {}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v0

    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v2

    move-object v6, v5

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Lorg/telegram/tgnet/TLRPC$MessageMedia;JLorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;)V

    goto :goto_27

    .line 1041
    .end local v4    # "messageObject":Lorg/telegram/messenger/MessageObject;
    .end local v7    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/telegram/messenger/MessageObject;>;"
    :cond_46
    return-void
.end method

.method private sendMessage(Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$MessageMedia;Lorg/telegram/tgnet/TLRPC$TL_photo;Lorg/telegram/messenger/VideoEditedInfo;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$TL_document;Lorg/telegram/tgnet/TLRPC$TL_game;JLjava/lang/String;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$WebPage;ZLorg/telegram/messenger/MessageObject;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;)V
    .registers 74
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "location"    # Lorg/telegram/tgnet/TLRPC$MessageMedia;
    .param p3, "photo"    # Lorg/telegram/tgnet/TLRPC$TL_photo;
    .param p4, "videoEditedInfo"    # Lorg/telegram/messenger/VideoEditedInfo;
    .param p5, "user"    # Lorg/telegram/tgnet/TLRPC$User;
    .param p6, "document"    # Lorg/telegram/tgnet/TLRPC$TL_document;
    .param p7, "game"    # Lorg/telegram/tgnet/TLRPC$TL_game;
    .param p8, "peer"    # J
    .param p10, "path"    # Ljava/lang/String;
    .param p11, "reply_to_msg"    # Lorg/telegram/messenger/MessageObject;
    .param p12, "webPage"    # Lorg/telegram/tgnet/TLRPC$WebPage;
    .param p13, "searchLinks"    # Z
    .param p14, "retryMessageObject"    # Lorg/telegram/messenger/MessageObject;
    .param p16, "replyMarkup"    # Lorg/telegram/tgnet/TLRPC$ReplyMarkup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/telegram/tgnet/TLRPC$MessageMedia;",
            "Lorg/telegram/tgnet/TLRPC$TL_photo;",
            "Lorg/telegram/messenger/VideoEditedInfo;",
            "Lorg/telegram/tgnet/TLRPC$User;",
            "Lorg/telegram/tgnet/TLRPC$TL_document;",
            "Lorg/telegram/tgnet/TLRPC$TL_game;",
            "J",
            "Ljava/lang/String;",
            "Lorg/telegram/messenger/MessageObject;",
            "Lorg/telegram/tgnet/TLRPC$WebPage;",
            "Z",
            "Lorg/telegram/messenger/MessageObject;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$MessageEntity;",
            ">;",
            "Lorg/telegram/tgnet/TLRPC$ReplyMarkup;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1273
    .local p15, "entities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$MessageEntity;>;"
    .local p17, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-wide/16 v8, 0x0

    cmp-long v4, p8, v8

    if-nez v4, :cond_7

    .line 2182
    :cond_6
    :goto_6
    return-void

    .line 1277
    :cond_7
    const/16 v43, 0x0

    .line 1278
    .local v43, "originalPath":Ljava/lang/String;
    if-eqz p17, :cond_1f

    const-string v4, "originalPath"

    move-object/from16 v0, p17

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 1279
    const-string v4, "originalPath"

    move-object/from16 v0, p17

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v43

    .end local v43    # "originalPath":Ljava/lang/String;
    check-cast v43, Ljava/lang/String;

    .line 1282
    .restart local v43    # "originalPath":Ljava/lang/String;
    :cond_1f
    const/16 v38, 0x0

    .line 1283
    .local v38, "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    const/16 v40, 0x0

    .line 1284
    .local v40, "newMsgObj":Lorg/telegram/messenger/MessageObject;
    const/16 v54, -0x1

    .line 1285
    .local v54, "type":I
    move-wide/from16 v0, p8

    long-to-int v0, v0

    move/from16 v34, v0

    .line 1286
    .local v34, "lower_id":I
    const/16 v4, 0x20

    shr-long v8, p8, v4

    long-to-int v0, v8

    move/from16 v30, v0

    .line 1287
    .local v30, "high_id":I
    const/16 v32, 0x0

    .line 1288
    .local v32, "isChannel":Z
    const/16 v16, 0x0

    .line 1289
    .local v16, "encryptedChat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    if-eqz v34, :cond_82

    invoke-static/range {v34 .. v34}, Lorg/telegram/messenger/MessagesController;->getInputPeer(I)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v48

    .line 1290
    .local v48, "sendToPeer":Lorg/telegram/tgnet/TLRPC$InputPeer;
    :goto_3b
    const/16 v49, 0x0

    .line 1291
    .local v49, "sendToPeers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$InputUser;>;"
    if-nez v34, :cond_85

    .line 1292
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/MessagesController;->getEncryptedChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-result-object v16

    .line 1293
    if-nez v16, :cond_a5

    .line 1294
    if-eqz p14, :cond_6

    .line 1295
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    move-object/from16 v0, p14

    iget-object v6, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/MessagesStorage;->markMessageAsSendError(Lorg/telegram/tgnet/TLRPC$Message;)V

    .line 1296
    move-object/from16 v0, p14

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    const/4 v6, 0x2

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$Message;->send_state:I

    .line 1297
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v4

    sget v6, Lorg/telegram/messenger/NotificationCenter;->messageSendError:I

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual/range {p14 .. p14}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v8, v9

    invoke-virtual {v4, v6, v8}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 1298
    invoke-virtual/range {p14 .. p14}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/SendMessagesHelper;->processSentMessage(I)V

    goto :goto_6

    .line 1289
    .end local v48    # "sendToPeer":Lorg/telegram/tgnet/TLRPC$InputPeer;
    .end local v49    # "sendToPeers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$InputUser;>;"
    :cond_82
    const/16 v48, 0x0

    goto :goto_3b

    .line 1302
    .restart local v48    # "sendToPeer":Lorg/telegram/tgnet/TLRPC$InputPeer;
    .restart local v49    # "sendToPeers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$InputUser;>;"
    :cond_85
    move-object/from16 v0, v48

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChannel;

    if-eqz v4, :cond_a5

    .line 1303
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    move-object/from16 v0, v48

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$InputPeer;->channel_id:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v25

    .line 1304
    .local v25, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    if-eqz v25, :cond_212

    move-object/from16 v0, v25

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v4, :cond_212

    const/16 v32, 0x1

    .line 1308
    .end local v25    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_a5
    :goto_a5
    if-eqz p14, :cond_2fb

    .line 1309
    :try_start_a7
    move-object/from16 v0, p14

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v38, v0

    .line 1310
    invoke-virtual/range {p14 .. p14}, Lorg/telegram/messenger/MessageObject;->isForwarded()Z

    move-result v4

    if-eqz v4, :cond_216

    .line 1311
    const/16 v54, 0x4

    .line 1514
    :cond_b5
    :goto_b5
    move-object/from16 v0, v38

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    const-wide/16 v14, 0x0

    cmp-long v4, v8, v14

    if-nez v4, :cond_c7

    .line 1515
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/SendMessagesHelper;->getNextRandomId()J

    move-result-wide v8

    move-object/from16 v0, v38

    iput-wide v8, v0, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    .line 1517
    :cond_c7
    if-eqz p17, :cond_f9

    const-string v4, "bot"

    move-object/from16 v0, p17

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f9

    .line 1518
    if-eqz v16, :cond_666

    .line 1519
    const-string v4, "bot_name"

    move-object/from16 v0, p17

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, v38

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->via_bot_name:Ljava/lang/String;

    .line 1520
    move-object/from16 v0, v38

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->via_bot_name:Ljava/lang/String;

    if-nez v4, :cond_ef

    .line 1521
    const-string v4, ""

    move-object/from16 v0, v38

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->via_bot_name:Ljava/lang/String;

    .line 1526
    :cond_ef
    :goto_ef
    move-object/from16 v0, v38

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    or-int/lit16 v4, v4, 0x800

    move-object/from16 v0, v38

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    .line 1528
    :cond_f9
    move-object/from16 v0, p17

    move-object/from16 v1, v38

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$Message;->params:Ljava/util/HashMap;

    .line 1529
    if-eqz p14, :cond_107

    move-object/from16 v0, p14

    iget-boolean v4, v0, Lorg/telegram/messenger/MessageObject;->resendAsIs:Z

    if-nez v4, :cond_152

    .line 1530
    :cond_107
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v4

    move-object/from16 v0, v38

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    .line 1531
    move-object/from16 v0, v48

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChannel;

    if-eqz v4, :cond_693

    .line 1532
    if-eqz v32, :cond_12a

    .line 1533
    const/4 v4, 0x1

    move-object/from16 v0, v38

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->views:I

    .line 1534
    move-object/from16 v0, v38

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    or-int/lit16 v4, v4, 0x400

    move-object/from16 v0, v38

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    .line 1536
    :cond_12a
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    move-object/from16 v0, v48

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$InputPeer;->channel_id:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v25

    .line 1537
    .restart local v25    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    if-eqz v25, :cond_152

    .line 1538
    move-object/from16 v0, v25

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v4, :cond_67e

    .line 1539
    move-object/from16 v0, v38

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    const/high16 v6, -0x80000000

    or-int/2addr v4, v6

    move-object/from16 v0, v38

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    .line 1540
    const/4 v4, 0x1

    move-object/from16 v0, v38

    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->unread:Z

    .line 1552
    .end local v25    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_152
    :goto_152
    move-object/from16 v0, v38

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    or-int/lit16 v4, v4, 0x200

    move-object/from16 v0, v38

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    .line 1553
    move-wide/from16 v0, p8

    move-object/from16 v2, v38

    iput-wide v0, v2, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    .line 1554
    if-eqz p11, :cond_18e

    .line 1555
    if-eqz v16, :cond_69a

    move-object/from16 v0, p11

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v8, v4, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    const-wide/16 v14, 0x0

    cmp-long v4, v8, v14

    if-eqz v4, :cond_69a

    .line 1556
    move-object/from16 v0, p11

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v8, v4, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    move-object/from16 v0, v38

    iput-wide v8, v0, Lorg/telegram/tgnet/TLRPC$Message;->reply_to_random_id:J

    .line 1557
    move-object/from16 v0, v38

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    or-int/lit8 v4, v4, 0x8

    move-object/from16 v0, v38

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    .line 1561
    :goto_186
    invoke-virtual/range {p11 .. p11}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    move-object/from16 v0, v38

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->reply_to_msg_id:I

    .line 1563
    :cond_18e
    if-eqz p16, :cond_1a2

    if-nez v16, :cond_1a2

    .line 1564
    move-object/from16 v0, v38

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    or-int/lit8 v4, v4, 0x40

    move-object/from16 v0, v38

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    .line 1565
    move-object/from16 v0, p16

    move-object/from16 v1, v38

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$Message;->reply_markup:Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

    .line 1567
    :cond_1a2
    if-eqz v34, :cond_825

    .line 1568
    const/4 v4, 0x1

    move/from16 v0, v30

    if-ne v0, v4, :cond_7f5

    .line 1569
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper;->currentChatInfo:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-nez v4, :cond_6a6

    .line 1570
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    move-object/from16 v0, v38

    invoke-virtual {v4, v0}, Lorg/telegram/messenger/MessagesStorage;->markMessageAsSendError(Lorg/telegram/tgnet/TLRPC$Message;)V

    .line 1571
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v4

    sget v6, Lorg/telegram/messenger/NotificationCenter;->messageSendError:I

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    move-object/from16 v0, v38

    iget v11, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v8, v9

    invoke-virtual {v4, v6, v8}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 1572
    move-object/from16 v0, v38

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/SendMessagesHelper;->processSentMessage(I)V
    :try_end_1d8
    .catch Ljava/lang/Exception; {:try_start_a7 .. :try_end_1d8} :catch_1da

    goto/16 :goto_6

    .line 2173
    :catch_1da
    move-exception v29

    move-object/from16 v12, v40

    .line 2174
    .end local v40    # "newMsgObj":Lorg/telegram/messenger/MessageObject;
    .local v12, "newMsgObj":Lorg/telegram/messenger/MessageObject;
    .local v29, "e":Ljava/lang/Exception;
    :goto_1dd
    invoke-static/range {v29 .. v29}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 2175
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    move-object/from16 v0, v38

    invoke-virtual {v4, v0}, Lorg/telegram/messenger/MessagesStorage;->markMessageAsSendError(Lorg/telegram/tgnet/TLRPC$Message;)V

    .line 2176
    if-eqz v12, :cond_1f0

    .line 2177
    iget-object v4, v12, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    const/4 v6, 0x2

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$Message;->send_state:I

    .line 2179
    :cond_1f0
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v4

    sget v6, Lorg/telegram/messenger/NotificationCenter;->messageSendError:I

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    move-object/from16 v0, v38

    iget v11, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v8, v9

    invoke-virtual {v4, v6, v8}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 2180
    move-object/from16 v0, v38

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/SendMessagesHelper;->processSentMessage(I)V

    goto/16 :goto_6

    .line 1304
    .end local v12    # "newMsgObj":Lorg/telegram/messenger/MessageObject;
    .end local v29    # "e":Ljava/lang/Exception;
    .restart local v25    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    .restart local v40    # "newMsgObj":Lorg/telegram/messenger/MessageObject;
    :cond_212
    const/16 v32, 0x0

    goto/16 :goto_a5

    .line 1313
    .end local v25    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_216
    :try_start_216
    move-object/from16 v0, p14

    iget v4, v0, Lorg/telegram/messenger/MessageObject;->type:I

    if-nez v4, :cond_23f

    .line 1314
    move-object/from16 v0, p14

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGame;

    if-eqz v4, :cond_238

    .line 1319
    :goto_226
    const/16 v54, 0x0

    .line 1343
    :cond_228
    :goto_228
    if-eqz p17, :cond_b5

    const-string v4, "query_id"

    move-object/from16 v0, p17

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b5

    .line 1344
    const/16 v54, 0x9

    goto/16 :goto_b5

    .line 1317
    :cond_238
    move-object/from16 v0, v38

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    move-object/from16 p1, v0

    goto :goto_226

    .line 1320
    :cond_23f
    move-object/from16 v0, p14

    iget v4, v0, Lorg/telegram/messenger/MessageObject;->type:I

    const/4 v6, 0x4

    if-ne v4, v6, :cond_24f

    .line 1321
    move-object/from16 v0, v38

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 p2, v0

    .line 1322
    const/16 v54, 0x1

    goto :goto_228

    .line 1323
    :cond_24f
    move-object/from16 v0, p14

    iget v4, v0, Lorg/telegram/messenger/MessageObject;->type:I

    const/4 v6, 0x1

    if-ne v4, v6, :cond_264

    .line 1324
    move-object/from16 v0, v38

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    move-object v0, v4

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_photo;

    move-object/from16 p3, v0

    .line 1325
    const/16 v54, 0x2

    goto :goto_228

    .line 1326
    :cond_264
    move-object/from16 v0, p14

    iget v4, v0, Lorg/telegram/messenger/MessageObject;->type:I

    const/4 v6, 0x3

    if-eq v4, v6, :cond_26d

    if-eqz p4, :cond_27b

    .line 1327
    :cond_26d
    const/16 v54, 0x3

    .line 1328
    move-object/from16 v0, v38

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move-object v0, v4

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_document;

    move-object/from16 p6, v0

    goto :goto_228

    .line 1329
    :cond_27b
    move-object/from16 v0, p14

    iget v4, v0, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v6, 0xc

    if-ne v4, v6, :cond_2b6

    .line 1330
    new-instance v55, Lorg/telegram/tgnet/TLRPC$TL_userRequest_old2;

    invoke-direct/range {v55 .. v55}, Lorg/telegram/tgnet/TLRPC$TL_userRequest_old2;-><init>()V
    :try_end_288
    .catch Ljava/lang/Exception; {:try_start_216 .. :try_end_288} :catch_1da

    .line 1331
    .end local p5    # "user":Lorg/telegram/tgnet/TLRPC$User;
    .local v55, "user":Lorg/telegram/tgnet/TLRPC$User;
    :try_start_288
    move-object/from16 v0, v38

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->phone_number:Ljava/lang/String;

    move-object/from16 v0, v55

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    .line 1332
    move-object/from16 v0, v38

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->first_name:Ljava/lang/String;

    move-object/from16 v0, v55

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    .line 1333
    move-object/from16 v0, v38

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->last_name:Ljava/lang/String;

    move-object/from16 v0, v55

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    .line 1334
    move-object/from16 v0, v38

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->user_id:I

    move-object/from16 v0, v55

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$User;->id:I
    :try_end_2b0
    .catch Ljava/lang/Exception; {:try_start_288 .. :try_end_2b0} :catch_1630

    .line 1335
    const/16 v54, 0x6

    move-object/from16 p5, v55

    .end local v55    # "user":Lorg/telegram/tgnet/TLRPC$User;
    .restart local p5    # "user":Lorg/telegram/tgnet/TLRPC$User;
    goto/16 :goto_228

    .line 1336
    :cond_2b6
    :try_start_2b6
    move-object/from16 v0, p14

    iget v4, v0, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v6, 0x8

    if-eq v4, v6, :cond_2d6

    move-object/from16 v0, p14

    iget v4, v0, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v6, 0x9

    if-eq v4, v6, :cond_2d6

    move-object/from16 v0, p14

    iget v4, v0, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v6, 0xd

    if-eq v4, v6, :cond_2d6

    move-object/from16 v0, p14

    iget v4, v0, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v6, 0xe

    if-ne v4, v6, :cond_2e5

    .line 1337
    :cond_2d6
    move-object/from16 v0, v38

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move-object v0, v4

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_document;

    move-object/from16 p6, v0

    .line 1338
    const/16 v54, 0x7

    goto/16 :goto_228

    .line 1339
    :cond_2e5
    move-object/from16 v0, p14

    iget v4, v0, Lorg/telegram/messenger/MessageObject;->type:I

    const/4 v6, 0x2

    if-ne v4, v6, :cond_228

    .line 1340
    move-object/from16 v0, v38

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move-object v0, v4

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_document;

    move-object/from16 p6, v0

    .line 1341
    const/16 v54, 0x8

    goto/16 :goto_228

    .line 1348
    :cond_2fb
    if-eqz p1, :cond_3a1

    .line 1349
    if-eqz v16, :cond_380

    .line 1350
    new-instance v39, Lorg/telegram/tgnet/TLRPC$TL_message_secret;

    invoke-direct/range {v39 .. v39}, Lorg/telegram/tgnet/TLRPC$TL_message_secret;-><init>()V

    .end local v38    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    .local v39, "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    move-object/from16 v38, v39

    .line 1354
    .end local v39    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    .restart local v38    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    :goto_306
    if-eqz p15, :cond_314

    invoke-virtual/range {p15 .. p15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_314

    .line 1355
    move-object/from16 v0, p15

    move-object/from16 v1, v38

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    .line 1357
    :cond_314
    if-eqz v16, :cond_331

    move-object/from16 v0, p12

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_webPagePending;

    if-eqz v4, :cond_331

    .line 1358
    move-object/from16 v0, p12

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$WebPage;->url:Ljava/lang/String;

    if-eqz v4, :cond_389

    .line 1359
    new-instance v41, Lorg/telegram/tgnet/TLRPC$TL_webPageUrlPending;

    invoke-direct/range {v41 .. v41}, Lorg/telegram/tgnet/TLRPC$TL_webPageUrlPending;-><init>()V

    .line 1360
    .local v41, "newWebPage":Lorg/telegram/tgnet/TLRPC$WebPage;
    move-object/from16 v0, p12

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$WebPage;->url:Ljava/lang/String;

    move-object/from16 v0, v41

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$WebPage;->url:Ljava/lang/String;

    .line 1361
    move-object/from16 p12, v41

    .line 1366
    .end local v41    # "newWebPage":Lorg/telegram/tgnet/TLRPC$WebPage;
    :cond_331
    :goto_331
    if-nez p12, :cond_38c

    .line 1367
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;-><init>()V

    move-object/from16 v0, v38

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 1372
    :goto_33c
    if-eqz p17, :cond_39e

    const-string v4, "query_id"

    move-object/from16 v0, p17

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_39e

    .line 1373
    const/16 v54, 0x9

    .line 1377
    :goto_34a
    move-object/from16 v0, p1

    move-object/from16 v1, v38

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    .line 1501
    :cond_350
    :goto_350
    move-object/from16 v0, v38

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    if-nez v4, :cond_35c

    .line 1502
    const-string v4, ""

    move-object/from16 v0, v38

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    .line 1504
    :cond_35c
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getNewMessageId()I

    move-result v4

    move-object/from16 v0, v38

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    move-object/from16 v0, v38

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->local_id:I

    .line 1505
    const/4 v4, 0x1

    move-object/from16 v0, v38

    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    .line 1506
    if-eqz v32, :cond_652

    if-eqz v48, :cond_652

    .line 1507
    move-object/from16 v0, v48

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$InputPeer;->channel_id:I

    neg-int v4, v4

    move-object/from16 v0, v38

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    .line 1512
    :goto_37a
    const/4 v4, 0x0

    invoke-static {v4}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    goto/16 :goto_b5

    .line 1352
    :cond_380
    new-instance v39, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct/range {v39 .. v39}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    .end local v38    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    .restart local v39    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    move-object/from16 v38, v39

    .end local v39    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    .restart local v38    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    goto/16 :goto_306

    .line 1363
    :cond_389
    const/16 p12, 0x0

    goto :goto_331

    .line 1369
    :cond_38c
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;-><init>()V

    move-object/from16 v0, v38

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 1370
    move-object/from16 v0, v38

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v0, p12

    iput-object v0, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    goto :goto_33c

    .line 1375
    :cond_39e
    const/16 v54, 0x0

    goto :goto_34a

    .line 1378
    :cond_3a1
    if-eqz p2, :cond_3d3

    .line 1379
    if-eqz v16, :cond_3c7

    .line 1380
    new-instance v39, Lorg/telegram/tgnet/TLRPC$TL_message_secret;

    invoke-direct/range {v39 .. v39}, Lorg/telegram/tgnet/TLRPC$TL_message_secret;-><init>()V

    .end local v38    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    .restart local v39    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    move-object/from16 v38, v39

    .line 1384
    .end local v39    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    .restart local v38    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    :goto_3ac
    move-object/from16 v0, p2

    move-object/from16 v1, v38

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 1385
    const-string v4, ""

    move-object/from16 v0, v38

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    .line 1386
    if-eqz p17, :cond_3cf

    const-string v4, "query_id"

    move-object/from16 v0, p17

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3cf

    .line 1387
    const/16 v54, 0x9

    goto :goto_350

    .line 1382
    :cond_3c7
    new-instance v39, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct/range {v39 .. v39}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    .end local v38    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    .restart local v39    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    move-object/from16 v38, v39

    .end local v39    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    .restart local v38    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    goto :goto_3ac

    .line 1389
    :cond_3cf
    const/16 v54, 0x1

    goto/16 :goto_350

    .line 1391
    :cond_3d3
    if-eqz p3, :cond_464

    .line 1392
    if-eqz v16, :cond_42d

    .line 1393
    new-instance v39, Lorg/telegram/tgnet/TLRPC$TL_message_secret;

    invoke-direct/range {v39 .. v39}, Lorg/telegram/tgnet/TLRPC$TL_message_secret;-><init>()V

    .end local v38    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    .restart local v39    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    move-object/from16 v38, v39

    .line 1397
    .end local v39    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    .restart local v38    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    :goto_3de
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;-><init>()V

    move-object/from16 v0, v38

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 1398
    move-object/from16 v0, v38

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v0, p3

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_photo;->caption:Ljava/lang/String;

    if-eqz v4, :cond_435

    move-object/from16 v0, p3

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_photo;->caption:Ljava/lang/String;

    :goto_3f5
    iput-object v4, v6, Lorg/telegram/tgnet/TLRPC$MessageMedia;->caption:Ljava/lang/String;

    .line 1399
    move-object/from16 v0, v38

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v0, p3

    iput-object v0, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    .line 1400
    if-eqz p17, :cond_438

    const-string v4, "query_id"

    move-object/from16 v0, p17

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_438

    .line 1401
    const/16 v54, 0x9

    .line 1405
    :goto_40d
    const-string v4, "-1"

    move-object/from16 v0, v38

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    .line 1406
    if-eqz p10, :cond_43b

    invoke-virtual/range {p10 .. p10}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_43b

    const-string v4, "http"

    move-object/from16 v0, p10

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_43b

    .line 1407
    move-object/from16 v0, p10

    move-object/from16 v1, v38

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    goto/16 :goto_350

    .line 1395
    :cond_42d
    new-instance v39, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct/range {v39 .. v39}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    .end local v38    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    .restart local v39    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    move-object/from16 v38, v39

    .end local v39    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    .restart local v38    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    goto :goto_3de

    .line 1398
    :cond_435
    const-string v4, ""

    goto :goto_3f5

    .line 1403
    :cond_438
    const/16 v54, 0x2

    goto :goto_40d

    .line 1409
    :cond_43b
    move-object/from16 v0, p3

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_photo;->sizes:Ljava/util/ArrayList;

    move-object/from16 v0, p3

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v0, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-object/from16 v33, v0

    .line 1410
    .local v33, "location1":Lorg/telegram/tgnet/TLRPC$FileLocation;
    const/4 v4, 0x1

    move-object/from16 v0, v33

    invoke-static {v0, v4}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v38

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    goto/16 :goto_350

    .line 1412
    .end local v33    # "location1":Lorg/telegram/tgnet/TLRPC$FileLocation;
    :cond_464
    if-eqz p7, :cond_49c

    .line 1413
    new-instance v39, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct/range {v39 .. v39}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V
    :try_end_46b
    .catch Ljava/lang/Exception; {:try_start_2b6 .. :try_end_46b} :catch_1da

    .line 1414
    .end local v38    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    .restart local v39    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    :try_start_46b
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGame;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGame;-><init>()V

    move-object/from16 v0, v39

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 1415
    move-object/from16 v0, v39

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    const-string v6, ""

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->caption:Ljava/lang/String;

    .line 1416
    move-object/from16 v0, v39

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v0, p7

    iput-object v0, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->game:Lorg/telegram/tgnet/TLRPC$TL_game;

    .line 1417
    const-string v4, ""

    move-object/from16 v0, v39

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    .line 1418
    if-eqz p17, :cond_163e

    const-string v4, "query_id"

    move-object/from16 v0, p17

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z
    :try_end_493
    .catch Ljava/lang/Exception; {:try_start_46b .. :try_end_493} :catch_1637

    move-result v4

    if-eqz v4, :cond_163e

    .line 1419
    const/16 v54, 0x9

    move-object/from16 v38, v39

    .end local v39    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    .restart local v38    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    goto/16 :goto_350

    .line 1421
    :cond_49c
    if-eqz p5, :cond_522

    .line 1422
    if-eqz v16, :cond_516

    .line 1423
    :try_start_4a0
    new-instance v39, Lorg/telegram/tgnet/TLRPC$TL_message_secret;

    invoke-direct/range {v39 .. v39}, Lorg/telegram/tgnet/TLRPC$TL_message_secret;-><init>()V

    .end local v38    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    .restart local v39    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    move-object/from16 v38, v39

    .line 1427
    .end local v39    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    .restart local v38    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    :goto_4a7
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaContact;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaContact;-><init>()V

    move-object/from16 v0, v38

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 1428
    move-object/from16 v0, v38

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v0, p5

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->phone_number:Ljava/lang/String;

    .line 1429
    move-object/from16 v0, v38

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v0, p5

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->first_name:Ljava/lang/String;

    .line 1430
    move-object/from16 v0, v38

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v0, p5

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->last_name:Ljava/lang/String;

    .line 1431
    move-object/from16 v0, v38

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v0, p5

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$User;->id:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->user_id:I

    .line 1432
    move-object/from16 v0, v38

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->first_name:Ljava/lang/String;

    if-nez v4, :cond_4ec

    .line 1433
    move-object/from16 v0, v38

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    const-string v6, ""

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->first_name:Ljava/lang/String;

    move-object/from16 v0, p5

    iput-object v6, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    .line 1435
    :cond_4ec
    move-object/from16 v0, v38

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->last_name:Ljava/lang/String;

    if-nez v4, :cond_500

    .line 1436
    move-object/from16 v0, v38

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    const-string v6, ""

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->last_name:Ljava/lang/String;

    move-object/from16 v0, p5

    iput-object v6, v0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    .line 1438
    :cond_500
    const-string v4, ""

    move-object/from16 v0, v38

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    .line 1439
    if-eqz p17, :cond_51e

    const-string v4, "query_id"

    move-object/from16 v0, p17

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_51e

    .line 1440
    const/16 v54, 0x9

    goto/16 :goto_350

    .line 1425
    :cond_516
    new-instance v39, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct/range {v39 .. v39}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    .end local v38    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    .restart local v39    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    move-object/from16 v38, v39

    .end local v39    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    .restart local v38    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    goto :goto_4a7

    .line 1442
    :cond_51e
    const/16 v54, 0x6

    goto/16 :goto_350

    .line 1444
    :cond_522
    if-eqz p6, :cond_350

    .line 1445
    if-eqz v16, :cond_5f4

    .line 1446
    new-instance v39, Lorg/telegram/tgnet/TLRPC$TL_message_secret;

    invoke-direct/range {v39 .. v39}, Lorg/telegram/tgnet/TLRPC$TL_message_secret;-><init>()V

    .end local v38    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    .restart local v39    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    move-object/from16 v38, v39

    .line 1450
    .end local v39    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    .restart local v38    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    :goto_52d
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;-><init>()V

    move-object/from16 v0, v38

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 1451
    move-object/from16 v0, v38

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->caption:Ljava/lang/String;

    if-eqz v4, :cond_5fd

    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->caption:Ljava/lang/String;

    :goto_544
    iput-object v4, v6, Lorg/telegram/tgnet/TLRPC$MessageMedia;->caption:Ljava/lang/String;

    .line 1452
    move-object/from16 v0, v38

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v0, p6

    iput-object v0, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 1453
    if-eqz p17, :cond_601

    const-string v4, "query_id"

    move-object/from16 v0, p17

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_601

    .line 1454
    const/16 v54, 0x9

    .line 1462
    :goto_55c
    if-nez p4, :cond_61b

    .line 1463
    const-string v4, "-1"

    move-object/from16 v0, v38

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    .line 1467
    :goto_564
    if-eqz v16, :cond_625

    move-object/from16 v0, p6

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->dc_id:I

    if-lez v4, :cond_625

    invoke-static/range {p6 .. p6}, Lorg/telegram/messenger/MessageObject;->isStickerDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v4

    if-nez v4, :cond_625

    .line 1468
    invoke-static/range {p6 .. p6}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v38

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    .line 1472
    :goto_57e
    if-eqz v16, :cond_350

    invoke-static/range {p6 .. p6}, Lorg/telegram/messenger/MessageObject;->isStickerDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v4

    if-eqz v4, :cond_350

    .line 1473
    const/16 v20, 0x0

    .local v20, "a":I
    :goto_588
    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v20

    if-ge v0, v4, :cond_350

    .line 1474
    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->attributes:Ljava/util/ArrayList;

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    .line 1475
    .local v22, "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    move-object/from16 v0, v22

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeSticker;

    if-eqz v4, :cond_64e

    .line 1476
    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->attributes:Ljava/util/ArrayList;

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1477
    new-instance v23, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeSticker_layer55;

    invoke-direct/range {v23 .. v23}, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeSticker_layer55;-><init>()V

    .line 1478
    .local v23, "attributeSticker":Lorg/telegram/tgnet/TLRPC$TL_documentAttributeSticker_layer55;
    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->attributes:Ljava/util/ArrayList;

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1479
    move-object/from16 v0, v22

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->alt:Ljava/lang/String;

    move-object/from16 v0, v23

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeSticker_layer55;->alt:Ljava/lang/String;

    .line 1480
    move-object/from16 v0, v22

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->stickerset:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    if-eqz v4, :cond_643

    .line 1482
    move-object/from16 v0, v22

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->stickerset:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetShortName;

    if-eqz v4, :cond_62d

    .line 1483
    move-object/from16 v0, v22

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->stickerset:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    iget-object v0, v4, Lorg/telegram/tgnet/TLRPC$InputStickerSet;->short_name:Ljava/lang/String;

    move-object/from16 v37, v0

    .line 1487
    .local v37, "name":Ljava/lang/String;
    :goto_5db
    invoke-static/range {v37 .. v37}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_638

    .line 1488
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetShortName;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetShortName;-><init>()V

    move-object/from16 v0, v23

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeSticker_layer55;->stickerset:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    .line 1489
    move-object/from16 v0, v23

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeSticker_layer55;->stickerset:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    move-object/from16 v0, v37

    iput-object v0, v4, Lorg/telegram/tgnet/TLRPC$InputStickerSet;->short_name:Ljava/lang/String;

    goto/16 :goto_350

    .line 1448
    .end local v20    # "a":I
    .end local v22    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    .end local v23    # "attributeSticker":Lorg/telegram/tgnet/TLRPC$TL_documentAttributeSticker_layer55;
    .end local v37    # "name":Ljava/lang/String;
    :cond_5f4
    new-instance v39, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct/range {v39 .. v39}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    .end local v38    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    .restart local v39    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    move-object/from16 v38, v39

    .end local v39    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    .restart local v38    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    goto/16 :goto_52d

    .line 1451
    :cond_5fd
    const-string v4, ""

    goto/16 :goto_544

    .line 1455
    :cond_601
    invoke-static/range {p6 .. p6}, Lorg/telegram/messenger/MessageObject;->isVideoDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v4

    if-nez v4, :cond_609

    if-eqz p4, :cond_60d

    .line 1456
    :cond_609
    const/16 v54, 0x3

    goto/16 :goto_55c

    .line 1457
    :cond_60d
    invoke-static/range {p6 .. p6}, Lorg/telegram/messenger/MessageObject;->isVoiceDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v4

    if-eqz v4, :cond_617

    .line 1458
    const/16 v54, 0x8

    goto/16 :goto_55c

    .line 1460
    :cond_617
    const/16 v54, 0x7

    goto/16 :goto_55c

    .line 1465
    :cond_61b
    invoke-virtual/range {p4 .. p4}, Lorg/telegram/messenger/VideoEditedInfo;->getString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v38

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    goto/16 :goto_564

    .line 1470
    :cond_625
    move-object/from16 v0, p10

    move-object/from16 v1, v38

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    goto/16 :goto_57e

    .line 1485
    .restart local v20    # "a":I
    .restart local v22    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    .restart local v23    # "attributeSticker":Lorg/telegram/tgnet/TLRPC$TL_documentAttributeSticker_layer55;
    :cond_62d
    move-object/from16 v0, v22

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->stickerset:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    iget-wide v8, v4, Lorg/telegram/tgnet/TLRPC$InputStickerSet;->id:J

    invoke-static {v8, v9}, Lorg/telegram/messenger/query/StickersQuery;->getStickerSetName(J)Ljava/lang/String;

    move-result-object v37

    .restart local v37    # "name":Ljava/lang/String;
    goto :goto_5db

    .line 1491
    :cond_638
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetEmpty;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetEmpty;-><init>()V

    move-object/from16 v0, v23

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeSticker_layer55;->stickerset:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    goto/16 :goto_350

    .line 1494
    .end local v37    # "name":Ljava/lang/String;
    :cond_643
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetEmpty;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetEmpty;-><init>()V

    move-object/from16 v0, v23

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeSticker_layer55;->stickerset:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    goto/16 :goto_350

    .line 1473
    .end local v23    # "attributeSticker":Lorg/telegram/tgnet/TLRPC$TL_documentAttributeSticker_layer55;
    :cond_64e
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_588

    .line 1509
    .end local v20    # "a":I
    .end local v22    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :cond_652
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v4

    move-object/from16 v0, v38

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    .line 1510
    move-object/from16 v0, v38

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    or-int/lit16 v4, v4, 0x100

    move-object/from16 v0, v38

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    goto/16 :goto_37a

    .line 1524
    :cond_666
    const-string v4, "bot"

    move-object/from16 v0, p17

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, v38

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->via_bot_id:I

    goto/16 :goto_ef

    .line 1542
    .restart local v25    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_67e
    const/4 v4, 0x1

    move-object/from16 v0, v38

    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->post:Z

    .line 1543
    move-object/from16 v0, v25

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Chat;->signatures:Z

    if-eqz v4, :cond_152

    .line 1544
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v4

    move-object/from16 v0, v38

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    goto/16 :goto_152

    .line 1549
    .end local v25    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_693
    const/4 v4, 0x1

    move-object/from16 v0, v38

    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->unread:Z

    goto/16 :goto_152

    .line 1559
    :cond_69a
    move-object/from16 v0, v38

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    or-int/lit8 v4, v4, 0x8

    move-object/from16 v0, v38

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    goto/16 :goto_186

    .line 1575
    :cond_6a6
    new-instance v50, Ljava/util/ArrayList;

    invoke-direct/range {v50 .. v50}, Ljava/util/ArrayList;-><init>()V
    :try_end_6ab
    .catch Ljava/lang/Exception; {:try_start_4a0 .. :try_end_6ab} :catch_1da

    .line 1576
    .end local v49    # "sendToPeers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$InputUser;>;"
    .local v50, "sendToPeers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$InputUser;>;"
    :try_start_6ab
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper;->currentChatInfo:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_6b7
    :goto_6b7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6e8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    .line 1577
    .local v44, "participant":Lorg/telegram/tgnet/TLRPC$ChatParticipant;
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    move-object/from16 v0, v44

    iget v8, v0, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v51

    .line 1578
    .local v51, "sendToUser":Lorg/telegram/tgnet/TLRPC$User;
    invoke-static/range {v51 .. v51}, Lorg/telegram/messenger/MessagesController;->getInputUser(Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v45

    .line 1579
    .local v45, "peerUser":Lorg/telegram/tgnet/TLRPC$InputUser;
    if-eqz v45, :cond_6b7

    .line 1580
    move-object/from16 v0, v50

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6b7

    .line 2173
    .end local v44    # "participant":Lorg/telegram/tgnet/TLRPC$ChatParticipant;
    .end local v45    # "peerUser":Lorg/telegram/tgnet/TLRPC$InputUser;
    .end local v51    # "sendToUser":Lorg/telegram/tgnet/TLRPC$User;
    :catch_6e1
    move-exception v29

    move-object/from16 v49, v50

    .end local v50    # "sendToPeers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$InputUser;>;"
    .restart local v49    # "sendToPeers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$InputUser;>;"
    move-object/from16 v12, v40

    .end local v40    # "newMsgObj":Lorg/telegram/messenger/MessageObject;
    .restart local v12    # "newMsgObj":Lorg/telegram/messenger/MessageObject;
    goto/16 :goto_1dd

    .line 1583
    .end local v12    # "newMsgObj":Lorg/telegram/messenger/MessageObject;
    .end local v49    # "sendToPeers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$InputUser;>;"
    .restart local v40    # "newMsgObj":Lorg/telegram/messenger/MessageObject;
    .restart local v50    # "sendToPeers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$InputUser;>;"
    :cond_6e8
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_peerChat;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_peerChat;-><init>()V

    move-object/from16 v0, v38

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 1584
    move-object/from16 v0, v38

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move/from16 v0, v34

    iput v0, v4, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I
    :try_end_6f9
    .catch Ljava/lang/Exception; {:try_start_6ab .. :try_end_6f9} :catch_6e1

    move-object/from16 v49, v50

    .line 1630
    .end local v50    # "sendToPeers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$InputUser;>;"
    .restart local v49    # "sendToPeers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$InputUser;>;"
    :cond_6fb
    :goto_6fb
    const/4 v4, 0x1

    move/from16 v0, v30

    if-eq v0, v4, :cond_713

    :try_start_700
    invoke-static/range {v38 .. v38}, Lorg/telegram/messenger/MessageObject;->isVoiceMessage(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v4

    if-eqz v4, :cond_713

    move-object/from16 v0, v38

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    if-nez v4, :cond_713

    .line 1631
    const/4 v4, 0x1

    move-object/from16 v0, v38

    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media_unread:Z

    .line 1634
    :cond_713
    const/4 v4, 0x1

    move-object/from16 v0, v38

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->send_state:I

    .line 1635
    new-instance v12, Lorg/telegram/messenger/MessageObject;

    const/4 v4, 0x0

    const/4 v6, 0x1

    move-object/from16 v0, v38

    invoke-direct {v12, v0, v4, v6}, Lorg/telegram/messenger/MessageObject;-><init>(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/AbstractMap;Z)V
    :try_end_721
    .catch Ljava/lang/Exception; {:try_start_700 .. :try_end_721} :catch_1da

    .line 1636
    .end local v40    # "newMsgObj":Lorg/telegram/messenger/MessageObject;
    .restart local v12    # "newMsgObj":Lorg/telegram/messenger/MessageObject;
    :try_start_721
    move-object/from16 v0, p11

    iput-object v0, v12, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    .line 1637
    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->isForwarded()Z

    move-result v4

    if-nez v4, :cond_73f

    iget v4, v12, Lorg/telegram/messenger/MessageObject;->type:I

    const/4 v6, 0x3

    if-eq v4, v6, :cond_732

    if-eqz p4, :cond_73f

    :cond_732
    move-object/from16 v0, v38

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_73f

    .line 1638
    const/4 v4, 0x1

    iput-boolean v4, v12, Lorg/telegram/messenger/MessageObject;->attachPathExists:Z

    .line 1641
    :cond_73f
    new-instance v42, Ljava/util/ArrayList;

    invoke-direct/range {v42 .. v42}, Ljava/util/ArrayList;-><init>()V

    .line 1642
    .local v42, "objArr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    move-object/from16 v0, v42

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1643
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1644
    .local v5, "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    move-object/from16 v0, v38

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1645
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Lorg/telegram/messenger/MessagesStorage;->putMessages(Ljava/util/ArrayList;ZZZI)V

    .line 1646
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    move-wide/from16 v0, p8

    move-object/from16 v2, v42

    invoke-virtual {v4, v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->updateInterfaceWithMessages(JLjava/util/ArrayList;)V

    .line 1647
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v4

    sget v6, Lorg/telegram/messenger/NotificationCenter;->dialogsNeedReload:I

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v4, v6, v8}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 1649
    sget-boolean v4, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz v4, :cond_7bf

    .line 1650
    if-eqz v48, :cond_7bf

    .line 1651
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "send message user_id = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v48

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$InputPeer;->user_id:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " chat_id = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v48

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$InputPeer;->chat_id:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " channel_id = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v48

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$InputPeer;->channel_id:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " access_hash = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v48

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$InputPeer;->access_hash:J

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 1655
    :cond_7bf
    if-eqz v54, :cond_7cb

    const/16 v4, 0x9

    move/from16 v0, v54

    if-ne v0, v4, :cond_a2c

    if-eqz p1, :cond_a2c

    if-eqz v16, :cond_a2c

    .line 1656
    :cond_7cb
    if-nez v16, :cond_98f

    .line 1657
    if-eqz v49, :cond_913

    .line 1658
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendBroadcast;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_messages_sendBroadcast;-><init>()V

    .line 1659
    .local v7, "reqSend":Lorg/telegram/tgnet/TLRPC$TL_messages_sendBroadcast;
    new-instance v46, Ljava/util/ArrayList;

    invoke-direct/range {v46 .. v46}, Ljava/util/ArrayList;-><init>()V

    .line 1660
    .local v46, "random_ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/16 v20, 0x0

    .restart local v20    # "a":I
    :goto_7db
    invoke-virtual/range {v49 .. v49}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v20

    if-ge v0, v4, :cond_8f5

    .line 1661
    sget-object v4, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-virtual {v4}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v46

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_7f2
    .catch Ljava/lang/Exception; {:try_start_721 .. :try_end_7f2} :catch_910

    .line 1660
    add-int/lit8 v20, v20, 0x1

    goto :goto_7db

    .line 1586
    .end local v5    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    .end local v7    # "reqSend":Lorg/telegram/tgnet/TLRPC$TL_messages_sendBroadcast;
    .end local v12    # "newMsgObj":Lorg/telegram/messenger/MessageObject;
    .end local v20    # "a":I
    .end local v42    # "objArr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .end local v46    # "random_ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .restart local v40    # "newMsgObj":Lorg/telegram/messenger/MessageObject;
    :cond_7f5
    :try_start_7f5
    invoke-static/range {v34 .. v34}, Lorg/telegram/messenger/MessagesController;->getPeer(I)Lorg/telegram/tgnet/TLRPC$Peer;

    move-result-object v4

    move-object/from16 v0, v38

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 1587
    if-lez v34, :cond_6fb

    .line 1588
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v51

    .line 1589
    .restart local v51    # "sendToUser":Lorg/telegram/tgnet/TLRPC$User;
    if-nez v51, :cond_818

    .line 1590
    move-object/from16 v0, v38

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/SendMessagesHelper;->processSentMessage(I)V

    goto/16 :goto_6

    .line 1593
    :cond_818
    move-object/from16 v0, v51

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-eqz v4, :cond_6fb

    .line 1594
    const/4 v4, 0x0

    move-object/from16 v0, v38

    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->unread:Z

    goto/16 :goto_6fb

    .line 1599
    .end local v51    # "sendToUser":Lorg/telegram/tgnet/TLRPC$User;
    :cond_825
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    move-object/from16 v0, v38

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 1600
    move-object/from16 v0, v16

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->participant_id:I

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v6

    if-ne v4, v6, :cond_89e

    .line 1601
    move-object/from16 v0, v38

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v0, v16

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->admin_id:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    .line 1605
    :goto_842
    move-object/from16 v0, v16

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->ttl:I

    move-object/from16 v0, v38

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I

    .line 1606
    move-object/from16 v0, v38

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I

    if-eqz v4, :cond_6fb

    move-object/from16 v0, v38

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v4, :cond_6fb

    .line 1607
    invoke-static/range {v38 .. v38}, Lorg/telegram/messenger/MessageObject;->isVoiceMessage(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v4

    if-eqz v4, :cond_8ac

    .line 1608
    const/16 v28, 0x0

    .line 1609
    .local v28, "duration":I
    const/16 v20, 0x0

    .restart local v20    # "a":I
    :goto_862
    move-object/from16 v0, v38

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v20

    if-ge v0, v4, :cond_88e

    .line 1610
    move-object/from16 v0, v38

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    .line 1611
    .restart local v22    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    move-object/from16 v0, v22

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;

    if-eqz v4, :cond_8a9

    .line 1612
    move-object/from16 v0, v22

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->duration:I

    move/from16 v28, v0

    .line 1616
    .end local v22    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :cond_88e
    move-object/from16 v0, v16

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->ttl:I

    add-int/lit8 v6, v28, 0x1

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    move-object/from16 v0, v38

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I

    goto/16 :goto_6fb

    .line 1603
    .end local v20    # "a":I
    .end local v28    # "duration":I
    :cond_89e
    move-object/from16 v0, v38

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v0, v16

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->participant_id:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    goto :goto_842

    .line 1609
    .restart local v20    # "a":I
    .restart local v22    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    .restart local v28    # "duration":I
    :cond_8a9
    add-int/lit8 v20, v20, 0x1

    goto :goto_862

    .line 1617
    .end local v20    # "a":I
    .end local v22    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    .end local v28    # "duration":I
    :cond_8ac
    invoke-static/range {v38 .. v38}, Lorg/telegram/messenger/MessageObject;->isVideoMessage(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v4

    if-eqz v4, :cond_6fb

    .line 1618
    const/16 v28, 0x0

    .line 1619
    .restart local v28    # "duration":I
    const/16 v20, 0x0

    .restart local v20    # "a":I
    :goto_8b6
    move-object/from16 v0, v38

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v20

    if-ge v0, v4, :cond_8e2

    .line 1620
    move-object/from16 v0, v38

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    .line 1621
    .restart local v22    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    move-object/from16 v0, v22

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;

    if-eqz v4, :cond_8f2

    .line 1622
    move-object/from16 v0, v22

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->duration:I

    move/from16 v28, v0

    .line 1626
    .end local v22    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :cond_8e2
    move-object/from16 v0, v16

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->ttl:I

    add-int/lit8 v6, v28, 0x1

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    move-object/from16 v0, v38

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I
    :try_end_8f0
    .catch Ljava/lang/Exception; {:try_start_7f5 .. :try_end_8f0} :catch_1da

    goto/16 :goto_6fb

    .line 1619
    .restart local v22    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :cond_8f2
    add-int/lit8 v20, v20, 0x1

    goto :goto_8b6

    .line 1663
    .end local v22    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    .end local v28    # "duration":I
    .end local v40    # "newMsgObj":Lorg/telegram/messenger/MessageObject;
    .restart local v5    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    .restart local v7    # "reqSend":Lorg/telegram/tgnet/TLRPC$TL_messages_sendBroadcast;
    .restart local v12    # "newMsgObj":Lorg/telegram/messenger/MessageObject;
    .restart local v42    # "objArr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .restart local v46    # "random_ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_8f5
    :try_start_8f5
    move-object/from16 v0, p1

    iput-object v0, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendBroadcast;->message:Ljava/lang/String;

    .line 1664
    move-object/from16 v0, v49

    iput-object v0, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendBroadcast;->contacts:Ljava/util/ArrayList;

    .line 1665
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_inputMediaEmpty;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaEmpty;-><init>()V

    iput-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendBroadcast;->media:Lorg/telegram/tgnet/TLRPC$InputMedia;

    .line 1666
    move-object/from16 v0, v46

    iput-object v0, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendBroadcast;->random_id:Ljava/util/ArrayList;

    .line 1667
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v12, v4}, Lorg/telegram/messenger/SendMessagesHelper;->performSendMessageRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 2173
    .end local v5    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    .end local v7    # "reqSend":Lorg/telegram/tgnet/TLRPC$TL_messages_sendBroadcast;
    .end local v20    # "a":I
    .end local v42    # "objArr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .end local v46    # "random_ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :catch_910
    move-exception v29

    goto/16 :goto_1dd

    .line 1669
    .restart local v5    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    .restart local v42    # "objArr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    :cond_913
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;-><init>()V

    .line 1670
    .local v7, "reqSend":Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;
    move-object/from16 v0, p1

    iput-object v0, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;->message:Ljava/lang/String;

    .line 1671
    if-nez p14, :cond_98d

    const/4 v4, 0x1

    :goto_91f
    iput-boolean v4, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;->clear_draft:Z

    .line 1672
    move-object/from16 v0, v38

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;

    if-eqz v4, :cond_94e

    .line 1673
    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v6, "Notifications"

    const/4 v8, 0x0

    invoke-virtual {v4, v6, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "silent_"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p8

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    invoke-interface {v4, v6, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;->silent:Z

    .line 1675
    :cond_94e
    move-object/from16 v0, v48

    iput-object v0, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 1676
    move-object/from16 v0, v38

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    iput-wide v8, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;->random_id:J

    .line 1677
    if-eqz p11, :cond_966

    .line 1678
    iget v4, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;->flags:I

    or-int/lit8 v4, v4, 0x1

    iput v4, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;->flags:I

    .line 1679
    invoke-virtual/range {p11 .. p11}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    iput v4, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;->reply_to_msg_id:I

    .line 1681
    :cond_966
    if-nez p13, :cond_96b

    .line 1682
    const/4 v4, 0x1

    iput-boolean v4, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;->no_webpage:Z

    .line 1684
    :cond_96b
    if-eqz p15, :cond_97d

    invoke-virtual/range {p15 .. p15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_97d

    .line 1685
    move-object/from16 v0, p15

    iput-object v0, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;->entities:Ljava/util/ArrayList;

    .line 1686
    iget v4, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;->flags:I

    or-int/lit8 v4, v4, 0x8

    iput v4, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;->flags:I

    .line 1688
    :cond_97d
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v12, v4}, Lorg/telegram/messenger/SendMessagesHelper;->performSendMessageRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;)V

    .line 1689
    if-nez p14, :cond_6

    .line 1690
    const/4 v4, 0x0

    move-wide/from16 v0, p8

    invoke-static {v0, v1, v4}, Lorg/telegram/messenger/query/DraftQuery;->cleanDraft(JZ)V

    goto/16 :goto_6

    .line 1671
    :cond_98d
    const/4 v4, 0x0

    goto :goto_91f

    .line 1695
    .end local v7    # "reqSend":Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;
    :cond_98f
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;-><init>()V

    .line 1696
    .local v7, "reqSend":Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;
    move-object/from16 v0, v38

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I

    iput v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->ttl:I

    .line 1697
    if-eqz p15, :cond_9ac

    invoke-virtual/range {p15 .. p15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_9ac

    .line 1698
    move-object/from16 v0, p15

    iput-object v0, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->entities:Ljava/util/ArrayList;

    .line 1699
    iget v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->flags:I

    or-int/lit16 v4, v4, 0x80

    iput v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->flags:I

    .line 1701
    :cond_9ac
    if-eqz p11, :cond_9c8

    move-object/from16 v0, p11

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v8, v4, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    const-wide/16 v14, 0x0

    cmp-long v4, v8, v14

    if-eqz v4, :cond_9c8

    .line 1702
    move-object/from16 v0, p11

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v8, v4, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    iput-wide v8, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->reply_to_random_id:J

    .line 1703
    iget v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->flags:I

    or-int/lit8 v4, v4, 0x8

    iput v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->flags:I

    .line 1705
    :cond_9c8
    if-eqz p17, :cond_9e6

    const-string v4, "bot_name"

    move-object/from16 v0, p17

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_9e6

    .line 1706
    const-string v4, "bot_name"

    move-object/from16 v0, p17

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->via_bot_name:Ljava/lang/String;

    .line 1707
    iget v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->flags:I

    or-int/lit16 v4, v4, 0x800

    iput v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->flags:I

    .line 1709
    :cond_9e6
    move-object/from16 v0, v38

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    iput-wide v8, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->random_id:J

    .line 1710
    move-object/from16 v0, p1

    iput-object v0, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->message:Ljava/lang/String;

    .line 1711
    if-eqz p12, :cond_a24

    move-object/from16 v0, p12

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$WebPage;->url:Ljava/lang/String;

    if-eqz v4, :cond_a24

    .line 1712
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaWebPage;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaWebPage;-><init>()V

    iput-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    .line 1713
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p12

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$WebPage;->url:Ljava/lang/String;

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->url:Ljava/lang/String;

    .line 1714
    iget v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->flags:I

    or-int/lit16 v4, v4, 0x200

    iput v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->flags:I

    .line 1718
    :goto_a0d
    invoke-static {}, Lorg/telegram/messenger/SecretChatHelper;->getInstance()Lorg/telegram/messenger/SecretChatHelper;

    move-result-object v6

    iget-object v8, v12, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v9, v16

    invoke-virtual/range {v6 .. v12}, Lorg/telegram/messenger/SecretChatHelper;->performSendEncryptedRequest(Lorg/telegram/tgnet/TLRPC$DecryptedMessage;Lorg/telegram/tgnet/TLRPC$Message;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;Ljava/lang/String;Lorg/telegram/messenger/MessageObject;)V

    .line 1719
    if-nez p14, :cond_6

    .line 1720
    const/4 v4, 0x0

    move-wide/from16 v0, p8

    invoke-static {v0, v1, v4}, Lorg/telegram/messenger/query/DraftQuery;->cleanDraft(JZ)V

    goto/16 :goto_6

    .line 1716
    :cond_a24
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaEmpty;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaEmpty;-><init>()V

    iput-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    goto :goto_a0d

    .line 1723
    .end local v7    # "reqSend":Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;
    :cond_a2c
    const/4 v4, 0x1

    move/from16 v0, v54

    if-lt v0, v4, :cond_a36

    const/4 v4, 0x3

    move/from16 v0, v54

    if-le v0, v4, :cond_a49

    :cond_a36
    const/4 v4, 0x5

    move/from16 v0, v54

    if-lt v0, v4, :cond_a41

    const/16 v4, 0x8

    move/from16 v0, v54

    if-le v0, v4, :cond_a49

    :cond_a41
    const/16 v4, 0x9

    move/from16 v0, v54

    if-ne v0, v4, :cond_14f1

    if-eqz v16, :cond_14f1

    .line 1724
    :cond_a49
    if-nez v16, :cond_f45

    .line 1725
    const/16 v31, 0x0

    .line 1726
    .local v31, "inputMedia":Lorg/telegram/tgnet/TLRPC$InputMedia;
    const/16 v27, 0x0

    .line 1727
    .local v27, "delayedMessage":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    const/4 v4, 0x1

    move/from16 v0, v54

    if-ne v0, v4, :cond_ace

    .line 1728
    move-object/from16 v0, p2

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;

    if-eqz v4, :cond_ac8

    .line 1729
    new-instance v31, Lorg/telegram/tgnet/TLRPC$TL_inputMediaVenue;

    .end local v31    # "inputMedia":Lorg/telegram/tgnet/TLRPC$InputMedia;
    invoke-direct/range {v31 .. v31}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaVenue;-><init>()V

    .line 1730
    .restart local v31    # "inputMedia":Lorg/telegram/tgnet/TLRPC$InputMedia;
    move-object/from16 v0, p2

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->address:Ljava/lang/String;

    move-object/from16 v0, v31

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->address:Ljava/lang/String;

    .line 1731
    move-object/from16 v0, p2

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->title:Ljava/lang/String;

    move-object/from16 v0, v31

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->title:Ljava/lang/String;

    .line 1732
    move-object/from16 v0, p2

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->provider:Ljava/lang/String;

    move-object/from16 v0, v31

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->provider:Ljava/lang/String;

    .line 1733
    move-object/from16 v0, p2

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->venue_id:Ljava/lang/String;

    move-object/from16 v0, v31

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->venue_id:Ljava/lang/String;

    .line 1737
    :goto_a7f
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_inputGeoPoint;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_inputGeoPoint;-><init>()V

    move-object/from16 v0, v31

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->geo_point:Lorg/telegram/tgnet/TLRPC$InputGeoPoint;

    .line 1738
    move-object/from16 v0, v31

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->geo_point:Lorg/telegram/tgnet/TLRPC$InputGeoPoint;

    move-object/from16 v0, p2

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    iget-wide v8, v6, Lorg/telegram/tgnet/TLRPC$GeoPoint;->lat:D

    iput-wide v8, v4, Lorg/telegram/tgnet/TLRPC$InputGeoPoint;->lat:D

    .line 1739
    move-object/from16 v0, v31

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->geo_point:Lorg/telegram/tgnet/TLRPC$InputGeoPoint;

    move-object/from16 v0, p2

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    iget-wide v8, v6, Lorg/telegram/tgnet/TLRPC$GeoPoint;->_long:D

    iput-wide v8, v4, Lorg/telegram/tgnet/TLRPC$InputGeoPoint;->_long:D

    .line 1857
    :cond_aa0
    :goto_aa0
    if-eqz v49, :cond_e4d

    .line 1858
    new-instance v47, Lorg/telegram/tgnet/TLRPC$TL_messages_sendBroadcast;

    invoke-direct/range {v47 .. v47}, Lorg/telegram/tgnet/TLRPC$TL_messages_sendBroadcast;-><init>()V

    .line 1859
    .local v47, "request":Lorg/telegram/tgnet/TLRPC$TL_messages_sendBroadcast;
    new-instance v46, Ljava/util/ArrayList;

    invoke-direct/range {v46 .. v46}, Ljava/util/ArrayList;-><init>()V

    .line 1860
    .restart local v46    # "random_ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/16 v20, 0x0

    .restart local v20    # "a":I
    :goto_aae
    invoke-virtual/range {v49 .. v49}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v20

    if-ge v0, v4, :cond_e16

    .line 1861
    sget-object v4, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-virtual {v4}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v46

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1860
    add-int/lit8 v20, v20, 0x1

    goto :goto_aae

    .line 1735
    .end local v20    # "a":I
    .end local v46    # "random_ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v47    # "request":Lorg/telegram/tgnet/TLRPC$TL_messages_sendBroadcast;
    :cond_ac8
    new-instance v31, Lorg/telegram/tgnet/TLRPC$TL_inputMediaGeoPoint;

    .end local v31    # "inputMedia":Lorg/telegram/tgnet/TLRPC$InputMedia;
    invoke-direct/range {v31 .. v31}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaGeoPoint;-><init>()V

    .restart local v31    # "inputMedia":Lorg/telegram/tgnet/TLRPC$InputMedia;
    goto :goto_a7f

    .line 1740
    :cond_ace
    const/4 v4, 0x2

    move/from16 v0, v54

    if-eq v0, v4, :cond_adb

    const/16 v4, 0x9

    move/from16 v0, v54

    if-ne v0, v4, :cond_bca

    if-eqz p3, :cond_bca

    .line 1741
    :cond_adb
    move-object/from16 v0, p3

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$TL_photo;->access_hash:J

    const-wide/16 v14, 0x0

    cmp-long v4, v8, v14

    if-nez v4, :cond_b93

    .line 1742
    new-instance v31, Lorg/telegram/tgnet/TLRPC$TL_inputMediaUploadedPhoto;

    .end local v31    # "inputMedia":Lorg/telegram/tgnet/TLRPC$InputMedia;
    invoke-direct/range {v31 .. v31}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaUploadedPhoto;-><init>()V

    .line 1743
    .restart local v31    # "inputMedia":Lorg/telegram/tgnet/TLRPC$InputMedia;
    move-object/from16 v0, p3

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_photo;->caption:Ljava/lang/String;

    if-eqz v4, :cond_b38

    move-object/from16 v0, p3

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_photo;->caption:Ljava/lang/String;

    :goto_af4
    move-object/from16 v0, v31

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->caption:Ljava/lang/String;

    .line 1744
    if-eqz p17, :cond_b45

    .line 1745
    const-string v4, "masks"

    move-object/from16 v0, p17

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Ljava/lang/String;

    .line 1746
    .local v35, "masks":Ljava/lang/String;
    if-eqz v35, :cond_b45

    .line 1747
    new-instance v52, Lorg/telegram/tgnet/SerializedData;

    invoke-static/range {v35 .. v35}, Lorg/telegram/messenger/Utilities;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v4

    move-object/from16 v0, v52

    invoke-direct {v0, v4}, Lorg/telegram/tgnet/SerializedData;-><init>([B)V

    .line 1748
    .local v52, "serializedData":Lorg/telegram/tgnet/SerializedData;
    const/4 v4, 0x0

    move-object/from16 v0, v52

    invoke-virtual {v0, v4}, Lorg/telegram/tgnet/SerializedData;->readInt32(Z)I

    move-result v26

    .line 1749
    .local v26, "count":I
    const/16 v20, 0x0

    .restart local v20    # "a":I
    :goto_b1a
    move/from16 v0, v20

    move/from16 v1, v26

    if-ge v0, v1, :cond_b3b

    .line 1750
    move-object/from16 v0, v31

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->stickers:Ljava/util/ArrayList;

    const/4 v6, 0x0

    move-object/from16 v0, v52

    invoke-virtual {v0, v6}, Lorg/telegram/tgnet/SerializedData;->readInt32(Z)I

    move-result v6

    const/4 v8, 0x0

    move-object/from16 v0, v52

    invoke-static {v0, v6, v8}, Lorg/telegram/tgnet/TLRPC$InputDocument;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$InputDocument;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1749
    add-int/lit8 v20, v20, 0x1

    goto :goto_b1a

    .line 1743
    .end local v20    # "a":I
    .end local v26    # "count":I
    .end local v35    # "masks":Ljava/lang/String;
    .end local v52    # "serializedData":Lorg/telegram/tgnet/SerializedData;
    :cond_b38
    const-string v4, ""

    goto :goto_af4

    .line 1752
    .restart local v20    # "a":I
    .restart local v26    # "count":I
    .restart local v35    # "masks":Ljava/lang/String;
    .restart local v52    # "serializedData":Lorg/telegram/tgnet/SerializedData;
    :cond_b3b
    move-object/from16 v0, v31

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->flags:I

    or-int/lit8 v4, v4, 0x1

    move-object/from16 v0, v31

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->flags:I

    .line 1755
    .end local v20    # "a":I
    .end local v26    # "count":I
    .end local v35    # "masks":Ljava/lang/String;
    .end local v52    # "serializedData":Lorg/telegram/tgnet/SerializedData;
    :cond_b45
    new-instance v27, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;

    .end local v27    # "delayedMessage":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;-><init>(Lorg/telegram/messenger/SendMessagesHelper;)V

    .line 1756
    .restart local v27    # "delayedMessage":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    move-object/from16 v0, v43

    move-object/from16 v1, v27

    iput-object v0, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->originalPath:Ljava/lang/String;

    .line 1757
    const/4 v4, 0x0

    move-object/from16 v0, v27

    iput v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->type:I

    .line 1758
    move-object/from16 v0, v27

    iput-object v12, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    .line 1759
    if-eqz p10, :cond_b77

    invoke-virtual/range {p10 .. p10}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_b77

    const-string v4, "http"

    move-object/from16 v0, p10

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b77

    .line 1760
    move-object/from16 v0, p10

    move-object/from16 v1, v27

    iput-object v0, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->httpLocation:Ljava/lang/String;

    goto/16 :goto_aa0

    .line 1762
    :cond_b77
    move-object/from16 v0, p3

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_photo;->sizes:Ljava/util/ArrayList;

    move-object/from16 v0, p3

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-object/from16 v0, v27

    iput-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    goto/16 :goto_aa0

    .line 1765
    :cond_b93
    new-instance v36, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPhoto;

    invoke-direct/range {v36 .. v36}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPhoto;-><init>()V

    .line 1766
    .local v36, "media":Lorg/telegram/tgnet/TLRPC$TL_inputMediaPhoto;
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_inputPhoto;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_inputPhoto;-><init>()V

    move-object/from16 v0, v36

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPhoto;->id:Lorg/telegram/tgnet/TLRPC$InputPhoto;

    .line 1767
    move-object/from16 v0, p3

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_photo;->caption:Ljava/lang/String;

    if-eqz v4, :cond_bc7

    move-object/from16 v0, p3

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_photo;->caption:Ljava/lang/String;

    :goto_bab
    move-object/from16 v0, v36

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPhoto;->caption:Ljava/lang/String;

    .line 1768
    move-object/from16 v0, v36

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPhoto;->id:Lorg/telegram/tgnet/TLRPC$InputPhoto;

    move-object/from16 v0, p3

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$TL_photo;->id:J

    iput-wide v8, v4, Lorg/telegram/tgnet/TLRPC$InputPhoto;->id:J

    .line 1769
    move-object/from16 v0, v36

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPhoto;->id:Lorg/telegram/tgnet/TLRPC$InputPhoto;

    move-object/from16 v0, p3

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$TL_photo;->access_hash:J

    iput-wide v8, v4, Lorg/telegram/tgnet/TLRPC$InputPhoto;->access_hash:J

    .line 1770
    move-object/from16 v31, v36

    .line 1771
    goto/16 :goto_aa0

    .line 1767
    :cond_bc7
    const-string v4, ""

    goto :goto_bab

    .line 1772
    .end local v36    # "media":Lorg/telegram/tgnet/TLRPC$TL_inputMediaPhoto;
    :cond_bca
    const/4 v4, 0x3

    move/from16 v0, v54

    if-ne v0, v4, :cond_c74

    .line 1773
    move-object/from16 v0, p6

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->access_hash:J

    const-wide/16 v14, 0x0

    cmp-long v4, v8, v14

    if-nez v4, :cond_c3d

    .line 1774
    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v4, :cond_c34

    .line 1775
    new-instance v31, Lorg/telegram/tgnet/TLRPC$TL_inputMediaUploadedThumbDocument;

    .end local v31    # "inputMedia":Lorg/telegram/tgnet/TLRPC$InputMedia;
    invoke-direct/range {v31 .. v31}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaUploadedThumbDocument;-><init>()V

    .line 1779
    .restart local v31    # "inputMedia":Lorg/telegram/tgnet/TLRPC$InputMedia;
    :goto_be6
    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->caption:Ljava/lang/String;

    if-eqz v4, :cond_c3a

    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->caption:Ljava/lang/String;

    :goto_bf0
    move-object/from16 v0, v31

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->caption:Ljava/lang/String;

    .line 1780
    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->mime_type:Ljava/lang/String;

    move-object/from16 v0, v31

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->mime_type:Ljava/lang/String;

    .line 1781
    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->attributes:Ljava/util/ArrayList;

    move-object/from16 v0, v31

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->attributes:Ljava/util/ArrayList;

    .line 1782
    new-instance v27, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;

    .end local v27    # "delayedMessage":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;-><init>(Lorg/telegram/messenger/SendMessagesHelper;)V

    .line 1783
    .restart local v27    # "delayedMessage":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    move-object/from16 v0, v43

    move-object/from16 v1, v27

    iput-object v0, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->originalPath:Ljava/lang/String;

    .line 1784
    const/4 v4, 0x1

    move-object/from16 v0, v27

    iput v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->type:I

    .line 1785
    move-object/from16 v0, v27

    iput-object v12, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    .line 1786
    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-object/from16 v0, v27

    iput-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 1787
    move-object/from16 v0, p6

    move-object/from16 v1, v27

    iput-object v0, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->documentLocation:Lorg/telegram/tgnet/TLRPC$TL_document;

    .line 1788
    move-object/from16 v0, p4

    move-object/from16 v1, v27

    iput-object v0, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    goto/16 :goto_aa0

    .line 1777
    :cond_c34
    new-instance v31, Lorg/telegram/tgnet/TLRPC$TL_inputMediaUploadedDocument;

    .end local v31    # "inputMedia":Lorg/telegram/tgnet/TLRPC$InputMedia;
    invoke-direct/range {v31 .. v31}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaUploadedDocument;-><init>()V

    .restart local v31    # "inputMedia":Lorg/telegram/tgnet/TLRPC$InputMedia;
    goto :goto_be6

    .line 1779
    :cond_c3a
    const-string v4, ""

    goto :goto_bf0

    .line 1790
    :cond_c3d
    new-instance v36, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;

    invoke-direct/range {v36 .. v36}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;-><init>()V

    .line 1791
    .local v36, "media":Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_inputDocument;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_inputDocument;-><init>()V

    move-object/from16 v0, v36

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;->id:Lorg/telegram/tgnet/TLRPC$InputDocument;

    .line 1792
    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->caption:Ljava/lang/String;

    if-eqz v4, :cond_c71

    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->caption:Ljava/lang/String;

    :goto_c55
    move-object/from16 v0, v36

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;->caption:Ljava/lang/String;

    .line 1793
    move-object/from16 v0, v36

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;->id:Lorg/telegram/tgnet/TLRPC$InputDocument;

    move-object/from16 v0, p6

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->id:J

    iput-wide v8, v4, Lorg/telegram/tgnet/TLRPC$InputDocument;->id:J

    .line 1794
    move-object/from16 v0, v36

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;->id:Lorg/telegram/tgnet/TLRPC$InputDocument;

    move-object/from16 v0, p6

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->access_hash:J

    iput-wide v8, v4, Lorg/telegram/tgnet/TLRPC$InputDocument;->access_hash:J

    .line 1795
    move-object/from16 v31, v36

    .line 1796
    goto/16 :goto_aa0

    .line 1792
    :cond_c71
    const-string v4, ""

    goto :goto_c55

    .line 1797
    .end local v36    # "media":Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;
    :cond_c74
    const/4 v4, 0x6

    move/from16 v0, v54

    if-ne v0, v4, :cond_c98

    .line 1798
    new-instance v31, Lorg/telegram/tgnet/TLRPC$TL_inputMediaContact;

    .end local v31    # "inputMedia":Lorg/telegram/tgnet/TLRPC$InputMedia;
    invoke-direct/range {v31 .. v31}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaContact;-><init>()V

    .line 1799
    .restart local v31    # "inputMedia":Lorg/telegram/tgnet/TLRPC$InputMedia;
    move-object/from16 v0, p5

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    move-object/from16 v0, v31

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->phone_number:Ljava/lang/String;

    .line 1800
    move-object/from16 v0, p5

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    move-object/from16 v0, v31

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->first_name:Ljava/lang/String;

    .line 1801
    move-object/from16 v0, p5

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    move-object/from16 v0, v31

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->last_name:Ljava/lang/String;

    goto/16 :goto_aa0

    .line 1802
    :cond_c98
    const/4 v4, 0x7

    move/from16 v0, v54

    if-eq v0, v4, :cond_ca3

    const/16 v4, 0x9

    move/from16 v0, v54

    if-ne v0, v4, :cond_d8f

    .line 1803
    :cond_ca3
    move-object/from16 v0, p6

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->access_hash:J

    const-wide/16 v14, 0x0

    cmp-long v4, v8, v14

    if-nez v4, :cond_d58

    .line 1804
    if-nez v16, :cond_d0f

    if-eqz v43, :cond_d0f

    invoke-virtual/range {v43 .. v43}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_d0f

    const-string v4, "http"

    move-object/from16 v0, v43

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d0f

    if-eqz p17, :cond_d0f

    .line 1805
    new-instance v31, Lorg/telegram/tgnet/TLRPC$TL_inputMediaGifExternal;

    .end local v31    # "inputMedia":Lorg/telegram/tgnet/TLRPC$InputMedia;
    invoke-direct/range {v31 .. v31}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaGifExternal;-><init>()V

    .line 1806
    .restart local v31    # "inputMedia":Lorg/telegram/tgnet/TLRPC$InputMedia;
    const-string v4, "url"

    move-object/from16 v0, p17

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v6, "\\|"

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v21

    .line 1807
    .local v21, "args":[Ljava/lang/String;
    move-object/from16 v0, v21

    array-length v4, v0

    const/4 v6, 0x2

    if-ne v4, v6, :cond_cef

    .line 1808
    move-object/from16 v0, v31

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaGifExternal;

    move-object v4, v0

    const/4 v6, 0x0

    aget-object v6, v21, v6

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$TL_inputMediaGifExternal;->url:Ljava/lang/String;

    .line 1809
    const/4 v4, 0x1

    aget-object v4, v21, v4

    move-object/from16 v0, v31

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->q:Ljava/lang/String;

    .line 1824
    .end local v21    # "args":[Ljava/lang/String;
    :cond_cef
    :goto_cef
    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->mime_type:Ljava/lang/String;

    move-object/from16 v0, v31

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->mime_type:Ljava/lang/String;

    .line 1825
    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->attributes:Ljava/util/ArrayList;

    move-object/from16 v0, v31

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->attributes:Ljava/util/ArrayList;

    .line 1826
    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->caption:Ljava/lang/String;

    if-eqz v4, :cond_d55

    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->caption:Ljava/lang/String;

    :goto_d09
    move-object/from16 v0, v31

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->caption:Ljava/lang/String;

    goto/16 :goto_aa0

    .line 1812
    :cond_d0f
    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v4, :cond_d4f

    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_fileLocation;

    if-eqz v4, :cond_d4f

    .line 1813
    new-instance v31, Lorg/telegram/tgnet/TLRPC$TL_inputMediaUploadedThumbDocument;

    .end local v31    # "inputMedia":Lorg/telegram/tgnet/TLRPC$InputMedia;
    invoke-direct/range {v31 .. v31}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaUploadedThumbDocument;-><init>()V

    .line 1817
    .restart local v31    # "inputMedia":Lorg/telegram/tgnet/TLRPC$InputMedia;
    :goto_d26
    new-instance v27, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;

    .end local v27    # "delayedMessage":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;-><init>(Lorg/telegram/messenger/SendMessagesHelper;)V

    .line 1818
    .restart local v27    # "delayedMessage":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    move-object/from16 v0, v43

    move-object/from16 v1, v27

    iput-object v0, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->originalPath:Ljava/lang/String;

    .line 1819
    const/4 v4, 0x2

    move-object/from16 v0, v27

    iput v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->type:I

    .line 1820
    move-object/from16 v0, v27

    iput-object v12, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    .line 1821
    move-object/from16 v0, p6

    move-object/from16 v1, v27

    iput-object v0, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->documentLocation:Lorg/telegram/tgnet/TLRPC$TL_document;

    .line 1822
    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-object/from16 v0, v27

    iput-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    goto :goto_cef

    .line 1815
    :cond_d4f
    new-instance v31, Lorg/telegram/tgnet/TLRPC$TL_inputMediaUploadedDocument;

    .end local v31    # "inputMedia":Lorg/telegram/tgnet/TLRPC$InputMedia;
    invoke-direct/range {v31 .. v31}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaUploadedDocument;-><init>()V

    .restart local v31    # "inputMedia":Lorg/telegram/tgnet/TLRPC$InputMedia;
    goto :goto_d26

    .line 1826
    :cond_d55
    const-string v4, ""

    goto :goto_d09

    .line 1828
    :cond_d58
    new-instance v36, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;

    invoke-direct/range {v36 .. v36}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;-><init>()V

    .line 1829
    .restart local v36    # "media":Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_inputDocument;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_inputDocument;-><init>()V

    move-object/from16 v0, v36

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;->id:Lorg/telegram/tgnet/TLRPC$InputDocument;

    .line 1830
    move-object/from16 v0, v36

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;->id:Lorg/telegram/tgnet/TLRPC$InputDocument;

    move-object/from16 v0, p6

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->id:J

    iput-wide v8, v4, Lorg/telegram/tgnet/TLRPC$InputDocument;->id:J

    .line 1831
    move-object/from16 v0, v36

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;->id:Lorg/telegram/tgnet/TLRPC$InputDocument;

    move-object/from16 v0, p6

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->access_hash:J

    iput-wide v8, v4, Lorg/telegram/tgnet/TLRPC$InputDocument;->access_hash:J

    .line 1832
    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->caption:Ljava/lang/String;

    if-eqz v4, :cond_d8c

    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->caption:Ljava/lang/String;

    :goto_d84
    move-object/from16 v0, v36

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;->caption:Ljava/lang/String;

    .line 1833
    move-object/from16 v31, v36

    .line 1834
    goto/16 :goto_aa0

    .line 1832
    :cond_d8c
    const-string v4, ""

    goto :goto_d84

    .line 1835
    .end local v36    # "media":Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;
    :cond_d8f
    const/16 v4, 0x8

    move/from16 v0, v54

    if-ne v0, v4, :cond_aa0

    .line 1836
    move-object/from16 v0, p6

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->access_hash:J

    const-wide/16 v14, 0x0

    cmp-long v4, v8, v14

    if-nez v4, :cond_ddf

    .line 1837
    new-instance v31, Lorg/telegram/tgnet/TLRPC$TL_inputMediaUploadedDocument;

    .end local v31    # "inputMedia":Lorg/telegram/tgnet/TLRPC$InputMedia;
    invoke-direct/range {v31 .. v31}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaUploadedDocument;-><init>()V

    .line 1838
    .restart local v31    # "inputMedia":Lorg/telegram/tgnet/TLRPC$InputMedia;
    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->mime_type:Ljava/lang/String;

    move-object/from16 v0, v31

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->mime_type:Ljava/lang/String;

    .line 1839
    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->attributes:Ljava/util/ArrayList;

    move-object/from16 v0, v31

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->attributes:Ljava/util/ArrayList;

    .line 1840
    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->caption:Ljava/lang/String;

    if-eqz v4, :cond_ddc

    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->caption:Ljava/lang/String;

    :goto_dbe
    move-object/from16 v0, v31

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->caption:Ljava/lang/String;

    .line 1841
    new-instance v27, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;

    .end local v27    # "delayedMessage":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;-><init>(Lorg/telegram/messenger/SendMessagesHelper;)V

    .line 1842
    .restart local v27    # "delayedMessage":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    const/4 v4, 0x3

    move-object/from16 v0, v27

    iput v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->type:I

    .line 1843
    move-object/from16 v0, v27

    iput-object v12, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    .line 1844
    move-object/from16 v0, p6

    move-object/from16 v1, v27

    iput-object v0, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->documentLocation:Lorg/telegram/tgnet/TLRPC$TL_document;

    goto/16 :goto_aa0

    .line 1840
    :cond_ddc
    const-string v4, ""

    goto :goto_dbe

    .line 1846
    :cond_ddf
    new-instance v36, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;

    invoke-direct/range {v36 .. v36}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;-><init>()V

    .line 1847
    .restart local v36    # "media":Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_inputDocument;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_inputDocument;-><init>()V

    move-object/from16 v0, v36

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;->id:Lorg/telegram/tgnet/TLRPC$InputDocument;

    .line 1848
    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->caption:Ljava/lang/String;

    if-eqz v4, :cond_e13

    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->caption:Ljava/lang/String;

    :goto_df7
    move-object/from16 v0, v36

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;->caption:Ljava/lang/String;

    .line 1849
    move-object/from16 v0, v36

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;->id:Lorg/telegram/tgnet/TLRPC$InputDocument;

    move-object/from16 v0, p6

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->id:J

    iput-wide v8, v4, Lorg/telegram/tgnet/TLRPC$InputDocument;->id:J

    .line 1850
    move-object/from16 v0, v36

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;->id:Lorg/telegram/tgnet/TLRPC$InputDocument;

    move-object/from16 v0, p6

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->access_hash:J

    iput-wide v8, v4, Lorg/telegram/tgnet/TLRPC$InputDocument;->access_hash:J

    .line 1851
    move-object/from16 v31, v36

    goto/16 :goto_aa0

    .line 1848
    :cond_e13
    const-string v4, ""

    goto :goto_df7

    .line 1863
    .end local v36    # "media":Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;
    .restart local v20    # "a":I
    .restart local v46    # "random_ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .restart local v47    # "request":Lorg/telegram/tgnet/TLRPC$TL_messages_sendBroadcast;
    :cond_e16
    move-object/from16 v0, v49

    move-object/from16 v1, v47

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_sendBroadcast;->contacts:Ljava/util/ArrayList;

    .line 1864
    move-object/from16 v0, v31

    move-object/from16 v1, v47

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_sendBroadcast;->media:Lorg/telegram/tgnet/TLRPC$InputMedia;

    .line 1865
    move-object/from16 v0, v46

    move-object/from16 v1, v47

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_sendBroadcast;->random_id:Ljava/util/ArrayList;

    .line 1866
    const-string v4, ""

    move-object/from16 v0, v47

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendBroadcast;->message:Ljava/lang/String;

    .line 1867
    if-eqz v27, :cond_e36

    .line 1868
    move-object/from16 v0, v47

    move-object/from16 v1, v27

    iput-object v0, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendRequest:Lorg/telegram/tgnet/TLObject;

    .line 1870
    :cond_e36
    move-object/from16 v7, v47

    .line 1871
    .local v7, "reqSend":Lorg/telegram/tgnet/TLObject;
    if-nez p14, :cond_e40

    .line 1872
    const/4 v4, 0x0

    move-wide/from16 v0, p8

    invoke-static {v0, v1, v4}, Lorg/telegram/messenger/query/DraftQuery;->cleanDraft(JZ)V

    .line 1891
    .end local v20    # "a":I
    .end local v46    # "random_ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v47    # "request":Lorg/telegram/tgnet/TLRPC$TL_messages_sendBroadcast;
    :cond_e40
    :goto_e40
    const/4 v4, 0x1

    move/from16 v0, v54

    if-ne v0, v4, :cond_eb4

    .line 1892
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v12, v4}, Lorg/telegram/messenger/SendMessagesHelper;->performSendMessageRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 1875
    .end local v7    # "reqSend":Lorg/telegram/tgnet/TLObject;
    :cond_e4d
    new-instance v47, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;

    invoke-direct/range {v47 .. v47}, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;-><init>()V

    .line 1876
    .local v47, "request":Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;
    move-object/from16 v0, v48

    move-object/from16 v1, v47

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 1877
    move-object/from16 v0, v38

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;

    if-eqz v4, :cond_e87

    .line 1878
    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v6, "Notifications"

    const/4 v8, 0x0

    invoke-virtual {v4, v6, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "silent_"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p8

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    invoke-interface {v4, v6, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    move-object/from16 v0, v47

    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->silent:Z

    .line 1880
    :cond_e87
    move-object/from16 v0, v38

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    move-object/from16 v0, v47

    iput-wide v8, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->random_id:J

    .line 1881
    move-object/from16 v0, v31

    move-object/from16 v1, v47

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->media:Lorg/telegram/tgnet/TLRPC$InputMedia;

    .line 1882
    if-eqz p11, :cond_ea9

    .line 1883
    move-object/from16 v0, v47

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->flags:I

    or-int/lit8 v4, v4, 0x1

    move-object/from16 v0, v47

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->flags:I

    .line 1884
    invoke-virtual/range {p11 .. p11}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    move-object/from16 v0, v47

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->reply_to_msg_id:I

    .line 1886
    :cond_ea9
    if-eqz v27, :cond_eb1

    .line 1887
    move-object/from16 v0, v47

    move-object/from16 v1, v27

    iput-object v0, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendRequest:Lorg/telegram/tgnet/TLObject;

    .line 1889
    :cond_eb1
    move-object/from16 v7, v47

    .restart local v7    # "reqSend":Lorg/telegram/tgnet/TLObject;
    goto :goto_e40

    .line 1893
    .end local v47    # "request":Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;
    :cond_eb4
    const/4 v4, 0x2

    move/from16 v0, v54

    if-ne v0, v4, :cond_ed4

    .line 1894
    move-object/from16 v0, p3

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$TL_photo;->access_hash:J

    const-wide/16 v14, 0x0

    cmp-long v4, v8, v14

    if-nez v4, :cond_ecc

    .line 1895
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lorg/telegram/messenger/SendMessagesHelper;->performSendDelayedMessage(Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;)V

    goto/16 :goto_6

    .line 1897
    :cond_ecc
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v12, v4}, Lorg/telegram/messenger/SendMessagesHelper;->performSendMessageRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 1899
    :cond_ed4
    const/4 v4, 0x3

    move/from16 v0, v54

    if-ne v0, v4, :cond_ef4

    .line 1900
    move-object/from16 v0, p6

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->access_hash:J

    const-wide/16 v14, 0x0

    cmp-long v4, v8, v14

    if-nez v4, :cond_eec

    .line 1901
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lorg/telegram/messenger/SendMessagesHelper;->performSendDelayedMessage(Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;)V

    goto/16 :goto_6

    .line 1903
    :cond_eec
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v12, v4}, Lorg/telegram/messenger/SendMessagesHelper;->performSendMessageRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 1905
    :cond_ef4
    const/4 v4, 0x6

    move/from16 v0, v54

    if-ne v0, v4, :cond_f01

    .line 1906
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v12, v4}, Lorg/telegram/messenger/SendMessagesHelper;->performSendMessageRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 1907
    :cond_f01
    const/4 v4, 0x7

    move/from16 v0, v54

    if-ne v0, v4, :cond_f24

    .line 1908
    move-object/from16 v0, p6

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->access_hash:J

    const-wide/16 v14, 0x0

    cmp-long v4, v8, v14

    if-nez v4, :cond_f1b

    if-eqz v27, :cond_f1b

    .line 1909
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lorg/telegram/messenger/SendMessagesHelper;->performSendDelayedMessage(Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;)V

    goto/16 :goto_6

    .line 1911
    :cond_f1b
    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v7, v12, v1}, Lorg/telegram/messenger/SendMessagesHelper;->performSendMessageRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 1913
    :cond_f24
    const/16 v4, 0x8

    move/from16 v0, v54

    if-ne v0, v4, :cond_6

    .line 1914
    move-object/from16 v0, p6

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->access_hash:J

    const-wide/16 v14, 0x0

    cmp-long v4, v8, v14

    if-nez v4, :cond_f3d

    .line 1915
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lorg/telegram/messenger/SendMessagesHelper;->performSendDelayedMessage(Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;)V

    goto/16 :goto_6

    .line 1917
    :cond_f3d
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v12, v4}, Lorg/telegram/messenger/SendMessagesHelper;->performSendMessageRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 1922
    .end local v7    # "reqSend":Lorg/telegram/tgnet/TLObject;
    .end local v27    # "delayedMessage":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    .end local v31    # "inputMedia":Lorg/telegram/tgnet/TLRPC$InputMedia;
    :cond_f45
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;-><init>()V

    .line 1923
    .local v7, "reqSend":Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;
    move-object/from16 v0, v38

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I

    iput v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->ttl:I

    .line 1924
    if-eqz p15, :cond_f62

    invoke-virtual/range {p15 .. p15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_f62

    .line 1925
    move-object/from16 v0, p15

    iput-object v0, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->entities:Ljava/util/ArrayList;

    .line 1926
    iget v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->flags:I

    or-int/lit16 v4, v4, 0x80

    iput v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->flags:I

    .line 1928
    :cond_f62
    if-eqz p11, :cond_f7e

    move-object/from16 v0, p11

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v8, v4, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    const-wide/16 v14, 0x0

    cmp-long v4, v8, v14

    if-eqz v4, :cond_f7e

    .line 1929
    move-object/from16 v0, p11

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v8, v4, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    iput-wide v8, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->reply_to_random_id:J

    .line 1930
    iget v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->flags:I

    or-int/lit8 v4, v4, 0x8

    iput v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->flags:I

    .line 1932
    :cond_f7e
    iget v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->flags:I

    or-int/lit16 v4, v4, 0x200

    iput v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->flags:I

    .line 1933
    if-eqz p17, :cond_fa2

    const-string v4, "bot_name"

    move-object/from16 v0, p17

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_fa2

    .line 1934
    const-string v4, "bot_name"

    move-object/from16 v0, p17

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->via_bot_name:Ljava/lang/String;

    .line 1935
    iget v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->flags:I

    or-int/lit16 v4, v4, 0x800

    iput v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->flags:I

    .line 1937
    :cond_fa2
    move-object/from16 v0, v38

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    iput-wide v8, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->random_id:J

    .line 1938
    const-string v4, ""

    iput-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->message:Ljava/lang/String;

    .line 1939
    const/4 v4, 0x1

    move/from16 v0, v54

    if-ne v0, v4, :cond_1011

    .line 1940
    move-object/from16 v0, p2

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;

    if-eqz v4, :cond_1009

    .line 1941
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaVenue;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaVenue;-><init>()V

    iput-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    .line 1942
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p2

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->address:Ljava/lang/String;

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->address:Ljava/lang/String;

    .line 1943
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p2

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->title:Ljava/lang/String;

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->title:Ljava/lang/String;

    .line 1944
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p2

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->provider:Ljava/lang/String;

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->provider:Ljava/lang/String;

    .line 1945
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p2

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->venue_id:Ljava/lang/String;

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->venue_id:Ljava/lang/String;

    .line 1949
    :goto_fde
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p2

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    iget-wide v8, v6, Lorg/telegram/tgnet/TLRPC$GeoPoint;->lat:D

    iput-wide v8, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->lat:D

    .line 1950
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p2

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    iget-wide v8, v6, Lorg/telegram/tgnet/TLRPC$GeoPoint;->_long:D

    iput-wide v8, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->_long:D

    .line 1951
    invoke-static {}, Lorg/telegram/messenger/SecretChatHelper;->getInstance()Lorg/telegram/messenger/SecretChatHelper;

    move-result-object v6

    iget-object v8, v12, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v9, v16

    invoke-virtual/range {v6 .. v12}, Lorg/telegram/messenger/SecretChatHelper;->performSendEncryptedRequest(Lorg/telegram/tgnet/TLRPC$DecryptedMessage;Lorg/telegram/tgnet/TLRPC$Message;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;Ljava/lang/String;Lorg/telegram/messenger/MessageObject;)V

    .line 2126
    :cond_fff
    :goto_fff
    if-nez p14, :cond_6

    .line 2127
    const/4 v4, 0x0

    move-wide/from16 v0, p8

    invoke-static {v0, v1, v4}, Lorg/telegram/messenger/query/DraftQuery;->cleanDraft(JZ)V

    goto/16 :goto_6

    .line 1947
    :cond_1009
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaGeoPoint;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaGeoPoint;-><init>()V

    iput-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    goto :goto_fde

    .line 1952
    :cond_1011
    const/4 v4, 0x2

    move/from16 v0, v54

    if-eq v0, v4, :cond_101e

    const/16 v4, 0x9

    move/from16 v0, v54

    if-ne v0, v4, :cond_1138

    if-eqz p3, :cond_1138

    .line 1953
    :cond_101e
    move-object/from16 v0, p3

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_photo;->sizes:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v53

    check-cast v53, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 1954
    .local v53, "small":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    move-object/from16 v0, p3

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_photo;->sizes:Ljava/util/ArrayList;

    move-object/from16 v0, p3

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 1955
    .local v24, "big":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    invoke-static/range {v53 .. v53}, Lorg/telegram/messenger/ImageLoader;->fillPhotoSizeWithBytes(Lorg/telegram/tgnet/TLRPC$PhotoSize;)V

    .line 1956
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaPhoto;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaPhoto;-><init>()V

    iput-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    .line 1957
    iget-object v6, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p3

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_photo;->caption:Ljava/lang/String;

    if-eqz v4, :cond_10d8

    move-object/from16 v0, p3

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_photo;->caption:Ljava/lang/String;

    :goto_1053
    iput-object v4, v6, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->caption:Ljava/lang/String;

    .line 1958
    move-object/from16 v0, v53

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->bytes:[B

    if-eqz v4, :cond_10dc

    .line 1959
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaPhoto;

    move-object/from16 v0, v53

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->bytes:[B

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaPhoto;->thumb:[B

    .line 1963
    :goto_1065
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, v53

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->thumb_h:I

    .line 1964
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, v53

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->thumb_w:I

    .line 1965
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, v24

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->w:I

    .line 1966
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, v24

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->h:I

    .line 1967
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, v24

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->size:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->size:I

    .line 1968
    move-object/from16 v0, v24

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$FileLocation;->key:[B

    if-nez v4, :cond_1101

    .line 1969
    new-instance v27, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;-><init>(Lorg/telegram/messenger/SendMessagesHelper;)V

    .line 1970
    .restart local v27    # "delayedMessage":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    move-object/from16 v0, v43

    move-object/from16 v1, v27

    iput-object v0, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->originalPath:Ljava/lang/String;

    .line 1971
    move-object/from16 v0, v27

    iput-object v7, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendEncryptedRequest:Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;

    .line 1972
    const/4 v4, 0x0

    move-object/from16 v0, v27

    iput v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->type:I

    .line 1973
    move-object/from16 v0, v27

    iput-object v12, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    .line 1974
    move-object/from16 v0, v16

    move-object/from16 v1, v27

    iput-object v0, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    .line 1975
    if-eqz p10, :cond_10e6

    invoke-virtual/range {p10 .. p10}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_10e6

    const-string v4, "http"

    move-object/from16 v0, p10

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10e6

    .line 1976
    move-object/from16 v0, p10

    move-object/from16 v1, v27

    iput-object v0, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->httpLocation:Ljava/lang/String;

    .line 1980
    :goto_10cf
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lorg/telegram/messenger/SendMessagesHelper;->performSendDelayedMessage(Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;)V

    goto/16 :goto_fff

    .line 1957
    .end local v27    # "delayedMessage":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    :cond_10d8
    const-string v4, ""

    goto/16 :goto_1053

    .line 1961
    :cond_10dc
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaPhoto;

    const/4 v6, 0x0

    new-array v6, v6, [B

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaPhoto;->thumb:[B

    goto :goto_1065

    .line 1978
    .restart local v27    # "delayedMessage":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    :cond_10e6
    move-object/from16 v0, p3

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_photo;->sizes:Ljava/util/ArrayList;

    move-object/from16 v0, p3

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-object/from16 v0, v27

    iput-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    goto :goto_10cf

    .line 1982
    .end local v27    # "delayedMessage":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    :cond_1101
    new-instance v10, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFile;

    invoke-direct {v10}, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFile;-><init>()V

    .line 1983
    .local v10, "encryptedFile":Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFile;
    move-object/from16 v0, v24

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-wide v8, v4, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    iput-wide v8, v10, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFile;->id:J

    .line 1984
    move-object/from16 v0, v24

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-wide v8, v4, Lorg/telegram/tgnet/TLRPC$FileLocation;->secret:J

    iput-wide v8, v10, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFile;->access_hash:J

    .line 1985
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, v24

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$FileLocation;->key:[B

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->key:[B

    .line 1986
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, v24

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$FileLocation;->iv:[B

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->iv:[B

    .line 1987
    invoke-static {}, Lorg/telegram/messenger/SecretChatHelper;->getInstance()Lorg/telegram/messenger/SecretChatHelper;

    move-result-object v6

    iget-object v8, v12, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    const/4 v11, 0x0

    move-object/from16 v9, v16

    invoke-virtual/range {v6 .. v12}, Lorg/telegram/messenger/SecretChatHelper;->performSendEncryptedRequest(Lorg/telegram/tgnet/TLRPC$DecryptedMessage;Lorg/telegram/tgnet/TLRPC$Message;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;Ljava/lang/String;Lorg/telegram/messenger/MessageObject;)V

    goto/16 :goto_fff

    .line 1989
    .end local v10    # "encryptedFile":Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFile;
    .end local v24    # "big":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    .end local v53    # "small":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    :cond_1138
    const/4 v4, 0x3

    move/from16 v0, v54

    if-ne v0, v4, :cond_1288

    .line 1990
    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    invoke-static {v4}, Lorg/telegram/messenger/ImageLoader;->fillPhotoSizeWithBytes(Lorg/telegram/tgnet/TLRPC$PhotoSize;)V

    .line 1991
    invoke-static/range {p6 .. p6}, Lorg/telegram/messenger/MessageObject;->isNewGifDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v4

    if-eqz v4, :cond_1223

    .line 1992
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument;-><init>()V

    iput-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    .line 1993
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p6

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->attributes:Ljava/util/ArrayList;

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->attributes:Ljava/util/ArrayList;

    .line 1994
    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    if-eqz v4, :cond_1218

    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->bytes:[B

    if-eqz v4, :cond_1218

    .line 1995
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument;

    move-object/from16 v0, p6

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$PhotoSize;->bytes:[B

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument;->thumb:[B

    .line 2007
    :goto_1173
    iget-object v6, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->caption:Ljava/lang/String;

    if-eqz v4, :cond_1251

    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->caption:Ljava/lang/String;

    :goto_117f
    iput-object v4, v6, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->caption:Ljava/lang/String;

    .line 2008
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    const-string v6, "video/mp4"

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->mime_type:Ljava/lang/String;

    .line 2009
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p6

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->size:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->size:I

    .line 2010
    const/16 v20, 0x0

    .restart local v20    # "a":I
    :goto_1191
    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v20

    if-ge v0, v4, :cond_11c7

    .line 2011
    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->attributes:Ljava/util/ArrayList;

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    .line 2012
    .restart local v22    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    move-object/from16 v0, v22

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;

    if-eqz v4, :cond_1255

    .line 2013
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, v22

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->w:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->w:I

    .line 2014
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, v22

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->h:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->h:I

    .line 2015
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, v22

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->duration:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->duration:I

    .line 2019
    .end local v22    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :cond_11c7
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p6

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->thumb_h:I

    .line 2020
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p6

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->thumb_w:I

    .line 2021
    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->key:[B

    if-nez v4, :cond_1259

    .line 2022
    new-instance v27, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;-><init>(Lorg/telegram/messenger/SendMessagesHelper;)V

    .line 2023
    .restart local v27    # "delayedMessage":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    move-object/from16 v0, v43

    move-object/from16 v1, v27

    iput-object v0, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->originalPath:Ljava/lang/String;

    .line 2024
    move-object/from16 v0, v27

    iput-object v7, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendEncryptedRequest:Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;

    .line 2025
    const/4 v4, 0x1

    move-object/from16 v0, v27

    iput v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->type:I

    .line 2026
    move-object/from16 v0, v27

    iput-object v12, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    .line 2027
    move-object/from16 v0, v16

    move-object/from16 v1, v27

    iput-object v0, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    .line 2028
    move-object/from16 v0, p6

    move-object/from16 v1, v27

    iput-object v0, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->documentLocation:Lorg/telegram/tgnet/TLRPC$TL_document;

    .line 2029
    move-object/from16 v0, p4

    move-object/from16 v1, v27

    iput-object v0, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    .line 2030
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lorg/telegram/messenger/SendMessagesHelper;->performSendDelayedMessage(Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;)V

    goto/16 :goto_fff

    .line 1997
    .end local v20    # "a":I
    .end local v27    # "delayedMessage":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    :cond_1218
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument;

    const/4 v6, 0x0

    new-array v6, v6, [B

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument;->thumb:[B

    goto/16 :goto_1173

    .line 2000
    :cond_1223
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaVideo;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaVideo;-><init>()V

    iput-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    .line 2001
    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    if-eqz v4, :cond_1246

    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->bytes:[B

    if-eqz v4, :cond_1246

    .line 2002
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaVideo;

    move-object/from16 v0, p6

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$PhotoSize;->bytes:[B

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaVideo;->thumb:[B

    goto/16 :goto_1173

    .line 2004
    :cond_1246
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaVideo;

    const/4 v6, 0x0

    new-array v6, v6, [B

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaVideo;->thumb:[B

    goto/16 :goto_1173

    .line 2007
    :cond_1251
    const-string v4, ""

    goto/16 :goto_117f

    .line 2010
    .restart local v20    # "a":I
    .restart local v22    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :cond_1255
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_1191

    .line 2032
    .end local v22    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :cond_1259
    new-instance v10, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFile;

    invoke-direct {v10}, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFile;-><init>()V

    .line 2033
    .restart local v10    # "encryptedFile":Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFile;
    move-object/from16 v0, p6

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->id:J

    iput-wide v8, v10, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFile;->id:J

    .line 2034
    move-object/from16 v0, p6

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->access_hash:J

    iput-wide v8, v10, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFile;->access_hash:J

    .line 2035
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p6

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->key:[B

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->key:[B

    .line 2036
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p6

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->iv:[B

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->iv:[B

    .line 2037
    invoke-static {}, Lorg/telegram/messenger/SecretChatHelper;->getInstance()Lorg/telegram/messenger/SecretChatHelper;

    move-result-object v6

    iget-object v8, v12, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    const/4 v11, 0x0

    move-object/from16 v9, v16

    invoke-virtual/range {v6 .. v12}, Lorg/telegram/messenger/SecretChatHelper;->performSendEncryptedRequest(Lorg/telegram/tgnet/TLRPC$DecryptedMessage;Lorg/telegram/tgnet/TLRPC$Message;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;Ljava/lang/String;Lorg/telegram/messenger/MessageObject;)V

    goto/16 :goto_fff

    .line 2039
    .end local v10    # "encryptedFile":Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFile;
    .end local v20    # "a":I
    :cond_1288
    const/4 v4, 0x6

    move/from16 v0, v54

    if-ne v0, v4, :cond_12c6

    .line 2040
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaContact;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaContact;-><init>()V

    iput-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    .line 2041
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p5

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->phone_number:Ljava/lang/String;

    .line 2042
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p5

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->first_name:Ljava/lang/String;

    .line 2043
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p5

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->last_name:Ljava/lang/String;

    .line 2044
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p5

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$User;->id:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->user_id:I

    .line 2045
    invoke-static {}, Lorg/telegram/messenger/SecretChatHelper;->getInstance()Lorg/telegram/messenger/SecretChatHelper;

    move-result-object v13

    iget-object v15, v12, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v14, v7

    move-object/from16 v19, v12

    invoke-virtual/range {v13 .. v19}, Lorg/telegram/messenger/SecretChatHelper;->performSendEncryptedRequest(Lorg/telegram/tgnet/TLRPC$DecryptedMessage;Lorg/telegram/tgnet/TLRPC$Message;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;Ljava/lang/String;Lorg/telegram/messenger/MessageObject;)V

    goto/16 :goto_fff

    .line 2046
    :cond_12c6
    const/4 v4, 0x7

    move/from16 v0, v54

    if-eq v0, v4, :cond_12d3

    const/16 v4, 0x9

    move/from16 v0, v54

    if-ne v0, v4, :cond_1448

    if-eqz p6, :cond_1448

    .line 2047
    :cond_12d3
    invoke-static/range {p6 .. p6}, Lorg/telegram/messenger/MessageObject;->isStickerDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v4

    if-eqz v4, :cond_1350

    .line 2048
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaExternalDocument;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaExternalDocument;-><init>()V

    iput-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    .line 2049
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p6

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->id:J

    iput-wide v8, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->id:J

    .line 2050
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p6

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->date:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->date:I

    .line 2051
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p6

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->access_hash:J

    iput-wide v8, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->access_hash:J

    .line 2052
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p6

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->mime_type:Ljava/lang/String;

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->mime_type:Ljava/lang/String;

    .line 2053
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p6

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->size:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->size:I

    .line 2054
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p6

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->dc_id:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->dc_id:I

    .line 2055
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p6

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->attributes:Ljava/util/ArrayList;

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->attributes:Ljava/util/ArrayList;

    .line 2056
    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    if-nez v4, :cond_1345

    .line 2057
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaExternalDocument;

    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_photoSizeEmpty;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_photoSizeEmpty;-><init>()V

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaExternalDocument;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 2058
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaExternalDocument;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaExternalDocument;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    const-string v6, "s"

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->type:Ljava/lang/String;

    .line 2062
    :goto_1333
    invoke-static {}, Lorg/telegram/messenger/SecretChatHelper;->getInstance()Lorg/telegram/messenger/SecretChatHelper;

    move-result-object v13

    iget-object v15, v12, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v14, v7

    move-object/from16 v19, v12

    invoke-virtual/range {v13 .. v19}, Lorg/telegram/messenger/SecretChatHelper;->performSendEncryptedRequest(Lorg/telegram/tgnet/TLRPC$DecryptedMessage;Lorg/telegram/tgnet/TLRPC$Message;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;Ljava/lang/String;Lorg/telegram/messenger/MessageObject;)V

    goto/16 :goto_fff

    .line 2060
    :cond_1345
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaExternalDocument;

    move-object/from16 v0, p6

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaExternalDocument;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    goto :goto_1333

    .line 2064
    :cond_1350
    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    invoke-static {v4}, Lorg/telegram/messenger/ImageLoader;->fillPhotoSizeWithBytes(Lorg/telegram/tgnet/TLRPC$PhotoSize;)V

    .line 2065
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument;-><init>()V

    iput-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    .line 2066
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p6

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->attributes:Ljava/util/ArrayList;

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->attributes:Ljava/util/ArrayList;

    .line 2067
    iget-object v6, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->caption:Ljava/lang/String;

    if-eqz v4, :cond_1401

    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->caption:Ljava/lang/String;

    :goto_1372
    iput-object v4, v6, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->caption:Ljava/lang/String;

    .line 2068
    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    if-eqz v4, :cond_1405

    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->bytes:[B

    if-eqz v4, :cond_1405

    .line 2069
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument;

    move-object/from16 v0, p6

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$PhotoSize;->bytes:[B

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument;->thumb:[B

    .line 2070
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p6

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->thumb_h:I

    .line 2071
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p6

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->thumb_w:I

    .line 2077
    :goto_13a2
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p6

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->size:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->size:I

    .line 2078
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p6

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->mime_type:Ljava/lang/String;

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->mime_type:Ljava/lang/String;

    .line 2080
    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->key:[B

    if-nez v4, :cond_1419

    .line 2081
    new-instance v27, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;-><init>(Lorg/telegram/messenger/SendMessagesHelper;)V

    .line 2082
    .restart local v27    # "delayedMessage":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    move-object/from16 v0, v43

    move-object/from16 v1, v27

    iput-object v0, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->originalPath:Ljava/lang/String;

    .line 2083
    move-object/from16 v0, v27

    iput-object v7, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendEncryptedRequest:Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;

    .line 2084
    const/4 v4, 0x2

    move-object/from16 v0, v27

    iput v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->type:I

    .line 2085
    move-object/from16 v0, v27

    iput-object v12, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    .line 2086
    move-object/from16 v0, v16

    move-object/from16 v1, v27

    iput-object v0, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    .line 2087
    if-eqz p10, :cond_13f2

    invoke-virtual/range {p10 .. p10}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_13f2

    const-string v4, "http"

    move-object/from16 v0, p10

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_13f2

    .line 2088
    move-object/from16 v0, p10

    move-object/from16 v1, v27

    iput-object v0, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->httpLocation:Ljava/lang/String;

    .line 2090
    :cond_13f2
    move-object/from16 v0, p6

    move-object/from16 v1, v27

    iput-object v0, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->documentLocation:Lorg/telegram/tgnet/TLRPC$TL_document;

    .line 2091
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lorg/telegram/messenger/SendMessagesHelper;->performSendDelayedMessage(Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;)V

    goto/16 :goto_fff

    .line 2067
    .end local v27    # "delayedMessage":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    :cond_1401
    const-string v4, ""

    goto/16 :goto_1372

    .line 2073
    :cond_1405
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument;

    const/4 v6, 0x0

    new-array v6, v6, [B

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument;->thumb:[B

    .line 2074
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    const/4 v6, 0x0

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->thumb_h:I

    .line 2075
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    const/4 v6, 0x0

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->thumb_w:I

    goto :goto_13a2

    .line 2093
    :cond_1419
    new-instance v10, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFile;

    invoke-direct {v10}, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFile;-><init>()V

    .line 2094
    .restart local v10    # "encryptedFile":Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFile;
    move-object/from16 v0, p6

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->id:J

    iput-wide v8, v10, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFile;->id:J

    .line 2095
    move-object/from16 v0, p6

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->access_hash:J

    iput-wide v8, v10, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFile;->access_hash:J

    .line 2096
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p6

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->key:[B

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->key:[B

    .line 2097
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p6

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->iv:[B

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->iv:[B

    .line 2098
    invoke-static {}, Lorg/telegram/messenger/SecretChatHelper;->getInstance()Lorg/telegram/messenger/SecretChatHelper;

    move-result-object v6

    iget-object v8, v12, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    const/4 v11, 0x0

    move-object/from16 v9, v16

    invoke-virtual/range {v6 .. v12}, Lorg/telegram/messenger/SecretChatHelper;->performSendEncryptedRequest(Lorg/telegram/tgnet/TLRPC$DecryptedMessage;Lorg/telegram/tgnet/TLRPC$Message;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;Ljava/lang/String;Lorg/telegram/messenger/MessageObject;)V

    goto/16 :goto_fff

    .line 2101
    .end local v10    # "encryptedFile":Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFile;
    :cond_1448
    const/16 v4, 0x8

    move/from16 v0, v54

    if-ne v0, v4, :cond_fff

    .line 2102
    new-instance v27, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;-><init>(Lorg/telegram/messenger/SendMessagesHelper;)V

    .line 2103
    .restart local v27    # "delayedMessage":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    move-object/from16 v0, v16

    move-object/from16 v1, v27

    iput-object v0, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    .line 2104
    move-object/from16 v0, v27

    iput-object v7, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendEncryptedRequest:Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;

    .line 2105
    move-object/from16 v0, v27

    iput-object v12, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    .line 2106
    move-object/from16 v0, p6

    move-object/from16 v1, v27

    iput-object v0, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->documentLocation:Lorg/telegram/tgnet/TLRPC$TL_document;

    .line 2107
    const/4 v4, 0x3

    move-object/from16 v0, v27

    iput v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->type:I

    .line 2109
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument;-><init>()V

    iput-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    .line 2110
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p6

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->attributes:Ljava/util/ArrayList;

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->attributes:Ljava/util/ArrayList;

    .line 2111
    iget-object v6, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->caption:Ljava/lang/String;

    if-eqz v4, :cond_14da

    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->caption:Ljava/lang/String;

    :goto_148b
    iput-object v4, v6, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->caption:Ljava/lang/String;

    .line 2112
    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    if-eqz v4, :cond_14dd

    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->bytes:[B

    if-eqz v4, :cond_14dd

    .line 2113
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument;

    move-object/from16 v0, p6

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$PhotoSize;->bytes:[B

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument;->thumb:[B

    .line 2114
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p6

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->thumb_h:I

    .line 2115
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p6

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->thumb_w:I

    .line 2121
    :goto_14bb
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p6

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->mime_type:Ljava/lang/String;

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->mime_type:Ljava/lang/String;

    .line 2122
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p6

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->size:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->size:I

    .line 2123
    move-object/from16 v0, v43

    move-object/from16 v1, v27

    iput-object v0, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->originalPath:Ljava/lang/String;

    .line 2124
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lorg/telegram/messenger/SendMessagesHelper;->performSendDelayedMessage(Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;)V

    goto/16 :goto_fff

    .line 2111
    :cond_14da
    const-string v4, ""

    goto :goto_148b

    .line 2117
    :cond_14dd
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument;

    const/4 v6, 0x0

    new-array v6, v6, [B

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument;->thumb:[B

    .line 2118
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    const/4 v6, 0x0

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->thumb_h:I

    .line 2119
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    const/4 v6, 0x0

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->thumb_w:I

    goto :goto_14bb

    .line 2130
    .end local v7    # "reqSend":Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;
    .end local v27    # "delayedMessage":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    :cond_14f1
    const/4 v4, 0x4

    move/from16 v0, v54

    if-ne v0, v4, :cond_15ad

    .line 2131
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;-><init>()V

    .line 2132
    .local v7, "reqSend":Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;
    move-object/from16 v0, v48

    iput-object v0, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->to_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 2133
    move-object/from16 v0, p14

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->with_my_score:Z

    iput-boolean v4, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->with_my_score:Z

    .line 2134
    move-object/from16 v0, p14

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I

    if-eqz v4, :cond_1595

    .line 2135
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    move-object/from16 v0, p14

    iget-object v6, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I

    neg-int v6, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v25

    .line 2136
    .restart local v25    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChannel;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChannel;-><init>()V

    iput-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->from_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 2137
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->from_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-object/from16 v0, p14

    iget-object v6, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I

    neg-int v6, v6

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$InputPeer;->channel_id:I

    .line 2138
    if-eqz v25, :cond_153e

    .line 2139
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->from_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-object/from16 v0, v25

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$Chat;->access_hash:J

    iput-wide v8, v4, Lorg/telegram/tgnet/TLRPC$InputPeer;->access_hash:J

    .line 2144
    .end local v25    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_153e
    :goto_153e
    move-object/from16 v0, p14

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;

    if-eqz v4, :cond_156d

    .line 2145
    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v6, "Notifications"

    const/4 v8, 0x0

    invoke-virtual {v4, v6, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "silent_"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p8

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    invoke-interface {v4, v6, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->silent:Z

    .line 2147
    :cond_156d
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->random_id:Ljava/util/ArrayList;

    move-object/from16 v0, v38

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2148
    invoke-virtual/range {p14 .. p14}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    if-ltz v4, :cond_159d

    .line 2149
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->id:Ljava/util/ArrayList;

    invoke-virtual/range {p14 .. p14}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2153
    :goto_158d
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v12, v4}, Lorg/telegram/messenger/SendMessagesHelper;->performSendMessageRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 2142
    :cond_1595
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_inputPeerEmpty;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerEmpty;-><init>()V

    iput-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->from_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    goto :goto_153e

    .line 2151
    :cond_159d
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->id:Ljava/util/ArrayList;

    move-object/from16 v0, p14

    iget-object v6, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$Message;->fwd_msg_id:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_158d

    .line 2154
    .end local v7    # "reqSend":Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;
    :cond_15ad
    const/16 v4, 0x9

    move/from16 v0, v54

    if-ne v0, v4, :cond_6

    .line 2155
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;-><init>()V

    .line 2156
    .local v7, "reqSend":Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;
    move-object/from16 v0, v48

    iput-object v0, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 2157
    move-object/from16 v0, v38

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    iput-wide v8, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;->random_id:J

    .line 2158
    if-eqz p11, :cond_15d0

    .line 2159
    iget v4, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;->flags:I

    or-int/lit8 v4, v4, 0x1

    iput v4, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;->flags:I

    .line 2160
    invoke-virtual/range {p11 .. p11}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    iput v4, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;->reply_to_msg_id:I

    .line 2162
    :cond_15d0
    move-object/from16 v0, v38

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;

    if-eqz v4, :cond_15fd

    .line 2163
    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v6, "Notifications"

    const/4 v8, 0x0

    invoke-virtual {v4, v6, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "silent_"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p8

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    invoke-interface {v4, v6, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;->silent:Z

    .line 2165
    :cond_15fd
    const-string v4, "query_id"

    move-object/from16 v0, p17

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lorg/telegram/messenger/Utilities;->parseLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iput-wide v8, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;->query_id:J

    .line 2166
    const-string v4, "id"

    move-object/from16 v0, p17

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;->id:Ljava/lang/String;

    .line 2167
    if-nez p14, :cond_1628

    .line 2168
    const/4 v4, 0x1

    iput-boolean v4, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;->clear_draft:Z

    .line 2169
    const/4 v4, 0x0

    move-wide/from16 v0, p8

    invoke-static {v0, v1, v4}, Lorg/telegram/messenger/query/DraftQuery;->cleanDraft(JZ)V

    .line 2171
    :cond_1628
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v12, v4}, Lorg/telegram/messenger/SendMessagesHelper;->performSendMessageRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;)V
    :try_end_162e
    .catch Ljava/lang/Exception; {:try_start_8f5 .. :try_end_162e} :catch_910

    goto/16 :goto_6

    .line 2173
    .end local v5    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    .end local v7    # "reqSend":Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;
    .end local v12    # "newMsgObj":Lorg/telegram/messenger/MessageObject;
    .end local v42    # "objArr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .end local p5    # "user":Lorg/telegram/tgnet/TLRPC$User;
    .restart local v40    # "newMsgObj":Lorg/telegram/messenger/MessageObject;
    .restart local v55    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :catch_1630
    move-exception v29

    move-object/from16 v12, v40

    .end local v40    # "newMsgObj":Lorg/telegram/messenger/MessageObject;
    .restart local v12    # "newMsgObj":Lorg/telegram/messenger/MessageObject;
    move-object/from16 p5, v55

    .end local v55    # "user":Lorg/telegram/tgnet/TLRPC$User;
    .restart local p5    # "user":Lorg/telegram/tgnet/TLRPC$User;
    goto/16 :goto_1dd

    .end local v12    # "newMsgObj":Lorg/telegram/messenger/MessageObject;
    .end local v38    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    .restart local v39    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    .restart local v40    # "newMsgObj":Lorg/telegram/messenger/MessageObject;
    :catch_1637
    move-exception v29

    move-object/from16 v12, v40

    .end local v40    # "newMsgObj":Lorg/telegram/messenger/MessageObject;
    .restart local v12    # "newMsgObj":Lorg/telegram/messenger/MessageObject;
    move-object/from16 v38, v39

    .end local v39    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    .restart local v38    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    goto/16 :goto_1dd

    .end local v12    # "newMsgObj":Lorg/telegram/messenger/MessageObject;
    .end local v38    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    .restart local v39    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    .restart local v40    # "newMsgObj":Lorg/telegram/messenger/MessageObject;
    :cond_163e
    move-object/from16 v38, v39

    .end local v39    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    .restart local v38    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    goto/16 :goto_350
.end method

.method public static telehPrepareSendingVideo(Ljava/lang/String;JJIILorg/telegram/messenger/VideoEditedInfo;JLorg/telegram/messenger/MessageObject;Ljava/lang/String;)V
    .registers 27
    .param p0, "videoPath"    # Ljava/lang/String;
    .param p1, "estimatedSize"    # J
    .param p3, "duration"    # J
    .param p5, "width"    # I
    .param p6, "height"    # I
    .param p7, "videoEditedInfo"    # Lorg/telegram/messenger/VideoEditedInfo;
    .param p8, "dialog_id"    # J
    .param p10, "reply_to_msg"    # Lorg/telegram/messenger/MessageObject;
    .param p11, "caption"    # Ljava/lang/String;

    .prologue
    .line 4703
    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    .line 4828
    :cond_8
    :goto_8
    return-void

    .line 4706
    :cond_9
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lorg/telegram/messenger/SendMessagesHelper$20;

    move-wide/from16 v2, p8

    move-object/from16 v4, p7

    move-object v5, p0

    move-wide/from16 v6, p3

    move/from16 v8, p6

    move/from16 v9, p5

    move-wide/from16 v10, p1

    move-object/from16 v12, p11

    move-object/from16 v13, p10

    invoke-direct/range {v1 .. v13}, Lorg/telegram/messenger/SendMessagesHelper$20;-><init>(JLorg/telegram/messenger/VideoEditedInfo;Ljava/lang/String;JIIJLjava/lang/String;Lorg/telegram/messenger/MessageObject;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 4827
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_8
.end method

.method private telehSendMessage(Ljava/lang/CharSequence;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$MessageMedia;Lorg/telegram/tgnet/TLRPC$TL_photo;Lorg/telegram/messenger/VideoEditedInfo;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$TL_document;JLjava/lang/String;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$WebPage;ZLorg/telegram/messenger/MessageObject;Ljava/util/ArrayList;Ljava/util/HashMap;)V
    .registers 69
    .param p1, "caption"    # Ljava/lang/CharSequence;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "location"    # Lorg/telegram/tgnet/TLRPC$MessageMedia;
    .param p4, "photo"    # Lorg/telegram/tgnet/TLRPC$TL_photo;
    .param p5, "videoEditedInfo"    # Lorg/telegram/messenger/VideoEditedInfo;
    .param p6, "user"    # Lorg/telegram/tgnet/TLRPC$User;
    .param p7, "document"    # Lorg/telegram/tgnet/TLRPC$TL_document;
    .param p8, "peer"    # J
    .param p10, "path"    # Ljava/lang/String;
    .param p11, "reply_to_msg"    # Lorg/telegram/messenger/MessageObject;
    .param p12, "webPage"    # Lorg/telegram/tgnet/TLRPC$WebPage;
    .param p13, "searchLinks"    # Z
    .param p14, "retryMessageObject"    # Lorg/telegram/messenger/MessageObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/String;",
            "Lorg/telegram/tgnet/TLRPC$MessageMedia;",
            "Lorg/telegram/tgnet/TLRPC$TL_photo;",
            "Lorg/telegram/messenger/VideoEditedInfo;",
            "Lorg/telegram/tgnet/TLRPC$User;",
            "Lorg/telegram/tgnet/TLRPC$TL_document;",
            "J",
            "Ljava/lang/String;",
            "Lorg/telegram/messenger/MessageObject;",
            "Lorg/telegram/tgnet/TLRPC$WebPage;",
            "Z",
            "Lorg/telegram/messenger/MessageObject;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$MessageEntity;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2230
    .local p15, "entities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$MessageEntity;>;"
    .local p16, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-wide/16 v8, 0x0

    cmp-long v4, p8, v8

    if-nez v4, :cond_7

    .line 3137
    :cond_6
    :goto_6
    return-void

    .line 2234
    :cond_7
    const/16 v39, 0x0

    .line 2235
    .local v39, "originalPath":Ljava/lang/String;
    if-eqz p16, :cond_1f

    const-string v4, "originalPath"

    move-object/from16 v0, p16

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 2236
    const-string v4, "originalPath"

    move-object/from16 v0, p16

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v39

    .end local v39    # "originalPath":Ljava/lang/String;
    check-cast v39, Ljava/lang/String;

    .line 2239
    .restart local v39    # "originalPath":Ljava/lang/String;
    :cond_1f
    const/16 v34, 0x0

    .line 2240
    .local v34, "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    const/16 v36, 0x0

    .line 2241
    .local v36, "newMsgObj":Lorg/telegram/messenger/MessageObject;
    const/16 v49, -0x1

    .line 2242
    .local v49, "type":I
    move-wide/from16 v0, p8

    long-to-int v0, v0

    move/from16 v32, v0

    .line 2243
    .local v32, "lower_id":I
    const/16 v4, 0x20

    shr-long v8, p8, v4

    long-to-int v0, v8

    move/from16 v28, v0

    .line 2244
    .local v28, "high_id":I
    const/16 v30, 0x0

    .line 2245
    .local v30, "isChannel":Z
    const/16 v16, 0x0

    .line 2246
    .local v16, "encryptedChat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    if-eqz v32, :cond_82

    invoke-static/range {v32 .. v32}, Lorg/telegram/messenger/MessagesController;->getInputPeer(I)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v44

    .line 2247
    .local v44, "sendToPeer":Lorg/telegram/tgnet/TLRPC$InputPeer;
    :goto_3b
    const/16 v45, 0x0

    .line 2248
    .local v45, "sendToPeers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$InputUser;>;"
    if-nez v32, :cond_85

    .line 2249
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/MessagesController;->getEncryptedChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-result-object v16

    .line 2250
    if-nez v16, :cond_a5

    .line 2251
    if-eqz p14, :cond_6

    .line 2252
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    move-object/from16 v0, p14

    iget-object v6, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/MessagesStorage;->markMessageAsSendError(Lorg/telegram/tgnet/TLRPC$Message;)V

    .line 2253
    move-object/from16 v0, p14

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    const/4 v6, 0x2

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$Message;->send_state:I

    .line 2254
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v4

    sget v6, Lorg/telegram/messenger/NotificationCenter;->messageSendError:I

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual/range {p14 .. p14}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v8, v9

    invoke-virtual {v4, v6, v8}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 2255
    invoke-virtual/range {p14 .. p14}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/SendMessagesHelper;->processSentMessage(I)V

    goto :goto_6

    .line 2246
    .end local v44    # "sendToPeer":Lorg/telegram/tgnet/TLRPC$InputPeer;
    .end local v45    # "sendToPeers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$InputUser;>;"
    :cond_82
    const/16 v44, 0x0

    goto :goto_3b

    .line 2259
    .restart local v44    # "sendToPeer":Lorg/telegram/tgnet/TLRPC$InputPeer;
    .restart local v45    # "sendToPeers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$InputUser;>;"
    :cond_85
    move-object/from16 v0, v44

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChannel;

    if-eqz v4, :cond_a5

    .line 2260
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    move-object/from16 v0, v44

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$InputPeer;->channel_id:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v24

    .line 2261
    .local v24, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    if-eqz v24, :cond_1f5

    move-object/from16 v0, v24

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v4, :cond_1f5

    const/16 v30, 0x1

    .line 2265
    .end local v24    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_a5
    :goto_a5
    if-eqz p14, :cond_2ee

    .line 2266
    :try_start_a7
    move-object/from16 v0, p14

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v34, v0

    .line 2268
    invoke-virtual/range {p14 .. p14}, Lorg/telegram/messenger/MessageObject;->isForwarded()Z

    move-result v4

    if-eqz v4, :cond_1f9

    .line 2269
    const/16 v49, 0x4

    .line 2432
    :cond_b5
    :goto_b5
    move-object/from16 v0, v34

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    const-wide/16 v14, 0x0

    cmp-long v4, v8, v14

    if-nez v4, :cond_c7

    .line 2433
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/SendMessagesHelper;->getNextRandomId()J

    move-result-wide v8

    move-object/from16 v0, v34

    iput-wide v8, v0, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    .line 2435
    :cond_c7
    if-eqz p16, :cond_f9

    const-string v4, "bot"

    move-object/from16 v0, p16

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f9

    .line 2436
    if-eqz v16, :cond_594

    .line 2437
    const-string v4, "bot_name"

    move-object/from16 v0, p16

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, v34

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->via_bot_name:Ljava/lang/String;

    .line 2438
    move-object/from16 v0, v34

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->via_bot_name:Ljava/lang/String;

    if-nez v4, :cond_ef

    .line 2439
    const-string v4, ""

    move-object/from16 v0, v34

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->via_bot_name:Ljava/lang/String;

    .line 2444
    :cond_ef
    :goto_ef
    move-object/from16 v0, v34

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    or-int/lit16 v4, v4, 0x800

    move-object/from16 v0, v34

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    .line 2446
    :cond_f9
    move-object/from16 v0, p16

    move-object/from16 v1, v34

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$Message;->params:Ljava/util/HashMap;

    .line 2447
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v4

    move-object/from16 v0, v34

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    .line 2448
    move-object/from16 v0, v34

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    or-int/lit16 v4, v4, 0x200

    move-object/from16 v0, v34

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    .line 2449
    move-object/from16 v0, v44

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChannel;

    if-eqz v4, :cond_5c1

    .line 2450
    if-eqz v30, :cond_12c

    .line 2451
    const/4 v4, 0x1

    move-object/from16 v0, v34

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->views:I

    .line 2452
    move-object/from16 v0, v34

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    or-int/lit16 v4, v4, 0x400

    move-object/from16 v0, v34

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    .line 2454
    :cond_12c
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    move-object/from16 v0, v44

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$InputPeer;->channel_id:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v24

    .line 2455
    .restart local v24    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    if-eqz v24, :cond_14f

    .line 2456
    move-object/from16 v0, v24

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v4, :cond_5ac

    .line 2457
    move-object/from16 v0, v34

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    const/high16 v6, -0x80000000

    or-int/2addr v4, v6

    move-object/from16 v0, v34

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    .line 2468
    .end local v24    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_14f
    :goto_14f
    move-wide/from16 v0, p8

    move-object/from16 v2, v34

    iput-wide v0, v2, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    .line 2469
    if-eqz p11, :cond_181

    .line 2470
    if-eqz v16, :cond_5c8

    move-object/from16 v0, p11

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v8, v4, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    const-wide/16 v14, 0x0

    cmp-long v4, v8, v14

    if-eqz v4, :cond_5c8

    .line 2471
    move-object/from16 v0, p11

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v8, v4, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    move-object/from16 v0, v34

    iput-wide v8, v0, Lorg/telegram/tgnet/TLRPC$Message;->reply_to_random_id:J

    .line 2472
    move-object/from16 v0, v34

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    or-int/lit8 v4, v4, 0x8

    move-object/from16 v0, v34

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    .line 2476
    :goto_179
    invoke-virtual/range {p11 .. p11}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    move-object/from16 v0, v34

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->reply_to_msg_id:I

    .line 2478
    :cond_181
    if-eqz v32, :cond_6fd

    .line 2479
    const/4 v4, 0x1

    move/from16 v0, v28

    if-ne v0, v4, :cond_6cd

    .line 2480
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper;->currentChatInfo:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-nez v4, :cond_5d4

    .line 2481
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    move-object/from16 v0, v34

    invoke-virtual {v4, v0}, Lorg/telegram/messenger/MessagesStorage;->markMessageAsSendError(Lorg/telegram/tgnet/TLRPC$Message;)V

    .line 2482
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v4

    sget v6, Lorg/telegram/messenger/NotificationCenter;->messageSendError:I

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    move-object/from16 v0, v34

    iget v11, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v8, v9

    invoke-virtual {v4, v6, v8}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 2483
    move-object/from16 v0, v34

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/SendMessagesHelper;->processSentMessage(I)V
    :try_end_1b7
    .catch Ljava/lang/Exception; {:try_start_a7 .. :try_end_1b7} :catch_1b9

    goto/16 :goto_6

    .line 3128
    :catch_1b9
    move-exception v27

    move-object/from16 v12, v36

    .line 3129
    .end local v36    # "newMsgObj":Lorg/telegram/messenger/MessageObject;
    .local v12, "newMsgObj":Lorg/telegram/messenger/MessageObject;
    .local v27, "e":Ljava/lang/Exception;
    :goto_1bc
    const-string v4, "tmessages"

    move-object/from16 v0, v27

    invoke-static {v4, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3130
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    move-object/from16 v0, v34

    invoke-virtual {v4, v0}, Lorg/telegram/messenger/MessagesStorage;->markMessageAsSendError(Lorg/telegram/tgnet/TLRPC$Message;)V

    .line 3131
    if-eqz v12, :cond_1d3

    .line 3132
    iget-object v4, v12, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    const/4 v6, 0x2

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$Message;->send_state:I

    .line 3134
    :cond_1d3
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v4

    sget v6, Lorg/telegram/messenger/NotificationCenter;->messageSendError:I

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    move-object/from16 v0, v34

    iget v11, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v8, v9

    invoke-virtual {v4, v6, v8}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 3135
    move-object/from16 v0, v34

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/SendMessagesHelper;->processSentMessage(I)V

    goto/16 :goto_6

    .line 2261
    .end local v12    # "newMsgObj":Lorg/telegram/messenger/MessageObject;
    .end local v27    # "e":Ljava/lang/Exception;
    .restart local v24    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    .restart local v36    # "newMsgObj":Lorg/telegram/messenger/MessageObject;
    :cond_1f5
    const/16 v30, 0x0

    goto/16 :goto_a5

    .line 2271
    .end local v24    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_1f9
    :try_start_1f9
    move-object/from16 v0, p14

    iget v4, v0, Lorg/telegram/messenger/MessageObject;->type:I

    if-nez v4, :cond_219

    .line 2272
    move-object/from16 v0, v34

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    move-object/from16 p2, v0

    .line 2273
    if-eqz p16, :cond_215

    const-string v4, "query_id"

    move-object/from16 v0, p16

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_215

    .line 2274
    const/16 v49, 0x9

    goto/16 :goto_b5

    .line 2276
    :cond_215
    const/16 v49, 0x0

    goto/16 :goto_b5

    .line 2278
    :cond_219
    move-object/from16 v0, p14

    iget v4, v0, Lorg/telegram/messenger/MessageObject;->type:I

    const/4 v6, 0x4

    if-ne v4, v6, :cond_22a

    .line 2279
    move-object/from16 v0, v34

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 p3, v0

    .line 2280
    const/16 v49, 0x1

    goto/16 :goto_b5

    .line 2281
    :cond_22a
    move-object/from16 v0, p14

    iget v4, v0, Lorg/telegram/messenger/MessageObject;->type:I

    const/4 v6, 0x1

    if-ne v4, v6, :cond_250

    .line 2282
    move-object/from16 v0, v34

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    move-object v0, v4

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_photo;

    move-object/from16 p4, v0

    .line 2283
    if-eqz p16, :cond_24c

    const-string v4, "query_id"

    move-object/from16 v0, p16

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_24c

    .line 2284
    const/16 v49, 0x9

    goto/16 :goto_b5

    .line 2286
    :cond_24c
    const/16 v49, 0x2

    goto/16 :goto_b5

    .line 2288
    :cond_250
    move-object/from16 v0, p14

    iget v4, v0, Lorg/telegram/messenger/MessageObject;->type:I

    const/4 v6, 0x3

    if-ne v4, v6, :cond_266

    .line 2289
    const/16 v49, 0x3

    .line 2290
    move-object/from16 v0, v34

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move-object v0, v4

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_document;

    move-object/from16 p7, v0

    goto/16 :goto_b5

    .line 2291
    :cond_266
    move-object/from16 v0, p14

    iget v4, v0, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v6, 0xc

    if-ne v4, v6, :cond_2a1

    .line 2292
    new-instance v50, Lorg/telegram/tgnet/TLRPC$TL_userRequest_old2;

    invoke-direct/range {v50 .. v50}, Lorg/telegram/tgnet/TLRPC$TL_userRequest_old2;-><init>()V
    :try_end_273
    .catch Ljava/lang/Exception; {:try_start_1f9 .. :try_end_273} :catch_1b9

    .line 2293
    .end local p6    # "user":Lorg/telegram/tgnet/TLRPC$User;
    .local v50, "user":Lorg/telegram/tgnet/TLRPC$User;
    :try_start_273
    move-object/from16 v0, v34

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->phone_number:Ljava/lang/String;

    move-object/from16 v0, v50

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    .line 2294
    move-object/from16 v0, v34

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->first_name:Ljava/lang/String;

    move-object/from16 v0, v50

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    .line 2295
    move-object/from16 v0, v34

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->last_name:Ljava/lang/String;

    move-object/from16 v0, v50

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    .line 2296
    move-object/from16 v0, v34

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->user_id:I

    move-object/from16 v0, v50

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$User;->id:I
    :try_end_29b
    .catch Ljava/lang/Exception; {:try_start_273 .. :try_end_29b} :catch_165b

    .line 2297
    const/16 v49, 0x6

    move-object/from16 p6, v50

    .end local v50    # "user":Lorg/telegram/tgnet/TLRPC$User;
    .restart local p6    # "user":Lorg/telegram/tgnet/TLRPC$User;
    goto/16 :goto_b5

    .line 2298
    :cond_2a1
    :try_start_2a1
    move-object/from16 v0, p14

    iget v4, v0, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v6, 0x8

    if-eq v4, v6, :cond_2b9

    move-object/from16 v0, p14

    iget v4, v0, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v6, 0x9

    if-eq v4, v6, :cond_2b9

    move-object/from16 v0, p14

    iget v4, v0, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v6, 0xd

    if-ne v4, v6, :cond_2d8

    .line 2299
    :cond_2b9
    move-object/from16 v0, v34

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move-object v0, v4

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_document;

    move-object/from16 p7, v0

    .line 2300
    if-eqz p16, :cond_2d4

    const-string v4, "query_id"

    move-object/from16 v0, p16

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2d4

    .line 2301
    const/16 v49, 0x9

    goto/16 :goto_b5

    .line 2303
    :cond_2d4
    const/16 v49, 0x7

    goto/16 :goto_b5

    .line 2305
    :cond_2d8
    move-object/from16 v0, p14

    iget v4, v0, Lorg/telegram/messenger/MessageObject;->type:I

    const/4 v6, 0x2

    if-ne v4, v6, :cond_b5

    .line 2306
    move-object/from16 v0, v34

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move-object v0, v4

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_document;

    move-object/from16 p7, v0

    .line 2307
    const/16 v49, 0x8

    goto/16 :goto_b5

    .line 2311
    :cond_2ee
    if-eqz p2, :cond_3a0

    .line 2312
    if-eqz v16, :cond_37f

    move-object/from16 v0, v16

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->layer:I

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->getPeerLayerVersion(I)I

    move-result v4

    const/16 v6, 0x11

    if-lt v4, v6, :cond_37f

    .line 2313
    new-instance v35, Lorg/telegram/tgnet/TLRPC$TL_message_secret;

    invoke-direct/range {v35 .. v35}, Lorg/telegram/tgnet/TLRPC$TL_message_secret;-><init>()V

    .end local v34    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    .local v35, "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    move-object/from16 v34, v35

    .line 2317
    .end local v35    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    .restart local v34    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    :goto_305
    if-eqz p15, :cond_313

    invoke-virtual/range {p15 .. p15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_313

    .line 2318
    move-object/from16 v0, p15

    move-object/from16 v1, v34

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    .line 2320
    :cond_313
    if-eqz v16, :cond_330

    move-object/from16 v0, p12

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_webPagePending;

    if-eqz v4, :cond_330

    .line 2321
    move-object/from16 v0, p12

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$WebPage;->url:Ljava/lang/String;

    if-eqz v4, :cond_388

    .line 2322
    new-instance v37, Lorg/telegram/tgnet/TLRPC$TL_webPageUrlPending;

    invoke-direct/range {v37 .. v37}, Lorg/telegram/tgnet/TLRPC$TL_webPageUrlPending;-><init>()V

    .line 2323
    .local v37, "newWebPage":Lorg/telegram/tgnet/TLRPC$WebPage;
    move-object/from16 v0, p12

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$WebPage;->url:Ljava/lang/String;

    move-object/from16 v0, v37

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$WebPage;->url:Ljava/lang/String;

    .line 2324
    move-object/from16 p12, v37

    .line 2329
    .end local v37    # "newWebPage":Lorg/telegram/tgnet/TLRPC$WebPage;
    :cond_330
    :goto_330
    if-nez p12, :cond_38b

    .line 2330
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;-><init>()V

    move-object/from16 v0, v34

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 2335
    :goto_33b
    if-eqz p16, :cond_39d

    const-string v4, "query_id"

    move-object/from16 v0, p16

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_39d

    .line 2336
    const/16 v49, 0x9

    .line 2340
    :goto_349
    move-object/from16 v0, p2

    move-object/from16 v1, v34

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    .line 2419
    :cond_34f
    :goto_34f
    move-object/from16 v0, v34

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    if-nez v4, :cond_35b

    .line 2420
    const-string v4, ""

    move-object/from16 v0, v34

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    .line 2422
    :cond_35b
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getNewMessageId()I

    move-result v4

    move-object/from16 v0, v34

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    move-object/from16 v0, v34

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->local_id:I

    .line 2423
    const/4 v4, 0x1

    move-object/from16 v0, v34

    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    .line 2424
    if-eqz v30, :cond_580

    if-eqz v44, :cond_580

    .line 2425
    move-object/from16 v0, v44

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$InputPeer;->channel_id:I

    neg-int v4, v4

    move-object/from16 v0, v34

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    .line 2430
    :goto_379
    const/4 v4, 0x0

    invoke-static {v4}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    goto/16 :goto_b5

    .line 2315
    :cond_37f
    new-instance v35, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct/range {v35 .. v35}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    .end local v34    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    .restart local v35    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    move-object/from16 v34, v35

    .end local v35    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    .restart local v34    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    goto/16 :goto_305

    .line 2326
    :cond_388
    const/16 p12, 0x0

    goto :goto_330

    .line 2332
    :cond_38b
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;-><init>()V

    move-object/from16 v0, v34

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 2333
    move-object/from16 v0, v34

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v0, p12

    iput-object v0, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    goto :goto_33b

    .line 2338
    :cond_39d
    const/16 v49, 0x0

    goto :goto_349

    .line 2341
    :cond_3a0
    if-eqz p3, :cond_3ce

    .line 2342
    if-eqz v16, :cond_3c6

    move-object/from16 v0, v16

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->layer:I

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->getPeerLayerVersion(I)I

    move-result v4

    const/16 v6, 0x11

    if-lt v4, v6, :cond_3c6

    .line 2343
    new-instance v35, Lorg/telegram/tgnet/TLRPC$TL_message_secret;

    invoke-direct/range {v35 .. v35}, Lorg/telegram/tgnet/TLRPC$TL_message_secret;-><init>()V

    .end local v34    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    .restart local v35    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    move-object/from16 v34, v35

    .line 2347
    .end local v35    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    .restart local v34    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    :goto_3b7
    move-object/from16 v0, p3

    move-object/from16 v1, v34

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 2348
    const-string v4, ""

    move-object/from16 v0, v34

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    .line 2349
    const/16 v49, 0x1

    goto :goto_34f

    .line 2345
    :cond_3c6
    new-instance v35, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct/range {v35 .. v35}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    .end local v34    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    .restart local v35    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    move-object/from16 v34, v35

    .end local v35    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    .restart local v34    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    goto :goto_3b7

    .line 2350
    :cond_3ce
    if-eqz p4, :cond_467

    .line 2351
    if-eqz v16, :cond_430

    move-object/from16 v0, v16

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->layer:I

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->getPeerLayerVersion(I)I

    move-result v4

    const/16 v6, 0x11

    if-lt v4, v6, :cond_430

    .line 2352
    new-instance v35, Lorg/telegram/tgnet/TLRPC$TL_message_secret;

    invoke-direct/range {v35 .. v35}, Lorg/telegram/tgnet/TLRPC$TL_message_secret;-><init>()V

    .end local v34    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    .restart local v35    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    move-object/from16 v34, v35

    .line 2356
    .end local v35    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    .restart local v34    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    :goto_3e5
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;-><init>()V

    move-object/from16 v0, v34

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 2357
    move-object/from16 v0, v34

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz p1, :cond_438

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_3f8
    iput-object v4, v6, Lorg/telegram/tgnet/TLRPC$MessageMedia;->caption:Ljava/lang/String;

    .line 2358
    move-object/from16 v0, v34

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v0, p4

    iput-object v0, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    .line 2359
    if-eqz p16, :cond_43b

    const-string v4, "query_id"

    move-object/from16 v0, p16

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_43b

    .line 2360
    const/16 v49, 0x9

    .line 2364
    :goto_410
    const-string v4, "-1"

    move-object/from16 v0, v34

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    .line 2365
    if-eqz p10, :cond_43e

    invoke-virtual/range {p10 .. p10}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_43e

    const-string v4, "http"

    move-object/from16 v0, p10

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_43e

    .line 2366
    move-object/from16 v0, p10

    move-object/from16 v1, v34

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    goto/16 :goto_34f

    .line 2354
    :cond_430
    new-instance v35, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct/range {v35 .. v35}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    .end local v34    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    .restart local v35    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    move-object/from16 v34, v35

    .end local v35    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    .restart local v34    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    goto :goto_3e5

    .line 2357
    :cond_438
    const-string v4, ""

    goto :goto_3f8

    .line 2362
    :cond_43b
    const/16 v49, 0x2

    goto :goto_410

    .line 2368
    :cond_43e
    move-object/from16 v0, p4

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_photo;->sizes:Ljava/util/ArrayList;

    move-object/from16 v0, p4

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v0, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-object/from16 v31, v0

    .line 2369
    .local v31, "location1":Lorg/telegram/tgnet/TLRPC$FileLocation;
    const/4 v4, 0x1

    move-object/from16 v0, v31

    invoke-static {v0, v4}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v34

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    goto/16 :goto_34f

    .line 2371
    .end local v31    # "location1":Lorg/telegram/tgnet/TLRPC$FileLocation;
    :cond_467
    if-eqz p6, :cond_4e9

    .line 2372
    if-eqz v16, :cond_4e1

    move-object/from16 v0, v16

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->layer:I

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->getPeerLayerVersion(I)I

    move-result v4

    const/16 v6, 0x11

    if-lt v4, v6, :cond_4e1

    .line 2373
    new-instance v35, Lorg/telegram/tgnet/TLRPC$TL_message_secret;

    invoke-direct/range {v35 .. v35}, Lorg/telegram/tgnet/TLRPC$TL_message_secret;-><init>()V

    .end local v34    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    .restart local v35    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    move-object/from16 v34, v35

    .line 2377
    .end local v35    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    .restart local v34    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    :goto_47e
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaContact;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaContact;-><init>()V

    move-object/from16 v0, v34

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 2378
    move-object/from16 v0, v34

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v0, p6

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->phone_number:Ljava/lang/String;

    .line 2379
    move-object/from16 v0, v34

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v0, p6

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->first_name:Ljava/lang/String;

    .line 2380
    move-object/from16 v0, v34

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v0, p6

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->last_name:Ljava/lang/String;

    .line 2381
    move-object/from16 v0, v34

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v0, p6

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$User;->id:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->user_id:I

    .line 2382
    move-object/from16 v0, v34

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->first_name:Ljava/lang/String;

    if-nez v4, :cond_4c3

    .line 2383
    move-object/from16 v0, v34

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    const-string v6, ""

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->first_name:Ljava/lang/String;

    move-object/from16 v0, p6

    iput-object v6, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    .line 2385
    :cond_4c3
    move-object/from16 v0, v34

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->last_name:Ljava/lang/String;

    if-nez v4, :cond_4d7

    .line 2386
    move-object/from16 v0, v34

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    const-string v6, ""

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->last_name:Ljava/lang/String;

    move-object/from16 v0, p6

    iput-object v6, v0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    .line 2388
    :cond_4d7
    const-string v4, ""

    move-object/from16 v0, v34

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    .line 2389
    const/16 v49, 0x6

    goto/16 :goto_34f

    .line 2375
    :cond_4e1
    new-instance v35, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct/range {v35 .. v35}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    .end local v34    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    .restart local v35    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    move-object/from16 v34, v35

    .end local v35    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    .restart local v34    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    goto :goto_47e

    .line 2390
    :cond_4e9
    if-eqz p7, :cond_34f

    .line 2391
    if-eqz v16, :cond_549

    move-object/from16 v0, v16

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->layer:I

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->getPeerLayerVersion(I)I

    move-result v4

    const/16 v6, 0x11

    if-lt v4, v6, :cond_549

    .line 2392
    new-instance v35, Lorg/telegram/tgnet/TLRPC$TL_message_secret;

    invoke-direct/range {v35 .. v35}, Lorg/telegram/tgnet/TLRPC$TL_message_secret;-><init>()V

    .end local v34    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    .restart local v35    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    move-object/from16 v34, v35

    .line 2396
    .end local v35    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    .restart local v34    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    :goto_500
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;-><init>()V

    move-object/from16 v0, v34

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 2397
    move-object/from16 v0, v34

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz p1, :cond_551

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_513
    iput-object v4, v6, Lorg/telegram/tgnet/TLRPC$MessageMedia;->caption:Ljava/lang/String;

    .line 2398
    move-object/from16 v0, v34

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v0, p7

    iput-object v0, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 2399
    invoke-static/range {p7 .. p7}, Lorg/telegram/messenger/MessageObject;->isVideoDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v4

    if-eqz v4, :cond_554

    .line 2400
    const/16 v49, 0x3

    .line 2408
    :goto_525
    if-nez p5, :cond_56f

    .line 2409
    const-string v4, "-1"

    move-object/from16 v0, v34

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    .line 2413
    :goto_52d
    if-eqz v16, :cond_578

    move-object/from16 v0, p7

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->dc_id:I

    if-lez v4, :cond_578

    invoke-static/range {p7 .. p7}, Lorg/telegram/messenger/MessageObject;->isStickerDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v4

    if-nez v4, :cond_578

    .line 2414
    invoke-static/range {p7 .. p7}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v34

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    goto/16 :goto_34f

    .line 2394
    :cond_549
    new-instance v35, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct/range {v35 .. v35}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    .end local v34    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    .restart local v35    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    move-object/from16 v34, v35

    .end local v35    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    .restart local v34    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    goto :goto_500

    .line 2397
    :cond_551
    const-string v4, ""

    goto :goto_513

    .line 2401
    :cond_554
    invoke-static/range {p7 .. p7}, Lorg/telegram/messenger/MessageObject;->isVoiceDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v4

    if-eqz v4, :cond_55d

    .line 2402
    const/16 v49, 0x8

    goto :goto_525

    .line 2403
    :cond_55d
    if-eqz p16, :cond_56c

    const-string v4, "query_id"

    move-object/from16 v0, p16

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_56c

    .line 2404
    const/16 v49, 0x9

    goto :goto_525

    .line 2406
    :cond_56c
    const/16 v49, 0x7

    goto :goto_525

    .line 2411
    :cond_56f
    invoke-virtual/range {p5 .. p5}, Lorg/telegram/messenger/VideoEditedInfo;->getString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v34

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    goto :goto_52d

    .line 2416
    :cond_578
    move-object/from16 v0, p10

    move-object/from16 v1, v34

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    goto/16 :goto_34f

    .line 2427
    :cond_580
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v4

    move-object/from16 v0, v34

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    .line 2428
    move-object/from16 v0, v34

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    or-int/lit16 v4, v4, 0x100

    move-object/from16 v0, v34

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    goto/16 :goto_379

    .line 2442
    :cond_594
    const-string v4, "bot"

    move-object/from16 v0, p16

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, v34

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->via_bot_id:I

    goto/16 :goto_ef

    .line 2459
    .restart local v24    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_5ac
    const/4 v4, 0x1

    move-object/from16 v0, v34

    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->post:Z

    .line 2460
    move-object/from16 v0, v24

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Chat;->signatures:Z

    if-eqz v4, :cond_14f

    .line 2461
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v4

    move-object/from16 v0, v34

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    goto/16 :goto_14f

    .line 2466
    .end local v24    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_5c1
    const/4 v4, 0x1

    move-object/from16 v0, v34

    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->unread:Z

    goto/16 :goto_14f

    .line 2474
    :cond_5c8
    move-object/from16 v0, v34

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    or-int/lit8 v4, v4, 0x8

    move-object/from16 v0, v34

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    goto/16 :goto_179

    .line 2486
    :cond_5d4
    new-instance v46, Ljava/util/ArrayList;

    invoke-direct/range {v46 .. v46}, Ljava/util/ArrayList;-><init>()V
    :try_end_5d9
    .catch Ljava/lang/Exception; {:try_start_2a1 .. :try_end_5d9} :catch_1b9

    .line 2487
    .end local v45    # "sendToPeers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$InputUser;>;"
    .local v46, "sendToPeers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$InputUser;>;"
    :try_start_5d9
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper;->currentChatInfo:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5e5
    :goto_5e5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_616

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    .line 2488
    .local v40, "participant":Lorg/telegram/tgnet/TLRPC$ChatParticipant;
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    move-object/from16 v0, v40

    iget v8, v0, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v47

    .line 2489
    .local v47, "sendToUser":Lorg/telegram/tgnet/TLRPC$User;
    invoke-static/range {v47 .. v47}, Lorg/telegram/messenger/MessagesController;->getInputUser(Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v41

    .line 2490
    .local v41, "peerUser":Lorg/telegram/tgnet/TLRPC$InputUser;
    if-eqz v41, :cond_5e5

    .line 2491
    move-object/from16 v0, v46

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5e5

    .line 3128
    .end local v40    # "participant":Lorg/telegram/tgnet/TLRPC$ChatParticipant;
    .end local v41    # "peerUser":Lorg/telegram/tgnet/TLRPC$InputUser;
    .end local v47    # "sendToUser":Lorg/telegram/tgnet/TLRPC$User;
    :catch_60f
    move-exception v27

    move-object/from16 v45, v46

    .end local v46    # "sendToPeers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$InputUser;>;"
    .restart local v45    # "sendToPeers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$InputUser;>;"
    move-object/from16 v12, v36

    .end local v36    # "newMsgObj":Lorg/telegram/messenger/MessageObject;
    .restart local v12    # "newMsgObj":Lorg/telegram/messenger/MessageObject;
    goto/16 :goto_1bc

    .line 2494
    .end local v12    # "newMsgObj":Lorg/telegram/messenger/MessageObject;
    .end local v45    # "sendToPeers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$InputUser;>;"
    .restart local v36    # "newMsgObj":Lorg/telegram/messenger/MessageObject;
    .restart local v46    # "sendToPeers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$InputUser;>;"
    :cond_616
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_peerChat;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_peerChat;-><init>()V

    move-object/from16 v0, v34

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 2495
    move-object/from16 v0, v34

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move/from16 v0, v32

    iput v0, v4, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I
    :try_end_627
    .catch Ljava/lang/Exception; {:try_start_5d9 .. :try_end_627} :catch_60f

    move-object/from16 v45, v46

    .line 2541
    .end local v46    # "sendToPeers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$InputUser;>;"
    .restart local v45    # "sendToPeers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$InputUser;>;"
    :cond_629
    :goto_629
    if-eqz v16, :cond_637

    :try_start_62b
    move-object/from16 v0, v16

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->layer:I

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->getPeerLayerVersion(I)I

    move-result v4

    const/16 v6, 0x2e

    if-lt v4, v6, :cond_64f

    :cond_637
    const/4 v4, 0x1

    move/from16 v0, v28

    if-eq v0, v4, :cond_64f

    invoke-static/range {v34 .. v34}, Lorg/telegram/messenger/MessageObject;->isVoiceMessage(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v4

    if-eqz v4, :cond_64f

    move-object/from16 v0, v34

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    if-nez v4, :cond_64f

    .line 2542
    const/4 v4, 0x1

    move-object/from16 v0, v34

    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media_unread:Z

    .line 2545
    :cond_64f
    new-instance v12, Lorg/telegram/messenger/MessageObject;

    const/4 v4, 0x0

    const/4 v6, 0x1

    move-object/from16 v0, v34

    invoke-direct {v12, v0, v4, v6}, Lorg/telegram/messenger/MessageObject;-><init>(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/AbstractMap;Z)V
    :try_end_658
    .catch Ljava/lang/Exception; {:try_start_62b .. :try_end_658} :catch_1b9

    .line 2546
    .end local v36    # "newMsgObj":Lorg/telegram/messenger/MessageObject;
    .restart local v12    # "newMsgObj":Lorg/telegram/messenger/MessageObject;
    :try_start_658
    move-object/from16 v0, p11

    iput-object v0, v12, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    .line 2547
    iget-object v4, v12, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    const/4 v6, 0x1

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$Message;->send_state:I

    .line 2549
    new-instance v38, Ljava/util/ArrayList;

    invoke-direct/range {v38 .. v38}, Ljava/util/ArrayList;-><init>()V

    .line 2550
    .local v38, "objArr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    move-object/from16 v0, v38

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2551
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2552
    .local v5, "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    move-object/from16 v0, v34

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2553
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Lorg/telegram/messenger/MessagesStorage;->putMessages(Ljava/util/ArrayList;ZZZI)V

    .line 2554
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    move-wide/from16 v0, p8

    move-object/from16 v2, v38

    invoke-virtual {v4, v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->updateInterfaceWithMessages(JLjava/util/ArrayList;)V

    .line 2555
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v4

    sget v6, Lorg/telegram/messenger/NotificationCenter;->dialogsNeedReload:I

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v4, v6, v8}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 2557
    if-eqz v49, :cond_6a3

    const/16 v4, 0x9

    move/from16 v0, v49

    if-ne v0, v4, :cond_92b

    if-eqz p2, :cond_92b

    if-eqz v16, :cond_92b

    .line 2558
    :cond_6a3
    if-nez v16, :cond_85f

    .line 2559
    if-eqz v45, :cond_7e3

    .line 2560
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendBroadcast;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_messages_sendBroadcast;-><init>()V

    .line 2561
    .local v7, "reqSend":Lorg/telegram/tgnet/TLRPC$TL_messages_sendBroadcast;
    new-instance v42, Ljava/util/ArrayList;

    invoke-direct/range {v42 .. v42}, Ljava/util/ArrayList;-><init>()V

    .line 2562
    .local v42, "random_ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/16 v20, 0x0

    .local v20, "a":I
    :goto_6b3
    invoke-virtual/range {v45 .. v45}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v20

    if-ge v0, v4, :cond_7c5

    .line 2563
    sget-object v4, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-virtual {v4}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v42

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_6ca
    .catch Ljava/lang/Exception; {:try_start_658 .. :try_end_6ca} :catch_7e0

    .line 2562
    add-int/lit8 v20, v20, 0x1

    goto :goto_6b3

    .line 2497
    .end local v5    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    .end local v7    # "reqSend":Lorg/telegram/tgnet/TLRPC$TL_messages_sendBroadcast;
    .end local v12    # "newMsgObj":Lorg/telegram/messenger/MessageObject;
    .end local v20    # "a":I
    .end local v38    # "objArr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .end local v42    # "random_ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .restart local v36    # "newMsgObj":Lorg/telegram/messenger/MessageObject;
    :cond_6cd
    :try_start_6cd
    invoke-static/range {v32 .. v32}, Lorg/telegram/messenger/MessagesController;->getPeer(I)Lorg/telegram/tgnet/TLRPC$Peer;

    move-result-object v4

    move-object/from16 v0, v34

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 2498
    if-lez v32, :cond_629

    .line 2499
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v47

    .line 2500
    .restart local v47    # "sendToUser":Lorg/telegram/tgnet/TLRPC$User;
    if-nez v47, :cond_6f0

    .line 2501
    move-object/from16 v0, v34

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/SendMessagesHelper;->processSentMessage(I)V

    goto/16 :goto_6

    .line 2504
    :cond_6f0
    move-object/from16 v0, v47

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-eqz v4, :cond_629

    .line 2505
    const/4 v4, 0x0

    move-object/from16 v0, v34

    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->unread:Z

    goto/16 :goto_629

    .line 2510
    .end local v47    # "sendToUser":Lorg/telegram/tgnet/TLRPC$User;
    :cond_6fd
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    move-object/from16 v0, v34

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 2511
    move-object/from16 v0, v16

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->participant_id:I

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v6

    if-ne v4, v6, :cond_76e

    .line 2512
    move-object/from16 v0, v34

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v0, v16

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->admin_id:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    .line 2516
    :goto_71a
    move-object/from16 v0, v16

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->ttl:I

    move-object/from16 v0, v34

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I

    .line 2517
    move-object/from16 v0, v34

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I

    if-eqz v4, :cond_629

    .line 2518
    invoke-static/range {v34 .. v34}, Lorg/telegram/messenger/MessageObject;->isVoiceMessage(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v4

    if-eqz v4, :cond_77c

    .line 2519
    const/16 v26, 0x0

    .line 2520
    .local v26, "duration":I
    const/16 v20, 0x0

    .restart local v20    # "a":I
    :goto_732
    move-object/from16 v0, v34

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v20

    if-ge v0, v4, :cond_75e

    .line 2521
    move-object/from16 v0, v34

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    .line 2522
    .local v22, "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    move-object/from16 v0, v22

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;

    if-eqz v4, :cond_779

    .line 2523
    move-object/from16 v0, v22

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->duration:I

    move/from16 v26, v0

    .line 2527
    .end local v22    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :cond_75e
    move-object/from16 v0, v16

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->ttl:I

    add-int/lit8 v6, v26, 0x1

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    move-object/from16 v0, v34

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I

    goto/16 :goto_629

    .line 2514
    .end local v20    # "a":I
    .end local v26    # "duration":I
    :cond_76e
    move-object/from16 v0, v34

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v0, v16

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->participant_id:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    goto :goto_71a

    .line 2520
    .restart local v20    # "a":I
    .restart local v22    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    .restart local v26    # "duration":I
    :cond_779
    add-int/lit8 v20, v20, 0x1

    goto :goto_732

    .line 2528
    .end local v20    # "a":I
    .end local v22    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    .end local v26    # "duration":I
    :cond_77c
    invoke-static/range {v34 .. v34}, Lorg/telegram/messenger/MessageObject;->isVideoMessage(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v4

    if-eqz v4, :cond_629

    .line 2529
    const/16 v26, 0x0

    .line 2530
    .restart local v26    # "duration":I
    const/16 v20, 0x0

    .restart local v20    # "a":I
    :goto_786
    move-object/from16 v0, v34

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v20

    if-ge v0, v4, :cond_7b2

    .line 2531
    move-object/from16 v0, v34

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    .line 2532
    .restart local v22    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    move-object/from16 v0, v22

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;

    if-eqz v4, :cond_7c2

    .line 2533
    move-object/from16 v0, v22

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->duration:I

    move/from16 v26, v0

    .line 2537
    .end local v22    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :cond_7b2
    move-object/from16 v0, v16

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->ttl:I

    add-int/lit8 v6, v26, 0x1

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    move-object/from16 v0, v34

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I
    :try_end_7c0
    .catch Ljava/lang/Exception; {:try_start_6cd .. :try_end_7c0} :catch_1b9

    goto/16 :goto_629

    .line 2530
    .restart local v22    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :cond_7c2
    add-int/lit8 v20, v20, 0x1

    goto :goto_786

    .line 2565
    .end local v22    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    .end local v26    # "duration":I
    .end local v36    # "newMsgObj":Lorg/telegram/messenger/MessageObject;
    .restart local v5    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    .restart local v7    # "reqSend":Lorg/telegram/tgnet/TLRPC$TL_messages_sendBroadcast;
    .restart local v12    # "newMsgObj":Lorg/telegram/messenger/MessageObject;
    .restart local v38    # "objArr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .restart local v42    # "random_ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_7c5
    :try_start_7c5
    move-object/from16 v0, p2

    iput-object v0, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendBroadcast;->message:Ljava/lang/String;

    .line 2566
    move-object/from16 v0, v45

    iput-object v0, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendBroadcast;->contacts:Ljava/util/ArrayList;

    .line 2567
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_inputMediaEmpty;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaEmpty;-><init>()V

    iput-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendBroadcast;->media:Lorg/telegram/tgnet/TLRPC$InputMedia;

    .line 2568
    move-object/from16 v0, v42

    iput-object v0, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendBroadcast;->random_id:Ljava/util/ArrayList;

    .line 2569
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v12, v4}, Lorg/telegram/messenger/SendMessagesHelper;->performSendMessageRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 3128
    .end local v5    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    .end local v7    # "reqSend":Lorg/telegram/tgnet/TLRPC$TL_messages_sendBroadcast;
    .end local v20    # "a":I
    .end local v38    # "objArr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .end local v42    # "random_ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :catch_7e0
    move-exception v27

    goto/16 :goto_1bc

    .line 2571
    .restart local v5    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    .restart local v38    # "objArr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    :cond_7e3
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;-><init>()V

    .line 2572
    .local v7, "reqSend":Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;
    move-object/from16 v0, p2

    iput-object v0, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;->message:Ljava/lang/String;

    .line 2573
    if-nez p14, :cond_85d

    const/4 v4, 0x1

    :goto_7ef
    iput-boolean v4, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;->clear_draft:Z

    .line 2574
    move-object/from16 v0, v34

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;

    if-eqz v4, :cond_81e

    .line 2575
    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v6, "Notifications"

    const/4 v8, 0x0

    invoke-virtual {v4, v6, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "silent_"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p8

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    invoke-interface {v4, v6, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;->silent:Z

    .line 2577
    :cond_81e
    move-object/from16 v0, v44

    iput-object v0, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 2578
    move-object/from16 v0, v34

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    iput-wide v8, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;->random_id:J

    .line 2579
    if-eqz p11, :cond_836

    .line 2580
    iget v4, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;->flags:I

    or-int/lit8 v4, v4, 0x1

    iput v4, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;->flags:I

    .line 2581
    invoke-virtual/range {p11 .. p11}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    iput v4, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;->reply_to_msg_id:I

    .line 2583
    :cond_836
    if-nez p13, :cond_83b

    .line 2584
    const/4 v4, 0x1

    iput-boolean v4, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;->no_webpage:Z

    .line 2586
    :cond_83b
    if-eqz p15, :cond_84d

    invoke-virtual/range {p15 .. p15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_84d

    .line 2587
    move-object/from16 v0, p15

    iput-object v0, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;->entities:Ljava/util/ArrayList;

    .line 2588
    iget v4, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;->flags:I

    or-int/lit8 v4, v4, 0x8

    iput v4, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;->flags:I

    .line 2590
    :cond_84d
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v12, v4}, Lorg/telegram/messenger/SendMessagesHelper;->performSendMessageRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;)V

    .line 2591
    if-nez p14, :cond_6

    .line 2592
    const/4 v4, 0x0

    move-wide/from16 v0, p8

    invoke-static {v0, v1, v4}, Lorg/telegram/messenger/query/DraftQuery;->cleanDraft(JZ)V

    goto/16 :goto_6

    .line 2573
    :cond_85d
    const/4 v4, 0x0

    goto :goto_7ef

    .line 2597
    .end local v7    # "reqSend":Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;
    :cond_85f
    move-object/from16 v0, v16

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->layer:I

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->getPeerLayerVersion(I)I

    move-result v4

    const/16 v6, 0x2e

    if-lt v4, v6, :cond_8f8

    .line 2598
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;-><init>()V

    .line 2599
    .local v7, "reqSend":Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;
    move-object/from16 v0, v34

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I

    iput v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->ttl:I

    .line 2600
    if-eqz p15, :cond_888

    invoke-virtual/range {p15 .. p15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_888

    .line 2601
    move-object/from16 v0, p15

    iput-object v0, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->entities:Ljava/util/ArrayList;

    .line 2602
    iget v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->flags:I

    or-int/lit16 v4, v4, 0x80

    iput v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->flags:I

    .line 2604
    :cond_888
    if-eqz p11, :cond_8a4

    move-object/from16 v0, p11

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v8, v4, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    const-wide/16 v14, 0x0

    cmp-long v4, v8, v14

    if-eqz v4, :cond_8a4

    .line 2605
    move-object/from16 v0, p11

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v8, v4, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    iput-wide v8, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->reply_to_random_id:J

    .line 2606
    iget v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->flags:I

    or-int/lit8 v4, v4, 0x8

    iput v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->flags:I

    .line 2616
    :cond_8a4
    :goto_8a4
    if-eqz p16, :cond_8c2

    const-string v4, "bot_name"

    move-object/from16 v0, p16

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_8c2

    .line 2617
    const-string v4, "bot_name"

    move-object/from16 v0, p16

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->via_bot_name:Ljava/lang/String;

    .line 2618
    iget v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->flags:I

    or-int/lit16 v4, v4, 0x800

    iput v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->flags:I

    .line 2620
    :cond_8c2
    move-object/from16 v0, v34

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    iput-wide v8, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->random_id:J

    .line 2621
    move-object/from16 v0, p2

    iput-object v0, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->message:Ljava/lang/String;

    .line 2622
    if-eqz p12, :cond_923

    move-object/from16 v0, p12

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$WebPage;->url:Ljava/lang/String;

    if-eqz v4, :cond_923

    .line 2623
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaWebPage;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaWebPage;-><init>()V

    iput-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    .line 2624
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p12

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$WebPage;->url:Ljava/lang/String;

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->url:Ljava/lang/String;

    .line 2625
    iget v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->flags:I

    or-int/lit16 v4, v4, 0x200

    iput v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->flags:I

    .line 2629
    :goto_8e9
    invoke-static {}, Lorg/telegram/messenger/SecretChatHelper;->getInstance()Lorg/telegram/messenger/SecretChatHelper;

    move-result-object v6

    iget-object v8, v12, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v9, v16

    invoke-virtual/range {v6 .. v12}, Lorg/telegram/messenger/SecretChatHelper;->performSendEncryptedRequest(Lorg/telegram/tgnet/TLRPC$DecryptedMessage;Lorg/telegram/tgnet/TLRPC$Message;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;Ljava/lang/String;Lorg/telegram/messenger/MessageObject;)V

    goto/16 :goto_6

    .line 2608
    .end local v7    # "reqSend":Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;
    :cond_8f8
    move-object/from16 v0, v16

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->layer:I

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->getPeerLayerVersion(I)I

    move-result v4

    const/16 v6, 0x11

    if-lt v4, v6, :cond_910

    .line 2609
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage_layer17;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage_layer17;-><init>()V

    .line 2610
    .restart local v7    # "reqSend":Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;
    move-object/from16 v0, v34

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I

    iput v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->ttl:I

    goto :goto_8a4

    .line 2612
    .end local v7    # "reqSend":Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;
    :cond_910
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage_layer8;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage_layer8;-><init>()V

    .line 2613
    .restart local v7    # "reqSend":Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;
    const/16 v4, 0xf

    new-array v4, v4, [B

    iput-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->random_bytes:[B

    .line 2614
    sget-object v4, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    iget-object v6, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->random_bytes:[B

    invoke-virtual {v4, v6}, Ljava/security/SecureRandom;->nextBytes([B)V

    goto :goto_8a4

    .line 2627
    :cond_923
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaEmpty;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaEmpty;-><init>()V

    iput-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    goto :goto_8e9

    .line 2631
    .end local v7    # "reqSend":Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;
    :cond_92b
    const/4 v4, 0x1

    move/from16 v0, v49

    if-lt v0, v4, :cond_935

    const/4 v4, 0x3

    move/from16 v0, v49

    if-le v0, v4, :cond_948

    :cond_935
    const/4 v4, 0x5

    move/from16 v0, v49

    if-lt v0, v4, :cond_940

    const/16 v4, 0x8

    move/from16 v0, v49

    if-le v0, v4, :cond_948

    :cond_940
    const/16 v4, 0x9

    move/from16 v0, v49

    if-ne v0, v4, :cond_1524

    if-eqz v16, :cond_1524

    .line 2632
    :cond_948
    if-nez v16, :cond_e08

    .line 2633
    const/16 v29, 0x0

    .line 2634
    .local v29, "inputMedia":Lorg/telegram/tgnet/TLRPC$InputMedia;
    const/16 v25, 0x0

    .line 2635
    .local v25, "delayedMessage":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    const/4 v4, 0x1

    move/from16 v0, v49

    if-ne v0, v4, :cond_9cd

    .line 2636
    move-object/from16 v0, p3

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;

    if-eqz v4, :cond_9c7

    .line 2637
    new-instance v29, Lorg/telegram/tgnet/TLRPC$TL_inputMediaVenue;

    .end local v29    # "inputMedia":Lorg/telegram/tgnet/TLRPC$InputMedia;
    invoke-direct/range {v29 .. v29}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaVenue;-><init>()V

    .line 2638
    .restart local v29    # "inputMedia":Lorg/telegram/tgnet/TLRPC$InputMedia;
    move-object/from16 v0, p3

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->address:Ljava/lang/String;

    move-object/from16 v0, v29

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->address:Ljava/lang/String;

    .line 2639
    move-object/from16 v0, p3

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->title:Ljava/lang/String;

    move-object/from16 v0, v29

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->title:Ljava/lang/String;

    .line 2640
    move-object/from16 v0, p3

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->provider:Ljava/lang/String;

    move-object/from16 v0, v29

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->provider:Ljava/lang/String;

    .line 2641
    move-object/from16 v0, p3

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->venue_id:Ljava/lang/String;

    move-object/from16 v0, v29

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->venue_id:Ljava/lang/String;

    .line 2645
    :goto_97e
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_inputGeoPoint;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_inputGeoPoint;-><init>()V

    move-object/from16 v0, v29

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->geo_point:Lorg/telegram/tgnet/TLRPC$InputGeoPoint;

    .line 2646
    move-object/from16 v0, v29

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->geo_point:Lorg/telegram/tgnet/TLRPC$InputGeoPoint;

    move-object/from16 v0, p3

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    iget-wide v8, v6, Lorg/telegram/tgnet/TLRPC$GeoPoint;->lat:D

    iput-wide v8, v4, Lorg/telegram/tgnet/TLRPC$InputGeoPoint;->lat:D

    .line 2647
    move-object/from16 v0, v29

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->geo_point:Lorg/telegram/tgnet/TLRPC$InputGeoPoint;

    move-object/from16 v0, p3

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    iget-wide v8, v6, Lorg/telegram/tgnet/TLRPC$GeoPoint;->_long:D

    iput-wide v8, v4, Lorg/telegram/tgnet/TLRPC$InputGeoPoint;->_long:D

    .line 2758
    :cond_99f
    :goto_99f
    if-eqz v45, :cond_cfa

    .line 2759
    new-instance v43, Lorg/telegram/tgnet/TLRPC$TL_messages_sendBroadcast;

    invoke-direct/range {v43 .. v43}, Lorg/telegram/tgnet/TLRPC$TL_messages_sendBroadcast;-><init>()V

    .line 2760
    .local v43, "request":Lorg/telegram/tgnet/TLRPC$TL_messages_sendBroadcast;
    new-instance v42, Ljava/util/ArrayList;

    invoke-direct/range {v42 .. v42}, Ljava/util/ArrayList;-><init>()V

    .line 2761
    .restart local v42    # "random_ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/16 v20, 0x0

    .restart local v20    # "a":I
    :goto_9ad
    invoke-virtual/range {v45 .. v45}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v20

    if-ge v0, v4, :cond_ccb

    .line 2762
    sget-object v4, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-virtual {v4}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v42

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2761
    add-int/lit8 v20, v20, 0x1

    goto :goto_9ad

    .line 2643
    .end local v20    # "a":I
    .end local v42    # "random_ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v43    # "request":Lorg/telegram/tgnet/TLRPC$TL_messages_sendBroadcast;
    :cond_9c7
    new-instance v29, Lorg/telegram/tgnet/TLRPC$TL_inputMediaGeoPoint;

    .end local v29    # "inputMedia":Lorg/telegram/tgnet/TLRPC$InputMedia;
    invoke-direct/range {v29 .. v29}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaGeoPoint;-><init>()V

    .restart local v29    # "inputMedia":Lorg/telegram/tgnet/TLRPC$InputMedia;
    goto :goto_97e

    .line 2648
    :cond_9cd
    const/4 v4, 0x2

    move/from16 v0, v49

    if-eq v0, v4, :cond_9da

    const/16 v4, 0x9

    move/from16 v0, v49

    if-ne v0, v4, :cond_a7f

    if-eqz p4, :cond_a7f

    .line 2649
    :cond_9da
    move-object/from16 v0, p4

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$TL_photo;->access_hash:J

    const-wide/16 v14, 0x0

    cmp-long v4, v8, v14

    if-nez v4, :cond_a48

    .line 2650
    new-instance v29, Lorg/telegram/tgnet/TLRPC$TL_inputMediaUploadedPhoto;

    .end local v29    # "inputMedia":Lorg/telegram/tgnet/TLRPC$InputMedia;
    invoke-direct/range {v29 .. v29}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaUploadedPhoto;-><init>()V

    .line 2651
    .restart local v29    # "inputMedia":Lorg/telegram/tgnet/TLRPC$InputMedia;
    move-object/from16 v0, p4

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_photo;->caption:Ljava/lang/String;

    if-eqz v4, :cond_a29

    move-object/from16 v0, p4

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_photo;->caption:Ljava/lang/String;

    :goto_9f3
    move-object/from16 v0, v29

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->caption:Ljava/lang/String;

    .line 2652
    new-instance v25, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;

    .end local v25    # "delayedMessage":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;-><init>(Lorg/telegram/messenger/SendMessagesHelper;)V

    .line 2653
    .restart local v25    # "delayedMessage":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    move-object/from16 v0, v39

    move-object/from16 v1, v25

    iput-object v0, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->originalPath:Ljava/lang/String;

    .line 2654
    const/4 v4, 0x0

    move-object/from16 v0, v25

    iput v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->type:I

    .line 2655
    move-object/from16 v0, v25

    iput-object v12, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    .line 2656
    if-eqz p10, :cond_a2c

    invoke-virtual/range {p10 .. p10}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_a2c

    const-string v4, "http"

    move-object/from16 v0, p10

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a2c

    .line 2657
    move-object/from16 v0, p10

    move-object/from16 v1, v25

    iput-object v0, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->httpLocation:Ljava/lang/String;

    goto/16 :goto_99f

    .line 2651
    :cond_a29
    const-string v4, ""

    goto :goto_9f3

    .line 2659
    :cond_a2c
    move-object/from16 v0, p4

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_photo;->sizes:Ljava/util/ArrayList;

    move-object/from16 v0, p4

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-object/from16 v0, v25

    iput-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    goto/16 :goto_99f

    .line 2662
    :cond_a48
    new-instance v33, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPhoto;

    invoke-direct/range {v33 .. v33}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPhoto;-><init>()V

    .line 2663
    .local v33, "media":Lorg/telegram/tgnet/TLRPC$TL_inputMediaPhoto;
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_inputPhoto;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_inputPhoto;-><init>()V

    move-object/from16 v0, v33

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPhoto;->id:Lorg/telegram/tgnet/TLRPC$InputPhoto;

    .line 2665
    move-object/from16 v0, p4

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_photo;->caption:Ljava/lang/String;

    if-eqz v4, :cond_a7c

    move-object/from16 v0, p4

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_photo;->caption:Ljava/lang/String;

    :goto_a60
    move-object/from16 v0, v33

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPhoto;->caption:Ljava/lang/String;

    .line 2667
    move-object/from16 v0, v33

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPhoto;->id:Lorg/telegram/tgnet/TLRPC$InputPhoto;

    move-object/from16 v0, p4

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$TL_photo;->id:J

    iput-wide v8, v4, Lorg/telegram/tgnet/TLRPC$InputPhoto;->id:J

    .line 2668
    move-object/from16 v0, v33

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPhoto;->id:Lorg/telegram/tgnet/TLRPC$InputPhoto;

    move-object/from16 v0, p4

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$TL_photo;->access_hash:J

    iput-wide v8, v4, Lorg/telegram/tgnet/TLRPC$InputPhoto;->access_hash:J

    .line 2669
    move-object/from16 v29, v33

    .line 2670
    goto/16 :goto_99f

    .line 2665
    :cond_a7c
    const-string v4, ""

    goto :goto_a60

    .line 2671
    .end local v33    # "media":Lorg/telegram/tgnet/TLRPC$TL_inputMediaPhoto;
    :cond_a7f
    const/4 v4, 0x3

    move/from16 v0, v49

    if-ne v0, v4, :cond_b29

    .line 2672
    move-object/from16 v0, p7

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->access_hash:J

    const-wide/16 v14, 0x0

    cmp-long v4, v8, v14

    if-nez v4, :cond_af2

    .line 2673
    move-object/from16 v0, p7

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v4, :cond_ae9

    .line 2674
    new-instance v29, Lorg/telegram/tgnet/TLRPC$TL_inputMediaUploadedThumbDocument;

    .end local v29    # "inputMedia":Lorg/telegram/tgnet/TLRPC$InputMedia;
    invoke-direct/range {v29 .. v29}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaUploadedThumbDocument;-><init>()V

    .line 2679
    .restart local v29    # "inputMedia":Lorg/telegram/tgnet/TLRPC$InputMedia;
    :goto_a9b
    move-object/from16 v0, p7

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->caption:Ljava/lang/String;

    if-eqz v4, :cond_aef

    move-object/from16 v0, p7

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->caption:Ljava/lang/String;

    :goto_aa5
    move-object/from16 v0, v29

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->caption:Ljava/lang/String;

    .line 2681
    move-object/from16 v0, p7

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->mime_type:Ljava/lang/String;

    move-object/from16 v0, v29

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->mime_type:Ljava/lang/String;

    .line 2682
    move-object/from16 v0, p7

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->attributes:Ljava/util/ArrayList;

    move-object/from16 v0, v29

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->attributes:Ljava/util/ArrayList;

    .line 2683
    new-instance v25, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;

    .end local v25    # "delayedMessage":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;-><init>(Lorg/telegram/messenger/SendMessagesHelper;)V

    .line 2684
    .restart local v25    # "delayedMessage":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    move-object/from16 v0, v39

    move-object/from16 v1, v25

    iput-object v0, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->originalPath:Ljava/lang/String;

    .line 2685
    const/4 v4, 0x1

    move-object/from16 v0, v25

    iput v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->type:I

    .line 2686
    move-object/from16 v0, v25

    iput-object v12, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    .line 2687
    move-object/from16 v0, p7

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-object/from16 v0, v25

    iput-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 2688
    move-object/from16 v0, p7

    move-object/from16 v1, v25

    iput-object v0, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->documentLocation:Lorg/telegram/tgnet/TLRPC$TL_document;

    .line 2689
    move-object/from16 v0, p5

    move-object/from16 v1, v25

    iput-object v0, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    goto/16 :goto_99f

    .line 2676
    :cond_ae9
    new-instance v29, Lorg/telegram/tgnet/TLRPC$TL_inputMediaUploadedDocument;

    .end local v29    # "inputMedia":Lorg/telegram/tgnet/TLRPC$InputMedia;
    invoke-direct/range {v29 .. v29}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaUploadedDocument;-><init>()V

    .restart local v29    # "inputMedia":Lorg/telegram/tgnet/TLRPC$InputMedia;
    goto :goto_a9b

    .line 2679
    :cond_aef
    const-string v4, ""

    goto :goto_aa5

    .line 2691
    :cond_af2
    new-instance v33, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;

    invoke-direct/range {v33 .. v33}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;-><init>()V

    .line 2692
    .local v33, "media":Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_inputDocument;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_inputDocument;-><init>()V

    move-object/from16 v0, v33

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;->id:Lorg/telegram/tgnet/TLRPC$InputDocument;

    .line 2693
    move-object/from16 v0, p7

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->caption:Ljava/lang/String;

    if-eqz v4, :cond_b26

    move-object/from16 v0, p7

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->caption:Ljava/lang/String;

    :goto_b0a
    move-object/from16 v0, v33

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;->caption:Ljava/lang/String;

    .line 2694
    move-object/from16 v0, v33

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;->id:Lorg/telegram/tgnet/TLRPC$InputDocument;

    move-object/from16 v0, p7

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->id:J

    iput-wide v8, v4, Lorg/telegram/tgnet/TLRPC$InputDocument;->id:J

    .line 2695
    move-object/from16 v0, v33

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;->id:Lorg/telegram/tgnet/TLRPC$InputDocument;

    move-object/from16 v0, p7

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->access_hash:J

    iput-wide v8, v4, Lorg/telegram/tgnet/TLRPC$InputDocument;->access_hash:J

    .line 2696
    move-object/from16 v29, v33

    .line 2697
    goto/16 :goto_99f

    .line 2693
    :cond_b26
    const-string v4, ""

    goto :goto_b0a

    .line 2698
    .end local v33    # "media":Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;
    :cond_b29
    const/4 v4, 0x6

    move/from16 v0, v49

    if-ne v0, v4, :cond_b4d

    .line 2699
    new-instance v29, Lorg/telegram/tgnet/TLRPC$TL_inputMediaContact;

    .end local v29    # "inputMedia":Lorg/telegram/tgnet/TLRPC$InputMedia;
    invoke-direct/range {v29 .. v29}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaContact;-><init>()V

    .line 2700
    .restart local v29    # "inputMedia":Lorg/telegram/tgnet/TLRPC$InputMedia;
    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    move-object/from16 v0, v29

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->phone_number:Ljava/lang/String;

    .line 2701
    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    move-object/from16 v0, v29

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->first_name:Ljava/lang/String;

    .line 2702
    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    move-object/from16 v0, v29

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->last_name:Ljava/lang/String;

    goto/16 :goto_99f

    .line 2703
    :cond_b4d
    const/4 v4, 0x7

    move/from16 v0, v49

    if-eq v0, v4, :cond_b58

    const/16 v4, 0x9

    move/from16 v0, v49

    if-ne v0, v4, :cond_c44

    .line 2704
    :cond_b58
    move-object/from16 v0, p7

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->access_hash:J

    const-wide/16 v14, 0x0

    cmp-long v4, v8, v14

    if-nez v4, :cond_c0d

    .line 2705
    if-nez v16, :cond_bc4

    if-eqz v39, :cond_bc4

    invoke-virtual/range {v39 .. v39}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_bc4

    const-string v4, "http"

    move-object/from16 v0, v39

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_bc4

    if-eqz p16, :cond_bc4

    .line 2706
    new-instance v29, Lorg/telegram/tgnet/TLRPC$TL_inputMediaGifExternal;

    .end local v29    # "inputMedia":Lorg/telegram/tgnet/TLRPC$InputMedia;
    invoke-direct/range {v29 .. v29}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaGifExternal;-><init>()V

    .line 2707
    .restart local v29    # "inputMedia":Lorg/telegram/tgnet/TLRPC$InputMedia;
    const-string v4, "url"

    move-object/from16 v0, p16

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v6, "\\|"

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v21

    .line 2708
    .local v21, "args":[Ljava/lang/String;
    move-object/from16 v0, v21

    array-length v4, v0

    const/4 v6, 0x2

    if-ne v4, v6, :cond_ba4

    .line 2709
    move-object/from16 v0, v29

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaGifExternal;

    move-object v4, v0

    const/4 v6, 0x0

    aget-object v6, v21, v6

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$TL_inputMediaGifExternal;->url:Ljava/lang/String;

    .line 2710
    const/4 v4, 0x1

    aget-object v4, v21, v4

    move-object/from16 v0, v29

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->q:Ljava/lang/String;

    .line 2725
    .end local v21    # "args":[Ljava/lang/String;
    :cond_ba4
    :goto_ba4
    move-object/from16 v0, p7

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->mime_type:Ljava/lang/String;

    move-object/from16 v0, v29

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->mime_type:Ljava/lang/String;

    .line 2726
    move-object/from16 v0, p7

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->attributes:Ljava/util/ArrayList;

    move-object/from16 v0, v29

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->attributes:Ljava/util/ArrayList;

    .line 2727
    move-object/from16 v0, p7

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->caption:Ljava/lang/String;

    if-eqz v4, :cond_c0a

    move-object/from16 v0, p7

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->caption:Ljava/lang/String;

    :goto_bbe
    move-object/from16 v0, v29

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->caption:Ljava/lang/String;

    goto/16 :goto_99f

    .line 2713
    :cond_bc4
    move-object/from16 v0, p7

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v4, :cond_c04

    move-object/from16 v0, p7

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_fileLocation;

    if-eqz v4, :cond_c04

    .line 2714
    new-instance v29, Lorg/telegram/tgnet/TLRPC$TL_inputMediaUploadedThumbDocument;

    .end local v29    # "inputMedia":Lorg/telegram/tgnet/TLRPC$InputMedia;
    invoke-direct/range {v29 .. v29}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaUploadedThumbDocument;-><init>()V

    .line 2718
    .restart local v29    # "inputMedia":Lorg/telegram/tgnet/TLRPC$InputMedia;
    :goto_bdb
    new-instance v25, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;

    .end local v25    # "delayedMessage":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;-><init>(Lorg/telegram/messenger/SendMessagesHelper;)V

    .line 2719
    .restart local v25    # "delayedMessage":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    move-object/from16 v0, v39

    move-object/from16 v1, v25

    iput-object v0, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->originalPath:Ljava/lang/String;

    .line 2720
    const/4 v4, 0x2

    move-object/from16 v0, v25

    iput v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->type:I

    .line 2721
    move-object/from16 v0, v25

    iput-object v12, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    .line 2722
    move-object/from16 v0, p7

    move-object/from16 v1, v25

    iput-object v0, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->documentLocation:Lorg/telegram/tgnet/TLRPC$TL_document;

    .line 2723
    move-object/from16 v0, p7

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-object/from16 v0, v25

    iput-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    goto :goto_ba4

    .line 2716
    :cond_c04
    new-instance v29, Lorg/telegram/tgnet/TLRPC$TL_inputMediaUploadedDocument;

    .end local v29    # "inputMedia":Lorg/telegram/tgnet/TLRPC$InputMedia;
    invoke-direct/range {v29 .. v29}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaUploadedDocument;-><init>()V

    .restart local v29    # "inputMedia":Lorg/telegram/tgnet/TLRPC$InputMedia;
    goto :goto_bdb

    .line 2727
    :cond_c0a
    const-string v4, ""

    goto :goto_bbe

    .line 2729
    :cond_c0d
    new-instance v33, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;

    invoke-direct/range {v33 .. v33}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;-><init>()V

    .line 2730
    .restart local v33    # "media":Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_inputDocument;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_inputDocument;-><init>()V

    move-object/from16 v0, v33

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;->id:Lorg/telegram/tgnet/TLRPC$InputDocument;

    .line 2731
    move-object/from16 v0, v33

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;->id:Lorg/telegram/tgnet/TLRPC$InputDocument;

    move-object/from16 v0, p7

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->id:J

    iput-wide v8, v4, Lorg/telegram/tgnet/TLRPC$InputDocument;->id:J

    .line 2732
    move-object/from16 v0, v33

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;->id:Lorg/telegram/tgnet/TLRPC$InputDocument;

    move-object/from16 v0, p7

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->access_hash:J

    iput-wide v8, v4, Lorg/telegram/tgnet/TLRPC$InputDocument;->access_hash:J

    .line 2733
    move-object/from16 v0, p7

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->caption:Ljava/lang/String;

    if-eqz v4, :cond_c41

    move-object/from16 v0, p7

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->caption:Ljava/lang/String;

    :goto_c39
    move-object/from16 v0, v33

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;->caption:Ljava/lang/String;

    .line 2734
    move-object/from16 v29, v33

    .line 2735
    goto/16 :goto_99f

    .line 2733
    :cond_c41
    const-string v4, ""

    goto :goto_c39

    .line 2736
    .end local v33    # "media":Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;
    :cond_c44
    const/16 v4, 0x8

    move/from16 v0, v49

    if-ne v0, v4, :cond_99f

    .line 2737
    move-object/from16 v0, p7

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->access_hash:J

    const-wide/16 v14, 0x0

    cmp-long v4, v8, v14

    if-nez v4, :cond_c94

    .line 2738
    new-instance v29, Lorg/telegram/tgnet/TLRPC$TL_inputMediaUploadedDocument;

    .end local v29    # "inputMedia":Lorg/telegram/tgnet/TLRPC$InputMedia;
    invoke-direct/range {v29 .. v29}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaUploadedDocument;-><init>()V

    .line 2739
    .restart local v29    # "inputMedia":Lorg/telegram/tgnet/TLRPC$InputMedia;
    move-object/from16 v0, p7

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->mime_type:Ljava/lang/String;

    move-object/from16 v0, v29

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->mime_type:Ljava/lang/String;

    .line 2740
    move-object/from16 v0, p7

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->attributes:Ljava/util/ArrayList;

    move-object/from16 v0, v29

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->attributes:Ljava/util/ArrayList;

    .line 2741
    move-object/from16 v0, p7

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->caption:Ljava/lang/String;

    if-eqz v4, :cond_c91

    move-object/from16 v0, p7

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->caption:Ljava/lang/String;

    :goto_c73
    move-object/from16 v0, v29

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->caption:Ljava/lang/String;

    .line 2742
    new-instance v25, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;

    .end local v25    # "delayedMessage":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;-><init>(Lorg/telegram/messenger/SendMessagesHelper;)V

    .line 2743
    .restart local v25    # "delayedMessage":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    const/4 v4, 0x3

    move-object/from16 v0, v25

    iput v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->type:I

    .line 2744
    move-object/from16 v0, v25

    iput-object v12, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    .line 2745
    move-object/from16 v0, p7

    move-object/from16 v1, v25

    iput-object v0, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->documentLocation:Lorg/telegram/tgnet/TLRPC$TL_document;

    goto/16 :goto_99f

    .line 2741
    :cond_c91
    const-string v4, ""

    goto :goto_c73

    .line 2747
    :cond_c94
    new-instance v33, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;

    invoke-direct/range {v33 .. v33}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;-><init>()V

    .line 2748
    .restart local v33    # "media":Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_inputDocument;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_inputDocument;-><init>()V

    move-object/from16 v0, v33

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;->id:Lorg/telegram/tgnet/TLRPC$InputDocument;

    .line 2749
    move-object/from16 v0, p7

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->caption:Ljava/lang/String;

    if-eqz v4, :cond_cc8

    move-object/from16 v0, p7

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->caption:Ljava/lang/String;

    :goto_cac
    move-object/from16 v0, v33

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;->caption:Ljava/lang/String;

    .line 2750
    move-object/from16 v0, v33

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;->id:Lorg/telegram/tgnet/TLRPC$InputDocument;

    move-object/from16 v0, p7

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->id:J

    iput-wide v8, v4, Lorg/telegram/tgnet/TLRPC$InputDocument;->id:J

    .line 2751
    move-object/from16 v0, v33

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;->id:Lorg/telegram/tgnet/TLRPC$InputDocument;

    move-object/from16 v0, p7

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->access_hash:J

    iput-wide v8, v4, Lorg/telegram/tgnet/TLRPC$InputDocument;->access_hash:J

    .line 2752
    move-object/from16 v29, v33

    goto/16 :goto_99f

    .line 2749
    :cond_cc8
    const-string v4, ""

    goto :goto_cac

    .line 2764
    .end local v33    # "media":Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;
    .restart local v20    # "a":I
    .restart local v42    # "random_ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .restart local v43    # "request":Lorg/telegram/tgnet/TLRPC$TL_messages_sendBroadcast;
    :cond_ccb
    move-object/from16 v0, v45

    move-object/from16 v1, v43

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_sendBroadcast;->contacts:Ljava/util/ArrayList;

    .line 2765
    move-object/from16 v0, v29

    move-object/from16 v1, v43

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_sendBroadcast;->media:Lorg/telegram/tgnet/TLRPC$InputMedia;

    .line 2766
    move-object/from16 v0, v42

    move-object/from16 v1, v43

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_sendBroadcast;->random_id:Ljava/util/ArrayList;

    .line 2767
    const-string v4, ""

    move-object/from16 v0, v43

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendBroadcast;->message:Ljava/lang/String;

    .line 2768
    if-eqz v25, :cond_ceb

    .line 2769
    move-object/from16 v0, v43

    move-object/from16 v1, v25

    iput-object v0, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendRequest:Lorg/telegram/tgnet/TLObject;

    .line 2771
    :cond_ceb
    move-object/from16 v7, v43

    .line 2794
    .end local v20    # "a":I
    .end local v42    # "random_ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v43    # "request":Lorg/telegram/tgnet/TLRPC$TL_messages_sendBroadcast;
    .local v7, "reqSend":Lorg/telegram/tgnet/TLObject;
    :goto_ced
    const/4 v4, 0x1

    move/from16 v0, v49

    if-ne v0, v4, :cond_d77

    .line 2795
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v12, v4}, Lorg/telegram/messenger/SendMessagesHelper;->performSendMessageRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 2773
    .end local v7    # "reqSend":Lorg/telegram/tgnet/TLObject;
    :cond_cfa
    new-instance v43, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;

    invoke-direct/range {v43 .. v43}, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;-><init>()V

    .line 2774
    .local v43, "request":Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;
    move-object/from16 v0, v44

    move-object/from16 v1, v43

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 2775
    move-object/from16 v0, v34

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;

    if-eqz v4, :cond_d34

    .line 2776
    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v6, "Notifications"

    const/4 v8, 0x0

    invoke-virtual {v4, v6, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "silent_"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p8

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    invoke-interface {v4, v6, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    move-object/from16 v0, v43

    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->silent:Z

    .line 2778
    :cond_d34
    move-object/from16 v0, v34

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    move-object/from16 v0, v43

    iput-wide v8, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->random_id:J

    .line 2779
    move-object/from16 v0, v29

    move-object/from16 v1, v43

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->media:Lorg/telegram/tgnet/TLRPC$InputMedia;

    .line 2781
    if-eqz p1, :cond_d54

    .line 2782
    move-object/from16 v0, v43

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->media:Lorg/telegram/tgnet/TLRPC$InputMedia;

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_d74

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_d52
    iput-object v4, v6, Lorg/telegram/tgnet/TLRPC$InputMedia;->caption:Ljava/lang/String;

    .line 2785
    :cond_d54
    if-eqz p11, :cond_d68

    .line 2786
    move-object/from16 v0, v43

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->flags:I

    or-int/lit8 v4, v4, 0x1

    move-object/from16 v0, v43

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->flags:I

    .line 2787
    invoke-virtual/range {p11 .. p11}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    move-object/from16 v0, v43

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->reply_to_msg_id:I

    .line 2789
    :cond_d68
    if-eqz v25, :cond_d70

    .line 2790
    move-object/from16 v0, v43

    move-object/from16 v1, v25

    iput-object v0, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendRequest:Lorg/telegram/tgnet/TLObject;

    .line 2792
    :cond_d70
    move-object/from16 v7, v43

    .restart local v7    # "reqSend":Lorg/telegram/tgnet/TLObject;
    goto/16 :goto_ced

    .line 2782
    .end local v7    # "reqSend":Lorg/telegram/tgnet/TLObject;
    :cond_d74
    const-string v4, ""

    goto :goto_d52

    .line 2796
    .end local v43    # "request":Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;
    .restart local v7    # "reqSend":Lorg/telegram/tgnet/TLObject;
    :cond_d77
    const/4 v4, 0x2

    move/from16 v0, v49

    if-ne v0, v4, :cond_d97

    .line 2797
    move-object/from16 v0, p4

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$TL_photo;->access_hash:J

    const-wide/16 v14, 0x0

    cmp-long v4, v8, v14

    if-nez v4, :cond_d8f

    .line 2798
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lorg/telegram/messenger/SendMessagesHelper;->performSendDelayedMessage(Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;)V

    goto/16 :goto_6

    .line 2800
    :cond_d8f
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v12, v4}, Lorg/telegram/messenger/SendMessagesHelper;->performSendMessageRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 2802
    :cond_d97
    const/4 v4, 0x3

    move/from16 v0, v49

    if-ne v0, v4, :cond_db7

    .line 2803
    move-object/from16 v0, p7

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->access_hash:J

    const-wide/16 v14, 0x0

    cmp-long v4, v8, v14

    if-nez v4, :cond_daf

    .line 2804
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lorg/telegram/messenger/SendMessagesHelper;->performSendDelayedMessage(Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;)V

    goto/16 :goto_6

    .line 2806
    :cond_daf
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v12, v4}, Lorg/telegram/messenger/SendMessagesHelper;->performSendMessageRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 2808
    :cond_db7
    const/4 v4, 0x6

    move/from16 v0, v49

    if-ne v0, v4, :cond_dc4

    .line 2809
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v12, v4}, Lorg/telegram/messenger/SendMessagesHelper;->performSendMessageRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 2810
    :cond_dc4
    const/4 v4, 0x7

    move/from16 v0, v49

    if-ne v0, v4, :cond_de7

    .line 2811
    move-object/from16 v0, p7

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->access_hash:J

    const-wide/16 v14, 0x0

    cmp-long v4, v8, v14

    if-nez v4, :cond_dde

    if-eqz v25, :cond_dde

    .line 2812
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lorg/telegram/messenger/SendMessagesHelper;->performSendDelayedMessage(Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;)V

    goto/16 :goto_6

    .line 2814
    :cond_dde
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-direct {v0, v7, v12, v1}, Lorg/telegram/messenger/SendMessagesHelper;->performSendMessageRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 2816
    :cond_de7
    const/16 v4, 0x8

    move/from16 v0, v49

    if-ne v0, v4, :cond_6

    .line 2817
    move-object/from16 v0, p7

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->access_hash:J

    const-wide/16 v14, 0x0

    cmp-long v4, v8, v14

    if-nez v4, :cond_e00

    .line 2818
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lorg/telegram/messenger/SendMessagesHelper;->performSendDelayedMessage(Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;)V

    goto/16 :goto_6

    .line 2820
    :cond_e00
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v12, v4}, Lorg/telegram/messenger/SendMessagesHelper;->performSendMessageRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 2825
    .end local v7    # "reqSend":Lorg/telegram/tgnet/TLObject;
    .end local v25    # "delayedMessage":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    .end local v29    # "inputMedia":Lorg/telegram/tgnet/TLRPC$InputMedia;
    :cond_e08
    move-object/from16 v0, v16

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->layer:I

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->getPeerLayerVersion(I)I

    move-result v4

    const/16 v6, 0x2e

    if-lt v4, v6, :cond_edc

    .line 2826
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;-><init>()V

    .line 2827
    .local v7, "reqSend":Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;
    move-object/from16 v0, v34

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I

    iput v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->ttl:I

    .line 2828
    if-eqz p15, :cond_e31

    invoke-virtual/range {p15 .. p15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_e31

    .line 2829
    move-object/from16 v0, p15

    iput-object v0, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->entities:Ljava/util/ArrayList;

    .line 2830
    iget v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->flags:I

    or-int/lit16 v4, v4, 0x80

    iput v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->flags:I

    .line 2832
    :cond_e31
    if-eqz p11, :cond_e4d

    move-object/from16 v0, p11

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v8, v4, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    const-wide/16 v14, 0x0

    cmp-long v4, v8, v14

    if-eqz v4, :cond_e4d

    .line 2833
    move-object/from16 v0, p11

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v8, v4, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    iput-wide v8, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->reply_to_random_id:J

    .line 2834
    iget v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->flags:I

    or-int/lit8 v4, v4, 0x8

    iput v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->flags:I

    .line 2836
    :cond_e4d
    iget v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->flags:I

    or-int/lit16 v4, v4, 0x200

    iput v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->flags:I

    .line 2845
    :goto_e53
    if-eqz p16, :cond_e71

    const-string v4, "bot_name"

    move-object/from16 v0, p16

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_e71

    .line 2846
    const-string v4, "bot_name"

    move-object/from16 v0, p16

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->via_bot_name:Ljava/lang/String;

    .line 2847
    iget v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->flags:I

    or-int/lit16 v4, v4, 0x800

    iput v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->flags:I

    .line 2849
    :cond_e71
    move-object/from16 v0, v34

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    iput-wide v8, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->random_id:J

    .line 2850
    const-string v4, ""

    iput-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->message:Ljava/lang/String;

    .line 2851
    const/4 v4, 0x1

    move/from16 v0, v49

    if-ne v0, v4, :cond_f11

    .line 2852
    move-object/from16 v0, p3

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;

    if-eqz v4, :cond_f09

    move-object/from16 v0, v16

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->layer:I

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->getPeerLayerVersion(I)I

    move-result v4

    const/16 v6, 0x2e

    if-lt v4, v6, :cond_f09

    .line 2853
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaVenue;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaVenue;-><init>()V

    iput-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    .line 2854
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p3

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->address:Ljava/lang/String;

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->address:Ljava/lang/String;

    .line 2855
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p3

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->title:Ljava/lang/String;

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->title:Ljava/lang/String;

    .line 2856
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p3

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->provider:Ljava/lang/String;

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->provider:Ljava/lang/String;

    .line 2857
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p3

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->venue_id:Ljava/lang/String;

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->venue_id:Ljava/lang/String;

    .line 2861
    :goto_eb9
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p3

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    iget-wide v8, v6, Lorg/telegram/tgnet/TLRPC$GeoPoint;->lat:D

    iput-wide v8, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->lat:D

    .line 2862
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p3

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    iget-wide v8, v6, Lorg/telegram/tgnet/TLRPC$GeoPoint;->_long:D

    iput-wide v8, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->_long:D

    .line 2863
    invoke-static {}, Lorg/telegram/messenger/SecretChatHelper;->getInstance()Lorg/telegram/messenger/SecretChatHelper;

    move-result-object v6

    iget-object v8, v12, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v9, v16

    invoke-virtual/range {v6 .. v12}, Lorg/telegram/messenger/SecretChatHelper;->performSendEncryptedRequest(Lorg/telegram/tgnet/TLRPC$DecryptedMessage;Lorg/telegram/tgnet/TLRPC$Message;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;Ljava/lang/String;Lorg/telegram/messenger/MessageObject;)V

    goto/16 :goto_6

    .line 2837
    .end local v7    # "reqSend":Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;
    :cond_edc
    move-object/from16 v0, v16

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->layer:I

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->getPeerLayerVersion(I)I

    move-result v4

    const/16 v6, 0x11

    if-lt v4, v6, :cond_ef5

    .line 2838
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage_layer17;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage_layer17;-><init>()V

    .line 2839
    .restart local v7    # "reqSend":Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;
    move-object/from16 v0, v34

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I

    iput v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->ttl:I

    goto/16 :goto_e53

    .line 2841
    .end local v7    # "reqSend":Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;
    :cond_ef5
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage_layer8;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage_layer8;-><init>()V

    .line 2842
    .restart local v7    # "reqSend":Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;
    const/16 v4, 0xf

    new-array v4, v4, [B

    iput-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->random_bytes:[B

    .line 2843
    sget-object v4, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    iget-object v6, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->random_bytes:[B

    invoke-virtual {v4, v6}, Ljava/security/SecureRandom;->nextBytes([B)V

    goto/16 :goto_e53

    .line 2859
    :cond_f09
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaGeoPoint;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaGeoPoint;-><init>()V

    iput-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    goto :goto_eb9

    .line 2864
    :cond_f11
    const/4 v4, 0x2

    move/from16 v0, v49

    if-eq v0, v4, :cond_f1e

    const/16 v4, 0x9

    move/from16 v0, v49

    if-ne v0, v4, :cond_1069

    if-eqz p4, :cond_1069

    .line 2865
    :cond_f1e
    move-object/from16 v0, p4

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_photo;->sizes:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 2866
    .local v48, "small":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    move-object/from16 v0, p4

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_photo;->sizes:Ljava/util/ArrayList;

    move-object/from16 v0, p4

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 2867
    .local v23, "big":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    move-object/from16 v0, v16

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->layer:I

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->getPeerLayerVersion(I)I

    move-result v4

    const/16 v6, 0x2e

    if-lt v4, v6, :cond_ff3

    .line 2868
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaPhoto;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaPhoto;-><init>()V

    iput-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    .line 2869
    iget-object v6, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p4

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_photo;->caption:Ljava/lang/String;

    if-eqz v4, :cond_fe4

    move-object/from16 v0, p4

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_photo;->caption:Ljava/lang/String;

    :goto_f5c
    iput-object v4, v6, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->caption:Ljava/lang/String;

    .line 2870
    move-object/from16 v0, v48

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->bytes:[B

    if-eqz v4, :cond_fe8

    .line 2871
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaPhoto;

    move-object/from16 v0, v48

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->bytes:[B

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaPhoto;->thumb:[B

    .line 2883
    :goto_f6e
    invoke-static/range {v48 .. v48}, Lorg/telegram/messenger/ImageLoader;->fillPhotoSizeWithBytes(Lorg/telegram/tgnet/TLRPC$PhotoSize;)V

    .line 2884
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, v48

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->thumb_h:I

    .line 2885
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, v48

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->thumb_w:I

    .line 2886
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, v23

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->w:I

    .line 2887
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, v23

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->h:I

    .line 2888
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, v23

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->size:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->size:I

    .line 2889
    move-object/from16 v0, v23

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$FileLocation;->key:[B

    if-nez v4, :cond_1032

    .line 2890
    new-instance v25, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;-><init>(Lorg/telegram/messenger/SendMessagesHelper;)V

    .line 2891
    .restart local v25    # "delayedMessage":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    move-object/from16 v0, v39

    move-object/from16 v1, v25

    iput-object v0, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->originalPath:Ljava/lang/String;

    .line 2892
    move-object/from16 v0, v25

    iput-object v7, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendEncryptedRequest:Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;

    .line 2893
    const/4 v4, 0x0

    move-object/from16 v0, v25

    iput v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->type:I

    .line 2894
    move-object/from16 v0, v25

    iput-object v12, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    .line 2895
    move-object/from16 v0, v16

    move-object/from16 v1, v25

    iput-object v0, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    .line 2896
    if-eqz p10, :cond_1017

    invoke-virtual/range {p10 .. p10}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1017

    const-string v4, "http"

    move-object/from16 v0, p10

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1017

    .line 2897
    move-object/from16 v0, p10

    move-object/from16 v1, v25

    iput-object v0, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->httpLocation:Ljava/lang/String;

    .line 2901
    :goto_fdb
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lorg/telegram/messenger/SendMessagesHelper;->performSendDelayedMessage(Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;)V

    goto/16 :goto_6

    .line 2869
    .end local v25    # "delayedMessage":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    :cond_fe4
    const-string v4, ""

    goto/16 :goto_f5c

    .line 2873
    :cond_fe8
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaPhoto;

    const/4 v6, 0x0

    new-array v6, v6, [B

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaPhoto;->thumb:[B

    goto/16 :goto_f6e

    .line 2876
    :cond_ff3
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaPhoto_layer8;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaPhoto_layer8;-><init>()V

    iput-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    .line 2877
    move-object/from16 v0, v48

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->bytes:[B

    if-eqz v4, :cond_100c

    .line 2878
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaPhoto_layer8;

    move-object/from16 v0, v48

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->bytes:[B

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaPhoto_layer8;->thumb:[B

    goto/16 :goto_f6e

    .line 2880
    :cond_100c
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaPhoto_layer8;

    const/4 v6, 0x0

    new-array v6, v6, [B

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaPhoto_layer8;->thumb:[B

    goto/16 :goto_f6e

    .line 2899
    .restart local v25    # "delayedMessage":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    :cond_1017
    move-object/from16 v0, p4

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_photo;->sizes:Ljava/util/ArrayList;

    move-object/from16 v0, p4

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-object/from16 v0, v25

    iput-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    goto :goto_fdb

    .line 2903
    .end local v25    # "delayedMessage":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    :cond_1032
    new-instance v10, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFile;

    invoke-direct {v10}, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFile;-><init>()V

    .line 2904
    .local v10, "encryptedFile":Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFile;
    move-object/from16 v0, v23

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-wide v8, v4, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    iput-wide v8, v10, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFile;->id:J

    .line 2905
    move-object/from16 v0, v23

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-wide v8, v4, Lorg/telegram/tgnet/TLRPC$FileLocation;->secret:J

    iput-wide v8, v10, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFile;->access_hash:J

    .line 2906
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, v23

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$FileLocation;->key:[B

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->key:[B

    .line 2907
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, v23

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$FileLocation;->iv:[B

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->iv:[B

    .line 2908
    invoke-static {}, Lorg/telegram/messenger/SecretChatHelper;->getInstance()Lorg/telegram/messenger/SecretChatHelper;

    move-result-object v6

    iget-object v8, v12, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    const/4 v11, 0x0

    move-object/from16 v9, v16

    invoke-virtual/range {v6 .. v12}, Lorg/telegram/messenger/SecretChatHelper;->performSendEncryptedRequest(Lorg/telegram/tgnet/TLRPC$DecryptedMessage;Lorg/telegram/tgnet/TLRPC$Message;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;Ljava/lang/String;Lorg/telegram/messenger/MessageObject;)V

    goto/16 :goto_6

    .line 2910
    .end local v10    # "encryptedFile":Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFile;
    .end local v23    # "big":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    .end local v48    # "small":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    :cond_1069
    const/4 v4, 0x3

    move/from16 v0, v49

    if-ne v0, v4, :cond_11f5

    .line 2911
    move-object/from16 v0, p7

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    invoke-static {v4}, Lorg/telegram/messenger/ImageLoader;->fillPhotoSizeWithBytes(Lorg/telegram/tgnet/TLRPC$PhotoSize;)V

    .line 2912
    move-object/from16 v0, v16

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->layer:I

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->getPeerLayerVersion(I)I

    move-result v4

    const/16 v6, 0x2e

    if-lt v4, v6, :cond_1156

    .line 2913
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaVideo;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaVideo;-><init>()V

    iput-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    .line 2914
    move-object/from16 v0, p7

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    if-eqz v4, :cond_114b

    move-object/from16 v0, p7

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->bytes:[B

    if-eqz v4, :cond_114b

    .line 2915
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaVideo;

    move-object/from16 v0, p7

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$PhotoSize;->bytes:[B

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaVideo;->thumb:[B

    .line 2934
    :goto_10a2
    iget-object v6, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p7

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->caption:Ljava/lang/String;

    if-eqz v4, :cond_11be

    move-object/from16 v0, p7

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->caption:Ljava/lang/String;

    :goto_10ae
    iput-object v4, v6, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->caption:Ljava/lang/String;

    .line 2935
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    const-string v6, "video/mp4"

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->mime_type:Ljava/lang/String;

    .line 2936
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p7

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->size:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->size:I

    .line 2937
    const/16 v20, 0x0

    .restart local v20    # "a":I
    :goto_10c0
    move-object/from16 v0, p7

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v20

    if-ge v0, v4, :cond_10f6

    .line 2938
    move-object/from16 v0, p7

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->attributes:Ljava/util/ArrayList;

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    .line 2939
    .restart local v22    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    move-object/from16 v0, v22

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;

    if-eqz v4, :cond_11c2

    .line 2940
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, v22

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->w:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->w:I

    .line 2941
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, v22

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->h:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->h:I

    .line 2942
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, v22

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->duration:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->duration:I

    .line 2946
    .end local v22    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :cond_10f6
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p7

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->thumb_h:I

    .line 2947
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p7

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->thumb_w:I

    .line 2948
    move-object/from16 v0, p7

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->access_hash:J

    const-wide/16 v14, 0x0

    cmp-long v4, v8, v14

    if-nez v4, :cond_11c6

    .line 2949
    new-instance v25, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;-><init>(Lorg/telegram/messenger/SendMessagesHelper;)V

    .line 2950
    .restart local v25    # "delayedMessage":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    move-object/from16 v0, v39

    move-object/from16 v1, v25

    iput-object v0, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->originalPath:Ljava/lang/String;

    .line 2951
    move-object/from16 v0, v25

    iput-object v7, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendEncryptedRequest:Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;

    .line 2952
    const/4 v4, 0x1

    move-object/from16 v0, v25

    iput v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->type:I

    .line 2953
    move-object/from16 v0, v25

    iput-object v12, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    .line 2954
    move-object/from16 v0, v16

    move-object/from16 v1, v25

    iput-object v0, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    .line 2955
    move-object/from16 v0, p7

    move-object/from16 v1, v25

    iput-object v0, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->documentLocation:Lorg/telegram/tgnet/TLRPC$TL_document;

    .line 2956
    move-object/from16 v0, p5

    move-object/from16 v1, v25

    iput-object v0, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    .line 2957
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lorg/telegram/messenger/SendMessagesHelper;->performSendDelayedMessage(Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;)V

    goto/16 :goto_6

    .line 2917
    .end local v20    # "a":I
    .end local v25    # "delayedMessage":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    :cond_114b
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaVideo;

    const/4 v6, 0x0

    new-array v6, v6, [B

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaVideo;->thumb:[B

    goto/16 :goto_10a2

    .line 2919
    :cond_1156
    move-object/from16 v0, v16

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->layer:I

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->getPeerLayerVersion(I)I

    move-result v4

    const/16 v6, 0x11

    if-lt v4, v6, :cond_1190

    .line 2920
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaVideo_layer17;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaVideo_layer17;-><init>()V

    iput-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    .line 2921
    move-object/from16 v0, p7

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    if-eqz v4, :cond_1185

    move-object/from16 v0, p7

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->bytes:[B

    if-eqz v4, :cond_1185

    .line 2922
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaVideo_layer17;

    move-object/from16 v0, p7

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$PhotoSize;->bytes:[B

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaVideo_layer17;->thumb:[B

    goto/16 :goto_10a2

    .line 2924
    :cond_1185
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaVideo_layer17;

    const/4 v6, 0x0

    new-array v6, v6, [B

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaVideo_layer17;->thumb:[B

    goto/16 :goto_10a2

    .line 2927
    :cond_1190
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaVideo_layer8;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaVideo_layer8;-><init>()V

    iput-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    .line 2928
    move-object/from16 v0, p7

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    if-eqz v4, :cond_11b3

    move-object/from16 v0, p7

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->bytes:[B

    if-eqz v4, :cond_11b3

    .line 2929
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaVideo_layer8;

    move-object/from16 v0, p7

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$PhotoSize;->bytes:[B

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaVideo_layer8;->thumb:[B

    goto/16 :goto_10a2

    .line 2931
    :cond_11b3
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaVideo_layer8;

    const/4 v6, 0x0

    new-array v6, v6, [B

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaVideo_layer8;->thumb:[B

    goto/16 :goto_10a2

    .line 2934
    :cond_11be
    const-string v4, ""

    goto/16 :goto_10ae

    .line 2937
    .restart local v20    # "a":I
    .restart local v22    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :cond_11c2
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_10c0

    .line 2959
    .end local v22    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :cond_11c6
    new-instance v10, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFile;

    invoke-direct {v10}, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFile;-><init>()V

    .line 2960
    .restart local v10    # "encryptedFile":Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFile;
    move-object/from16 v0, p7

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->id:J

    iput-wide v8, v10, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFile;->id:J

    .line 2961
    move-object/from16 v0, p7

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->access_hash:J

    iput-wide v8, v10, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFile;->access_hash:J

    .line 2962
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p7

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->key:[B

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->key:[B

    .line 2963
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p7

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->iv:[B

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->iv:[B

    .line 2964
    invoke-static {}, Lorg/telegram/messenger/SecretChatHelper;->getInstance()Lorg/telegram/messenger/SecretChatHelper;

    move-result-object v6

    iget-object v8, v12, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    const/4 v11, 0x0

    move-object/from16 v9, v16

    invoke-virtual/range {v6 .. v12}, Lorg/telegram/messenger/SecretChatHelper;->performSendEncryptedRequest(Lorg/telegram/tgnet/TLRPC$DecryptedMessage;Lorg/telegram/tgnet/TLRPC$Message;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;Ljava/lang/String;Lorg/telegram/messenger/MessageObject;)V

    goto/16 :goto_6

    .line 2966
    .end local v10    # "encryptedFile":Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFile;
    .end local v20    # "a":I
    :cond_11f5
    const/4 v4, 0x6

    move/from16 v0, v49

    if-ne v0, v4, :cond_1233

    .line 2967
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaContact;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaContact;-><init>()V

    iput-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    .line 2968
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p6

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->phone_number:Ljava/lang/String;

    .line 2969
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p6

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->first_name:Ljava/lang/String;

    .line 2970
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p6

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->last_name:Ljava/lang/String;

    .line 2971
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p6

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$User;->id:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->user_id:I

    .line 2972
    invoke-static {}, Lorg/telegram/messenger/SecretChatHelper;->getInstance()Lorg/telegram/messenger/SecretChatHelper;

    move-result-object v13

    iget-object v15, v12, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v14, v7

    move-object/from16 v19, v12

    invoke-virtual/range {v13 .. v19}, Lorg/telegram/messenger/SecretChatHelper;->performSendEncryptedRequest(Lorg/telegram/tgnet/TLRPC$DecryptedMessage;Lorg/telegram/tgnet/TLRPC$Message;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;Ljava/lang/String;Lorg/telegram/messenger/MessageObject;)V

    goto/16 :goto_6

    .line 2973
    :cond_1233
    const/4 v4, 0x7

    move/from16 v0, v49

    if-eq v0, v4, :cond_1240

    const/16 v4, 0x9

    move/from16 v0, v49

    if-ne v0, v4, :cond_1415

    if-eqz p7, :cond_1415

    .line 2974
    :cond_1240
    invoke-static/range {p7 .. p7}, Lorg/telegram/messenger/MessageObject;->isStickerDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v4

    if-eqz v4, :cond_12bd

    .line 2975
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaExternalDocument;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaExternalDocument;-><init>()V

    iput-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    .line 2976
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p7

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->id:J

    iput-wide v8, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->id:J

    .line 2977
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p7

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->date:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->date:I

    .line 2978
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p7

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->access_hash:J

    iput-wide v8, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->access_hash:J

    .line 2979
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p7

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->mime_type:Ljava/lang/String;

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->mime_type:Ljava/lang/String;

    .line 2980
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p7

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->size:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->size:I

    .line 2981
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p7

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->dc_id:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->dc_id:I

    .line 2982
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p7

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->attributes:Ljava/util/ArrayList;

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->attributes:Ljava/util/ArrayList;

    .line 2983
    move-object/from16 v0, p7

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    if-nez v4, :cond_12b2

    .line 2984
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaExternalDocument;

    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_photoSizeEmpty;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_photoSizeEmpty;-><init>()V

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaExternalDocument;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 2985
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaExternalDocument;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaExternalDocument;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    const-string v6, "s"

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->type:Ljava/lang/String;

    .line 2989
    :goto_12a0
    invoke-static {}, Lorg/telegram/messenger/SecretChatHelper;->getInstance()Lorg/telegram/messenger/SecretChatHelper;

    move-result-object v13

    iget-object v15, v12, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v14, v7

    move-object/from16 v19, v12

    invoke-virtual/range {v13 .. v19}, Lorg/telegram/messenger/SecretChatHelper;->performSendEncryptedRequest(Lorg/telegram/tgnet/TLRPC$DecryptedMessage;Lorg/telegram/tgnet/TLRPC$Message;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;Ljava/lang/String;Lorg/telegram/messenger/MessageObject;)V

    goto/16 :goto_6

    .line 2987
    :cond_12b2
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaExternalDocument;

    move-object/from16 v0, p7

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaExternalDocument;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    goto :goto_12a0

    .line 2991
    :cond_12bd
    move-object/from16 v0, p7

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    invoke-static {v4}, Lorg/telegram/messenger/ImageLoader;->fillPhotoSizeWithBytes(Lorg/telegram/tgnet/TLRPC$PhotoSize;)V

    .line 2992
    move-object/from16 v0, v16

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->layer:I

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->getPeerLayerVersion(I)I

    move-result v4

    const/16 v6, 0x2e

    if-lt v4, v6, :cond_1392

    .line 2993
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument;-><init>()V

    iput-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    .line 2994
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p7

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->attributes:Ljava/util/ArrayList;

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->attributes:Ljava/util/ArrayList;

    .line 2995
    iget-object v6, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p7

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->caption:Ljava/lang/String;

    if-eqz v4, :cond_137a

    move-object/from16 v0, p7

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->caption:Ljava/lang/String;

    :goto_12eb
    iput-object v4, v6, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->caption:Ljava/lang/String;

    .line 2996
    move-object/from16 v0, p7

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    if-eqz v4, :cond_137e

    move-object/from16 v0, p7

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->bytes:[B

    if-eqz v4, :cond_137e

    .line 2997
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument;

    move-object/from16 v0, p7

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$PhotoSize;->bytes:[B

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument;->thumb:[B

    .line 2998
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p7

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->thumb_h:I

    .line 2999
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p7

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->thumb_w:I

    .line 3018
    :goto_131b
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p7

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->size:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->size:I

    .line 3019
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p7

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->mime_type:Ljava/lang/String;

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->mime_type:Ljava/lang/String;

    .line 3021
    move-object/from16 v0, p7

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->key:[B

    if-nez v4, :cond_13e6

    .line 3022
    new-instance v25, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;-><init>(Lorg/telegram/messenger/SendMessagesHelper;)V

    .line 3023
    .restart local v25    # "delayedMessage":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    move-object/from16 v0, v39

    move-object/from16 v1, v25

    iput-object v0, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->originalPath:Ljava/lang/String;

    .line 3024
    move-object/from16 v0, v25

    iput-object v7, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendEncryptedRequest:Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;

    .line 3025
    const/4 v4, 0x2

    move-object/from16 v0, v25

    iput v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->type:I

    .line 3026
    move-object/from16 v0, v25

    iput-object v12, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    .line 3027
    move-object/from16 v0, v16

    move-object/from16 v1, v25

    iput-object v0, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    .line 3028
    if-eqz p10, :cond_136b

    invoke-virtual/range {p10 .. p10}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_136b

    const-string v4, "http"

    move-object/from16 v0, p10

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_136b

    .line 3029
    move-object/from16 v0, p10

    move-object/from16 v1, v25

    iput-object v0, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->httpLocation:Ljava/lang/String;

    .line 3031
    :cond_136b
    move-object/from16 v0, p7

    move-object/from16 v1, v25

    iput-object v0, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->documentLocation:Lorg/telegram/tgnet/TLRPC$TL_document;

    .line 3032
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lorg/telegram/messenger/SendMessagesHelper;->performSendDelayedMessage(Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;)V

    goto/16 :goto_6

    .line 2995
    .end local v25    # "delayedMessage":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    :cond_137a
    const-string v4, ""

    goto/16 :goto_12eb

    .line 3001
    :cond_137e
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument;

    const/4 v6, 0x0

    new-array v6, v6, [B

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument;->thumb:[B

    .line 3002
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    const/4 v6, 0x0

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->thumb_h:I

    .line 3003
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    const/4 v6, 0x0

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->thumb_w:I

    goto :goto_131b

    .line 3006
    :cond_1392
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument_layer8;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument_layer8;-><init>()V

    iput-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    .line 3007
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    invoke-static/range {p7 .. p7}, Lorg/telegram/messenger/FileLoader;->getDocumentFileName(Lorg/telegram/tgnet/TLRPC$Document;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->file_name:Ljava/lang/String;

    .line 3008
    move-object/from16 v0, p7

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    if-eqz v4, :cond_13d1

    move-object/from16 v0, p7

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->bytes:[B

    if-eqz v4, :cond_13d1

    .line 3009
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument_layer8;

    move-object/from16 v0, p7

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$PhotoSize;->bytes:[B

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument_layer8;->thumb:[B

    .line 3010
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p7

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->thumb_h:I

    .line 3011
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p7

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->thumb_w:I

    goto/16 :goto_131b

    .line 3013
    :cond_13d1
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument_layer8;

    const/4 v6, 0x0

    new-array v6, v6, [B

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument_layer8;->thumb:[B

    .line 3014
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    const/4 v6, 0x0

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->thumb_h:I

    .line 3015
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    const/4 v6, 0x0

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->thumb_w:I

    goto/16 :goto_131b

    .line 3034
    :cond_13e6
    new-instance v10, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFile;

    invoke-direct {v10}, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFile;-><init>()V

    .line 3035
    .restart local v10    # "encryptedFile":Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFile;
    move-object/from16 v0, p7

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->id:J

    iput-wide v8, v10, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFile;->id:J

    .line 3036
    move-object/from16 v0, p7

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->access_hash:J

    iput-wide v8, v10, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFile;->access_hash:J

    .line 3037
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p7

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->key:[B

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->key:[B

    .line 3038
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p7

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->iv:[B

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->iv:[B

    .line 3039
    invoke-static {}, Lorg/telegram/messenger/SecretChatHelper;->getInstance()Lorg/telegram/messenger/SecretChatHelper;

    move-result-object v6

    iget-object v8, v12, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    const/4 v11, 0x0

    move-object/from16 v9, v16

    invoke-virtual/range {v6 .. v12}, Lorg/telegram/messenger/SecretChatHelper;->performSendEncryptedRequest(Lorg/telegram/tgnet/TLRPC$DecryptedMessage;Lorg/telegram/tgnet/TLRPC$Message;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;Ljava/lang/String;Lorg/telegram/messenger/MessageObject;)V

    goto/16 :goto_6

    .line 3042
    .end local v10    # "encryptedFile":Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFile;
    :cond_1415
    const/16 v4, 0x8

    move/from16 v0, v49

    if-ne v0, v4, :cond_6

    .line 3043
    new-instance v25, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;-><init>(Lorg/telegram/messenger/SendMessagesHelper;)V

    .line 3044
    .restart local v25    # "delayedMessage":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    move-object/from16 v0, v16

    move-object/from16 v1, v25

    iput-object v0, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    .line 3045
    move-object/from16 v0, v25

    iput-object v7, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendEncryptedRequest:Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;

    .line 3046
    move-object/from16 v0, v25

    iput-object v12, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    .line 3047
    move-object/from16 v0, p7

    move-object/from16 v1, v25

    iput-object v0, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->documentLocation:Lorg/telegram/tgnet/TLRPC$TL_document;

    .line 3048
    const/4 v4, 0x3

    move-object/from16 v0, v25

    iput v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->type:I

    .line 3050
    move-object/from16 v0, v16

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->layer:I

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->getPeerLayerVersion(I)I

    move-result v4

    const/16 v6, 0x2e

    if-lt v4, v6, :cond_14ca

    .line 3051
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument;-><init>()V

    iput-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    .line 3052
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p7

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->attributes:Ljava/util/ArrayList;

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->attributes:Ljava/util/ArrayList;

    .line 3053
    iget-object v6, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p7

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->caption:Ljava/lang/String;

    if-eqz v4, :cond_14b3

    move-object/from16 v0, p7

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->caption:Ljava/lang/String;

    :goto_1464
    iput-object v4, v6, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->caption:Ljava/lang/String;

    .line 3054
    move-object/from16 v0, p7

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    if-eqz v4, :cond_14b6

    move-object/from16 v0, p7

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->bytes:[B

    if-eqz v4, :cond_14b6

    .line 3055
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument;

    move-object/from16 v0, p7

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$PhotoSize;->bytes:[B

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument;->thumb:[B

    .line 3056
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p7

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->thumb_h:I

    .line 3057
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p7

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->thumb_w:I

    .line 3063
    :goto_1494
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p7

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->mime_type:Ljava/lang/String;

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->mime_type:Ljava/lang/String;

    .line 3064
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p7

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->size:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->size:I

    .line 3065
    move-object/from16 v0, v39

    move-object/from16 v1, v25

    iput-object v0, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->originalPath:Ljava/lang/String;

    .line 3083
    :goto_14aa
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lorg/telegram/messenger/SendMessagesHelper;->performSendDelayedMessage(Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;)V

    goto/16 :goto_6

    .line 3053
    :cond_14b3
    const-string v4, ""

    goto :goto_1464

    .line 3059
    :cond_14b6
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument;

    const/4 v6, 0x0

    new-array v6, v6, [B

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument;->thumb:[B

    .line 3060
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    const/4 v6, 0x0

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->thumb_h:I

    .line 3061
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    const/4 v6, 0x0

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->thumb_w:I

    goto :goto_1494

    .line 3067
    :cond_14ca
    move-object/from16 v0, v16

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->layer:I

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->getPeerLayerVersion(I)I

    move-result v4

    const/16 v6, 0x11

    if-lt v4, v6, :cond_1519

    .line 3068
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaAudio;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaAudio;-><init>()V

    iput-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    .line 3072
    :goto_14dd
    const/16 v20, 0x0

    .restart local v20    # "a":I
    :goto_14df
    move-object/from16 v0, p7

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v20

    if-ge v0, v4, :cond_1505

    .line 3073
    move-object/from16 v0, p7

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->attributes:Ljava/util/ArrayList;

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    .line 3074
    .restart local v22    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    move-object/from16 v0, v22

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;

    if-eqz v4, :cond_1521

    .line 3075
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, v22

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->duration:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->duration:I

    .line 3079
    .end local v22    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :cond_1505
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    const-string v6, "audio/ogg"

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->mime_type:Ljava/lang/String;

    .line 3080
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p7

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->size:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->size:I

    .line 3081
    const/4 v4, 0x3

    move-object/from16 v0, v25

    iput v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->type:I

    goto :goto_14aa

    .line 3070
    .end local v20    # "a":I
    :cond_1519
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaAudio_layer8;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaAudio_layer8;-><init>()V

    iput-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    goto :goto_14dd

    .line 3072
    .restart local v20    # "a":I
    .restart local v22    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :cond_1521
    add-int/lit8 v20, v20, 0x1

    goto :goto_14df

    .line 3086
    .end local v7    # "reqSend":Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;
    .end local v20    # "a":I
    .end local v22    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    .end local v25    # "delayedMessage":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    :cond_1524
    const/4 v4, 0x4

    move/from16 v0, v49

    if-ne v0, v4, :cond_15d8

    .line 3087
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;-><init>()V

    .line 3088
    .local v7, "reqSend":Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;
    move-object/from16 v0, v44

    iput-object v0, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->to_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 3089
    move-object/from16 v0, p14

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I

    if-eqz v4, :cond_15c0

    .line 3090
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    move-object/from16 v0, p14

    iget-object v6, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I

    neg-int v6, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v24

    .line 3091
    .restart local v24    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChannel;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChannel;-><init>()V

    iput-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->from_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 3092
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->from_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-object/from16 v0, p14

    iget-object v6, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I

    neg-int v6, v6

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$InputPeer;->channel_id:I

    .line 3093
    if-eqz v24, :cond_1569

    .line 3094
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->from_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-object/from16 v0, v24

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$Chat;->access_hash:J

    iput-wide v8, v4, Lorg/telegram/tgnet/TLRPC$InputPeer;->access_hash:J

    .line 3099
    .end local v24    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_1569
    :goto_1569
    move-object/from16 v0, p14

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;

    if-eqz v4, :cond_1598

    .line 3100
    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v6, "Notifications"

    const/4 v8, 0x0

    invoke-virtual {v4, v6, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "silent_"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p8

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    invoke-interface {v4, v6, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->silent:Z

    .line 3102
    :cond_1598
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->random_id:Ljava/util/ArrayList;

    move-object/from16 v0, v34

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3103
    invoke-virtual/range {p14 .. p14}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    if-ltz v4, :cond_15c8

    .line 3104
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->id:Ljava/util/ArrayList;

    invoke-virtual/range {p14 .. p14}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3108
    :goto_15b8
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v12, v4}, Lorg/telegram/messenger/SendMessagesHelper;->performSendMessageRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 3097
    :cond_15c0
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_inputPeerEmpty;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerEmpty;-><init>()V

    iput-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->from_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    goto :goto_1569

    .line 3106
    :cond_15c8
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->id:Ljava/util/ArrayList;

    move-object/from16 v0, p14

    iget-object v6, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$Message;->fwd_msg_id:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_15b8

    .line 3109
    .end local v7    # "reqSend":Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;
    :cond_15d8
    const/16 v4, 0x9

    move/from16 v0, v49

    if-ne v0, v4, :cond_6

    .line 3110
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;-><init>()V

    .line 3111
    .local v7, "reqSend":Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;
    move-object/from16 v0, v44

    iput-object v0, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 3112
    move-object/from16 v0, v34

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    iput-wide v8, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;->random_id:J

    .line 3113
    if-eqz p11, :cond_15fb

    .line 3114
    iget v4, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;->flags:I

    or-int/lit8 v4, v4, 0x1

    iput v4, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;->flags:I

    .line 3115
    invoke-virtual/range {p11 .. p11}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    iput v4, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;->reply_to_msg_id:I

    .line 3117
    :cond_15fb
    move-object/from16 v0, v34

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;

    if-eqz v4, :cond_1628

    .line 3118
    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v6, "Notifications"

    const/4 v8, 0x0

    invoke-virtual {v4, v6, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "silent_"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p8

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    invoke-interface {v4, v6, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;->silent:Z

    .line 3120
    :cond_1628
    const-string v4, "query_id"

    move-object/from16 v0, p16

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lorg/telegram/messenger/Utilities;->parseLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iput-wide v8, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;->query_id:J

    .line 3121
    const-string v4, "id"

    move-object/from16 v0, p16

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;->id:Ljava/lang/String;

    .line 3122
    if-nez p14, :cond_1653

    .line 3123
    const/4 v4, 0x1

    iput-boolean v4, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;->clear_draft:Z

    .line 3124
    const/4 v4, 0x0

    move-wide/from16 v0, p8

    invoke-static {v0, v1, v4}, Lorg/telegram/messenger/query/DraftQuery;->cleanDraft(JZ)V

    .line 3126
    :cond_1653
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v12, v4}, Lorg/telegram/messenger/SendMessagesHelper;->performSendMessageRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;)V
    :try_end_1659
    .catch Ljava/lang/Exception; {:try_start_7c5 .. :try_end_1659} :catch_7e0

    goto/16 :goto_6

    .line 3128
    .end local v5    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    .end local v7    # "reqSend":Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;
    .end local v12    # "newMsgObj":Lorg/telegram/messenger/MessageObject;
    .end local v38    # "objArr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .end local p6    # "user":Lorg/telegram/tgnet/TLRPC$User;
    .restart local v36    # "newMsgObj":Lorg/telegram/messenger/MessageObject;
    .restart local v50    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :catch_165b
    move-exception v27

    move-object/from16 v12, v36

    .end local v36    # "newMsgObj":Lorg/telegram/messenger/MessageObject;
    .restart local v12    # "newMsgObj":Lorg/telegram/messenger/MessageObject;
    move-object/from16 p6, v50

    .end local v50    # "user":Lorg/telegram/tgnet/TLRPC$User;
    .restart local p6    # "user":Lorg/telegram/tgnet/TLRPC$User;
    goto/16 :goto_1bc
.end method

.method private updateMediaPaths(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$Message;Ljava/lang/String;Z)V
    .registers 23
    .param p1, "newMsgObj"    # Lorg/telegram/messenger/MessageObject;
    .param p2, "sentMessage"    # Lorg/telegram/tgnet/TLRPC$Message;
    .param p3, "originalPath"    # Ljava/lang/String;
    .param p4, "post"    # Z

    .prologue
    .line 3453
    move-object/from16 v0, p1

    iget-object v9, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    .line 3454
    .local v9, "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    if-nez p2, :cond_7

    .line 3591
    :cond_6
    :goto_6
    return-void

    .line 3457
    :cond_7
    move-object/from16 v0, p2

    iget-object v13, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v13, v13, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    if-eqz v13, :cond_1be

    move-object/from16 v0, p2

    iget-object v13, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz v13, :cond_1be

    iget-object v13, v9, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v13, v13, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    if-eqz v13, :cond_1be

    iget-object v13, v9, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz v13, :cond_1be

    .line 3458
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v13

    move-object/from16 v0, p2

    iget-object v14, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v14, v14, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    const/4 v15, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v13, v0, v14, v15}, Lorg/telegram/messenger/MessagesStorage;->putSentFile(Ljava/lang/String;Lorg/telegram/tgnet/TLObject;I)V

    .line 3460
    iget-object v13, v9, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_8b

    iget-object v13, v9, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    instance-of v13, v13, Lorg/telegram/tgnet/TLRPC$TL_fileLocationUnavailable;

    if-eqz v13, :cond_8b

    .line 3461
    iget-object v13, v9, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    move-object/from16 v0, p2

    iget-object v14, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v14, v14, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v14, v14, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    iput-object v14, v13, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    .line 3495
    :cond_61
    iget-object v13, v9, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    move-object/from16 v0, p2

    iput-object v13, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    .line 3496
    iget-object v13, v9, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    move-object/from16 v0, p2

    iput-object v13, v0, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    .line 3497
    iget-object v13, v9, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    move-object/from16 v0, p2

    iget-object v14, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v14, v14, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-wide v14, v14, Lorg/telegram/tgnet/TLRPC$Photo;->id:J

    iput-wide v14, v13, Lorg/telegram/tgnet/TLRPC$Photo;->id:J

    .line 3498
    iget-object v13, v9, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    move-object/from16 v0, p2

    iget-object v14, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v14, v14, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-wide v14, v14, Lorg/telegram/tgnet/TLRPC$Photo;->access_hash:J

    iput-wide v14, v13, Lorg/telegram/tgnet/TLRPC$Photo;->access_hash:J

    goto/16 :goto_6

    .line 3463
    :cond_8b
    const/4 v2, 0x0

    .local v2, "a":I
    :goto_8c
    move-object/from16 v0, p2

    iget-object v13, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v2, v13, :cond_61

    .line 3464
    move-object/from16 v0, p2

    iget-object v13, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 3465
    .local v11, "size":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    if-eqz v11, :cond_b6

    iget-object v13, v11, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v13, :cond_b6

    instance-of v13, v11, Lorg/telegram/tgnet/TLRPC$TL_photoSizeEmpty;

    if-nez v13, :cond_b6

    iget-object v13, v11, Lorg/telegram/tgnet/TLRPC$PhotoSize;->type:Ljava/lang/String;

    if-nez v13, :cond_b9

    .line 3463
    :cond_b6
    :goto_b6
    add-int/lit8 v2, v2, 0x1

    goto :goto_8c

    .line 3468
    :cond_b9
    const/4 v4, 0x0

    .local v4, "b":I
    :goto_ba
    iget-object v13, v9, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v4, v13, :cond_b6

    .line 3469
    iget-object v13, v9, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 3470
    .local v12, "size2":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    if-eqz v12, :cond_dc

    iget-object v13, v12, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v13, :cond_dc

    iget-object v13, v12, Lorg/telegram/tgnet/TLRPC$PhotoSize;->type:Ljava/lang/String;

    if-nez v13, :cond_df

    .line 3468
    :cond_dc
    add-int/lit8 v4, v4, 0x1

    goto :goto_ba

    .line 3473
    :cond_df
    iget-object v13, v12, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-wide v14, v13, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    const-wide/32 v16, -0x80000000

    cmp-long v13, v14, v16

    if-nez v13, :cond_f4

    iget-object v13, v11, Lorg/telegram/tgnet/TLRPC$PhotoSize;->type:Ljava/lang/String;

    iget-object v14, v12, Lorg/telegram/tgnet/TLRPC$PhotoSize;->type:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_100

    :cond_f4
    iget v13, v11, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    iget v14, v12, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    if-ne v13, v14, :cond_dc

    iget v13, v11, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    iget v14, v12, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    if-ne v13, v14, :cond_dc

    .line 3474
    :cond_100
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, v12, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-wide v14, v14, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "_"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v12, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget v14, v14, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 3475
    .local v7, "fileName":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, v11, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-wide v14, v14, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "_"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v11, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget v14, v14, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 3476
    .local v8, "fileName2":Ljava/lang/String;
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_b6

    .line 3479
    new-instance v5, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v13

    const/4 v14, 0x4

    invoke-virtual {v13, v14}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ".jpg"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v5, v13, v14}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3481
    .local v5, "cacheFile":Ljava/io/File;
    move-object/from16 v0, p2

    iget-object v13, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    const/4 v14, 0x1

    if-eq v13, v14, :cond_180

    iget v13, v11, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    const/16 v14, 0x5a

    if-gt v13, v14, :cond_180

    iget v13, v11, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    const/16 v14, 0x5a

    if-le v13, v14, :cond_19c

    .line 3482
    :cond_180
    invoke-static {v11}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;)Ljava/io/File;

    move-result-object v6

    .line 3486
    .local v6, "cacheFile2":Ljava/io/File;
    :goto_184
    invoke-virtual {v5, v6}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 3487
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v13

    iget-object v14, v11, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    move/from16 v0, p4

    invoke-virtual {v13, v7, v8, v14, v0}, Lorg/telegram/messenger/ImageLoader;->replaceImageInCache(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$FileLocation;Z)V

    .line 3488
    iget-object v13, v11, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iput-object v13, v12, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 3489
    iget v13, v11, Lorg/telegram/tgnet/TLRPC$PhotoSize;->size:I

    iput v13, v12, Lorg/telegram/tgnet/TLRPC$PhotoSize;->size:I

    goto/16 :goto_b6

    .line 3484
    .end local v6    # "cacheFile2":Ljava/io/File;
    :cond_19c
    new-instance v6, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v13

    const/4 v14, 0x4

    invoke-virtual {v13, v14}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ".jpg"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v6, v13, v14}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .restart local v6    # "cacheFile2":Ljava/io/File;
    goto :goto_184

    .line 3499
    .end local v2    # "a":I
    .end local v4    # "b":I
    .end local v5    # "cacheFile":Ljava/io/File;
    .end local v6    # "cacheFile2":Ljava/io/File;
    .end local v7    # "fileName":Ljava/lang/String;
    .end local v8    # "fileName2":Ljava/lang/String;
    .end local v11    # "size":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    .end local v12    # "size2":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    :cond_1be
    move-object/from16 v0, p2

    iget-object v13, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v13, v13, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    if-eqz v13, :cond_472

    move-object/from16 v0, p2

    iget-object v13, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v13, :cond_472

    iget-object v13, v9, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v13, v13, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    if-eqz v13, :cond_472

    iget-object v13, v9, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v13, :cond_472

    .line 3500
    invoke-static/range {p2 .. p2}, Lorg/telegram/messenger/MessageObject;->isVideoMessage(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v13

    if-eqz v13, :cond_341

    .line 3501
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v13

    move-object/from16 v0, p2

    iget-object v14, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v14, v14, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    const/4 v15, 0x2

    move-object/from16 v0, p3

    invoke-virtual {v13, v0, v14, v15}, Lorg/telegram/messenger/MessagesStorage;->putSentFile(Ljava/lang/String;Lorg/telegram/tgnet/TLObject;I)V

    .line 3502
    iget-object v13, v9, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    move-object/from16 v0, p2

    iput-object v13, v0, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    .line 3507
    :cond_1f6
    :goto_1f6
    iget-object v13, v9, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v12, v13, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 3508
    .restart local v12    # "size2":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    move-object/from16 v0, p2

    iget-object v13, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v11, v13, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 3509
    .restart local v11    # "size":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    if-eqz v12, :cond_359

    iget-object v13, v12, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v13, :cond_359

    iget-object v13, v12, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-wide v14, v13, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    const-wide/32 v16, -0x80000000

    cmp-long v13, v14, v16

    if-nez v13, :cond_359

    if-eqz v11, :cond_359

    iget-object v13, v11, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v13, :cond_359

    instance-of v13, v11, Lorg/telegram/tgnet/TLRPC$TL_photoSizeEmpty;

    if-nez v13, :cond_359

    instance-of v13, v12, Lorg/telegram/tgnet/TLRPC$TL_photoSizeEmpty;

    if-nez v13, :cond_359

    .line 3510
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, v12, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-wide v14, v14, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "_"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v12, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget v14, v14, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 3511
    .restart local v7    # "fileName":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, v11, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-wide v14, v14, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "_"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v11, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget v14, v14, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 3512
    .restart local v8    # "fileName2":Ljava/lang/String;
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_2bf

    .line 3513
    new-instance v5, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v13

    const/4 v14, 0x4

    invoke-virtual {v13, v14}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ".jpg"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v5, v13, v14}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3514
    .restart local v5    # "cacheFile":Ljava/io/File;
    new-instance v6, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v13

    const/4 v14, 0x4

    invoke-virtual {v13, v14}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ".jpg"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v6, v13, v14}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3515
    .restart local v6    # "cacheFile2":Ljava/io/File;
    invoke-virtual {v5, v6}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 3516
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v13

    iget-object v14, v11, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    move/from16 v0, p4

    invoke-virtual {v13, v7, v8, v14, v0}, Lorg/telegram/messenger/ImageLoader;->replaceImageInCache(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$FileLocation;Z)V

    .line 3517
    iget-object v13, v11, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iput-object v13, v12, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 3518
    iget v13, v11, Lorg/telegram/tgnet/TLRPC$PhotoSize;->size:I

    iput v13, v12, Lorg/telegram/tgnet/TLRPC$PhotoSize;->size:I

    .line 3526
    .end local v5    # "cacheFile":Ljava/io/File;
    .end local v6    # "cacheFile2":Ljava/io/File;
    .end local v7    # "fileName":Ljava/lang/String;
    .end local v8    # "fileName2":Ljava/lang/String;
    :cond_2bf
    :goto_2bf
    iget-object v13, v9, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move-object/from16 v0, p2

    iget-object v14, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v14, v14, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget v14, v14, Lorg/telegram/tgnet/TLRPC$Document;->dc_id:I

    iput v14, v13, Lorg/telegram/tgnet/TLRPC$Document;->dc_id:I

    .line 3527
    iget-object v13, v9, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move-object/from16 v0, p2

    iget-object v14, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v14, v14, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v14, v14, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    iput-wide v14, v13, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    .line 3528
    iget-object v13, v9, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move-object/from16 v0, p2

    iget-object v14, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v14, v14, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v14, v14, Lorg/telegram/tgnet/TLRPC$Document;->access_hash:J

    iput-wide v14, v13, Lorg/telegram/tgnet/TLRPC$Document;->access_hash:J

    .line 3529
    const/4 v10, 0x0

    .line 3530
    .local v10, "oldWaveform":[B
    const/4 v2, 0x0

    .restart local v2    # "a":I
    :goto_2eb
    iget-object v13, v9, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v2, v13, :cond_309

    .line 3531
    iget-object v13, v9, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    .line 3532
    .local v3, "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    instance-of v13, v3, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;

    if-eqz v13, :cond_387

    .line 3533
    iget-object v10, v3, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->waveform:[B

    .line 3537
    .end local v3    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :cond_309
    iget-object v13, v9, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move-object/from16 v0, p2

    iget-object v14, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v14, v14, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v14, v14, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    iput-object v14, v13, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    .line 3538
    if-eqz v10, :cond_38b

    .line 3539
    const/4 v2, 0x0

    :goto_31a
    iget-object v13, v9, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v2, v13, :cond_38b

    .line 3540
    iget-object v13, v9, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    .line 3541
    .restart local v3    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    instance-of v13, v3, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;

    if-eqz v13, :cond_33e

    .line 3542
    iput-object v10, v3, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->waveform:[B

    .line 3543
    iget v13, v3, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->flags:I

    or-int/lit8 v13, v13, 0x4

    iput v13, v3, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->flags:I

    .line 3539
    :cond_33e
    add-int/lit8 v2, v2, 0x1

    goto :goto_31a

    .line 3503
    .end local v2    # "a":I
    .end local v3    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    .end local v10    # "oldWaveform":[B
    .end local v11    # "size":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    .end local v12    # "size2":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    :cond_341
    invoke-static/range {p2 .. p2}, Lorg/telegram/messenger/MessageObject;->isVoiceMessage(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v13

    if-nez v13, :cond_1f6

    .line 3504
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v13

    move-object/from16 v0, p2

    iget-object v14, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v14, v14, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    const/4 v15, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v13, v0, v14, v15}, Lorg/telegram/messenger/MessagesStorage;->putSentFile(Ljava/lang/String;Lorg/telegram/tgnet/TLObject;I)V

    goto/16 :goto_1f6

    .line 3520
    .restart local v11    # "size":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    .restart local v12    # "size2":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    :cond_359
    if-eqz v12, :cond_36b

    invoke-static/range {p2 .. p2}, Lorg/telegram/messenger/MessageObject;->isStickerMessage(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v13

    if-eqz v13, :cond_36b

    iget-object v13, v12, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v13, :cond_36b

    .line 3521
    iget-object v13, v12, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iput-object v13, v11, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    goto/16 :goto_2bf

    .line 3522
    :cond_36b
    if-eqz v12, :cond_373

    iget-object v13, v12, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    instance-of v13, v13, Lorg/telegram/tgnet/TLRPC$TL_fileLocationUnavailable;

    if-nez v13, :cond_377

    :cond_373
    instance-of v13, v12, Lorg/telegram/tgnet/TLRPC$TL_photoSizeEmpty;

    if-eqz v13, :cond_2bf

    .line 3523
    :cond_377
    iget-object v13, v9, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move-object/from16 v0, p2

    iget-object v14, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v14, v14, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v14, v14, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iput-object v14, v13, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    goto/16 :goto_2bf

    .line 3530
    .restart local v2    # "a":I
    .restart local v3    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    .restart local v10    # "oldWaveform":[B
    :cond_387
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2eb

    .line 3547
    .end local v3    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :cond_38b
    iget-object v13, v9, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move-object/from16 v0, p2

    iget-object v14, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v14, v14, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget v14, v14, Lorg/telegram/tgnet/TLRPC$Document;->size:I

    iput v14, v13, Lorg/telegram/tgnet/TLRPC$Document;->size:I

    .line 3548
    iget-object v13, v9, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move-object/from16 v0, p2

    iget-object v14, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v14, v14, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v14, v14, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    iput-object v14, v13, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    .line 3550
    move-object/from16 v0, p2

    iget v13, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    and-int/lit8 v13, v13, 0x4

    if-nez v13, :cond_3ce

    invoke-static/range {p2 .. p2}, Lorg/telegram/messenger/MessageObject;->isOut(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v13

    if-eqz v13, :cond_3ce

    .line 3551
    move-object/from16 v0, p2

    iget-object v13, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v13}, Lorg/telegram/messenger/MessageObject;->isNewGifDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v13

    if-eqz v13, :cond_40c

    .line 3552
    move-object/from16 v0, p2

    iget-object v13, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move-object/from16 v0, p2

    iget v14, v0, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    invoke-static {v13, v14}, Lorg/telegram/messenger/query/StickersQuery;->addRecentGif(Lorg/telegram/tgnet/TLRPC$Document;I)V

    .line 3558
    :cond_3ce
    :goto_3ce
    iget-object v13, v9, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    if-eqz v13, :cond_464

    iget-object v13, v9, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v14

    const/4 v15, 0x4

    invoke-virtual {v14, v15}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v14

    invoke-virtual {v14}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_464

    .line 3559
    new-instance v5, Ljava/io/File;

    iget-object v13, v9, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-direct {v5, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3560
    .restart local v5    # "cacheFile":Ljava/io/File;
    move-object/from16 v0, p2

    iget-object v13, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v13}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;)Ljava/io/File;

    move-result-object v6

    .line 3561
    .restart local v6    # "cacheFile2":Ljava/io/File;
    invoke-virtual {v5, v6}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v13

    if-nez v13, :cond_427

    .line 3562
    iget-object v13, v9, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    move-object/from16 v0, p2

    iput-object v13, v0, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    .line 3563
    iget-object v13, v9, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    move-object/from16 v0, p2

    iput-object v13, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    goto/16 :goto_6

    .line 3553
    .end local v5    # "cacheFile":Ljava/io/File;
    .end local v6    # "cacheFile2":Ljava/io/File;
    :cond_40c
    move-object/from16 v0, p2

    iget-object v13, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v13}, Lorg/telegram/messenger/MessageObject;->isStickerDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v13

    if-eqz v13, :cond_3ce

    .line 3554
    const/4 v13, 0x0

    move-object/from16 v0, p2

    iget-object v14, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v14, v14, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move-object/from16 v0, p2

    iget v15, v0, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    invoke-static {v13, v14, v15}, Lorg/telegram/messenger/query/StickersQuery;->addRecentSticker(ILorg/telegram/tgnet/TLRPC$Document;I)V

    goto :goto_3ce

    .line 3565
    .restart local v5    # "cacheFile":Ljava/io/File;
    .restart local v6    # "cacheFile2":Ljava/io/File;
    :cond_427
    invoke-static/range {p2 .. p2}, Lorg/telegram/messenger/MessageObject;->isVideoMessage(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v13

    if-eqz v13, :cond_434

    .line 3566
    const/4 v13, 0x1

    move-object/from16 v0, p1

    iput-boolean v13, v0, Lorg/telegram/messenger/MessageObject;->attachPathExists:Z

    goto/16 :goto_6

    .line 3568
    :cond_434
    move-object/from16 v0, p1

    iget-boolean v13, v0, Lorg/telegram/messenger/MessageObject;->attachPathExists:Z

    move-object/from16 v0, p1

    iput-boolean v13, v0, Lorg/telegram/messenger/MessageObject;->mediaExists:Z

    .line 3569
    const/4 v13, 0x0

    move-object/from16 v0, p1

    iput-boolean v13, v0, Lorg/telegram/messenger/MessageObject;->attachPathExists:Z

    .line 3570
    const-string v13, ""

    iput-object v13, v9, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    .line 3571
    if-eqz p3, :cond_6

    const-string v13, "http"

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 3572
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v13

    invoke-virtual {v6}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v14

    iget-object v15, v9, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v15, v15, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move-object/from16 v0, p3

    invoke-virtual {v13, v0, v14, v15}, Lorg/telegram/messenger/MessagesStorage;->addRecentLocalFile(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$Document;)V

    goto/16 :goto_6

    .line 3577
    .end local v5    # "cacheFile":Ljava/io/File;
    .end local v6    # "cacheFile2":Ljava/io/File;
    :cond_464
    iget-object v13, v9, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    move-object/from16 v0, p2

    iput-object v13, v0, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    .line 3578
    iget-object v13, v9, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    move-object/from16 v0, p2

    iput-object v13, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    goto/16 :goto_6

    .line 3580
    .end local v2    # "a":I
    .end local v10    # "oldWaveform":[B
    .end local v11    # "size":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    .end local v12    # "size2":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    :cond_472
    move-object/from16 v0, p2

    iget-object v13, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v13, v13, Lorg/telegram/tgnet/TLRPC$TL_messageMediaContact;

    if-eqz v13, :cond_488

    iget-object v13, v9, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v13, v13, Lorg/telegram/tgnet/TLRPC$TL_messageMediaContact;

    if-eqz v13, :cond_488

    .line 3581
    move-object/from16 v0, p2

    iget-object v13, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iput-object v13, v9, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    goto/16 :goto_6

    .line 3582
    :cond_488
    move-object/from16 v0, p2

    iget-object v13, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v13, v13, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;

    if-eqz v13, :cond_498

    .line 3583
    move-object/from16 v0, p2

    iget-object v13, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iput-object v13, v9, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    goto/16 :goto_6

    .line 3584
    :cond_498
    move-object/from16 v0, p2

    iget-object v13, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v13, v13, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGame;

    if-eqz v13, :cond_6

    .line 3585
    move-object/from16 v0, p2

    iget-object v13, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iput-object v13, v9, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 3586
    iget-object v13, v9, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v13, v13, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGame;

    if-eqz v13, :cond_6

    move-object/from16 v0, p2

    iget-object v13, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_6

    .line 3587
    move-object/from16 v0, p2

    iget-object v13, v0, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    iput-object v13, v9, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    .line 3588
    move-object/from16 v0, p2

    iget-object v13, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    iput-object v13, v9, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    goto/16 :goto_6
.end method


# virtual methods
.method public cancelSendingMessage(Lorg/telegram/messenger/MessageObject;)V
    .registers 14
    .param p1, "object"    # Lorg/telegram/messenger/MessageObject;

    .prologue
    const/4 v2, 0x0

    .line 527
    const/4 v9, 0x0

    .line 528
    .local v9, "keyToRemvoe":Ljava/lang/String;
    const/4 v7, 0x0

    .line 529
    .local v7, "enc":Z
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper;->delayedMessages:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_d
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_59

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 530
    .local v8, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;>;>;"
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/ArrayList;

    .line 531
    .local v11, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;>;"
    const/4 v6, 0x0

    .local v6, "a":I
    :goto_20
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v6, v3, :cond_d

    .line 532
    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;

    .line 533
    .local v10, "message":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    iget-object v3, v10, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v3

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    if-ne v3, v4, :cond_56

    .line 534
    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 535
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v3

    iget-object v4, v10, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/MediaController;->cancelVideoConvert(Lorg/telegram/messenger/MessageObject;)V

    .line 536
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_d

    .line 537
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "keyToRemvoe":Ljava/lang/String;
    check-cast v9, Ljava/lang/String;

    .line 538
    .restart local v9    # "keyToRemvoe":Ljava/lang/String;
    iget-object v3, v10, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendEncryptedRequest:Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;

    if-eqz v3, :cond_d

    .line 539
    const/4 v7, 0x1

    goto :goto_d

    .line 531
    :cond_56
    add-int/lit8 v6, v6, 0x1

    goto :goto_20

    .line 546
    .end local v6    # "a":I
    .end local v8    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;>;>;"
    .end local v10    # "message":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    .end local v11    # "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;>;"
    :cond_59
    if-eqz v9, :cond_6d

    .line 547
    const-string v0, "http"

    invoke-virtual {v9, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8d

    .line 548
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v0

    invoke-virtual {v0, v9}, Lorg/telegram/messenger/ImageLoader;->cancelLoadHttpFile(Ljava/lang/String;)V

    .line 552
    :goto_6a
    invoke-virtual {p0, v9}, Lorg/telegram/messenger/SendMessagesHelper;->stopVideoService(Ljava/lang/String;)V

    .line 554
    :cond_6d
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 555
    .local v1, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 556
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v3, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v4, v3, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    const/4 v5, 0x0

    move-object v3, v2

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/messenger/MessagesController;->deleteMessages(Ljava/util/ArrayList;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$EncryptedChat;IZ)V

    .line 557
    return-void

    .line 550
    .end local v1    # "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_8d
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    invoke-virtual {v0, v9, v7}, Lorg/telegram/messenger/FileLoader;->cancelUploadFile(Ljava/lang/String;Z)V

    goto :goto_6a
.end method

.method public checkUnsentMessages()V
    .registers 3

    .prologue
    .line 3615
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesStorage;->getUnsentMessages(I)V

    .line 3616
    return-void
.end method

.method public cleanup()V
    .registers 2

    .prologue
    .line 244
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper;->delayedMessages:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 245
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper;->unsentMessages:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 246
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper;->sendingMessages:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 247
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper;->waitingForLocation:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 248
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper;->waitingForCallback:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 249
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper;->currentChatInfo:Lorg/telegram/tgnet/TLRPC$ChatFull;

    .line 250
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper;->locationProvider:Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;

    invoke-virtual {v0}, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;->stop()V

    .line 251
    return-void
.end method

.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .registers 37
    .param p1, "id"    # I
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 259
    sget v4, Lorg/telegram/messenger/NotificationCenter;->FileDidUpload:I

    move/from16 v0, p1

    if-ne v0, v4, :cond_1d7

    .line 260
    const/4 v4, 0x0

    aget-object v24, p2, v4

    check-cast v24, Ljava/lang/String;

    .line 261
    .local v24, "location":Ljava/lang/String;
    const/4 v4, 0x1

    aget-object v19, p2, v4

    check-cast v19, Lorg/telegram/tgnet/TLRPC$InputFile;

    .line 262
    .local v19, "file":Lorg/telegram/tgnet/TLRPC$InputFile;
    const/4 v4, 0x2

    aget-object v8, p2, v4

    check-cast v8, Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;

    .line 263
    .local v8, "encryptedFile":Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper;->delayedMessages:Ljava/util/HashMap;

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/ArrayList;

    .line 264
    .local v16, "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;>;"
    if-eqz v16, :cond_1d6

    .line 265
    const/4 v15, 0x0

    .local v15, "a":I
    :goto_24
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v15, v4, :cond_1c7

    .line 266
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;

    .line 267
    .local v27, "message":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    const/16 v26, 0x0

    .line 268
    .local v26, "media":Lorg/telegram/tgnet/TLRPC$InputMedia;
    move-object/from16 v0, v27

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendRequest:Lorg/telegram/tgnet/TLObject;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;

    if-eqz v4, :cond_71

    .line 269
    move-object/from16 v0, v27

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendRequest:Lorg/telegram/tgnet/TLObject;

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;

    iget-object v0, v4, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->media:Lorg/telegram/tgnet/TLRPC$InputMedia;

    move-object/from16 v26, v0

    .line 274
    :cond_46
    :goto_46
    if-eqz v19, :cond_149

    if-eqz v26, :cond_149

    .line 275
    move-object/from16 v0, v27

    iget v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->type:I

    if-nez v4, :cond_84

    .line 276
    move-object/from16 v0, v19

    move-object/from16 v1, v26

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$InputMedia;->file:Lorg/telegram/tgnet/TLRPC$InputFile;

    .line 277
    move-object/from16 v0, v27

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendRequest:Lorg/telegram/tgnet/TLObject;

    move-object/from16 v0, v27

    iget-object v5, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v0, v27

    iget-object v6, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->originalPath:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v6}, Lorg/telegram/messenger/SendMessagesHelper;->performSendMessageRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;)V

    .line 306
    :cond_67
    :goto_67
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 307
    add-int/lit8 v15, v15, -0x1

    .line 265
    :cond_6e
    :goto_6e
    add-int/lit8 v15, v15, 0x1

    goto :goto_24

    .line 270
    :cond_71
    move-object/from16 v0, v27

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendRequest:Lorg/telegram/tgnet/TLObject;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_messages_sendBroadcast;

    if-eqz v4, :cond_46

    .line 271
    move-object/from16 v0, v27

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendRequest:Lorg/telegram/tgnet/TLObject;

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_messages_sendBroadcast;

    iget-object v0, v4, Lorg/telegram/tgnet/TLRPC$TL_messages_sendBroadcast;->media:Lorg/telegram/tgnet/TLRPC$InputMedia;

    move-object/from16 v26, v0

    goto :goto_46

    .line 278
    :cond_84
    move-object/from16 v0, v27

    iget v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->type:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_d5

    .line 279
    move-object/from16 v0, v26

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->file:Lorg/telegram/tgnet/TLRPC$InputFile;

    if-nez v4, :cond_bd

    .line 280
    move-object/from16 v0, v19

    move-object/from16 v1, v26

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$InputMedia;->file:Lorg/telegram/tgnet/TLRPC$InputFile;

    .line 281
    move-object/from16 v0, v26

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->thumb:Lorg/telegram/tgnet/TLRPC$InputFile;

    if-nez v4, :cond_ab

    move-object/from16 v0, v27

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v4, :cond_ab

    .line 282
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lorg/telegram/messenger/SendMessagesHelper;->performSendDelayedMessage(Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;)V

    goto :goto_67

    .line 284
    :cond_ab
    move-object/from16 v0, v27

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendRequest:Lorg/telegram/tgnet/TLObject;

    move-object/from16 v0, v27

    iget-object v5, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v0, v27

    iget-object v6, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->originalPath:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v6}, Lorg/telegram/messenger/SendMessagesHelper;->performSendMessageRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;)V

    goto :goto_67

    .line 287
    :cond_bd
    move-object/from16 v0, v19

    move-object/from16 v1, v26

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$InputMedia;->thumb:Lorg/telegram/tgnet/TLRPC$InputFile;

    .line 288
    move-object/from16 v0, v27

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendRequest:Lorg/telegram/tgnet/TLObject;

    move-object/from16 v0, v27

    iget-object v5, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v0, v27

    iget-object v6, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->originalPath:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v6}, Lorg/telegram/messenger/SendMessagesHelper;->performSendMessageRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;)V

    goto :goto_67

    .line 290
    :cond_d5
    move-object/from16 v0, v27

    iget v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->type:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_129

    .line 291
    move-object/from16 v0, v26

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->file:Lorg/telegram/tgnet/TLRPC$InputFile;

    if-nez v4, :cond_110

    .line 292
    move-object/from16 v0, v19

    move-object/from16 v1, v26

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$InputMedia;->file:Lorg/telegram/tgnet/TLRPC$InputFile;

    .line 293
    move-object/from16 v0, v26

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->thumb:Lorg/telegram/tgnet/TLRPC$InputFile;

    if-nez v4, :cond_fd

    move-object/from16 v0, v27

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v4, :cond_fd

    .line 294
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lorg/telegram/messenger/SendMessagesHelper;->performSendDelayedMessage(Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;)V

    goto/16 :goto_67

    .line 296
    :cond_fd
    move-object/from16 v0, v27

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendRequest:Lorg/telegram/tgnet/TLObject;

    move-object/from16 v0, v27

    iget-object v5, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v0, v27

    iget-object v6, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->originalPath:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v6}, Lorg/telegram/messenger/SendMessagesHelper;->performSendMessageRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;)V

    goto/16 :goto_67

    .line 299
    :cond_110
    move-object/from16 v0, v19

    move-object/from16 v1, v26

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$InputMedia;->thumb:Lorg/telegram/tgnet/TLRPC$InputFile;

    .line 300
    move-object/from16 v0, v27

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendRequest:Lorg/telegram/tgnet/TLObject;

    move-object/from16 v0, v27

    iget-object v5, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v0, v27

    iget-object v6, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->originalPath:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v6}, Lorg/telegram/messenger/SendMessagesHelper;->performSendMessageRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;)V

    goto/16 :goto_67

    .line 302
    :cond_129
    move-object/from16 v0, v27

    iget v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->type:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_67

    .line 303
    move-object/from16 v0, v19

    move-object/from16 v1, v26

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$InputMedia;->file:Lorg/telegram/tgnet/TLRPC$InputFile;

    .line 304
    move-object/from16 v0, v27

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendRequest:Lorg/telegram/tgnet/TLObject;

    move-object/from16 v0, v27

    iget-object v5, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v0, v27

    iget-object v6, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->originalPath:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v6}, Lorg/telegram/messenger/SendMessagesHelper;->performSendMessageRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;)V

    goto/16 :goto_67

    .line 308
    :cond_149
    if-eqz v8, :cond_6e

    move-object/from16 v0, v27

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendEncryptedRequest:Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;

    if-eqz v4, :cond_6e

    .line 309
    move-object/from16 v0, v27

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendEncryptedRequest:Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaVideo;

    if-nez v4, :cond_16f

    move-object/from16 v0, v27

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendEncryptedRequest:Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaPhoto;

    if-nez v4, :cond_16f

    move-object/from16 v0, v27

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendEncryptedRequest:Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument;

    if-eqz v4, :cond_183

    .line 312
    :cond_16f
    const/4 v4, 0x5

    aget-object v4, p2, v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v32

    .line 313
    .local v32, "size":J
    move-object/from16 v0, v27

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendEncryptedRequest:Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-wide/from16 v0, v32

    long-to-int v5, v0

    iput v5, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->size:I

    .line 315
    .end local v32    # "size":J
    :cond_183
    move-object/from16 v0, v27

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendEncryptedRequest:Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;

    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    const/4 v4, 0x3

    aget-object v4, p2, v4

    check-cast v4, [B

    check-cast v4, [B

    iput-object v4, v5, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->key:[B

    .line 316
    move-object/from16 v0, v27

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendEncryptedRequest:Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;

    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    const/4 v4, 0x4

    aget-object v4, p2, v4

    check-cast v4, [B

    check-cast v4, [B

    iput-object v4, v5, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->iv:[B

    .line 317
    invoke-static {}, Lorg/telegram/messenger/SecretChatHelper;->getInstance()Lorg/telegram/messenger/SecretChatHelper;

    move-result-object v4

    move-object/from16 v0, v27

    iget-object v5, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendEncryptedRequest:Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;

    move-object/from16 v0, v27

    iget-object v6, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    iget-object v6, v6, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v0, v27

    iget-object v7, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-object/from16 v0, v27

    iget-object v9, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->originalPath:Ljava/lang/String;

    move-object/from16 v0, v27

    iget-object v10, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    invoke-virtual/range {v4 .. v10}, Lorg/telegram/messenger/SecretChatHelper;->performSendEncryptedRequest(Lorg/telegram/tgnet/TLRPC$DecryptedMessage;Lorg/telegram/tgnet/TLRPC$Message;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;Ljava/lang/String;Lorg/telegram/messenger/MessageObject;)V

    .line 318
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 319
    add-int/lit8 v15, v15, -0x1

    goto/16 :goto_6e

    .line 322
    .end local v26    # "media":Lorg/telegram/tgnet/TLRPC$InputMedia;
    .end local v27    # "message":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    :cond_1c7
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1d6

    .line 323
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper;->delayedMessages:Ljava/util/HashMap;

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 524
    .end local v8    # "encryptedFile":Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;
    .end local v15    # "a":I
    .end local v16    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;>;"
    .end local v19    # "file":Lorg/telegram/tgnet/TLRPC$InputFile;
    .end local v24    # "location":Ljava/lang/String;
    :cond_1d6
    :goto_1d6
    return-void

    .line 326
    :cond_1d7
    sget v4, Lorg/telegram/messenger/NotificationCenter;->FileDidFailUpload:I

    move/from16 v0, p1

    if-ne v0, v4, :cond_271

    .line 327
    const/4 v4, 0x0

    aget-object v24, p2, v4

    check-cast v24, Ljava/lang/String;

    .line 328
    .restart local v24    # "location":Ljava/lang/String;
    const/4 v4, 0x1

    aget-object v4, p2, v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v18

    .line 329
    .local v18, "enc":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper;->delayedMessages:Ljava/util/HashMap;

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/ArrayList;

    .line 330
    .restart local v16    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;>;"
    if-eqz v16, :cond_1d6

    .line 331
    const/4 v15, 0x0

    .restart local v15    # "a":I
    :goto_1fa
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v15, v4, :cond_260

    .line 332
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;

    .line 333
    .local v29, "obj":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    if-eqz v18, :cond_210

    move-object/from16 v0, v29

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendEncryptedRequest:Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;

    if-nez v4, :cond_218

    :cond_210
    if-nez v18, :cond_25d

    move-object/from16 v0, v29

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendRequest:Lorg/telegram/tgnet/TLObject;

    if-eqz v4, :cond_25d

    .line 334
    :cond_218
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    move-object/from16 v0, v29

    iget-object v5, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    iget-object v5, v5, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/MessagesStorage;->markMessageAsSendError(Lorg/telegram/tgnet/TLRPC$Message;)V

    .line 335
    move-object/from16 v0, v29

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    iget-object v4, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    const/4 v5, 0x2

    iput v5, v4, Lorg/telegram/tgnet/TLRPC$Message;->send_state:I

    .line 336
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 337
    add-int/lit8 v15, v15, -0x1

    .line 338
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/NotificationCenter;->messageSendError:I

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    move-object/from16 v0, v29

    iget-object v9, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v9}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v7

    invoke-virtual {v4, v5, v6}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 339
    move-object/from16 v0, v29

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/SendMessagesHelper;->processSentMessage(I)V

    .line 331
    :cond_25d
    add-int/lit8 v15, v15, 0x1

    goto :goto_1fa

    .line 342
    .end local v29    # "obj":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    :cond_260
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1d6

    .line 343
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper;->delayedMessages:Ljava/util/HashMap;

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1d6

    .line 346
    .end local v15    # "a":I
    .end local v16    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;>;"
    .end local v18    # "enc":Z
    .end local v24    # "location":Ljava/lang/String;
    :cond_271
    sget v4, Lorg/telegram/messenger/NotificationCenter;->FilePreparingStarted:I

    move/from16 v0, p1

    if-ne v0, v4, :cond_2d9

    .line 347
    const/4 v4, 0x0

    aget-object v28, p2, v4

    check-cast v28, Lorg/telegram/messenger/MessageObject;

    .line 348
    .local v28, "messageObject":Lorg/telegram/messenger/MessageObject;
    invoke-virtual/range {v28 .. v28}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    if-eqz v4, :cond_1d6

    .line 351
    const/4 v4, 0x1

    aget-object v20, p2, v4

    check-cast v20, Ljava/lang/String;

    .line 353
    .local v20, "finalPath":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper;->delayedMessages:Ljava/util/HashMap;

    move-object/from16 v0, v28

    iget-object v5, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/ArrayList;

    .line 354
    .restart local v16    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;>;"
    if-eqz v16, :cond_1d6

    .line 355
    const/4 v15, 0x0

    .restart local v15    # "a":I
    :goto_29a
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v15, v4, :cond_2c1

    .line 356
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;

    .line 357
    .restart local v27    # "message":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    move-object/from16 v0, v27

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v0, v28

    if-ne v4, v0, :cond_2d6

    .line 358
    const/4 v4, 0x0

    move-object/from16 v0, v27

    iput-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    .line 359
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lorg/telegram/messenger/SendMessagesHelper;->performSendDelayedMessage(Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;)V

    .line 360
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 364
    .end local v27    # "message":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    :cond_2c1
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1d6

    .line 365
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper;->delayedMessages:Ljava/util/HashMap;

    move-object/from16 v0, v28

    iget-object v5, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1d6

    .line 355
    .restart local v27    # "message":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    :cond_2d6
    add-int/lit8 v15, v15, 0x1

    goto :goto_29a

    .line 368
    .end local v15    # "a":I
    .end local v16    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;>;"
    .end local v20    # "finalPath":Ljava/lang/String;
    .end local v27    # "message":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    .end local v28    # "messageObject":Lorg/telegram/messenger/MessageObject;
    :cond_2d9
    sget v4, Lorg/telegram/messenger/NotificationCenter;->FileNewChunkAvailable:I

    move/from16 v0, p1

    if-ne v0, v4, :cond_392

    .line 369
    const/4 v4, 0x0

    aget-object v28, p2, v4

    check-cast v28, Lorg/telegram/messenger/MessageObject;

    .line 370
    .restart local v28    # "messageObject":Lorg/telegram/messenger/MessageObject;
    invoke-virtual/range {v28 .. v28}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    if-eqz v4, :cond_1d6

    .line 373
    const/4 v4, 0x1

    aget-object v20, p2, v4

    check-cast v20, Ljava/lang/String;

    .line 374
    .restart local v20    # "finalPath":Ljava/lang/String;
    const/4 v4, 0x2

    aget-object v4, p2, v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    .line 375
    .local v22, "finalSize":J
    invoke-virtual/range {v28 .. v28}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v4

    long-to-int v4, v4

    if-nez v4, :cond_38b

    const/16 v21, 0x1

    .line 376
    .local v21, "isEncrypted":Z
    :goto_301
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v4

    move-object/from16 v0, v20

    move/from16 v1, v21

    move-wide/from16 v2, v22

    invoke-virtual {v4, v0, v1, v2, v3}, Lorg/telegram/messenger/FileLoader;->checkUploadNewDataAvailable(Ljava/lang/String;ZJ)V

    .line 377
    const-wide/16 v4, 0x0

    cmp-long v4, v22, v4

    if-eqz v4, :cond_1d6

    .line 378
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper;->delayedMessages:Ljava/util/HashMap;

    move-object/from16 v0, v28

    iget-object v5, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/ArrayList;

    .line 379
    .restart local v16    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;>;"
    if-eqz v16, :cond_1d6

    .line 380
    const/4 v15, 0x0

    .restart local v15    # "a":I
    :goto_327
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v15, v4, :cond_376

    .line 381
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;

    .line 382
    .restart local v27    # "message":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    move-object/from16 v0, v27

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v0, v28

    if-ne v4, v0, :cond_38f

    .line 383
    move-object/from16 v0, v27

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    const/4 v5, 0x0

    iput-object v5, v4, Lorg/telegram/messenger/MessageObject;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    .line 384
    move-object/from16 v0, v27

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    iget-object v4, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    const-string v5, "-1"

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    .line 385
    move-object/from16 v0, v27

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    iget-object v4, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move-wide/from16 v0, v22

    long-to-int v5, v0

    iput v5, v4, Lorg/telegram/tgnet/TLRPC$Document;->size:I

    .line 387
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 388
    .local v10, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    move-object/from16 v0, v27

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    iget-object v4, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 389
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v9

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {v9 .. v14}, Lorg/telegram/messenger/MessagesStorage;->putMessages(Ljava/util/ArrayList;ZZZI)V

    .line 393
    .end local v10    # "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    .end local v27    # "message":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    :cond_376
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1d6

    .line 394
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper;->delayedMessages:Ljava/util/HashMap;

    move-object/from16 v0, v28

    iget-object v5, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1d6

    .line 375
    .end local v15    # "a":I
    .end local v16    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;>;"
    .end local v21    # "isEncrypted":Z
    :cond_38b
    const/16 v21, 0x0

    goto/16 :goto_301

    .line 380
    .restart local v15    # "a":I
    .restart local v16    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;>;"
    .restart local v21    # "isEncrypted":Z
    .restart local v27    # "message":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    :cond_38f
    add-int/lit8 v15, v15, 0x1

    goto :goto_327

    .line 398
    .end local v15    # "a":I
    .end local v16    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;>;"
    .end local v20    # "finalPath":Ljava/lang/String;
    .end local v21    # "isEncrypted":Z
    .end local v22    # "finalSize":J
    .end local v27    # "message":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    .end local v28    # "messageObject":Lorg/telegram/messenger/MessageObject;
    :cond_392
    sget v4, Lorg/telegram/messenger/NotificationCenter;->FilePreparingFailed:I

    move/from16 v0, p1

    if-ne v0, v4, :cond_431

    .line 399
    const/4 v4, 0x0

    aget-object v28, p2, v4

    check-cast v28, Lorg/telegram/messenger/MessageObject;

    .line 400
    .restart local v28    # "messageObject":Lorg/telegram/messenger/MessageObject;
    invoke-virtual/range {v28 .. v28}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    if-eqz v4, :cond_1d6

    .line 403
    const/4 v4, 0x1

    aget-object v20, p2, v4

    check-cast v20, Ljava/lang/String;

    .line 404
    .restart local v20    # "finalPath":Ljava/lang/String;
    move-object/from16 v0, v28

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/SendMessagesHelper;->stopVideoService(Ljava/lang/String;)V

    .line 406
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper;->delayedMessages:Ljava/util/HashMap;

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/ArrayList;

    .line 407
    .restart local v16    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;>;"
    if-eqz v16, :cond_1d6

    .line 408
    const/4 v15, 0x0

    .restart local v15    # "a":I
    :goto_3c2
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v15, v4, :cond_420

    .line 409
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;

    .line 410
    .restart local v27    # "message":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    move-object/from16 v0, v27

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v0, v28

    if-ne v4, v0, :cond_41d

    .line 411
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    move-object/from16 v0, v27

    iget-object v5, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    iget-object v5, v5, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/MessagesStorage;->markMessageAsSendError(Lorg/telegram/tgnet/TLRPC$Message;)V

    .line 412
    move-object/from16 v0, v27

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    iget-object v4, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    const/4 v5, 0x2

    iput v5, v4, Lorg/telegram/tgnet/TLRPC$Message;->send_state:I

    .line 413
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 414
    add-int/lit8 v15, v15, -0x1

    .line 415
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/NotificationCenter;->messageSendError:I

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    move-object/from16 v0, v27

    iget-object v9, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v9}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v7

    invoke-virtual {v4, v5, v6}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 416
    move-object/from16 v0, v27

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/SendMessagesHelper;->processSentMessage(I)V

    .line 408
    :cond_41d
    add-int/lit8 v15, v15, 0x1

    goto :goto_3c2

    .line 419
    .end local v27    # "message":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    :cond_420
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1d6

    .line 420
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper;->delayedMessages:Ljava/util/HashMap;

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1d6

    .line 423
    .end local v15    # "a":I
    .end local v16    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;>;"
    .end local v20    # "finalPath":Ljava/lang/String;
    .end local v28    # "messageObject":Lorg/telegram/messenger/MessageObject;
    :cond_431
    sget v4, Lorg/telegram/messenger/NotificationCenter;->httpFileDidLoaded:I

    move/from16 v0, p1

    if-ne v0, v4, :cond_4fd

    .line 424
    const/4 v4, 0x0

    aget-object v30, p2, v4

    check-cast v30, Ljava/lang/String;

    .line 425
    .local v30, "path":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper;->delayedMessages:Ljava/util/HashMap;

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/ArrayList;

    .line 426
    .restart local v16    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;>;"
    if-eqz v16, :cond_1d6

    .line 427
    const/4 v15, 0x0

    .restart local v15    # "a":I
    :goto_44b
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v15, v4, :cond_4f2

    .line 428
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;

    .line 429
    .restart local v27    # "message":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    move-object/from16 v0, v27

    iget v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->type:I

    if-nez v4, :cond_4ad

    .line 430
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    iget-object v5, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->httpLocation:Ljava/lang/String;

    invoke-static {v5}, Lorg/telegram/messenger/Utilities;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v27

    iget-object v5, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->httpLocation:Ljava/lang/String;

    const-string v6, "file"

    invoke-static {v5, v6}, Lorg/telegram/messenger/ImageLoader;->getHttpUrlExtension(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    .line 431
    .local v25, "md5":Ljava/lang/String;
    new-instance v17, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v4

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-direct {v0, v4, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 432
    .local v17, "cacheFile":Ljava/io/File;
    sget-object v4, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v5, Lorg/telegram/messenger/SendMessagesHelper$2;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v27

    invoke-direct {v5, v0, v1, v2}, Lorg/telegram/messenger/SendMessagesHelper$2;-><init>(Lorg/telegram/messenger/SendMessagesHelper;Ljava/io/File;Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;)V

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 427
    .end local v17    # "cacheFile":Ljava/io/File;
    .end local v25    # "md5":Ljava/lang/String;
    :cond_4aa
    :goto_4aa
    add-int/lit8 v15, v15, 0x1

    goto :goto_44b

    .line 460
    :cond_4ad
    move-object/from16 v0, v27

    iget v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->type:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_4aa

    .line 461
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    iget-object v5, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->httpLocation:Ljava/lang/String;

    invoke-static {v5}, Lorg/telegram/messenger/Utilities;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".gif"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    .line 462
    .restart local v25    # "md5":Ljava/lang/String;
    new-instance v17, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v4

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-direct {v0, v4, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 463
    .restart local v17    # "cacheFile":Ljava/io/File;
    sget-object v4, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v5, Lorg/telegram/messenger/SendMessagesHelper$3;

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v17

    invoke-direct {v5, v0, v1, v2}, Lorg/telegram/messenger/SendMessagesHelper$3;-><init>(Lorg/telegram/messenger/SendMessagesHelper;Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;Ljava/io/File;)V

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_4aa

    .line 499
    .end local v17    # "cacheFile":Ljava/io/File;
    .end local v25    # "md5":Ljava/lang/String;
    .end local v27    # "message":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    :cond_4f2
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper;->delayedMessages:Ljava/util/HashMap;

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1d6

    .line 501
    .end local v15    # "a":I
    .end local v16    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;>;"
    .end local v30    # "path":Ljava/lang/String;
    :cond_4fd
    sget v4, Lorg/telegram/messenger/NotificationCenter;->FileDidLoaded:I

    move/from16 v0, p1

    if-ne v0, v4, :cond_538

    .line 502
    const/4 v4, 0x0

    aget-object v30, p2, v4

    check-cast v30, Ljava/lang/String;

    .line 503
    .restart local v30    # "path":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper;->delayedMessages:Ljava/util/HashMap;

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/ArrayList;

    .line 504
    .restart local v16    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;>;"
    if-eqz v16, :cond_1d6

    .line 505
    const/4 v15, 0x0

    .restart local v15    # "a":I
    :goto_517
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v15, v4, :cond_52d

    .line 506
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lorg/telegram/messenger/SendMessagesHelper;->performSendDelayedMessage(Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;)V

    .line 505
    add-int/lit8 v15, v15, 0x1

    goto :goto_517

    .line 508
    :cond_52d
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper;->delayedMessages:Ljava/util/HashMap;

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1d6

    .line 510
    .end local v15    # "a":I
    .end local v16    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;>;"
    .end local v30    # "path":Ljava/lang/String;
    :cond_538
    sget v4, Lorg/telegram/messenger/NotificationCenter;->httpFileDidFailedLoad:I

    move/from16 v0, p1

    if-eq v0, v4, :cond_544

    sget v4, Lorg/telegram/messenger/NotificationCenter;->FileDidFailedLoad:I

    move/from16 v0, p1

    if-ne v0, v4, :cond_1d6

    .line 511
    :cond_544
    const/4 v4, 0x0

    aget-object v30, p2, v4

    check-cast v30, Ljava/lang/String;

    .line 513
    .restart local v30    # "path":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper;->delayedMessages:Ljava/util/HashMap;

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/ArrayList;

    .line 514
    .restart local v16    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;>;"
    if-eqz v16, :cond_1d6

    .line 515
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_55b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5a6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;

    .line 516
    .restart local v27    # "message":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v5

    move-object/from16 v0, v27

    iget-object v6, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    iget-object v6, v6, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/MessagesStorage;->markMessageAsSendError(Lorg/telegram/tgnet/TLRPC$Message;)V

    .line 517
    move-object/from16 v0, v27

    iget-object v5, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    iget-object v5, v5, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    const/4 v6, 0x2

    iput v6, v5, Lorg/telegram/tgnet/TLRPC$Message;->send_state:I

    .line 518
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v5

    sget v6, Lorg/telegram/messenger/NotificationCenter;->messageSendError:I

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    move-object/from16 v0, v27

    iget-object v11, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v11}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v7, v9

    invoke-virtual {v5, v6, v7}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 519
    move-object/from16 v0, v27

    iget-object v5, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/telegram/messenger/SendMessagesHelper;->processSentMessage(I)V

    goto :goto_55b

    .line 521
    .end local v27    # "message":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    :cond_5a6
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper;->delayedMessages:Ljava/util/HashMap;

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1d6
.end method

.method public editMessage(Lorg/telegram/messenger/MessageObject;Ljava/lang/String;ZLorg/telegram/ui/ActionBar/BaseFragment;Ljava/util/ArrayList;Ljava/lang/Runnable;)I
    .registers 11
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "searchLinks"    # Z
    .param p4, "fragment"    # Lorg/telegram/ui/ActionBar/BaseFragment;
    .param p6, "callback"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/MessageObject;",
            "Ljava/lang/String;",
            "Z",
            "Lorg/telegram/ui/ActionBar/BaseFragment;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$MessageEntity;",
            ">;",
            "Ljava/lang/Runnable;",
            ")I"
        }
    .end annotation

    .prologue
    .local p5, "entities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$MessageEntity;>;"
    const/4 v1, 0x0

    .line 995
    if-eqz p4, :cond_b

    invoke-virtual {p4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_b

    if-nez p6, :cond_c

    .line 1009
    :cond_b
    :goto_b
    return v1

    .line 999
    :cond_c
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;-><init>()V

    .line 1000
    .local v0, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInputPeer(I)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 1001
    iput-object p2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;->message:Ljava/lang/String;

    .line 1002
    iget v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;->flags:I

    or-int/lit16 v2, v2, 0x800

    iput v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;->flags:I

    .line 1003
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v2

    iput v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;->id:I

    .line 1004
    if-nez p3, :cond_2d

    const/4 v1, 0x1

    :cond_2d
    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;->no_webpage:Z

    .line 1005
    if-eqz p5, :cond_39

    .line 1006
    iput-object p5, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;->entities:Ljava/util/ArrayList;

    .line 1007
    iget v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;->flags:I

    or-int/lit8 v1, v1, 0x8

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;->flags:I

    .line 1009
    :cond_39
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/SendMessagesHelper$5;

    invoke-direct {v2, p0, p6, p4, v0}, Lorg/telegram/messenger/SendMessagesHelper$5;-><init>(Lorg/telegram/messenger/SendMessagesHelper;Ljava/lang/Runnable;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result v1

    goto :goto_b
.end method

.method public generatePhotoSizes(Ljava/lang/String;Landroid/net/Uri;)Lorg/telegram/tgnet/TLRPC$TL_photo;
    .registers 14
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "imageUri"    # Landroid/net/Uri;

    .prologue
    const/16 v5, 0x65

    const/4 v4, 0x0

    const/high16 v10, 0x44480000    # 800.0f

    const/high16 v6, 0x42b40000    # 90.0f

    const/4 v3, 0x1

    .line 3635
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I

    move-result v1

    int-to-float v1, v1

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I

    move-result v2

    int-to-float v2, v2

    invoke-static {p1, p2, v1, v2, v3}, Lorg/telegram/messenger/ImageLoader;->loadBitmap(Ljava/lang/String;Landroid/net/Uri;FFZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 3636
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_24

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I

    move-result v1

    const/16 v2, 0x320

    if-eq v1, v2, :cond_24

    .line 3637
    invoke-static {p1, p2, v10, v10, v3}, Lorg/telegram/messenger/ImageLoader;->loadBitmap(Ljava/lang/String;Landroid/net/Uri;FFZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 3639
    :cond_24
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 3640
    .local v9, "sizes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$PhotoSize;>;"
    const/16 v1, 0x37

    invoke-static {v0, v6, v6, v1, v3}, Lorg/telegram/messenger/ImageLoader;->scaleAndSaveImage(Landroid/graphics/Bitmap;FFIZ)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v8

    .line 3641
    .local v8, "size":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    if-eqz v8, :cond_34

    .line 3642
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3644
    :cond_34
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I

    move-result v1

    int-to-float v1, v1

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I

    move-result v2

    int-to-float v2, v2

    const/16 v3, 0x50

    move v6, v5

    invoke-static/range {v0 .. v6}, Lorg/telegram/messenger/ImageLoader;->scaleAndSaveImage(Landroid/graphics/Bitmap;FFIZII)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v8

    .line 3645
    if-eqz v8, :cond_4a

    .line 3646
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3648
    :cond_4a
    if-eqz v0, :cond_4f

    .line 3649
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 3651
    :cond_4f
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_57

    .line 3652
    const/4 v7, 0x0

    .line 3658
    :goto_56
    return-object v7

    .line 3654
    :cond_57
    invoke-static {v4}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 3655
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_photo;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_photo;-><init>()V

    .line 3656
    .local v7, "photo":Lorg/telegram/tgnet/TLRPC$TL_photo;
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v1

    iput v1, v7, Lorg/telegram/tgnet/TLRPC$TL_photo;->date:I

    .line 3657
    iput-object v9, v7, Lorg/telegram/tgnet/TLRPC$TL_photo;->sizes:Ljava/util/ArrayList;

    goto :goto_56
.end method

.method protected getDelayedMessages(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 3
    .param p1, "location"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3603
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper;->delayedMessages:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method protected getNextRandomId()J
    .registers 5

    .prologue
    .line 3607
    const-wide/16 v0, 0x0

    .line 3608
    .local v0, "val":J
    :goto_2
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_f

    .line 3609
    sget-object v2, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-virtual {v2}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v0

    goto :goto_2

    .line 3611
    :cond_f
    return-wide v0
.end method

.method public isSendingCallback(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$KeyboardButton;)Z
    .registers 9
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;
    .param p2, "button"    # Lorg/telegram/tgnet/TLRPC$KeyboardButton;

    .prologue
    .line 1189
    if-eqz p1, :cond_4

    if-nez p2, :cond_6

    .line 1190
    :cond_4
    const/4 v2, 0x0

    .line 1201
    :goto_5
    return v2

    .line 1193
    :cond_6
    instance-of v2, p2, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonGame;

    if-eqz v2, :cond_4b

    .line 1194
    const/4 v1, 0x1

    .line 1200
    .local v1, "type":I
    :goto_b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p2, Lorg/telegram/tgnet/TLRPC$KeyboardButton;->data:[B

    invoke-static {v3}, Lorg/telegram/messenger/Utilities;->bytesToHex([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1201
    .local v0, "key":Ljava/lang/String;
    iget-object v2, p0, Lorg/telegram/messenger/SendMessagesHelper;->waitingForCallback:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_5

    .line 1195
    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "type":I
    :cond_4b
    instance-of v2, p2, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonBuy;

    if-eqz v2, :cond_51

    .line 1196
    const/4 v1, 0x2

    .restart local v1    # "type":I
    goto :goto_b

    .line 1198
    .end local v1    # "type":I
    :cond_51
    const/4 v1, 0x0

    .restart local v1    # "type":I
    goto :goto_b
.end method

.method public isSendingCurrentLocation(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$KeyboardButton;)Z
    .registers 7
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;
    .param p2, "button"    # Lorg/telegram/tgnet/TLRPC$KeyboardButton;

    .prologue
    .line 1053
    if-eqz p1, :cond_4

    if-nez p2, :cond_6

    .line 1054
    :cond_4
    const/4 v1, 0x0

    .line 1057
    :goto_5
    return v1

    .line 1056
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lorg/telegram/tgnet/TLRPC$KeyboardButton;->data:[B

    invoke-static {v2}, Lorg/telegram/messenger/Utilities;->bytesToHex([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    instance-of v1, p2, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonGame;

    if-eqz v1, :cond_4c

    const-string v1, "1"

    :goto_3d
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1057
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lorg/telegram/messenger/SendMessagesHelper;->waitingForLocation:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_5

    .line 1056
    .end local v0    # "key":Ljava/lang/String;
    :cond_4c
    const-string v1, "0"

    goto :goto_3d
.end method

.method public isSendingMessage(I)Z
    .registers 4
    .param p1, "mid"    # I

    .prologue
    .line 3285
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper;->sendingMessages:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public processForwardFromMyName(Lorg/telegram/messenger/MessageObject;J)V
    .registers 22
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;
    .param p2, "did"    # J

    .prologue
    .line 621
    if-nez p1, :cond_3

    .line 654
    :cond_2
    :goto_2
    return-void

    .line 624
    :cond_3
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v4, :cond_10e

    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;

    if-nez v4, :cond_10e

    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;

    if-nez v4, :cond_10e

    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGame;

    if-nez v4, :cond_10e

    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaInvoice;

    if-nez v4, :cond_10e

    .line 625
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_photo;

    if-eqz v4, :cond_58

    .line 626
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v6, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    check-cast v6, Lorg/telegram/tgnet/TLRPC$TL_photo;

    const/4 v7, 0x0

    move-object/from16 v0, p1

    iget-object v10, v0, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v5, p0

    move-wide/from16 v8, p2

    invoke-virtual/range {v5 .. v12}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Lorg/telegram/tgnet/TLRPC$TL_photo;Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;)V

    goto :goto_2

    .line 627
    :cond_58
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_document;

    if-eqz v4, :cond_83

    .line 628
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    check-cast v5, Lorg/telegram/tgnet/TLRPC$TL_document;

    const/4 v6, 0x0

    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v7, v4, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v10, v0, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v4, p0

    move-wide/from16 v8, p2

    invoke-virtual/range {v4 .. v12}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Lorg/telegram/tgnet/TLRPC$TL_document;Lorg/telegram/messenger/VideoEditedInfo;Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;)V

    goto :goto_2

    .line 629
    :cond_83
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;

    if-nez v4, :cond_97

    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeo;

    if-eqz v4, :cond_ac

    .line 630
    :cond_97
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v0, p1

    iget-object v8, v0, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v4, p0

    move-wide/from16 v6, p2

    invoke-virtual/range {v4 .. v10}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Lorg/telegram/tgnet/TLRPC$MessageMedia;JLorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;)V

    goto/16 :goto_2

    .line 631
    :cond_ac
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->phone_number:Ljava/lang/String;

    if-eqz v4, :cond_f2

    .line 632
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_userContact_old2;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_userContact_old2;-><init>()V

    .line 633
    .local v5, "user":Lorg/telegram/tgnet/TLRPC$User;
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->phone_number:Ljava/lang/String;

    iput-object v4, v5, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    .line 634
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->first_name:Ljava/lang/String;

    iput-object v4, v5, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    .line 635
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->last_name:Ljava/lang/String;

    iput-object v4, v5, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    .line 636
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->user_id:I

    iput v4, v5, Lorg/telegram/tgnet/TLRPC$User;->id:I

    .line 637
    move-object/from16 v0, p1

    iget-object v8, v0, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v4, p0

    move-wide/from16 v6, p2

    invoke-virtual/range {v4 .. v10}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Lorg/telegram/tgnet/TLRPC$User;JLorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;)V

    goto/16 :goto_2

    .line 638
    .end local v5    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_f2
    move-wide/from16 v0, p2

    long-to-int v4, v0

    if-eqz v4, :cond_2

    .line 639
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 640
    .local v16, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 641
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-wide/from16 v2, p2

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Ljava/util/ArrayList;J)V

    goto/16 :goto_2

    .line 643
    .end local v16    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    :cond_10e
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    if-eqz v4, :cond_145

    .line 644
    const/4 v11, 0x0

    .line 645
    .local v11, "webPage":Lorg/telegram/tgnet/TLRPC$WebPage;
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;

    if-eqz v4, :cond_129

    .line 646
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v11, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    .line 648
    :cond_129
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v7, v4, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v10, v0, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    const/4 v12, 0x1

    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v13, v4, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v6, p0

    move-wide/from16 v8, p2

    invoke-virtual/range {v6 .. v15}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$WebPage;ZLjava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;)V

    goto/16 :goto_2

    .line 649
    .end local v11    # "webPage":Lorg/telegram/tgnet/TLRPC$WebPage;
    :cond_145
    move-wide/from16 v0, p2

    long-to-int v4, v0

    if-eqz v4, :cond_2

    .line 650
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 651
    .restart local v16    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 652
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-wide/from16 v2, p2

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Ljava/util/ArrayList;J)V

    goto/16 :goto_2
.end method

.method protected processSentMessage(I)V
    .registers 5
    .param p1, "id"    # I

    .prologue
    .line 613
    iget-object v1, p0, Lorg/telegram/messenger/SendMessagesHelper;->unsentMessages:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v0

    .line 614
    .local v0, "prevSize":I
    iget-object v1, p0, Lorg/telegram/messenger/SendMessagesHelper;->unsentMessages:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 615
    if-eqz v0, :cond_1c

    iget-object v1, p0, Lorg/telegram/messenger/SendMessagesHelper;->unsentMessages:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-nez v1, :cond_1c

    .line 616
    invoke-virtual {p0}, Lorg/telegram/messenger/SendMessagesHelper;->checkUnsentMessages()V

    .line 618
    :cond_1c
    return-void
.end method

.method protected processUnsentMessages(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$Message;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$User;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$Chat;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$EncryptedChat;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3619
    .local p1, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    .local p2, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$User;>;"
    .local p3, "chats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Chat;>;"
    .local p4, "encryptedChats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$EncryptedChat;>;"
    new-instance v0, Lorg/telegram/messenger/SendMessagesHelper$11;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/SendMessagesHelper$11;-><init>(Lorg/telegram/messenger/SendMessagesHelper;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 3632
    return-void
.end method

.method protected putToSendingMessages(Lorg/telegram/tgnet/TLRPC$Message;)V
    .registers 4
    .param p1, "message"    # Lorg/telegram/tgnet/TLRPC$Message;

    .prologue
    .line 3277
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper;->sendingMessages:Ljava/util/HashMap;

    iget v1, p1, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3278
    return-void
.end method

.method protected removeFromSendingMessages(I)V
    .registers 4
    .param p1, "mid"    # I

    .prologue
    .line 3281
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper;->sendingMessages:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3282
    return-void
.end method

.method public retrySendMessage(Lorg/telegram/messenger/MessageObject;Z)Z
    .registers 13
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;
    .param p2, "unsent"    # Z

    .prologue
    const-wide/16 v8, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 560
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    if-ltz v4, :cond_c

    .line 609
    :goto_b
    return v2

    .line 563
    :cond_c
    iget-object v4, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_messageEncryptedAction;

    if-eqz v4, :cond_15b

    .line 564
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v4

    const/16 v6, 0x20

    shr-long/2addr v4, v6

    long-to-int v0, v4

    .line 565
    .local v0, "enc_id":I
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/MessagesController;->getEncryptedChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-result-object v1

    .line 566
    .local v1, "encryptedChat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    if-nez v1, :cond_55

    .line 567
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    iget-object v5, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/MessagesStorage;->markMessageAsSendError(Lorg/telegram/tgnet/TLRPC$Message;)V

    .line 568
    iget-object v4, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    const/4 v5, 0x2

    iput v5, v4, Lorg/telegram/tgnet/TLRPC$Message;->send_state:I

    .line 569
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/NotificationCenter;->messageSendError:I

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v2

    invoke-virtual {v4, v5, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 570
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v3

    invoke-virtual {p0, v3}, Lorg/telegram/messenger/SendMessagesHelper;->processSentMessage(I)V

    goto :goto_b

    .line 573
    :cond_55
    iget-object v2, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v4, v2, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    cmp-long v2, v4, v8

    if-nez v2, :cond_65

    .line 574
    iget-object v2, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {p0}, Lorg/telegram/messenger/SendMessagesHelper;->getNextRandomId()J

    move-result-wide v4

    iput-wide v4, v2, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    .line 576
    :cond_65
    iget-object v2, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageAction;->encryptedAction:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionSetMessageTTL;

    if-eqz v2, :cond_7a

    .line 577
    invoke-static {}, Lorg/telegram/messenger/SecretChatHelper;->getInstance()Lorg/telegram/messenger/SecretChatHelper;

    move-result-object v2

    iget-object v4, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v2, v1, v4}, Lorg/telegram/messenger/SecretChatHelper;->sendTTLMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$Message;)V

    :cond_78
    :goto_78
    move v2, v3

    .line 603
    goto :goto_b

    .line 578
    :cond_7a
    iget-object v2, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageAction;->encryptedAction:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionDeleteMessages;

    if-eqz v2, :cond_8e

    .line 579
    invoke-static {}, Lorg/telegram/messenger/SecretChatHelper;->getInstance()Lorg/telegram/messenger/SecretChatHelper;

    move-result-object v2

    iget-object v4, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v2, v1, v7, v4}, Lorg/telegram/messenger/SecretChatHelper;->sendMessagesDeleteMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$Message;)V

    goto :goto_78

    .line 580
    :cond_8e
    iget-object v2, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageAction;->encryptedAction:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionFlushHistory;

    if-eqz v2, :cond_a2

    .line 581
    invoke-static {}, Lorg/telegram/messenger/SecretChatHelper;->getInstance()Lorg/telegram/messenger/SecretChatHelper;

    move-result-object v2

    iget-object v4, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v2, v1, v4}, Lorg/telegram/messenger/SecretChatHelper;->sendClearHistoryMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$Message;)V

    goto :goto_78

    .line 582
    :cond_a2
    iget-object v2, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageAction;->encryptedAction:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionNotifyLayer;

    if-eqz v2, :cond_b6

    .line 583
    invoke-static {}, Lorg/telegram/messenger/SecretChatHelper;->getInstance()Lorg/telegram/messenger/SecretChatHelper;

    move-result-object v2

    iget-object v4, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v2, v1, v4}, Lorg/telegram/messenger/SecretChatHelper;->sendNotifyLayerMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$Message;)V

    goto :goto_78

    .line 584
    :cond_b6
    iget-object v2, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageAction;->encryptedAction:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionReadMessages;

    if-eqz v2, :cond_ca

    .line 585
    invoke-static {}, Lorg/telegram/messenger/SecretChatHelper;->getInstance()Lorg/telegram/messenger/SecretChatHelper;

    move-result-object v2

    iget-object v4, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v2, v1, v7, v4}, Lorg/telegram/messenger/SecretChatHelper;->sendMessagesReadMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$Message;)V

    goto :goto_78

    .line 586
    :cond_ca
    iget-object v2, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageAction;->encryptedAction:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionScreenshotMessages;

    if-eqz v2, :cond_de

    .line 587
    invoke-static {}, Lorg/telegram/messenger/SecretChatHelper;->getInstance()Lorg/telegram/messenger/SecretChatHelper;

    move-result-object v2

    iget-object v4, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v2, v1, v7, v4}, Lorg/telegram/messenger/SecretChatHelper;->sendScreenshotMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$Message;)V

    goto :goto_78

    .line 588
    :cond_de
    iget-object v2, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageAction;->encryptedAction:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionTyping;

    if-nez v2, :cond_78

    .line 590
    iget-object v2, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageAction;->encryptedAction:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionResend;

    if-nez v2, :cond_78

    .line 592
    iget-object v2, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageAction;->encryptedAction:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionCommitKey;

    if-eqz v2, :cond_107

    .line 593
    invoke-static {}, Lorg/telegram/messenger/SecretChatHelper;->getInstance()Lorg/telegram/messenger/SecretChatHelper;

    move-result-object v2

    iget-object v4, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v2, v1, v4}, Lorg/telegram/messenger/SecretChatHelper;->sendCommitKeyMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$Message;)V

    goto/16 :goto_78

    .line 594
    :cond_107
    iget-object v2, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageAction;->encryptedAction:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionAbortKey;

    if-eqz v2, :cond_11c

    .line 595
    invoke-static {}, Lorg/telegram/messenger/SecretChatHelper;->getInstance()Lorg/telegram/messenger/SecretChatHelper;

    move-result-object v2

    iget-object v4, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v2, v1, v4, v8, v9}, Lorg/telegram/messenger/SecretChatHelper;->sendAbortKeyMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$Message;J)V

    goto/16 :goto_78

    .line 596
    :cond_11c
    iget-object v2, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageAction;->encryptedAction:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionRequestKey;

    if-eqz v2, :cond_131

    .line 597
    invoke-static {}, Lorg/telegram/messenger/SecretChatHelper;->getInstance()Lorg/telegram/messenger/SecretChatHelper;

    move-result-object v2

    iget-object v4, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v2, v1, v4}, Lorg/telegram/messenger/SecretChatHelper;->sendRequestKeyMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$Message;)V

    goto/16 :goto_78

    .line 598
    :cond_131
    iget-object v2, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageAction;->encryptedAction:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionAcceptKey;

    if-eqz v2, :cond_146

    .line 599
    invoke-static {}, Lorg/telegram/messenger/SecretChatHelper;->getInstance()Lorg/telegram/messenger/SecretChatHelper;

    move-result-object v2

    iget-object v4, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v2, v1, v4}, Lorg/telegram/messenger/SecretChatHelper;->sendAcceptKeyMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$Message;)V

    goto/16 :goto_78

    .line 600
    :cond_146
    iget-object v2, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageAction;->encryptedAction:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionNoop;

    if-eqz v2, :cond_78

    .line 601
    invoke-static {}, Lorg/telegram/messenger/SecretChatHelper;->getInstance()Lorg/telegram/messenger/SecretChatHelper;

    move-result-object v2

    iget-object v4, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v2, v1, v4}, Lorg/telegram/messenger/SecretChatHelper;->sendNoopMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$Message;)V

    goto/16 :goto_78

    .line 605
    .end local v0    # "enc_id":I
    .end local v1    # "encryptedChat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    :cond_15b
    if-eqz p2, :cond_16a

    .line 606
    iget-object v2, p0, Lorg/telegram/messenger/SendMessagesHelper;->unsentMessages:Ljava/util/HashMap;

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 608
    :cond_16a
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Lorg/telegram/messenger/MessageObject;)V

    move v2, v3

    .line 609
    goto/16 :goto_b
.end method

.method public sendCallback(ZLorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$KeyboardButton;Lorg/telegram/ui/ChatActivity;)V
    .registers 15
    .param p1, "cache"    # Z
    .param p2, "messageObject"    # Lorg/telegram/messenger/MessageObject;
    .param p3, "button"    # Lorg/telegram/tgnet/TLRPC$KeyboardButton;
    .param p4, "parentFragment"    # Lorg/telegram/ui/ChatActivity;

    .prologue
    const/4 v9, 0x2

    .line 1061
    if-eqz p2, :cond_7

    if-eqz p3, :cond_7

    if-nez p4, :cond_8

    .line 1186
    :cond_7
    :goto_7
    return-void

    .line 1066
    :cond_8
    instance-of v1, p3, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonGame;

    if-eqz v1, :cond_5f

    .line 1067
    const/4 v3, 0x0

    .line 1068
    .local v3, "cacheFinal":Z
    const/4 v8, 0x1

    .line 1077
    .local v8, "type":I
    :goto_e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "_"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "_"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p3, Lorg/telegram/tgnet/TLRPC$KeyboardButton;->data:[B

    invoke-static {v4}, Lorg/telegram/messenger/Utilities;->bytesToHex([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "_"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1078
    .local v2, "key":Ljava/lang/String;
    iget-object v1, p0, Lorg/telegram/messenger/SendMessagesHelper;->waitingForCallback:Ljava/util/HashMap;

    invoke-virtual {v1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1080
    new-instance v0, Lorg/telegram/messenger/SendMessagesHelper$6;

    move-object v1, p0

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lorg/telegram/messenger/SendMessagesHelper$6;-><init>(Lorg/telegram/messenger/SendMessagesHelper;Ljava/lang/String;ZLorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$KeyboardButton;Lorg/telegram/ui/ChatActivity;)V

    .line 1161
    .local v0, "requestDelegate":Lorg/telegram/tgnet/RequestDelegate;
    if-eqz v3, :cond_68

    .line 1162
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    invoke-virtual {v1, v2, v0}, Lorg/telegram/messenger/MessagesStorage;->getBotCache(Ljava/lang/String;Lorg/telegram/tgnet/RequestDelegate;)V

    goto :goto_7

    .line 1070
    .end local v0    # "requestDelegate":Lorg/telegram/tgnet/RequestDelegate;
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "cacheFinal":Z
    .end local v8    # "type":I
    :cond_5f
    move v3, p1

    .line 1071
    .restart local v3    # "cacheFinal":Z
    instance-of v1, p3, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonBuy;

    if-eqz v1, :cond_66

    .line 1072
    const/4 v8, 0x2

    .restart local v8    # "type":I
    goto :goto_e

    .line 1074
    .end local v8    # "type":I
    :cond_66
    const/4 v8, 0x0

    .restart local v8    # "type":I
    goto :goto_e

    .line 1164
    .restart local v0    # "requestDelegate":Lorg/telegram/tgnet/RequestDelegate;
    .restart local v2    # "key":Ljava/lang/String;
    :cond_68
    instance-of v1, p3, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonBuy;

    if-eqz v1, :cond_a0

    .line 1165
    iget-object v1, p2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->flags:I

    and-int/lit8 v1, v1, 0x4

    if-nez v1, :cond_8a

    .line 1166
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_payments_getPaymentForm;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_payments_getPaymentForm;-><init>()V

    .line 1167
    .local v7, "req":Lorg/telegram/tgnet/TLRPC$TL_payments_getPaymentForm;
    invoke-virtual {p2}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v1

    iput v1, v7, Lorg/telegram/tgnet/TLRPC$TL_payments_getPaymentForm;->msg_id:I

    .line 1168
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    invoke-virtual {v1, v7, v0, v9}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    goto/16 :goto_7

    .line 1170
    .end local v7    # "req":Lorg/telegram/tgnet/TLRPC$TL_payments_getPaymentForm;
    :cond_8a
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_payments_getPaymentReceipt;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_payments_getPaymentReceipt;-><init>()V

    .line 1171
    .local v7, "req":Lorg/telegram/tgnet/TLRPC$TL_payments_getPaymentReceipt;
    iget-object v1, p2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->receipt_msg_id:I

    iput v1, v7, Lorg/telegram/tgnet/TLRPC$TL_payments_getPaymentReceipt;->msg_id:I

    .line 1172
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    invoke-virtual {v1, v7, v0, v9}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    goto/16 :goto_7

    .line 1175
    .end local v7    # "req":Lorg/telegram/tgnet/TLRPC$TL_payments_getPaymentReceipt;
    :cond_a0
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_messages_getBotCallbackAnswer;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_messages_getBotCallbackAnswer;-><init>()V

    .line 1176
    .local v7, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_getBotCallbackAnswer;
    invoke-virtual {p2}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v4

    long-to-int v1, v4

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInputPeer(I)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v1

    iput-object v1, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_getBotCallbackAnswer;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 1177
    invoke-virtual {p2}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v1

    iput v1, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_getBotCallbackAnswer;->msg_id:I

    .line 1178
    instance-of v1, p3, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonGame;

    iput-boolean v1, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_getBotCallbackAnswer;->game:Z

    .line 1179
    iget-object v1, p3, Lorg/telegram/tgnet/TLRPC$KeyboardButton;->data:[B

    if-eqz v1, :cond_c8

    .line 1180
    iget v1, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_getBotCallbackAnswer;->flags:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_getBotCallbackAnswer;->flags:I

    .line 1181
    iget-object v1, p3, Lorg/telegram/tgnet/TLRPC$KeyboardButton;->data:[B

    iput-object v1, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_getBotCallbackAnswer;->data:[B

    .line 1183
    :cond_c8
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    invoke-virtual {v1, v7, v0, v9}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    goto/16 :goto_7
.end method

.method public sendCurrentLocation(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$KeyboardButton;)V
    .registers 7
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;
    .param p2, "button"    # Lorg/telegram/tgnet/TLRPC$KeyboardButton;

    .prologue
    .line 1044
    if-eqz p1, :cond_4

    if-nez p2, :cond_5

    .line 1050
    :cond_4
    :goto_4
    return-void

    .line 1047
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lorg/telegram/tgnet/TLRPC$KeyboardButton;->data:[B

    invoke-static {v2}, Lorg/telegram/messenger/Utilities;->bytesToHex([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    instance-of v1, p2, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonGame;

    if-eqz v1, :cond_4f

    const-string v1, "1"

    :goto_3c
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1048
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lorg/telegram/messenger/SendMessagesHelper;->waitingForLocation:Ljava/util/HashMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1049
    iget-object v1, p0, Lorg/telegram/messenger/SendMessagesHelper;->locationProvider:Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;

    invoke-virtual {v1}, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;->start()V

    goto :goto_4

    .line 1047
    .end local v0    # "key":Ljava/lang/String;
    :cond_4f
    const-string v1, "0"

    goto :goto_3c
.end method

.method public sendGame(Lorg/telegram/tgnet/TLRPC$InputPeer;Lorg/telegram/tgnet/TLRPC$TL_inputMediaGame;JJ)V
    .registers 16
    .param p1, "peer"    # Lorg/telegram/tgnet/TLRPC$InputPeer;
    .param p2, "game"    # Lorg/telegram/tgnet/TLRPC$TL_inputMediaGame;
    .param p3, "random_id"    # J
    .param p5, "taskId"    # J

    .prologue
    .line 1205
    if-eqz p1, :cond_4

    if-nez p2, :cond_5

    .line 1242
    :cond_4
    :goto_4
    return-void

    .line 1208
    :cond_5
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;-><init>()V

    .line 1209
    .local v3, "request":Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;
    iput-object p1, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 1210
    iget-object v6, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    instance-of v6, v6, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChannel;

    if-eqz v6, :cond_37

    .line 1211
    sget-object v6, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v7, "Notifications"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "silent_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Lorg/telegram/tgnet/TLRPC$InputPeer;->channel_id:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->silent:Z

    .line 1213
    :cond_37
    const-wide/16 v6, 0x0

    cmp-long v6, p3, v6

    if-eqz v6, :cond_7e

    move-wide v6, p3

    :goto_3e
    iput-wide v6, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->random_id:J

    .line 1214
    iput-object p2, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->media:Lorg/telegram/tgnet/TLRPC$InputMedia;

    .line 1216
    const-wide/16 v6, 0x0

    cmp-long v6, p5, v6

    if-nez v6, :cond_88

    .line 1217
    const/4 v0, 0x0

    .line 1219
    .local v0, "data":Lorg/telegram/tgnet/NativeByteBuffer;
    :try_start_49
    new-instance v1, Lorg/telegram/tgnet/NativeByteBuffer;

    invoke-virtual {p1}, Lorg/telegram/tgnet/TLRPC$InputPeer;->getObjectSize()I

    move-result v6

    invoke-virtual {p2}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaGame;->getObjectSize()I

    move-result v7

    add-int/2addr v6, v7

    add-int/lit8 v6, v6, 0x4

    add-int/lit8 v6, v6, 0x8

    invoke-direct {v1, v6}, Lorg/telegram/tgnet/NativeByteBuffer;-><init>(I)V
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_5b} :catch_83

    .line 1220
    .end local v0    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .local v1, "data":Lorg/telegram/tgnet/NativeByteBuffer;
    const/4 v6, 0x3

    :try_start_5c
    invoke-virtual {v1, v6}, Lorg/telegram/tgnet/NativeByteBuffer;->writeInt32(I)V

    .line 1221
    invoke-virtual {v1, p3, p4}, Lorg/telegram/tgnet/NativeByteBuffer;->writeInt64(J)V

    .line 1222
    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/TLRPC$InputPeer;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 1223
    invoke-virtual {p2, v1}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaGame;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_68} :catch_8a

    move-object v0, v1

    .line 1227
    .end local v1    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .restart local v0    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    :goto_69
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v6

    invoke-virtual {v6, v0}, Lorg/telegram/messenger/MessagesStorage;->createPendingTask(Lorg/telegram/tgnet/NativeByteBuffer;)J

    move-result-wide v4

    .line 1231
    .end local v0    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .local v4, "newTaskId":J
    :goto_71
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v6

    new-instance v7, Lorg/telegram/messenger/SendMessagesHelper$7;

    invoke-direct {v7, p0, v4, v5}, Lorg/telegram/messenger/SendMessagesHelper$7;-><init>(Lorg/telegram/messenger/SendMessagesHelper;J)V

    invoke-virtual {v6, v3, v7}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_4

    .line 1213
    .end local v4    # "newTaskId":J
    :cond_7e
    invoke-virtual {p0}, Lorg/telegram/messenger/SendMessagesHelper;->getNextRandomId()J

    move-result-wide v6

    goto :goto_3e

    .line 1224
    .restart local v0    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    :catch_83
    move-exception v2

    .line 1225
    .local v2, "e":Ljava/lang/Exception;
    :goto_84
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_69

    .line 1229
    .end local v0    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_88
    move-wide v4, p5

    .restart local v4    # "newTaskId":J
    goto :goto_71

    .line 1224
    .end local v4    # "newTaskId":J
    .restart local v1    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    :catch_8a
    move-exception v2

    move-object v0, v1

    .end local v1    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .restart local v0    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    goto :goto_84
.end method

.method public sendMessage(Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$WebPage;ZLjava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;)V
    .registers 28
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "peer"    # J
    .param p4, "reply_to_msg"    # Lorg/telegram/messenger/MessageObject;
    .param p5, "webPage"    # Lorg/telegram/tgnet/TLRPC$WebPage;
    .param p6, "searchLinks"    # Z
    .param p8, "replyMarkup"    # Lorg/telegram/tgnet/TLRPC$ReplyMarkup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Lorg/telegram/messenger/MessageObject;",
            "Lorg/telegram/tgnet/TLRPC$WebPage;",
            "Z",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$MessageEntity;",
            ">;",
            "Lorg/telegram/tgnet/TLRPC$ReplyMarkup;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1257
    .local p7, "entities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$MessageEntity;>;"
    .local p9, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v8, p2

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    move/from16 v13, p6

    move-object/from16 v15, p7

    move-object/from16 v16, p8

    move-object/from16 v17, p9

    invoke-direct/range {v0 .. v17}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$MessageMedia;Lorg/telegram/tgnet/TLRPC$TL_photo;Lorg/telegram/messenger/VideoEditedInfo;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$TL_document;Lorg/telegram/tgnet/TLRPC$TL_game;JLjava/lang/String;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$WebPage;ZLorg/telegram/messenger/MessageObject;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;)V

    .line 1258
    return-void
.end method

.method public sendMessage(Ljava/util/ArrayList;J)V
    .registers 40
    .param p2, "peer"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 708
    .local p1, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    if-eqz p1, :cond_8

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 992
    :cond_8
    return-void

    .line 711
    :cond_9
    move-wide/from16 v0, p2

    long-to-int v0, v0

    move/from16 v23, v0

    .line 712
    .local v23, "lower_id":I
    if-eqz v23, :cond_45f

    .line 713
    move-wide/from16 v0, p2

    long-to-int v4, v0

    invoke-static {v4}, Lorg/telegram/messenger/MessagesController;->getPeer(I)Lorg/telegram/tgnet/TLRPC$Peer;

    move-result-object v13

    .line 714
    .local v13, "to_id":Lorg/telegram/tgnet/TLRPC$Peer;
    const/16 v21, 0x0

    .line 715
    .local v21, "isMegagroup":Z
    const/16 v22, 0x0

    .line 716
    .local v22, "isSignature":Z
    if-lez v23, :cond_6d

    .line 717
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v32

    .line 718
    .local v32, "sendToUser":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v32, :cond_8

    .line 729
    .end local v32    # "sendToUser":Lorg/telegram/tgnet/TLRPC$User;
    :cond_2b
    :goto_2b
    new-instance v30, Ljava/util/ArrayList;

    invoke-direct/range {v30 .. v30}, Ljava/util/ArrayList;-><init>()V

    .line 730
    .local v30, "objArr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 731
    .local v16, "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    new-instance v31, Ljava/util/ArrayList;

    invoke-direct/range {v31 .. v31}, Ljava/util/ArrayList;-><init>()V

    .line 732
    .local v31, "randomIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 733
    .local v19, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v26, Ljava/util/HashMap;

    invoke-direct/range {v26 .. v26}, Ljava/util/HashMap;-><init>()V

    .line 734
    .local v26, "messagesByRandomIds":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lorg/telegram/tgnet/TLRPC$Message;>;"
    invoke-static/range {v23 .. v23}, Lorg/telegram/messenger/MessagesController;->getInputPeer(I)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v20

    .line 735
    .local v20, "inputPeer":Lorg/telegram/tgnet/TLRPC$InputPeer;
    const-wide/16 v24, 0x0

    .line 736
    .local v24, "lastDialogId":J
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v4

    int-to-long v4, v4

    cmp-long v4, p2, v4

    if-nez v4, :cond_8f

    const/16 v33, 0x1

    .line 737
    .local v33, "toMyself":Z
    :goto_55
    const/4 v15, 0x0

    .local v15, "a":I
    :goto_56
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v15, v4, :cond_8

    .line 738
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lorg/telegram/messenger/MessageObject;

    .line 739
    .local v27, "msgObj":Lorg/telegram/messenger/MessageObject;
    invoke-virtual/range {v27 .. v27}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    if-gtz v4, :cond_92

    .line 737
    :cond_6a
    :goto_6a
    add-int/lit8 v15, v15, 0x1

    goto :goto_56

    .line 722
    .end local v15    # "a":I
    .end local v16    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    .end local v19    # "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v20    # "inputPeer":Lorg/telegram/tgnet/TLRPC$InputPeer;
    .end local v24    # "lastDialogId":J
    .end local v26    # "messagesByRandomIds":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lorg/telegram/tgnet/TLRPC$Message;>;"
    .end local v27    # "msgObj":Lorg/telegram/messenger/MessageObject;
    .end local v30    # "objArr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .end local v31    # "randomIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v33    # "toMyself":Z
    :cond_6d
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    move/from16 v0, v23

    neg-int v5, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v17

    .line 723
    .local v17, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 724
    move-object/from16 v0, v17

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    move/from16 v21, v0

    .line 725
    move-object/from16 v0, v17

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->signatures:Z

    move/from16 v22, v0

    goto :goto_2b

    .line 736
    .end local v17    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    .restart local v16    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    .restart local v19    # "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v20    # "inputPeer":Lorg/telegram/tgnet/TLRPC$InputPeer;
    .restart local v24    # "lastDialogId":J
    .restart local v26    # "messagesByRandomIds":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lorg/telegram/tgnet/TLRPC$Message;>;"
    .restart local v30    # "objArr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .restart local v31    # "randomIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_8f
    const/16 v33, 0x0

    goto :goto_55

    .line 743
    .restart local v15    # "a":I
    .restart local v27    # "msgObj":Lorg/telegram/messenger/MessageObject;
    .restart local v33    # "toMyself":Z
    :cond_92
    new-instance v28, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct/range {v28 .. v28}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    .line 744
    .local v28, "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    invoke-virtual/range {v27 .. v27}, Lorg/telegram/messenger/MessageObject;->isForwarded()Z

    move-result v4

    if-eqz v4, :cond_38a

    .line 745
    move-object/from16 v0, v27

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    move-object/from16 v0, v28

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    .line 765
    :goto_a7
    move-object/from16 v0, v27

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v0, v28

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 766
    const/4 v4, 0x4

    move-object/from16 v0, v28

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    .line 767
    move-object/from16 v0, v28

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v4, :cond_c6

    .line 768
    move-object/from16 v0, v28

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    or-int/lit16 v4, v4, 0x200

    move-object/from16 v0, v28

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    .line 770
    :cond_c6
    if-eqz v21, :cond_d3

    .line 771
    move-object/from16 v0, v28

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    const/high16 v5, -0x80000000

    or-int/2addr v4, v5

    move-object/from16 v0, v28

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    .line 773
    :cond_d3
    move-object/from16 v0, v27

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->via_bot_id:I

    if-eqz v4, :cond_ef

    .line 774
    move-object/from16 v0, v27

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->via_bot_id:I

    move-object/from16 v0, v28

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->via_bot_id:I

    .line 775
    move-object/from16 v0, v28

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    or-int/lit16 v4, v4, 0x800

    move-object/from16 v0, v28

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    .line 777
    :cond_ef
    move-object/from16 v0, v27

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    move-object/from16 v0, v28

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    .line 778
    invoke-virtual/range {v27 .. v27}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    move-object/from16 v0, v28

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->fwd_msg_id:I

    .line 779
    move-object/from16 v0, v27

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    move-object/from16 v0, v28

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    .line 780
    move-object/from16 v0, v27

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    move-object/from16 v0, v28

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    .line 781
    move-object/from16 v0, v28

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_129

    .line 782
    move-object/from16 v0, v28

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    or-int/lit16 v4, v4, 0x80

    move-object/from16 v0, v28

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    .line 784
    :cond_129
    move-object/from16 v0, v28

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    if-nez v4, :cond_135

    .line 785
    const-string v4, ""

    move-object/from16 v0, v28

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    .line 787
    :cond_135
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getNewMessageId()I

    move-result v4

    move-object/from16 v0, v28

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    move-object/from16 v0, v28

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->local_id:I

    .line 788
    const/4 v4, 0x1

    move-object/from16 v0, v28

    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    .line 789
    iget v4, v13, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    if-eqz v4, :cond_413

    if-nez v21, :cond_413

    .line 790
    if-eqz v22, :cond_40e

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v4

    :goto_152
    move-object/from16 v0, v28

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    .line 791
    const/4 v4, 0x1

    move-object/from16 v0, v28

    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->post:Z

    .line 796
    :goto_15b
    move-object/from16 v0, v28

    iget-wide v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_16d

    .line 797
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/SendMessagesHelper;->getNextRandomId()J

    move-result-wide v4

    move-object/from16 v0, v28

    iput-wide v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    .line 799
    :cond_16d
    move-object/from16 v0, v28

    iget-wide v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 800
    move-object/from16 v0, v28

    iget-wide v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 801
    move-object/from16 v0, v28

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->fwd_msg_id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 802
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v4

    move-object/from16 v0, v28

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    .line 803
    move-object/from16 v0, v20

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChannel;

    if-eqz v4, :cond_42e

    .line 804
    if-nez v21, :cond_427

    .line 805
    const/4 v4, 0x1

    move-object/from16 v0, v28

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->views:I

    .line 806
    move-object/from16 v0, v28

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    or-int/lit16 v4, v4, 0x400

    move-object/from16 v0, v28

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    .line 817
    :goto_1b9
    move-wide/from16 v0, p2

    move-object/from16 v2, v28

    iput-wide v0, v2, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    .line 818
    move-object/from16 v0, v28

    iput-object v13, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 819
    invoke-static/range {v28 .. v28}, Lorg/telegram/messenger/MessageObject;->isVoiceMessage(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v4

    if-eqz v4, :cond_1d6

    move-object/from16 v0, v28

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    if-nez v4, :cond_1d6

    .line 820
    const/4 v4, 0x1

    move-object/from16 v0, v28

    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media_unread:Z

    .line 822
    :cond_1d6
    move-object/from16 v0, v27

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;

    if-eqz v4, :cond_1ed

    .line 823
    move-object/from16 v0, v27

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    neg-int v4, v4

    move-object/from16 v0, v28

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I

    .line 825
    :cond_1ed
    new-instance v29, Lorg/telegram/messenger/MessageObject;

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-direct {v0, v1, v4, v5}, Lorg/telegram/messenger/MessageObject;-><init>(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/AbstractMap;Z)V

    .line 826
    .local v29, "newMsgObj":Lorg/telegram/messenger/MessageObject;
    move-object/from16 v0, v29

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    const/4 v5, 0x1

    iput v5, v4, Lorg/telegram/tgnet/TLRPC$Message;->send_state:I

    .line 827
    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 828
    move-object/from16 v0, v16

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 830
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/SendMessagesHelper;->putToSendingMessages(Lorg/telegram/tgnet/TLRPC$Message;)V

    .line 831
    const/16 v18, 0x0

    .line 833
    .local v18, "differentDialog":Z
    sget-boolean v4, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz v4, :cond_25e

    .line 834
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "forward message user_id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v20

    iget v5, v0, Lorg/telegram/tgnet/TLRPC$InputPeer;->user_id:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " chat_id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v20

    iget v5, v0, Lorg/telegram/tgnet/TLRPC$InputPeer;->chat_id:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " channel_id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v20

    iget v5, v0, Lorg/telegram/tgnet/TLRPC$InputPeer;->channel_id:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " access_hash = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v20

    iget-wide v6, v0, Lorg/telegram/tgnet/TLRPC$InputPeer;->access_hash:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 837
    :cond_25e
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/16 v5, 0x64

    if-eq v4, v5, :cond_28c

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-eq v15, v4, :cond_28c

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-eq v15, v4, :cond_6a

    add-int/lit8 v4, v15, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v4

    invoke-virtual/range {v27 .. v27}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-eqz v4, :cond_6a

    .line 838
    :cond_28c
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    new-instance v5, Ljava/util/ArrayList;

    move-object/from16 v0, v16

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Lorg/telegram/messenger/MessagesStorage;->putMessages(Ljava/util/ArrayList;ZZZI)V

    .line 839
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    move-wide/from16 v0, p2

    move-object/from16 v2, v30

    invoke-virtual {v4, v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->updateInterfaceWithMessages(JLjava/util/ArrayList;)V

    .line 840
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/NotificationCenter;->dialogsNeedReload:I

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 841
    const/4 v4, 0x0

    invoke-static {v4}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 843
    new-instance v14, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;

    invoke-direct {v14}, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;-><init>()V

    .line 844
    .local v14, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;
    move-object/from16 v0, v20

    iput-object v0, v14, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->to_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 845
    iget-object v4, v14, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->to_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChannel;

    if-eqz v4, :cond_2ed

    .line 846
    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v5, "Notifications"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "silent_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p2

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v14, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->silent:Z

    .line 848
    :cond_2ed
    move-object/from16 v0, v27

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;

    if-eqz v4, :cond_453

    .line 849
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    move-object/from16 v0, v27

    iget-object v5, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v17

    .line 850
    .restart local v17    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChannel;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChannel;-><init>()V

    iput-object v4, v14, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->from_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 851
    iget-object v4, v14, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->from_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-object/from16 v0, v27

    iget-object v5, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    iput v5, v4, Lorg/telegram/tgnet/TLRPC$InputPeer;->channel_id:I

    .line 852
    if-eqz v17, :cond_328

    .line 853
    iget-object v4, v14, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->from_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-object/from16 v0, v17

    iget-wide v6, v0, Lorg/telegram/tgnet/TLRPC$Chat;->access_hash:J

    iput-wide v6, v4, Lorg/telegram/tgnet/TLRPC$InputPeer;->access_hash:J

    .line 858
    .end local v17    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_328
    :goto_328
    move-object/from16 v0, v31

    iput-object v0, v14, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->random_id:Ljava/util/ArrayList;

    .line 859
    move-object/from16 v0, v19

    iput-object v0, v14, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->id:Ljava/util/ArrayList;

    .line 860
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_45c

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/MessageObject;

    iget-object v4, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->with_my_score:Z

    if-eqz v4, :cond_45c

    const/4 v4, 0x1

    :goto_347
    iput-boolean v4, v14, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->with_my_score:Z

    .line 862
    move-object/from16 v11, v16

    .line 863
    .local v11, "newMsgObjArr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    move-object/from16 v12, v30

    .line 864
    .local v12, "newMsgArr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    move-object/from16 v10, v26

    .line 865
    .local v10, "messagesByRandomIdsFinal":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lorg/telegram/tgnet/TLRPC$Message;>;"
    move/from16 v8, v21

    .line 866
    .local v8, "isMegagroupFinal":Z
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v34

    new-instance v4, Lorg/telegram/messenger/SendMessagesHelper$4;

    move-object/from16 v5, p0

    move-wide/from16 v6, p2

    move/from16 v9, v33

    invoke-direct/range {v4 .. v14}, Lorg/telegram/messenger/SendMessagesHelper$4;-><init>(Lorg/telegram/messenger/SendMessagesHelper;JZZLjava/util/HashMap;Ljava/util/ArrayList;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$Peer;Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;)V

    const/16 v5, 0x44

    move-object/from16 v0, v34

    invoke-virtual {v0, v14, v4, v5}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    .line 978
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-eq v15, v4, :cond_6a

    .line 979
    new-instance v30, Ljava/util/ArrayList;

    .end local v30    # "objArr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    invoke-direct/range {v30 .. v30}, Ljava/util/ArrayList;-><init>()V

    .line 980
    .restart local v30    # "objArr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    new-instance v16, Ljava/util/ArrayList;

    .end local v16    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 981
    .restart local v16    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    new-instance v31, Ljava/util/ArrayList;

    .end local v31    # "randomIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-direct/range {v31 .. v31}, Ljava/util/ArrayList;-><init>()V

    .line 982
    .restart local v31    # "randomIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v19, Ljava/util/ArrayList;

    .end local v19    # "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 983
    .restart local v19    # "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v26, Ljava/util/HashMap;

    .end local v26    # "messagesByRandomIds":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lorg/telegram/tgnet/TLRPC$Message;>;"
    invoke-direct/range {v26 .. v26}, Ljava/util/HashMap;-><init>()V

    .restart local v26    # "messagesByRandomIds":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lorg/telegram/tgnet/TLRPC$Message;>;"
    goto/16 :goto_6a

    .line 747
    .end local v8    # "isMegagroupFinal":Z
    .end local v10    # "messagesByRandomIdsFinal":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lorg/telegram/tgnet/TLRPC$Message;>;"
    .end local v11    # "newMsgObjArr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    .end local v12    # "newMsgArr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .end local v14    # "req":Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;
    .end local v18    # "differentDialog":Z
    .end local v29    # "newMsgObj":Lorg/telegram/messenger/MessageObject;
    :cond_38a
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;-><init>()V

    move-object/from16 v0, v28

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    .line 748
    invoke-virtual/range {v27 .. v27}, Lorg/telegram/messenger/MessageObject;->isFromUser()Z

    move-result v4

    if-eqz v4, :cond_3bb

    .line 749
    move-object/from16 v0, v28

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    move-object/from16 v0, v27

    iget-object v5, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    iput v5, v4, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->from_id:I

    .line 750
    move-object/from16 v0, v28

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    iget v5, v4, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->flags:I

    or-int/lit8 v5, v5, 0x1

    iput v5, v4, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->flags:I

    .line 763
    :cond_3af
    :goto_3af
    move-object/from16 v0, v27

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    move-object/from16 v0, v28

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    goto/16 :goto_a7

    .line 752
    :cond_3bb
    move-object/from16 v0, v28

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    move-object/from16 v0, v27

    iget-object v5, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    iput v5, v4, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->channel_id:I

    .line 753
    move-object/from16 v0, v28

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    iget v5, v4, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->flags:I

    or-int/lit8 v5, v5, 0x2

    iput v5, v4, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->flags:I

    .line 754
    move-object/from16 v0, v27

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->post:Z

    if-eqz v4, :cond_3af

    .line 755
    move-object/from16 v0, v28

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    invoke-virtual/range {v27 .. v27}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v5

    iput v5, v4, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->channel_post:I

    .line 756
    move-object/from16 v0, v28

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    iget v5, v4, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->flags:I

    or-int/lit8 v5, v5, 0x4

    iput v5, v4, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->flags:I

    .line 757
    move-object/from16 v0, v27

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    if-lez v4, :cond_3af

    .line 758
    move-object/from16 v0, v28

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    move-object/from16 v0, v27

    iget-object v5, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    iput v5, v4, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->from_id:I

    .line 759
    move-object/from16 v0, v28

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    iget v5, v4, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->flags:I

    or-int/lit8 v5, v5, 0x1

    iput v5, v4, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->flags:I

    goto :goto_3af

    .line 790
    :cond_40e
    iget v4, v13, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    neg-int v4, v4

    goto/16 :goto_152

    .line 793
    :cond_413
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v4

    move-object/from16 v0, v28

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    .line 794
    move-object/from16 v0, v28

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    or-int/lit16 v4, v4, 0x100

    move-object/from16 v0, v28

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    goto/16 :goto_15b

    .line 808
    :cond_427
    const/4 v4, 0x1

    move-object/from16 v0, v28

    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->unread:Z

    goto/16 :goto_1b9

    .line 811
    :cond_42e
    move-object/from16 v0, v27

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    and-int/lit16 v4, v4, 0x400

    if-eqz v4, :cond_44c

    .line 812
    move-object/from16 v0, v27

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->views:I

    move-object/from16 v0, v28

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->views:I

    .line 813
    move-object/from16 v0, v28

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    or-int/lit16 v4, v4, 0x400

    move-object/from16 v0, v28

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    .line 815
    :cond_44c
    const/4 v4, 0x1

    move-object/from16 v0, v28

    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->unread:Z

    goto/16 :goto_1b9

    .line 856
    .restart local v14    # "req":Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;
    .restart local v18    # "differentDialog":Z
    .restart local v29    # "newMsgObj":Lorg/telegram/messenger/MessageObject;
    :cond_453
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_inputPeerEmpty;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerEmpty;-><init>()V

    iput-object v4, v14, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->from_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    goto/16 :goto_328

    .line 860
    :cond_45c
    const/4 v4, 0x0

    goto/16 :goto_347

    .line 988
    .end local v13    # "to_id":Lorg/telegram/tgnet/TLRPC$Peer;
    .end local v14    # "req":Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;
    .end local v15    # "a":I
    .end local v16    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    .end local v18    # "differentDialog":Z
    .end local v19    # "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v20    # "inputPeer":Lorg/telegram/tgnet/TLRPC$InputPeer;
    .end local v21    # "isMegagroup":Z
    .end local v22    # "isSignature":Z
    .end local v24    # "lastDialogId":J
    .end local v26    # "messagesByRandomIds":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lorg/telegram/tgnet/TLRPC$Message;>;"
    .end local v27    # "msgObj":Lorg/telegram/messenger/MessageObject;
    .end local v28    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    .end local v29    # "newMsgObj":Lorg/telegram/messenger/MessageObject;
    .end local v30    # "objArr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .end local v31    # "randomIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v33    # "toMyself":Z
    :cond_45f
    const/4 v15, 0x0

    .restart local v15    # "a":I
    :goto_460
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v15, v4, :cond_8

    .line 989
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/MessageObject;

    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    invoke-virtual {v0, v4, v1, v2}, Lorg/telegram/messenger/SendMessagesHelper;->processForwardFromMyName(Lorg/telegram/messenger/MessageObject;J)V

    .line 988
    add-int/lit8 v15, v15, 0x1

    goto :goto_460
.end method

.method public sendMessage(Lorg/telegram/messenger/MessageObject;)V
    .registers 22
    .param p1, "retryMessageObject"    # Lorg/telegram/messenger/MessageObject;

    .prologue
    .line 1245
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v10

    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v12, v2, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/16 v17, 0x0

    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v2, Lorg/telegram/tgnet/TLRPC$Message;->reply_markup:Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v2, Lorg/telegram/tgnet/TLRPC$Message;->params:Ljava/util/HashMap;

    move-object/from16 v19, v0

    move-object/from16 v2, p0

    move-object/from16 v16, p1

    invoke-direct/range {v2 .. v19}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$MessageMedia;Lorg/telegram/tgnet/TLRPC$TL_photo;Lorg/telegram/messenger/VideoEditedInfo;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$TL_document;Lorg/telegram/tgnet/TLRPC$TL_game;JLjava/lang/String;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$WebPage;ZLorg/telegram/messenger/MessageObject;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;)V

    .line 1246
    return-void
.end method

.method public sendMessage(Lorg/telegram/tgnet/TLRPC$MessageMedia;JLorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;)V
    .registers 25
    .param p1, "location"    # Lorg/telegram/tgnet/TLRPC$MessageMedia;
    .param p2, "peer"    # J
    .param p4, "reply_to_msg"    # Lorg/telegram/messenger/MessageObject;
    .param p5, "replyMarkup"    # Lorg/telegram/tgnet/TLRPC$ReplyMarkup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/tgnet/TLRPC$MessageMedia;",
            "J",
            "Lorg/telegram/messenger/MessageObject;",
            "Lorg/telegram/tgnet/TLRPC$ReplyMarkup;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1261
    .local p6, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-wide/from16 v8, p2

    move-object/from16 v11, p4

    move-object/from16 v16, p5

    move-object/from16 v17, p6

    invoke-direct/range {v0 .. v17}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$MessageMedia;Lorg/telegram/tgnet/TLRPC$TL_photo;Lorg/telegram/messenger/VideoEditedInfo;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$TL_document;Lorg/telegram/tgnet/TLRPC$TL_game;JLjava/lang/String;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$WebPage;ZLorg/telegram/messenger/MessageObject;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;)V

    .line 1262
    return-void
.end method

.method public sendMessage(Lorg/telegram/tgnet/TLRPC$TL_document;Lorg/telegram/messenger/VideoEditedInfo;Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;)V
    .registers 27
    .param p1, "document"    # Lorg/telegram/tgnet/TLRPC$TL_document;
    .param p2, "videoEditedInfo"    # Lorg/telegram/messenger/VideoEditedInfo;
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "peer"    # J
    .param p6, "reply_to_msg"    # Lorg/telegram/messenger/MessageObject;
    .param p7, "replyMarkup"    # Lorg/telegram/tgnet/TLRPC$ReplyMarkup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/tgnet/TLRPC$TL_document;",
            "Lorg/telegram/messenger/VideoEditedInfo;",
            "Ljava/lang/String;",
            "J",
            "Lorg/telegram/messenger/MessageObject;",
            "Lorg/telegram/tgnet/TLRPC$ReplyMarkup;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1253
    .local p8, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    move-object/from16 v4, p2

    move-object/from16 v6, p1

    move-wide/from16 v8, p4

    move-object/from16 v10, p3

    move-object/from16 v11, p6

    move-object/from16 v16, p7

    move-object/from16 v17, p8

    invoke-direct/range {v0 .. v17}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$MessageMedia;Lorg/telegram/tgnet/TLRPC$TL_photo;Lorg/telegram/messenger/VideoEditedInfo;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$TL_document;Lorg/telegram/tgnet/TLRPC$TL_game;JLjava/lang/String;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$WebPage;ZLorg/telegram/messenger/MessageObject;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;)V

    .line 1254
    return-void
.end method

.method public sendMessage(Lorg/telegram/tgnet/TLRPC$TL_game;JLorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;)V
    .registers 24
    .param p1, "game"    # Lorg/telegram/tgnet/TLRPC$TL_game;
    .param p2, "peer"    # J
    .param p4, "replyMarkup"    # Lorg/telegram/tgnet/TLRPC$ReplyMarkup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/tgnet/TLRPC$TL_game;",
            "J",
            "Lorg/telegram/tgnet/TLRPC$ReplyMarkup;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1265
    .local p5, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-wide/from16 v8, p2

    move-object/from16 v16, p4

    move-object/from16 v17, p5

    invoke-direct/range {v0 .. v17}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$MessageMedia;Lorg/telegram/tgnet/TLRPC$TL_photo;Lorg/telegram/messenger/VideoEditedInfo;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$TL_document;Lorg/telegram/tgnet/TLRPC$TL_game;JLjava/lang/String;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$WebPage;ZLorg/telegram/messenger/MessageObject;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;)V

    .line 1266
    return-void
.end method

.method public sendMessage(Lorg/telegram/tgnet/TLRPC$TL_photo;Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;)V
    .registers 27
    .param p1, "photo"    # Lorg/telegram/tgnet/TLRPC$TL_photo;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "peer"    # J
    .param p5, "reply_to_msg"    # Lorg/telegram/messenger/MessageObject;
    .param p6, "replyMarkup"    # Lorg/telegram/tgnet/TLRPC$ReplyMarkup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/tgnet/TLRPC$TL_photo;",
            "Ljava/lang/String;",
            "J",
            "Lorg/telegram/messenger/MessageObject;",
            "Lorg/telegram/tgnet/TLRPC$ReplyMarkup;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1269
    .local p7, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    move-object/from16 v3, p1

    move-wide/from16 v8, p3

    move-object/from16 v10, p2

    move-object/from16 v11, p5

    move-object/from16 v16, p6

    move-object/from16 v17, p7

    invoke-direct/range {v0 .. v17}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$MessageMedia;Lorg/telegram/tgnet/TLRPC$TL_photo;Lorg/telegram/messenger/VideoEditedInfo;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$TL_document;Lorg/telegram/tgnet/TLRPC$TL_game;JLjava/lang/String;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$WebPage;ZLorg/telegram/messenger/MessageObject;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;)V

    .line 1270
    return-void
.end method

.method public sendMessage(Lorg/telegram/tgnet/TLRPC$User;JLorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;)V
    .registers 25
    .param p1, "user"    # Lorg/telegram/tgnet/TLRPC$User;
    .param p2, "peer"    # J
    .param p4, "reply_to_msg"    # Lorg/telegram/messenger/MessageObject;
    .param p5, "replyMarkup"    # Lorg/telegram/tgnet/TLRPC$ReplyMarkup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/tgnet/TLRPC$User;",
            "J",
            "Lorg/telegram/messenger/MessageObject;",
            "Lorg/telegram/tgnet/TLRPC$ReplyMarkup;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1249
    .local p6, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    move-object/from16 v5, p1

    move-wide/from16 v8, p2

    move-object/from16 v11, p4

    move-object/from16 v16, p5

    move-object/from16 v17, p6

    invoke-direct/range {v0 .. v17}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$MessageMedia;Lorg/telegram/tgnet/TLRPC$TL_photo;Lorg/telegram/messenger/VideoEditedInfo;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$TL_document;Lorg/telegram/tgnet/TLRPC$TL_game;JLjava/lang/String;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$WebPage;ZLorg/telegram/messenger/MessageObject;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;)V

    .line 1250
    return-void
.end method

.method public sendSticker(Lorg/telegram/tgnet/TLRPC$Document;JLorg/telegram/messenger/MessageObject;)V
    .registers 25
    .param p1, "document"    # Lorg/telegram/tgnet/TLRPC$Document;
    .param p2, "peer"    # J
    .param p4, "replyingMessageObject"    # Lorg/telegram/messenger/MessageObject;

    .prologue
    .line 657
    if-nez p1, :cond_3

    .line 705
    :cond_2
    :goto_2
    return-void

    .line 660
    :cond_3
    move-wide/from16 v0, p2

    long-to-int v2, v0

    if-nez v2, :cond_100

    .line 661
    const/16 v2, 0x20

    shr-long v2, p2, v2

    long-to-int v15, v2

    .line 662
    .local v15, "high_id":I
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getEncryptedChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-result-object v13

    .line 663
    .local v13, "encryptedChat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    if-eqz v13, :cond_2

    .line 666
    new-instance v17, Lorg/telegram/tgnet/TLRPC$TL_document;

    invoke-direct/range {v17 .. v17}, Lorg/telegram/tgnet/TLRPC$TL_document;-><init>()V

    .line 667
    .local v17, "newDocument":Lorg/telegram/tgnet/TLRPC$TL_document;
    move-object/from16 v0, p1

    iget-wide v2, v0, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    move-object/from16 v0, v17

    iput-wide v2, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->id:J

    .line 668
    move-object/from16 v0, p1

    iget-wide v2, v0, Lorg/telegram/tgnet/TLRPC$Document;->access_hash:J

    move-object/from16 v0, v17

    iput-wide v2, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->access_hash:J

    .line 669
    move-object/from16 v0, p1

    iget v2, v0, Lorg/telegram/tgnet/TLRPC$Document;->date:I

    move-object/from16 v0, v17

    iput v2, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->date:I

    .line 670
    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    move-object/from16 v0, v17

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->mime_type:Ljava/lang/String;

    .line 671
    move-object/from16 v0, p1

    iget v2, v0, Lorg/telegram/tgnet/TLRPC$Document;->size:I

    move-object/from16 v0, v17

    iput v2, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->size:I

    .line 672
    move-object/from16 v0, p1

    iget v2, v0, Lorg/telegram/tgnet/TLRPC$Document;->dc_id:I

    move-object/from16 v0, v17

    iput v2, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->dc_id:I

    .line 673
    new-instance v2, Ljava/util/ArrayList;

    move-object/from16 v0, p1

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, v17

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->attributes:Ljava/util/ArrayList;

    .line 674
    move-object/from16 v0, v17

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->mime_type:Ljava/lang/String;

    if-nez v2, :cond_69

    .line 675
    const-string v2, ""

    move-object/from16 v0, v17

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->mime_type:Ljava/lang/String;

    .line 677
    :cond_69
    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_photoSize;

    if-eqz v2, :cond_e7

    .line 678
    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v14

    .line 679
    .local v14, "file":Ljava/io/File;
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_e7

    .line 681
    :try_start_80
    invoke-virtual {v14}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int v0, v2

    move/from16 v16, v0

    .line 682
    .local v16, "len":I
    invoke-virtual {v14}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int v2, v2

    new-array v11, v2, [B

    .line 683
    .local v11, "arr":[B
    new-instance v18, Ljava/io/RandomAccessFile;

    const-string v2, "r"

    move-object/from16 v0, v18

    invoke-direct {v0, v14, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 684
    .local v18, "reader":Ljava/io/RandomAccessFile;
    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 686
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_photoCachedSize;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_photoCachedSize;-><init>()V

    move-object/from16 v0, v17

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 687
    move-object/from16 v0, v17

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-object/from16 v0, p1

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 688
    move-object/from16 v0, v17

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-object/from16 v0, p1

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$PhotoSize;->size:I

    iput v3, v2, Lorg/telegram/tgnet/TLRPC$PhotoSize;->size:I

    .line 689
    move-object/from16 v0, v17

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-object/from16 v0, p1

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    iput v3, v2, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    .line 690
    move-object/from16 v0, v17

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-object/from16 v0, p1

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    iput v3, v2, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    .line 691
    move-object/from16 v0, v17

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-object/from16 v0, p1

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$PhotoSize;->type:Ljava/lang/String;

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$PhotoSize;->type:Ljava/lang/String;

    .line 692
    move-object/from16 v0, v17

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iput-object v11, v2, Lorg/telegram/tgnet/TLRPC$PhotoSize;->bytes:[B
    :try_end_e7
    .catch Ljava/lang/Exception; {:try_start_80 .. :try_end_e7} :catch_115

    .line 698
    .end local v11    # "arr":[B
    .end local v14    # "file":Ljava/io/File;
    .end local v16    # "len":I
    .end local v18    # "reader":Ljava/io/RandomAccessFile;
    :cond_e7
    :goto_e7
    move-object/from16 v0, v17

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    if-nez v2, :cond_fe

    .line 699
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_photoSizeEmpty;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_photoSizeEmpty;-><init>()V

    move-object/from16 v0, v17

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 700
    move-object/from16 v0, v17

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    const-string v3, "s"

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$PhotoSize;->type:Ljava/lang/String;

    .line 702
    :cond_fe
    move-object/from16 p1, v17

    .line 704
    .end local v13    # "encryptedChat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    .end local v15    # "high_id":I
    .end local v17    # "newDocument":Lorg/telegram/tgnet/TLRPC$TL_document;
    :cond_100
    invoke-static {}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v2

    move-object/from16 v3, p1

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_document;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-wide/from16 v6, p2

    move-object/from16 v8, p4

    invoke-virtual/range {v2 .. v10}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Lorg/telegram/tgnet/TLRPC$TL_document;Lorg/telegram/messenger/VideoEditedInfo;Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;)V

    goto/16 :goto_2

    .line 693
    .restart local v13    # "encryptedChat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    .restart local v14    # "file":Ljava/io/File;
    .restart local v15    # "high_id":I
    .restart local v17    # "newDocument":Lorg/telegram/tgnet/TLRPC$TL_document;
    :catch_115
    move-exception v12

    .line 694
    .local v12, "e":Ljava/lang/Exception;
    invoke-static {v12}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_e7
.end method

.method public setCurrentChatInfo(Lorg/telegram/tgnet/TLRPC$ChatFull;)V
    .registers 2
    .param p1, "info"    # Lorg/telegram/tgnet/TLRPC$ChatFull;

    .prologue
    .line 254
    iput-object p1, p0, Lorg/telegram/messenger/SendMessagesHelper;->currentChatInfo:Lorg/telegram/tgnet/TLRPC$ChatFull;

    .line 255
    return-void
.end method

.method protected stopVideoService(Ljava/lang/String;)V
    .registers 4
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 3263
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v0

    new-instance v1, Lorg/telegram/messenger/SendMessagesHelper$8;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/SendMessagesHelper$8;-><init>(Lorg/telegram/messenger/SendMessagesHelper;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 3274
    return-void
.end method

.method public telehProcessForwardFromMyName(Ljava/lang/CharSequence;Lorg/telegram/messenger/MessageObject;J)V
    .registers 20
    .param p1, "caption"    # Ljava/lang/CharSequence;
    .param p2, "messageObject"    # Lorg/telegram/messenger/MessageObject;
    .param p3, "did"    # J

    .prologue
    .line 2186
    if-nez p2, :cond_3

    .line 2219
    :goto_2
    return-void

    .line 2189
    :cond_3
    move-object/from16 v0, p2

    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v2, :cond_ed

    move-object/from16 v0, p2

    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;

    if-nez v2, :cond_ed

    move-object/from16 v0, p2

    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;

    if-nez v2, :cond_ed

    .line 2190
    move-object/from16 v0, p2

    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_photo;

    if-eqz v2, :cond_44

    .line 2191
    move-object/from16 v0, p2

    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_photo;

    const/4 v5, 0x0

    move-object/from16 v0, p2

    iget-object v8, v0, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    const/4 v9, 0x0

    move-object v2, p0

    move-object/from16 v3, p1

    move-wide/from16 v6, p3

    invoke-virtual/range {v2 .. v9}, Lorg/telegram/messenger/SendMessagesHelper;->telehSendPhotoMessage(Ljava/lang/CharSequence;Lorg/telegram/tgnet/TLRPC$TL_photo;Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Ljava/util/HashMap;)V

    goto :goto_2

    .line 2192
    :cond_44
    move-object/from16 v0, p2

    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_document;

    if-eqz v2, :cond_6f

    .line 2193
    move-object/from16 v0, p2

    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v5, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    check-cast v5, Lorg/telegram/tgnet/TLRPC$TL_document;

    const/4 v6, 0x0

    move-object/from16 v0, p2

    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v7, v2, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v10, v0, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    const/4 v11, 0x0

    move-object v3, p0

    move-object/from16 v4, p1

    move-wide/from16 v8, p3

    invoke-virtual/range {v3 .. v11}, Lorg/telegram/messenger/SendMessagesHelper;->telehSendDocumentMessage(Ljava/lang/CharSequence;Lorg/telegram/tgnet/TLRPC$TL_document;Lorg/telegram/messenger/VideoEditedInfo;Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Ljava/util/HashMap;)V

    goto :goto_2

    .line 2194
    :cond_6f
    move-object/from16 v0, p2

    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;

    if-nez v2, :cond_83

    move-object/from16 v0, p2

    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeo;

    if-eqz v2, :cond_97

    .line 2195
    :cond_83
    move-object/from16 v0, p2

    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v0, p2

    iget-object v6, v0, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    move-wide/from16 v4, p3

    invoke-virtual/range {v2 .. v8}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Lorg/telegram/tgnet/TLRPC$MessageMedia;JLorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;)V

    goto/16 :goto_2

    .line 2196
    :cond_97
    move-object/from16 v0, p2

    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->phone_number:Ljava/lang/String;

    if-eqz v2, :cond_dc

    .line 2197
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_userContact_old2;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_userContact_old2;-><init>()V

    .line 2198
    .local v3, "user":Lorg/telegram/tgnet/TLRPC$User;
    move-object/from16 v0, p2

    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->phone_number:Ljava/lang/String;

    iput-object v2, v3, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    .line 2199
    move-object/from16 v0, p2

    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->first_name:Ljava/lang/String;

    iput-object v2, v3, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    .line 2200
    move-object/from16 v0, p2

    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->last_name:Ljava/lang/String;

    iput-object v2, v3, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    .line 2201
    move-object/from16 v0, p2

    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->user_id:I

    iput v2, v3, Lorg/telegram/tgnet/TLRPC$User;->id:I

    .line 2202
    move-object/from16 v0, p2

    iget-object v6, v0, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    move-wide/from16 v4, p3

    invoke-virtual/range {v2 .. v8}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Lorg/telegram/tgnet/TLRPC$User;JLorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;)V

    goto/16 :goto_2

    .line 2204
    .end local v3    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_dc
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 2205
    .local v14, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2206
    move-wide/from16 v0, p3

    invoke-virtual {p0, v14, v0, v1}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Ljava/util/ArrayList;J)V

    goto/16 :goto_2

    .line 2208
    .end local v14    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    :cond_ed
    move-object/from16 v0, p2

    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    if-eqz v2, :cond_123

    .line 2209
    const/4 v9, 0x0

    .line 2210
    .local v9, "webPage":Lorg/telegram/tgnet/TLRPC$WebPage;
    move-object/from16 v0, p2

    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;

    if-eqz v2, :cond_108

    .line 2211
    move-object/from16 v0, p2

    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v9, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    .line 2213
    :cond_108
    move-object/from16 v0, p2

    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v5, v2, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v8, v0, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    const/4 v10, 0x1

    move-object/from16 v0, p2

    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v11, v2, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v4, p0

    move-wide/from16 v6, p3

    invoke-virtual/range {v4 .. v13}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$WebPage;ZLjava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;)V

    goto/16 :goto_2

    .line 2215
    .end local v9    # "webPage":Lorg/telegram/tgnet/TLRPC$WebPage;
    :cond_123
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 2216
    .restart local v14    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2217
    move-wide/from16 v0, p3

    invoke-virtual {p0, v14, v0, v1}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Ljava/util/ArrayList;J)V

    goto/16 :goto_2
.end method

.method public telehSendDocumentMessage(Ljava/lang/CharSequence;Lorg/telegram/tgnet/TLRPC$TL_document;Lorg/telegram/messenger/VideoEditedInfo;Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Ljava/util/HashMap;)V
    .registers 26
    .param p1, "caption"    # Ljava/lang/CharSequence;
    .param p2, "document"    # Lorg/telegram/tgnet/TLRPC$TL_document;
    .param p3, "videoEditedInfo"    # Lorg/telegram/messenger/VideoEditedInfo;
    .param p4, "path"    # Ljava/lang/String;
    .param p5, "peer"    # J
    .param p7, "reply_to_msg"    # Lorg/telegram/messenger/MessageObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Lorg/telegram/tgnet/TLRPC$TL_document;",
            "Lorg/telegram/messenger/VideoEditedInfo;",
            "Ljava/lang/String;",
            "J",
            "Lorg/telegram/messenger/MessageObject;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2226
    .local p8, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v5, p3

    move-object/from16 v7, p2

    move-wide/from16 v8, p5

    move-object/from16 v10, p4

    move-object/from16 v11, p7

    move-object/from16 v16, p8

    invoke-direct/range {v0 .. v16}, Lorg/telegram/messenger/SendMessagesHelper;->telehSendMessage(Ljava/lang/CharSequence;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$MessageMedia;Lorg/telegram/tgnet/TLRPC$TL_photo;Lorg/telegram/messenger/VideoEditedInfo;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$TL_document;JLjava/lang/String;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$WebPage;ZLorg/telegram/messenger/MessageObject;Ljava/util/ArrayList;Ljava/util/HashMap;)V

    .line 2227
    return-void
.end method

.method public telehSendPhotoMessage(Ljava/lang/CharSequence;Lorg/telegram/tgnet/TLRPC$TL_photo;Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Ljava/util/HashMap;)V
    .registers 26
    .param p1, "caption"    # Ljava/lang/CharSequence;
    .param p2, "photo"    # Lorg/telegram/tgnet/TLRPC$TL_photo;
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "peer"    # J
    .param p6, "reply_to_msg"    # Lorg/telegram/messenger/MessageObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Lorg/telegram/tgnet/TLRPC$TL_photo;",
            "Ljava/lang/String;",
            "J",
            "Lorg/telegram/messenger/MessageObject;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2222
    .local p7, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v4, p2

    move-wide/from16 v8, p4

    move-object/from16 v10, p3

    move-object/from16 v11, p6

    move-object/from16 v16, p7

    invoke-direct/range {v0 .. v16}, Lorg/telegram/messenger/SendMessagesHelper;->telehSendMessage(Ljava/lang/CharSequence;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$MessageMedia;Lorg/telegram/tgnet/TLRPC$TL_photo;Lorg/telegram/messenger/VideoEditedInfo;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$TL_document;JLjava/lang/String;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$WebPage;ZLorg/telegram/messenger/MessageObject;Ljava/util/ArrayList;Ljava/util/HashMap;)V

    .line 2223
    return-void
.end method
