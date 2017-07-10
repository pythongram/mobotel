.class public final Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkedTrackBlacklistUtil;
.super Ljava/lang/Object;
.source "ChunkedTrackBlacklistUtil.java"


# static fields
.field public static final DEFAULT_TRACK_BLACKLIST_MS:J = 0xea60L

.field private static final TAG:Ljava/lang/String; = "ChunkedTrackBlacklist"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static maybeBlacklistTrack(Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;ILjava/lang/Exception;)Z
    .registers 5
    .param p0, "trackSelection"    # Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;
    .param p1, "trackSelectionIndex"    # I
    .param p2, "e"    # Ljava/lang/Exception;

    .prologue
    .line 49
    const-wide/32 v0, 0xea60

    invoke-static {p0, p1, p2, v0, v1}, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkedTrackBlacklistUtil;->maybeBlacklistTrack(Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;ILjava/lang/Exception;J)Z

    move-result v0

    return v0
.end method

.method public static maybeBlacklistTrack(Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;ILjava/lang/Exception;J)Z
    .registers 12
    .param p0, "trackSelection"    # Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;
    .param p1, "trackSelectionIndex"    # I
    .param p2, "e"    # Ljava/lang/Exception;
    .param p3, "blacklistDurationMs"    # J

    .prologue
    const/4 v0, 0x0

    .line 66
    invoke-interface {p0}, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_9

    .line 85
    :cond_8
    :goto_8
    return v0

    .line 70
    :cond_9
    instance-of v3, p2, Lorg/telegram/messenger/exoplayer2/upstream/HttpDataSource$InvalidResponseCodeException;

    if-eqz v3, :cond_8

    move-object v2, p2

    .line 71
    check-cast v2, Lorg/telegram/messenger/exoplayer2/upstream/HttpDataSource$InvalidResponseCodeException;

    .line 72
    .local v2, "responseCodeException":Lorg/telegram/messenger/exoplayer2/upstream/HttpDataSource$InvalidResponseCodeException;
    iget v1, v2, Lorg/telegram/messenger/exoplayer2/upstream/HttpDataSource$InvalidResponseCodeException;->responseCode:I

    .line 73
    .local v1, "responseCode":I
    const/16 v3, 0x194

    if-eq v1, v3, :cond_1a

    const/16 v3, 0x19a

    if-ne v1, v3, :cond_8

    .line 74
    :cond_1a
    invoke-interface {p0, p1, p3, p4}, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;->blacklist(IJ)Z

    move-result v0

    .line 75
    .local v0, "blacklisted":Z
    if-eqz v0, :cond_51

    .line 76
    const-string v3, "ChunkedTrackBlacklist"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Blacklisted: duration="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", responseCode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", format="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 77
    invoke-interface {p0, p1}, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;->getFormat(I)Lorg/telegram/messenger/exoplayer2/Format;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 76
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 79
    :cond_51
    const-string v3, "ChunkedTrackBlacklist"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Blacklisting failed (cannot blacklist last enabled track): responseCode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", format="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 80
    invoke-interface {p0, p1}, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;->getFormat(I)Lorg/telegram/messenger/exoplayer2/Format;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 79
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8
.end method
