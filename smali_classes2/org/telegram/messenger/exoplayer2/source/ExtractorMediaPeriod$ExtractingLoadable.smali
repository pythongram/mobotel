.class final Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;
.super Ljava/lang/Object;
.source "ExtractorMediaPeriod.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/upstream/Loader$Loadable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ExtractingLoadable"
.end annotation


# static fields
.field private static final CONTINUE_LOADING_CHECK_INTERVAL_BYTES:I = 0x100000


# instance fields
.field private final dataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

.field private final extractorHolder:Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractorHolder;

.field private length:J

.field private volatile loadCanceled:Z

.field private final loadCondition:Lorg/telegram/messenger/exoplayer2/util/ConditionVariable;

.field private pendingExtractorSeek:Z

.field private final positionHolder:Lorg/telegram/messenger/exoplayer2/extractor/PositionHolder;

.field final synthetic this$0:Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;

.field private final uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;Landroid/net/Uri;Lorg/telegram/messenger/exoplayer2/upstream/DataSource;Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractorHolder;Lorg/telegram/messenger/exoplayer2/util/ConditionVariable;)V
    .registers 8
    .param p1, "this$0"    # Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "dataSource"    # Lorg/telegram/messenger/exoplayer2/upstream/DataSource;
    .param p4, "extractorHolder"    # Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractorHolder;
    .param p5, "loadCondition"    # Lorg/telegram/messenger/exoplayer2/util/ConditionVariable;

    .prologue
    .line 584
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->this$0:Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 585
    invoke-static {p2}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->uri:Landroid/net/Uri;

    .line 586
    invoke-static {p3}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->dataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    .line 587
    invoke-static {p4}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractorHolder;

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->extractorHolder:Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractorHolder;

    .line 588
    iput-object p5, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->loadCondition:Lorg/telegram/messenger/exoplayer2/util/ConditionVariable;

    .line 589
    new-instance v0, Lorg/telegram/messenger/exoplayer2/extractor/PositionHolder;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer2/extractor/PositionHolder;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->positionHolder:Lorg/telegram/messenger/exoplayer2/extractor/PositionHolder;

    .line 590
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->pendingExtractorSeek:Z

    .line 591
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->length:J

    .line 592
    return-void
.end method

.method static synthetic access$500(Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;)J
    .registers 3
    .param p0, "x0"    # Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;

    .prologue
    .line 564
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->length:J

    return-wide v0
.end method


# virtual methods
.method public cancelLoad()V
    .registers 2

    .prologue
    .line 601
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->loadCanceled:Z

    .line 602
    return-void
.end method

.method public isLoadCanceled()Z
    .registers 2

    .prologue
    .line 606
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->loadCanceled:Z

    return v0
.end method

.method public load()V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 611
    const/4 v9, 0x0

    .line 612
    .local v9, "result":I
    :goto_1
    if-nez v9, :cond_a6

    iget-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->loadCanceled:Z

    if-nez v1, :cond_a6

    .line 613
    const/4 v8, 0x0

    .line 615
    .local v8, "input":Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;
    :try_start_8
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->positionHolder:Lorg/telegram/messenger/exoplayer2/extractor/PositionHolder;

    iget-wide v2, v1, Lorg/telegram/messenger/exoplayer2/extractor/PositionHolder;->position:J

    .line 616
    .local v2, "position":J
    iget-object v10, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->dataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    new-instance v0, Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->uri:Landroid/net/Uri;

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;-><init>(Landroid/net/Uri;JJLjava/lang/String;)V

    invoke-interface {v10, v0}, Lorg/telegram/messenger/exoplayer2/upstream/DataSource;->open(Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;)J

    move-result-wide v4

    iput-wide v4, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->length:J

    .line 617
    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->length:J

    const-wide/16 v10, -0x1

    cmp-long v1, v4, v10

    if-eqz v1, :cond_2b

    .line 618
    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->length:J

    add-long/2addr v4, v2

    iput-wide v4, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->length:J

    .line 620
    :cond_2b
    new-instance v0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultExtractorInput;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->dataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->length:J

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultExtractorInput;-><init>(Lorg/telegram/messenger/exoplayer2/upstream/DataSource;JJ)V
    :try_end_34
    .catchall {:try_start_8 .. :try_end_34} :catchall_a7

    .line 621
    .end local v8    # "input":Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;
    .local v0, "input":Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;
    :try_start_34
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->extractorHolder:Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractorHolder;

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractorHolder;->selectExtractor(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;)Lorg/telegram/messenger/exoplayer2/extractor/Extractor;

    move-result-object v7

    .line 622
    .local v7, "extractor":Lorg/telegram/messenger/exoplayer2/extractor/Extractor;
    iget-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->pendingExtractorSeek:Z

    if-eqz v1, :cond_44

    .line 623
    invoke-interface {v7, v2, v3}, Lorg/telegram/messenger/exoplayer2/extractor/Extractor;->seek(J)V

    .line 624
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->pendingExtractorSeek:Z

    .line 626
    :cond_44
    :goto_44
    if-nez v9, :cond_85

    iget-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->loadCanceled:Z

    if-nez v1, :cond_85

    .line 627
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->loadCondition:Lorg/telegram/messenger/exoplayer2/util/ConditionVariable;

    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer2/util/ConditionVariable;->block()V

    .line 628
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->positionHolder:Lorg/telegram/messenger/exoplayer2/extractor/PositionHolder;

    invoke-interface {v7, v0, v1}, Lorg/telegram/messenger/exoplayer2/extractor/Extractor;->read(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;Lorg/telegram/messenger/exoplayer2/extractor/PositionHolder;)I

    move-result v9

    .line 629
    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v4

    const-wide/32 v10, 0x100000

    add-long/2addr v10, v2

    cmp-long v1, v4, v10

    if-lez v1, :cond_44

    .line 630
    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v2

    .line 631
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->loadCondition:Lorg/telegram/messenger/exoplayer2/util/ConditionVariable;

    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer2/util/ConditionVariable;->close()Z

    .line 632
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->this$0:Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;

    # getter for: Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->handler:Landroid/os/Handler;
    invoke-static {v1}, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->access$800(Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;)Landroid/os/Handler;

    move-result-object v1

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->this$0:Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;

    # getter for: Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->onContinueLoadingRequestedRunnable:Ljava/lang/Runnable;
    invoke-static {v4}, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->access$700(Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_79
    .catchall {:try_start_34 .. :try_end_79} :catchall_7a

    goto :goto_44

    .line 636
    .end local v7    # "extractor":Lorg/telegram/messenger/exoplayer2/extractor/Extractor;
    :catchall_7a
    move-exception v1

    .end local v2    # "position":J
    :goto_7b
    const/4 v4, 0x1

    if-ne v9, v4, :cond_9b

    .line 637
    const/4 v9, 0x0

    .line 641
    :cond_7f
    :goto_7f
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->dataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    invoke-interface {v4}, Lorg/telegram/messenger/exoplayer2/upstream/DataSource;->close()V

    throw v1

    .line 636
    .restart local v2    # "position":J
    .restart local v7    # "extractor":Lorg/telegram/messenger/exoplayer2/extractor/Extractor;
    :cond_85
    const/4 v1, 0x1

    if-ne v9, v1, :cond_90

    .line 637
    const/4 v9, 0x0

    .line 641
    :cond_89
    :goto_89
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->dataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    invoke-interface {v1}, Lorg/telegram/messenger/exoplayer2/upstream/DataSource;->close()V

    goto/16 :goto_1

    .line 638
    :cond_90
    if-eqz v0, :cond_89

    .line 639
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->positionHolder:Lorg/telegram/messenger/exoplayer2/extractor/PositionHolder;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v4

    iput-wide v4, v1, Lorg/telegram/messenger/exoplayer2/extractor/PositionHolder;->position:J

    goto :goto_89

    .line 638
    .end local v2    # "position":J
    .end local v7    # "extractor":Lorg/telegram/messenger/exoplayer2/extractor/Extractor;
    :cond_9b
    if-eqz v0, :cond_7f

    .line 639
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->positionHolder:Lorg/telegram/messenger/exoplayer2/extractor/PositionHolder;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v10

    iput-wide v10, v4, Lorg/telegram/messenger/exoplayer2/extractor/PositionHolder;->position:J

    goto :goto_7f

    .line 644
    .end local v0    # "input":Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;
    :cond_a6
    return-void

    .line 636
    .restart local v8    # "input":Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;
    :catchall_a7
    move-exception v1

    move-object v0, v8

    .end local v8    # "input":Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;
    .restart local v0    # "input":Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;
    goto :goto_7b
.end method

.method public setLoadPosition(J)V
    .registers 4
    .param p1, "position"    # J

    .prologue
    .line 595
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->positionHolder:Lorg/telegram/messenger/exoplayer2/extractor/PositionHolder;

    iput-wide p1, v0, Lorg/telegram/messenger/exoplayer2/extractor/PositionHolder;->position:J

    .line 596
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->pendingExtractorSeek:Z

    .line 597
    return-void
.end method
