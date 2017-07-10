.class Lorg/telegram/ui/Components/WebPlayerView$YoutubeVideoTask;
.super Landroid/os/AsyncTask;
.source "WebPlayerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/WebPlayerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "YoutubeVideoTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private canRetry:Z

.field private result:[Ljava/lang/String;

.field private semaphore:Ljava/util/concurrent/Semaphore;

.field private sig:Ljava/lang/String;

.field final synthetic this$0:Lorg/telegram/ui/Components/WebPlayerView;

.field private videoId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/WebPlayerView;Ljava/lang/String;)V
    .registers 6
    .param p2, "vid"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 536
    iput-object p1, p0, Lorg/telegram/ui/Components/WebPlayerView$YoutubeVideoTask;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 531
    iput-boolean v2, p0, Lorg/telegram/ui/Components/WebPlayerView$YoutubeVideoTask;->canRetry:Z

    .line 532
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$YoutubeVideoTask;->semaphore:Ljava/util/concurrent/Semaphore;

    .line 533
    new-array v0, v2, [Ljava/lang/String;

    iput-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$YoutubeVideoTask;->result:[Ljava/lang/String;

    .line 537
    iput-object p2, p0, Lorg/telegram/ui/Components/WebPlayerView$YoutubeVideoTask;->videoId:Ljava/lang/String;

    .line 538
    return-void
.end method

.method static synthetic access$1300(Lorg/telegram/ui/Components/WebPlayerView$YoutubeVideoTask;)[Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/WebPlayerView$YoutubeVideoTask;

    .prologue
    .line 528
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$YoutubeVideoTask;->result:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/Components/WebPlayerView$YoutubeVideoTask;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/WebPlayerView$YoutubeVideoTask;

    .prologue
    .line 528
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$YoutubeVideoTask;->sig:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/Components/WebPlayerView$YoutubeVideoTask;)Ljava/util/concurrent/Semaphore;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/WebPlayerView$YoutubeVideoTask;

    .prologue
    .line 528
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$YoutubeVideoTask;->semaphore:Ljava/util/concurrent/Semaphore;

    return-object v0
.end method

.method static synthetic access$5000(Lorg/telegram/ui/Components/WebPlayerView$YoutubeVideoTask;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/WebPlayerView$YoutubeVideoTask;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 528
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/WebPlayerView$YoutubeVideoTask;->onInterfaceResult(Ljava/lang/String;)V

    return-void
.end method

.method private onInterfaceResult(Ljava/lang/String;)V
    .registers 8
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 713
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$YoutubeVideoTask;->result:[Ljava/lang/String;

    iget-object v1, p0, Lorg/telegram/ui/Components/WebPlayerView$YoutubeVideoTask;->result:[Ljava/lang/String;

    aget-object v1, v1, v5

    iget-object v2, p0, Lorg/telegram/ui/Components/WebPlayerView$YoutubeVideoTask;->sig:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/signature/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    .line 714
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$YoutubeVideoTask;->semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 715
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 528
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/WebPlayerView$YoutubeVideoTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .registers 33
    .param p1, "voids"    # [Ljava/lang/Void;

    .prologue
    .line 543
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/WebPlayerView$YoutubeVideoTask;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    move-object/from16 v27, v0

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "https://www.youtube.com/embed/"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/WebPlayerView$YoutubeVideoTask;->videoId:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/WebPlayerView;->downloadUrlContent(Landroid/os/AsyncTask;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 544
    .local v7, "embedCode":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/WebPlayerView$YoutubeVideoTask;->isCancelled()Z

    move-result v27

    if-eqz v27, :cond_32

    .line 545
    const/16 v27, 0x0

    .line 709
    :goto_31
    return-object v27

    .line 547
    :cond_32
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "video_id="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/WebPlayerView$YoutubeVideoTask;->videoId:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "&ps=default&gl=US&hl=en"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 549
    .local v21, "params":Ljava/lang/String;
    :try_start_51
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "&eurl="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "https://youtube.googleapis.com/v/"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/WebPlayerView$YoutubeVideoTask;->videoId:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    const-string v29, "UTF-8"

    invoke-static/range {v28 .. v29}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_8a
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_8a} :catch_12e

    move-result-object v21

    .line 553
    :goto_8b
    if-eqz v7, :cond_ca

    .line 554
    # getter for: Lorg/telegram/ui/Components/WebPlayerView;->stsPattern:Ljava/util/regex/Pattern;
    invoke-static {}, Lorg/telegram/ui/Components/WebPlayerView;->access$600()Ljava/util/regex/Pattern;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v20

    .line 555
    .local v20, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual/range {v20 .. v20}, Ljava/util/regex/Matcher;->find()Z

    move-result v27

    if-eqz v27, :cond_134

    .line 556
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "&sts="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v20 .. v20}, Ljava/util/regex/Matcher;->start()I

    move-result v28

    add-int/lit8 v28, v28, 0x6

    invoke-virtual/range {v20 .. v20}, Ljava/util/regex/Matcher;->end()I

    move-result v29

    move/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v7, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 562
    .end local v20    # "matcher":Ljava/util/regex/Matcher;
    :cond_ca
    :goto_ca
    const/4 v8, 0x0

    .line 563
    .local v8, "encrypted":Z
    const/16 v27, 0x5

    move/from16 v0, v27

    new-array v10, v0, [Ljava/lang/String;

    const/16 v27, 0x0

    const-string v28, ""

    aput-object v28, v10, v27

    const/16 v27, 0x1

    const-string v28, "&el=info"

    aput-object v28, v10, v27

    const/16 v27, 0x2

    const-string v28, "&el=embedded"

    aput-object v28, v10, v27

    const/16 v27, 0x3

    const-string v28, "&el=detailpage"

    aput-object v28, v10, v27

    const/16 v27, 0x4

    const-string v28, "&el=vevo"

    aput-object v28, v10, v27

    .line 564
    .local v10, "extra":[Ljava/lang/String;
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_f0
    array-length v0, v10

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v15, v0, :cond_1c9

    .line 565
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/WebPlayerView$YoutubeVideoTask;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    move-object/from16 v27, v0

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "https://www.youtube.com/get_video_info?"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    aget-object v29, v10, v15

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/WebPlayerView;->downloadUrlContent(Landroid/os/AsyncTask;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 566
    .local v26, "videoInfo":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/WebPlayerView$YoutubeVideoTask;->isCancelled()Z

    move-result v27

    if-eqz v27, :cond_14d

    .line 567
    const/16 v27, 0x0

    goto/16 :goto_31

    .line 550
    .end local v8    # "encrypted":Z
    .end local v10    # "extra":[Ljava/lang/String;
    .end local v15    # "i":I
    .end local v26    # "videoInfo":Ljava/lang/String;
    :catch_12e
    move-exception v6

    .line 551
    .local v6, "e":Ljava/lang/Exception;
    invoke-static {v6}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_8b

    .line 558
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v20    # "matcher":Ljava/util/regex/Matcher;
    :cond_134
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "&sts="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_ca

    .line 569
    .end local v20    # "matcher":Ljava/util/regex/Matcher;
    .restart local v8    # "encrypted":Z
    .restart local v10    # "extra":[Ljava/lang/String;
    .restart local v15    # "i":I
    .restart local v26    # "videoInfo":Ljava/lang/String;
    :cond_14d
    const/4 v9, 0x0

    .line 570
    .local v9, "exists":Z
    if-eqz v26, :cond_1c7

    .line 571
    const-string v27, "&"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 572
    .local v4, "args":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "a":I
    :goto_157
    array-length v0, v4

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v3, v0, :cond_1c7

    .line 573
    aget-object v27, v4, v3

    const-string v28, "dashmpd"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_198

    .line 574
    const/4 v9, 0x1

    .line 575
    aget-object v27, v4, v3

    const-string v28, "="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 576
    .local v5, "args2":[Ljava/lang/String;
    array-length v0, v5

    move/from16 v27, v0

    const/16 v28, 0x2

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_190

    .line 578
    :try_start_17c
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/WebPlayerView$YoutubeVideoTask;->result:[Ljava/lang/String;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    const/16 v29, 0x1

    aget-object v29, v5, v29

    const-string v30, "UTF-8"

    invoke-static/range {v29 .. v30}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    aput-object v29, v27, v28
    :try_end_190
    .catch Ljava/lang/Exception; {:try_start_17c .. :try_end_190} :catch_193

    .line 572
    .end local v5    # "args2":[Ljava/lang/String;
    :cond_190
    :goto_190
    add-int/lit8 v3, v3, 0x1

    goto :goto_157

    .line 579
    .restart local v5    # "args2":[Ljava/lang/String;
    :catch_193
    move-exception v6

    .line 580
    .restart local v6    # "e":Ljava/lang/Exception;
    invoke-static {v6}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_190

    .line 583
    .end local v5    # "args2":[Ljava/lang/String;
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_198
    aget-object v27, v4, v3

    const-string v28, "use_cipher_signature"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_190

    .line 584
    aget-object v27, v4, v3

    const-string v28, "="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 585
    .restart local v5    # "args2":[Ljava/lang/String;
    array-length v0, v5

    move/from16 v27, v0

    const/16 v28, 0x2

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_190

    .line 586
    const/16 v27, 0x1

    aget-object v27, v5, v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v27

    const-string v28, "true"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_190

    .line 587
    const/4 v8, 0x1

    goto :goto_190

    .line 593
    .end local v3    # "a":I
    .end local v4    # "args":[Ljava/lang/String;
    .end local v5    # "args2":[Ljava/lang/String;
    :cond_1c7
    if-eqz v9, :cond_332

    .line 598
    .end local v9    # "exists":Z
    .end local v26    # "videoInfo":Ljava/lang/String;
    :cond_1c9
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/WebPlayerView$YoutubeVideoTask;->result:[Ljava/lang/String;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    aget-object v27, v27, v28

    if-eqz v27, :cond_425

    if-nez v8, :cond_1e9

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/WebPlayerView$YoutubeVideoTask;->result:[Ljava/lang/String;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    aget-object v27, v27, v28

    const-string v28, "/s/"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v27

    if-eqz v27, :cond_425

    :cond_1e9
    if-eqz v7, :cond_425

    .line 599
    const/4 v8, 0x1

    .line 600
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/WebPlayerView$YoutubeVideoTask;->result:[Ljava/lang/String;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    aget-object v27, v27, v28

    const-string v28, "/s/"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v16

    .line 601
    .local v16, "index":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/WebPlayerView$YoutubeVideoTask;->result:[Ljava/lang/String;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    aget-object v27, v27, v28

    const/16 v28, 0x2f

    add-int/lit8 v29, v16, 0xa

    invoke-virtual/range {v27 .. v29}, Ljava/lang/String;->indexOf(II)I

    move-result v17

    .line 602
    .local v17, "index2":I
    const/16 v27, -0x1

    move/from16 v0, v16

    move/from16 v1, v27

    if-eq v0, v1, :cond_425

    .line 603
    const/16 v27, -0x1

    move/from16 v0, v17

    move/from16 v1, v27

    if-ne v0, v1, :cond_22c

    .line 604
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/WebPlayerView$YoutubeVideoTask;->result:[Ljava/lang/String;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    aget-object v27, v27, v28

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->length()I

    move-result v17

    .line 606
    :cond_22c
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/WebPlayerView$YoutubeVideoTask;->result:[Ljava/lang/String;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    aget-object v27, v27, v28

    move-object/from16 v0, v27

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/Components/WebPlayerView$YoutubeVideoTask;->sig:Ljava/lang/String;

    .line 607
    const/16 v19, 0x0

    .line 608
    .local v19, "jsUrl":Ljava/lang/String;
    # getter for: Lorg/telegram/ui/Components/WebPlayerView;->jsPattern:Ljava/util/regex/Pattern;
    invoke-static {}, Lorg/telegram/ui/Components/WebPlayerView;->access$700()Ljava/util/regex/Pattern;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v20

    .line 609
    .restart local v20    # "matcher":Ljava/util/regex/Matcher;
    invoke-virtual/range {v20 .. v20}, Ljava/util/regex/Matcher;->find()Z

    move-result v27

    if-eqz v27, :cond_27d

    .line 611
    :try_start_258
    new-instance v24, Lorg/json/JSONTokener;

    const/16 v27, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    .line 612
    .local v24, "tokener":Lorg/json/JSONTokener;
    invoke-virtual/range {v24 .. v24}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v25

    .line 613
    .local v25, "value":Ljava/lang/Object;
    move-object/from16 v0, v25

    instance-of v0, v0, Ljava/lang/String;

    move/from16 v27, v0

    if-eqz v27, :cond_27d

    .line 614
    move-object/from16 v0, v25

    check-cast v0, Ljava/lang/String;

    move-object/from16 v19, v0
    :try_end_27d
    .catch Ljava/lang/Exception; {:try_start_258 .. :try_end_27d} :catch_336

    .line 621
    .end local v24    # "tokener":Lorg/json/JSONTokener;
    .end local v25    # "value":Ljava/lang/Object;
    :cond_27d
    :goto_27d
    if-eqz v19, :cond_425

    .line 622
    # getter for: Lorg/telegram/ui/Components/WebPlayerView;->playerIdPattern:Ljava/util/regex/Pattern;
    invoke-static {}, Lorg/telegram/ui/Components/WebPlayerView;->access$800()Ljava/util/regex/Pattern;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v20

    .line 624
    invoke-virtual/range {v20 .. v20}, Ljava/util/regex/Matcher;->find()Z

    move-result v27

    if-eqz v27, :cond_33c

    .line 625
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v28, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const/16 v28, 0x2

    move-object/from16 v0, v20

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 629
    .local v22, "playerId":Ljava/lang/String;
    :goto_2b6
    const/4 v12, 0x0

    .line 630
    .local v12, "functionCode":Ljava/lang/String;
    const/4 v14, 0x0

    .line 631
    .local v14, "functionName":Ljava/lang/String;
    sget-object v27, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v28, "youtubecode"

    const/16 v29, 0x0

    invoke-virtual/range {v27 .. v29}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v23

    .line 632
    .local v23, "preferences":Landroid/content/SharedPreferences;
    if-eqz v22, :cond_2f3

    .line 633
    const/16 v27, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 634
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "n"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 636
    :cond_2f3
    if-nez v12, :cond_3cd

    .line 637
    const-string v27, "//"

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_340

    .line 638
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "https:"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 642
    :cond_318
    :goto_318
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/WebPlayerView$YoutubeVideoTask;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/WebPlayerView;->downloadUrlContent(Landroid/os/AsyncTask;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 643
    .local v18, "jsCode":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/WebPlayerView$YoutubeVideoTask;->isCancelled()Z

    move-result v27

    if-eqz v27, :cond_364

    .line 644
    const/16 v27, 0x0

    goto/16 :goto_31

    .line 564
    .end local v12    # "functionCode":Ljava/lang/String;
    .end local v14    # "functionName":Ljava/lang/String;
    .end local v16    # "index":I
    .end local v17    # "index2":I
    .end local v18    # "jsCode":Ljava/lang/String;
    .end local v19    # "jsUrl":Ljava/lang/String;
    .end local v20    # "matcher":Ljava/util/regex/Matcher;
    .end local v22    # "playerId":Ljava/lang/String;
    .end local v23    # "preferences":Landroid/content/SharedPreferences;
    .restart local v9    # "exists":Z
    .restart local v26    # "videoInfo":Ljava/lang/String;
    :cond_332
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_f0

    .line 616
    .end local v9    # "exists":Z
    .end local v26    # "videoInfo":Ljava/lang/String;
    .restart local v16    # "index":I
    .restart local v17    # "index2":I
    .restart local v19    # "jsUrl":Ljava/lang/String;
    .restart local v20    # "matcher":Ljava/util/regex/Matcher;
    :catch_336
    move-exception v6

    .line 617
    .restart local v6    # "e":Ljava/lang/Exception;
    invoke-static {v6}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_27d

    .line 627
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_33c
    const/16 v22, 0x0

    .restart local v22    # "playerId":Ljava/lang/String;
    goto/16 :goto_2b6

    .line 639
    .restart local v12    # "functionCode":Ljava/lang/String;
    .restart local v14    # "functionName":Ljava/lang/String;
    .restart local v23    # "preferences":Landroid/content/SharedPreferences;
    :cond_340
    const-string v27, "/"

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_318

    .line 640
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "https://www.youtube.com"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    goto :goto_318

    .line 646
    .restart local v18    # "jsCode":Ljava/lang/String;
    :cond_364
    if-eqz v18, :cond_3cd

    .line 647
    # getter for: Lorg/telegram/ui/Components/WebPlayerView;->sigPattern:Ljava/util/regex/Pattern;
    invoke-static {}, Lorg/telegram/ui/Components/WebPlayerView;->access$900()Ljava/util/regex/Pattern;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v20

    .line 648
    invoke-virtual/range {v20 .. v20}, Ljava/util/regex/Matcher;->find()Z

    move-result v27

    if-eqz v27, :cond_431

    .line 649
    const/16 v27, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v14

    .line 656
    :cond_382
    :goto_382
    if-eqz v14, :cond_3cd

    .line 658
    :try_start_384
    new-instance v11, Lorg/telegram/ui/Components/WebPlayerView$JSExtractor;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/WebPlayerView$YoutubeVideoTask;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v18

    invoke-direct {v11, v0, v1}, Lorg/telegram/ui/Components/WebPlayerView$JSExtractor;-><init>(Lorg/telegram/ui/Components/WebPlayerView;Ljava/lang/String;)V

    .line 659
    .local v11, "extractor":Lorg/telegram/ui/Components/WebPlayerView$JSExtractor;
    # invokes: Lorg/telegram/ui/Components/WebPlayerView$JSExtractor;->extractFunction(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v11, v14}, Lorg/telegram/ui/Components/WebPlayerView$JSExtractor;->access$1100(Lorg/telegram/ui/Components/WebPlayerView$JSExtractor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 660
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v27

    if-nez v27, :cond_3cd

    if-eqz v22, :cond_3cd

    .line 661
    invoke-interface/range {v23 .. v23}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v22

    invoke-interface {v0, v1, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v27

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "n"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-interface {v0, v1, v14}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v27

    invoke-interface/range {v27 .. v27}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_3cd
    .catch Ljava/lang/Exception; {:try_start_384 .. :try_end_3cd} :catch_44f

    .line 669
    .end local v11    # "extractor":Lorg/telegram/ui/Components/WebPlayerView$JSExtractor;
    .end local v18    # "jsCode":Ljava/lang/String;
    :cond_3cd
    :goto_3cd
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v27

    if-nez v27, :cond_425

    .line 670
    sget v27, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v28, 0x15

    move/from16 v0, v27

    move/from16 v1, v28

    if-lt v0, v1, :cond_455

    .line 671
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "(\'"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/WebPlayerView$YoutubeVideoTask;->sig:Ljava/lang/String;

    move-object/from16 v28, v0

    const/16 v29, 0x3

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "\');"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 675
    :goto_40e
    move-object v13, v12

    .line 677
    .local v13, "functionCodeFinal":Ljava/lang/String;
    :try_start_40f
    new-instance v27, Lorg/telegram/ui/Components/WebPlayerView$YoutubeVideoTask$1;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v13}, Lorg/telegram/ui/Components/WebPlayerView$YoutubeVideoTask$1;-><init>(Lorg/telegram/ui/Components/WebPlayerView$YoutubeVideoTask;Ljava/lang/String;)V

    invoke-static/range {v27 .. v27}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 700
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/WebPlayerView$YoutubeVideoTask;->semaphore:Ljava/util/concurrent/Semaphore;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_424
    .catch Ljava/lang/Exception; {:try_start_40f .. :try_end_424} :catch_4a2

    .line 701
    const/4 v8, 0x0

    .line 709
    .end local v12    # "functionCode":Ljava/lang/String;
    .end local v13    # "functionCodeFinal":Ljava/lang/String;
    .end local v14    # "functionName":Ljava/lang/String;
    .end local v16    # "index":I
    .end local v17    # "index2":I
    .end local v19    # "jsUrl":Ljava/lang/String;
    .end local v20    # "matcher":Ljava/util/regex/Matcher;
    .end local v22    # "playerId":Ljava/lang/String;
    .end local v23    # "preferences":Landroid/content/SharedPreferences;
    :cond_425
    :goto_425
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/WebPlayerView$YoutubeVideoTask;->isCancelled()Z

    move-result v27

    if-nez v27, :cond_42d

    if-eqz v8, :cond_4a8

    :cond_42d
    const/16 v27, 0x0

    goto/16 :goto_31

    .line 651
    .restart local v12    # "functionCode":Ljava/lang/String;
    .restart local v14    # "functionName":Ljava/lang/String;
    .restart local v16    # "index":I
    .restart local v17    # "index2":I
    .restart local v18    # "jsCode":Ljava/lang/String;
    .restart local v19    # "jsUrl":Ljava/lang/String;
    .restart local v20    # "matcher":Ljava/util/regex/Matcher;
    .restart local v22    # "playerId":Ljava/lang/String;
    .restart local v23    # "preferences":Landroid/content/SharedPreferences;
    :cond_431
    # getter for: Lorg/telegram/ui/Components/WebPlayerView;->sigPattern2:Ljava/util/regex/Pattern;
    invoke-static {}, Lorg/telegram/ui/Components/WebPlayerView;->access$1000()Ljava/util/regex/Pattern;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v20

    .line 652
    invoke-virtual/range {v20 .. v20}, Ljava/util/regex/Matcher;->find()Z

    move-result v27

    if-eqz v27, :cond_382

    .line 653
    const/16 v27, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_382

    .line 663
    :catch_44f
    move-exception v6

    .line 664
    .restart local v6    # "e":Ljava/lang/Exception;
    invoke-static {v6}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_3cd

    .line 673
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v18    # "jsCode":Ljava/lang/String;
    :cond_455
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "window."

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/WebPlayerView$YoutubeVideoTask;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    move-object/from16 v28, v0

    # getter for: Lorg/telegram/ui/Components/WebPlayerView;->interfaceName:Ljava/lang/String;
    invoke-static/range {v28 .. v28}, Lorg/telegram/ui/Components/WebPlayerView;->access$1200(Lorg/telegram/ui/Components/WebPlayerView;)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ".returnResultToJava("

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "(\'"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/WebPlayerView$YoutubeVideoTask;->sig:Ljava/lang/String;

    move-object/from16 v28, v0

    const/16 v29, 0x3

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "\'));"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_40e

    .line 702
    .restart local v13    # "functionCodeFinal":Ljava/lang/String;
    :catch_4a2
    move-exception v6

    .line 703
    .restart local v6    # "e":Ljava/lang/Exception;
    invoke-static {v6}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_425

    .line 709
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v12    # "functionCode":Ljava/lang/String;
    .end local v13    # "functionCodeFinal":Ljava/lang/String;
    .end local v14    # "functionName":Ljava/lang/String;
    .end local v16    # "index":I
    .end local v17    # "index2":I
    .end local v19    # "jsUrl":Ljava/lang/String;
    .end local v20    # "matcher":Ljava/util/regex/Matcher;
    .end local v22    # "playerId":Ljava/lang/String;
    .end local v23    # "preferences":Landroid/content/SharedPreferences;
    :cond_4a8
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/WebPlayerView$YoutubeVideoTask;->result:[Ljava/lang/String;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    aget-object v27, v27, v28

    goto/16 :goto_31
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 528
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/WebPlayerView$YoutubeVideoTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .registers 5
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 719
    if-eqz p1, :cond_31

    .line 720
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$YoutubeVideoTask;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    # setter for: Lorg/telegram/ui/Components/WebPlayerView;->initied:Z
    invoke-static {v0, v2}, Lorg/telegram/ui/Components/WebPlayerView;->access$1702(Lorg/telegram/ui/Components/WebPlayerView;Z)Z

    .line 721
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$YoutubeVideoTask;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    const-string v1, "dash"

    # setter for: Lorg/telegram/ui/Components/WebPlayerView;->playVideoType:Ljava/lang/String;
    invoke-static {v0, v1}, Lorg/telegram/ui/Components/WebPlayerView;->access$1802(Lorg/telegram/ui/Components/WebPlayerView;Ljava/lang/String;)Ljava/lang/String;

    .line 722
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$YoutubeVideoTask;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    # setter for: Lorg/telegram/ui/Components/WebPlayerView;->playVideoUrl:Ljava/lang/String;
    invoke-static {v0, p1}, Lorg/telegram/ui/Components/WebPlayerView;->access$1902(Lorg/telegram/ui/Components/WebPlayerView;Ljava/lang/String;)Ljava/lang/String;

    .line 723
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$YoutubeVideoTask;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    # getter for: Lorg/telegram/ui/Components/WebPlayerView;->isAutoplay:Z
    invoke-static {v0}, Lorg/telegram/ui/Components/WebPlayerView;->access$2000(Lorg/telegram/ui/Components/WebPlayerView;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 724
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$YoutubeVideoTask;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    # invokes: Lorg/telegram/ui/Components/WebPlayerView;->preparePlayer()V
    invoke-static {v0}, Lorg/telegram/ui/Components/WebPlayerView;->access$2100(Lorg/telegram/ui/Components/WebPlayerView;)V

    .line 726
    :cond_21
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$YoutubeVideoTask;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    const/4 v1, 0x0

    # invokes: Lorg/telegram/ui/Components/WebPlayerView;->showProgress(ZZ)V
    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Components/WebPlayerView;->access$2200(Lorg/telegram/ui/Components/WebPlayerView;ZZ)V

    .line 727
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$YoutubeVideoTask;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    # getter for: Lorg/telegram/ui/Components/WebPlayerView;->controlsView:Lorg/telegram/ui/Components/WebPlayerView$ControlsView;
    invoke-static {v0}, Lorg/telegram/ui/Components/WebPlayerView;->access$100(Lorg/telegram/ui/Components/WebPlayerView;)Lorg/telegram/ui/Components/WebPlayerView$ControlsView;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->show(ZZ)V

    .line 731
    :cond_30
    :goto_30
    return-void

    .line 728
    :cond_31
    invoke-virtual {p0}, Lorg/telegram/ui/Components/WebPlayerView$YoutubeVideoTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_30

    .line 729
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$YoutubeVideoTask;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    # invokes: Lorg/telegram/ui/Components/WebPlayerView;->onInitFailed()V
    invoke-static {v0}, Lorg/telegram/ui/Components/WebPlayerView;->access$2300(Lorg/telegram/ui/Components/WebPlayerView;)V

    goto :goto_30
.end method
