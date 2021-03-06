.class final Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;
.super Ljava/lang/Object;
.source "SingleSampleMediaPeriod.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/upstream/Loader$Loadable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SourceLoadable"
.end annotation


# instance fields
.field private final dataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

.field private sampleData:[B

.field private sampleSize:I

.field private final uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Lorg/telegram/messenger/exoplayer2/upstream/DataSource;)V
    .registers 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "dataSource"    # Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    .prologue
    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 246
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;->uri:Landroid/net/Uri;

    .line 247
    iput-object p2, p0, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;->dataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    .line 248
    return-void
.end method

.method static synthetic access$100(Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;

    .prologue
    .line 237
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;->sampleSize:I

    return v0
.end method

.method static synthetic access$200(Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;)[B
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;

    .prologue
    .line 237
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;->sampleData:[B

    return-object v0
.end method


# virtual methods
.method public cancelLoad()V
    .registers 1

    .prologue
    .line 253
    return-void
.end method

.method public isLoadCanceled()Z
    .registers 2

    .prologue
    .line 257
    const/4 v0, 0x0

    return v0
.end method

.method public load()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 263
    const/4 v1, 0x0

    iput v1, p0, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;->sampleSize:I

    .line 266
    :try_start_3
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;->dataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    new-instance v2, Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;->uri:Landroid/net/Uri;

    invoke-direct {v2, v3}, Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;-><init>(Landroid/net/Uri;)V

    invoke-interface {v1, v2}, Lorg/telegram/messenger/exoplayer2/upstream/DataSource;->open(Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;)J

    .line 268
    const/4 v0, 0x0

    .line 269
    .local v0, "result":I
    :goto_10
    const/4 v1, -0x1

    if-eq v0, v1, :cond_4f

    .line 270
    iget v1, p0, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;->sampleSize:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;->sampleSize:I

    .line 271
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;->sampleData:[B

    if-nez v1, :cond_33

    .line 272
    const/16 v1, 0x400

    new-array v1, v1, [B

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;->sampleData:[B

    .line 276
    :cond_22
    :goto_22
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;->dataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;->sampleData:[B

    iget v3, p0, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;->sampleSize:I

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;->sampleData:[B

    array-length v4, v4

    iget v5, p0, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;->sampleSize:I

    sub-int/2addr v4, v5

    invoke-interface {v1, v2, v3, v4}, Lorg/telegram/messenger/exoplayer2/upstream/DataSource;->read([BII)I

    move-result v0

    goto :goto_10

    .line 273
    :cond_33
    iget v1, p0, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;->sampleSize:I

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;->sampleData:[B

    array-length v2, v2

    if-ne v1, v2, :cond_22

    .line 274
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;->sampleData:[B

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;->sampleData:[B

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;->sampleData:[B
    :try_end_47
    .catchall {:try_start_3 .. :try_end_47} :catchall_48

    goto :goto_22

    .line 279
    .end local v0    # "result":I
    :catchall_48
    move-exception v1

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;->dataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    invoke-interface {v2}, Lorg/telegram/messenger/exoplayer2/upstream/DataSource;->close()V

    throw v1

    .restart local v0    # "result":I
    :cond_4f
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;->dataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    invoke-interface {v1}, Lorg/telegram/messenger/exoplayer2/upstream/DataSource;->close()V

    .line 281
    return-void
.end method
