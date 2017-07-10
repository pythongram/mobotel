.class Lokhttp3/internal/framed/FramedConnection$Reader;
.super Lokhttp3/internal/NamedRunnable;
.source "FramedConnection.java"

# interfaces
.implements Lokhttp3/internal/framed/FrameReader$Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/framed/FramedConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Reader"
.end annotation


# instance fields
.field final frameReader:Lokhttp3/internal/framed/FrameReader;

.field final synthetic this$0:Lokhttp3/internal/framed/FramedConnection;


# direct methods
.method private constructor <init>(Lokhttp3/internal/framed/FramedConnection;Lokhttp3/internal/framed/FrameReader;)V
    .registers 7
    .param p1, "this$0"    # Lokhttp3/internal/framed/FramedConnection;
    .param p2, "frameReader"    # Lokhttp3/internal/framed/FrameReader;

    .prologue
    .line 600
    iput-object p1, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->this$0:Lokhttp3/internal/framed/FramedConnection;

    .line 601
    const-string v0, "OkHttp %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    # getter for: Lokhttp3/internal/framed/FramedConnection;->hostname:Ljava/lang/String;
    invoke-static {p1}, Lokhttp3/internal/framed/FramedConnection;->access$1100(Lokhttp3/internal/framed/FramedConnection;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lokhttp3/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 602
    iput-object p2, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->frameReader:Lokhttp3/internal/framed/FrameReader;

    .line 603
    return-void
.end method

.method synthetic constructor <init>(Lokhttp3/internal/framed/FramedConnection;Lokhttp3/internal/framed/FrameReader;Lokhttp3/internal/framed/FramedConnection$1;)V
    .registers 4
    .param p1, "x0"    # Lokhttp3/internal/framed/FramedConnection;
    .param p2, "x1"    # Lokhttp3/internal/framed/FrameReader;
    .param p3, "x2"    # Lokhttp3/internal/framed/FramedConnection$1;

    .prologue
    .line 597
    invoke-direct {p0, p1, p2}, Lokhttp3/internal/framed/FramedConnection$Reader;-><init>(Lokhttp3/internal/framed/FramedConnection;Lokhttp3/internal/framed/FrameReader;)V

    return-void
.end method

.method private ackSettingsLater(Lokhttp3/internal/framed/Settings;)V
    .registers 8
    .param p1, "peerSettings"    # Lokhttp3/internal/framed/Settings;

    .prologue
    .line 755
    # getter for: Lokhttp3/internal/framed/FramedConnection;->executor:Ljava/util/concurrent/ExecutorService;
    invoke-static {}, Lokhttp3/internal/framed/FramedConnection;->access$2100()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lokhttp3/internal/framed/FramedConnection$Reader$3;

    const-string v2, "OkHttp %s ACK Settings"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->this$0:Lokhttp3/internal/framed/FramedConnection;

    # getter for: Lokhttp3/internal/framed/FramedConnection;->hostname:Ljava/lang/String;
    invoke-static {v5}, Lokhttp3/internal/framed/FramedConnection;->access$1100(Lokhttp3/internal/framed/FramedConnection;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-direct {v1, p0, v2, v3, p1}, Lokhttp3/internal/framed/FramedConnection$Reader$3;-><init>(Lokhttp3/internal/framed/FramedConnection$Reader;Ljava/lang/String;[Ljava/lang/Object;Lokhttp3/internal/framed/Settings;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 763
    return-void
.end method


# virtual methods
.method public ackSettings()V
    .registers 1

    .prologue
    .line 767
    return-void
.end method

.method public alternateService(ILjava/lang/String;Lokio/ByteString;Ljava/lang/String;IJ)V
    .registers 8
    .param p1, "streamId"    # I
    .param p2, "origin"    # Ljava/lang/String;
    .param p3, "protocol"    # Lokio/ByteString;
    .param p4, "host"    # Ljava/lang/String;
    .param p5, "port"    # I
    .param p6, "maxAge"    # J

    .prologue
    .line 830
    return-void
.end method

.method public data(ZILokio/BufferedSource;I)V
    .registers 9
    .param p1, "inFinished"    # Z
    .param p2, "streamId"    # I
    .param p3, "source"    # Lokio/BufferedSource;
    .param p4, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 630
    iget-object v1, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->this$0:Lokhttp3/internal/framed/FramedConnection;

    # invokes: Lokhttp3/internal/framed/FramedConnection;->pushedStream(I)Z
    invoke-static {v1, p2}, Lokhttp3/internal/framed/FramedConnection;->access$1300(Lokhttp3/internal/framed/FramedConnection;I)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 631
    iget-object v1, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->this$0:Lokhttp3/internal/framed/FramedConnection;

    # invokes: Lokhttp3/internal/framed/FramedConnection;->pushDataLater(ILokio/BufferedSource;IZ)V
    invoke-static {v1, p2, p3, p4, p1}, Lokhttp3/internal/framed/FramedConnection;->access$1400(Lokhttp3/internal/framed/FramedConnection;ILokio/BufferedSource;IZ)V

    .line 644
    :cond_d
    :goto_d
    return-void

    .line 634
    :cond_e
    iget-object v1, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->this$0:Lokhttp3/internal/framed/FramedConnection;

    invoke-virtual {v1, p2}, Lokhttp3/internal/framed/FramedConnection;->getStream(I)Lokhttp3/internal/framed/FramedStream;

    move-result-object v0

    .line 635
    .local v0, "dataStream":Lokhttp3/internal/framed/FramedStream;
    if-nez v0, :cond_22

    .line 636
    iget-object v1, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->this$0:Lokhttp3/internal/framed/FramedConnection;

    sget-object v2, Lokhttp3/internal/framed/ErrorCode;->INVALID_STREAM:Lokhttp3/internal/framed/ErrorCode;

    invoke-virtual {v1, p2, v2}, Lokhttp3/internal/framed/FramedConnection;->writeSynResetLater(ILokhttp3/internal/framed/ErrorCode;)V

    .line 637
    int-to-long v2, p4

    invoke-interface {p3, v2, v3}, Lokio/BufferedSource;->skip(J)V

    goto :goto_d

    .line 640
    :cond_22
    invoke-virtual {v0, p3, p4}, Lokhttp3/internal/framed/FramedStream;->receiveData(Lokio/BufferedSource;I)V

    .line 641
    if-eqz p1, :cond_d

    .line 642
    invoke-virtual {v0}, Lokhttp3/internal/framed/FramedStream;->receiveFin()V

    goto :goto_d
.end method

.method protected execute()V
    .registers 6

    .prologue
    .line 606
    sget-object v0, Lokhttp3/internal/framed/ErrorCode;->INTERNAL_ERROR:Lokhttp3/internal/framed/ErrorCode;

    .line 607
    .local v0, "connectionErrorCode":Lokhttp3/internal/framed/ErrorCode;
    sget-object v2, Lokhttp3/internal/framed/ErrorCode;->INTERNAL_ERROR:Lokhttp3/internal/framed/ErrorCode;

    .line 609
    .local v2, "streamErrorCode":Lokhttp3/internal/framed/ErrorCode;
    :try_start_4
    iget-object v3, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->this$0:Lokhttp3/internal/framed/FramedConnection;

    iget-boolean v3, v3, Lokhttp3/internal/framed/FramedConnection;->client:Z

    if-nez v3, :cond_f

    .line 610
    iget-object v3, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->frameReader:Lokhttp3/internal/framed/FrameReader;

    invoke-interface {v3}, Lokhttp3/internal/framed/FrameReader;->readConnectionPreface()V

    .line 612
    :cond_f
    iget-object v3, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->frameReader:Lokhttp3/internal/framed/FrameReader;

    invoke-interface {v3, p0}, Lokhttp3/internal/framed/FrameReader;->nextFrame(Lokhttp3/internal/framed/FrameReader$Handler;)Z

    move-result v3

    if-nez v3, :cond_f

    .line 614
    sget-object v0, Lokhttp3/internal/framed/ErrorCode;->NO_ERROR:Lokhttp3/internal/framed/ErrorCode;

    .line 615
    sget-object v2, Lokhttp3/internal/framed/ErrorCode;->CANCEL:Lokhttp3/internal/framed/ErrorCode;
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_1b} :catch_26
    .catchall {:try_start_4 .. :try_end_1b} :catchall_36

    .line 621
    :try_start_1b
    iget-object v3, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->this$0:Lokhttp3/internal/framed/FramedConnection;

    # invokes: Lokhttp3/internal/framed/FramedConnection;->close(Lokhttp3/internal/framed/ErrorCode;Lokhttp3/internal/framed/ErrorCode;)V
    invoke-static {v3, v0, v2}, Lokhttp3/internal/framed/FramedConnection;->access$1200(Lokhttp3/internal/framed/FramedConnection;Lokhttp3/internal/framed/ErrorCode;Lokhttp3/internal/framed/ErrorCode;)V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_20} :catch_46

    .line 624
    :goto_20
    iget-object v3, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->frameReader:Lokhttp3/internal/framed/FrameReader;

    invoke-static {v3}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 626
    :goto_25
    return-void

    .line 616
    :catch_26
    move-exception v1

    .line 617
    .local v1, "e":Ljava/io/IOException;
    :try_start_27
    sget-object v0, Lokhttp3/internal/framed/ErrorCode;->PROTOCOL_ERROR:Lokhttp3/internal/framed/ErrorCode;

    .line 618
    sget-object v2, Lokhttp3/internal/framed/ErrorCode;->PROTOCOL_ERROR:Lokhttp3/internal/framed/ErrorCode;
    :try_end_2b
    .catchall {:try_start_27 .. :try_end_2b} :catchall_36

    .line 621
    :try_start_2b
    iget-object v3, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->this$0:Lokhttp3/internal/framed/FramedConnection;

    # invokes: Lokhttp3/internal/framed/FramedConnection;->close(Lokhttp3/internal/framed/ErrorCode;Lokhttp3/internal/framed/ErrorCode;)V
    invoke-static {v3, v0, v2}, Lokhttp3/internal/framed/FramedConnection;->access$1200(Lokhttp3/internal/framed/FramedConnection;Lokhttp3/internal/framed/ErrorCode;Lokhttp3/internal/framed/ErrorCode;)V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_30} :catch_44

    .line 624
    :goto_30
    iget-object v3, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->frameReader:Lokhttp3/internal/framed/FrameReader;

    invoke-static {v3}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_25

    .line 620
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_36
    move-exception v3

    .line 621
    :try_start_37
    iget-object v4, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->this$0:Lokhttp3/internal/framed/FramedConnection;

    # invokes: Lokhttp3/internal/framed/FramedConnection;->close(Lokhttp3/internal/framed/ErrorCode;Lokhttp3/internal/framed/ErrorCode;)V
    invoke-static {v4, v0, v2}, Lokhttp3/internal/framed/FramedConnection;->access$1200(Lokhttp3/internal/framed/FramedConnection;Lokhttp3/internal/framed/ErrorCode;Lokhttp3/internal/framed/ErrorCode;)V
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_3c} :catch_42

    .line 624
    :goto_3c
    iget-object v4, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->frameReader:Lokhttp3/internal/framed/FrameReader;

    invoke-static {v4}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    throw v3

    .line 622
    :catch_42
    move-exception v4

    goto :goto_3c

    .restart local v1    # "e":Ljava/io/IOException;
    :catch_44
    move-exception v3

    goto :goto_30

    .end local v1    # "e":Ljava/io/IOException;
    :catch_46
    move-exception v3

    goto :goto_20
.end method

.method public goAway(ILokhttp3/internal/framed/ErrorCode;Lokio/ByteString;)V
    .registers 10
    .param p1, "lastGoodStreamId"    # I
    .param p2, "errorCode"    # Lokhttp3/internal/framed/ErrorCode;
    .param p3, "debugData"    # Lokio/ByteString;

    .prologue
    .line 782
    invoke-virtual {p3}, Lokio/ByteString;->size()I

    move-result v2

    if-lez v2, :cond_6

    .line 787
    :cond_6
    iget-object v3, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->this$0:Lokhttp3/internal/framed/FramedConnection;

    monitor-enter v3

    .line 788
    :try_start_9
    iget-object v2, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->this$0:Lokhttp3/internal/framed/FramedConnection;

    # getter for: Lokhttp3/internal/framed/FramedConnection;->streams:Ljava/util/Map;
    invoke-static {v2}, Lokhttp3/internal/framed/FramedConnection;->access$1900(Lokhttp3/internal/framed/FramedConnection;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    iget-object v4, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->this$0:Lokhttp3/internal/framed/FramedConnection;

    # getter for: Lokhttp3/internal/framed/FramedConnection;->streams:Ljava/util/Map;
    invoke-static {v4}, Lokhttp3/internal/framed/FramedConnection;->access$1900(Lokhttp3/internal/framed/FramedConnection;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    new-array v4, v4, [Lokhttp3/internal/framed/FramedStream;

    invoke-interface {v2, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lokhttp3/internal/framed/FramedStream;

    .line 789
    .local v1, "streamsCopy":[Lokhttp3/internal/framed/FramedStream;
    iget-object v2, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->this$0:Lokhttp3/internal/framed/FramedConnection;

    const/4 v4, 0x1

    # setter for: Lokhttp3/internal/framed/FramedConnection;->shutdown:Z
    invoke-static {v2, v4}, Lokhttp3/internal/framed/FramedConnection;->access$1602(Lokhttp3/internal/framed/FramedConnection;Z)Z

    .line 790
    monitor-exit v3
    :try_end_2c
    .catchall {:try_start_9 .. :try_end_2c} :catchall_4f

    .line 793
    array-length v3, v1

    const/4 v2, 0x0

    :goto_2e
    if-ge v2, v3, :cond_52

    aget-object v0, v1, v2

    .line 794
    .local v0, "framedStream":Lokhttp3/internal/framed/FramedStream;
    invoke-virtual {v0}, Lokhttp3/internal/framed/FramedStream;->getId()I

    move-result v4

    if-le v4, p1, :cond_4c

    invoke-virtual {v0}, Lokhttp3/internal/framed/FramedStream;->isLocallyInitiated()Z

    move-result v4

    if-eqz v4, :cond_4c

    .line 795
    sget-object v4, Lokhttp3/internal/framed/ErrorCode;->REFUSED_STREAM:Lokhttp3/internal/framed/ErrorCode;

    invoke-virtual {v0, v4}, Lokhttp3/internal/framed/FramedStream;->receiveRstStream(Lokhttp3/internal/framed/ErrorCode;)V

    .line 796
    iget-object v4, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->this$0:Lokhttp3/internal/framed/FramedConnection;

    invoke-virtual {v0}, Lokhttp3/internal/framed/FramedStream;->getId()I

    move-result v5

    invoke-virtual {v4, v5}, Lokhttp3/internal/framed/FramedConnection;->removeStream(I)Lokhttp3/internal/framed/FramedStream;

    .line 793
    :cond_4c
    add-int/lit8 v2, v2, 0x1

    goto :goto_2e

    .line 790
    .end local v0    # "framedStream":Lokhttp3/internal/framed/FramedStream;
    .end local v1    # "streamsCopy":[Lokhttp3/internal/framed/FramedStream;
    :catchall_4f
    move-exception v2

    :try_start_50
    monitor-exit v3
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_4f

    throw v2

    .line 799
    .restart local v1    # "streamsCopy":[Lokhttp3/internal/framed/FramedStream;
    :cond_52
    return-void
.end method

.method public headers(ZZIILjava/util/List;Lokhttp3/internal/framed/HeadersMode;)V
    .registers 16
    .param p1, "outFinished"    # Z
    .param p2, "inFinished"    # Z
    .param p3, "streamId"    # I
    .param p4, "associatedStreamId"    # I
    .param p6, "headersMode"    # Lokhttp3/internal/framed/HeadersMode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZII",
            "Ljava/util/List",
            "<",
            "Lokhttp3/internal/framed/Header;",
            ">;",
            "Lokhttp3/internal/framed/HeadersMode;",
            ")V"
        }
    .end annotation

    .prologue
    .line 648
    .local p5, "headerBlock":Ljava/util/List;, "Ljava/util/List<Lokhttp3/internal/framed/Header;>;"
    iget-object v1, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->this$0:Lokhttp3/internal/framed/FramedConnection;

    # invokes: Lokhttp3/internal/framed/FramedConnection;->pushedStream(I)Z
    invoke-static {v1, p3}, Lokhttp3/internal/framed/FramedConnection;->access$1300(Lokhttp3/internal/framed/FramedConnection;I)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 649
    iget-object v1, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->this$0:Lokhttp3/internal/framed/FramedConnection;

    # invokes: Lokhttp3/internal/framed/FramedConnection;->pushHeadersLater(ILjava/util/List;Z)V
    invoke-static {v1, p3, p5, p2}, Lokhttp3/internal/framed/FramedConnection;->access$1500(Lokhttp3/internal/framed/FramedConnection;ILjava/util/List;Z)V

    .line 705
    :cond_d
    :goto_d
    return-void

    .line 653
    :cond_e
    iget-object v7, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->this$0:Lokhttp3/internal/framed/FramedConnection;

    monitor-enter v7

    .line 655
    :try_start_11
    iget-object v1, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->this$0:Lokhttp3/internal/framed/FramedConnection;

    # getter for: Lokhttp3/internal/framed/FramedConnection;->shutdown:Z
    invoke-static {v1}, Lokhttp3/internal/framed/FramedConnection;->access$1600(Lokhttp3/internal/framed/FramedConnection;)Z

    move-result v1

    if-eqz v1, :cond_1e

    monitor-exit v7

    goto :goto_d

    .line 693
    :catchall_1b
    move-exception v1

    monitor-exit v7
    :try_end_1d
    .catchall {:try_start_11 .. :try_end_1d} :catchall_1b

    throw v1

    .line 657
    :cond_1e
    :try_start_1e
    iget-object v1, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->this$0:Lokhttp3/internal/framed/FramedConnection;

    invoke-virtual {v1, p3}, Lokhttp3/internal/framed/FramedConnection;->getStream(I)Lokhttp3/internal/framed/FramedStream;

    move-result-object v6

    .line 659
    .local v6, "stream":Lokhttp3/internal/framed/FramedStream;
    if-nez v6, :cond_8d

    .line 661
    invoke-virtual {p6}, Lokhttp3/internal/framed/HeadersMode;->failIfStreamAbsent()Z

    move-result v1

    if-eqz v1, :cond_35

    .line 662
    iget-object v1, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->this$0:Lokhttp3/internal/framed/FramedConnection;

    sget-object v2, Lokhttp3/internal/framed/ErrorCode;->INVALID_STREAM:Lokhttp3/internal/framed/ErrorCode;

    invoke-virtual {v1, p3, v2}, Lokhttp3/internal/framed/FramedConnection;->writeSynResetLater(ILokhttp3/internal/framed/ErrorCode;)V

    .line 663
    monitor-exit v7

    goto :goto_d

    .line 667
    :cond_35
    iget-object v1, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->this$0:Lokhttp3/internal/framed/FramedConnection;

    # getter for: Lokhttp3/internal/framed/FramedConnection;->lastGoodStreamId:I
    invoke-static {v1}, Lokhttp3/internal/framed/FramedConnection;->access$1700(Lokhttp3/internal/framed/FramedConnection;)I

    move-result v1

    if-gt p3, v1, :cond_3f

    monitor-exit v7

    goto :goto_d

    .line 670
    :cond_3f
    rem-int/lit8 v1, p3, 0x2

    iget-object v2, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->this$0:Lokhttp3/internal/framed/FramedConnection;

    # getter for: Lokhttp3/internal/framed/FramedConnection;->nextStreamId:I
    invoke-static {v2}, Lokhttp3/internal/framed/FramedConnection;->access$1800(Lokhttp3/internal/framed/FramedConnection;)I

    move-result v2

    rem-int/lit8 v2, v2, 0x2

    if-ne v1, v2, :cond_4d

    monitor-exit v7

    goto :goto_d

    .line 674
    :cond_4d
    new-instance v0, Lokhttp3/internal/framed/FramedStream;

    iget-object v2, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->this$0:Lokhttp3/internal/framed/FramedConnection;

    move v1, p3

    move v3, p1

    move v4, p2

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lokhttp3/internal/framed/FramedStream;-><init>(ILokhttp3/internal/framed/FramedConnection;ZZLjava/util/List;)V

    .line 676
    .local v0, "newStream":Lokhttp3/internal/framed/FramedStream;
    iget-object v1, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->this$0:Lokhttp3/internal/framed/FramedConnection;

    # setter for: Lokhttp3/internal/framed/FramedConnection;->lastGoodStreamId:I
    invoke-static {v1, p3}, Lokhttp3/internal/framed/FramedConnection;->access$1702(Lokhttp3/internal/framed/FramedConnection;I)I

    .line 677
    iget-object v1, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->this$0:Lokhttp3/internal/framed/FramedConnection;

    # getter for: Lokhttp3/internal/framed/FramedConnection;->streams:Ljava/util/Map;
    invoke-static {v1}, Lokhttp3/internal/framed/FramedConnection;->access$1900(Lokhttp3/internal/framed/FramedConnection;)Ljava/util/Map;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 678
    # getter for: Lokhttp3/internal/framed/FramedConnection;->executor:Ljava/util/concurrent/ExecutorService;
    invoke-static {}, Lokhttp3/internal/framed/FramedConnection;->access$2100()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Lokhttp3/internal/framed/FramedConnection$Reader$1;

    const-string v3, "OkHttp %s stream %d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v8, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->this$0:Lokhttp3/internal/framed/FramedConnection;

    # getter for: Lokhttp3/internal/framed/FramedConnection;->hostname:Ljava/lang/String;
    invoke-static {v8}, Lokhttp3/internal/framed/FramedConnection;->access$1100(Lokhttp3/internal/framed/FramedConnection;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v5

    const/4 v5, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v4, v5

    invoke-direct {v2, p0, v3, v4, v0}, Lokhttp3/internal/framed/FramedConnection$Reader$1;-><init>(Lokhttp3/internal/framed/FramedConnection$Reader;Ljava/lang/String;[Ljava/lang/Object;Lokhttp3/internal/framed/FramedStream;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 691
    monitor-exit v7

    goto :goto_d

    .line 693
    .end local v0    # "newStream":Lokhttp3/internal/framed/FramedStream;
    :cond_8d
    monitor-exit v7
    :try_end_8e
    .catchall {:try_start_1e .. :try_end_8e} :catchall_1b

    .line 696
    invoke-virtual {p6}, Lokhttp3/internal/framed/HeadersMode;->failIfStreamPresent()Z

    move-result v1

    if-eqz v1, :cond_a0

    .line 697
    sget-object v1, Lokhttp3/internal/framed/ErrorCode;->PROTOCOL_ERROR:Lokhttp3/internal/framed/ErrorCode;

    invoke-virtual {v6, v1}, Lokhttp3/internal/framed/FramedStream;->closeLater(Lokhttp3/internal/framed/ErrorCode;)V

    .line 698
    iget-object v1, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->this$0:Lokhttp3/internal/framed/FramedConnection;

    invoke-virtual {v1, p3}, Lokhttp3/internal/framed/FramedConnection;->removeStream(I)Lokhttp3/internal/framed/FramedStream;

    goto/16 :goto_d

    .line 703
    :cond_a0
    invoke-virtual {v6, p5, p6}, Lokhttp3/internal/framed/FramedStream;->receiveHeaders(Ljava/util/List;Lokhttp3/internal/framed/HeadersMode;)V

    .line 704
    if-eqz p2, :cond_d

    invoke-virtual {v6}, Lokhttp3/internal/framed/FramedStream;->receiveFin()V

    goto/16 :goto_d
.end method

.method public ping(ZII)V
    .registers 8
    .param p1, "reply"    # Z
    .param p2, "payload1"    # I
    .param p3, "payload2"    # I

    .prologue
    .line 770
    if-eqz p1, :cond_e

    .line 771
    iget-object v1, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->this$0:Lokhttp3/internal/framed/FramedConnection;

    # invokes: Lokhttp3/internal/framed/FramedConnection;->removePing(I)Lokhttp3/internal/framed/Ping;
    invoke-static {v1, p2}, Lokhttp3/internal/framed/FramedConnection;->access$2400(Lokhttp3/internal/framed/FramedConnection;I)Lokhttp3/internal/framed/Ping;

    move-result-object v0

    .line 772
    .local v0, "ping":Lokhttp3/internal/framed/Ping;
    if-eqz v0, :cond_d

    .line 773
    invoke-virtual {v0}, Lokhttp3/internal/framed/Ping;->receive()V

    .line 779
    .end local v0    # "ping":Lokhttp3/internal/framed/Ping;
    :cond_d
    :goto_d
    return-void

    .line 777
    :cond_e
    iget-object v1, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->this$0:Lokhttp3/internal/framed/FramedConnection;

    const/4 v2, 0x1

    const/4 v3, 0x0

    # invokes: Lokhttp3/internal/framed/FramedConnection;->writePingLater(ZIILokhttp3/internal/framed/Ping;)V
    invoke-static {v1, v2, p2, p3, v3}, Lokhttp3/internal/framed/FramedConnection;->access$2500(Lokhttp3/internal/framed/FramedConnection;ZIILokhttp3/internal/framed/Ping;)V

    goto :goto_d
.end method

.method public priority(IIIZ)V
    .registers 5
    .param p1, "streamId"    # I
    .param p2, "streamDependency"    # I
    .param p3, "weight"    # I
    .param p4, "exclusive"    # Z

    .prologue
    .line 820
    return-void
.end method

.method public pushPromise(IILjava/util/List;)V
    .registers 5
    .param p1, "streamId"    # I
    .param p2, "promisedStreamId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List",
            "<",
            "Lokhttp3/internal/framed/Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 824
    .local p3, "requestHeaders":Ljava/util/List;, "Ljava/util/List<Lokhttp3/internal/framed/Header;>;"
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->this$0:Lokhttp3/internal/framed/FramedConnection;

    # invokes: Lokhttp3/internal/framed/FramedConnection;->pushRequestLater(ILjava/util/List;)V
    invoke-static {v0, p2, p3}, Lokhttp3/internal/framed/FramedConnection;->access$2600(Lokhttp3/internal/framed/FramedConnection;ILjava/util/List;)V

    .line 825
    return-void
.end method

.method public rstStream(ILokhttp3/internal/framed/ErrorCode;)V
    .registers 5
    .param p1, "streamId"    # I
    .param p2, "errorCode"    # Lokhttp3/internal/framed/ErrorCode;

    .prologue
    .line 708
    iget-object v1, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->this$0:Lokhttp3/internal/framed/FramedConnection;

    # invokes: Lokhttp3/internal/framed/FramedConnection;->pushedStream(I)Z
    invoke-static {v1, p1}, Lokhttp3/internal/framed/FramedConnection;->access$1300(Lokhttp3/internal/framed/FramedConnection;I)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 709
    iget-object v1, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->this$0:Lokhttp3/internal/framed/FramedConnection;

    # invokes: Lokhttp3/internal/framed/FramedConnection;->pushResetLater(ILokhttp3/internal/framed/ErrorCode;)V
    invoke-static {v1, p1, p2}, Lokhttp3/internal/framed/FramedConnection;->access$2200(Lokhttp3/internal/framed/FramedConnection;ILokhttp3/internal/framed/ErrorCode;)V

    .line 716
    :cond_d
    :goto_d
    return-void

    .line 712
    :cond_e
    iget-object v1, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->this$0:Lokhttp3/internal/framed/FramedConnection;

    invoke-virtual {v1, p1}, Lokhttp3/internal/framed/FramedConnection;->removeStream(I)Lokhttp3/internal/framed/FramedStream;

    move-result-object v0

    .line 713
    .local v0, "rstStream":Lokhttp3/internal/framed/FramedStream;
    if-eqz v0, :cond_d

    .line 714
    invoke-virtual {v0, p2}, Lokhttp3/internal/framed/FramedStream;->receiveRstStream(Lokhttp3/internal/framed/ErrorCode;)V

    goto :goto_d
.end method

.method public settings(ZLokhttp3/internal/framed/Settings;)V
    .registers 18
    .param p1, "clearPrevious"    # Z
    .param p2, "newSettings"    # Lokhttp3/internal/framed/Settings;

    .prologue
    .line 719
    const-wide/16 v2, 0x0

    .line 720
    .local v2, "delta":J
    const/4 v7, 0x0

    .line 721
    .local v7, "streamsToNotify":[Lokhttp3/internal/framed/FramedStream;
    iget-object v9, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->this$0:Lokhttp3/internal/framed/FramedConnection;

    monitor-enter v9

    .line 722
    :try_start_6
    iget-object v8, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->this$0:Lokhttp3/internal/framed/FramedConnection;

    iget-object v8, v8, Lokhttp3/internal/framed/FramedConnection;->peerSettings:Lokhttp3/internal/framed/Settings;

    const/high16 v10, 0x10000

    invoke-virtual {v8, v10}, Lokhttp3/internal/framed/Settings;->getInitialWindowSize(I)I

    move-result v5

    .line 723
    .local v5, "priorWriteWindowSize":I
    if-eqz p1, :cond_19

    iget-object v8, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->this$0:Lokhttp3/internal/framed/FramedConnection;

    iget-object v8, v8, Lokhttp3/internal/framed/FramedConnection;->peerSettings:Lokhttp3/internal/framed/Settings;

    invoke-virtual {v8}, Lokhttp3/internal/framed/Settings;->clear()V

    .line 724
    :cond_19
    iget-object v8, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->this$0:Lokhttp3/internal/framed/FramedConnection;

    iget-object v8, v8, Lokhttp3/internal/framed/FramedConnection;->peerSettings:Lokhttp3/internal/framed/Settings;

    move-object/from16 v0, p2

    invoke-virtual {v8, v0}, Lokhttp3/internal/framed/Settings;->merge(Lokhttp3/internal/framed/Settings;)V

    .line 725
    iget-object v8, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->this$0:Lokhttp3/internal/framed/FramedConnection;

    invoke-virtual {v8}, Lokhttp3/internal/framed/FramedConnection;->getProtocol()Lokhttp3/Protocol;

    move-result-object v8

    sget-object v10, Lokhttp3/Protocol;->HTTP_2:Lokhttp3/Protocol;

    if-ne v8, v10, :cond_31

    .line 726
    move-object/from16 v0, p2

    invoke-direct {p0, v0}, Lokhttp3/internal/framed/FramedConnection$Reader;->ackSettingsLater(Lokhttp3/internal/framed/Settings;)V

    .line 728
    :cond_31
    iget-object v8, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->this$0:Lokhttp3/internal/framed/FramedConnection;

    iget-object v8, v8, Lokhttp3/internal/framed/FramedConnection;->peerSettings:Lokhttp3/internal/framed/Settings;

    const/high16 v10, 0x10000

    invoke-virtual {v8, v10}, Lokhttp3/internal/framed/Settings;->getInitialWindowSize(I)I

    move-result v4

    .line 729
    .local v4, "peerInitialWindowSize":I
    const/4 v8, -0x1

    if-eq v4, v8, :cond_80

    if-eq v4, v5, :cond_80

    .line 730
    sub-int v8, v4, v5

    int-to-long v2, v8

    .line 731
    iget-object v8, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->this$0:Lokhttp3/internal/framed/FramedConnection;

    # getter for: Lokhttp3/internal/framed/FramedConnection;->receivedInitialPeerSettings:Z
    invoke-static {v8}, Lokhttp3/internal/framed/FramedConnection;->access$2300(Lokhttp3/internal/framed/FramedConnection;)Z

    move-result v8

    if-nez v8, :cond_56

    .line 732
    iget-object v8, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->this$0:Lokhttp3/internal/framed/FramedConnection;

    invoke-virtual {v8, v2, v3}, Lokhttp3/internal/framed/FramedConnection;->addBytesToWriteWindow(J)V

    .line 733
    iget-object v8, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->this$0:Lokhttp3/internal/framed/FramedConnection;

    const/4 v10, 0x1

    # setter for: Lokhttp3/internal/framed/FramedConnection;->receivedInitialPeerSettings:Z
    invoke-static {v8, v10}, Lokhttp3/internal/framed/FramedConnection;->access$2302(Lokhttp3/internal/framed/FramedConnection;Z)Z

    .line 735
    :cond_56
    iget-object v8, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->this$0:Lokhttp3/internal/framed/FramedConnection;

    # getter for: Lokhttp3/internal/framed/FramedConnection;->streams:Ljava/util/Map;
    invoke-static {v8}, Lokhttp3/internal/framed/FramedConnection;->access$1900(Lokhttp3/internal/framed/FramedConnection;)Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Map;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_80

    .line 736
    iget-object v8, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->this$0:Lokhttp3/internal/framed/FramedConnection;

    # getter for: Lokhttp3/internal/framed/FramedConnection;->streams:Ljava/util/Map;
    invoke-static {v8}, Lokhttp3/internal/framed/FramedConnection;->access$1900(Lokhttp3/internal/framed/FramedConnection;)Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v8

    iget-object v10, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->this$0:Lokhttp3/internal/framed/FramedConnection;

    # getter for: Lokhttp3/internal/framed/FramedConnection;->streams:Ljava/util/Map;
    invoke-static {v10}, Lokhttp3/internal/framed/FramedConnection;->access$1900(Lokhttp3/internal/framed/FramedConnection;)Ljava/util/Map;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Map;->size()I

    move-result v10

    new-array v10, v10, [Lokhttp3/internal/framed/FramedStream;

    invoke-interface {v8, v10}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, [Lokhttp3/internal/framed/FramedStream;

    move-object v7, v0

    .line 739
    :cond_80
    # getter for: Lokhttp3/internal/framed/FramedConnection;->executor:Ljava/util/concurrent/ExecutorService;
    invoke-static {}, Lokhttp3/internal/framed/FramedConnection;->access$2100()Ljava/util/concurrent/ExecutorService;

    move-result-object v8

    new-instance v10, Lokhttp3/internal/framed/FramedConnection$Reader$2;

    const-string v11, "OkHttp %s settings"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    iget-object v14, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->this$0:Lokhttp3/internal/framed/FramedConnection;

    # getter for: Lokhttp3/internal/framed/FramedConnection;->hostname:Ljava/lang/String;
    invoke-static {v14}, Lokhttp3/internal/framed/FramedConnection;->access$1100(Lokhttp3/internal/framed/FramedConnection;)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-direct {v10, p0, v11, v12}, Lokhttp3/internal/framed/FramedConnection$Reader$2;-><init>(Lokhttp3/internal/framed/FramedConnection$Reader;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v8, v10}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 744
    monitor-exit v9
    :try_end_9b
    .catchall {:try_start_6 .. :try_end_9b} :catchall_b1

    .line 745
    if-eqz v7, :cond_b7

    const-wide/16 v8, 0x0

    cmp-long v8, v2, v8

    if-eqz v8, :cond_b7

    .line 746
    array-length v9, v7

    const/4 v8, 0x0

    :goto_a5
    if-ge v8, v9, :cond_b7

    aget-object v6, v7, v8

    .line 747
    .local v6, "stream":Lokhttp3/internal/framed/FramedStream;
    monitor-enter v6

    .line 748
    :try_start_aa
    invoke-virtual {v6, v2, v3}, Lokhttp3/internal/framed/FramedStream;->addBytesToWriteWindow(J)V

    .line 749
    monitor-exit v6
    :try_end_ae
    .catchall {:try_start_aa .. :try_end_ae} :catchall_b4

    .line 746
    add-int/lit8 v8, v8, 0x1

    goto :goto_a5

    .line 744
    .end local v4    # "peerInitialWindowSize":I
    .end local v5    # "priorWriteWindowSize":I
    .end local v6    # "stream":Lokhttp3/internal/framed/FramedStream;
    :catchall_b1
    move-exception v8

    :try_start_b2
    monitor-exit v9
    :try_end_b3
    .catchall {:try_start_b2 .. :try_end_b3} :catchall_b1

    throw v8

    .line 749
    .restart local v4    # "peerInitialWindowSize":I
    .restart local v5    # "priorWriteWindowSize":I
    .restart local v6    # "stream":Lokhttp3/internal/framed/FramedStream;
    :catchall_b4
    move-exception v8

    :try_start_b5
    monitor-exit v6
    :try_end_b6
    .catchall {:try_start_b5 .. :try_end_b6} :catchall_b4

    throw v8

    .line 752
    .end local v6    # "stream":Lokhttp3/internal/framed/FramedStream;
    :cond_b7
    return-void
.end method

.method public windowUpdate(IJ)V
    .registers 10
    .param p1, "streamId"    # I
    .param p2, "windowSizeIncrement"    # J

    .prologue
    .line 802
    if-nez p1, :cond_16

    .line 803
    iget-object v2, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->this$0:Lokhttp3/internal/framed/FramedConnection;

    monitor-enter v2

    .line 804
    :try_start_5
    iget-object v1, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->this$0:Lokhttp3/internal/framed/FramedConnection;

    iget-wide v4, v1, Lokhttp3/internal/framed/FramedConnection;->bytesLeftInWriteWindow:J

    add-long/2addr v4, p2

    iput-wide v4, v1, Lokhttp3/internal/framed/FramedConnection;->bytesLeftInWriteWindow:J

    .line 805
    iget-object v1, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->this$0:Lokhttp3/internal/framed/FramedConnection;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 806
    monitor-exit v2

    .line 815
    :cond_12
    :goto_12
    return-void

    .line 806
    :catchall_13
    move-exception v1

    monitor-exit v2
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_13

    throw v1

    .line 808
    :cond_16
    iget-object v1, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->this$0:Lokhttp3/internal/framed/FramedConnection;

    invoke-virtual {v1, p1}, Lokhttp3/internal/framed/FramedConnection;->getStream(I)Lokhttp3/internal/framed/FramedStream;

    move-result-object v0

    .line 809
    .local v0, "stream":Lokhttp3/internal/framed/FramedStream;
    if-eqz v0, :cond_12

    .line 810
    monitor-enter v0

    .line 811
    :try_start_1f
    invoke-virtual {v0, p2, p3}, Lokhttp3/internal/framed/FramedStream;->addBytesToWriteWindow(J)V

    .line 812
    monitor-exit v0

    goto :goto_12

    :catchall_24
    move-exception v1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_1f .. :try_end_26} :catchall_24

    throw v1
.end method
