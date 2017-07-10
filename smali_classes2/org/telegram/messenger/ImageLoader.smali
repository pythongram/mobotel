.class public Lorg/telegram/messenger/ImageLoader;
.super Ljava/lang/Object;
.source "ImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/ImageLoader$CacheImage;,
        Lorg/telegram/messenger/ImageLoader$CacheOutTask;,
        Lorg/telegram/messenger/ImageLoader$ThumbGenerateTask;,
        Lorg/telegram/messenger/ImageLoader$HttpImageTask;,
        Lorg/telegram/messenger/ImageLoader$HttpFileTask;,
        Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;
    }
.end annotation


# static fields
.field private static volatile Instance:Lorg/telegram/messenger/ImageLoader;

.field private static bytes:[B

.field private static bytesThumb:[B

.field private static header:[B

.field private static headerThumb:[B


# instance fields
.field private bitmapUseCounts:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private cacheOutQueue:Lorg/telegram/messenger/DispatchQueue;

.field private cacheThumbOutQueue:Lorg/telegram/messenger/DispatchQueue;

.field private currentHttpFileLoadTasksCount:I

.field private currentHttpTasksCount:I

.field private fileProgresses:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private httpFileLoadTasks:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lorg/telegram/messenger/ImageLoader$HttpFileTask;",
            ">;"
        }
    .end annotation
.end field

.field private httpFileLoadTasksByKeys:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/telegram/messenger/ImageLoader$HttpFileTask;",
            ">;"
        }
    .end annotation
.end field

.field private httpTasks:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lorg/telegram/messenger/ImageLoader$HttpImageTask;",
            ">;"
        }
    .end annotation
.end field

.field private ignoreRemoval:Ljava/lang/String;

.field private imageLoadQueue:Lorg/telegram/messenger/DispatchQueue;

.field private imageLoadingByKeys:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/telegram/messenger/ImageLoader$CacheImage;",
            ">;"
        }
    .end annotation
.end field

.field private imageLoadingByTag:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/telegram/messenger/ImageLoader$CacheImage;",
            ">;"
        }
    .end annotation
.end field

.field private imageLoadingByUrl:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/telegram/messenger/ImageLoader$CacheImage;",
            ">;"
        }
    .end annotation
.end field

.field private volatile lastCacheOutTime:J

.field private lastImageNum:I

.field private lastProgressUpdateTime:J

.field private memCache:Lorg/telegram/messenger/LruCache;

.field private retryHttpsTasks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private telegramPath:Ljava/io/File;

.field private thumbGenerateTasks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/telegram/messenger/ImageLoader$ThumbGenerateTask;",
            ">;"
        }
    .end annotation
.end field

.field private thumbGeneratingQueue:Lorg/telegram/messenger/DispatchQueue;

.field private waitingForQualityThumb:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;",
            ">;"
        }
    .end annotation
.end field

.field private waitingForQualityThumbByTag:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/16 v1, 0xc

    .line 73
    new-array v0, v1, [B

    sput-object v0, Lorg/telegram/messenger/ImageLoader;->header:[B

    .line 74
    new-array v0, v1, [B

    sput-object v0, Lorg/telegram/messenger/ImageLoader;->headerThumb:[B

    .line 1091
    const/4 v0, 0x0

    sput-object v0, Lorg/telegram/messenger/ImageLoader;->Instance:Lorg/telegram/messenger/ImageLoader;

    return-void
.end method

.method public constructor <init>()V
    .registers 15

    .prologue
    const-wide/16 v12, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 1106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Lorg/telegram/messenger/ImageLoader;->bitmapUseCounts:Ljava/util/HashMap;

    .line 59
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Lorg/telegram/messenger/ImageLoader;->imageLoadingByUrl:Ljava/util/HashMap;

    .line 60
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Lorg/telegram/messenger/ImageLoader;->imageLoadingByKeys:Ljava/util/HashMap;

    .line 61
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Lorg/telegram/messenger/ImageLoader;->imageLoadingByTag:Ljava/util/HashMap;

    .line 62
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Lorg/telegram/messenger/ImageLoader;->waitingForQualityThumb:Ljava/util/HashMap;

    .line 63
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Lorg/telegram/messenger/ImageLoader;->waitingForQualityThumbByTag:Ljava/util/HashMap;

    .line 64
    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    iput-object v6, p0, Lorg/telegram/messenger/ImageLoader;->httpTasks:Ljava/util/LinkedList;

    .line 65
    new-instance v6, Lorg/telegram/messenger/DispatchQueue;

    const-string v7, "cacheOutQueue"

    invoke-direct {v6, v7}, Lorg/telegram/messenger/DispatchQueue;-><init>(Ljava/lang/String;)V

    iput-object v6, p0, Lorg/telegram/messenger/ImageLoader;->cacheOutQueue:Lorg/telegram/messenger/DispatchQueue;

    .line 66
    new-instance v6, Lorg/telegram/messenger/DispatchQueue;

    const-string v7, "cacheThumbOutQueue"

    invoke-direct {v6, v7}, Lorg/telegram/messenger/DispatchQueue;-><init>(Ljava/lang/String;)V

    iput-object v6, p0, Lorg/telegram/messenger/ImageLoader;->cacheThumbOutQueue:Lorg/telegram/messenger/DispatchQueue;

    .line 67
    new-instance v6, Lorg/telegram/messenger/DispatchQueue;

    const-string v7, "thumbGeneratingQueue"

    invoke-direct {v6, v7}, Lorg/telegram/messenger/DispatchQueue;-><init>(Ljava/lang/String;)V

    iput-object v6, p0, Lorg/telegram/messenger/ImageLoader;->thumbGeneratingQueue:Lorg/telegram/messenger/DispatchQueue;

    .line 68
    new-instance v6, Lorg/telegram/messenger/DispatchQueue;

    const-string v7, "imageLoadQueue"

    invoke-direct {v6, v7}, Lorg/telegram/messenger/DispatchQueue;-><init>(Ljava/lang/String;)V

    iput-object v6, p0, Lorg/telegram/messenger/ImageLoader;->imageLoadQueue:Lorg/telegram/messenger/DispatchQueue;

    .line 69
    new-instance v6, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v6}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v6, p0, Lorg/telegram/messenger/ImageLoader;->fileProgresses:Ljava/util/concurrent/ConcurrentHashMap;

    .line 70
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Lorg/telegram/messenger/ImageLoader;->thumbGenerateTasks:Ljava/util/HashMap;

    .line 75
    iput v9, p0, Lorg/telegram/messenger/ImageLoader;->currentHttpTasksCount:I

    .line 77
    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    iput-object v6, p0, Lorg/telegram/messenger/ImageLoader;->httpFileLoadTasks:Ljava/util/LinkedList;

    .line 78
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Lorg/telegram/messenger/ImageLoader;->httpFileLoadTasksByKeys:Ljava/util/HashMap;

    .line 79
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Lorg/telegram/messenger/ImageLoader;->retryHttpsTasks:Ljava/util/HashMap;

    .line 80
    iput v9, p0, Lorg/telegram/messenger/ImageLoader;->currentHttpFileLoadTasksCount:I

    .line 82
    iput-object v10, p0, Lorg/telegram/messenger/ImageLoader;->ignoreRemoval:Ljava/lang/String;

    .line 84
    iput-wide v12, p0, Lorg/telegram/messenger/ImageLoader;->lastCacheOutTime:J

    .line 85
    iput v9, p0, Lorg/telegram/messenger/ImageLoader;->lastImageNum:I

    .line 86
    iput-wide v12, p0, Lorg/telegram/messenger/ImageLoader;->lastProgressUpdateTime:J

    .line 88
    iput-object v10, p0, Lorg/telegram/messenger/ImageLoader;->telegramPath:Ljava/io/File;

    .line 1108
    iget-object v6, p0, Lorg/telegram/messenger/ImageLoader;->cacheOutQueue:Lorg/telegram/messenger/DispatchQueue;

    invoke-virtual {v6, v8}, Lorg/telegram/messenger/DispatchQueue;->setPriority(I)V

    .line 1109
    iget-object v6, p0, Lorg/telegram/messenger/ImageLoader;->cacheThumbOutQueue:Lorg/telegram/messenger/DispatchQueue;

    invoke-virtual {v6, v8}, Lorg/telegram/messenger/DispatchQueue;->setPriority(I)V

    .line 1110
    iget-object v6, p0, Lorg/telegram/messenger/ImageLoader;->thumbGeneratingQueue:Lorg/telegram/messenger/DispatchQueue;

    invoke-virtual {v6, v8}, Lorg/telegram/messenger/DispatchQueue;->setPriority(I)V

    .line 1111
    iget-object v6, p0, Lorg/telegram/messenger/ImageLoader;->imageLoadQueue:Lorg/telegram/messenger/DispatchQueue;

    invoke-virtual {v6, v8}, Lorg/telegram/messenger/DispatchQueue;->setPriority(I)V

    .line 1113
    const/16 v7, 0xf

    sget-object v6, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v8, "activity"

    invoke-virtual {v6, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager;

    invoke-virtual {v6}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v6

    div-int/lit8 v6, v6, 0x7

    invoke-static {v7, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    mul-int/lit16 v6, v6, 0x400

    mul-int/lit16 v1, v6, 0x400

    .line 1115
    .local v1, "cacheSize":I
    new-instance v6, Lorg/telegram/messenger/ImageLoader$1;

    invoke-direct {v6, p0, v1}, Lorg/telegram/messenger/ImageLoader$1;-><init>(Lorg/telegram/messenger/ImageLoader;I)V

    iput-object v6, p0, Lorg/telegram/messenger/ImageLoader;->memCache:Lorg/telegram/messenger/LruCache;

    .line 1136
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v6

    new-instance v7, Lorg/telegram/messenger/ImageLoader$2;

    invoke-direct {v7, p0}, Lorg/telegram/messenger/ImageLoader$2;-><init>(Lorg/telegram/messenger/ImageLoader;)V

    invoke-virtual {v6, v7}, Lorg/telegram/messenger/FileLoader;->setDelegate(Lorg/telegram/messenger/FileLoader$FileLoaderDelegate;)V

    .line 1230
    new-instance v5, Lorg/telegram/messenger/ImageLoader$3;

    invoke-direct {v5, p0}, Lorg/telegram/messenger/ImageLoader$3;-><init>(Lorg/telegram/messenger/ImageLoader;)V

    .line 1247
    .local v5, "receiver":Landroid/content/BroadcastReceiver;
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 1248
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string v6, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v3, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1249
    const-string v6, "android.intent.action.MEDIA_CHECKING"

    invoke-virtual {v3, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1250
    const-string v6, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v3, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1251
    const-string v6, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v3, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1252
    const-string v6, "android.intent.action.MEDIA_NOFS"

    invoke-virtual {v3, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1253
    const-string v6, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v3, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1254
    const-string v6, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v3, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1255
    const-string v6, "android.intent.action.MEDIA_UNMOUNTABLE"

    invoke-virtual {v3, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1256
    const-string v6, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v3, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1257
    const-string v6, "file"

    invoke-virtual {v3, v6}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1258
    sget-object v6, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v6, v5, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1260
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 1261
    .local v4, "mediaDirs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/io/File;>;"
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 1262
    .local v0, "cachePath":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-nez v6, :cond_122

    .line 1264
    :try_start_11f
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
    :try_end_122
    .catch Ljava/lang/Exception; {:try_start_11f .. :try_end_122} :catch_13f

    .line 1270
    :cond_122
    :goto_122
    :try_start_122
    new-instance v6, Ljava/io/File;

    const-string v7, ".nomedia"

    invoke-direct {v6, v0, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->createNewFile()Z
    :try_end_12c
    .catch Ljava/lang/Exception; {:try_start_122 .. :try_end_12c} :catch_144

    .line 1274
    :goto_12c
    const/4 v6, 0x4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1275
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v6

    invoke-virtual {v6, v4}, Lorg/telegram/messenger/FileLoader;->setMediaDirs(Ljava/util/HashMap;)V

    .line 1277
    invoke-virtual {p0}, Lorg/telegram/messenger/ImageLoader;->checkMediaPaths()V

    .line 1278
    return-void

    .line 1265
    :catch_13f
    move-exception v2

    .line 1266
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_122

    .line 1271
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_144
    move-exception v2

    .line 1272
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_12c
.end method

.method static synthetic access$100(Lorg/telegram/messenger/ImageLoader;)Ljava/util/concurrent/ConcurrentHashMap;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/ImageLoader;

    .prologue
    .line 55
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader;->fileProgresses:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$1100(Lorg/telegram/messenger/ImageLoader;)Lorg/telegram/messenger/LruCache;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/ImageLoader;

    .prologue
    .line 55
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader;->memCache:Lorg/telegram/messenger/LruCache;

    return-object v0
.end method

.method static synthetic access$1200()[B
    .registers 1

    .prologue
    .line 55
    sget-object v0, Lorg/telegram/messenger/ImageLoader;->headerThumb:[B

    return-object v0
.end method

.method static synthetic access$1300()[B
    .registers 1

    .prologue
    .line 55
    sget-object v0, Lorg/telegram/messenger/ImageLoader;->header:[B

    return-object v0
.end method

.method static synthetic access$1400(Lorg/telegram/messenger/ImageLoader;)J
    .registers 3
    .param p0, "x0"    # Lorg/telegram/messenger/ImageLoader;

    .prologue
    .line 55
    iget-wide v0, p0, Lorg/telegram/messenger/ImageLoader;->lastCacheOutTime:J

    return-wide v0
.end method

.method static synthetic access$1402(Lorg/telegram/messenger/ImageLoader;J)J
    .registers 4
    .param p0, "x0"    # Lorg/telegram/messenger/ImageLoader;
    .param p1, "x1"    # J

    .prologue
    .line 55
    iput-wide p1, p0, Lorg/telegram/messenger/ImageLoader;->lastCacheOutTime:J

    return-wide p1
.end method

.method static synthetic access$1500()[B
    .registers 1

    .prologue
    .line 55
    sget-object v0, Lorg/telegram/messenger/ImageLoader;->bytesThumb:[B

    return-object v0
.end method

.method static synthetic access$1502([B)[B
    .registers 1
    .param p0, "x0"    # [B

    .prologue
    .line 55
    sput-object p0, Lorg/telegram/messenger/ImageLoader;->bytesThumb:[B

    return-object p0
.end method

.method static synthetic access$1600()[B
    .registers 1

    .prologue
    .line 55
    sget-object v0, Lorg/telegram/messenger/ImageLoader;->bytes:[B

    return-object v0
.end method

.method static synthetic access$1602([B)[B
    .registers 1
    .param p0, "x0"    # [B

    .prologue
    .line 55
    sput-object p0, Lorg/telegram/messenger/ImageLoader;->bytes:[B

    return-object p0
.end method

.method static synthetic access$1800(Lorg/telegram/messenger/ImageLoader;)Ljava/util/HashMap;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/ImageLoader;

    .prologue
    .line 55
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader;->imageLoadingByTag:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1900(Lorg/telegram/messenger/ImageLoader;)Lorg/telegram/messenger/DispatchQueue;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/ImageLoader;

    .prologue
    .line 55
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader;->cacheThumbOutQueue:Lorg/telegram/messenger/DispatchQueue;

    return-object v0
.end method

.method static synthetic access$200(Lorg/telegram/messenger/ImageLoader;Lorg/telegram/messenger/ImageLoader$HttpFileTask;I)V
    .registers 3
    .param p0, "x0"    # Lorg/telegram/messenger/ImageLoader;
    .param p1, "x1"    # Lorg/telegram/messenger/ImageLoader$HttpFileTask;
    .param p2, "x2"    # I

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/ImageLoader;->runHttpFileLoadTasks(Lorg/telegram/messenger/ImageLoader$HttpFileTask;I)V

    return-void
.end method

.method static synthetic access$2000(Lorg/telegram/messenger/ImageLoader;)Lorg/telegram/messenger/DispatchQueue;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/ImageLoader;

    .prologue
    .line 55
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader;->cacheOutQueue:Lorg/telegram/messenger/DispatchQueue;

    return-object v0
.end method

.method static synthetic access$2100(Lorg/telegram/messenger/ImageLoader;)Ljava/util/LinkedList;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/ImageLoader;

    .prologue
    .line 55
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader;->httpTasks:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$2200(Lorg/telegram/messenger/ImageLoader;)Ljava/util/HashMap;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/ImageLoader;

    .prologue
    .line 55
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader;->imageLoadingByUrl:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$2300(Lorg/telegram/messenger/ImageLoader;)Ljava/util/HashMap;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/ImageLoader;

    .prologue
    .line 55
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader;->imageLoadingByKeys:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$2400(Lorg/telegram/messenger/ImageLoader;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/ImageLoader;

    .prologue
    .line 55
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader;->ignoreRemoval:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2500(Lorg/telegram/messenger/ImageLoader;)Ljava/util/HashMap;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/ImageLoader;

    .prologue
    .line 55
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader;->bitmapUseCounts:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$2600(Lorg/telegram/messenger/ImageLoader;)J
    .registers 3
    .param p0, "x0"    # Lorg/telegram/messenger/ImageLoader;

    .prologue
    .line 55
    iget-wide v0, p0, Lorg/telegram/messenger/ImageLoader;->lastProgressUpdateTime:J

    return-wide v0
.end method

.method static synthetic access$2602(Lorg/telegram/messenger/ImageLoader;J)J
    .registers 4
    .param p0, "x0"    # Lorg/telegram/messenger/ImageLoader;
    .param p1, "x1"    # J

    .prologue
    .line 55
    iput-wide p1, p0, Lorg/telegram/messenger/ImageLoader;->lastProgressUpdateTime:J

    return-wide p1
.end method

.method static synthetic access$2700(Lorg/telegram/messenger/ImageLoader;)Ljava/io/File;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/ImageLoader;

    .prologue
    .line 55
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader;->telegramPath:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$2800(Lorg/telegram/messenger/ImageLoader;Ljava/lang/String;I)V
    .registers 3
    .param p0, "x0"    # Lorg/telegram/messenger/ImageLoader;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/ImageLoader;->fileDidFailedLoad(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$3000(Lorg/telegram/messenger/ImageLoader;Ljava/lang/Integer;)V
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/ImageLoader;
    .param p1, "x1"    # Ljava/lang/Integer;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lorg/telegram/messenger/ImageLoader;->removeFromWaitingForThumb(Ljava/lang/Integer;)V

    return-void
.end method

.method static synthetic access$3100(Lorg/telegram/messenger/ImageLoader;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$FileLocation;)V
    .registers 4
    .param p0, "x0"    # Lorg/telegram/messenger/ImageLoader;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Lorg/telegram/tgnet/TLRPC$FileLocation;

    .prologue
    .line 55
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/ImageLoader;->replaceImageInCacheInternal(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$FileLocation;)V

    return-void
.end method

.method static synthetic access$3200(Lorg/telegram/messenger/ImageLoader;)Ljava/util/HashMap;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/ImageLoader;

    .prologue
    .line 55
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader;->waitingForQualityThumb:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$3600(Lorg/telegram/messenger/ImageLoader;)Ljava/util/HashMap;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/ImageLoader;

    .prologue
    .line 55
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader;->waitingForQualityThumbByTag:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$3700(Lorg/telegram/messenger/ImageLoader;ILjava/io/File;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;)V
    .registers 5
    .param p0, "x0"    # Lorg/telegram/messenger/ImageLoader;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/io/File;
    .param p3, "x3"    # Lorg/telegram/tgnet/TLRPC$FileLocation;
    .param p4, "x4"    # Ljava/lang/String;

    .prologue
    .line 55
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/ImageLoader;->generateThumb(ILjava/io/File;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lorg/telegram/messenger/ImageLoader;Ljava/lang/String;Ljava/io/File;I)V
    .registers 4
    .param p0, "x0"    # Lorg/telegram/messenger/ImageLoader;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/io/File;
    .param p3, "x3"    # I

    .prologue
    .line 55
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/ImageLoader;->fileDidLoaded(Ljava/lang/String;Ljava/io/File;I)V

    return-void
.end method

.method static synthetic access$4000(Lorg/telegram/messenger/ImageLoader;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/ImageLoader;

    .prologue
    .line 55
    iget v0, p0, Lorg/telegram/messenger/ImageLoader;->currentHttpFileLoadTasksCount:I

    return v0
.end method

.method static synthetic access$4008(Lorg/telegram/messenger/ImageLoader;)I
    .registers 3
    .param p0, "x0"    # Lorg/telegram/messenger/ImageLoader;

    .prologue
    .line 55
    iget v0, p0, Lorg/telegram/messenger/ImageLoader;->currentHttpFileLoadTasksCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/messenger/ImageLoader;->currentHttpFileLoadTasksCount:I

    return v0
.end method

.method static synthetic access$4010(Lorg/telegram/messenger/ImageLoader;)I
    .registers 3
    .param p0, "x0"    # Lorg/telegram/messenger/ImageLoader;

    .prologue
    .line 55
    iget v0, p0, Lorg/telegram/messenger/ImageLoader;->currentHttpFileLoadTasksCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lorg/telegram/messenger/ImageLoader;->currentHttpFileLoadTasksCount:I

    return v0
.end method

.method static synthetic access$4400(Lorg/telegram/messenger/ImageLoader;)Ljava/util/LinkedList;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/ImageLoader;

    .prologue
    .line 55
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader;->httpFileLoadTasks:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$4500(Lorg/telegram/messenger/ImageLoader;)Ljava/util/HashMap;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/ImageLoader;

    .prologue
    .line 55
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader;->retryHttpsTasks:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$4600(Lorg/telegram/messenger/ImageLoader;)Ljava/util/HashMap;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/ImageLoader;

    .prologue
    .line 55
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader;->httpFileLoadTasksByKeys:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$500(Lorg/telegram/messenger/ImageLoader;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/ImageLoader;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lorg/telegram/messenger/ImageLoader;->httpFileLoadError(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lorg/telegram/messenger/ImageLoader;Z)V
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/ImageLoader;
    .param p1, "x1"    # Z

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lorg/telegram/messenger/ImageLoader;->runHttpTasks(Z)V

    return-void
.end method

.method static synthetic access$700(Lorg/telegram/messenger/ImageLoader;)Lorg/telegram/messenger/DispatchQueue;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/ImageLoader;

    .prologue
    .line 55
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader;->imageLoadQueue:Lorg/telegram/messenger/DispatchQueue;

    return-object v0
.end method

.method static synthetic access$800(Lorg/telegram/messenger/ImageLoader;)Ljava/util/HashMap;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/ImageLoader;

    .prologue
    .line 55
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader;->thumbGenerateTasks:Ljava/util/HashMap;

    return-object v0
.end method

.method private canMoveFiles(Ljava/io/File;Ljava/io/File;I)Z
    .registers 15
    .param p1, "from"    # Ljava/io/File;
    .param p2, "to"    # Ljava/io/File;
    .param p3, "type"    # I

    .prologue
    const/4 v9, 0x1

    .line 1378
    const/4 v5, 0x0

    .line 1380
    .local v5, "file":Ljava/io/RandomAccessFile;
    const/4 v7, 0x0

    .line 1381
    .local v7, "srcFile":Ljava/io/File;
    const/4 v2, 0x0

    .line 1382
    .local v2, "dstFile":Ljava/io/File;
    if-nez p3, :cond_3d

    .line 1383
    :try_start_6
    new-instance v8, Ljava/io/File;

    const-string v10, "000000000_999999_temp.jpg"

    invoke-direct {v8, p1, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_d} :catch_89
    .catchall {:try_start_6 .. :try_end_d} :catchall_98

    .line 1384
    .end local v7    # "srcFile":Ljava/io/File;
    .local v8, "srcFile":Ljava/io/File;
    :try_start_d
    new-instance v3, Ljava/io/File;

    const-string v10, "000000000_999999.jpg"

    invoke-direct {v3, p2, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_14} :catch_a7
    .catchall {:try_start_d .. :try_end_14} :catchall_98

    .end local v2    # "dstFile":Ljava/io/File;
    .local v3, "dstFile":Ljava/io/File;
    move-object v2, v3

    .end local v3    # "dstFile":Ljava/io/File;
    .restart local v2    # "dstFile":Ljava/io/File;
    move-object v7, v8

    .line 1395
    .end local v8    # "srcFile":Ljava/io/File;
    .restart local v7    # "srcFile":Ljava/io/File;
    :cond_16
    :goto_16
    const/16 v10, 0x400

    :try_start_18
    new-array v0, v10, [B

    .line 1396
    .local v0, "buffer":[B
    invoke-virtual {v7}, Ljava/io/File;->createNewFile()Z

    .line 1397
    new-instance v6, Ljava/io/RandomAccessFile;

    const-string v10, "rws"

    invoke-direct {v6, v7, v10}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_24} :catch_89
    .catchall {:try_start_18 .. :try_end_24} :catchall_98

    .line 1398
    .end local v5    # "file":Ljava/io/RandomAccessFile;
    .local v6, "file":Ljava/io/RandomAccessFile;
    :try_start_24
    invoke-virtual {v6, v0}, Ljava/io/RandomAccessFile;->write([B)V

    .line 1399
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_2a} :catch_aa
    .catchall {:try_start_24 .. :try_end_2a} :catchall_a4

    .line 1400
    const/4 v5, 0x0

    .line 1401
    .end local v6    # "file":Ljava/io/RandomAccessFile;
    .restart local v5    # "file":Ljava/io/RandomAccessFile;
    :try_start_2b
    invoke-virtual {v7, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    .line 1402
    .local v1, "canRename":Z
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 1403
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_35} :catch_89
    .catchall {:try_start_2b .. :try_end_35} :catchall_98

    .line 1404
    if-eqz v1, :cond_7d

    .line 1411
    if-eqz v5, :cond_3c

    .line 1412
    :try_start_39
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_3c} :catch_78

    .line 1418
    .end local v0    # "buffer":[B
    .end local v1    # "canRename":Z
    :cond_3c
    :goto_3c
    return v9

    .line 1385
    :cond_3d
    const/4 v10, 0x3

    if-ne p3, v10, :cond_51

    .line 1386
    :try_start_40
    new-instance v8, Ljava/io/File;

    const-string v10, "000000000_999999_temp.doc"

    invoke-direct {v8, p1, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_47} :catch_89
    .catchall {:try_start_40 .. :try_end_47} :catchall_98

    .line 1387
    .end local v7    # "srcFile":Ljava/io/File;
    .restart local v8    # "srcFile":Ljava/io/File;
    :try_start_47
    new-instance v3, Ljava/io/File;

    const-string v10, "000000000_999999.doc"

    invoke-direct {v3, p2, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_4e} :catch_a7
    .catchall {:try_start_47 .. :try_end_4e} :catchall_98

    .end local v2    # "dstFile":Ljava/io/File;
    .restart local v3    # "dstFile":Ljava/io/File;
    move-object v2, v3

    .end local v3    # "dstFile":Ljava/io/File;
    .restart local v2    # "dstFile":Ljava/io/File;
    move-object v7, v8

    .end local v8    # "srcFile":Ljava/io/File;
    .restart local v7    # "srcFile":Ljava/io/File;
    goto :goto_16

    .line 1388
    :cond_51
    if-ne p3, v9, :cond_64

    .line 1389
    :try_start_53
    new-instance v8, Ljava/io/File;

    const-string v10, "000000000_999999_temp.ogg"

    invoke-direct {v8, p1, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_5a} :catch_89
    .catchall {:try_start_53 .. :try_end_5a} :catchall_98

    .line 1390
    .end local v7    # "srcFile":Ljava/io/File;
    .restart local v8    # "srcFile":Ljava/io/File;
    :try_start_5a
    new-instance v3, Ljava/io/File;

    const-string v10, "000000000_999999.ogg"

    invoke-direct {v3, p2, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_61} :catch_a7
    .catchall {:try_start_5a .. :try_end_61} :catchall_98

    .end local v2    # "dstFile":Ljava/io/File;
    .restart local v3    # "dstFile":Ljava/io/File;
    move-object v2, v3

    .end local v3    # "dstFile":Ljava/io/File;
    .restart local v2    # "dstFile":Ljava/io/File;
    move-object v7, v8

    .end local v8    # "srcFile":Ljava/io/File;
    .restart local v7    # "srcFile":Ljava/io/File;
    goto :goto_16

    .line 1391
    :cond_64
    const/4 v10, 0x2

    if-ne p3, v10, :cond_16

    .line 1392
    :try_start_67
    new-instance v8, Ljava/io/File;

    const-string v10, "000000000_999999_temp.mp4"

    invoke-direct {v8, p1, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_6e} :catch_89
    .catchall {:try_start_67 .. :try_end_6e} :catchall_98

    .line 1393
    .end local v7    # "srcFile":Ljava/io/File;
    .restart local v8    # "srcFile":Ljava/io/File;
    :try_start_6e
    new-instance v3, Ljava/io/File;

    const-string v10, "000000000_999999.mp4"

    invoke-direct {v3, p2, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_75} :catch_a7
    .catchall {:try_start_6e .. :try_end_75} :catchall_98

    .end local v2    # "dstFile":Ljava/io/File;
    .restart local v3    # "dstFile":Ljava/io/File;
    move-object v2, v3

    .end local v3    # "dstFile":Ljava/io/File;
    .restart local v2    # "dstFile":Ljava/io/File;
    move-object v7, v8

    .end local v8    # "srcFile":Ljava/io/File;
    .restart local v7    # "srcFile":Ljava/io/File;
    goto :goto_16

    .line 1414
    .restart local v0    # "buffer":[B
    .restart local v1    # "canRename":Z
    :catch_78
    move-exception v4

    .line 1415
    .local v4, "e":Ljava/lang/Exception;
    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_3c

    .line 1411
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_7d
    if-eqz v5, :cond_82

    .line 1412
    :try_start_7f
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_82
    .catch Ljava/lang/Exception; {:try_start_7f .. :try_end_82} :catch_84

    .line 1418
    .end local v0    # "buffer":[B
    .end local v1    # "canRename":Z
    :cond_82
    :goto_82
    const/4 v9, 0x0

    goto :goto_3c

    .line 1414
    .restart local v0    # "buffer":[B
    .restart local v1    # "canRename":Z
    :catch_84
    move-exception v4

    .line 1415
    .restart local v4    # "e":Ljava/lang/Exception;
    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_82

    .line 1407
    .end local v0    # "buffer":[B
    .end local v1    # "canRename":Z
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_89
    move-exception v4

    .line 1408
    .restart local v4    # "e":Ljava/lang/Exception;
    :goto_8a
    :try_start_8a
    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_8d
    .catchall {:try_start_8a .. :try_end_8d} :catchall_98

    .line 1411
    if-eqz v5, :cond_82

    .line 1412
    :try_start_8f
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_92
    .catch Ljava/lang/Exception; {:try_start_8f .. :try_end_92} :catch_93

    goto :goto_82

    .line 1414
    :catch_93
    move-exception v4

    .line 1415
    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_82

    .line 1410
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v7    # "srcFile":Ljava/io/File;
    :catchall_98
    move-exception v9

    .line 1411
    :goto_99
    if-eqz v5, :cond_9e

    .line 1412
    :try_start_9b
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_9e
    .catch Ljava/lang/Exception; {:try_start_9b .. :try_end_9e} :catch_9f

    .line 1416
    :cond_9e
    :goto_9e
    throw v9

    .line 1414
    :catch_9f
    move-exception v4

    .line 1415
    .restart local v4    # "e":Ljava/lang/Exception;
    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_9e

    .line 1410
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v5    # "file":Ljava/io/RandomAccessFile;
    .restart local v0    # "buffer":[B
    .restart local v6    # "file":Ljava/io/RandomAccessFile;
    .restart local v7    # "srcFile":Ljava/io/File;
    :catchall_a4
    move-exception v9

    move-object v5, v6

    .end local v6    # "file":Ljava/io/RandomAccessFile;
    .restart local v5    # "file":Ljava/io/RandomAccessFile;
    goto :goto_99

    .line 1407
    .end local v0    # "buffer":[B
    .end local v7    # "srcFile":Ljava/io/File;
    .restart local v8    # "srcFile":Ljava/io/File;
    :catch_a7
    move-exception v4

    move-object v7, v8

    .end local v8    # "srcFile":Ljava/io/File;
    .restart local v7    # "srcFile":Ljava/io/File;
    goto :goto_8a

    .end local v5    # "file":Ljava/io/RandomAccessFile;
    .restart local v0    # "buffer":[B
    .restart local v6    # "file":Ljava/io/RandomAccessFile;
    :catch_aa
    move-exception v4

    move-object v5, v6

    .end local v6    # "file":Ljava/io/RandomAccessFile;
    .restart local v5    # "file":Ljava/io/RandomAccessFile;
    goto :goto_8a
.end method

.method private createLoadOperationForImageReceiver(Lorg/telegram/messenger/ImageReceiver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Ljava/lang/String;IZI)V
    .registers 31
    .param p1, "imageReceiver"    # Lorg/telegram/messenger/ImageReceiver;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "ext"    # Ljava/lang/String;
    .param p5, "imageLocation"    # Lorg/telegram/tgnet/TLObject;
    .param p6, "httpLocation"    # Ljava/lang/String;
    .param p7, "filter"    # Ljava/lang/String;
    .param p8, "size"    # I
    .param p9, "cacheOnly"    # Z
    .param p10, "thumb"    # I

    .prologue
    .line 1615
    if-eqz p1, :cond_6

    if-eqz p3, :cond_6

    if-nez p2, :cond_7

    .line 1782
    :cond_6
    :goto_6
    return-void

    .line 1618
    :cond_7
    if-eqz p10, :cond_71

    const/4 v2, 0x1

    :goto_a
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/ImageReceiver;->getTag(Z)Ljava/lang/Integer;

    move-result-object v18

    .line 1619
    .local v18, "TAG":Ljava/lang/Integer;
    if-nez v18, :cond_3c

    .line 1620
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/ImageLoader;->lastImageNum:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    if-eqz p10, :cond_73

    const/4 v2, 0x1

    :goto_1d
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/ImageReceiver;->setTag(Ljava/lang/Integer;Z)V

    .line 1621
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/ImageLoader;->lastImageNum:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/messenger/ImageLoader;->lastImageNum:I

    .line 1622
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/ImageLoader;->lastImageNum:I

    const v3, 0x7fffffff

    if-ne v2, v3, :cond_3c

    .line 1623
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/messenger/ImageLoader;->lastImageNum:I

    .line 1627
    :cond_3c
    move-object/from16 v7, v18

    .line 1628
    .local v7, "finalTag":Ljava/lang/Integer;
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/ImageReceiver;->isNeedsQualityThumb()Z

    move-result v11

    .line 1629
    .local v11, "finalIsNeedsQualityThumb":Z
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/ImageReceiver;->getParentMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v12

    .line 1630
    .local v12, "parentMessageObject":Lorg/telegram/messenger/MessageObject;
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/ImageReceiver;->isShouldGenerateQualityThumb()Z

    move-result v14

    .line 1631
    .local v14, "shouldGenerateQualityThumb":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader;->imageLoadQueue:Lorg/telegram/messenger/DispatchQueue;

    move-object/from16 v19, v0

    new-instance v2, Lorg/telegram/messenger/ImageLoader$7;

    move-object/from16 v3, p0

    move/from16 v4, p10

    move-object/from16 v5, p3

    move-object/from16 v6, p2

    move-object/from16 v8, p1

    move-object/from16 v9, p7

    move-object/from16 v10, p6

    move-object/from16 v13, p5

    move/from16 v15, p9

    move/from16 v16, p8

    move-object/from16 v17, p4

    invoke-direct/range {v2 .. v17}, Lorg/telegram/messenger/ImageLoader$7;-><init>(Lorg/telegram/messenger/ImageLoader;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lorg/telegram/messenger/ImageReceiver;Ljava/lang/String;Ljava/lang/String;ZLorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLObject;ZZILjava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_6

    .line 1618
    .end local v7    # "finalTag":Ljava/lang/Integer;
    .end local v11    # "finalIsNeedsQualityThumb":Z
    .end local v12    # "parentMessageObject":Lorg/telegram/messenger/MessageObject;
    .end local v14    # "shouldGenerateQualityThumb":Z
    .end local v18    # "TAG":Ljava/lang/Integer;
    :cond_71
    const/4 v2, 0x0

    goto :goto_a

    .line 1620
    .restart local v18    # "TAG":Ljava/lang/Integer;
    :cond_73
    const/4 v2, 0x0

    goto :goto_1d
.end method

.method private fileDidFailedLoad(Ljava/lang/String;I)V
    .registers 5
    .param p1, "location"    # Ljava/lang/String;
    .param p2, "canceled"    # I

    .prologue
    .line 1965
    const/4 v0, 0x1

    if-ne p2, v0, :cond_4

    .line 1977
    :goto_3
    return-void

    .line 1968
    :cond_4
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader;->imageLoadQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/ImageLoader$10;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/ImageLoader$10;-><init>(Lorg/telegram/messenger/ImageLoader;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_3
.end method

.method private fileDidLoaded(Ljava/lang/String;Ljava/io/File;I)V
    .registers 6
    .param p1, "location"    # Ljava/lang/String;
    .param p2, "finalFile"    # Ljava/io/File;
    .param p3, "type"    # I

    .prologue
    .line 1919
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader;->imageLoadQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/ImageLoader$9;

    invoke-direct {v1, p0, p1, p3, p2}, Lorg/telegram/messenger/ImageLoader$9;-><init>(Lorg/telegram/messenger/ImageLoader;Ljava/lang/String;ILjava/io/File;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 1962
    return-void
.end method

.method public static fillPhotoSizeWithBytes(Lorg/telegram/tgnet/TLRPC$PhotoSize;)V
    .registers 8
    .param p0, "photoSize"    # Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .prologue
    .line 2198
    if-eqz p0, :cond_6

    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->bytes:[B

    if-eqz v4, :cond_7

    .line 2212
    :cond_6
    :goto_6
    return-void

    .line 2201
    :cond_7
    const/4 v4, 0x1

    invoke-static {p0, v4}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v2

    .line 2203
    .local v2, "file":Ljava/io/File;
    :try_start_c
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v4, "r"

    invoke-direct {v1, v2, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2204
    .local v1, "f":Ljava/io/RandomAccessFile;
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v4

    long-to-int v3, v4

    .line 2205
    .local v3, "len":I
    const/16 v4, 0x4e20

    if-ge v3, v4, :cond_6

    .line 2206
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v4

    long-to-int v4, v4

    new-array v4, v4, [B

    iput-object v4, p0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->bytes:[B

    .line 2207
    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->bytes:[B

    const/4 v5, 0x0

    iget-object v6, p0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->bytes:[B

    array-length v6, v6

    invoke-virtual {v1, v4, v5, v6}, Ljava/io/RandomAccessFile;->readFully([BII)V
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_2e} :catch_2f

    goto :goto_6

    .line 2209
    .end local v1    # "f":Ljava/io/RandomAccessFile;
    .end local v3    # "len":I
    :catch_2f
    move-exception v0

    .line 2210
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_6
.end method

.method private generateThumb(ILjava/io/File;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;)V
    .registers 12
    .param p1, "mediaType"    # I
    .param p2, "originalPath"    # Ljava/io/File;
    .param p3, "thumbLocation"    # Lorg/telegram/tgnet/TLRPC$FileLocation;
    .param p4, "filter"    # Ljava/lang/String;

    .prologue
    .line 1603
    if-eqz p1, :cond_8

    const/4 v1, 0x2

    if-eq p1, v1, :cond_8

    const/4 v1, 0x3

    if-ne p1, v1, :cond_c

    :cond_8
    if-eqz p2, :cond_c

    if-nez p3, :cond_d

    .line 1612
    :cond_c
    :goto_c
    return-void

    .line 1606
    :cond_d
    invoke-static {p3}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v6

    .line 1607
    .local v6, "name":Ljava/lang/String;
    iget-object v1, p0, Lorg/telegram/messenger/ImageLoader;->thumbGenerateTasks:Ljava/util/HashMap;

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/ImageLoader$ThumbGenerateTask;

    .line 1608
    .local v0, "task":Lorg/telegram/messenger/ImageLoader$ThumbGenerateTask;
    if-nez v0, :cond_c

    .line 1609
    new-instance v0, Lorg/telegram/messenger/ImageLoader$ThumbGenerateTask;

    .end local v0    # "task":Lorg/telegram/messenger/ImageLoader$ThumbGenerateTask;
    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/ImageLoader$ThumbGenerateTask;-><init>(Lorg/telegram/messenger/ImageLoader;ILjava/io/File;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;)V

    .line 1610
    .restart local v0    # "task":Lorg/telegram/messenger/ImageLoader$ThumbGenerateTask;
    iget-object v1, p0, Lorg/telegram/messenger/ImageLoader;->thumbGeneratingQueue:Lorg/telegram/messenger/DispatchQueue;

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_c
.end method

.method public static getHttpUrlExtension(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "defaultExt"    # Ljava/lang/String;

    .prologue
    .line 2311
    const/4 v0, 0x0

    .line 2312
    .local v0, "ext":Ljava/lang/String;
    const/16 v2, 0x2e

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 2313
    .local v1, "idx":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_10

    .line 2314
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 2316
    :cond_10
    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1f

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x4

    if-le v2, v3, :cond_20

    .line 2317
    :cond_1f
    move-object v0, p1

    .line 2319
    :cond_20
    return-object v0
.end method

.method public static getInstance()Lorg/telegram/messenger/ImageLoader;
    .registers 4

    .prologue
    .line 1094
    sget-object v0, Lorg/telegram/messenger/ImageLoader;->Instance:Lorg/telegram/messenger/ImageLoader;

    .line 1095
    .local v0, "localInstance":Lorg/telegram/messenger/ImageLoader;
    if-nez v0, :cond_14

    .line 1096
    const-class v3, Lorg/telegram/messenger/ImageLoader;

    monitor-enter v3

    .line 1097
    :try_start_7
    sget-object v0, Lorg/telegram/messenger/ImageLoader;->Instance:Lorg/telegram/messenger/ImageLoader;

    .line 1098
    if-nez v0, :cond_13

    .line 1099
    new-instance v1, Lorg/telegram/messenger/ImageLoader;

    invoke-direct {v1}, Lorg/telegram/messenger/ImageLoader;-><init>()V
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_15

    .end local v0    # "localInstance":Lorg/telegram/messenger/ImageLoader;
    .local v1, "localInstance":Lorg/telegram/messenger/ImageLoader;
    :try_start_10
    sput-object v1, Lorg/telegram/messenger/ImageLoader;->Instance:Lorg/telegram/messenger/ImageLoader;
    :try_end_12
    .catchall {:try_start_10 .. :try_end_12} :catchall_18

    move-object v0, v1

    .line 1101
    .end local v1    # "localInstance":Lorg/telegram/messenger/ImageLoader;
    .restart local v0    # "localInstance":Lorg/telegram/messenger/ImageLoader;
    :cond_13
    :try_start_13
    monitor-exit v3

    .line 1103
    :cond_14
    return-object v0

    .line 1101
    :catchall_15
    move-exception v2

    :goto_16
    monitor-exit v3
    :try_end_17
    .catchall {:try_start_13 .. :try_end_17} :catchall_15

    throw v2

    .end local v0    # "localInstance":Lorg/telegram/messenger/ImageLoader;
    .restart local v1    # "localInstance":Lorg/telegram/messenger/ImageLoader;
    :catchall_18
    move-exception v2

    move-object v0, v1

    .end local v1    # "localInstance":Lorg/telegram/messenger/ImageLoader;
    .restart local v0    # "localInstance":Lorg/telegram/messenger/ImageLoader;
    goto :goto_16
.end method

.method private httpFileLoadError(Ljava/lang/String;)V
    .registers 4
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 1903
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader;->imageLoadQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/ImageLoader$8;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/ImageLoader$8;-><init>(Lorg/telegram/messenger/ImageLoader;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 1916
    return-void
.end method

.method public static loadBitmap(Ljava/lang/String;Landroid/net/Uri;FFZ)Landroid/graphics/Bitmap;
    .registers 27
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "maxWidth"    # F
    .param p3, "maxHeight"    # F
    .param p4, "useMaxScale"    # Z

    .prologue
    .line 2063
    new-instance v8, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v8}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 2064
    .local v8, "bmOptions":Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x1

    iput-boolean v2, v8, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 2065
    const/4 v15, 0x0

    .line 2067
    .local v15, "inputStream":Ljava/io/InputStream;
    if-nez p0, :cond_24

    if-eqz p1, :cond_24

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_24

    .line 2068
    const/4 v14, 0x0

    .line 2069
    .local v14, "imageFilePath":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string v3, "file"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a1

    .line 2070
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p0

    .line 2080
    .end local v14    # "imageFilePath":Ljava/lang/String;
    :cond_24
    :goto_24
    if-eqz p0, :cond_ad

    .line 2081
    move-object/from16 v0, p0

    invoke-static {v0, v8}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 2094
    :cond_2b
    :goto_2b
    iget v2, v8, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v0, v2

    move/from16 v20, v0

    .line 2095
    .local v20, "photoW":F
    iget v2, v8, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v0, v2

    move/from16 v19, v0

    .line 2096
    .local v19, "photoH":F
    if-eqz p4, :cond_d7

    div-float v2, v20, p2

    div-float v3, v19, p3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v21

    .line 2097
    .local v21, "scaleFactor":F
    :goto_3f
    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v2, v21, v2

    if-gez v2, :cond_47

    .line 2098
    const/high16 v21, 0x3f800000    # 1.0f

    .line 2100
    :cond_47
    const/4 v2, 0x0

    iput-boolean v2, v8, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 2101
    move/from16 v0, v21

    float-to-int v2, v0

    iput v2, v8, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 2102
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-ge v2, v3, :cond_e1

    const/4 v2, 0x1

    :goto_56
    iput-boolean v2, v8, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 2104
    const/4 v13, 0x0

    .line 2105
    .local v13, "exifPath":Ljava/lang/String;
    if-eqz p0, :cond_e4

    .line 2106
    move-object/from16 v13, p0

    .line 2111
    :cond_5d
    :goto_5d
    const/4 v6, 0x0

    .line 2113
    .local v6, "matrix":Landroid/graphics/Matrix;
    if-eqz v13, :cond_76

    .line 2116
    :try_start_60
    new-instance v12, Landroid/media/ExifInterface;

    invoke-direct {v12, v13}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 2117
    .local v12, "exif":Landroid/media/ExifInterface;
    const-string v2, "Orientation"

    const/4 v3, 0x1

    invoke-virtual {v12, v2, v3}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v18

    .line 2118
    .local v18, "orientation":I
    new-instance v16, Landroid/graphics/Matrix;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/Matrix;-><init>()V
    :try_end_71
    .catch Ljava/lang/Throwable; {:try_start_60 .. :try_end_71} :catch_198

    .line 2119
    .end local v6    # "matrix":Landroid/graphics/Matrix;
    .local v16, "matrix":Landroid/graphics/Matrix;
    packed-switch v18, :pswitch_data_19c

    :goto_74
    :pswitch_74
    move-object/from16 v6, v16

    .line 2135
    .end local v12    # "exif":Landroid/media/ExifInterface;
    .end local v16    # "matrix":Landroid/graphics/Matrix;
    .end local v18    # "orientation":I
    .restart local v6    # "matrix":Landroid/graphics/Matrix;
    :cond_76
    :goto_76
    const/4 v1, 0x0

    .line 2136
    .local v1, "b":Landroid/graphics/Bitmap;
    if-eqz p0, :cond_14c

    .line 2138
    :try_start_79
    move-object/from16 v0, p0

    invoke-static {v0, v8}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 2139
    if-eqz v1, :cond_a0

    .line 2140
    iget-boolean v2, v8, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    if-eqz v2, :cond_88

    .line 2141
    invoke-static {v1}, Lorg/telegram/messenger/Utilities;->pinBitmap(Landroid/graphics/Bitmap;)I

    .line 2143
    :cond_88
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v7, 0x1

    invoke-static/range {v1 .. v7}, Lorg/telegram/messenger/Bitmaps;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v17

    .line 2144
    .local v17, "newBitmap":Landroid/graphics/Bitmap;
    move-object/from16 v0, v17

    if-eq v0, v1, :cond_a0

    .line 2145
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_9e
    .catch Ljava/lang/Throwable; {:try_start_79 .. :try_end_9e} :catch_10e

    .line 2146
    move-object/from16 v1, v17

    .line 2194
    .end local v1    # "b":Landroid/graphics/Bitmap;
    .end local v6    # "matrix":Landroid/graphics/Matrix;
    .end local v13    # "exifPath":Ljava/lang/String;
    .end local v17    # "newBitmap":Landroid/graphics/Bitmap;
    .end local v19    # "photoH":F
    .end local v20    # "photoW":F
    .end local v21    # "scaleFactor":F
    :cond_a0
    :goto_a0
    return-object v1

    .line 2073
    .restart local v14    # "imageFilePath":Ljava/lang/String;
    :cond_a1
    :try_start_a1
    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/AndroidUtilities;->getPath(Landroid/net/Uri;)Ljava/lang/String;
    :try_end_a4
    .catch Ljava/lang/Throwable; {:try_start_a1 .. :try_end_a4} :catch_a7

    move-result-object p0

    goto/16 :goto_24

    .line 2074
    :catch_a7
    move-exception v9

    .line 2075
    .local v9, "e":Ljava/lang/Throwable;
    invoke-static {v9}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_24

    .line 2082
    .end local v9    # "e":Ljava/lang/Throwable;
    .end local v14    # "imageFilePath":Ljava/lang/String;
    :cond_ad
    if-eqz p1, :cond_2b

    .line 2083
    const/4 v11, 0x0

    .line 2085
    .local v11, "error":Z
    :try_start_b0
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v15

    .line 2086
    const/4 v2, 0x0

    invoke-static {v15, v2, v8}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 2087
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V

    .line 2088
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_ce
    .catch Ljava/lang/Throwable; {:try_start_b0 .. :try_end_ce} :catch_d1

    move-result-object v15

    goto/16 :goto_2b

    .line 2089
    :catch_d1
    move-exception v9

    .line 2090
    .restart local v9    # "e":Ljava/lang/Throwable;
    invoke-static {v9}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 2091
    const/4 v1, 0x0

    goto :goto_a0

    .line 2096
    .end local v9    # "e":Ljava/lang/Throwable;
    .end local v11    # "error":Z
    .restart local v19    # "photoH":F
    .restart local v20    # "photoW":F
    :cond_d7
    div-float v2, v20, p2

    div-float v3, v19, p3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v21

    goto/16 :goto_3f

    .line 2102
    .restart local v21    # "scaleFactor":F
    :cond_e1
    const/4 v2, 0x0

    goto/16 :goto_56

    .line 2107
    .restart local v13    # "exifPath":Ljava/lang/String;
    :cond_e4
    if-eqz p1, :cond_5d

    .line 2108
    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/AndroidUtilities;->getPath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_5d

    .line 2121
    .restart local v12    # "exif":Landroid/media/ExifInterface;
    .restart local v16    # "matrix":Landroid/graphics/Matrix;
    .restart local v18    # "orientation":I
    :pswitch_ec
    const/high16 v2, 0x42b40000    # 90.0f

    :try_start_ee
    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->postRotate(F)Z
    :try_end_f3
    .catch Ljava/lang/Throwable; {:try_start_ee .. :try_end_f3} :catch_f4

    goto :goto_74

    .line 2130
    :catch_f4
    move-exception v9

    move-object/from16 v6, v16

    .line 2131
    .end local v12    # "exif":Landroid/media/ExifInterface;
    .end local v16    # "matrix":Landroid/graphics/Matrix;
    .end local v18    # "orientation":I
    .restart local v6    # "matrix":Landroid/graphics/Matrix;
    .restart local v9    # "e":Ljava/lang/Throwable;
    :goto_f7
    invoke-static {v9}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_76

    .line 2124
    .end local v6    # "matrix":Landroid/graphics/Matrix;
    .end local v9    # "e":Ljava/lang/Throwable;
    .restart local v12    # "exif":Landroid/media/ExifInterface;
    .restart local v16    # "matrix":Landroid/graphics/Matrix;
    .restart local v18    # "orientation":I
    :pswitch_fc
    const/high16 v2, 0x43340000    # 180.0f

    :try_start_fe
    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    goto/16 :goto_74

    .line 2127
    :pswitch_105
    const/high16 v2, 0x43870000    # 270.0f

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->postRotate(F)Z
    :try_end_10c
    .catch Ljava/lang/Throwable; {:try_start_fe .. :try_end_10c} :catch_f4

    goto/16 :goto_74

    .line 2149
    .end local v12    # "exif":Landroid/media/ExifInterface;
    .end local v16    # "matrix":Landroid/graphics/Matrix;
    .end local v18    # "orientation":I
    .restart local v1    # "b":Landroid/graphics/Bitmap;
    .restart local v6    # "matrix":Landroid/graphics/Matrix;
    :catch_10e
    move-exception v9

    .line 2150
    .restart local v9    # "e":Ljava/lang/Throwable;
    invoke-static {v9}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 2151
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageLoader;->clearMemory()V

    .line 2153
    if-nez v1, :cond_12a

    .line 2154
    :try_start_11b
    move-object/from16 v0, p0

    invoke-static {v0, v8}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 2155
    if-eqz v1, :cond_12a

    iget-boolean v2, v8, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    if-eqz v2, :cond_12a

    .line 2156
    invoke-static {v1}, Lorg/telegram/messenger/Utilities;->pinBitmap(Landroid/graphics/Bitmap;)I

    .line 2159
    :cond_12a
    if-eqz v1, :cond_a0

    .line 2160
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v7, 0x1

    invoke-static/range {v1 .. v7}, Lorg/telegram/messenger/Bitmaps;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v17

    .line 2161
    .restart local v17    # "newBitmap":Landroid/graphics/Bitmap;
    move-object/from16 v0, v17

    if-eq v0, v1, :cond_a0

    .line 2162
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_142
    .catch Ljava/lang/Throwable; {:try_start_11b .. :try_end_142} :catch_146

    .line 2163
    move-object/from16 v1, v17

    goto/16 :goto_a0

    .line 2166
    .end local v17    # "newBitmap":Landroid/graphics/Bitmap;
    :catch_146
    move-exception v10

    .line 2167
    .local v10, "e2":Ljava/lang/Throwable;
    invoke-static {v10}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_a0

    .line 2170
    .end local v9    # "e":Ljava/lang/Throwable;
    .end local v10    # "e2":Ljava/lang/Throwable;
    :cond_14c
    if-eqz p1, :cond_a0

    .line 2172
    const/4 v2, 0x0

    :try_start_14f
    invoke-static {v15, v2, v8}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 2173
    if-eqz v1, :cond_174

    .line 2174
    iget-boolean v2, v8, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    if-eqz v2, :cond_15c

    .line 2175
    invoke-static {v1}, Lorg/telegram/messenger/Utilities;->pinBitmap(Landroid/graphics/Bitmap;)I

    .line 2177
    :cond_15c
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v7, 0x1

    invoke-static/range {v1 .. v7}, Lorg/telegram/messenger/Bitmaps;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v17

    .line 2178
    .restart local v17    # "newBitmap":Landroid/graphics/Bitmap;
    move-object/from16 v0, v17

    if-eq v0, v1, :cond_174

    .line 2179
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_172
    .catch Ljava/lang/Throwable; {:try_start_14f .. :try_end_172} :catch_17f
    .catchall {:try_start_14f .. :try_end_172} :catchall_18e

    .line 2180
    move-object/from16 v1, v17

    .line 2187
    .end local v17    # "newBitmap":Landroid/graphics/Bitmap;
    :cond_174
    :try_start_174
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_177
    .catch Ljava/lang/Throwable; {:try_start_174 .. :try_end_177} :catch_179

    goto/16 :goto_a0

    .line 2188
    :catch_179
    move-exception v9

    .line 2189
    .restart local v9    # "e":Ljava/lang/Throwable;
    invoke-static {v9}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_a0

    .line 2183
    .end local v9    # "e":Ljava/lang/Throwable;
    :catch_17f
    move-exception v9

    .line 2184
    .restart local v9    # "e":Ljava/lang/Throwable;
    :try_start_180
    invoke-static {v9}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_183
    .catchall {:try_start_180 .. :try_end_183} :catchall_18e

    .line 2187
    :try_start_183
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_186
    .catch Ljava/lang/Throwable; {:try_start_183 .. :try_end_186} :catch_188

    goto/16 :goto_a0

    .line 2188
    :catch_188
    move-exception v9

    .line 2189
    invoke-static {v9}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_a0

    .line 2186
    .end local v9    # "e":Ljava/lang/Throwable;
    :catchall_18e
    move-exception v2

    .line 2187
    :try_start_18f
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_192
    .catch Ljava/lang/Throwable; {:try_start_18f .. :try_end_192} :catch_193

    .line 2190
    :goto_192
    throw v2

    .line 2188
    :catch_193
    move-exception v9

    .line 2189
    .restart local v9    # "e":Ljava/lang/Throwable;
    invoke-static {v9}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_192

    .line 2130
    .end local v1    # "b":Landroid/graphics/Bitmap;
    .end local v9    # "e":Ljava/lang/Throwable;
    :catch_198
    move-exception v9

    goto/16 :goto_f7

    .line 2119
    nop

    :pswitch_data_19c
    .packed-switch 0x3
        :pswitch_fc
        :pswitch_74
        :pswitch_74
        :pswitch_ec
        :pswitch_74
        :pswitch_105
    .end packed-switch
.end method

.method private performReplace(Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .param p1, "oldKey"    # Ljava/lang/String;
    .param p2, "newKey"    # Ljava/lang/String;

    .prologue
    .line 1429
    iget-object v6, p0, Lorg/telegram/messenger/ImageLoader;->memCache:Lorg/telegram/messenger/LruCache;

    invoke-virtual {v6, p1}, Lorg/telegram/messenger/LruCache;->get(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    .line 1430
    .local v0, "b":Landroid/graphics/drawable/BitmapDrawable;
    if-eqz v0, :cond_4b

    .line 1431
    iget-object v6, p0, Lorg/telegram/messenger/ImageLoader;->memCache:Lorg/telegram/messenger/LruCache;

    invoke-virtual {v6, p2}, Lorg/telegram/messenger/LruCache;->get(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v3

    .line 1432
    .local v3, "oldBitmap":Landroid/graphics/drawable/BitmapDrawable;
    const/4 v1, 0x0

    .line 1433
    .local v1, "dontChange":Z
    if-eqz v3, :cond_3a

    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    if-eqz v6, :cond_3a

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    if-eqz v6, :cond_3a

    .line 1434
    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    .line 1435
    .local v4, "oldBitmapObject":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1436
    .local v2, "newBitmapObject":Landroid/graphics/Bitmap;
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    if-gt v6, v7, :cond_39

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    if-le v6, v7, :cond_3a

    .line 1437
    :cond_39
    const/4 v1, 0x1

    .line 1440
    .end local v2    # "newBitmapObject":Landroid/graphics/Bitmap;
    .end local v4    # "oldBitmapObject":Landroid/graphics/Bitmap;
    :cond_3a
    if-nez v1, :cond_60

    .line 1441
    iput-object p1, p0, Lorg/telegram/messenger/ImageLoader;->ignoreRemoval:Ljava/lang/String;

    .line 1442
    iget-object v6, p0, Lorg/telegram/messenger/ImageLoader;->memCache:Lorg/telegram/messenger/LruCache;

    invoke-virtual {v6, p1}, Lorg/telegram/messenger/LruCache;->remove(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    .line 1443
    iget-object v6, p0, Lorg/telegram/messenger/ImageLoader;->memCache:Lorg/telegram/messenger/LruCache;

    invoke-virtual {v6, p2, v0}, Lorg/telegram/messenger/LruCache;->put(Ljava/lang/String;Landroid/graphics/drawable/BitmapDrawable;)Landroid/graphics/drawable/BitmapDrawable;

    .line 1444
    const/4 v6, 0x0

    iput-object v6, p0, Lorg/telegram/messenger/ImageLoader;->ignoreRemoval:Ljava/lang/String;

    .line 1449
    .end local v1    # "dontChange":Z
    .end local v3    # "oldBitmap":Landroid/graphics/drawable/BitmapDrawable;
    :cond_4b
    :goto_4b
    iget-object v6, p0, Lorg/telegram/messenger/ImageLoader;->bitmapUseCounts:Ljava/util/HashMap;

    invoke-virtual {v6, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 1450
    .local v5, "val":Ljava/lang/Integer;
    if-eqz v5, :cond_5f

    .line 1451
    iget-object v6, p0, Lorg/telegram/messenger/ImageLoader;->bitmapUseCounts:Ljava/util/HashMap;

    invoke-virtual {v6, p2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1452
    iget-object v6, p0, Lorg/telegram/messenger/ImageLoader;->bitmapUseCounts:Ljava/util/HashMap;

    invoke-virtual {v6, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1454
    :cond_5f
    return-void

    .line 1446
    .end local v5    # "val":Ljava/lang/Integer;
    .restart local v1    # "dontChange":Z
    .restart local v3    # "oldBitmap":Landroid/graphics/drawable/BitmapDrawable;
    :cond_60
    iget-object v6, p0, Lorg/telegram/messenger/ImageLoader;->memCache:Lorg/telegram/messenger/LruCache;

    invoke-virtual {v6, p1}, Lorg/telegram/messenger/LruCache;->remove(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    goto :goto_4b
.end method

.method private removeFromWaitingForThumb(Ljava/lang/Integer;)V
    .registers 5
    .param p1, "TAG"    # Ljava/lang/Integer;

    .prologue
    .line 1493
    iget-object v2, p0, Lorg/telegram/messenger/ImageLoader;->waitingForQualityThumbByTag:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1494
    .local v1, "location":Ljava/lang/String;
    if-eqz v1, :cond_27

    .line 1495
    iget-object v2, p0, Lorg/telegram/messenger/ImageLoader;->waitingForQualityThumb:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;

    .line 1496
    .local v0, "info":Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;
    if-eqz v0, :cond_22

    .line 1497
    # operator-- for: Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;->count:I
    invoke-static {v0}, Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;->access$2910(Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;)I

    .line 1498
    # getter for: Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;->count:I
    invoke-static {v0}, Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;->access$2900(Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;)I

    move-result v2

    if-nez v2, :cond_22

    .line 1499
    iget-object v2, p0, Lorg/telegram/messenger/ImageLoader;->waitingForQualityThumb:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1502
    :cond_22
    iget-object v2, p0, Lorg/telegram/messenger/ImageLoader;->waitingForQualityThumbByTag:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1504
    .end local v0    # "info":Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;
    :cond_27
    return-void
.end method

.method private replaceImageInCacheInternal(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$FileLocation;)V
    .registers 16
    .param p1, "oldKey"    # Ljava/lang/String;
    .param p2, "newKey"    # Ljava/lang/String;
    .param p3, "newLocation"    # Lorg/telegram/tgnet/TLRPC$FileLocation;

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1570
    iget-object v5, p0, Lorg/telegram/messenger/ImageLoader;->memCache:Lorg/telegram/messenger/LruCache;

    invoke-virtual {v5, p1}, Lorg/telegram/messenger/LruCache;->getFilterKeys(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1571
    .local v1, "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v1, :cond_5e

    .line 1572
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_d
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_72

    .line 1573
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1574
    .local v2, "filter":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "@"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1575
    .local v4, "oldK":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "@"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1576
    .local v3, "newK":Ljava/lang/String;
    invoke-direct {p0, v4, v3}, Lorg/telegram/messenger/ImageLoader;->performReplace(Ljava/lang/String;Ljava/lang/String;)V

    .line 1577
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v5

    sget v6, Lorg/telegram/messenger/NotificationCenter;->didReplacedPhotoInMemCache:I

    new-array v7, v11, [Ljava/lang/Object;

    aput-object v4, v7, v8

    aput-object v3, v7, v9

    aput-object p3, v7, v10

    invoke-virtual {v5, v6, v7}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 1572
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 1580
    .end local v0    # "a":I
    .end local v2    # "filter":Ljava/lang/String;
    .end local v3    # "newK":Ljava/lang/String;
    .end local v4    # "oldK":Ljava/lang/String;
    :cond_5e
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/ImageLoader;->performReplace(Ljava/lang/String;Ljava/lang/String;)V

    .line 1581
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v5

    sget v6, Lorg/telegram/messenger/NotificationCenter;->didReplacedPhotoInMemCache:I

    new-array v7, v11, [Ljava/lang/Object;

    aput-object p1, v7, v8

    aput-object p2, v7, v9

    aput-object p3, v7, v10

    invoke-virtual {v5, v6, v7}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 1583
    :cond_72
    return-void
.end method

.method private runHttpFileLoadTasks(Lorg/telegram/messenger/ImageLoader$HttpFileTask;I)V
    .registers 4
    .param p1, "oldTask"    # Lorg/telegram/messenger/ImageLoader$HttpFileTask;
    .param p2, "reason"    # I

    .prologue
    .line 2023
    new-instance v0, Lorg/telegram/messenger/ImageLoader$11;

    invoke-direct {v0, p0, p1, p2}, Lorg/telegram/messenger/ImageLoader$11;-><init>(Lorg/telegram/messenger/ImageLoader;Lorg/telegram/messenger/ImageLoader$HttpFileTask;I)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 2060
    return-void
.end method

.method private runHttpTasks(Z)V
    .registers 7
    .param p1, "complete"    # Z

    .prologue
    const/4 v4, 0x0

    .line 1980
    if-eqz p1, :cond_9

    .line 1981
    iget v1, p0, Lorg/telegram/messenger/ImageLoader;->currentHttpTasksCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/telegram/messenger/ImageLoader;->currentHttpTasksCount:I

    .line 1983
    :cond_9
    :goto_9
    iget v1, p0, Lorg/telegram/messenger/ImageLoader;->currentHttpTasksCount:I

    const/4 v2, 0x4

    if-ge v1, v2, :cond_36

    iget-object v1, p0, Lorg/telegram/messenger/ImageLoader;->httpTasks:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_36

    .line 1984
    iget-object v1, p0, Lorg/telegram/messenger/ImageLoader;->httpTasks:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;

    .line 1985
    .local v0, "task":Lorg/telegram/messenger/ImageLoader$HttpImageTask;
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Void;

    const/4 v3, 0x0

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1986
    iget v1, p0, Lorg/telegram/messenger/ImageLoader;->currentHttpTasksCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/telegram/messenger/ImageLoader;->currentHttpTasksCount:I

    goto :goto_9

    .line 1988
    .end local v0    # "task":Lorg/telegram/messenger/ImageLoader$HttpImageTask;
    :cond_36
    return-void
.end method

.method public static saveMessageThumbs(Lorg/telegram/tgnet/TLRPC$Message;)V
    .registers 11
    .param p0, "message"    # Lorg/telegram/tgnet/TLRPC$Message;

    .prologue
    .line 2323
    const/4 v4, 0x0

    .line 2324
    .local v4, "photoSize":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    iget-object v7, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v7, v7, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    if-eqz v7, :cond_b1

    .line 2325
    iget-object v7, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_11
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_22

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 2326
    .local v5, "size":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    instance-of v8, v5, Lorg/telegram/tgnet/TLRPC$TL_photoCachedSize;

    if-eqz v8, :cond_11

    .line 2327
    move-object v4, v5

    .line 2345
    .end local v5    # "size":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    :cond_22
    :goto_22
    if-eqz v4, :cond_b0

    iget-object v7, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->bytes:[B

    if-eqz v7, :cond_b0

    iget-object v7, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->bytes:[B

    array-length v7, v7

    if-eqz v7, :cond_b0

    .line 2346
    iget-object v7, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    instance-of v7, v7, Lorg/telegram/tgnet/TLRPC$TL_fileLocationUnavailable;

    if-eqz v7, :cond_53

    .line 2347
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_fileLocation;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_fileLocation;-><init>()V

    iput-object v7, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 2348
    iget-object v7, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    const-wide/32 v8, -0x80000000

    iput-wide v8, v7, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    .line 2349
    iget-object v7, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    const/high16 v8, -0x80000000

    iput v8, v7, Lorg/telegram/tgnet/TLRPC$FileLocation;->dc_id:I

    .line 2350
    iget-object v7, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    sget v8, Lorg/telegram/messenger/UserConfig;->lastLocalId:I

    iput v8, v7, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    .line 2351
    sget v7, Lorg/telegram/messenger/UserConfig;->lastLocalId:I

    add-int/lit8 v7, v7, -0x1

    sput v7, Lorg/telegram/messenger/UserConfig;->lastLocalId:I

    .line 2353
    :cond_53
    const/4 v7, 0x1

    invoke-static {v4, v7}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v2

    .line 2354
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_6d

    .line 2356
    :try_start_5e
    new-instance v6, Ljava/io/RandomAccessFile;

    const-string v7, "rws"

    invoke-direct {v6, v2, v7}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2357
    .local v6, "writeFile":Ljava/io/RandomAccessFile;
    iget-object v7, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->bytes:[B

    invoke-virtual {v6, v7}, Ljava/io/RandomAccessFile;->write([B)V

    .line 2358
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_6d} :catch_f6

    .line 2363
    .end local v6    # "writeFile":Ljava/io/RandomAccessFile;
    :cond_6d
    :goto_6d
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_photoSize;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_photoSize;-><init>()V

    .line 2364
    .local v3, "newPhotoSize":Lorg/telegram/tgnet/TLRPC$TL_photoSize;
    iget v7, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    iput v7, v3, Lorg/telegram/tgnet/TLRPC$TL_photoSize;->w:I

    .line 2365
    iget v7, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    iput v7, v3, Lorg/telegram/tgnet/TLRPC$TL_photoSize;->h:I

    .line 2366
    iget-object v7, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iput-object v7, v3, Lorg/telegram/tgnet/TLRPC$TL_photoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 2367
    iget v7, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->size:I

    iput v7, v3, Lorg/telegram/tgnet/TLRPC$TL_photoSize;->size:I

    .line 2368
    iget-object v7, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->type:Ljava/lang/String;

    iput-object v7, v3, Lorg/telegram/tgnet/TLRPC$TL_photoSize;->type:Ljava/lang/String;

    .line 2370
    iget-object v7, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v7, v7, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    if-eqz v7, :cond_ff

    .line 2371
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_8d
    iget-object v7, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v0, v7, :cond_b0

    .line 2372
    iget-object v7, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    instance-of v7, v7, Lorg/telegram/tgnet/TLRPC$TL_photoCachedSize;

    if-eqz v7, :cond_fc

    .line 2373
    iget-object v7, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v7, v0, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2388
    .end local v0    # "a":I
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "newPhotoSize":Lorg/telegram/tgnet/TLRPC$TL_photoSize;
    :cond_b0
    :goto_b0
    return-void

    .line 2331
    :cond_b1
    iget-object v7, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v7, v7, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    if-eqz v7, :cond_c9

    .line 2332
    iget-object v7, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    instance-of v7, v7, Lorg/telegram/tgnet/TLRPC$TL_photoCachedSize;

    if-eqz v7, :cond_22

    .line 2333
    iget-object v7, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    goto/16 :goto_22

    .line 2335
    :cond_c9
    iget-object v7, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v7, v7, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;

    if-eqz v7, :cond_22

    .line 2336
    iget-object v7, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$WebPage;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz v7, :cond_22

    .line 2337
    iget-object v7, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$WebPage;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_e3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_22

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 2338
    .restart local v5    # "size":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    instance-of v8, v5, Lorg/telegram/tgnet/TLRPC$TL_photoCachedSize;

    if-eqz v8, :cond_e3

    .line 2339
    move-object v4, v5

    .line 2340
    goto/16 :goto_22

    .line 2359
    .end local v5    # "size":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    .restart local v2    # "file":Ljava/io/File;
    :catch_f6
    move-exception v1

    .line 2360
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_6d

    .line 2371
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "a":I
    .restart local v3    # "newPhotoSize":Lorg/telegram/tgnet/TLRPC$TL_photoSize;
    :cond_fc
    add-int/lit8 v0, v0, 0x1

    goto :goto_8d

    .line 2377
    .end local v0    # "a":I
    :cond_ff
    iget-object v7, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v7, v7, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    if-eqz v7, :cond_10c

    .line 2378
    iget-object v7, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iput-object v3, v7, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    goto :goto_b0

    .line 2379
    :cond_10c
    iget-object v7, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v7, v7, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;

    if-eqz v7, :cond_b0

    .line 2380
    const/4 v0, 0x0

    .restart local v0    # "a":I
    :goto_113
    iget-object v7, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$WebPage;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v0, v7, :cond_b0

    .line 2381
    iget-object v7, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$WebPage;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    instance-of v7, v7, Lorg/telegram/tgnet/TLRPC$TL_photoCachedSize;

    if-eqz v7, :cond_13e

    .line 2382
    iget-object v7, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$WebPage;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v7, v0, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_b0

    .line 2380
    :cond_13e
    add-int/lit8 v0, v0, 0x1

    goto :goto_113
.end method

.method public static saveMessagesThumbs(Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$Message;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2391
    .local p0, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 2398
    :cond_8
    return-void

    .line 2394
    :cond_9
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_a
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_8

    .line 2395
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$Message;

    .line 2396
    .local v1, "message":Lorg/telegram/tgnet/TLRPC$Message;
    invoke-static {v1}, Lorg/telegram/messenger/ImageLoader;->saveMessageThumbs(Lorg/telegram/tgnet/TLRPC$Message;)V

    .line 2394
    add-int/lit8 v0, v0, 0x1

    goto :goto_a
.end method

.method public static scaleAndSaveImage(Landroid/graphics/Bitmap;FFIZ)Lorg/telegram/tgnet/TLRPC$PhotoSize;
    .registers 12
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "maxWidth"    # F
    .param p2, "maxHeight"    # F
    .param p3, "quality"    # I
    .param p4, "cache"    # Z

    .prologue
    const/4 v5, 0x0

    .line 2265
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v6, v5

    invoke-static/range {v0 .. v6}, Lorg/telegram/messenger/ImageLoader;->scaleAndSaveImage(Landroid/graphics/Bitmap;FFIZII)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v0

    return-object v0
.end method

.method public static scaleAndSaveImage(Landroid/graphics/Bitmap;FFIZII)Lorg/telegram/tgnet/TLRPC$PhotoSize;
    .registers 19
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "maxWidth"    # F
    .param p2, "maxHeight"    # F
    .param p3, "quality"    # I
    .param p4, "cache"    # Z
    .param p5, "minWidth"    # I
    .param p6, "minHeight"    # I

    .prologue
    .line 2269
    if-nez p0, :cond_4

    .line 2270
    const/4 v1, 0x0

    .line 2305
    :goto_3
    return-object v1

    .line 2272
    :cond_4
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v4, v1

    .line 2273
    .local v4, "photoW":F
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v5, v1

    .line 2274
    .local v5, "photoH":F
    const/4 v1, 0x0

    cmpl-float v1, v4, v1

    if-eqz v1, :cond_18

    const/4 v1, 0x0

    cmpl-float v1, v5, v1

    if-nez v1, :cond_1a

    .line 2275
    :cond_18
    const/4 v1, 0x0

    goto :goto_3

    .line 2277
    :cond_1a
    const/4 v9, 0x0

    .line 2278
    .local v9, "scaleAnyway":Z
    div-float v1, v4, p1

    div-float v7, v5, p2

    invoke-static {v1, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 2279
    .local v6, "scaleFactor":F
    if-eqz p5, :cond_49

    if-eqz p6, :cond_49

    move/from16 v0, p5

    int-to-float v1, v0

    cmpg-float v1, v4, v1

    if-ltz v1, :cond_35

    move/from16 v0, p6

    int-to-float v1, v0

    cmpg-float v1, v5, v1

    if-gez v1, :cond_49

    .line 2280
    :cond_35
    move/from16 v0, p5

    int-to-float v1, v0

    cmpg-float v1, v4, v1

    if-gez v1, :cond_55

    move/from16 v0, p6

    int-to-float v1, v0

    cmpl-float v1, v5, v1

    if-lez v1, :cond_55

    .line 2281
    move/from16 v0, p5

    int-to-float v1, v0

    div-float v6, v4, v1

    .line 2287
    :goto_48
    const/4 v9, 0x1

    .line 2289
    :cond_49
    div-float v1, v4, v6

    float-to-int v2, v1

    .line 2290
    .local v2, "w":I
    div-float v1, v5, v6

    float-to-int v3, v1

    .line 2291
    .local v3, "h":I
    if-eqz v3, :cond_53

    if-nez v2, :cond_78

    .line 2292
    :cond_53
    const/4 v1, 0x0

    goto :goto_3

    .line 2282
    .end local v2    # "w":I
    .end local v3    # "h":I
    :cond_55
    move/from16 v0, p5

    int-to-float v1, v0

    cmpl-float v1, v4, v1

    if-lez v1, :cond_69

    move/from16 v0, p6

    int-to-float v1, v0

    cmpg-float v1, v5, v1

    if-gez v1, :cond_69

    .line 2283
    move/from16 v0, p6

    int-to-float v1, v0

    div-float v6, v5, v1

    goto :goto_48

    .line 2285
    :cond_69
    move/from16 v0, p5

    int-to-float v1, v0

    div-float v1, v4, v1

    move/from16 v0, p6

    int-to-float v7, v0

    div-float v7, v5, v7

    invoke-static {v1, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    goto :goto_48

    .restart local v2    # "w":I
    .restart local v3    # "h":I
    :cond_78
    move-object v1, p0

    move v7, p3

    move/from16 v8, p4

    .line 2296
    :try_start_7c
    invoke-static/range {v1 .. v9}, Lorg/telegram/messenger/ImageLoader;->scaleAndSaveImageInternal(Landroid/graphics/Bitmap;IIFFFIZZ)Lorg/telegram/tgnet/TLRPC$PhotoSize;
    :try_end_7f
    .catch Ljava/lang/Throwable; {:try_start_7c .. :try_end_7f} :catch_81

    move-result-object v1

    goto :goto_3

    .line 2297
    :catch_81
    move-exception v10

    .line 2298
    .local v10, "e":Ljava/lang/Throwable;
    invoke-static {v10}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 2299
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageLoader;->clearMemory()V

    .line 2300
    invoke-static {}, Ljava/lang/System;->gc()V

    move-object v1, p0

    move v7, p3

    move/from16 v8, p4

    .line 2302
    :try_start_93
    invoke-static/range {v1 .. v9}, Lorg/telegram/messenger/ImageLoader;->scaleAndSaveImageInternal(Landroid/graphics/Bitmap;IIFFFIZZ)Lorg/telegram/tgnet/TLRPC$PhotoSize;
    :try_end_96
    .catch Ljava/lang/Throwable; {:try_start_93 .. :try_end_96} :catch_99

    move-result-object v1

    goto/16 :goto_3

    .line 2303
    :catch_99
    move-exception v11

    .line 2304
    .local v11, "e2":Ljava/lang/Throwable;
    invoke-static {v11}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 2305
    const/4 v1, 0x0

    goto/16 :goto_3
.end method

.method private static scaleAndSaveImageInternal(Landroid/graphics/Bitmap;IIFFFIZZ)Lorg/telegram/tgnet/TLRPC$PhotoSize;
    .registers 21
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "photoW"    # F
    .param p4, "photoH"    # F
    .param p5, "scaleFactor"    # F
    .param p6, "quality"    # I
    .param p7, "cache"    # Z
    .param p8, "scaleAnyway"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 2216
    const/high16 v9, 0x3f800000    # 1.0f

    cmpl-float v9, p5, v9

    if-gtz v9, :cond_8

    if-eqz p8, :cond_a8

    .line 2217
    :cond_8
    const/4 v9, 0x1

    invoke-static {p0, p1, p2, v9}, Lorg/telegram/messenger/Bitmaps;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 2222
    .local v5, "scaledBitmap":Landroid/graphics/Bitmap;
    :goto_d
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_fileLocation;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_fileLocation;-><init>()V

    .line 2223
    .local v4, "location":Lorg/telegram/tgnet/TLRPC$TL_fileLocation;
    const-wide/32 v10, -0x80000000

    iput-wide v10, v4, Lorg/telegram/tgnet/TLRPC$TL_fileLocation;->volume_id:J

    .line 2224
    const/high16 v9, -0x80000000

    iput v9, v4, Lorg/telegram/tgnet/TLRPC$TL_fileLocation;->dc_id:I

    .line 2225
    sget v9, Lorg/telegram/messenger/UserConfig;->lastLocalId:I

    iput v9, v4, Lorg/telegram/tgnet/TLRPC$TL_fileLocation;->local_id:I

    .line 2226
    sget v9, Lorg/telegram/messenger/UserConfig;->lastLocalId:I

    add-int/lit8 v9, v9, -0x1

    sput v9, Lorg/telegram/messenger/UserConfig;->lastLocalId:I

    .line 2227
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_photoSize;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_photoSize;-><init>()V

    .line 2228
    .local v6, "size":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    iput-object v4, v6, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 2229
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    iput v9, v6, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    .line 2230
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    iput v9, v6, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    .line 2231
    iget v9, v6, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    const/16 v10, 0x64

    if-gt v9, v10, :cond_ab

    iget v9, v6, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    const/16 v10, 0x64

    if-gt v9, v10, :cond_ab

    .line 2232
    const-string v9, "s"

    iput-object v9, v6, Lorg/telegram/tgnet/TLRPC$PhotoSize;->type:Ljava/lang/String;

    .line 2243
    :goto_48
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v10, v4, Lorg/telegram/tgnet/TLRPC$TL_fileLocation;->volume_id:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v4, Lorg/telegram/tgnet/TLRPC$TL_fileLocation;->local_id:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".jpg"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2244
    .local v3, "fileName":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v9

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v9

    invoke-direct {v2, v9, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2245
    .local v2, "cacheFile":Ljava/io/File;
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 2246
    .local v7, "stream":Ljava/io/FileOutputStream;
    sget-object v9, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    move/from16 v0, p6

    invoke-virtual {v5, v9, v0, v7}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 2247
    if-eqz p7, :cond_e6

    .line 2248
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v8}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2249
    .local v8, "stream2":Ljava/io/ByteArrayOutputStream;
    sget-object v9, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    move/from16 v0, p6

    invoke-virtual {v5, v9, v0, v8}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 2250
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    iput-object v9, v6, Lorg/telegram/tgnet/TLRPC$PhotoSize;->bytes:[B

    .line 2251
    iget-object v9, v6, Lorg/telegram/tgnet/TLRPC$PhotoSize;->bytes:[B

    array-length v9, v9

    iput v9, v6, Lorg/telegram/tgnet/TLRPC$PhotoSize;->size:I

    .line 2252
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 2256
    .end local v8    # "stream2":Ljava/io/ByteArrayOutputStream;
    :goto_9f
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V

    .line 2257
    if-eq v5, p0, :cond_a7

    .line 2258
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 2261
    :cond_a7
    return-object v6

    .line 2219
    .end local v2    # "cacheFile":Ljava/io/File;
    .end local v3    # "fileName":Ljava/lang/String;
    .end local v4    # "location":Lorg/telegram/tgnet/TLRPC$TL_fileLocation;
    .end local v5    # "scaledBitmap":Landroid/graphics/Bitmap;
    .end local v6    # "size":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    .end local v7    # "stream":Ljava/io/FileOutputStream;
    :cond_a8
    move-object v5, p0

    .restart local v5    # "scaledBitmap":Landroid/graphics/Bitmap;
    goto/16 :goto_d

    .line 2233
    .restart local v4    # "location":Lorg/telegram/tgnet/TLRPC$TL_fileLocation;
    .restart local v6    # "size":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    :cond_ab
    iget v9, v6, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    const/16 v10, 0x140

    if-gt v9, v10, :cond_bc

    iget v9, v6, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    const/16 v10, 0x140

    if-gt v9, v10, :cond_bc

    .line 2234
    const-string v9, "m"

    iput-object v9, v6, Lorg/telegram/tgnet/TLRPC$PhotoSize;->type:Ljava/lang/String;

    goto :goto_48

    .line 2235
    :cond_bc
    iget v9, v6, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    const/16 v10, 0x320

    if-gt v9, v10, :cond_ce

    iget v9, v6, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    const/16 v10, 0x320

    if-gt v9, v10, :cond_ce

    .line 2236
    const-string v9, "x"

    iput-object v9, v6, Lorg/telegram/tgnet/TLRPC$PhotoSize;->type:Ljava/lang/String;

    goto/16 :goto_48

    .line 2237
    :cond_ce
    iget v9, v6, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    const/16 v10, 0x500

    if-gt v9, v10, :cond_e0

    iget v9, v6, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    const/16 v10, 0x500

    if-gt v9, v10, :cond_e0

    .line 2238
    const-string v9, "y"

    iput-object v9, v6, Lorg/telegram/tgnet/TLRPC$PhotoSize;->type:Ljava/lang/String;

    goto/16 :goto_48

    .line 2240
    :cond_e0
    const-string v9, "w"

    iput-object v9, v6, Lorg/telegram/tgnet/TLRPC$PhotoSize;->type:Ljava/lang/String;

    goto/16 :goto_48

    .line 2254
    .restart local v2    # "cacheFile":Ljava/io/File;
    .restart local v3    # "fileName":Ljava/lang/String;
    .restart local v7    # "stream":Ljava/io/FileOutputStream;
    :cond_e6
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v9

    invoke-virtual {v9}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v10

    long-to-int v9, v10

    iput v9, v6, Lorg/telegram/tgnet/TLRPC$PhotoSize;->size:I

    goto :goto_9f
.end method


# virtual methods
.method public cancelLoadHttpFile(Ljava/lang/String;)V
    .registers 6
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 2009
    iget-object v2, p0, Lorg/telegram/messenger/ImageLoader;->httpFileLoadTasksByKeys:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/ImageLoader$HttpFileTask;

    .line 2010
    .local v1, "task":Lorg/telegram/messenger/ImageLoader$HttpFileTask;
    if-eqz v1, :cond_18

    .line 2011
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->cancel(Z)Z

    .line 2012
    iget-object v2, p0, Lorg/telegram/messenger/ImageLoader;->httpFileLoadTasksByKeys:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2013
    iget-object v2, p0, Lorg/telegram/messenger/ImageLoader;->httpFileLoadTasks:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 2015
    :cond_18
    iget-object v2, p0, Lorg/telegram/messenger/ImageLoader;->retryHttpsTasks:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 2016
    .local v0, "runnable":Ljava/lang/Runnable;
    if-eqz v0, :cond_25

    .line 2017
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 2019
    :cond_25
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lorg/telegram/messenger/ImageLoader;->runHttpFileLoadTasks(Lorg/telegram/messenger/ImageLoader$HttpFileTask;I)V

    .line 2020
    return-void
.end method

.method public cancelLoadingForImageReceiver(Lorg/telegram/messenger/ImageReceiver;I)V
    .registers 5
    .param p1, "imageReceiver"    # Lorg/telegram/messenger/ImageReceiver;
    .param p2, "type"    # I

    .prologue
    .line 1507
    if-nez p1, :cond_3

    .line 1534
    :goto_2
    return-void

    .line 1510
    :cond_3
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader;->imageLoadQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/ImageLoader$5;

    invoke-direct {v1, p0, p2, p1}, Lorg/telegram/messenger/ImageLoader$5;-><init>(Lorg/telegram/messenger/ImageLoader;ILorg/telegram/messenger/ImageReceiver;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_2
.end method

.method public checkMediaPaths()V
    .registers 3

    .prologue
    .line 1281
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader;->cacheOutQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/ImageLoader$4;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/ImageLoader$4;-><init>(Lorg/telegram/messenger/ImageLoader;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 1293
    return-void
.end method

.method public clearMemory()V
    .registers 2

    .prologue
    .line 1489
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader;->memCache:Lorg/telegram/messenger/LruCache;

    invoke-virtual {v0}, Lorg/telegram/messenger/LruCache;->evictAll()V

    .line 1490
    return-void
.end method

.method public createMediaPaths()Ljava/util/HashMap;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1296
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 1297
    .local v5, "mediaDirs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/io/File;>;"
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getCacheDir()Ljava/io/File;

    move-result-object v1

    .line 1298
    .local v1, "cachePath":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-nez v7, :cond_12

    .line 1300
    :try_start_f
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_12} :catch_158

    .line 1306
    :cond_12
    :goto_12
    :try_start_12
    new-instance v7, Ljava/io/File;

    const-string v8, ".nomedia"

    invoke-direct {v7, v1, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->createNewFile()Z
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_1c} :catch_15e

    .line 1311
    :goto_1c
    const/4 v7, 0x4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1312
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "cache path = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 1315
    :try_start_3a
    const-string v7, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_17f

    .line 1316
    new-instance v7, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v8

    const-string v9, "Telegram"

    invoke-direct {v7, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v7, p0, Lorg/telegram/messenger/ImageLoader;->telegramPath:Ljava/io/File;

    .line 1317
    iget-object v7, p0, Lorg/telegram/messenger/ImageLoader;->telegramPath:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    .line 1319
    iget-object v7, p0, Lorg/telegram/messenger/ImageLoader;->telegramPath:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_5d} :catch_16a

    move-result v7

    if-eqz v7, :cond_150

    .line 1321
    :try_start_60
    new-instance v4, Ljava/io/File;

    iget-object v7, p0, Lorg/telegram/messenger/ImageLoader;->telegramPath:Ljava/io/File;

    const-string v8, "Telegram Images"

    invoke-direct {v4, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1322
    .local v4, "imagePath":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->mkdir()Z

    .line 1323
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_97

    const/4 v7, 0x0

    invoke-direct {p0, v1, v4, v7}, Lorg/telegram/messenger/ImageLoader;->canMoveFiles(Ljava/io/File;Ljava/io/File;I)Z

    move-result v7

    if-eqz v7, :cond_97

    .line 1324
    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1325
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "image path = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V
    :try_end_97
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_97} :catch_164

    .line 1332
    .end local v4    # "imagePath":Ljava/io/File;
    :cond_97
    :goto_97
    :try_start_97
    new-instance v6, Ljava/io/File;

    iget-object v7, p0, Lorg/telegram/messenger/ImageLoader;->telegramPath:Ljava/io/File;

    const-string v8, "Telegram Video"

    invoke-direct {v6, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1333
    .local v6, "videoPath":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->mkdir()Z

    .line 1334
    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_ce

    const/4 v7, 0x2

    invoke-direct {p0, v1, v6, v7}, Lorg/telegram/messenger/ImageLoader;->canMoveFiles(Ljava/io/File;Ljava/io/File;I)Z

    move-result v7

    if-eqz v7, :cond_ce

    .line 1335
    const/4 v7, 0x2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1336
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "video path = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V
    :try_end_ce
    .catch Ljava/lang/Exception; {:try_start_97 .. :try_end_ce} :catch_16f

    .line 1343
    .end local v6    # "videoPath":Ljava/io/File;
    :cond_ce
    :goto_ce
    :try_start_ce
    new-instance v0, Ljava/io/File;

    iget-object v7, p0, Lorg/telegram/messenger/ImageLoader;->telegramPath:Ljava/io/File;

    const-string v8, "Telegram Audio"

    invoke-direct {v0, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1344
    .local v0, "audioPath":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 1345
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_10f

    const/4 v7, 0x1

    invoke-direct {p0, v1, v0, v7}, Lorg/telegram/messenger/ImageLoader;->canMoveFiles(Ljava/io/File;Ljava/io/File;I)Z

    move-result v7

    if-eqz v7, :cond_10f

    .line 1346
    new-instance v7, Ljava/io/File;

    const-string v8, ".nomedia"

    invoke-direct {v7, v0, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->createNewFile()Z

    .line 1347
    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1348
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "audio path = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V
    :try_end_10f
    .catch Ljava/lang/Exception; {:try_start_ce .. :try_end_10f} :catch_175

    .line 1355
    .end local v0    # "audioPath":Ljava/io/File;
    :cond_10f
    :goto_10f
    :try_start_10f
    new-instance v2, Ljava/io/File;

    iget-object v7, p0, Lorg/telegram/messenger/ImageLoader;->telegramPath:Ljava/io/File;

    const-string v8, "Telegram Documents"

    invoke-direct {v2, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1356
    .local v2, "documentPath":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    .line 1357
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_150

    const/4 v7, 0x3

    invoke-direct {p0, v1, v2, v7}, Lorg/telegram/messenger/ImageLoader;->canMoveFiles(Ljava/io/File;Ljava/io/File;I)Z

    move-result v7

    if-eqz v7, :cond_150

    .line 1358
    new-instance v7, Ljava/io/File;

    const-string v8, ".nomedia"

    invoke-direct {v7, v2, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->createNewFile()Z

    .line 1359
    const/4 v7, 0x3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1360
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "documents path = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V
    :try_end_150
    .catch Ljava/lang/Exception; {:try_start_10f .. :try_end_150} :catch_17a

    .line 1369
    .end local v2    # "documentPath":Ljava/io/File;
    :cond_150
    :goto_150
    :try_start_150
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/messenger/MediaController;->checkSaveToGalleryFiles()V
    :try_end_157
    .catch Ljava/lang/Exception; {:try_start_150 .. :try_end_157} :catch_16a

    .line 1374
    :goto_157
    return-object v5

    .line 1301
    :catch_158
    move-exception v3

    .line 1302
    .local v3, "e":Ljava/lang/Exception;
    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_12

    .line 1307
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_15e
    move-exception v3

    .line 1308
    .restart local v3    # "e":Ljava/lang/Exception;
    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_1c

    .line 1327
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_164
    move-exception v3

    .line 1328
    .restart local v3    # "e":Ljava/lang/Exception;
    :try_start_165
    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_168
    .catch Ljava/lang/Exception; {:try_start_165 .. :try_end_168} :catch_16a

    goto/16 :goto_97

    .line 1370
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_16a
    move-exception v3

    .line 1371
    .restart local v3    # "e":Ljava/lang/Exception;
    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_157

    .line 1338
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_16f
    move-exception v3

    .line 1339
    .restart local v3    # "e":Ljava/lang/Exception;
    :try_start_170
    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_ce

    .line 1350
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_175
    move-exception v3

    .line 1351
    .restart local v3    # "e":Ljava/lang/Exception;
    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_10f

    .line 1362
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_17a
    move-exception v3

    .line 1363
    .restart local v3    # "e":Ljava/lang/Exception;
    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_150

    .line 1367
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_17f
    const-string v7, "this Android can\'t rename files"

    invoke-static {v7}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V
    :try_end_184
    .catch Ljava/lang/Exception; {:try_start_170 .. :try_end_184} :catch_16a

    goto :goto_150
.end method

.method public decrementUseCount(Ljava/lang/String;)Z
    .registers 5
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 1466
    iget-object v2, p0, Lorg/telegram/messenger/ImageLoader;->bitmapUseCounts:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1467
    .local v0, "count":Ljava/lang/Integer;
    if-nez v0, :cond_c

    .line 1476
    :goto_b
    return v1

    .line 1470
    :cond_c
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v1, :cond_18

    .line 1471
    iget-object v2, p0, Lorg/telegram/messenger/ImageLoader;->bitmapUseCounts:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    .line 1474
    :cond_18
    iget-object v1, p0, Lorg/telegram/messenger/ImageLoader;->bitmapUseCounts:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1476
    const/4 v1, 0x0

    goto :goto_b
.end method

.method public getFileProgress(Ljava/lang/String;)Ljava/lang/Float;
    .registers 3
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 1422
    if-nez p1, :cond_4

    .line 1423
    const/4 v0, 0x0

    .line 1425
    :goto_3
    return-object v0

    :cond_4
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader;->fileProgresses:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    goto :goto_3
.end method

.method public getImageFromMemory(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 1537
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader;->memCache:Lorg/telegram/messenger/LruCache;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/LruCache;->get(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    return-object v0
.end method

.method public getImageFromMemory(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
    .registers 10
    .param p1, "fileLocation"    # Lorg/telegram/tgnet/TLObject;
    .param p2, "httpUrl"    # Ljava/lang/String;
    .param p3, "filter"    # Ljava/lang/String;

    .prologue
    .line 1541
    if-nez p1, :cond_6

    if-nez p2, :cond_6

    .line 1542
    const/4 v2, 0x0

    .line 1566
    :goto_5
    return-object v2

    .line 1544
    :cond_6
    const/4 v0, 0x0

    .line 1545
    .local v0, "key":Ljava/lang/String;
    if-eqz p2, :cond_2d

    .line 1546
    invoke-static {p2}, Lorg/telegram/messenger/Utilities;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1563
    :cond_d
    :goto_d
    if-eqz p3, :cond_26

    .line 1564
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1566
    :cond_26
    iget-object v2, p0, Lorg/telegram/messenger/ImageLoader;->memCache:Lorg/telegram/messenger/LruCache;

    invoke-virtual {v2, v0}, Lorg/telegram/messenger/LruCache;->get(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v2

    goto :goto_5

    .line 1548
    :cond_2d
    instance-of v2, p1, Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v2, :cond_50

    move-object v1, p1

    .line 1549
    check-cast v1, Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 1550
    .local v1, "location":Lorg/telegram/tgnet/TLRPC$FileLocation;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v4, v1, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1551
    goto :goto_d

    .end local v1    # "location":Lorg/telegram/tgnet/TLRPC$FileLocation;
    :cond_50
    instance-of v2, p1, Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v2, :cond_a0

    move-object v1, p1

    .line 1552
    check-cast v1, Lorg/telegram/tgnet/TLRPC$Document;

    .line 1553
    .local v1, "location":Lorg/telegram/tgnet/TLRPC$Document;
    iget v2, v1, Lorg/telegram/tgnet/TLRPC$Document;->version:I

    if-nez v2, :cond_77

    .line 1554
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, v1, Lorg/telegram/tgnet/TLRPC$Document;->dc_id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, v1, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    .line 1556
    :cond_77
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, v1, Lorg/telegram/tgnet/TLRPC$Document;->dc_id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, v1, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lorg/telegram/tgnet/TLRPC$Document;->version:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_d

    .line 1558
    .end local v1    # "location":Lorg/telegram/tgnet/TLRPC$Document;
    :cond_a0
    instance-of v2, p1, Lorg/telegram/tgnet/TLRPC$TL_webDocument;

    if-eqz v2, :cond_d

    move-object v1, p1

    .line 1559
    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_webDocument;

    .line 1560
    .local v1, "location":Lorg/telegram/tgnet/TLRPC$TL_webDocument;
    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_webDocument;->url:Ljava/lang/String;

    invoke-static {v2}, Lorg/telegram/messenger/Utilities;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_d
.end method

.method public incrementUseCount(Ljava/lang/String;)V
    .registers 5
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 1457
    iget-object v1, p0, Lorg/telegram/messenger/ImageLoader;->bitmapUseCounts:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1458
    .local v0, "count":Ljava/lang/Integer;
    if-nez v0, :cond_15

    .line 1459
    iget-object v1, p0, Lorg/telegram/messenger/ImageLoader;->bitmapUseCounts:Ljava/util/HashMap;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1463
    :goto_14
    return-void

    .line 1461
    :cond_15
    iget-object v1, p0, Lorg/telegram/messenger/ImageLoader;->bitmapUseCounts:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_14
.end method

.method public isInCache(Ljava/lang/String;)Z
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 1485
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader;->memCache:Lorg/telegram/messenger/LruCache;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/LruCache;->get(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isLoadingHttpFile(Ljava/lang/String;)Z
    .registers 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 1991
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader;->httpFileLoadTasksByKeys:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public loadHttpFile(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "defaultExt"    # Ljava/lang/String;

    .prologue
    .line 1995
    if-eqz p1, :cond_10

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_10

    iget-object v3, p0, Lorg/telegram/messenger/ImageLoader;->httpFileLoadTasksByKeys:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 2006
    :cond_10
    :goto_10
    return-void

    .line 1998
    :cond_11
    invoke-static {p1, p2}, Lorg/telegram/messenger/ImageLoader;->getHttpUrlExtension(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1999
    .local v0, "ext":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lorg/telegram/messenger/Utilities;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_temp."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2000
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 2002
    new-instance v2, Lorg/telegram/messenger/ImageLoader$HttpFileTask;

    invoke-direct {v2, p0, p1, v1, v0}, Lorg/telegram/messenger/ImageLoader$HttpFileTask;-><init>(Lorg/telegram/messenger/ImageLoader;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V

    .line 2003
    .local v2, "task":Lorg/telegram/messenger/ImageLoader$HttpFileTask;
    iget-object v3, p0, Lorg/telegram/messenger/ImageLoader;->httpFileLoadTasks:Ljava/util/LinkedList;

    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 2004
    iget-object v3, p0, Lorg/telegram/messenger/ImageLoader;->httpFileLoadTasksByKeys:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2005
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4}, Lorg/telegram/messenger/ImageLoader;->runHttpFileLoadTasks(Lorg/telegram/messenger/ImageLoader$HttpFileTask;I)V

    goto :goto_10
.end method

.method public loadImageForImageReceiver(Lorg/telegram/messenger/ImageReceiver;)V
    .registers 42
    .param p1, "imageReceiver"    # Lorg/telegram/messenger/ImageReceiver;

    .prologue
    .line 1785
    if-nez p1, :cond_3

    .line 1900
    :cond_2
    :goto_2
    return-void

    .line 1789
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/ImageReceiver;->getKey()Ljava/lang/String;

    move-result-object v36

    .line 1790
    .local v36, "key":Ljava/lang/String;
    if-eqz v36, :cond_2f

    .line 1791
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/ImageLoader;->memCache:Lorg/telegram/messenger/LruCache;

    move-object/from16 v0, v36

    invoke-virtual {v4, v0}, Lorg/telegram/messenger/LruCache;->get(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v31

    .line 1792
    .local v31, "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    if-eqz v31, :cond_2f

    .line 1793
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4}, Lorg/telegram/messenger/ImageLoader;->cancelLoadingForImageReceiver(Lorg/telegram/messenger/ImageReceiver;I)V

    .line 1794
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/ImageReceiver;->isForcePreview()Z

    move-result v4

    if-nez v4, :cond_2f

    .line 1795
    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v31

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2, v4, v5}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmapByKey(Landroid/graphics/drawable/BitmapDrawable;Ljava/lang/String;ZZ)Z

    goto :goto_2

    .line 1800
    .end local v31    # "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    :cond_2f
    const/16 v39, 0x0

    .line 1801
    .local v39, "thumbSet":Z
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/ImageReceiver;->getThumbKey()Ljava/lang/String;

    move-result-object v6

    .line 1802
    .local v6, "thumbKey":Ljava/lang/String;
    if-eqz v6, :cond_54

    .line 1803
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/ImageLoader;->memCache:Lorg/telegram/messenger/LruCache;

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/LruCache;->get(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v31

    .line 1804
    .restart local v31    # "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    if-eqz v31, :cond_54

    .line 1805
    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v31

    invoke-virtual {v0, v1, v6, v4, v5}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmapByKey(Landroid/graphics/drawable/BitmapDrawable;Ljava/lang/String;ZZ)Z

    .line 1806
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4}, Lorg/telegram/messenger/ImageLoader;->cancelLoadingForImageReceiver(Lorg/telegram/messenger/ImageReceiver;I)V

    .line 1807
    const/16 v39, 0x1

    .line 1811
    .end local v31    # "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    :cond_54
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/ImageReceiver;->getThumbLocation()Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-result-object v9

    .line 1812
    .local v9, "thumbLocation":Lorg/telegram/tgnet/TLRPC$FileLocation;
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/ImageReceiver;->getImageLocation()Lorg/telegram/tgnet/TLObject;

    move-result-object v25

    .line 1813
    .local v25, "imageLocation":Lorg/telegram/tgnet/TLObject;
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/ImageReceiver;->getHttpImageLocation()Ljava/lang/String;

    move-result-object v18

    .line 1815
    .local v18, "httpLocation":Ljava/lang/String;
    const/16 v38, 0x0

    .line 1817
    .local v38, "saveImageToCache":Z
    const/4 v15, 0x0

    .line 1818
    .local v15, "url":Ljava/lang/String;
    const/4 v7, 0x0

    .line 1819
    .local v7, "thumbUrl":Ljava/lang/String;
    const/16 v36, 0x0

    .line 1820
    const/4 v6, 0x0

    .line 1821
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/ImageReceiver;->getExt()Ljava/lang/String;

    move-result-object v8

    .line 1822
    .local v8, "ext":Ljava/lang/String;
    if-nez v8, :cond_6f

    .line 1823
    const-string v8, "jpg"

    .line 1825
    :cond_6f
    if-eqz v18, :cond_130

    .line 1826
    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/Utilities;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    .line 1827
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v36

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "jpg"

    move-object/from16 v0, v18

    invoke-static {v0, v5}, Lorg/telegram/messenger/ImageLoader;->getHttpUrlExtension(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 1879
    :cond_96
    :goto_96
    if-eqz v9, :cond_ca

    .line 1880
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v12, v9, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    invoke-virtual {v4, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v9, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1881
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1884
    :cond_ca
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/ImageReceiver;->getFilter()Ljava/lang/String;

    move-result-object v19

    .line 1885
    .local v19, "filter":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/ImageReceiver;->getThumbFilter()Ljava/lang/String;

    move-result-object v11

    .line 1886
    .local v11, "thumbFilter":Ljava/lang/String;
    if-eqz v36, :cond_f1

    if-eqz v19, :cond_f1

    .line 1887
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v36

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "@"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    .line 1889
    :cond_f1
    if-eqz v6, :cond_10c

    if-eqz v11, :cond_10c

    .line 1890
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "@"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1893
    :cond_10c
    if-eqz v18, :cond_2c5

    .line 1894
    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-eqz v39, :cond_2c2

    const/4 v14, 0x2

    :goto_114
    move-object/from16 v4, p0

    move-object/from16 v5, p1

    invoke-direct/range {v4 .. v14}, Lorg/telegram/messenger/ImageLoader;->createLoadOperationForImageReceiver(Lorg/telegram/messenger/ImageReceiver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Ljava/lang/String;IZI)V

    .line 1895
    const/16 v17, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x1

    const/16 v22, 0x0

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move-object/from16 v14, v36

    move-object/from16 v16, v8

    invoke-direct/range {v12 .. v22}, Lorg/telegram/messenger/ImageLoader;->createLoadOperationForImageReceiver(Lorg/telegram/messenger/ImageReceiver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Ljava/lang/String;IZI)V

    goto/16 :goto_2

    .line 1828
    .end local v11    # "thumbFilter":Ljava/lang/String;
    .end local v19    # "filter":Ljava/lang/String;
    :cond_130
    if-eqz v25, :cond_96

    .line 1829
    move-object/from16 v0, v25

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v4, :cond_19e

    move-object/from16 v37, v25

    .line 1830
    check-cast v37, Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 1831
    .local v37, "location":Lorg/telegram/tgnet/TLRPC$FileLocation;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v37

    iget-wide v12, v0, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    invoke-virtual {v4, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v37

    iget v5, v0, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    .line 1832
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v36

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 1833
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/ImageReceiver;->getExt()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_191

    move-object/from16 v0, v37

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$FileLocation;->key:[B

    if-nez v4, :cond_191

    move-object/from16 v0, v37

    iget-wide v4, v0, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    const-wide/32 v12, -0x80000000

    cmp-long v4, v4, v12

    if-nez v4, :cond_193

    move-object/from16 v0, v37

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    if-gez v4, :cond_193

    .line 1834
    :cond_191
    const/16 v38, 0x1

    .line 1872
    .end local v37    # "location":Lorg/telegram/tgnet/TLRPC$FileLocation;
    :cond_193
    :goto_193
    move-object/from16 v0, v25

    if-ne v0, v9, :cond_96

    .line 1873
    const/16 v25, 0x0

    .line 1874
    const/16 v36, 0x0

    .line 1875
    const/4 v15, 0x0

    goto/16 :goto_96

    .line 1836
    :cond_19e
    move-object/from16 v0, v25

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_webDocument;

    if-eqz v4, :cond_1dc

    move-object/from16 v34, v25

    .line 1837
    check-cast v34, Lorg/telegram/tgnet/TLRPC$TL_webDocument;

    .line 1838
    .local v34, "document":Lorg/telegram/tgnet/TLRPC$TL_webDocument;
    move-object/from16 v0, v34

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_webDocument;->mime_type:Ljava/lang/String;

    invoke-static {v4}, Lorg/telegram/messenger/FileLoader;->getExtensionByMime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 1839
    .local v32, "defaultExt":Ljava/lang/String;
    move-object/from16 v0, v34

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_webDocument;->url:Ljava/lang/String;

    invoke-static {v4}, Lorg/telegram/messenger/Utilities;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    .line 1840
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v36

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v34

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$TL_webDocument;->url:Ljava/lang/String;

    move-object/from16 v0, v32

    invoke-static {v5, v0}, Lorg/telegram/messenger/ImageLoader;->getHttpUrlExtension(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 1841
    goto :goto_193

    .end local v32    # "defaultExt":Ljava/lang/String;
    .end local v34    # "document":Lorg/telegram/tgnet/TLRPC$TL_webDocument;
    :cond_1dc
    move-object/from16 v0, v25

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v4, :cond_193

    move-object/from16 v34, v25

    .line 1842
    check-cast v34, Lorg/telegram/tgnet/TLRPC$Document;

    .line 1843
    .local v34, "document":Lorg/telegram/tgnet/TLRPC$Document;
    move-object/from16 v0, v34

    iget-wide v4, v0, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    const-wide/16 v12, 0x0

    cmp-long v4, v4, v12

    if-eqz v4, :cond_2

    move-object/from16 v0, v34

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Document;->dc_id:I

    if-eqz v4, :cond_2

    .line 1846
    move-object/from16 v0, v34

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Document;->version:I

    if-nez v4, :cond_283

    .line 1847
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v34

    iget v5, v0, Lorg/telegram/tgnet/TLRPC$Document;->dc_id:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v34

    iget-wide v12, v0, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-virtual {v4, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    .line 1852
    :goto_21b
    invoke-static/range {v34 .. v34}, Lorg/telegram/messenger/FileLoader;->getDocumentFileName(Lorg/telegram/tgnet/TLRPC$Document;)Ljava/lang/String;

    move-result-object v33

    .line 1854
    .local v33, "docExt":Ljava/lang/String;
    if-eqz v33, :cond_22e

    const/16 v4, 0x2e

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v35

    .local v35, "idx":I
    const/4 v4, -0x1

    move/from16 v0, v35

    if-ne v0, v4, :cond_2b2

    .line 1855
    .end local v35    # "idx":I
    :cond_22e
    const-string v33, ""

    .line 1859
    :goto_230
    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-gt v4, v5, :cond_24b

    .line 1860
    move-object/from16 v0, v34

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    if-eqz v4, :cond_2bc

    move-object/from16 v0, v34

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    const-string v5, "video/mp4"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2bc

    .line 1861
    const-string v33, ".mp4"

    .line 1866
    :cond_24b
    :goto_24b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v36

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v33

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 1867
    if-eqz v6, :cond_279

    .line 1868
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1870
    :cond_279
    invoke-static/range {v34 .. v34}, Lorg/telegram/messenger/MessageObject;->isGifDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v4

    if-nez v4, :cond_2bf

    const/16 v38, 0x1

    :goto_281
    goto/16 :goto_193

    .line 1849
    .end local v33    # "docExt":Ljava/lang/String;
    :cond_283
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v34

    iget v5, v0, Lorg/telegram/tgnet/TLRPC$Document;->dc_id:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v34

    iget-wide v12, v0, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-virtual {v4, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v34

    iget v5, v0, Lorg/telegram/tgnet/TLRPC$Document;->version:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    goto/16 :goto_21b

    .line 1857
    .restart local v33    # "docExt":Ljava/lang/String;
    .restart local v35    # "idx":I
    :cond_2b2
    move-object/from16 v0, v33

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v33

    goto/16 :goto_230

    .line 1863
    .end local v35    # "idx":I
    :cond_2bc
    const-string v33, ""

    goto :goto_24b

    .line 1870
    :cond_2bf
    const/16 v38, 0x0

    goto :goto_281

    .line 1894
    .end local v33    # "docExt":Ljava/lang/String;
    .end local v34    # "document":Lorg/telegram/tgnet/TLRPC$Document;
    .restart local v11    # "thumbFilter":Ljava/lang/String;
    .restart local v19    # "filter":Ljava/lang/String;
    :cond_2c2
    const/4 v14, 0x1

    goto/16 :goto_114

    .line 1897
    :cond_2c5
    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-eqz v39, :cond_2f5

    const/4 v14, 0x2

    :goto_2cb
    move-object/from16 v4, p0

    move-object/from16 v5, p1

    invoke-direct/range {v4 .. v14}, Lorg/telegram/messenger/ImageLoader;->createLoadOperationForImageReceiver(Lorg/telegram/messenger/ImageReceiver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Ljava/lang/String;IZI)V

    .line 1898
    const/16 v26, 0x0

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/ImageReceiver;->getSize()I

    move-result v28

    if-nez v38, :cond_2e0

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/ImageReceiver;->getCacheOnly()Z

    move-result v4

    if-eqz v4, :cond_2f7

    :cond_2e0
    const/16 v29, 0x1

    :goto_2e2
    const/16 v30, 0x0

    move-object/from16 v20, p0

    move-object/from16 v21, p1

    move-object/from16 v22, v36

    move-object/from16 v23, v15

    move-object/from16 v24, v8

    move-object/from16 v27, v19

    invoke-direct/range {v20 .. v30}, Lorg/telegram/messenger/ImageLoader;->createLoadOperationForImageReceiver(Lorg/telegram/messenger/ImageReceiver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Ljava/lang/String;IZI)V

    goto/16 :goto_2

    .line 1897
    :cond_2f5
    const/4 v14, 0x1

    goto :goto_2cb

    .line 1898
    :cond_2f7
    const/16 v29, 0x0

    goto :goto_2e2
.end method

.method public putImageToCache(Landroid/graphics/drawable/BitmapDrawable;Ljava/lang/String;)V
    .registers 4
    .param p1, "bitmap"    # Landroid/graphics/drawable/BitmapDrawable;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 1599
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader;->memCache:Lorg/telegram/messenger/LruCache;

    invoke-virtual {v0, p2, p1}, Lorg/telegram/messenger/LruCache;->put(Ljava/lang/String;Landroid/graphics/drawable/BitmapDrawable;)Landroid/graphics/drawable/BitmapDrawable;

    .line 1600
    return-void
.end method

.method public removeImage(Ljava/lang/String;)V
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 1480
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader;->bitmapUseCounts:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1481
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader;->memCache:Lorg/telegram/messenger/LruCache;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/LruCache;->remove(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    .line 1482
    return-void
.end method

.method public replaceImageInCache(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$FileLocation;Z)V
    .registers 6
    .param p1, "oldKey"    # Ljava/lang/String;
    .param p2, "newKey"    # Ljava/lang/String;
    .param p3, "newLocation"    # Lorg/telegram/tgnet/TLRPC$FileLocation;
    .param p4, "post"    # Z

    .prologue
    .line 1586
    if-eqz p4, :cond_b

    .line 1587
    new-instance v0, Lorg/telegram/messenger/ImageLoader$6;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/telegram/messenger/ImageLoader$6;-><init>(Lorg/telegram/messenger/ImageLoader;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$FileLocation;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 1596
    :goto_a
    return-void

    .line 1594
    :cond_b
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/ImageLoader;->replaceImageInCacheInternal(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$FileLocation;)V

    goto :goto_a
.end method
