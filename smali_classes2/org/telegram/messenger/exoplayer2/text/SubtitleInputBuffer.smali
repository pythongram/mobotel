.class public final Lorg/telegram/messenger/exoplayer2/text/SubtitleInputBuffer;
.super Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;
.source "SubtitleInputBuffer.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;",
        "Ljava/lang/Comparable",
        "<",
        "Lorg/telegram/messenger/exoplayer2/text/SubtitleInputBuffer;",
        ">;"
    }
.end annotation


# instance fields
.field public subsampleOffsetUs:J


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 34
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;-><init>(I)V

    .line 35
    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    .prologue
    .line 24
    check-cast p1, Lorg/telegram/messenger/exoplayer2/text/SubtitleInputBuffer;

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/exoplayer2/text/SubtitleInputBuffer;->compareTo(Lorg/telegram/messenger/exoplayer2/text/SubtitleInputBuffer;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/telegram/messenger/exoplayer2/text/SubtitleInputBuffer;)I
    .registers 10
    .param p1, "other"    # Lorg/telegram/messenger/exoplayer2/text/SubtitleInputBuffer;

    .prologue
    const-wide/16 v6, 0x0

    .line 39
    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/text/SubtitleInputBuffer;->timeUs:J

    iget-wide v4, p1, Lorg/telegram/messenger/exoplayer2/text/SubtitleInputBuffer;->timeUs:J

    sub-long v0, v2, v4

    .line 40
    .local v0, "delta":J
    cmp-long v2, v0, v6

    if-nez v2, :cond_e

    .line 41
    const/4 v2, 0x0

    .line 43
    :goto_d
    return v2

    :cond_e
    cmp-long v2, v0, v6

    if-lez v2, :cond_14

    const/4 v2, 0x1

    goto :goto_d

    :cond_14
    const/4 v2, -0x1

    goto :goto_d
.end method
