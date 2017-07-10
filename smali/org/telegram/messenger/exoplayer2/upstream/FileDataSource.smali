.class public final Lorg/telegram/messenger/exoplayer2/upstream/FileDataSource;
.super Ljava/lang/Object;
.source "FileDataSource.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/upstream/DataSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer2/upstream/FileDataSource$FileDataSourceException;
    }
.end annotation


# instance fields
.field private bytesRemaining:J

.field private file:Ljava/io/RandomAccessFile;

.field private final listener:Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/telegram/messenger/exoplayer2/upstream/TransferListener",
            "<-",
            "Lorg/telegram/messenger/exoplayer2/upstream/FileDataSource;",
            ">;"
        }
    .end annotation
.end field

.field private opened:Z

.field private uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer2/upstream/FileDataSource;-><init>(Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/exoplayer2/upstream/TransferListener",
            "<-",
            "Lorg/telegram/messenger/exoplayer2/upstream/FileDataSource;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 54
    .local p1, "listener":Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;, "Lorg/telegram/messenger/exoplayer2/upstream/TransferListener<-Lorg/telegram/messenger/exoplayer2/upstream/FileDataSource;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/upstream/FileDataSource;->listener:Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;

    .line 56
    return-void
.end method


# virtual methods
.method public close()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/upstream/FileDataSource$FileDataSourceException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 113
    iput-object v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/FileDataSource;->uri:Landroid/net/Uri;

    .line 115
    :try_start_4
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/FileDataSource;->file:Ljava/io/RandomAccessFile;

    if-eqz v1, :cond_d

    .line 116
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/FileDataSource;->file:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_d} :catch_1f
    .catchall {:try_start_4 .. :try_end_d} :catchall_26

    .line 121
    :cond_d
    iput-object v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/FileDataSource;->file:Ljava/io/RandomAccessFile;

    .line 122
    iget-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/FileDataSource;->opened:Z

    if-eqz v1, :cond_1e

    .line 123
    iput-boolean v3, p0, Lorg/telegram/messenger/exoplayer2/upstream/FileDataSource;->opened:Z

    .line 124
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/FileDataSource;->listener:Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;

    if-eqz v1, :cond_1e

    .line 125
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/FileDataSource;->listener:Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;

    invoke-interface {v1, p0}, Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;->onTransferEnd(Ljava/lang/Object;)V

    .line 129
    :cond_1e
    return-void

    .line 118
    :catch_1f
    move-exception v0

    .line 119
    .local v0, "e":Ljava/io/IOException;
    :try_start_20
    new-instance v1, Lorg/telegram/messenger/exoplayer2/upstream/FileDataSource$FileDataSourceException;

    invoke-direct {v1, v0}, Lorg/telegram/messenger/exoplayer2/upstream/FileDataSource$FileDataSourceException;-><init>(Ljava/io/IOException;)V

    throw v1
    :try_end_26
    .catchall {:try_start_20 .. :try_end_26} :catchall_26

    .line 121
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_26
    move-exception v1

    iput-object v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/FileDataSource;->file:Ljava/io/RandomAccessFile;

    .line 122
    iget-boolean v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/FileDataSource;->opened:Z

    if-eqz v2, :cond_38

    .line 123
    iput-boolean v3, p0, Lorg/telegram/messenger/exoplayer2/upstream/FileDataSource;->opened:Z

    .line 124
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/FileDataSource;->listener:Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;

    if-eqz v2, :cond_38

    .line 125
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/FileDataSource;->listener:Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;

    invoke-interface {v2, p0}, Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;->onTransferEnd(Ljava/lang/Object;)V

    :cond_38
    throw v1
.end method

.method public getUri()Landroid/net/Uri;
    .registers 2

    .prologue
    .line 108
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/FileDataSource;->uri:Landroid/net/Uri;

    return-object v0
.end method

.method public open(Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;)J
    .registers 8
    .param p1, "dataSpec"    # Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/upstream/FileDataSource$FileDataSourceException;
        }
    .end annotation

    .prologue
    .line 61
    :try_start_0
    iget-object v1, p1, Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;->uri:Landroid/net/Uri;

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/FileDataSource;->uri:Landroid/net/Uri;

    .line 62
    new-instance v1, Ljava/io/RandomAccessFile;

    iget-object v2, p1, Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;->uri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    const-string v3, "r"

    invoke-direct {v1, v2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/FileDataSource;->file:Ljava/io/RandomAccessFile;

    .line 63
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/FileDataSource;->file:Ljava/io/RandomAccessFile;

    iget-wide v2, p1, Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;->position:J

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 64
    iget-wide v2, p1, Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;->length:J

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-nez v1, :cond_42

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/FileDataSource;->file:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    iget-wide v4, p1, Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;->position:J

    sub-long/2addr v2, v4

    :goto_2b
    iput-wide v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/FileDataSource;->bytesRemaining:J

    .line 66
    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/FileDataSource;->bytesRemaining:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gez v1, :cond_45

    .line 67
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3b} :catch_3b

    .line 69
    :catch_3b
    move-exception v0

    .line 70
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lorg/telegram/messenger/exoplayer2/upstream/FileDataSource$FileDataSourceException;

    invoke-direct {v1, v0}, Lorg/telegram/messenger/exoplayer2/upstream/FileDataSource$FileDataSourceException;-><init>(Ljava/io/IOException;)V

    throw v1

    .line 64
    .end local v0    # "e":Ljava/io/IOException;
    :cond_42
    :try_start_42
    iget-wide v2, p1, Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;->length:J
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_44} :catch_3b

    goto :goto_2b

    .line 73
    :cond_45
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/FileDataSource;->opened:Z

    .line 74
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/FileDataSource;->listener:Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;

    if-eqz v1, :cond_51

    .line 75
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/FileDataSource;->listener:Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;

    invoke-interface {v1, p0, p1}, Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;->onTransferStart(Ljava/lang/Object;Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;)V

    .line 78
    :cond_51
    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/FileDataSource;->bytesRemaining:J

    return-wide v2
.end method

.method public read([BII)I
    .registers 12
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "readLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/upstream/FileDataSource$FileDataSourceException;
        }
    .end annotation

    .prologue
    .line 83
    if-nez p3, :cond_4

    .line 84
    const/4 v0, 0x0

    .line 102
    :cond_3
    :goto_3
    return v0

    .line 85
    :cond_4
    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/FileDataSource;->bytesRemaining:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_e

    .line 86
    const/4 v0, -0x1

    goto :goto_3

    .line 90
    :cond_e
    :try_start_e
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/FileDataSource;->file:Ljava/io/RandomAccessFile;

    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer2/upstream/FileDataSource;->bytesRemaining:J

    int-to-long v6, p3

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v3, v4

    invoke-virtual {v2, p1, p2, v3}, Ljava/io/RandomAccessFile;->read([BII)I
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_1b} :catch_2e

    move-result v0

    .line 95
    .local v0, "bytesRead":I
    if-lez v0, :cond_3

    .line 96
    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/FileDataSource;->bytesRemaining:J

    int-to-long v4, v0

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/FileDataSource;->bytesRemaining:J

    .line 97
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/FileDataSource;->listener:Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;

    if-eqz v2, :cond_3

    .line 98
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/FileDataSource;->listener:Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;

    invoke-interface {v2, p0, v0}, Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;->onBytesTransferred(Ljava/lang/Object;I)V

    goto :goto_3

    .line 91
    .end local v0    # "bytesRead":I
    :catch_2e
    move-exception v1

    .line 92
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Lorg/telegram/messenger/exoplayer2/upstream/FileDataSource$FileDataSourceException;

    invoke-direct {v2, v1}, Lorg/telegram/messenger/exoplayer2/upstream/FileDataSource$FileDataSourceException;-><init>(Ljava/io/IOException;)V

    throw v2
.end method
