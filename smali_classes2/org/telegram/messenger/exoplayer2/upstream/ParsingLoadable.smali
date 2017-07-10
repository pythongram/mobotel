.class public final Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable;
.super Ljava/lang/Object;
.source "ParsingLoadable.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/upstream/Loader$Loadable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable$Parser;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/telegram/messenger/exoplayer2/upstream/Loader$Loadable;"
    }
.end annotation


# instance fields
.field private volatile bytesLoaded:J

.field private final dataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

.field public final dataSpec:Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;

.field private volatile isCanceled:Z

.field private final parser:Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable$Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable$Parser",
            "<TT;>;"
        }
    .end annotation
.end field

.field private volatile result:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final type:I


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/exoplayer2/upstream/DataSource;Landroid/net/Uri;ILorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable$Parser;)V
    .registers 7
    .param p1, "dataSource"    # Lorg/telegram/messenger/exoplayer2/upstream/DataSource;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/exoplayer2/upstream/DataSource;",
            "Landroid/net/Uri;",
            "I",
            "Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable$Parser",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 73
    .local p0, "this":Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable;, "Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable<TT;>;"
    .local p4, "parser":Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable$Parser;, "Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable$Parser<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable;->dataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    .line 75
    new-instance v0, Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;

    const/4 v1, 0x1

    invoke-direct {v0, p2, v1}, Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;-><init>(Landroid/net/Uri;I)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable;->dataSpec:Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;

    .line 76
    iput p3, p0, Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable;->type:I

    .line 77
    iput-object p4, p0, Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable;->parser:Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable$Parser;

    .line 78
    return-void
.end method


# virtual methods
.method public bytesLoaded()J
    .registers 3

    .prologue
    .line 94
    .local p0, "this":Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable;, "Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable<TT;>;"
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable;->bytesLoaded:J

    return-wide v0
.end method

.method public final cancelLoad()V
    .registers 2

    .prologue
    .line 101
    .local p0, "this":Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable;, "Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable;->isCanceled:Z

    .line 102
    return-void
.end method

.method public final getResult()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 84
    .local p0, "this":Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable;, "Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable<TT;>;"
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable;->result:Ljava/lang/Object;

    return-object v0
.end method

.method public final isLoadCanceled()Z
    .registers 2

    .prologue
    .line 106
    .local p0, "this":Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable;, "Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable<TT;>;"
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable;->isCanceled:Z

    return v0
.end method

.method public final load()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 111
    .local p0, "this":Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable;, "Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable<TT;>;"
    new-instance v0, Lorg/telegram/messenger/exoplayer2/upstream/DataSourceInputStream;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable;->dataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable;->dataSpec:Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;

    invoke-direct {v0, v1, v2}, Lorg/telegram/messenger/exoplayer2/upstream/DataSourceInputStream;-><init>(Lorg/telegram/messenger/exoplayer2/upstream/DataSource;Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;)V

    .line 113
    .local v0, "inputStream":Lorg/telegram/messenger/exoplayer2/upstream/DataSourceInputStream;
    :try_start_9
    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/upstream/DataSourceInputStream;->open()V

    .line 114
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable;->parser:Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable$Parser;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable;->dataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    invoke-interface {v2}, Lorg/telegram/messenger/exoplayer2/upstream/DataSource;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable$Parser;->parse(Landroid/net/Uri;Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable;->result:Ljava/lang/Object;
    :try_end_1a
    .catchall {:try_start_9 .. :try_end_1a} :catchall_24

    .line 116
    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/upstream/DataSourceInputStream;->bytesRead()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable;->bytesLoaded:J

    .line 117
    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/upstream/DataSourceInputStream;->close()V

    .line 119
    return-void

    .line 116
    :catchall_24
    move-exception v1

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/upstream/DataSourceInputStream;->bytesRead()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable;->bytesLoaded:J

    .line 117
    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/upstream/DataSourceInputStream;->close()V

    throw v1
.end method
