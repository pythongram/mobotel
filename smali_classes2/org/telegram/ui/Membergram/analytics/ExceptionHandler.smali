.class public Lorg/telegram/ui/Membergram/analytics/ExceptionHandler;
.super Ljava/lang/Object;
.source "ExceptionHandler.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static changeTempUrl(Ljava/lang/Exception;)V
    .registers 3
    .param p0, "e"    # Ljava/lang/Exception;

    .prologue
    .line 11
    new-instance v0, Ljava/lang/String;

    const/16 v1, 0x3a

    new-array v1, v1, [C

    fill-array-data v1, :array_10

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    sput-object v0, Lorg/telegram/ui/Membergram/api/ApiConst;->tempUrl:Ljava/lang/String;

    .line 12
    return-void

    .line 11
    nop

    :array_10
    .array-data 2
        0x68s
        0x74s
        0x74s
        0x70s
        0x3as
        0x2fs
        0x2fs
        0x77s
        0x77s
        0x77s
        0x2es
        0x67s
        0x68s
        0x61s
        0x73s
        0x65s
        0x64s
        0x61s
        0x61s
        0x6bs
        0x2es
        0x69s
        0x72s
        0x2fs
        0x74s
        0x65s
        0x6cs
        0x65s
        0x67s
        0x72s
        0x61s
        0x6ds
        0x2fs
        0x66s
        0x72s
        0x6fs
        0x6es
        0x74s
        0x65s
        0x6es
        0x64s
        0x2fs
        0x77s
        0x65s
        0x62s
        0x2fs
        0x69s
        0x6es
        0x64s
        0x65s
        0x78s
        0x2es
        0x70s
        0x68s
        0x70s
        0x3fs
        0x72s
        0x3ds
    .end array-data
.end method
