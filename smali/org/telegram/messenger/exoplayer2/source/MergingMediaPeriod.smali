.class final Lorg/telegram/messenger/exoplayer2/source/MergingMediaPeriod;
.super Ljava/lang/Object;
.source "MergingMediaPeriod.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;
.implements Lorg/telegram/messenger/exoplayer2/source/MediaPeriod$Callback;


# instance fields
.field private callback:Lorg/telegram/messenger/exoplayer2/source/MediaPeriod$Callback;

.field private enabledPeriods:[Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;

.field private pendingChildPrepareCount:I

.field public final periods:[Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;

.field private sequenceableLoader:Lorg/telegram/messenger/exoplayer2/source/SequenceableLoader;

.field private final streamPeriodIndices:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap",
            "<",
            "Lorg/telegram/messenger/exoplayer2/source/SampleStream;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private trackGroups:Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;


# direct methods
.method public varargs constructor <init>([Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;)V
    .registers 3
    .param p1, "periods"    # [Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/source/MergingMediaPeriod;->periods:[Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;

    .line 43
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/MergingMediaPeriod;->streamPeriodIndices:Ljava/util/IdentityHashMap;

    .line 44
    return-void
.end method


# virtual methods
.method public continueLoading(J)Z
    .registers 4
    .param p1, "positionUs"    # J

    .prologue
    .line 133
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/MergingMediaPeriod;->sequenceableLoader:Lorg/telegram/messenger/exoplayer2/source/SequenceableLoader;

    invoke-interface {v0, p1, p2}, Lorg/telegram/messenger/exoplayer2/source/SequenceableLoader;->continueLoading(J)Z

    move-result v0

    return v0
.end method

.method public getBufferedPositionUs()J
    .registers 12

    .prologue
    const-wide/high16 v6, -0x8000000000000000L

    .line 164
    const-wide v0, 0x7fffffffffffffffL

    .line 165
    .local v0, "bufferedPositionUs":J
    iget-object v8, p0, Lorg/telegram/messenger/exoplayer2/source/MergingMediaPeriod;->enabledPeriods:[Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;

    array-length v9, v8

    const/4 v3, 0x0

    :goto_b
    if-ge v3, v9, :cond_1e

    aget-object v2, v8, v3

    .line 166
    .local v2, "period":Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;
    invoke-interface {v2}, Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;->getBufferedPositionUs()J

    move-result-wide v4

    .line 167
    .local v4, "rendererBufferedPositionUs":J
    cmp-long v10, v4, v6

    if-eqz v10, :cond_1b

    .line 168
    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 165
    :cond_1b
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 171
    .end local v2    # "period":Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;
    .end local v4    # "rendererBufferedPositionUs":J
    :cond_1e
    const-wide v8, 0x7fffffffffffffffL

    cmp-long v3, v0, v8

    if-nez v3, :cond_28

    move-wide v0, v6

    .end local v0    # "bufferedPositionUs":J
    :cond_28
    return-wide v0
.end method

.method public getNextLoadPositionUs()J
    .registers 3

    .prologue
    .line 138
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/MergingMediaPeriod;->sequenceableLoader:Lorg/telegram/messenger/exoplayer2/source/SequenceableLoader;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/source/SequenceableLoader;->getNextLoadPositionUs()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTrackGroups()Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/MergingMediaPeriod;->trackGroups:Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;

    return-object v0
.end method

.method public maybeThrowPrepareError()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 57
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/MergingMediaPeriod;->periods:[Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v3, :cond_e

    aget-object v0, v2, v1

    .line 58
    .local v0, "period":Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;
    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;->maybeThrowPrepareError()V

    .line 57
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 60
    .end local v0    # "period":Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;
    :cond_e
    return-void
.end method

.method public onContinueLoadingRequested(Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;)V
    .registers 3
    .param p1, "ignored"    # Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;

    .prologue
    .line 212
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/MergingMediaPeriod;->trackGroups:Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;

    if-nez v0, :cond_5

    .line 217
    :goto_4
    return-void

    .line 216
    :cond_5
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/MergingMediaPeriod;->callback:Lorg/telegram/messenger/exoplayer2/source/MediaPeriod$Callback;

    invoke-interface {v0, p0}, Lorg/telegram/messenger/exoplayer2/source/MediaPeriod$Callback;->onContinueLoadingRequested(Lorg/telegram/messenger/exoplayer2/source/SequenceableLoader;)V

    goto :goto_4
.end method

.method public bridge synthetic onContinueLoadingRequested(Lorg/telegram/messenger/exoplayer2/source/SequenceableLoader;)V
    .registers 2

    .prologue
    .line 28
    check-cast p1, Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/exoplayer2/source/MergingMediaPeriod;->onContinueLoadingRequested(Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;)V

    return-void
.end method

.method public onPrepared(Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;)V
    .registers 15
    .param p1, "ignored"    # Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;

    .prologue
    const/4 v8, 0x0

    .line 190
    iget v9, p0, Lorg/telegram/messenger/exoplayer2/source/MergingMediaPeriod;->pendingChildPrepareCount:I

    add-int/lit8 v9, v9, -0x1

    iput v9, p0, Lorg/telegram/messenger/exoplayer2/source/MergingMediaPeriod;->pendingChildPrepareCount:I

    if-lez v9, :cond_a

    .line 208
    :goto_9
    return-void

    .line 193
    :cond_a
    const/4 v4, 0x0

    .line 194
    .local v4, "totalTrackGroupCount":I
    iget-object v10, p0, Lorg/telegram/messenger/exoplayer2/source/MergingMediaPeriod;->periods:[Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;

    array-length v11, v10

    move v9, v8

    :goto_f
    if-ge v9, v11, :cond_1d

    aget-object v1, v10, v9

    .line 195
    .local v1, "period":Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;
    invoke-interface {v1}, Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;->getTrackGroups()Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;

    move-result-object v12

    iget v12, v12, Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;->length:I

    add-int/2addr v4, v12

    .line 194
    add-int/lit8 v9, v9, 0x1

    goto :goto_f

    .line 197
    .end local v1    # "period":Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;
    :cond_1d
    new-array v5, v4, [Lorg/telegram/messenger/exoplayer2/source/TrackGroup;

    .line 198
    .local v5, "trackGroupArray":[Lorg/telegram/messenger/exoplayer2/source/TrackGroup;
    const/4 v6, 0x0

    .line 199
    .local v6, "trackGroupIndex":I
    iget-object v9, p0, Lorg/telegram/messenger/exoplayer2/source/MergingMediaPeriod;->periods:[Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;

    array-length v10, v9

    :goto_23
    if-ge v8, v10, :cond_41

    aget-object v1, v9, v8

    .line 200
    .restart local v1    # "period":Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;
    invoke-interface {v1}, Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;->getTrackGroups()Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;

    move-result-object v3

    .line 201
    .local v3, "periodTrackGroups":Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;
    iget v2, v3, Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;->length:I

    .line 202
    .local v2, "periodTrackGroupCount":I
    const/4 v0, 0x0

    .local v0, "j":I
    move v7, v6

    .end local v6    # "trackGroupIndex":I
    .local v7, "trackGroupIndex":I
    :goto_2f
    if-ge v0, v2, :cond_3d

    .line 203
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "trackGroupIndex":I
    .restart local v6    # "trackGroupIndex":I
    invoke-virtual {v3, v0}, Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;->get(I)Lorg/telegram/messenger/exoplayer2/source/TrackGroup;

    move-result-object v11

    aput-object v11, v5, v7

    .line 202
    add-int/lit8 v0, v0, 0x1

    move v7, v6

    .end local v6    # "trackGroupIndex":I
    .restart local v7    # "trackGroupIndex":I
    goto :goto_2f

    .line 199
    :cond_3d
    add-int/lit8 v8, v8, 0x1

    move v6, v7

    .end local v7    # "trackGroupIndex":I
    .restart local v6    # "trackGroupIndex":I
    goto :goto_23

    .line 206
    .end local v0    # "j":I
    .end local v1    # "period":Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;
    .end local v2    # "periodTrackGroupCount":I
    .end local v3    # "periodTrackGroups":Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;
    :cond_41
    new-instance v8, Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;

    invoke-direct {v8, v5}, Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;-><init>([Lorg/telegram/messenger/exoplayer2/source/TrackGroup;)V

    iput-object v8, p0, Lorg/telegram/messenger/exoplayer2/source/MergingMediaPeriod;->trackGroups:Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;

    .line 207
    iget-object v8, p0, Lorg/telegram/messenger/exoplayer2/source/MergingMediaPeriod;->callback:Lorg/telegram/messenger/exoplayer2/source/MediaPeriod$Callback;

    invoke-interface {v8, p0}, Lorg/telegram/messenger/exoplayer2/source/MediaPeriod$Callback;->onPrepared(Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;)V

    goto :goto_9
.end method

.method public prepare(Lorg/telegram/messenger/exoplayer2/source/MediaPeriod$Callback;)V
    .registers 6
    .param p1, "callback"    # Lorg/telegram/messenger/exoplayer2/source/MediaPeriod$Callback;

    .prologue
    .line 48
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/source/MergingMediaPeriod;->callback:Lorg/telegram/messenger/exoplayer2/source/MediaPeriod$Callback;

    .line 49
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/MergingMediaPeriod;->periods:[Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;

    array-length v1, v1

    iput v1, p0, Lorg/telegram/messenger/exoplayer2/source/MergingMediaPeriod;->pendingChildPrepareCount:I

    .line 50
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/MergingMediaPeriod;->periods:[Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_b
    if-ge v1, v3, :cond_15

    aget-object v0, v2, v1

    .line 51
    .local v0, "period":Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;
    invoke-interface {v0, p0}, Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;->prepare(Lorg/telegram/messenger/exoplayer2/source/MediaPeriod$Callback;)V

    .line 50
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 53
    .end local v0    # "period":Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;
    :cond_15
    return-void
.end method

.method public readDiscontinuity()J
    .registers 11

    .prologue
    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v5, 0x0

    .line 143
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/source/MergingMediaPeriod;->periods:[Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;

    aget-object v4, v4, v5

    invoke-interface {v4}, Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;->readDiscontinuity()J

    move-result-wide v2

    .line 145
    .local v2, "positionUs":J
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_f
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/source/MergingMediaPeriod;->periods:[Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;

    array-length v4, v4

    if-ge v1, v4, :cond_2b

    .line 146
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/source/MergingMediaPeriod;->periods:[Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;

    aget-object v4, v4, v1

    invoke-interface {v4}, Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;->readDiscontinuity()J

    move-result-wide v6

    cmp-long v4, v6, v8

    if-eqz v4, :cond_28

    .line 147
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Child reported discontinuity"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 145
    :cond_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 151
    :cond_2b
    cmp-long v4, v2, v8

    if-eqz v4, :cond_50

    .line 152
    iget-object v6, p0, Lorg/telegram/messenger/exoplayer2/source/MergingMediaPeriod;->enabledPeriods:[Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;

    array-length v7, v6

    move v4, v5

    :goto_33
    if-ge v4, v7, :cond_50

    aget-object v0, v6, v4

    .line 153
    .local v0, "enabledPeriod":Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;
    iget-object v8, p0, Lorg/telegram/messenger/exoplayer2/source/MergingMediaPeriod;->periods:[Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;

    aget-object v8, v8, v5

    if-eq v0, v8, :cond_4d

    .line 154
    invoke-interface {v0, v2, v3}, Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;->seekToUs(J)J

    move-result-wide v8

    cmp-long v8, v8, v2

    if-eqz v8, :cond_4d

    .line 155
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Children seeked to different positions"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 152
    :cond_4d
    add-int/lit8 v4, v4, 0x1

    goto :goto_33

    .line 159
    .end local v0    # "enabledPeriod":Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;
    :cond_50
    return-wide v2
.end method

.method public seekToUs(J)J
    .registers 8
    .param p1, "positionUs"    # J

    .prologue
    .line 176
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/MergingMediaPeriod;->enabledPeriods:[Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v1, p1, p2}, Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;->seekToUs(J)J

    move-result-wide p1

    .line 178
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_a
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/MergingMediaPeriod;->enabledPeriods:[Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;

    array-length v1, v1

    if-ge v0, v1, :cond_26

    .line 179
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/MergingMediaPeriod;->enabledPeriods:[Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;

    aget-object v1, v1, v0

    invoke-interface {v1, p1, p2}, Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;->seekToUs(J)J

    move-result-wide v2

    cmp-long v1, v2, p1

    if-eqz v1, :cond_23

    .line 180
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Children seeked to different positions"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 178
    :cond_23
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 183
    :cond_26
    return-wide p1
.end method

.method public selectTracks([Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;[Z[Lorg/telegram/messenger/exoplayer2/source/SampleStream;[ZJ)J
    .registers 26
    .param p1, "selections"    # [Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;
    .param p2, "mayRetainStreamFlags"    # [Z
    .param p3, "streams"    # [Lorg/telegram/messenger/exoplayer2/source/SampleStream;
    .param p4, "streamResetFlags"    # [Z
    .param p5, "positionUs"    # J

    .prologue
    .line 71
    move-object/from16 v0, p1

    array-length v3, v0

    new-array v0, v3, [I

    move-object/from16 v17, v0

    .line 72
    .local v17, "streamChildIndices":[I
    move-object/from16 v0, p1

    array-length v3, v0

    new-array v0, v3, [I

    move-object/from16 v16, v0

    .line 73
    .local v16, "selectionChildIndices":[I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_f
    move-object/from16 v0, p1

    array-length v3, v0

    if-ge v10, v3, :cond_5c

    .line 74
    aget-object v3, p3, v10

    if-nez v3, :cond_48

    const/4 v3, -0x1

    .line 75
    :goto_19
    aput v3, v17, v10

    .line 76
    const/4 v3, -0x1

    aput v3, v16, v10

    .line 77
    aget-object v3, p1, v10

    if-eqz v3, :cond_45

    .line 78
    aget-object v3, p1, v10

    invoke-interface {v3}, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;->getTrackGroup()Lorg/telegram/messenger/exoplayer2/source/TrackGroup;

    move-result-object v18

    .line 79
    .local v18, "trackGroup":Lorg/telegram/messenger/exoplayer2/source/TrackGroup;
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_29
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/source/MergingMediaPeriod;->periods:[Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;

    array-length v3, v3

    if-ge v11, v3, :cond_45

    .line 80
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/source/MergingMediaPeriod;->periods:[Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;

    aget-object v3, v3, v11

    invoke-interface {v3}, Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;->getTrackGroups()Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;->indexOf(Lorg/telegram/messenger/exoplayer2/source/TrackGroup;)I

    move-result v3

    const/4 v5, -0x1

    if-eq v3, v5, :cond_59

    .line 81
    aput v11, v16, v10

    .line 73
    .end local v11    # "j":I
    .end local v18    # "trackGroup":Lorg/telegram/messenger/exoplayer2/source/TrackGroup;
    :cond_45
    add-int/lit8 v10, v10, 0x1

    goto :goto_f

    .line 74
    :cond_48
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/source/MergingMediaPeriod;->streamPeriodIndices:Ljava/util/IdentityHashMap;

    aget-object v5, p3, v10

    .line 75
    invoke-virtual {v3, v5}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_19

    .line 79
    .restart local v11    # "j":I
    .restart local v18    # "trackGroup":Lorg/telegram/messenger/exoplayer2/source/TrackGroup;
    :cond_59
    add-int/lit8 v11, v11, 0x1

    goto :goto_29

    .line 87
    .end local v11    # "j":I
    .end local v18    # "trackGroup":Lorg/telegram/messenger/exoplayer2/source/TrackGroup;
    :cond_5c
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/source/MergingMediaPeriod;->streamPeriodIndices:Ljava/util/IdentityHashMap;

    invoke-virtual {v3}, Ljava/util/IdentityHashMap;->clear()V

    .line 89
    move-object/from16 v0, p1

    array-length v3, v0

    new-array v12, v3, [Lorg/telegram/messenger/exoplayer2/source/SampleStream;

    .line 90
    .local v12, "newStreams":[Lorg/telegram/messenger/exoplayer2/source/SampleStream;
    move-object/from16 v0, p1

    array-length v3, v0

    new-array v6, v3, [Lorg/telegram/messenger/exoplayer2/source/SampleStream;

    .line 91
    .local v6, "childStreams":[Lorg/telegram/messenger/exoplayer2/source/SampleStream;
    move-object/from16 v0, p1

    array-length v3, v0

    new-array v4, v3, [Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;

    .line 92
    .local v4, "childSelections":[Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;
    new-instance v2, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/source/MergingMediaPeriod;->periods:[Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;

    array-length v3, v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 93
    .local v2, "enabledPeriodsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;>;"
    const/4 v10, 0x0

    :goto_7d
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/source/MergingMediaPeriod;->periods:[Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;

    array-length v3, v3

    if-ge v10, v3, :cond_109

    .line 94
    const/4 v11, 0x0

    .restart local v11    # "j":I
    :goto_85
    move-object/from16 v0, p1

    array-length v3, v0

    if-ge v11, v3, :cond_a1

    .line 95
    aget v3, v17, v11

    if-ne v3, v10, :cond_9d

    aget-object v3, p3, v11

    :goto_90
    aput-object v3, v6, v11

    .line 96
    aget v3, v16, v11

    if-ne v3, v10, :cond_9f

    aget-object v3, p1, v11

    :goto_98
    aput-object v3, v4, v11

    .line 94
    add-int/lit8 v11, v11, 0x1

    goto :goto_85

    .line 95
    :cond_9d
    const/4 v3, 0x0

    goto :goto_90

    .line 96
    :cond_9f
    const/4 v3, 0x0

    goto :goto_98

    .line 98
    :cond_a1
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/source/MergingMediaPeriod;->periods:[Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;

    aget-object v3, v3, v10

    move-object/from16 v5, p2

    move-object/from16 v7, p4

    move-wide/from16 v8, p5

    invoke-interface/range {v3 .. v9}, Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;->selectTracks([Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;[Z[Lorg/telegram/messenger/exoplayer2/source/SampleStream;[ZJ)J

    move-result-wide v14

    .line 100
    .local v14, "selectPositionUs":J
    if-nez v10, :cond_dd

    .line 101
    move-wide/from16 p5, v14

    .line 105
    :cond_b5
    const/4 v13, 0x0

    .line 106
    .local v13, "periodEnabled":Z
    const/4 v11, 0x0

    :goto_b7
    move-object/from16 v0, p1

    array-length v3, v0

    if-ge v11, v3, :cond_fa

    .line 107
    aget v3, v16, v11

    if-ne v3, v10, :cond_eb

    .line 109
    aget-object v3, v6, v11

    if-eqz v3, :cond_e9

    const/4 v3, 0x1

    :goto_c5
    invoke-static {v3}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkState(Z)V

    .line 110
    aget-object v3, v6, v11

    aput-object v3, v12, v11

    .line 111
    const/4 v13, 0x1

    .line 112
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/source/MergingMediaPeriod;->streamPeriodIndices:Ljava/util/IdentityHashMap;

    aget-object v5, v6, v11

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v5, v7}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    :cond_da
    :goto_da
    add-int/lit8 v11, v11, 0x1

    goto :goto_b7

    .line 102
    .end local v13    # "periodEnabled":Z
    :cond_dd
    cmp-long v3, v14, p5

    if-eqz v3, :cond_b5

    .line 103
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v5, "Children enabled at different positions"

    invoke-direct {v3, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 109
    .restart local v13    # "periodEnabled":Z
    :cond_e9
    const/4 v3, 0x0

    goto :goto_c5

    .line 113
    :cond_eb
    aget v3, v17, v11

    if-ne v3, v10, :cond_da

    .line 115
    aget-object v3, v6, v11

    if-nez v3, :cond_f8

    const/4 v3, 0x1

    :goto_f4
    invoke-static {v3}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkState(Z)V

    goto :goto_da

    :cond_f8
    const/4 v3, 0x0

    goto :goto_f4

    .line 118
    :cond_fa
    if-eqz v13, :cond_105

    .line 119
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/source/MergingMediaPeriod;->periods:[Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;

    aget-object v3, v3, v10

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    :cond_105
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_7d

    .line 123
    .end local v11    # "j":I
    .end local v13    # "periodEnabled":Z
    .end local v14    # "selectPositionUs":J
    :cond_109
    const/4 v3, 0x0

    const/4 v5, 0x0

    array-length v7, v12

    move-object/from16 v0, p3

    invoke-static {v12, v3, v0, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 125
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/telegram/messenger/exoplayer2/source/MergingMediaPeriod;->enabledPeriods:[Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;

    .line 126
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/source/MergingMediaPeriod;->enabledPeriods:[Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 127
    new-instance v3, Lorg/telegram/messenger/exoplayer2/source/CompositeSequenceableLoader;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/exoplayer2/source/MergingMediaPeriod;->enabledPeriods:[Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;

    invoke-direct {v3, v5}, Lorg/telegram/messenger/exoplayer2/source/CompositeSequenceableLoader;-><init>([Lorg/telegram/messenger/exoplayer2/source/SequenceableLoader;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/telegram/messenger/exoplayer2/source/MergingMediaPeriod;->sequenceableLoader:Lorg/telegram/messenger/exoplayer2/source/SequenceableLoader;

    .line 128
    return-wide p5
.end method
