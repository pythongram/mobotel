.class Lorg/telegram/messenger/FileUploadOperation$UploadCachedResult;
.super Ljava/lang/Object;
.source "FileUploadOperation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/FileUploadOperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UploadCachedResult"
.end annotation


# instance fields
.field private bytesOffset:J

.field private iv:[B

.field final synthetic this$0:Lorg/telegram/messenger/FileUploadOperation;


# direct methods
.method private constructor <init>(Lorg/telegram/messenger/FileUploadOperation;)V
    .registers 2

    .prologue
    .line 31
    iput-object p1, p0, Lorg/telegram/messenger/FileUploadOperation$UploadCachedResult;->this$0:Lorg/telegram/messenger/FileUploadOperation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/messenger/FileUploadOperation;Lorg/telegram/messenger/FileUploadOperation$1;)V
    .registers 3
    .param p1, "x0"    # Lorg/telegram/messenger/FileUploadOperation;
    .param p2, "x1"    # Lorg/telegram/messenger/FileUploadOperation$1;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lorg/telegram/messenger/FileUploadOperation$UploadCachedResult;-><init>(Lorg/telegram/messenger/FileUploadOperation;)V

    return-void
.end method

.method static synthetic access$2800(Lorg/telegram/messenger/FileUploadOperation$UploadCachedResult;)J
    .registers 3
    .param p0, "x0"    # Lorg/telegram/messenger/FileUploadOperation$UploadCachedResult;

    .prologue
    .line 31
    iget-wide v0, p0, Lorg/telegram/messenger/FileUploadOperation$UploadCachedResult;->bytesOffset:J

    return-wide v0
.end method

.method static synthetic access$2802(Lorg/telegram/messenger/FileUploadOperation$UploadCachedResult;J)J
    .registers 4
    .param p0, "x0"    # Lorg/telegram/messenger/FileUploadOperation$UploadCachedResult;
    .param p1, "x1"    # J

    .prologue
    .line 31
    iput-wide p1, p0, Lorg/telegram/messenger/FileUploadOperation$UploadCachedResult;->bytesOffset:J

    return-wide p1
.end method

.method static synthetic access$2900(Lorg/telegram/messenger/FileUploadOperation$UploadCachedResult;)[B
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/FileUploadOperation$UploadCachedResult;

    .prologue
    .line 31
    iget-object v0, p0, Lorg/telegram/messenger/FileUploadOperation$UploadCachedResult;->iv:[B

    return-object v0
.end method

.method static synthetic access$2902(Lorg/telegram/messenger/FileUploadOperation$UploadCachedResult;[B)[B
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/FileUploadOperation$UploadCachedResult;
    .param p1, "x1"    # [B

    .prologue
    .line 31
    iput-object p1, p0, Lorg/telegram/messenger/FileUploadOperation$UploadCachedResult;->iv:[B

    return-object p1
.end method
