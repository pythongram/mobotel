.class final Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;
.super Ljava/lang/Object;
.source "DefaultTrackOutput.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InfoQueue"
.end annotation


# static fields
.field private static final SAMPLE_CAPACITY_INCREMENT:I = 0x3e8


# instance fields
.field private absoluteReadIndex:I

.field private capacity:I

.field private encryptionKeys:[[B

.field private flags:[I

.field private formats:[Lorg/telegram/messenger/exoplayer2/Format;

.field private largestDequeuedTimestampUs:J

.field private largestQueuedTimestampUs:J

.field private offsets:[J

.field private queueSize:I

.field private relativeReadIndex:I

.field private relativeWriteIndex:I

.field private sizes:[I

.field private sourceIds:[I

.field private timesUs:[J

.field private upstreamFormat:Lorg/telegram/messenger/exoplayer2/Format;

.field private upstreamFormatRequired:Z

.field private upstreamSourceId:I


# direct methods
.method public constructor <init>()V
    .registers 5

    .prologue
    const-wide/high16 v2, -0x8000000000000000L

    .line 608
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 609
    const/16 v0, 0x3e8

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->capacity:I

    .line 610
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->capacity:I

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->sourceIds:[I

    .line 611
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->capacity:I

    new-array v0, v0, [J

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->offsets:[J

    .line 612
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->capacity:I

    new-array v0, v0, [J

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->timesUs:[J

    .line 613
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->capacity:I

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->flags:[I

    .line 614
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->capacity:I

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->sizes:[I

    .line 615
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->capacity:I

    new-array v0, v0, [[B

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->encryptionKeys:[[B

    .line 616
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->capacity:I

    new-array v0, v0, [Lorg/telegram/messenger/exoplayer2/Format;

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->formats:[Lorg/telegram/messenger/exoplayer2/Format;

    .line 617
    iput-wide v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->largestDequeuedTimestampUs:J

    .line 618
    iput-wide v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->largestQueuedTimestampUs:J

    .line 619
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->upstreamFormatRequired:Z

    .line 620
    return-void
.end method


# virtual methods
.method public declared-synchronized attemptSplice(J)Z
    .registers 8
    .param p1, "timeUs"    # J

    .prologue
    .line 911
    monitor-enter p0

    :try_start_1
    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->largestDequeuedTimestampUs:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_29

    cmp-long v1, v2, p1

    if-ltz v1, :cond_a

    .line 912
    const/4 v1, 0x0

    .line 920
    :goto_8
    monitor-exit p0

    return v1

    .line 914
    :cond_a
    :try_start_a
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->queueSize:I

    .line 915
    .local v0, "retainCount":I
    :goto_c
    if-lez v0, :cond_21

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->timesUs:[J

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeReadIndex:I

    add-int/2addr v2, v0

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->capacity:I

    rem-int/2addr v2, v3

    aget-wide v2, v1, v2

    cmp-long v1, v2, p1

    if-ltz v1, :cond_21

    .line 917
    add-int/lit8 v0, v0, -0x1

    goto :goto_c

    .line 919
    :cond_21
    iget v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->absoluteReadIndex:I

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->discardUpstreamSamples(I)J
    :try_end_27
    .catchall {:try_start_a .. :try_end_27} :catchall_29

    .line 920
    const/4 v1, 0x1

    goto :goto_8

    .line 911
    .end local v0    # "retainCount":I
    :catchall_29
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public clearSampleData()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 623
    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->absoluteReadIndex:I

    .line 624
    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeReadIndex:I

    .line 625
    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeWriteIndex:I

    .line 626
    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->queueSize:I

    .line 627
    return-void
.end method

.method public declared-synchronized commitSample(JIJI[B)V
    .registers 21
    .param p1, "timeUs"    # J
    .param p3, "sampleFlags"    # I
    .param p4, "offset"    # J
    .param p6, "size"    # I
    .param p7, "encryptionKey"    # [B

    .prologue
    .line 842
    monitor-enter p0

    :try_start_1
    iget-boolean v10, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->upstreamFormatRequired:Z

    if-nez v10, :cond_df

    const/4 v10, 0x1

    :goto_6
    invoke-static {v10}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkState(Z)V

    .line 843
    invoke-virtual {p0, p1, p2}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->commitSampleTimestamp(J)V

    .line 844
    iget-object v10, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->timesUs:[J

    iget v11, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeWriteIndex:I

    aput-wide p1, v10, v11

    .line 845
    iget-object v10, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->offsets:[J

    iget v11, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeWriteIndex:I

    aput-wide p4, v10, v11

    .line 846
    iget-object v10, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->sizes:[I

    iget v11, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeWriteIndex:I

    aput p6, v10, v11

    .line 847
    iget-object v10, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->flags:[I

    iget v11, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeWriteIndex:I

    aput p3, v10, v11

    .line 848
    iget-object v10, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->encryptionKeys:[[B

    iget v11, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeWriteIndex:I

    aput-object p7, v10, v11

    .line 849
    iget-object v10, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->formats:[Lorg/telegram/messenger/exoplayer2/Format;

    iget v11, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeWriteIndex:I

    iget-object v12, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->upstreamFormat:Lorg/telegram/messenger/exoplayer2/Format;

    aput-object v12, v10, v11

    .line 850
    iget-object v10, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->sourceIds:[I

    iget v11, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeWriteIndex:I

    iget v12, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->upstreamSourceId:I

    aput v12, v10, v11

    .line 852
    iget v10, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->queueSize:I

    add-int/lit8 v10, v10, 0x1

    iput v10, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->queueSize:I

    .line 853
    iget v10, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->queueSize:I

    iget v11, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->capacity:I

    if-ne v10, v11, :cond_e2

    .line 855
    iget v10, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->capacity:I

    add-int/lit16 v2, v10, 0x3e8

    .line 856
    .local v2, "newCapacity":I
    new-array v8, v2, [I

    .line 857
    .local v8, "newSourceIds":[I
    new-array v6, v2, [J

    .line 858
    .local v6, "newOffsets":[J
    new-array v9, v2, [J

    .line 859
    .local v9, "newTimesUs":[J
    new-array v4, v2, [I

    .line 860
    .local v4, "newFlags":[I
    new-array v7, v2, [I

    .line 861
    .local v7, "newSizes":[I
    new-array v3, v2, [[B

    .line 862
    .local v3, "newEncryptionKeys":[[B
    new-array v5, v2, [Lorg/telegram/messenger/exoplayer2/Format;

    .line 863
    .local v5, "newFormats":[Lorg/telegram/messenger/exoplayer2/Format;
    iget v10, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->capacity:I

    iget v11, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeReadIndex:I

    sub-int v1, v10, v11

    .line 864
    .local v1, "beforeWrap":I
    iget-object v10, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->offsets:[J

    iget v11, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeReadIndex:I

    const/4 v12, 0x0

    invoke-static {v10, v11, v6, v12, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 865
    iget-object v10, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->timesUs:[J

    iget v11, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeReadIndex:I

    const/4 v12, 0x0

    invoke-static {v10, v11, v9, v12, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 866
    iget-object v10, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->flags:[I

    iget v11, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeReadIndex:I

    const/4 v12, 0x0

    invoke-static {v10, v11, v4, v12, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 867
    iget-object v10, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->sizes:[I

    iget v11, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeReadIndex:I

    const/4 v12, 0x0

    invoke-static {v10, v11, v7, v12, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 868
    iget-object v10, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->encryptionKeys:[[B

    iget v11, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeReadIndex:I

    const/4 v12, 0x0

    invoke-static {v10, v11, v3, v12, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 869
    iget-object v10, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->formats:[Lorg/telegram/messenger/exoplayer2/Format;

    iget v11, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeReadIndex:I

    const/4 v12, 0x0

    invoke-static {v10, v11, v5, v12, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 870
    iget-object v10, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->sourceIds:[I

    iget v11, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeReadIndex:I

    const/4 v12, 0x0

    invoke-static {v10, v11, v8, v12, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 871
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeReadIndex:I

    .line 872
    .local v0, "afterWrap":I
    iget-object v10, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->offsets:[J

    const/4 v11, 0x0

    invoke-static {v10, v11, v6, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 873
    iget-object v10, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->timesUs:[J

    const/4 v11, 0x0

    invoke-static {v10, v11, v9, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 874
    iget-object v10, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->flags:[I

    const/4 v11, 0x0

    invoke-static {v10, v11, v4, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 875
    iget-object v10, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->sizes:[I

    const/4 v11, 0x0

    invoke-static {v10, v11, v7, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 876
    iget-object v10, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->encryptionKeys:[[B

    const/4 v11, 0x0

    invoke-static {v10, v11, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 877
    iget-object v10, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->formats:[Lorg/telegram/messenger/exoplayer2/Format;

    const/4 v11, 0x0

    invoke-static {v10, v11, v5, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 878
    iget-object v10, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->sourceIds:[I

    const/4 v11, 0x0

    invoke-static {v10, v11, v8, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 879
    iput-object v6, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->offsets:[J

    .line 880
    iput-object v9, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->timesUs:[J

    .line 881
    iput-object v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->flags:[I

    .line 882
    iput-object v7, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->sizes:[I

    .line 883
    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->encryptionKeys:[[B

    .line 884
    iput-object v5, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->formats:[Lorg/telegram/messenger/exoplayer2/Format;

    .line 885
    iput-object v8, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->sourceIds:[I

    .line 886
    const/4 v10, 0x0

    iput v10, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeReadIndex:I

    .line 887
    iget v10, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->capacity:I

    iput v10, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeWriteIndex:I

    .line 888
    iget v10, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->capacity:I

    iput v10, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->queueSize:I

    .line 889
    iput v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->capacity:I
    :try_end_dd
    .catchall {:try_start_1 .. :try_end_dd} :catchall_f2

    .line 897
    .end local v0    # "afterWrap":I
    .end local v1    # "beforeWrap":I
    .end local v2    # "newCapacity":I
    .end local v3    # "newEncryptionKeys":[[B
    .end local v4    # "newFlags":[I
    .end local v5    # "newFormats":[Lorg/telegram/messenger/exoplayer2/Format;
    .end local v6    # "newOffsets":[J
    .end local v7    # "newSizes":[I
    .end local v8    # "newSourceIds":[I
    .end local v9    # "newTimesUs":[J
    :cond_dd
    :goto_dd
    monitor-exit p0

    return-void

    .line 842
    :cond_df
    const/4 v10, 0x0

    goto/16 :goto_6

    .line 891
    :cond_e2
    :try_start_e2
    iget v10, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeWriteIndex:I

    add-int/lit8 v10, v10, 0x1

    iput v10, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeWriteIndex:I

    .line 892
    iget v10, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeWriteIndex:I

    iget v11, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->capacity:I

    if-ne v10, v11, :cond_dd

    .line 894
    const/4 v10, 0x0

    iput v10, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeWriteIndex:I
    :try_end_f1
    .catchall {:try_start_e2 .. :try_end_f1} :catchall_f2

    goto :goto_dd

    .line 842
    :catchall_f2
    move-exception v10

    monitor-exit p0

    throw v10
.end method

.method public declared-synchronized commitSampleTimestamp(J)V
    .registers 6
    .param p1, "timeUs"    # J

    .prologue
    .line 900
    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->largestQueuedTimestampUs:J

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->largestQueuedTimestampUs:J
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 901
    monitor-exit p0

    return-void

    .line 900
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public discardUpstreamSamples(I)J
    .registers 10
    .param p1, "discardFromIndex"    # I

    .prologue
    .line 650
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->getWriteIndex()I

    move-result v4

    sub-int v0, v4, p1

    .line 651
    .local v0, "discardCount":I
    if-ltz v0, :cond_19

    iget v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->queueSize:I

    if-gt v0, v4, :cond_19

    const/4 v4, 0x1

    :goto_d
    invoke-static {v4}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 653
    if-nez v0, :cond_31

    .line 654
    iget v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->absoluteReadIndex:I

    if-nez v4, :cond_1b

    .line 656
    const-wide/16 v4, 0x0

    .line 674
    :goto_18
    return-wide v4

    .line 651
    :cond_19
    const/4 v4, 0x0

    goto :goto_d

    .line 658
    :cond_1b
    iget v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeWriteIndex:I

    if-nez v4, :cond_2e

    iget v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->capacity:I

    :goto_21
    add-int/lit8 v2, v4, -0x1

    .line 659
    .local v2, "lastWriteIndex":I
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->offsets:[J

    aget-wide v4, v4, v2

    iget-object v6, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->sizes:[I

    aget v6, v6, v2

    int-to-long v6, v6

    add-long/2addr v4, v6

    goto :goto_18

    .line 658
    .end local v2    # "lastWriteIndex":I
    :cond_2e
    iget v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeWriteIndex:I

    goto :goto_21

    .line 662
    :cond_31
    iget v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->queueSize:I

    sub-int/2addr v4, v0

    iput v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->queueSize:I

    .line 663
    iget v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeWriteIndex:I

    iget v5, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->capacity:I

    add-int/2addr v4, v5

    sub-int/2addr v4, v0

    iget v5, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->capacity:I

    rem-int/2addr v4, v5

    iput v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeWriteIndex:I

    .line 666
    const-wide/high16 v4, -0x8000000000000000L

    iput-wide v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->largestQueuedTimestampUs:J

    .line 667
    iget v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->queueSize:I

    add-int/lit8 v1, v4, -0x1

    .local v1, "i":I
    :goto_49
    if-ltz v1, :cond_66

    .line 668
    iget v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeReadIndex:I

    add-int/2addr v4, v1

    iget v5, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->capacity:I

    rem-int v3, v4, v5

    .line 669
    .local v3, "sampleIndex":I
    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->largestQueuedTimestampUs:J

    iget-object v6, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->timesUs:[J

    aget-wide v6, v6, v3

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iput-wide v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->largestQueuedTimestampUs:J

    .line 670
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->flags:[I

    aget v4, v4, v3

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_6d

    .line 674
    .end local v3    # "sampleIndex":I
    :cond_66
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->offsets:[J

    iget v5, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeWriteIndex:I

    aget-wide v4, v4, v5

    goto :goto_18

    .line 667
    .restart local v3    # "sampleIndex":I
    :cond_6d
    add-int/lit8 v1, v1, -0x1

    goto :goto_49
.end method

.method public declared-synchronized format(Lorg/telegram/messenger/exoplayer2/Format;)Z
    .registers 5
    .param p1, "format"    # Lorg/telegram/messenger/exoplayer2/Format;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 826
    monitor-enter p0

    if-nez p1, :cond_a

    .line 827
    const/4 v1, 0x1

    :try_start_6
    iput-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->upstreamFormatRequired:Z
    :try_end_8
    .catchall {:try_start_6 .. :try_end_8} :catchall_19

    .line 836
    :cond_8
    :goto_8
    monitor-exit p0

    return v0

    .line 830
    :cond_a
    const/4 v2, 0x0

    :try_start_b
    iput-boolean v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->upstreamFormatRequired:Z

    .line 831
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->upstreamFormat:Lorg/telegram/messenger/exoplayer2/Format;

    invoke-static {p1, v2}, Lorg/telegram/messenger/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 835
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->upstreamFormat:Lorg/telegram/messenger/exoplayer2/Format;
    :try_end_17
    .catchall {:try_start_b .. :try_end_17} :catchall_19

    move v0, v1

    .line 836
    goto :goto_8

    .line 826
    :catchall_19
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLargestQueuedTimestampUs()J
    .registers 5

    .prologue
    .line 723
    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->largestDequeuedTimestampUs:J

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->largestQueuedTimestampUs:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_b

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getReadIndex()I
    .registers 2

    .prologue
    .line 687
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->absoluteReadIndex:I

    return v0
.end method

.method public declared-synchronized getUpstreamFormat()Lorg/telegram/messenger/exoplayer2/Format;
    .registers 2

    .prologue
    .line 709
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->upstreamFormatRequired:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_b

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    :goto_6
    monitor-exit p0

    return-object v0

    :cond_8
    :try_start_8
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->upstreamFormat:Lorg/telegram/messenger/exoplayer2/Format;
    :try_end_a
    .catchall {:try_start_8 .. :try_end_a} :catchall_b

    goto :goto_6

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getWriteIndex()I
    .registers 3

    .prologue
    .line 640
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->absoluteReadIndex:I

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->queueSize:I

    add-int/2addr v0, v1

    return v0
.end method

.method public declared-synchronized isEmpty()Z
    .registers 2

    .prologue
    .line 702
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->queueSize:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_a

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_6
    monitor-exit p0

    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_6

    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public peekSourceId()I
    .registers 3

    .prologue
    .line 695
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->queueSize:I

    if-nez v0, :cond_7

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->upstreamSourceId:I

    :goto_6
    return v0

    :cond_7
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->sourceIds:[I

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeReadIndex:I

    aget v0, v0, v1

    goto :goto_6
.end method

.method public declared-synchronized readData(Lorg/telegram/messenger/exoplayer2/FormatHolder;Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;Lorg/telegram/messenger/exoplayer2/Format;Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$BufferExtrasHolder;)I
    .registers 9
    .param p1, "formatHolder"    # Lorg/telegram/messenger/exoplayer2/FormatHolder;
    .param p2, "buffer"    # Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;
    .param p3, "downstreamFormat"    # Lorg/telegram/messenger/exoplayer2/Format;
    .param p4, "extrasHolder"    # Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$BufferExtrasHolder;

    .prologue
    const/4 v0, -0x5

    .line 744
    monitor-enter p0

    :try_start_2
    iget v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->queueSize:I

    if-nez v1, :cond_16

    .line 745
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->upstreamFormat:Lorg/telegram/messenger/exoplayer2/Format;

    if-eqz v1, :cond_14

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->upstreamFormat:Lorg/telegram/messenger/exoplayer2/Format;

    if-eq v1, p3, :cond_14

    .line 746
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->upstreamFormat:Lorg/telegram/messenger/exoplayer2/Format;

    iput-object v1, p1, Lorg/telegram/messenger/exoplayer2/FormatHolder;->format:Lorg/telegram/messenger/exoplayer2/Format;
    :try_end_12
    .catchall {:try_start_2 .. :try_end_12} :catchall_27

    .line 774
    :goto_12
    monitor-exit p0

    return v0

    .line 749
    :cond_14
    const/4 v0, -0x3

    goto :goto_12

    .line 752
    :cond_16
    :try_start_16
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->formats:[Lorg/telegram/messenger/exoplayer2/Format;

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeReadIndex:I

    aget-object v1, v1, v2

    if-eq v1, p3, :cond_2a

    .line 753
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->formats:[Lorg/telegram/messenger/exoplayer2/Format;

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeReadIndex:I

    aget-object v1, v1, v2

    iput-object v1, p1, Lorg/telegram/messenger/exoplayer2/FormatHolder;->format:Lorg/telegram/messenger/exoplayer2/Format;
    :try_end_26
    .catchall {:try_start_16 .. :try_end_26} :catchall_27

    goto :goto_12

    .line 744
    :catchall_27
    move-exception v0

    monitor-exit p0

    throw v0

    .line 757
    :cond_2a
    :try_start_2a
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->timesUs:[J

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeReadIndex:I

    aget-wide v0, v0, v1

    iput-wide v0, p2, Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;->timeUs:J

    .line 758
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->flags:[I

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeReadIndex:I

    aget v0, v0, v1

    invoke-virtual {p2, v0}, Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;->setFlags(I)V

    .line 759
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->sizes:[I

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeReadIndex:I

    aget v0, v0, v1

    iput v0, p4, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$BufferExtrasHolder;->size:I

    .line 760
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->offsets:[J

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeReadIndex:I

    aget-wide v0, v0, v1

    iput-wide v0, p4, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$BufferExtrasHolder;->offset:J

    .line 761
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->encryptionKeys:[[B

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeReadIndex:I

    aget-object v0, v0, v1

    iput-object v0, p4, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$BufferExtrasHolder;->encryptionKeyId:[B

    .line 763
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->largestDequeuedTimestampUs:J

    iget-wide v2, p2, Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;->timeUs:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->largestDequeuedTimestampUs:J

    .line 764
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->queueSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->queueSize:I

    .line 765
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeReadIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeReadIndex:I

    .line 766
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->absoluteReadIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->absoluteReadIndex:I

    .line 767
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeReadIndex:I

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->capacity:I

    if-ne v0, v1, :cond_78

    .line 769
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeReadIndex:I

    .line 772
    :cond_78
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->queueSize:I

    if-lez v0, :cond_86

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->offsets:[J

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeReadIndex:I

    aget-wide v0, v0, v1

    :goto_82
    iput-wide v0, p4, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$BufferExtrasHolder;->nextOffset:J

    .line 774
    const/4 v0, -0x4

    goto :goto_12

    .line 772
    :cond_86
    iget-wide v0, p4, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$BufferExtrasHolder;->offset:J

    iget v2, p4, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$BufferExtrasHolder;->size:I
    :try_end_8a
    .catchall {:try_start_2a .. :try_end_8a} :catchall_27

    int-to-long v2, v2

    add-long/2addr v0, v2

    goto :goto_82
.end method

.method public resetLargestParsedTimestamps()V
    .registers 3

    .prologue
    const-wide/high16 v0, -0x8000000000000000L

    .line 632
    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->largestDequeuedTimestampUs:J

    .line 633
    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->largestQueuedTimestampUs:J

    .line 634
    return-void
.end method

.method public declared-synchronized skipToKeyframeBefore(J)J
    .registers 14
    .param p1, "timeUs"    # J

    .prologue
    const-wide/16 v6, -0x1

    .line 785
    monitor-enter p0

    :try_start_3
    iget v8, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->queueSize:I

    if-eqz v8, :cond_11

    iget-object v8, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->timesUs:[J

    iget v9, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeReadIndex:I

    aget-wide v8, v8, v9
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_64

    cmp-long v8, p1, v8

    if-gez v8, :cond_13

    .line 820
    :cond_11
    :goto_11
    monitor-exit p0

    return-wide v6

    .line 789
    :cond_13
    :try_start_13
    iget v8, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeWriteIndex:I

    if-nez v8, :cond_4f

    iget v8, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->capacity:I

    :goto_19
    add-int/lit8 v2, v8, -0x1

    .line 790
    .local v2, "lastWriteIndex":I
    iget-object v8, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->timesUs:[J

    aget-wide v0, v8, v2

    .line 791
    .local v0, "lastTimeUs":J
    cmp-long v8, p1, v0

    if-gtz v8, :cond_11

    .line 798
    const/4 v3, 0x0

    .line 799
    .local v3, "sampleCount":I
    const/4 v4, -0x1

    .line 800
    .local v4, "sampleCountToKeyframe":I
    iget v5, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeReadIndex:I

    .line 801
    .local v5, "searchIndex":I
    :goto_27
    iget v8, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeWriteIndex:I

    if-eq v5, v8, :cond_33

    .line 802
    iget-object v8, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->timesUs:[J

    aget-wide v8, v8, v5

    cmp-long v8, v8, p1

    if-lez v8, :cond_52

    .line 813
    :cond_33
    const/4 v8, -0x1

    if-eq v4, v8, :cond_11

    .line 817
    iget v6, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->queueSize:I

    sub-int/2addr v6, v4

    iput v6, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->queueSize:I

    .line 818
    iget v6, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeReadIndex:I

    add-int/2addr v6, v4

    iget v7, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->capacity:I

    rem-int/2addr v6, v7

    iput v6, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeReadIndex:I

    .line 819
    iget v6, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->absoluteReadIndex:I

    add-int/2addr v6, v4

    iput v6, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->absoluteReadIndex:I

    .line 820
    iget-object v6, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->offsets:[J

    iget v7, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeReadIndex:I

    aget-wide v6, v6, v7

    goto :goto_11

    .line 789
    .end local v0    # "lastTimeUs":J
    .end local v2    # "lastWriteIndex":I
    .end local v3    # "sampleCount":I
    .end local v4    # "sampleCountToKeyframe":I
    .end local v5    # "searchIndex":I
    :cond_4f
    iget v8, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeWriteIndex:I

    goto :goto_19

    .line 805
    .restart local v0    # "lastTimeUs":J
    .restart local v2    # "lastWriteIndex":I
    .restart local v3    # "sampleCount":I
    .restart local v4    # "sampleCountToKeyframe":I
    .restart local v5    # "searchIndex":I
    :cond_52
    iget-object v8, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->flags:[I

    aget v8, v8, v5

    and-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_5b

    .line 807
    move v4, v3

    .line 809
    :cond_5b
    add-int/lit8 v8, v5, 0x1

    iget v9, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->capacity:I

    rem-int v5, v8, v9
    :try_end_61
    .catchall {:try_start_13 .. :try_end_61} :catchall_64

    .line 810
    add-int/lit8 v3, v3, 0x1

    goto :goto_27

    .line 785
    .end local v0    # "lastTimeUs":J
    .end local v2    # "lastWriteIndex":I
    .end local v3    # "sampleCount":I
    .end local v4    # "sampleCountToKeyframe":I
    .end local v5    # "searchIndex":I
    :catchall_64
    move-exception v6

    monitor-exit p0

    throw v6
.end method

.method public sourceId(I)V
    .registers 2
    .param p1, "sourceId"    # I

    .prologue
    .line 678
    iput p1, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->upstreamSourceId:I

    .line 679
    return-void
.end method
