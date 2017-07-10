.class public Lorg/telegram/messenger/FileLoader;
.super Ljava/lang/Object;
.source "FileLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/FileLoader$FileLoaderDelegate;
    }
.end annotation


# static fields
.field private static volatile Instance:Lorg/telegram/messenger/FileLoader; = null

.field public static final MEDIA_DIR_AUDIO:I = 0x1

.field public static final MEDIA_DIR_CACHE:I = 0x4

.field public static final MEDIA_DIR_DOCUMENT:I = 0x3

.field public static final MEDIA_DIR_IMAGE:I = 0x0

.field public static final MEDIA_DIR_VIDEO:I = 0x2


# instance fields
.field private audioLoadOperationQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lorg/telegram/messenger/FileLoadOperation;",
            ">;"
        }
    .end annotation
.end field

.field private currentAudioLoadOperationsCount:I

.field private currentLoadOperationsCount:I

.field private currentPhotoLoadOperationsCount:I

.field private currentUploadOperationsCount:I

.field private currentUploadSmallOperationsCount:I

.field private delegate:Lorg/telegram/messenger/FileLoader$FileLoaderDelegate;

.field private volatile fileLoaderQueue:Lorg/telegram/messenger/DispatchQueue;

.field private loadOperationPaths:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/telegram/messenger/FileLoadOperation;",
            ">;"
        }
    .end annotation
.end field

.field private loadOperationQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lorg/telegram/messenger/FileLoadOperation;",
            ">;"
        }
    .end annotation
.end field

.field private mediaDirs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private photoLoadOperationQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lorg/telegram/messenger/FileLoadOperation;",
            ">;"
        }
    .end annotation
.end field

.field private uploadOperationPaths:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/telegram/messenger/FileUploadOperation;",
            ">;"
        }
    .end annotation
.end field

.field private uploadOperationPathsEnc:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/telegram/messenger/FileUploadOperation;",
            ">;"
        }
    .end annotation
.end field

.field private uploadOperationQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lorg/telegram/messenger/FileUploadOperation;",
            ">;"
        }
    .end annotation
.end field

.field private uploadSizes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private uploadSmallOperationQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lorg/telegram/messenger/FileUploadOperation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 59
    const/4 v0, 0x0

    sput-object v0, Lorg/telegram/messenger/FileLoader;->Instance:Lorg/telegram/messenger/FileLoader;

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object v3, p0, Lorg/telegram/messenger/FileLoader;->mediaDirs:Ljava/util/HashMap;

    .line 39
    new-instance v0, Lorg/telegram/messenger/DispatchQueue;

    const-string v1, "fileUploadQueue"

    invoke-direct {v0, v1}, Lorg/telegram/messenger/DispatchQueue;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/telegram/messenger/FileLoader;->fileLoaderQueue:Lorg/telegram/messenger/DispatchQueue;

    .line 41
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/FileLoader;->uploadOperationQueue:Ljava/util/LinkedList;

    .line 42
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/FileLoader;->uploadSmallOperationQueue:Ljava/util/LinkedList;

    .line 43
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/FileLoader;->loadOperationQueue:Ljava/util/LinkedList;

    .line 44
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/FileLoader;->audioLoadOperationQueue:Ljava/util/LinkedList;

    .line 45
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/FileLoader;->photoLoadOperationQueue:Ljava/util/LinkedList;

    .line 46
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/FileLoader;->uploadOperationPaths:Ljava/util/concurrent/ConcurrentHashMap;

    .line 47
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/FileLoader;->uploadOperationPathsEnc:Ljava/util/concurrent/ConcurrentHashMap;

    .line 48
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/FileLoader;->loadOperationPaths:Ljava/util/concurrent/ConcurrentHashMap;

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/FileLoader;->uploadSizes:Ljava/util/HashMap;

    .line 51
    iput-object v3, p0, Lorg/telegram/messenger/FileLoader;->delegate:Lorg/telegram/messenger/FileLoader$FileLoaderDelegate;

    .line 53
    iput v2, p0, Lorg/telegram/messenger/FileLoader;->currentLoadOperationsCount:I

    .line 54
    iput v2, p0, Lorg/telegram/messenger/FileLoader;->currentAudioLoadOperationsCount:I

    .line 55
    iput v2, p0, Lorg/telegram/messenger/FileLoader;->currentPhotoLoadOperationsCount:I

    .line 56
    iput v2, p0, Lorg/telegram/messenger/FileLoader;->currentUploadOperationsCount:I

    .line 57
    iput v2, p0, Lorg/telegram/messenger/FileLoader;->currentUploadSmallOperationsCount:I

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/messenger/FileLoader;)Ljava/util/concurrent/ConcurrentHashMap;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/FileLoader;

    .prologue
    .line 21
    iget-object v0, p0, Lorg/telegram/messenger/FileLoader;->uploadOperationPaths:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$100(Lorg/telegram/messenger/FileLoader;)Ljava/util/concurrent/ConcurrentHashMap;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/FileLoader;

    .prologue
    .line 21
    iget-object v0, p0, Lorg/telegram/messenger/FileLoader;->uploadOperationPathsEnc:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$1000(Lorg/telegram/messenger/FileLoader;)Ljava/util/LinkedList;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/FileLoader;

    .prologue
    .line 21
    iget-object v0, p0, Lorg/telegram/messenger/FileLoader;->audioLoadOperationQueue:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$1100(Lorg/telegram/messenger/FileLoader;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/FileLoader;

    .prologue
    .line 21
    iget v0, p0, Lorg/telegram/messenger/FileLoader;->currentAudioLoadOperationsCount:I

    return v0
.end method

.method static synthetic access$1108(Lorg/telegram/messenger/FileLoader;)I
    .registers 3
    .param p0, "x0"    # Lorg/telegram/messenger/FileLoader;

    .prologue
    .line 21
    iget v0, p0, Lorg/telegram/messenger/FileLoader;->currentAudioLoadOperationsCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/messenger/FileLoader;->currentAudioLoadOperationsCount:I

    return v0
.end method

.method static synthetic access$1110(Lorg/telegram/messenger/FileLoader;)I
    .registers 3
    .param p0, "x0"    # Lorg/telegram/messenger/FileLoader;

    .prologue
    .line 21
    iget v0, p0, Lorg/telegram/messenger/FileLoader;->currentAudioLoadOperationsCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lorg/telegram/messenger/FileLoader;->currentAudioLoadOperationsCount:I

    return v0
.end method

.method static synthetic access$1200(Lorg/telegram/messenger/FileLoader;)Ljava/util/LinkedList;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/FileLoader;

    .prologue
    .line 21
    iget-object v0, p0, Lorg/telegram/messenger/FileLoader;->photoLoadOperationQueue:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$1300(Lorg/telegram/messenger/FileLoader;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/FileLoader;

    .prologue
    .line 21
    iget v0, p0, Lorg/telegram/messenger/FileLoader;->currentPhotoLoadOperationsCount:I

    return v0
.end method

.method static synthetic access$1308(Lorg/telegram/messenger/FileLoader;)I
    .registers 3
    .param p0, "x0"    # Lorg/telegram/messenger/FileLoader;

    .prologue
    .line 21
    iget v0, p0, Lorg/telegram/messenger/FileLoader;->currentPhotoLoadOperationsCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/messenger/FileLoader;->currentPhotoLoadOperationsCount:I

    return v0
.end method

.method static synthetic access$1310(Lorg/telegram/messenger/FileLoader;)I
    .registers 3
    .param p0, "x0"    # Lorg/telegram/messenger/FileLoader;

    .prologue
    .line 21
    iget v0, p0, Lorg/telegram/messenger/FileLoader;->currentPhotoLoadOperationsCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lorg/telegram/messenger/FileLoader;->currentPhotoLoadOperationsCount:I

    return v0
.end method

.method static synthetic access$1400(Lorg/telegram/messenger/FileLoader;)Ljava/util/LinkedList;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/FileLoader;

    .prologue
    .line 21
    iget-object v0, p0, Lorg/telegram/messenger/FileLoader;->loadOperationQueue:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$1500(Lorg/telegram/messenger/FileLoader;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/FileLoader;

    .prologue
    .line 21
    iget v0, p0, Lorg/telegram/messenger/FileLoader;->currentLoadOperationsCount:I

    return v0
.end method

.method static synthetic access$1508(Lorg/telegram/messenger/FileLoader;)I
    .registers 3
    .param p0, "x0"    # Lorg/telegram/messenger/FileLoader;

    .prologue
    .line 21
    iget v0, p0, Lorg/telegram/messenger/FileLoader;->currentLoadOperationsCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/messenger/FileLoader;->currentLoadOperationsCount:I

    return v0
.end method

.method static synthetic access$1510(Lorg/telegram/messenger/FileLoader;)I
    .registers 3
    .param p0, "x0"    # Lorg/telegram/messenger/FileLoader;

    .prologue
    .line 21
    iget v0, p0, Lorg/telegram/messenger/FileLoader;->currentLoadOperationsCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lorg/telegram/messenger/FileLoader;->currentLoadOperationsCount:I

    return v0
.end method

.method static synthetic access$1600(Lorg/telegram/messenger/FileLoader;Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/tgnet/TLRPC$TL_webDocument;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;)V
    .registers 5
    .param p0, "x0"    # Lorg/telegram/messenger/FileLoader;
    .param p1, "x1"    # Lorg/telegram/tgnet/TLRPC$Document;
    .param p2, "x2"    # Lorg/telegram/tgnet/TLRPC$TL_webDocument;
    .param p3, "x3"    # Lorg/telegram/tgnet/TLRPC$FileLocation;
    .param p4, "x4"    # Ljava/lang/String;

    .prologue
    .line 21
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/FileLoader;->checkDownloadQueue(Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/tgnet/TLRPC$TL_webDocument;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lorg/telegram/messenger/FileLoader;)Ljava/util/HashMap;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/FileLoader;

    .prologue
    .line 21
    iget-object v0, p0, Lorg/telegram/messenger/FileLoader;->uploadSizes:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$300(Lorg/telegram/messenger/FileLoader;)Ljava/util/LinkedList;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/FileLoader;

    .prologue
    .line 21
    iget-object v0, p0, Lorg/telegram/messenger/FileLoader;->uploadOperationQueue:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$400(Lorg/telegram/messenger/FileLoader;)Ljava/util/LinkedList;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/FileLoader;

    .prologue
    .line 21
    iget-object v0, p0, Lorg/telegram/messenger/FileLoader;->uploadSmallOperationQueue:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$500(Lorg/telegram/messenger/FileLoader;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/FileLoader;

    .prologue
    .line 21
    iget v0, p0, Lorg/telegram/messenger/FileLoader;->currentUploadSmallOperationsCount:I

    return v0
.end method

.method static synthetic access$508(Lorg/telegram/messenger/FileLoader;)I
    .registers 3
    .param p0, "x0"    # Lorg/telegram/messenger/FileLoader;

    .prologue
    .line 21
    iget v0, p0, Lorg/telegram/messenger/FileLoader;->currentUploadSmallOperationsCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/messenger/FileLoader;->currentUploadSmallOperationsCount:I

    return v0
.end method

.method static synthetic access$510(Lorg/telegram/messenger/FileLoader;)I
    .registers 3
    .param p0, "x0"    # Lorg/telegram/messenger/FileLoader;

    .prologue
    .line 21
    iget v0, p0, Lorg/telegram/messenger/FileLoader;->currentUploadSmallOperationsCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lorg/telegram/messenger/FileLoader;->currentUploadSmallOperationsCount:I

    return v0
.end method

.method static synthetic access$600(Lorg/telegram/messenger/FileLoader;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/FileLoader;

    .prologue
    .line 21
    iget v0, p0, Lorg/telegram/messenger/FileLoader;->currentUploadOperationsCount:I

    return v0
.end method

.method static synthetic access$608(Lorg/telegram/messenger/FileLoader;)I
    .registers 3
    .param p0, "x0"    # Lorg/telegram/messenger/FileLoader;

    .prologue
    .line 21
    iget v0, p0, Lorg/telegram/messenger/FileLoader;->currentUploadOperationsCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/messenger/FileLoader;->currentUploadOperationsCount:I

    return v0
.end method

.method static synthetic access$610(Lorg/telegram/messenger/FileLoader;)I
    .registers 3
    .param p0, "x0"    # Lorg/telegram/messenger/FileLoader;

    .prologue
    .line 21
    iget v0, p0, Lorg/telegram/messenger/FileLoader;->currentUploadOperationsCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lorg/telegram/messenger/FileLoader;->currentUploadOperationsCount:I

    return v0
.end method

.method static synthetic access$700(Lorg/telegram/messenger/FileLoader;)Lorg/telegram/messenger/FileLoader$FileLoaderDelegate;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/FileLoader;

    .prologue
    .line 21
    iget-object v0, p0, Lorg/telegram/messenger/FileLoader;->delegate:Lorg/telegram/messenger/FileLoader$FileLoaderDelegate;

    return-object v0
.end method

.method static synthetic access$800(Lorg/telegram/messenger/FileLoader;)Lorg/telegram/messenger/DispatchQueue;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/FileLoader;

    .prologue
    .line 21
    iget-object v0, p0, Lorg/telegram/messenger/FileLoader;->fileLoaderQueue:Lorg/telegram/messenger/DispatchQueue;

    return-object v0
.end method

.method static synthetic access$900(Lorg/telegram/messenger/FileLoader;)Ljava/util/concurrent/ConcurrentHashMap;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/FileLoader;

    .prologue
    .line 21
    iget-object v0, p0, Lorg/telegram/messenger/FileLoader;->loadOperationPaths:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method private cancelLoadFile(Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/tgnet/TLRPC$TL_webDocument;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;)V
    .registers 12
    .param p1, "document"    # Lorg/telegram/tgnet/TLRPC$Document;
    .param p2, "webDocument"    # Lorg/telegram/tgnet/TLRPC$TL_webDocument;
    .param p3, "location"    # Lorg/telegram/tgnet/TLRPC$FileLocation;
    .param p4, "locationExt"    # Ljava/lang/String;

    .prologue
    .line 287
    if-nez p3, :cond_5

    if-nez p1, :cond_5

    .line 323
    :goto_4
    return-void

    .line 290
    :cond_5
    iget-object v6, p0, Lorg/telegram/messenger/FileLoader;->fileLoaderQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v0, Lorg/telegram/messenger/FileLoader$4;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/FileLoader$4;-><init>(Lorg/telegram/messenger/FileLoader;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/tgnet/TLRPC$TL_webDocument;)V

    invoke-virtual {v6, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_4
.end method

.method private checkDownloadQueue(Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/tgnet/TLRPC$TL_webDocument;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;)V
    .registers 12
    .param p1, "document"    # Lorg/telegram/tgnet/TLRPC$Document;
    .param p2, "webDocument"    # Lorg/telegram/tgnet/TLRPC$TL_webDocument;
    .param p3, "location"    # Lorg/telegram/tgnet/TLRPC$FileLocation;
    .param p4, "arg1"    # Ljava/lang/String;

    .prologue
    .line 533
    iget-object v6, p0, Lorg/telegram/messenger/FileLoader;->fileLoaderQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v0, Lorg/telegram/messenger/FileLoader$7;

    move-object v1, p0

    move-object v2, p4

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/FileLoader$7;-><init>(Lorg/telegram/messenger/FileLoader;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/tgnet/TLRPC$TL_webDocument;Lorg/telegram/tgnet/TLRPC$FileLocation;)V

    invoke-virtual {v6, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 600
    return-void
.end method

.method public static getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;
    .registers 2
    .param p0, "attach"    # Lorg/telegram/tgnet/TLObject;

    .prologue
    .line 840
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAttachFileName(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .param p0, "attach"    # Lorg/telegram/tgnet/TLObject;
    .param p1, "ext"    # Ljava/lang/String;

    .prologue
    const/4 v5, -0x1

    const/4 v6, 0x1

    .line 844
    instance-of v7, p0, Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v7, :cond_f7

    move-object v1, p0

    .line 845
    check-cast v1, Lorg/telegram/tgnet/TLRPC$Document;

    .line 846
    .local v1, "document":Lorg/telegram/tgnet/TLRPC$Document;
    const/4 v0, 0x0

    .line 847
    .local v0, "docExt":Ljava/lang/String;
    if-nez v0, :cond_1c

    .line 848
    invoke-static {v1}, Lorg/telegram/messenger/FileLoader;->getDocumentFileName(Lorg/telegram/tgnet/TLRPC$Document;)Ljava/lang/String;

    move-result-object v0

    .line 850
    if-eqz v0, :cond_1a

    const/16 v7, 0x2e

    invoke-virtual {v0, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .local v2, "idx":I
    if-ne v2, v5, :cond_5e

    .line 851
    .end local v2    # "idx":I
    :cond_1a
    const-string v0, ""

    .line 856
    :cond_1c
    :goto_1c
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-gt v7, v6, :cond_34

    .line 857
    iget-object v7, v1, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    if-eqz v7, :cond_7d

    .line 858
    iget-object v7, v1, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_1ae

    :cond_2f
    :goto_2f
    packed-switch v5, :pswitch_data_1b8

    .line 866
    const-string v0, ""

    .line 873
    :cond_34
    :goto_34
    iget v5, v1, Lorg/telegram/tgnet/TLRPC$Document;->version:I

    if-nez v5, :cond_9c

    .line 874
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v6, :cond_80

    .line 875
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, v1, Lorg/telegram/tgnet/TLRPC$Document;->dc_id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, v1, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 902
    .end local v0    # "docExt":Ljava/lang/String;
    .end local v1    # "document":Lorg/telegram/tgnet/TLRPC$Document;
    .end local p1    # "ext":Ljava/lang/String;
    :goto_5d
    return-object v5

    .line 853
    .restart local v0    # "docExt":Ljava/lang/String;
    .restart local v1    # "document":Lorg/telegram/tgnet/TLRPC$Document;
    .restart local v2    # "idx":I
    .restart local p1    # "ext":Ljava/lang/String;
    :cond_5e
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1c

    .line 858
    .end local v2    # "idx":I
    :sswitch_63
    const-string v8, "video/mp4"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2f

    const/4 v5, 0x0

    goto :goto_2f

    :sswitch_6d
    const-string v8, "audio/ogg"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2f

    move v5, v6

    goto :goto_2f

    .line 860
    :pswitch_77
    const-string v0, ".mp4"

    .line 861
    goto :goto_34

    .line 863
    :pswitch_7a
    const-string v0, ".ogg"

    .line 864
    goto :goto_34

    .line 870
    :cond_7d
    const-string v0, ""

    goto :goto_34

    .line 877
    :cond_80
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, v1, Lorg/telegram/tgnet/TLRPC$Document;->dc_id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, v1, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_5d

    .line 880
    :cond_9c
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v6, :cond_ce

    .line 881
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, v1, Lorg/telegram/tgnet/TLRPC$Document;->dc_id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, v1, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v1, Lorg/telegram/tgnet/TLRPC$Document;->version:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_5d

    .line 883
    :cond_ce
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, v1, Lorg/telegram/tgnet/TLRPC$Document;->dc_id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, v1, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v1, Lorg/telegram/tgnet/TLRPC$Document;->version:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_5d

    .line 886
    .end local v0    # "docExt":Ljava/lang/String;
    .end local v1    # "document":Lorg/telegram/tgnet/TLRPC$Document;
    :cond_f7
    instance-of v5, p0, Lorg/telegram/tgnet/TLRPC$TL_webDocument;

    if-eqz v5, :cond_129

    move-object v1, p0

    .line 887
    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_webDocument;

    .line 888
    .local v1, "document":Lorg/telegram/tgnet/TLRPC$TL_webDocument;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v1, Lorg/telegram/tgnet/TLRPC$TL_webDocument;->url:Ljava/lang/String;

    invoke-static {v6}, Lorg/telegram/messenger/Utilities;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lorg/telegram/tgnet/TLRPC$TL_webDocument;->url:Ljava/lang/String;

    iget-object v7, v1, Lorg/telegram/tgnet/TLRPC$TL_webDocument;->mime_type:Ljava/lang/String;

    invoke-static {v7}, Lorg/telegram/messenger/FileLoader;->getExtensionByMime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lorg/telegram/messenger/ImageLoader;->getHttpUrlExtension(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_5d

    .line 889
    .end local v1    # "document":Lorg/telegram/tgnet/TLRPC$TL_webDocument;
    :cond_129
    instance-of v5, p0, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    if-eqz v5, :cond_16e

    move-object v4, p0

    .line 890
    check-cast v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 891
    .local v4, "photo":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v5, :cond_13a

    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    instance-of v5, v5, Lorg/telegram/tgnet/TLRPC$TL_fileLocationUnavailable;

    if-eqz v5, :cond_13e

    .line 892
    :cond_13a
    const-string v5, ""

    goto/16 :goto_5d

    .line 894
    :cond_13e
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-wide v6, v6, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz p1, :cond_16b

    .end local p1    # "ext":Ljava/lang/String;
    :goto_161
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_5d

    .restart local p1    # "ext":Ljava/lang/String;
    :cond_16b
    const-string p1, "jpg"

    goto :goto_161

    .line 895
    .end local v4    # "photo":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    :cond_16e
    instance-of v5, p0, Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v5, :cond_1a9

    .line 896
    instance-of v5, p0, Lorg/telegram/tgnet/TLRPC$TL_fileLocationUnavailable;

    if-eqz v5, :cond_17a

    .line 897
    const-string v5, ""

    goto/16 :goto_5d

    :cond_17a
    move-object v3, p0

    .line 899
    check-cast v3, Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 900
    .local v3, "location":Lorg/telegram/tgnet/TLRPC$FileLocation;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v6, v3, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz p1, :cond_1a6

    .end local p1    # "ext":Ljava/lang/String;
    :goto_19c
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_5d

    .restart local p1    # "ext":Ljava/lang/String;
    :cond_1a6
    const-string p1, "jpg"

    goto :goto_19c

    .line 902
    .end local v3    # "location":Lorg/telegram/tgnet/TLRPC$FileLocation;
    :cond_1a9
    const-string v5, ""

    goto/16 :goto_5d

    .line 858
    nop

    :sswitch_data_1ae
    .sparse-switch
        0xb26cbd6 -> :sswitch_6d
        0x4f62635d -> :sswitch_63
    .end sparse-switch

    :pswitch_data_1b8
    .packed-switch 0x0
        :pswitch_77
        :pswitch_7a
    .end packed-switch
.end method

.method public static getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;
    .registers 3
    .param p1, "side"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$PhotoSize;",
            ">;I)",
            "Lorg/telegram/tgnet/TLRPC$PhotoSize;"
        }
    .end annotation

    .prologue
    .line 759
    .local p0, "sizes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$PhotoSize;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;IZ)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v0

    return-object v0
.end method

.method public static getClosestPhotoSizeWithSize(Ljava/util/ArrayList;IZ)Lorg/telegram/tgnet/TLRPC$PhotoSize;
    .registers 12
    .param p1, "side"    # I
    .param p2, "byMinSide"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$PhotoSize;",
            ">;IZ)",
            "Lorg/telegram/tgnet/TLRPC$PhotoSize;"
        }
    .end annotation

    .prologue
    .local p0, "sizes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$PhotoSize;>;"
    const/16 v8, 0x64

    const/high16 v7, -0x80000000

    .line 763
    if-eqz p0, :cond_c

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_e

    .line 764
    :cond_c
    const/4 v1, 0x0

    .line 787
    :cond_d
    return-object v1

    .line 766
    :cond_e
    const/4 v3, 0x0

    .line 767
    .local v3, "lastSide":I
    const/4 v1, 0x0

    .line 768
    .local v1, "closestObject":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_11
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_d

    .line 769
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 770
    .local v4, "obj":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    if-nez v4, :cond_22

    .line 768
    :cond_1f
    :goto_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 773
    :cond_22
    if-eqz p2, :cond_48

    .line 774
    iget v5, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    iget v6, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    if-lt v5, v6, :cond_45

    iget v2, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    .line 775
    .local v2, "currentSide":I
    :goto_2c
    if-eqz v1, :cond_42

    if-le p1, v8, :cond_3a

    iget-object v5, v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v5, :cond_3a

    iget-object v5, v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$FileLocation;->dc_id:I

    if-eq v5, v7, :cond_42

    :cond_3a
    instance-of v5, v4, Lorg/telegram/tgnet/TLRPC$TL_photoCachedSize;

    if-nez v5, :cond_42

    if-le p1, v3, :cond_1f

    if-ge v3, v2, :cond_1f

    .line 776
    :cond_42
    move-object v1, v4

    .line 777
    move v3, v2

    goto :goto_1f

    .line 774
    .end local v2    # "currentSide":I
    :cond_45
    iget v2, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    goto :goto_2c

    .line 780
    :cond_48
    iget v5, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    iget v6, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    if-lt v5, v6, :cond_69

    iget v2, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    .line 781
    .restart local v2    # "currentSide":I
    :goto_50
    if-eqz v1, :cond_66

    if-le p1, v8, :cond_5e

    iget-object v5, v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v5, :cond_5e

    iget-object v5, v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$FileLocation;->dc_id:I

    if-eq v5, v7, :cond_66

    :cond_5e
    instance-of v5, v4, Lorg/telegram/tgnet/TLRPC$TL_photoCachedSize;

    if-nez v5, :cond_66

    if-gt v2, p1, :cond_1f

    if-ge v3, v2, :cond_1f

    .line 782
    :cond_66
    move-object v1, v4

    .line 783
    move v3, v2

    goto :goto_1f

    .line 780
    .end local v2    # "currentSide":I
    :cond_69
    iget v2, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    goto :goto_50
.end method

.method public static getDocumentExtension(Lorg/telegram/tgnet/TLRPC$Document;)Ljava/lang/String;
    .registers 5
    .param p0, "document"    # Lorg/telegram/tgnet/TLRPC$Document;

    .prologue
    .line 823
    invoke-static {p0}, Lorg/telegram/messenger/FileLoader;->getDocumentFileName(Lorg/telegram/tgnet/TLRPC$Document;)Ljava/lang/String;

    move-result-object v1

    .line 824
    .local v1, "fileName":Ljava/lang/String;
    const/16 v3, 0x2e

    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 825
    .local v2, "idx":I
    const/4 v0, 0x0

    .line 826
    .local v0, "ext":Ljava/lang/String;
    const/4 v3, -0x1

    if-eq v2, v3, :cond_14

    .line 827
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 829
    :cond_14
    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1e

    .line 830
    :cond_1c
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    .line 832
    :cond_1e
    if-nez v0, :cond_22

    .line 833
    const-string v0, ""

    .line 835
    :cond_22
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 836
    return-object v0
.end method

.method public static getDocumentFileName(Lorg/telegram/tgnet/TLRPC$Document;)Ljava/lang/String;
    .registers 4
    .param p0, "document"    # Lorg/telegram/tgnet/TLRPC$Document;

    .prologue
    .line 800
    if-eqz p0, :cond_24

    .line 801
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$Document;->file_name:Ljava/lang/String;

    if-eqz v2, :cond_9

    .line 802
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$Document;->file_name:Ljava/lang/String;

    .line 811
    :goto_8
    return-object v2

    .line 804
    :cond_9
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_a
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_24

    .line 805
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    .line 806
    .local v1, "documentAttribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    instance-of v2, v1, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeFilename;

    if-eqz v2, :cond_21

    .line 807
    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->file_name:Ljava/lang/String;

    goto :goto_8

    .line 804
    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 811
    .end local v0    # "a":I
    .end local v1    # "documentAttribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :cond_24
    const-string v2, ""

    goto :goto_8
.end method

.method public static getExtensionByMime(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "mime"    # Ljava/lang/String;

    .prologue
    .line 816
    const/16 v1, 0x2f

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_10

    .line 817
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 819
    :goto_f
    return-object v1

    :cond_10
    const-string v1, ""

    goto :goto_f
.end method

.method public static getFileExtension(Ljava/io/File;)Ljava/lang/String;
    .registers 4
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 791
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 793
    .local v1, "name":Ljava/lang/String;
    const/16 v2, 0x2e

    :try_start_6
    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_f} :catch_11

    move-result-object v2

    .line 795
    :goto_10
    return-object v2

    .line 794
    :catch_11
    move-exception v0

    .line 795
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, ""

    goto :goto_10
.end method

.method public static getInstance()Lorg/telegram/messenger/FileLoader;
    .registers 4

    .prologue
    .line 62
    sget-object v0, Lorg/telegram/messenger/FileLoader;->Instance:Lorg/telegram/messenger/FileLoader;

    .line 63
    .local v0, "localInstance":Lorg/telegram/messenger/FileLoader;
    if-nez v0, :cond_14

    .line 64
    const-class v3, Lorg/telegram/messenger/FileLoader;

    monitor-enter v3

    .line 65
    :try_start_7
    sget-object v0, Lorg/telegram/messenger/FileLoader;->Instance:Lorg/telegram/messenger/FileLoader;

    .line 66
    if-nez v0, :cond_13

    .line 67
    new-instance v1, Lorg/telegram/messenger/FileLoader;

    invoke-direct {v1}, Lorg/telegram/messenger/FileLoader;-><init>()V
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_15

    .end local v0    # "localInstance":Lorg/telegram/messenger/FileLoader;
    .local v1, "localInstance":Lorg/telegram/messenger/FileLoader;
    :try_start_10
    sput-object v1, Lorg/telegram/messenger/FileLoader;->Instance:Lorg/telegram/messenger/FileLoader;
    :try_end_12
    .catchall {:try_start_10 .. :try_end_12} :catchall_18

    move-object v0, v1

    .line 69
    .end local v1    # "localInstance":Lorg/telegram/messenger/FileLoader;
    .restart local v0    # "localInstance":Lorg/telegram/messenger/FileLoader;
    :cond_13
    :try_start_13
    monitor-exit v3

    .line 71
    :cond_14
    return-object v0

    .line 69
    :catchall_15
    move-exception v2

    :goto_16
    monitor-exit v3
    :try_end_17
    .catchall {:try_start_13 .. :try_end_17} :catchall_15

    throw v2

    .end local v0    # "localInstance":Lorg/telegram/messenger/FileLoader;
    .restart local v1    # "localInstance":Lorg/telegram/messenger/FileLoader;
    :catchall_18
    move-exception v2

    move-object v0, v1

    .end local v1    # "localInstance":Lorg/telegram/messenger/FileLoader;
    .restart local v0    # "localInstance":Lorg/telegram/messenger/FileLoader;
    goto :goto_16
.end method

.method public static getMessageFileName(Lorg/telegram/tgnet/TLRPC$Message;)Ljava/lang/String;
    .registers 7
    .param p0, "message"    # Lorg/telegram/tgnet/TLRPC$Message;

    .prologue
    .line 607
    if-nez p0, :cond_5

    .line 608
    const-string v3, ""

    .line 652
    :goto_4
    return-object v3

    .line 610
    :cond_5
    instance-of v3, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService;

    if-eqz v3, :cond_2a

    .line 611
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$MessageAction;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz v3, :cond_e4

    .line 612
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$MessageAction;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v2, v3, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    .line 613
    .local v2, "sizes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$PhotoSize;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_e4

    .line 614
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I

    move-result v3

    invoke-static {v2, v3}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v1

    .line 615
    .local v1, "sizeFull":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    if-eqz v1, :cond_e4

    .line 616
    invoke-static {v1}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    .line 621
    .end local v1    # "sizeFull":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    .end local v2    # "sizes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$PhotoSize;>;"
    :cond_2a
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    if-eqz v3, :cond_39

    .line 622
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v3}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    .line 623
    :cond_39
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    if-eqz v3, :cond_5a

    .line 624
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v2, v3, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    .line 625
    .restart local v2    # "sizes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$PhotoSize;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_e4

    .line 626
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I

    move-result v3

    invoke-static {v2, v3}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v1

    .line 627
    .restart local v1    # "sizeFull":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    if-eqz v1, :cond_e4

    .line 628
    invoke-static {v1}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    .line 631
    .end local v1    # "sizeFull":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    .end local v2    # "sizes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$PhotoSize;>;"
    :cond_5a
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;

    if-eqz v3, :cond_ab

    .line 632
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$WebPage;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz v3, :cond_85

    .line 633
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$WebPage;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v2, v3, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    .line 634
    .restart local v2    # "sizes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$PhotoSize;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_e4

    .line 635
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I

    move-result v3

    invoke-static {v2, v3}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v1

    .line 636
    .restart local v1    # "sizeFull":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    if-eqz v1, :cond_e4

    .line 637
    invoke-static {v1}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    .line 640
    .end local v1    # "sizeFull":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    .end local v2    # "sizes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$PhotoSize;>;"
    :cond_85
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$WebPage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v3, :cond_99

    .line 641
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$WebPage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v3}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_4

    .line 642
    :cond_99
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaInvoice;

    if-eqz v3, :cond_e4

    .line 643
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaInvoice;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaInvoice;->photo:Lorg/telegram/tgnet/TLRPC$TL_webDocument;

    invoke-static {v3}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_4

    .line 645
    :cond_ab
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaInvoice;

    if-eqz v3, :cond_e4

    .line 646
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaInvoice;

    iget-object v0, v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaInvoice;->photo:Lorg/telegram/tgnet/TLRPC$TL_webDocument;

    .line 647
    .local v0, "document":Lorg/telegram/tgnet/TLRPC$TL_webDocument;
    if-eqz v0, :cond_e4

    .line 648
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_webDocument;->url:Ljava/lang/String;

    invoke-static {v4}, Lorg/telegram/messenger/Utilities;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_webDocument;->url:Ljava/lang/String;

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$TL_webDocument;->mime_type:Ljava/lang/String;

    invoke-static {v5}, Lorg/telegram/messenger/FileLoader;->getExtensionByMime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/telegram/messenger/ImageLoader;->getHttpUrlExtension(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_4

    .line 652
    .end local v0    # "document":Lorg/telegram/tgnet/TLRPC$TL_webDocument;
    :cond_e4
    const-string v3, ""

    goto/16 :goto_4
.end method

.method public static getPathToAttach(Lorg/telegram/tgnet/TLObject;)Ljava/io/File;
    .registers 3
    .param p0, "attach"    # Lorg/telegram/tgnet/TLObject;

    .prologue
    .line 700
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getPathToAttach(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Z)Ljava/io/File;
    .registers 14
    .param p0, "attach"    # Lorg/telegram/tgnet/TLObject;
    .param p1, "ext"    # Ljava/lang/String;
    .param p2, "forceCache"    # Z

    .prologue
    const/4 v10, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x4

    .line 708
    const/4 v0, 0x0

    .line 709
    .local v0, "dir":Ljava/io/File;
    if-eqz p2, :cond_1a

    .line 710
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v4

    invoke-virtual {v4, v8}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v0

    .line 752
    :cond_10
    :goto_10
    if-nez v0, :cond_106

    .line 753
    new-instance v4, Ljava/io/File;

    const-string v5, ""

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 755
    :goto_19
    return-object v4

    .line 712
    :cond_1a
    instance-of v4, p0, Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v4, :cond_55

    move-object v1, p0

    .line 713
    check-cast v1, Lorg/telegram/tgnet/TLRPC$Document;

    .line 714
    .local v1, "document":Lorg/telegram/tgnet/TLRPC$Document;
    iget-object v4, v1, Lorg/telegram/tgnet/TLRPC$Document;->key:[B

    if-eqz v4, :cond_2e

    .line 715
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v4

    invoke-virtual {v4, v8}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v0

    goto :goto_10

    .line 717
    :cond_2e
    invoke-static {v1}, Lorg/telegram/messenger/MessageObject;->isVoiceDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v4

    if-eqz v4, :cond_3d

    .line 718
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v4

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v0

    goto :goto_10

    .line 719
    :cond_3d
    invoke-static {v1}, Lorg/telegram/messenger/MessageObject;->isVideoDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v4

    if-eqz v4, :cond_4c

    .line 720
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v4

    invoke-virtual {v4, v7}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v0

    goto :goto_10

    .line 722
    :cond_4c
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v4

    invoke-virtual {v4, v10}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v0

    goto :goto_10

    .line 725
    .end local v1    # "document":Lorg/telegram/tgnet/TLRPC$Document;
    :cond_55
    instance-of v4, p0, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    if-eqz v4, :cond_8d

    move-object v3, p0

    .line 726
    check-cast v3, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 727
    .local v3, "photoSize":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v4, :cond_7b

    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$FileLocation;->key:[B

    if-nez v4, :cond_7b

    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-wide v4, v4, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    const-wide/32 v6, -0x80000000

    cmp-long v4, v4, v6

    if-nez v4, :cond_77

    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    if-ltz v4, :cond_7b

    :cond_77
    iget v4, v3, Lorg/telegram/tgnet/TLRPC$PhotoSize;->size:I

    if-gez v4, :cond_84

    .line 728
    :cond_7b
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v4

    invoke-virtual {v4, v8}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v0

    goto :goto_10

    .line 730
    :cond_84
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v4

    invoke-virtual {v4, v9}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v0

    goto :goto_10

    .line 732
    .end local v3    # "photoSize":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    :cond_8d
    instance-of v4, p0, Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v4, :cond_b9

    move-object v2, p0

    .line 733
    check-cast v2, Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 734
    .local v2, "fileLocation":Lorg/telegram/tgnet/TLRPC$FileLocation;
    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$FileLocation;->key:[B

    if-nez v4, :cond_a5

    iget-wide v4, v2, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    const-wide/32 v6, -0x80000000

    cmp-long v4, v4, v6

    if-nez v4, :cond_af

    iget v4, v2, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    if-gez v4, :cond_af

    .line 735
    :cond_a5
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v4

    invoke-virtual {v4, v8}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v0

    goto/16 :goto_10

    .line 737
    :cond_af
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v4

    invoke-virtual {v4, v9}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v0

    goto/16 :goto_10

    .line 739
    .end local v2    # "fileLocation":Lorg/telegram/tgnet/TLRPC$FileLocation;
    :cond_b9
    instance-of v4, p0, Lorg/telegram/tgnet/TLRPC$TL_webDocument;

    if-eqz v4, :cond_10

    move-object v1, p0

    .line 740
    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_webDocument;

    .line 741
    .local v1, "document":Lorg/telegram/tgnet/TLRPC$TL_webDocument;
    iget-object v4, v1, Lorg/telegram/tgnet/TLRPC$TL_webDocument;->mime_type:Ljava/lang/String;

    const-string v5, "image/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d4

    .line 742
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v4

    invoke-virtual {v4, v9}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v0

    goto/16 :goto_10

    .line 743
    :cond_d4
    iget-object v4, v1, Lorg/telegram/tgnet/TLRPC$TL_webDocument;->mime_type:Ljava/lang/String;

    const-string v5, "audio/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e8

    .line 744
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v4

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v0

    goto/16 :goto_10

    .line 745
    :cond_e8
    iget-object v4, v1, Lorg/telegram/tgnet/TLRPC$TL_webDocument;->mime_type:Ljava/lang/String;

    const-string v5, "video/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_fc

    .line 746
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v4

    invoke-virtual {v4, v7}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v0

    goto/16 :goto_10

    .line 748
    :cond_fc
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v4

    invoke-virtual {v4, v10}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v0

    goto/16 :goto_10

    .line 755
    .end local v1    # "document":Lorg/telegram/tgnet/TLRPC$TL_webDocument;
    :cond_106
    new-instance v4, Ljava/io/File;

    invoke-static {p0, p1}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto/16 :goto_19
.end method

.method public static getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;
    .registers 3
    .param p0, "attach"    # Lorg/telegram/tgnet/TLObject;
    .param p1, "forceCache"    # Z

    .prologue
    .line 704
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getPathToMessage(Lorg/telegram/tgnet/TLRPC$Message;)Ljava/io/File;
    .registers 5
    .param p0, "message"    # Lorg/telegram/tgnet/TLRPC$Message;

    .prologue
    .line 656
    if-nez p0, :cond_a

    .line 657
    new-instance v2, Ljava/io/File;

    const-string v3, ""

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 696
    :goto_9
    return-object v2

    .line 659
    :cond_a
    instance-of v2, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService;

    if-eqz v2, :cond_2f

    .line 660
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageAction;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz v2, :cond_b1

    .line 661
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageAction;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    .line 662
    .local v1, "sizes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$PhotoSize;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_b1

    .line 663
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I

    move-result v2

    invoke-static {v1, v2}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v0

    .line 664
    .local v0, "sizeFull":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    if-eqz v0, :cond_b1

    .line 665
    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;)Ljava/io/File;

    move-result-object v2

    goto :goto_9

    .line 670
    .end local v0    # "sizeFull":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    .end local v1    # "sizes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$PhotoSize;>;"
    :cond_2f
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    if-eqz v2, :cond_3e

    .line 671
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v2}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;)Ljava/io/File;

    move-result-object v2

    goto :goto_9

    .line 672
    :cond_3e
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    if-eqz v2, :cond_5f

    .line 673
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    .line 674
    .restart local v1    # "sizes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$PhotoSize;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_b1

    .line 675
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I

    move-result v2

    invoke-static {v1, v2}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v0

    .line 676
    .restart local v0    # "sizeFull":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    if-eqz v0, :cond_b1

    .line 677
    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;)Ljava/io/File;

    move-result-object v2

    goto :goto_9

    .line 680
    .end local v0    # "sizeFull":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    .end local v1    # "sizes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$PhotoSize;>;"
    :cond_5f
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;

    if-eqz v2, :cond_9e

    .line 681
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$WebPage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v2, :cond_78

    .line 682
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$WebPage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v2}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;)Ljava/io/File;

    move-result-object v2

    goto :goto_9

    .line 683
    :cond_78
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$WebPage;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz v2, :cond_b1

    .line 684
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$WebPage;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    .line 685
    .restart local v1    # "sizes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$PhotoSize;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_b1

    .line 686
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I

    move-result v2

    invoke-static {v1, v2}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v0

    .line 687
    .restart local v0    # "sizeFull":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    if-eqz v0, :cond_b1

    .line 688
    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;)Ljava/io/File;

    move-result-object v2

    goto/16 :goto_9

    .line 692
    .end local v0    # "sizeFull":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    .end local v1    # "sizes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$PhotoSize;>;"
    :cond_9e
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaInvoice;

    if-eqz v2, :cond_b1

    .line 693
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaInvoice;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaInvoice;->photo:Lorg/telegram/tgnet/TLRPC$TL_webDocument;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v2

    goto/16 :goto_9

    .line 696
    :cond_b1
    new-instance v2, Ljava/io/File;

    const-string v3, ""

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto/16 :goto_9
.end method

.method private loadFile(Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/tgnet/TLRPC$TL_webDocument;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;IZZ)V
    .registers 18
    .param p1, "document"    # Lorg/telegram/tgnet/TLRPC$Document;
    .param p2, "webDocument"    # Lorg/telegram/tgnet/TLRPC$TL_webDocument;
    .param p3, "location"    # Lorg/telegram/tgnet/TLRPC$FileLocation;
    .param p4, "locationExt"    # Ljava/lang/String;
    .param p5, "locationSize"    # I
    .param p6, "force"    # Z
    .param p7, "cacheOnly"    # Z

    .prologue
    .line 360
    iget-object v9, p0, Lorg/telegram/messenger/FileLoader;->fileLoaderQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v0, Lorg/telegram/messenger/FileLoader$6;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move-object v4, p1

    move-object v5, p2

    move/from16 v6, p6

    move v7, p5

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lorg/telegram/messenger/FileLoader$6;-><init>(Lorg/telegram/messenger/FileLoader;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/tgnet/TLRPC$TL_webDocument;ZIZ)V

    invoke-virtual {v9, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 530
    return-void
.end method


# virtual methods
.method public cancelLoadFile(Lorg/telegram/tgnet/TLRPC$Document;)V
    .registers 3
    .param p1, "document"    # Lorg/telegram/tgnet/TLRPC$Document;

    .prologue
    const/4 v0, 0x0

    .line 271
    invoke-direct {p0, p1, v0, v0, v0}, Lorg/telegram/messenger/FileLoader;->cancelLoadFile(Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/tgnet/TLRPC$TL_webDocument;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;)V

    .line 272
    return-void
.end method

.method public cancelLoadFile(Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;)V
    .registers 4
    .param p1, "location"    # Lorg/telegram/tgnet/TLRPC$FileLocation;
    .param p2, "ext"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 283
    invoke-direct {p0, v0, v0, p1, p2}, Lorg/telegram/messenger/FileLoader;->cancelLoadFile(Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/tgnet/TLRPC$TL_webDocument;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;)V

    .line 284
    return-void
.end method

.method public cancelLoadFile(Lorg/telegram/tgnet/TLRPC$PhotoSize;)V
    .registers 4
    .param p1, "photo"    # Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .prologue
    const/4 v1, 0x0

    .line 279
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    invoke-direct {p0, v1, v1, v0, v1}, Lorg/telegram/messenger/FileLoader;->cancelLoadFile(Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/tgnet/TLRPC$TL_webDocument;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;)V

    .line 280
    return-void
.end method

.method public cancelLoadFile(Lorg/telegram/tgnet/TLRPC$TL_webDocument;)V
    .registers 3
    .param p1, "document"    # Lorg/telegram/tgnet/TLRPC$TL_webDocument;

    .prologue
    const/4 v0, 0x0

    .line 275
    invoke-direct {p0, v0, p1, v0, v0}, Lorg/telegram/messenger/FileLoader;->cancelLoadFile(Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/tgnet/TLRPC$TL_webDocument;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;)V

    .line 276
    return-void
.end method

.method public cancelUploadFile(Ljava/lang/String;Z)V
    .registers 5
    .param p1, "location"    # Ljava/lang/String;
    .param p2, "enc"    # Z

    .prologue
    .line 98
    iget-object v0, p0, Lorg/telegram/messenger/FileLoader;->fileLoaderQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/FileLoader$1;

    invoke-direct {v1, p0, p2, p1}, Lorg/telegram/messenger/FileLoader$1;-><init>(Lorg/telegram/messenger/FileLoader;ZLjava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 116
    return-void
.end method

.method public checkDirectory(I)Ljava/io/File;
    .registers 4
    .param p1, "type"    # I

    .prologue
    .line 79
    iget-object v0, p0, Lorg/telegram/messenger/FileLoader;->mediaDirs:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    return-object v0
.end method

.method public checkUploadNewDataAvailable(Ljava/lang/String;ZJ)V
    .registers 12
    .param p1, "location"    # Ljava/lang/String;
    .param p2, "encrypted"    # Z
    .param p3, "finalSize"    # J

    .prologue
    .line 119
    iget-object v6, p0, Lorg/telegram/messenger/FileLoader;->fileLoaderQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v0, Lorg/telegram/messenger/FileLoader$2;

    move-object v1, p0

    move v2, p2

    move-object v3, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/FileLoader$2;-><init>(Lorg/telegram/messenger/FileLoader;ZLjava/lang/String;J)V

    invoke-virtual {v6, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 135
    return-void
.end method

.method public deleteFiles(Ljava/util/ArrayList;I)V
    .registers 5
    .param p2, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/io/File;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 906
    .local p1, "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 939
    :cond_8
    :goto_8
    return-void

    .line 909
    :cond_9
    iget-object v0, p0, Lorg/telegram/messenger/FileLoader;->fileLoaderQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/FileLoader$8;

    invoke-direct {v1, p0, p1, p2}, Lorg/telegram/messenger/FileLoader$8;-><init>(Lorg/telegram/messenger/FileLoader;Ljava/util/ArrayList;I)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_8
.end method

.method public getDirectory(I)Ljava/io/File;
    .registers 6
    .param p1, "type"    # I

    .prologue
    const/4 v3, 0x4

    .line 83
    iget-object v1, p0, Lorg/telegram/messenger/FileLoader;->mediaDirs:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 84
    .local v0, "dir":Ljava/io/File;
    if-nez v0, :cond_1d

    if-eq p1, v3, :cond_1d

    .line 85
    iget-object v1, p0, Lorg/telegram/messenger/FileLoader;->mediaDirs:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "dir":Ljava/io/File;
    check-cast v0, Ljava/io/File;

    .line 88
    .restart local v0    # "dir":Ljava/io/File;
    :cond_1d
    :try_start_1d
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_26

    .line 89
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_26} :catch_27

    .line 94
    :cond_26
    :goto_26
    return-object v0

    .line 91
    :catch_27
    move-exception v1

    goto :goto_26
.end method

.method public isLoadingFile(Ljava/lang/String;)Z
    .registers 8
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 326
    new-instance v2, Ljava/util/concurrent/Semaphore;

    invoke-direct {v2, v5}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 327
    .local v2, "semaphore":Ljava/util/concurrent/Semaphore;
    const/4 v3, 0x1

    new-array v1, v3, [Ljava/lang/Boolean;

    .line 328
    .local v1, "result":[Ljava/lang/Boolean;
    iget-object v3, p0, Lorg/telegram/messenger/FileLoader;->fileLoaderQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v4, Lorg/telegram/messenger/FileLoader$5;

    invoke-direct {v4, p0, v1, p1, v2}, Lorg/telegram/messenger/FileLoader$5;-><init>(Lorg/telegram/messenger/FileLoader;[Ljava/lang/Boolean;Ljava/lang/String;Ljava/util/concurrent/Semaphore;)V

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 336
    :try_start_13
    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_16} :catch_1d

    .line 340
    :goto_16
    aget-object v3, v1, v5

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    return v3

    .line 337
    :catch_1d
    move-exception v0

    .line 338
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_16
.end method

.method public loadFile(Lorg/telegram/tgnet/TLRPC$Document;ZZ)V
    .registers 12
    .param p1, "document"    # Lorg/telegram/tgnet/TLRPC$Document;
    .param p2, "force"    # Z
    .param p3, "cacheOnly"    # Z

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 348
    if-nez p3, :cond_a

    if-eqz p1, :cond_14

    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$Document;->key:[B

    if-eqz v0, :cond_14

    :cond_a
    const/4 v7, 0x1

    :goto_b
    move-object v0, p0

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move v6, p2

    invoke-direct/range {v0 .. v7}, Lorg/telegram/messenger/FileLoader;->loadFile(Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/tgnet/TLRPC$TL_webDocument;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;IZZ)V

    .line 349
    return-void

    :cond_14
    move v7, v5

    .line 348
    goto :goto_b
.end method

.method public loadFile(Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;IZ)V
    .registers 13
    .param p1, "location"    # Lorg/telegram/tgnet/TLRPC$FileLocation;
    .param p2, "ext"    # Ljava/lang/String;
    .param p3, "size"    # I
    .param p4, "cacheOnly"    # Z

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x1

    .line 356
    if-nez p4, :cond_c

    if-eqz p3, :cond_c

    if-eqz p1, :cond_16

    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$FileLocation;->key:[B

    if-eqz v0, :cond_16

    :cond_c
    move v7, v6

    :goto_d
    move-object v0, p0

    move-object v2, v1

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v7}, Lorg/telegram/messenger/FileLoader;->loadFile(Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/tgnet/TLRPC$TL_webDocument;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;IZZ)V

    .line 357
    return-void

    .line 356
    :cond_16
    const/4 v7, 0x0

    goto :goto_d
.end method

.method public loadFile(Lorg/telegram/tgnet/TLRPC$PhotoSize;Ljava/lang/String;Z)V
    .registers 12
    .param p1, "photo"    # Lorg/telegram/tgnet/TLRPC$PhotoSize;
    .param p2, "ext"    # Ljava/lang/String;
    .param p3, "cacheOnly"    # Z

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x0

    .line 344
    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget v5, p1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->size:I

    if-nez p3, :cond_14

    if-eqz p1, :cond_e

    iget v0, p1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->size:I

    if-eqz v0, :cond_14

    :cond_e
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$FileLocation;->key:[B

    if-eqz v0, :cond_1c

    :cond_14
    const/4 v7, 0x1

    :goto_15
    move-object v0, p0

    move-object v2, v1

    move-object v4, p2

    invoke-direct/range {v0 .. v7}, Lorg/telegram/messenger/FileLoader;->loadFile(Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/tgnet/TLRPC$TL_webDocument;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;IZZ)V

    .line 345
    return-void

    :cond_1c
    move v7, v6

    .line 344
    goto :goto_15
.end method

.method public loadFile(Lorg/telegram/tgnet/TLRPC$TL_webDocument;ZZ)V
    .registers 12
    .param p1, "document"    # Lorg/telegram/tgnet/TLRPC$TL_webDocument;
    .param p2, "force"    # Z
    .param p3, "cacheOnly"    # Z

    .prologue
    const/4 v1, 0x0

    .line 352
    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, v1

    move-object v4, v1

    move v6, p2

    move v7, p3

    invoke-direct/range {v0 .. v7}, Lorg/telegram/messenger/FileLoader;->loadFile(Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/tgnet/TLRPC$TL_webDocument;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;IZZ)V

    .line 353
    return-void
.end method

.method public setDelegate(Lorg/telegram/messenger/FileLoader$FileLoaderDelegate;)V
    .registers 2
    .param p1, "delegate"    # Lorg/telegram/messenger/FileLoader$FileLoaderDelegate;

    .prologue
    .line 603
    iput-object p1, p0, Lorg/telegram/messenger/FileLoader;->delegate:Lorg/telegram/messenger/FileLoader$FileLoaderDelegate;

    .line 604
    return-void
.end method

.method public setMediaDirs(Ljava/util/HashMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 75
    .local p1, "dirs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/io/File;>;"
    iput-object p1, p0, Lorg/telegram/messenger/FileLoader;->mediaDirs:Ljava/util/HashMap;

    .line 76
    return-void
.end method

.method public uploadFile(Ljava/lang/String;ZZI)V
    .registers 11
    .param p1, "location"    # Ljava/lang/String;
    .param p2, "encrypted"    # Z
    .param p3, "small"    # Z
    .param p4, "type"    # I

    .prologue
    .line 138
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/messenger/FileLoader;->uploadFile(Ljava/lang/String;ZZII)V

    .line 139
    return-void
.end method

.method public uploadFile(Ljava/lang/String;ZZII)V
    .registers 14
    .param p1, "location"    # Ljava/lang/String;
    .param p2, "encrypted"    # Z
    .param p3, "small"    # Z
    .param p4, "estimatedSize"    # I
    .param p5, "type"    # I

    .prologue
    .line 142
    if-nez p1, :cond_3

    .line 268
    :goto_2
    return-void

    .line 145
    :cond_3
    iget-object v7, p0, Lorg/telegram/messenger/FileLoader;->fileLoaderQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v0, Lorg/telegram/messenger/FileLoader$3;

    move-object v1, p0

    move v2, p2

    move-object v3, p1

    move v4, p4

    move v5, p5

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lorg/telegram/messenger/FileLoader$3;-><init>(Lorg/telegram/messenger/FileLoader;ZLjava/lang/String;IIZ)V

    invoke-virtual {v7, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_2
.end method
