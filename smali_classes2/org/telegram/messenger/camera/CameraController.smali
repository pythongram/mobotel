.class public Lorg/telegram/messenger/camera/CameraController;
.super Ljava/lang/Object;
.source "CameraController.java"

# interfaces
.implements Landroid/media/MediaRecorder$OnInfoListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/camera/CameraController$CompareSizesByArea;,
        Lorg/telegram/messenger/camera/CameraController$VideoTakeCallback;
    }
.end annotation


# static fields
.field private static final CORE_POOL_SIZE:I = 0x1

.field private static volatile Instance:Lorg/telegram/messenger/camera/CameraController; = null

.field private static final KEEP_ALIVE_SECONDS:I = 0x3c

.field private static final MAX_POOL_SIZE:I = 0x1


# instance fields
.field protected availableFlashModes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected cameraInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/camera/CameraInfo;",
            ">;"
        }
    .end annotation
.end field

.field private cameraInitied:Z

.field private onVideoTakeCallback:Lorg/telegram/messenger/camera/CameraController$VideoTakeCallback;

.field private recordedFile:Ljava/lang/String;

.field private recorder:Landroid/media/MediaRecorder;

.field private recordingSmallVideo:Z

.field private threadPool:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 57
    const/4 v0, 0x0

    sput-object v0, Lorg/telegram/messenger/camera/CameraController;->Instance:Lorg/telegram/messenger/camera/CameraController;

    return-void
.end method

.method public constructor <init>()V
    .registers 9

    .prologue
    const/4 v2, 0x1

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/camera/CameraController;->availableFlashModes:Ljava/util/ArrayList;

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/camera/CameraController;->cameraInfos:Ljava/util/ArrayList;

    .line 77
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    move v3, v2

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v1, p0, Lorg/telegram/messenger/camera/CameraController;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 78
    return-void
.end method

.method static synthetic access$002(Lorg/telegram/messenger/camera/CameraController;Z)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/camera/CameraController;
    .param p1, "x1"    # Z

    .prologue
    .line 42
    iput-boolean p1, p0, Lorg/telegram/messenger/camera/CameraController;->cameraInitied:Z

    return p1
.end method

.method static synthetic access$100([B)I
    .registers 2
    .param p0, "x0"    # [B

    .prologue
    .line 42
    invoke-static {p0}, Lorg/telegram/messenger/camera/CameraController;->getOrientation([B)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lorg/telegram/messenger/camera/CameraController;)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/camera/CameraController;

    .prologue
    .line 42
    iget-boolean v0, p0, Lorg/telegram/messenger/camera/CameraController;->recordingSmallVideo:Z

    return v0
.end method

.method static synthetic access$202(Lorg/telegram/messenger/camera/CameraController;Z)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/camera/CameraController;
    .param p1, "x1"    # Z

    .prologue
    .line 42
    iput-boolean p1, p0, Lorg/telegram/messenger/camera/CameraController;->recordingSmallVideo:Z

    return p1
.end method

.method static synthetic access$300(Lorg/telegram/messenger/camera/CameraController;)Landroid/media/MediaRecorder;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/camera/CameraController;

    .prologue
    .line 42
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraController;->recorder:Landroid/media/MediaRecorder;

    return-object v0
.end method

.method static synthetic access$302(Lorg/telegram/messenger/camera/CameraController;Landroid/media/MediaRecorder;)Landroid/media/MediaRecorder;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/camera/CameraController;
    .param p1, "x1"    # Landroid/media/MediaRecorder;

    .prologue
    .line 42
    iput-object p1, p0, Lorg/telegram/messenger/camera/CameraController;->recorder:Landroid/media/MediaRecorder;

    return-object p1
.end method

.method static synthetic access$400(Lorg/telegram/messenger/camera/CameraController;)Lorg/telegram/messenger/camera/CameraController$VideoTakeCallback;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/camera/CameraController;

    .prologue
    .line 42
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraController;->onVideoTakeCallback:Lorg/telegram/messenger/camera/CameraController$VideoTakeCallback;

    return-object v0
.end method

.method static synthetic access$402(Lorg/telegram/messenger/camera/CameraController;Lorg/telegram/messenger/camera/CameraController$VideoTakeCallback;)Lorg/telegram/messenger/camera/CameraController$VideoTakeCallback;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/camera/CameraController;
    .param p1, "x1"    # Lorg/telegram/messenger/camera/CameraController$VideoTakeCallback;

    .prologue
    .line 42
    iput-object p1, p0, Lorg/telegram/messenger/camera/CameraController;->onVideoTakeCallback:Lorg/telegram/messenger/camera/CameraController$VideoTakeCallback;

    return-object p1
.end method

.method static synthetic access$500(Lorg/telegram/messenger/camera/CameraController;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/camera/CameraController;

    .prologue
    .line 42
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraController;->recordedFile:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lorg/telegram/messenger/camera/CameraController;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/camera/CameraController;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 42
    iput-object p1, p0, Lorg/telegram/messenger/camera/CameraController;->recordedFile:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lorg/telegram/messenger/camera/CameraController;)Ljava/util/concurrent/ThreadPoolExecutor;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/camera/CameraController;

    .prologue
    .line 42
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraController;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    return-object v0
.end method

.method public static chooseOptimalSize(Ljava/util/List;IILorg/telegram/messenger/camera/Size;)Lorg/telegram/messenger/camera/Size;
    .registers 11
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "aspectRatio"    # Lorg/telegram/messenger/camera/Size;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/telegram/messenger/camera/Size;",
            ">;II",
            "Lorg/telegram/messenger/camera/Size;",
            ")",
            "Lorg/telegram/messenger/camera/Size;"
        }
    .end annotation

    .prologue
    .line 606
    .local p0, "choices":Ljava/util/List;, "Ljava/util/List<Lorg/telegram/messenger/camera/Size;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 607
    .local v1, "bigEnough":Ljava/util/List;, "Ljava/util/List<Lorg/telegram/messenger/camera/Size;>;"
    invoke-virtual {p3}, Lorg/telegram/messenger/camera/Size;->getWidth()I

    move-result v4

    .line 608
    .local v4, "w":I
    invoke-virtual {p3}, Lorg/telegram/messenger/camera/Size;->getHeight()I

    move-result v2

    .line 609
    .local v2, "h":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_e
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_38

    .line 610
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/camera/Size;

    .line 611
    .local v3, "option":Lorg/telegram/messenger/camera/Size;
    invoke-virtual {v3}, Lorg/telegram/messenger/camera/Size;->getHeight()I

    move-result v5

    invoke-virtual {v3}, Lorg/telegram/messenger/camera/Size;->getWidth()I

    move-result v6

    mul-int/2addr v6, v2

    div-int/2addr v6, v4

    if-ne v5, v6, :cond_35

    invoke-virtual {v3}, Lorg/telegram/messenger/camera/Size;->getWidth()I

    move-result v5

    if-lt v5, p1, :cond_35

    invoke-virtual {v3}, Lorg/telegram/messenger/camera/Size;->getHeight()I

    move-result v5

    if-lt v5, p2, :cond_35

    .line 612
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 609
    :cond_35
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 615
    .end local v3    # "option":Lorg/telegram/messenger/camera/Size;
    :cond_38
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_4a

    .line 616
    new-instance v5, Lorg/telegram/messenger/camera/CameraController$CompareSizesByArea;

    invoke-direct {v5}, Lorg/telegram/messenger/camera/CameraController$CompareSizesByArea;-><init>()V

    invoke-static {v1, v5}, Ljava/util/Collections;->min(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/messenger/camera/Size;

    .line 618
    :goto_49
    return-object v5

    :cond_4a
    new-instance v5, Lorg/telegram/messenger/camera/CameraController$CompareSizesByArea;

    invoke-direct {v5}, Lorg/telegram/messenger/camera/CameraController$CompareSizesByArea;-><init>()V

    invoke-static {p0, v5}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/messenger/camera/Size;

    goto :goto_49
.end method

.method public static getInstance()Lorg/telegram/messenger/camera/CameraController;
    .registers 4

    .prologue
    .line 64
    sget-object v0, Lorg/telegram/messenger/camera/CameraController;->Instance:Lorg/telegram/messenger/camera/CameraController;

    .line 65
    .local v0, "localInstance":Lorg/telegram/messenger/camera/CameraController;
    if-nez v0, :cond_14

    .line 66
    const-class v3, Lorg/telegram/messenger/camera/CameraController;

    monitor-enter v3

    .line 67
    :try_start_7
    sget-object v0, Lorg/telegram/messenger/camera/CameraController;->Instance:Lorg/telegram/messenger/camera/CameraController;

    .line 68
    if-nez v0, :cond_13

    .line 69
    new-instance v1, Lorg/telegram/messenger/camera/CameraController;

    invoke-direct {v1}, Lorg/telegram/messenger/camera/CameraController;-><init>()V
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_15

    .end local v0    # "localInstance":Lorg/telegram/messenger/camera/CameraController;
    .local v1, "localInstance":Lorg/telegram/messenger/camera/CameraController;
    :try_start_10
    sput-object v1, Lorg/telegram/messenger/camera/CameraController;->Instance:Lorg/telegram/messenger/camera/CameraController;
    :try_end_12
    .catchall {:try_start_10 .. :try_end_12} :catchall_18

    move-object v0, v1

    .line 71
    .end local v1    # "localInstance":Lorg/telegram/messenger/camera/CameraController;
    .restart local v0    # "localInstance":Lorg/telegram/messenger/camera/CameraController;
    :cond_13
    :try_start_13
    monitor-exit v3

    .line 73
    :cond_14
    return-object v0

    .line 71
    :catchall_15
    move-exception v2

    :goto_16
    monitor-exit v3
    :try_end_17
    .catchall {:try_start_13 .. :try_end_17} :catchall_15

    throw v2

    .end local v0    # "localInstance":Lorg/telegram/messenger/camera/CameraController;
    .restart local v1    # "localInstance":Lorg/telegram/messenger/camera/CameraController;
    :catchall_18
    move-exception v2

    move-object v0, v1

    .end local v1    # "localInstance":Lorg/telegram/messenger/camera/CameraController;
    .restart local v0    # "localInstance":Lorg/telegram/messenger/camera/CameraController;
    goto :goto_16
.end method

.method private static getOrientation([B)I
    .registers 16
    .param p0, "jpeg"    # [B

    .prologue
    const/16 v14, 0x8

    const/4 v3, 0x1

    const/4 v13, 0x4

    const/4 v12, 0x2

    const/4 v9, 0x0

    .line 202
    if-nez p0, :cond_9

    .line 277
    :cond_8
    :goto_8
    :pswitch_8
    return v9

    .line 206
    :cond_9
    const/4 v5, 0x0

    .line 207
    .local v5, "offset":I
    const/4 v2, 0x0

    .line 209
    .local v2, "length":I
    :cond_b
    :goto_b
    add-int/lit8 v10, v5, 0x3

    array-length v11, p0

    if-ge v10, v11, :cond_34

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "offset":I
    .local v6, "offset":I
    aget-byte v10, p0, v5

    and-int/lit16 v10, v10, 0xff

    const/16 v11, 0xff

    if-ne v10, v11, :cond_ba

    .line 210
    aget-byte v10, p0, v6

    and-int/lit16 v4, v10, 0xff

    .line 212
    .local v4, "marker":I
    const/16 v10, 0xff

    if-ne v4, v10, :cond_24

    move v5, v6

    .line 213
    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    goto :goto_b

    .line 215
    .end local v5    # "offset":I
    .restart local v6    # "offset":I
    :cond_24
    add-int/lit8 v5, v6, 0x1

    .line 217
    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    const/16 v10, 0xd8

    if-eq v4, v10, :cond_b

    if-eq v4, v3, :cond_b

    .line 220
    const/16 v10, 0xd9

    if-eq v4, v10, :cond_34

    const/16 v10, 0xda

    if-ne v4, v10, :cond_7d

    .line 242
    .end local v4    # "marker":I
    :cond_34
    :goto_34
    if-le v2, v14, :cond_8

    .line 243
    invoke-static {p0, v5, v13, v9}, Lorg/telegram/messenger/camera/CameraController;->pack([BIIZ)I

    move-result v8

    .line 244
    .local v8, "tag":I
    const v10, 0x49492a00    # 823968.0f

    if-eq v8, v10, :cond_44

    const v10, 0x4d4d002a    # 2.14958752E8f

    if-ne v8, v10, :cond_8

    .line 247
    :cond_44
    const v10, 0x49492a00    # 823968.0f

    if-ne v8, v10, :cond_aa

    .line 249
    .local v3, "littleEndian":Z
    :goto_49
    add-int/lit8 v10, v5, 0x4

    invoke-static {p0, v10, v13, v3}, Lorg/telegram/messenger/camera/CameraController;->pack([BIIZ)I

    move-result v10

    add-int/lit8 v0, v10, 0x2

    .line 250
    .local v0, "count":I
    const/16 v10, 0xa

    if-lt v0, v10, :cond_8

    if-gt v0, v2, :cond_8

    .line 253
    add-int/2addr v5, v0

    .line 254
    sub-int/2addr v2, v0

    .line 256
    add-int/lit8 v10, v5, -0x2

    invoke-static {p0, v10, v12, v3}, Lorg/telegram/messenger/camera/CameraController;->pack([BIIZ)I

    move-result v0

    move v1, v0

    .line 257
    .end local v0    # "count":I
    .local v1, "count":I
    :goto_60
    add-int/lit8 v0, v1, -0x1

    .end local v1    # "count":I
    .restart local v0    # "count":I
    if-lez v1, :cond_8

    const/16 v10, 0xc

    if-lt v2, v10, :cond_8

    .line 258
    invoke-static {p0, v5, v12, v3}, Lorg/telegram/messenger/camera/CameraController;->pack([BIIZ)I

    move-result v8

    .line 259
    const/16 v10, 0x112

    if-ne v8, v10, :cond_b4

    .line 260
    add-int/lit8 v10, v5, 0x8

    invoke-static {p0, v10, v12, v3}, Lorg/telegram/messenger/camera/CameraController;->pack([BIIZ)I

    move-result v7

    .line 261
    .local v7, "orientation":I
    packed-switch v7, :pswitch_data_be

    :pswitch_79
    goto :goto_8

    .line 265
    :pswitch_7a
    const/16 v9, 0xb4

    goto :goto_8

    .line 224
    .end local v0    # "count":I
    .end local v3    # "littleEndian":Z
    .end local v7    # "orientation":I
    .end local v8    # "tag":I
    .restart local v4    # "marker":I
    :cond_7d
    invoke-static {p0, v5, v12, v9}, Lorg/telegram/messenger/camera/CameraController;->pack([BIIZ)I

    move-result v2

    .line 225
    if-lt v2, v12, :cond_8

    add-int v10, v5, v2

    array-length v11, p0

    if-gt v10, v11, :cond_8

    .line 230
    const/16 v10, 0xe1

    if-ne v4, v10, :cond_a6

    if-lt v2, v14, :cond_a6

    add-int/lit8 v10, v5, 0x2

    .line 231
    invoke-static {p0, v10, v13, v9}, Lorg/telegram/messenger/camera/CameraController;->pack([BIIZ)I

    move-result v10

    const v11, 0x45786966

    if-ne v10, v11, :cond_a6

    add-int/lit8 v10, v5, 0x6

    .line 232
    invoke-static {p0, v10, v12, v9}, Lorg/telegram/messenger/camera/CameraController;->pack([BIIZ)I

    move-result v10

    if-nez v10, :cond_a6

    .line 233
    add-int/lit8 v5, v5, 0x8

    .line 234
    add-int/lit8 v2, v2, -0x8

    .line 235
    goto :goto_34

    .line 238
    :cond_a6
    add-int/2addr v5, v2

    .line 239
    const/4 v2, 0x0

    .line 240
    goto/16 :goto_b

    .end local v4    # "marker":I
    .restart local v8    # "tag":I
    :cond_aa
    move v3, v9

    .line 247
    goto :goto_49

    .line 267
    .restart local v0    # "count":I
    .restart local v3    # "littleEndian":Z
    .restart local v7    # "orientation":I
    :pswitch_ac
    const/16 v9, 0x5a

    goto/16 :goto_8

    .line 269
    :pswitch_b0
    const/16 v9, 0x10e

    goto/16 :goto_8

    .line 273
    .end local v7    # "orientation":I
    :cond_b4
    add-int/lit8 v5, v5, 0xc

    .line 274
    add-int/lit8 v2, v2, -0xc

    move v1, v0

    .end local v0    # "count":I
    .restart local v1    # "count":I
    goto :goto_60

    .end local v1    # "count":I
    .end local v3    # "littleEndian":Z
    .end local v5    # "offset":I
    .end local v8    # "tag":I
    .restart local v6    # "offset":I
    :cond_ba
    move v5, v6

    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    goto/16 :goto_34

    .line 261
    nop

    :pswitch_data_be
    .packed-switch 0x1
        :pswitch_8
        :pswitch_79
        :pswitch_7a
        :pswitch_79
        :pswitch_79
        :pswitch_ac
        :pswitch_79
        :pswitch_b0
    .end packed-switch
.end method

.method private static pack([BIIZ)I
    .registers 9
    .param p0, "bytes"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .param p3, "littleEndian"    # Z

    .prologue
    .line 281
    const/4 v1, 0x1

    .line 282
    .local v1, "step":I
    if-eqz p3, :cond_7

    .line 283
    add-int/lit8 v3, p2, -0x1

    add-int/2addr p1, v3

    .line 284
    const/4 v1, -0x1

    .line 287
    :cond_7
    const/4 v2, 0x0

    .local v2, "value":I
    move v0, p2

    .line 288
    .end local p2    # "length":I
    .local v0, "length":I
    :goto_9
    add-int/lit8 p2, v0, -0x1

    .end local v0    # "length":I
    .restart local p2    # "length":I
    if-lez v0, :cond_18

    .line 289
    shl-int/lit8 v3, v2, 0x8

    aget-byte v4, p0, p1

    and-int/lit16 v4, v4, 0xff

    or-int v2, v3, v4

    .line 290
    add-int/2addr p1, v1

    move v0, p2

    .end local p2    # "length":I
    .restart local v0    # "length":I
    goto :goto_9

    .line 292
    .end local v0    # "length":I
    .restart local p2    # "length":I
    :cond_18
    return v2
.end method


# virtual methods
.method public cleanup()V
    .registers 3

    .prologue
    .line 140
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraController;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lorg/telegram/messenger/camera/CameraController$2;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/camera/CameraController$2;-><init>(Lorg/telegram/messenger/camera/CameraController;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 158
    return-void
.end method

.method public close(Lorg/telegram/messenger/camera/CameraSession;Ljava/util/concurrent/Semaphore;Ljava/lang/Runnable;)V
    .registers 7
    .param p1, "session"    # Lorg/telegram/messenger/camera/CameraSession;
    .param p2, "semaphore"    # Ljava/util/concurrent/Semaphore;
    .param p3, "beforeDestroyRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 161
    invoke-virtual {p1}, Lorg/telegram/messenger/camera/CameraSession;->destroy()V

    .line 162
    iget-object v1, p0, Lorg/telegram/messenger/camera/CameraController;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v2, Lorg/telegram/messenger/camera/CameraController$3;

    invoke-direct {v2, p0, p3, p1, p2}, Lorg/telegram/messenger/camera/CameraController$3;-><init>(Lorg/telegram/messenger/camera/CameraController;Ljava/lang/Runnable;Lorg/telegram/messenger/camera/CameraSession;Ljava/util/concurrent/Semaphore;)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 188
    if-eqz p2, :cond_12

    .line 190
    :try_start_f
    invoke-virtual {p2}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_12} :catch_13

    .line 195
    :cond_12
    :goto_12
    return-void

    .line 191
    :catch_13
    move-exception v0

    .line 192
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_12
.end method

.method public getCameras()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/camera/CameraInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 198
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraController;->cameraInfos:Ljava/util/ArrayList;

    return-object v0
.end method

.method public initCamera()V
    .registers 3

    .prologue
    .line 81
    iget-boolean v0, p0, Lorg/telegram/messenger/camera/CameraController;->cameraInitied:Z

    if-eqz v0, :cond_5

    .line 133
    :goto_4
    return-void

    .line 84
    :cond_5
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraController;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lorg/telegram/messenger/camera/CameraController$1;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/camera/CameraController$1;-><init>(Lorg/telegram/messenger/camera/CameraController;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_4
.end method

.method public isCameraInitied()Z
    .registers 2

    .prologue
    .line 136
    iget-boolean v0, p0, Lorg/telegram/messenger/camera/CameraController;->cameraInitied:Z

    if-eqz v0, :cond_12

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraController;->cameraInfos:Ljava/util/ArrayList;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraController;->cameraInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public onInfo(Landroid/media/MediaRecorder;II)V
    .registers 8
    .param p1, "mediaRecorder"    # Landroid/media/MediaRecorder;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    const/4 v3, 0x1

    .line 511
    const/16 v2, 0x320

    if-eq p2, v2, :cond_b

    const/16 v2, 0x321

    if-eq p2, v2, :cond_b

    if-ne p2, v3, :cond_2a

    .line 512
    :cond_b
    iget-object v1, p0, Lorg/telegram/messenger/camera/CameraController;->recorder:Landroid/media/MediaRecorder;

    .line 513
    .local v1, "tempRecorder":Landroid/media/MediaRecorder;
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/telegram/messenger/camera/CameraController;->recorder:Landroid/media/MediaRecorder;

    .line 514
    if-eqz v1, :cond_18

    .line 515
    invoke-virtual {v1}, Landroid/media/MediaRecorder;->stop()V

    .line 516
    invoke-virtual {v1}, Landroid/media/MediaRecorder;->release()V

    .line 518
    :cond_18
    iget-object v2, p0, Lorg/telegram/messenger/camera/CameraController;->onVideoTakeCallback:Lorg/telegram/messenger/camera/CameraController$VideoTakeCallback;

    if-eqz v2, :cond_2a

    .line 519
    iget-object v2, p0, Lorg/telegram/messenger/camera/CameraController;->recordedFile:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 520
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v2, Lorg/telegram/messenger/camera/CameraController$8;

    invoke-direct {v2, p0, v0}, Lorg/telegram/messenger/camera/CameraController$8;-><init>(Lorg/telegram/messenger/camera/CameraController;Landroid/graphics/Bitmap;)V

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 531
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "tempRecorder":Landroid/media/MediaRecorder;
    :cond_2a
    return-void
.end method

.method public open(Lorg/telegram/messenger/camera/CameraSession;Landroid/graphics/SurfaceTexture;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .registers 12
    .param p1, "session"    # Lorg/telegram/messenger/camera/CameraSession;
    .param p2, "texture"    # Landroid/graphics/SurfaceTexture;
    .param p3, "callback"    # Ljava/lang/Runnable;
    .param p4, "prestartCallback"    # Ljava/lang/Runnable;

    .prologue
    .line 396
    if-eqz p1, :cond_4

    if-nez p2, :cond_5

    .line 441
    :cond_4
    :goto_4
    return-void

    .line 399
    :cond_5
    iget-object v6, p0, Lorg/telegram/messenger/camera/CameraController;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v0, Lorg/telegram/messenger/camera/CameraController$6;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p4

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/camera/CameraController$6;-><init>(Lorg/telegram/messenger/camera/CameraController;Lorg/telegram/messenger/camera/CameraSession;Ljava/lang/Runnable;Landroid/graphics/SurfaceTexture;Ljava/lang/Runnable;)V

    invoke-virtual {v6, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_4
.end method

.method public recordVideo(Lorg/telegram/messenger/camera/CameraSession;Ljava/io/File;Lorg/telegram/messenger/camera/CameraController$VideoTakeCallback;Ljava/lang/Runnable;Z)V
    .registers 16
    .param p1, "session"    # Lorg/telegram/messenger/camera/CameraSession;
    .param p2, "path"    # Ljava/io/File;
    .param p3, "callback"    # Lorg/telegram/messenger/camera/CameraController$VideoTakeCallback;
    .param p4, "onVideoStartRecord"    # Ljava/lang/Runnable;
    .param p5, "smallVideo"    # Z

    .prologue
    .line 444
    if-nez p1, :cond_3

    .line 507
    :goto_2
    return-void

    .line 448
    :cond_3
    iget-object v6, p1, Lorg/telegram/messenger/camera/CameraSession;->cameraInfo:Lorg/telegram/messenger/camera/CameraInfo;

    .line 449
    .local v6, "info":Lorg/telegram/messenger/camera/CameraInfo;
    iget-object v2, v6, Lorg/telegram/messenger/camera/CameraInfo;->camera:Landroid/hardware/Camera;

    .line 450
    .local v2, "camera":Landroid/hardware/Camera;
    iget-object v9, p0, Lorg/telegram/messenger/camera/CameraController;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v0, Lorg/telegram/messenger/camera/CameraController$7;

    move-object v1, p0

    move-object v3, p1

    move v4, p5

    move-object v5, p2

    move-object v7, p3

    move-object v8, p4

    invoke-direct/range {v0 .. v8}, Lorg/telegram/messenger/camera/CameraController$7;-><init>(Lorg/telegram/messenger/camera/CameraController;Landroid/hardware/Camera;Lorg/telegram/messenger/camera/CameraSession;ZLjava/io/File;Lorg/telegram/messenger/camera/CameraInfo;Lorg/telegram/messenger/camera/CameraController$VideoTakeCallback;Ljava/lang/Runnable;)V

    invoke-virtual {v9, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_2
.end method

.method public startPreview(Lorg/telegram/messenger/camera/CameraSession;)V
    .registers 4
    .param p1, "session"    # Lorg/telegram/messenger/camera/CameraSession;

    .prologue
    .line 371
    if-nez p1, :cond_3

    .line 393
    :goto_2
    return-void

    .line 374
    :cond_3
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraController;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lorg/telegram/messenger/camera/CameraController$5;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/camera/CameraController$5;-><init>(Lorg/telegram/messenger/camera/CameraController;Lorg/telegram/messenger/camera/CameraSession;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_2
.end method

.method public stopVideoRecording(Lorg/telegram/messenger/camera/CameraSession;Z)V
    .registers 5
    .param p1, "session"    # Lorg/telegram/messenger/camera/CameraSession;
    .param p2, "abandon"    # Z

    .prologue
    .line 534
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraController;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lorg/telegram/messenger/camera/CameraController$9;

    invoke-direct {v1, p0, p1, p2}, Lorg/telegram/messenger/camera/CameraController$9;-><init>(Lorg/telegram/messenger/camera/CameraController;Lorg/telegram/messenger/camera/CameraSession;Z)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 603
    return-void
.end method

.method public takePicture(Ljava/io/File;Lorg/telegram/messenger/camera/CameraSession;Ljava/lang/Runnable;)Z
    .registers 11
    .param p1, "path"    # Ljava/io/File;
    .param p2, "session"    # Lorg/telegram/messenger/camera/CameraSession;
    .param p3, "callback"    # Ljava/lang/Runnable;

    .prologue
    const/4 v3, 0x0

    .line 296
    if-nez p2, :cond_4

    .line 367
    :goto_3
    return v3

    .line 299
    :cond_4
    iget-object v2, p2, Lorg/telegram/messenger/camera/CameraSession;->cameraInfo:Lorg/telegram/messenger/camera/CameraInfo;

    .line 300
    .local v2, "info":Lorg/telegram/messenger/camera/CameraInfo;
    iget-object v0, v2, Lorg/telegram/messenger/camera/CameraInfo;->camera:Landroid/hardware/Camera;

    .line 302
    .local v0, "camera":Landroid/hardware/Camera;
    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_a
    new-instance v6, Lorg/telegram/messenger/camera/CameraController$4;

    invoke-direct {v6, p0, p1, v2, p3}, Lorg/telegram/messenger/camera/CameraController$4;-><init>(Lorg/telegram/messenger/camera/CameraController;Ljava/io/File;Lorg/telegram/messenger/camera/CameraInfo;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v4, v5, v6}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_12} :catch_14

    .line 363
    const/4 v3, 0x1

    goto :goto_3

    .line 364
    :catch_14
    move-exception v1

    .line 365
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_3
.end method
