.class Lorg/telegram/messenger/query/StickersQuery$21$1;
.super Ljava/lang/Object;
.source "StickersQuery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/query/StickersQuery$21;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/query/StickersQuery$21;

.field final synthetic val$response:Lorg/telegram/tgnet/TLObject;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/query/StickersQuery$21;Lorg/telegram/tgnet/TLObject;)V
    .registers 3
    .param p1, "this$0"    # Lorg/telegram/messenger/query/StickersQuery$21;

    .prologue
    .line 868
    iput-object p1, p0, Lorg/telegram/messenger/query/StickersQuery$21$1;->this$0:Lorg/telegram/messenger/query/StickersQuery$21;

    iput-object p2, p0, Lorg/telegram/messenger/query/StickersQuery$21$1;->val$response:Lorg/telegram/tgnet/TLObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 19

    .prologue
    .line 871
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/query/StickersQuery$21$1;->val$response:Lorg/telegram/tgnet/TLObject;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_allStickers;

    if-eqz v2, :cond_cf

    .line 872
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/telegram/messenger/query/StickersQuery$21$1;->val$response:Lorg/telegram/tgnet/TLObject;

    check-cast v8, Lorg/telegram/tgnet/TLRPC$TL_messages_allStickers;

    .line 873
    .local v8, "res":Lorg/telegram/tgnet/TLRPC$TL_messages_allStickers;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 874
    .local v4, "newStickerArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;>;"
    iget-object v2, v8, Lorg/telegram/tgnet/TLRPC$TL_messages_allStickers;->sets:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_30

    .line 875
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/query/StickersQuery$21$1;->this$0:Lorg/telegram/messenger/query/StickersQuery$21;

    iget v2, v2, Lorg/telegram/messenger/query/StickersQuery$21;->val$type:I

    const/4 v3, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    const-wide/16 v14, 0x3e8

    div-long/2addr v12, v14

    long-to-int v12, v12

    iget v13, v8, Lorg/telegram/tgnet/TLRPC$TL_messages_allStickers;->hash:I

    # invokes: Lorg/telegram/messenger/query/StickersQuery;->processLoadedStickers(ILjava/util/ArrayList;ZII)V
    invoke-static {v2, v4, v3, v12, v13}, Lorg/telegram/messenger/query/StickersQuery;->access$2000(ILjava/util/ArrayList;ZII)V

    .line 929
    .end local v4    # "newStickerArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;>;"
    .end local v8    # "res":Lorg/telegram/tgnet/TLRPC$TL_messages_allStickers;
    :cond_2f
    :goto_2f
    return-void

    .line 877
    .restart local v4    # "newStickerArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;>;"
    .restart local v8    # "res":Lorg/telegram/tgnet/TLRPC$TL_messages_allStickers;
    :cond_30
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 878
    .local v6, "newStickerSets":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;>;"
    const/4 v9, 0x0

    .local v9, "a":I
    :goto_36
    iget-object v2, v8, Lorg/telegram/tgnet/TLRPC$TL_messages_allStickers;->sets:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v9, v2, :cond_2f

    .line 879
    iget-object v2, v8, Lorg/telegram/tgnet/TLRPC$TL_messages_allStickers;->sets:Ljava/util/ArrayList;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/tgnet/TLRPC$StickerSet;

    .line 881
    .local v7, "stickerSet":Lorg/telegram/tgnet/TLRPC$StickerSet;
    # getter for: Lorg/telegram/messenger/query/StickersQuery;->stickerSetsById:Ljava/util/HashMap;
    invoke-static {}, Lorg/telegram/messenger/query/StickersQuery;->access$2100()Ljava/util/HashMap;

    move-result-object v2

    iget-wide v12, v7, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    .line 882
    .local v10, "oldSet":Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;
    if-eqz v10, :cond_a3

    iget-object v2, v10, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$StickerSet;->hash:I

    iget v3, v7, Lorg/telegram/tgnet/TLRPC$StickerSet;->hash:I

    if-ne v2, v3, :cond_a3

    .line 883
    iget-object v2, v10, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-boolean v3, v7, Lorg/telegram/tgnet/TLRPC$StickerSet;->archived:Z

    iput-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$StickerSet;->archived:Z

    .line 884
    iget-object v2, v10, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-boolean v3, v7, Lorg/telegram/tgnet/TLRPC$StickerSet;->installed:Z

    iput-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$StickerSet;->installed:Z

    .line 885
    iget-object v2, v10, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-boolean v3, v7, Lorg/telegram/tgnet/TLRPC$StickerSet;->official:Z

    iput-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$StickerSet;->official:Z

    .line 886
    iget-object v2, v10, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v6, v2, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 887
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 889
    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v2

    iget-object v3, v8, Lorg/telegram/tgnet/TLRPC$TL_messages_allStickers;->sets:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v2, v3, :cond_a0

    .line 890
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/query/StickersQuery$21$1;->this$0:Lorg/telegram/messenger/query/StickersQuery$21;

    iget v2, v2, Lorg/telegram/messenger/query/StickersQuery$21;->val$type:I

    const/4 v3, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    const-wide/16 v14, 0x3e8

    div-long/2addr v12, v14

    long-to-int v12, v12

    iget v13, v8, Lorg/telegram/tgnet/TLRPC$TL_messages_allStickers;->hash:I

    # invokes: Lorg/telegram/messenger/query/StickersQuery;->processLoadedStickers(ILjava/util/ArrayList;ZII)V
    invoke-static {v2, v4, v3, v12, v13}, Lorg/telegram/messenger/query/StickersQuery;->access$2000(ILjava/util/ArrayList;ZII)V

    .line 878
    :cond_a0
    :goto_a0
    add-int/lit8 v9, v9, 0x1

    goto :goto_36

    .line 895
    :cond_a3
    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 896
    move v5, v9

    .line 898
    .local v5, "index":I
    new-instance v11, Lorg/telegram/tgnet/TLRPC$TL_messages_getStickerSet;

    invoke-direct {v11}, Lorg/telegram/tgnet/TLRPC$TL_messages_getStickerSet;-><init>()V

    .line 899
    .local v11, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_getStickerSet;
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetID;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetID;-><init>()V

    iput-object v2, v11, Lorg/telegram/tgnet/TLRPC$TL_messages_getStickerSet;->stickerset:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    .line 900
    iget-object v2, v11, Lorg/telegram/tgnet/TLRPC$TL_messages_getStickerSet;->stickerset:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    iget-wide v12, v7, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    iput-wide v12, v2, Lorg/telegram/tgnet/TLRPC$InputStickerSet;->id:J

    .line 901
    iget-object v2, v11, Lorg/telegram/tgnet/TLRPC$TL_messages_getStickerSet;->stickerset:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    iget-wide v12, v7, Lorg/telegram/tgnet/TLRPC$StickerSet;->access_hash:J

    iput-wide v12, v2, Lorg/telegram/tgnet/TLRPC$InputStickerSet;->access_hash:J

    .line 903
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v12

    new-instance v2, Lorg/telegram/messenger/query/StickersQuery$21$1$1;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v8}, Lorg/telegram/messenger/query/StickersQuery$21$1$1;-><init>(Lorg/telegram/messenger/query/StickersQuery$21$1;Ljava/util/ArrayList;ILjava/util/HashMap;Lorg/telegram/tgnet/TLRPC$StickerSet;Lorg/telegram/tgnet/TLRPC$TL_messages_allStickers;)V

    invoke-virtual {v12, v11, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_a0

    .line 927
    .end local v4    # "newStickerArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;>;"
    .end local v5    # "index":I
    .end local v6    # "newStickerSets":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;>;"
    .end local v7    # "stickerSet":Lorg/telegram/tgnet/TLRPC$StickerSet;
    .end local v8    # "res":Lorg/telegram/tgnet/TLRPC$TL_messages_allStickers;
    .end local v9    # "a":I
    .end local v10    # "oldSet":Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;
    .end local v11    # "req":Lorg/telegram/tgnet/TLRPC$TL_messages_getStickerSet;
    :cond_cf
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/query/StickersQuery$21$1;->this$0:Lorg/telegram/messenger/query/StickersQuery$21;

    iget v2, v2, Lorg/telegram/messenger/query/StickersQuery$21;->val$type:I

    const/4 v3, 0x0

    const/4 v12, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    const-wide/16 v16, 0x3e8

    div-long v14, v14, v16

    long-to-int v13, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/query/StickersQuery$21$1;->this$0:Lorg/telegram/messenger/query/StickersQuery$21;

    iget v14, v14, Lorg/telegram/messenger/query/StickersQuery$21;->val$hash:I

    # invokes: Lorg/telegram/messenger/query/StickersQuery;->processLoadedStickers(ILjava/util/ArrayList;ZII)V
    invoke-static {v2, v3, v12, v13, v14}, Lorg/telegram/messenger/query/StickersQuery;->access$2000(ILjava/util/ArrayList;ZII)V

    goto/16 :goto_2f
.end method
