.class final Lorg/telegram/messenger/query/StickersQuery$24;
.super Ljava/lang/Object;
.source "StickersQuery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/query/StickersQuery;->processLoadedStickers(ILjava/util/ArrayList;ZII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$cache:Z

.field final synthetic val$date:I

.field final synthetic val$hash:I

.field final synthetic val$res:Ljava/util/ArrayList;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(ZLjava/util/ArrayList;III)V
    .registers 6

    .prologue
    .line 1021
    iput-boolean p1, p0, Lorg/telegram/messenger/query/StickersQuery$24;->val$cache:Z

    iput-object p2, p0, Lorg/telegram/messenger/query/StickersQuery$24;->val$res:Ljava/util/ArrayList;

    iput p3, p0, Lorg/telegram/messenger/query/StickersQuery$24;->val$date:I

    iput p4, p0, Lorg/telegram/messenger/query/StickersQuery$24;->val$hash:I

    iput p5, p0, Lorg/telegram/messenger/query/StickersQuery$24;->val$type:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 23

    .prologue
    .line 1024
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/messenger/query/StickersQuery$24;->val$cache:Z

    if-eqz v2, :cond_2b

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/query/StickersQuery$24;->val$res:Ljava/util/ArrayList;

    if-eqz v2, :cond_3d

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v20, 0x3e8

    div-long v2, v2, v20

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/query/StickersQuery$24;->val$date:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    sub-long v2, v2, v20

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/16 v20, 0xe10

    cmp-long v2, v2, v20

    if-gez v2, :cond_3d

    :cond_2b
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/messenger/query/StickersQuery$24;->val$cache:Z

    if-nez v2, :cond_63

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/query/StickersQuery$24;->val$res:Ljava/util/ArrayList;

    if-nez v2, :cond_63

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/query/StickersQuery$24;->val$hash:I

    if-nez v2, :cond_63

    .line 1025
    :cond_3d
    new-instance v20, Lorg/telegram/messenger/query/StickersQuery$24$1;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/messenger/query/StickersQuery$24$1;-><init>(Lorg/telegram/messenger/query/StickersQuery$24;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/query/StickersQuery$24;->val$res:Ljava/util/ArrayList;

    if-nez v2, :cond_60

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/messenger/query/StickersQuery$24;->val$cache:Z

    if-nez v2, :cond_60

    const-wide/16 v2, 0x3e8

    :goto_54
    move-object/from16 v0, v20

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 1034
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/query/StickersQuery$24;->val$res:Ljava/util/ArrayList;

    if-nez v2, :cond_63

    .line 1125
    :cond_5f
    :goto_5f
    return-void

    .line 1025
    :cond_60
    const-wide/16 v2, 0x0

    goto :goto_54

    .line 1038
    :cond_63
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/query/StickersQuery$24;->val$res:Ljava/util/ArrayList;

    if-eqz v2, :cond_19d

    .line 1040
    :try_start_69
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1041
    .local v7, "stickerSetsNew":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;>;"
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 1042
    .local v5, "stickerSetsByIdNew":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;>;"
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 1043
    .local v6, "stickerSetsByNameNew":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;>;"
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 1044
    .local v9, "stickersByEmojiNew":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/String;>;"
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 1045
    .local v4, "stickersByIdNew":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lorg/telegram/tgnet/TLRPC$Document;>;"
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 1047
    .local v8, "allStickersNew":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Document;>;>;"
    const/4 v10, 0x0

    .local v10, "a":I
    :goto_88
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/query/StickersQuery$24;->val$res:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v10, v2, :cond_178

    .line 1048
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/query/StickersQuery$24;->val$res:Ljava/util/ArrayList;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    .line 1049
    .local v19, "stickerSet":Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;
    if-nez v19, :cond_a1

    .line 1047
    :cond_9e
    add-int/lit8 v10, v10, 0x1

    goto :goto_88

    .line 1052
    :cond_a1
    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1053
    move-object/from16 v0, v19

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v5, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1054
    move-object/from16 v0, v19

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$StickerSet;->short_name:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v6, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1056
    const/4 v12, 0x0

    .local v12, "b":I
    :goto_c1
    move-object/from16 v0, v19

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v12, v2, :cond_ee

    .line 1057
    move-object/from16 v0, v19

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/telegram/tgnet/TLRPC$Document;

    .line 1058
    .local v14, "document":Lorg/telegram/tgnet/TLRPC$Document;
    if-eqz v14, :cond_db

    instance-of v2, v14, Lorg/telegram/tgnet/TLRPC$TL_documentEmpty;

    if-eqz v2, :cond_de

    .line 1056
    :cond_db
    :goto_db
    add-int/lit8 v12, v12, 0x1

    goto :goto_c1

    .line 1061
    :cond_de
    iget-wide v2, v14, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v4, v2, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_e7
    .catch Ljava/lang/Throwable; {:try_start_69 .. :try_end_e7} :catch_e8

    goto :goto_db

    .line 1113
    .end local v4    # "stickersByIdNew":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lorg/telegram/tgnet/TLRPC$Document;>;"
    .end local v5    # "stickerSetsByIdNew":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;>;"
    .end local v6    # "stickerSetsByNameNew":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;>;"
    .end local v7    # "stickerSetsNew":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;>;"
    .end local v8    # "allStickersNew":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Document;>;>;"
    .end local v9    # "stickersByEmojiNew":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/String;>;"
    .end local v10    # "a":I
    .end local v12    # "b":I
    .end local v14    # "document":Lorg/telegram/tgnet/TLRPC$Document;
    .end local v19    # "stickerSet":Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;
    :catch_e8
    move-exception v15

    .line 1114
    .local v15, "e":Ljava/lang/Throwable;
    invoke-static {v15}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_5f

    .line 1063
    .end local v15    # "e":Ljava/lang/Throwable;
    .restart local v4    # "stickersByIdNew":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lorg/telegram/tgnet/TLRPC$Document;>;"
    .restart local v5    # "stickerSetsByIdNew":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;>;"
    .restart local v6    # "stickerSetsByNameNew":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;>;"
    .restart local v7    # "stickerSetsNew":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;>;"
    .restart local v8    # "allStickersNew":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Document;>;>;"
    .restart local v9    # "stickersByEmojiNew":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/String;>;"
    .restart local v10    # "a":I
    .restart local v12    # "b":I
    .restart local v19    # "stickerSet":Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;
    :cond_ee
    :try_start_ee
    move-object/from16 v0, v19

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$StickerSet;->archived:Z

    if-nez v2, :cond_9e

    .line 1064
    const/4 v12, 0x0

    :goto_f7
    move-object/from16 v0, v19

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->packs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v12, v2, :cond_9e

    .line 1065
    move-object/from16 v0, v19

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->packs:Ljava/util/ArrayList;

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lorg/telegram/tgnet/TLRPC$TL_stickerPack;

    .line 1066
    .local v18, "stickerPack":Lorg/telegram/tgnet/TLRPC$TL_stickerPack;
    if-eqz v18, :cond_113

    move-object/from16 v0, v18

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_stickerPack;->emoticon:Ljava/lang/String;

    if-nez v2, :cond_116

    .line 1064
    :cond_113
    add-int/lit8 v12, v12, 0x1

    goto :goto_f7

    .line 1069
    :cond_116
    move-object/from16 v0, v18

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_stickerPack;->emoticon:Ljava/lang/String;

    const-string v3, "\ufe0f"

    const-string v20, ""

    move-object/from16 v0, v20

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v18

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_stickerPack;->emoticon:Ljava/lang/String;

    .line 1070
    move-object/from16 v0, v18

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_stickerPack;->emoticon:Ljava/lang/String;

    invoke-virtual {v8, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/ArrayList;

    .line 1071
    .local v11, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Document;>;"
    if-nez v11, :cond_140

    .line 1072
    new-instance v11, Ljava/util/ArrayList;

    .end local v11    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Document;>;"
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 1073
    .restart local v11    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Document;>;"
    move-object/from16 v0, v18

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_stickerPack;->emoticon:Ljava/lang/String;

    invoke-virtual {v8, v2, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1075
    :cond_140
    const/4 v13, 0x0

    .local v13, "c":I
    :goto_141
    move-object/from16 v0, v18

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_stickerPack;->documents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v13, v2, :cond_113

    .line 1076
    move-object/from16 v0, v18

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_stickerPack;->documents:Ljava/util/ArrayList;

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Long;

    .line 1077
    .local v16, "id":Ljava/lang/Long;
    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_166

    .line 1078
    move-object/from16 v0, v18

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_stickerPack;->emoticon:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v9, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1080
    :cond_166
    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lorg/telegram/tgnet/TLRPC$Document;

    .line 1081
    .local v17, "sticker":Lorg/telegram/tgnet/TLRPC$Document;
    if-eqz v17, :cond_175

    .line 1082
    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1075
    :cond_175
    add-int/lit8 v13, v13, 0x1

    goto :goto_141

    .line 1089
    .end local v11    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Document;>;"
    .end local v12    # "b":I
    .end local v13    # "c":I
    .end local v16    # "id":Ljava/lang/Long;
    .end local v17    # "sticker":Lorg/telegram/tgnet/TLRPC$Document;
    .end local v18    # "stickerPack":Lorg/telegram/tgnet/TLRPC$TL_stickerPack;
    .end local v19    # "stickerSet":Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;
    :cond_178
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/messenger/query/StickersQuery$24;->val$cache:Z

    if-nez v2, :cond_191

    .line 1090
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/query/StickersQuery$24;->val$type:I

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/messenger/query/StickersQuery$24;->val$date:I

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/query/StickersQuery$24;->val$hash:I

    move/from16 v20, v0

    move/from16 v0, v20

    # invokes: Lorg/telegram/messenger/query/StickersQuery;->putStickersToCache(ILjava/util/ArrayList;II)V
    invoke-static {v2, v7, v3, v0}, Lorg/telegram/messenger/query/StickersQuery;->access$2500(ILjava/util/ArrayList;II)V

    .line 1092
    :cond_191
    new-instance v2, Lorg/telegram/messenger/query/StickersQuery$24$2;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v9}, Lorg/telegram/messenger/query/StickersQuery$24$2;-><init>(Lorg/telegram/messenger/query/StickersQuery$24;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/HashMap;Ljava/util/HashMap;)V

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V
    :try_end_19b
    .catch Ljava/lang/Throwable; {:try_start_ee .. :try_end_19b} :catch_e8

    goto/16 :goto_5f

    .line 1116
    .end local v4    # "stickersByIdNew":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lorg/telegram/tgnet/TLRPC$Document;>;"
    .end local v5    # "stickerSetsByIdNew":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;>;"
    .end local v6    # "stickerSetsByNameNew":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;>;"
    .end local v7    # "stickerSetsNew":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;>;"
    .end local v8    # "allStickersNew":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Document;>;>;"
    .end local v9    # "stickersByEmojiNew":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/String;>;"
    .end local v10    # "a":I
    :cond_19d
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/messenger/query/StickersQuery$24;->val$cache:Z

    if-nez v2, :cond_5f

    .line 1117
    new-instance v2, Lorg/telegram/messenger/query/StickersQuery$24$3;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lorg/telegram/messenger/query/StickersQuery$24$3;-><init>(Lorg/telegram/messenger/query/StickersQuery$24;)V

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 1123
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/query/StickersQuery$24;->val$type:I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/query/StickersQuery$24;->val$date:I

    move/from16 v20, v0

    const/16 v21, 0x0

    move/from16 v0, v20

    move/from16 v1, v21

    # invokes: Lorg/telegram/messenger/query/StickersQuery;->putStickersToCache(ILjava/util/ArrayList;II)V
    invoke-static {v2, v3, v0, v1}, Lorg/telegram/messenger/query/StickersQuery;->access$2500(ILjava/util/ArrayList;II)V

    goto/16 :goto_5f
.end method
