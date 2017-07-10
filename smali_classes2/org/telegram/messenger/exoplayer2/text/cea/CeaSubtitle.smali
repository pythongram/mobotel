.class final Lorg/telegram/messenger/exoplayer2/text/cea/CeaSubtitle;
.super Ljava/lang/Object;
.source "CeaSubtitle.java"

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
.method public constructor <init>(Lorg/telegram/messenger/exoplayer2/text/Cue;)V
    .registers 3
    .param p1, "cue"    # Lorg/telegram/messenger/exoplayer2/text/Cue;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    if-nez p1, :cond_c

    .line 35
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/cea/CeaSubtitle;->cues:Ljava/util/List;

    .line 39
    :goto_b
    return-void

    .line 37
    :cond_c
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/cea/CeaSubtitle;->cues:Ljava/util/List;

    goto :goto_b
.end method


# virtual methods
.method public getCues(J)Ljava/util/List;
    .registers 4
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
    .line 58
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/cea/CeaSubtitle;->cues:Ljava/util/List;

    return-object v0
.end method

.method public getEventTime(I)J
    .registers 4
    .param p1, "index"    # I

    .prologue
    .line 53
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getEventTimeCount()I
    .registers 2

    .prologue
    .line 48
    const/4 v0, 0x1

    return v0
.end method

.method public getNextEventTimeIndex(J)I
    .registers 4
    .param p1, "timeUs"    # J

    .prologue
    .line 43
    const/4 v0, 0x0

    return v0
.end method
