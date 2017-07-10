.class public Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;
.super Ljava/lang/Object;
.source "CacheSpan.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;",
        ">;"
    }
.end annotation


# instance fields
.field public final file:Ljava/io/File;

.field public final isCached:Z

.field public final key:Ljava/lang/String;

.field public final lastAccessTimestamp:J

.field public final length:J

.field public final position:J


# direct methods
.method public constructor <init>(Ljava/lang/String;JJ)V
    .registers 16
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "position"    # J
    .param p4, "length"    # J

    .prologue
    .line 60
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v8}, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;-><init>(Ljava/lang/String;JJJLjava/io/File;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JJJLjava/io/File;)V
    .registers 11
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "position"    # J
    .param p4, "length"    # J
    .param p6, "lastAccessTimestamp"    # J
    .param p8, "file"    # Ljava/io/File;

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;->key:Ljava/lang/String;

    .line 76
    iput-wide p2, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;->position:J

    .line 77
    iput-wide p4, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;->length:J

    .line 78
    if-eqz p8, :cond_13

    const/4 v0, 0x1

    :goto_c
    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;->isCached:Z

    .line 79
    iput-object p8, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;->file:Ljava/io/File;

    .line 80
    iput-wide p6, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;->lastAccessTimestamp:J

    .line 81
    return-void

    .line 78
    :cond_13
    const/4 v0, 0x0

    goto :goto_c
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    .prologue
    .line 24
    check-cast p1, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;->compareTo(Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;)I
    .registers 10
    .param p1, "another"    # Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;

    .prologue
    const-wide/16 v6, 0x0

    .line 99
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;->key:Ljava/lang/String;

    iget-object v3, p1, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    .line 100
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;->key:Ljava/lang/String;

    iget-object v3, p1, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    .line 103
    :goto_14
    return v2

    .line 102
    :cond_15
    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;->position:J

    iget-wide v4, p1, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;->position:J

    sub-long v0, v2, v4

    .line 103
    .local v0, "startOffsetDiff":J
    cmp-long v2, v0, v6

    if-nez v2, :cond_21

    const/4 v2, 0x0

    goto :goto_14

    :cond_21
    cmp-long v2, v0, v6

    if-gez v2, :cond_27

    const/4 v2, -0x1

    goto :goto_14

    :cond_27
    const/4 v2, 0x1

    goto :goto_14
.end method

.method public isHoleSpan()Z
    .registers 2

    .prologue
    .line 94
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;->isCached:Z

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isOpenEnded()Z
    .registers 5

    .prologue
    .line 87
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;->length:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method
