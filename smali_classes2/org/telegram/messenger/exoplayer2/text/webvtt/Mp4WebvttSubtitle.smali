.class final Lorg/telegram/messenger/exoplayer2/text/webvtt/Mp4WebvttSubtitle;
.super Ljava/lang/Object;
.source "Mp4WebvttSubtitle.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/text/Subtitle;


# instance fields
.field private final cues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/telegram/messenger/exoplayer2/text/Cue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/telegram/messenger/exoplayer2/text/Cue;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p1, "cueList":Ljava/util/List;, "Ljava/util/List<Lorg/telegram/messenger/exoplayer2/text/Cue;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/webvtt/Mp4WebvttSubtitle;->cues:Ljava/util/List;

    .line 34
    return-void
.end method


# virtual methods
.method public getCues(J)Ljava/util/List;
    .registers 6
    .param p1, "timeUs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Lorg/telegram/messenger/exoplayer2/text/Cue;",
            ">;"
        }
    .end annotation

    .prologue
    .line 54
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_9

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/webvtt/Mp4WebvttSubtitle;->cues:Ljava/util/List;

    :goto_8
    return-object v0

    :cond_9
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_8
.end method

.method public getEventTime(I)J
    .registers 4
    .param p1, "index"    # I

    .prologue
    .line 48
    if-nez p1, :cond_9

    const/4 v0, 0x1

    :goto_3
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 49
    const-wide/16 v0, 0x0

    return-wide v0

    .line 48
    :cond_9
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public getEventTimeCount()I
    .registers 2

    .prologue
    .line 43
    const/4 v0, 0x1

    return v0
.end method

.method public getNextEventTimeIndex(J)I
    .registers 6
    .param p1, "timeUs"    # J

    .prologue
    .line 38
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return v0

    :cond_8
    const/4 v0, -0x1

    goto :goto_7
.end method
