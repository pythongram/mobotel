.class public final Lorg/telegram/messenger/exoplayer2/upstream/DefaultDataSource;
.super Ljava/lang/Object;
.source "DefaultDataSource.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/upstream/DataSource;


# static fields
.field private static final SCHEME_ASSET:Ljava/lang/String; = "asset"

.field private static final SCHEME_CONTENT:Ljava/lang/String; = "content"


# instance fields
.field private final assetDataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

.field private final baseDataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

.field private final contentDataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

.field private dataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

.field private final fileDataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;Ljava/lang/String;IIZ)V
    .registers 14
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "userAgent"    # Ljava/lang/String;
    .param p4, "connectTimeoutMillis"    # I
    .param p5, "readTimeoutMillis"    # I
    .param p6, "allowCrossProtocolRedirects"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lorg/telegram/messenger/exoplayer2/upstream/TransferListener",
            "<-",
            "Lorg/telegram/messenger/exoplayer2/upstream/DataSource;",
            ">;",
            "Ljava/lang/String;",
            "IIZ)V"
        }
    .end annotation

    .prologue
    .line 82
    .local p2, "listener":Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;, "Lorg/telegram/messenger/exoplayer2/upstream/TransferListener<-Lorg/telegram/messenger/exoplayer2/upstream/DataSource;>;"
    new-instance v0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultHttpDataSource;

    const/4 v2, 0x0

    move-object v1, p3

    move-object v3, p2

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lorg/telegram/messenger/exoplayer2/upstream/DefaultHttpDataSource;-><init>(Ljava/lang/String;Lorg/telegram/messenger/exoplayer2/util/Predicate;Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;IIZ)V

    invoke-direct {p0, p1, p2, v0}, Lorg/telegram/messenger/exoplayer2/upstream/DefaultDataSource;-><init>(Landroid/content/Context;Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;Lorg/telegram/messenger/exoplayer2/upstream/DataSource;)V

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;Ljava/lang/String;Z)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "userAgent"    # Ljava/lang/String;
    .param p4, "allowCrossProtocolRedirects"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lorg/telegram/messenger/exoplayer2/upstream/TransferListener",
            "<-",
            "Lorg/telegram/messenger/exoplayer2/upstream/DataSource;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .local p2, "listener":Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;, "Lorg/telegram/messenger/exoplayer2/upstream/TransferListener<-Lorg/telegram/messenger/exoplayer2/upstream/DataSource;>;"
    const/16 v4, 0x1f40

    .line 62
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, v4

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lorg/telegram/messenger/exoplayer2/upstream/DefaultDataSource;-><init>(Landroid/content/Context;Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;Ljava/lang/String;IIZ)V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;Lorg/telegram/messenger/exoplayer2/upstream/DataSource;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "baseDataSource"    # Lorg/telegram/messenger/exoplayer2/upstream/DataSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lorg/telegram/messenger/exoplayer2/upstream/TransferListener",
            "<-",
            "Lorg/telegram/messenger/exoplayer2/upstream/DataSource;",
            ">;",
            "Lorg/telegram/messenger/exoplayer2/upstream/DataSource;",
            ")V"
        }
    .end annotation

    .prologue
    .line 97
    .local p2, "listener":Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;, "Lorg/telegram/messenger/exoplayer2/upstream/TransferListener<-Lorg/telegram/messenger/exoplayer2/upstream/DataSource;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    invoke-static {p3}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultDataSource;->baseDataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    .line 99
    new-instance v0, Lorg/telegram/messenger/exoplayer2/upstream/FileDataSource;

    invoke-direct {v0, p2}, Lorg/telegram/messenger/exoplayer2/upstream/FileDataSource;-><init>(Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultDataSource;->fileDataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    .line 100
    new-instance v0, Lorg/telegram/messenger/exoplayer2/upstream/AssetDataSource;

    invoke-direct {v0, p1, p2}, Lorg/telegram/messenger/exoplayer2/upstream/AssetDataSource;-><init>(Landroid/content/Context;Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultDataSource;->assetDataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    .line 101
    new-instance v0, Lorg/telegram/messenger/exoplayer2/upstream/ContentDataSource;

    invoke-direct {v0, p1, p2}, Lorg/telegram/messenger/exoplayer2/upstream/ContentDataSource;-><init>(Landroid/content/Context;Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultDataSource;->contentDataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    .line 102
    return-void
.end method


# virtual methods
.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 138
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultDataSource;->dataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    if-eqz v0, :cond_c

    .line 140
    :try_start_5
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultDataSource;->dataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/upstream/DataSource;->close()V
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_d

    .line 142
    iput-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultDataSource;->dataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    .line 145
    :cond_c
    return-void

    .line 142
    :catchall_d
    move-exception v0

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultDataSource;->dataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    throw v0
.end method

.method public getUri()Landroid/net/Uri;
    .registers 2

    .prologue
    .line 133
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultDataSource;->dataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultDataSource;->dataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/upstream/DataSource;->getUri()Landroid/net/Uri;

    move-result-object v0

    goto :goto_5
.end method

.method public open(Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;)J
    .registers 6
    .param p1, "dataSpec"    # Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 106
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultDataSource;->dataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    if-nez v1, :cond_2f

    const/4 v1, 0x1

    :goto_5
    invoke-static {v1}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkState(Z)V

    .line 108
    iget-object v1, p1, Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;->uri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 109
    .local v0, "scheme":Ljava/lang/String;
    iget-object v1, p1, Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;->uri:Landroid/net/Uri;

    invoke-static {v1}, Lorg/telegram/messenger/exoplayer2/util/Util;->isLocalFileUri(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 110
    iget-object v1, p1, Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;->uri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/android_asset/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 111
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultDataSource;->assetDataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultDataSource;->dataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    .line 123
    :goto_28
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultDataSource;->dataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    invoke-interface {v1, p1}, Lorg/telegram/messenger/exoplayer2/upstream/DataSource;->open(Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;)J

    move-result-wide v2

    return-wide v2

    .line 106
    .end local v0    # "scheme":Ljava/lang/String;
    :cond_2f
    const/4 v1, 0x0

    goto :goto_5

    .line 113
    .restart local v0    # "scheme":Ljava/lang/String;
    :cond_31
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultDataSource;->fileDataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultDataSource;->dataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    goto :goto_28

    .line 115
    :cond_36
    const-string v1, "asset"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_43

    .line 116
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultDataSource;->assetDataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultDataSource;->dataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    goto :goto_28

    .line 117
    :cond_43
    const-string v1, "content"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_50

    .line 118
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultDataSource;->contentDataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultDataSource;->dataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    goto :goto_28

    .line 120
    :cond_50
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultDataSource;->baseDataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultDataSource;->dataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    goto :goto_28
.end method

.method public read([BII)I
    .registers 5
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "readLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 128
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultDataSource;->dataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    invoke-interface {v0, p1, p2, p3}, Lorg/telegram/messenger/exoplayer2/upstream/DataSource;->read([BII)I

    move-result v0

    return v0
.end method
