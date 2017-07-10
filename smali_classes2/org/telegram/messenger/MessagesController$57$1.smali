.class Lorg/telegram/messenger/MessagesController$57$1;
.super Ljava/lang/Object;
.source "MessagesController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesController$57;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/MessagesController$57;

.field final synthetic val$dialogsRes:Lorg/telegram/tgnet/TLRPC$messages_Dialogs;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesController$57;Lorg/telegram/tgnet/TLRPC$messages_Dialogs;)V
    .registers 3
    .param p1, "this$1"    # Lorg/telegram/messenger/MessagesController$57;

    .prologue
    .line 3256
    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$57$1;->this$1:Lorg/telegram/messenger/MessagesController$57;

    iput-object p2, p0, Lorg/telegram/messenger/MessagesController$57$1;->val$dialogsRes:Lorg/telegram/tgnet/TLRPC$messages_Dialogs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 25

    .prologue
    .line 3261
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$57$1;->val$dialogsRes:Lorg/telegram/tgnet/TLRPC$messages_Dialogs;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v3, 0x64

    if-ne v2, v3, :cond_171

    .line 3262
    const/16 v21, 0x0

    .line 3263
    .local v21, "lastMessage":Lorg/telegram/tgnet/TLRPC$Message;
    const/4 v11, 0x0

    .local v11, "a":I
    :goto_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$57$1;->val$dialogsRes:Lorg/telegram/tgnet/TLRPC$messages_Dialogs;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v11, v2, :cond_3a

    .line 3264
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$57$1;->val$dialogsRes:Lorg/telegram/tgnet/TLRPC$messages_Dialogs;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lorg/telegram/tgnet/TLRPC$Message;

    .line 3265
    .local v22, "message":Lorg/telegram/tgnet/TLRPC$Message;
    if-eqz v21, :cond_35

    move-object/from16 v0, v22

    iget v2, v0, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    move-object/from16 v0, v21

    iget v3, v0, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    if-ge v2, v3, :cond_37

    .line 3266
    :cond_35
    move-object/from16 v21, v22

    .line 3263
    :cond_37
    add-int/lit8 v11, v11, 0x1

    goto :goto_11

    .line 3269
    .end local v22    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    :cond_3a
    move-object/from16 v0, v21

    iget v5, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    .line 3270
    .local v5, "offsetId":I
    move-object/from16 v0, v21

    iget v2, v0, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    sput v2, Lorg/telegram/messenger/UserConfig;->migrateOffsetDate:I

    .line 3271
    move-object/from16 v0, v21

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    if-eqz v2, :cond_e2

    .line 3272
    move-object/from16 v0, v21

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    sput v2, Lorg/telegram/messenger/UserConfig;->migrateOffsetChannelId:I

    .line 3273
    const/4 v2, 0x0

    sput v2, Lorg/telegram/messenger/UserConfig;->migrateOffsetChatId:I

    .line 3274
    const/4 v2, 0x0

    sput v2, Lorg/telegram/messenger/UserConfig;->migrateOffsetUserId:I

    .line 3275
    const/4 v11, 0x0

    :goto_5b
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$57$1;->val$dialogsRes:Lorg/telegram/tgnet/TLRPC$messages_Dialogs;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;->chats:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v11, v2, :cond_7d

    .line 3276
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$57$1;->val$dialogsRes:Lorg/telegram/tgnet/TLRPC$messages_Dialogs;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;->chats:Ljava/util/ArrayList;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 3277
    .local v12, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    iget v2, v12, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    sget v3, Lorg/telegram/messenger/UserConfig;->migrateOffsetChannelId:I

    if-ne v2, v3, :cond_de

    .line 3278
    iget-wide v2, v12, Lorg/telegram/tgnet/TLRPC$Chat;->access_hash:J

    sput-wide v2, Lorg/telegram/messenger/UserConfig;->migrateOffsetAccess:J

    .line 3309
    .end local v11    # "a":I
    .end local v12    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    .end local v21    # "lastMessage":Lorg/telegram/tgnet/TLRPC$Message;
    :cond_7d
    :goto_7d
    new-instance v17, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$57$1;->val$dialogsRes:Lorg/telegram/tgnet/TLRPC$messages_Dialogs;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0xc

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3310
    .local v17, "dids":Ljava/lang/StringBuilder;
    new-instance v16, Ljava/util/HashMap;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashMap;-><init>()V

    .line 3311
    .local v16, "dialogHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lorg/telegram/tgnet/TLRPC$TL_dialog;>;"
    const/4 v11, 0x0

    .restart local v11    # "a":I
    :goto_96
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$57$1;->val$dialogsRes:Lorg/telegram/tgnet/TLRPC$messages_Dialogs;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v11, v2, :cond_18d

    .line 3312
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$57$1;->val$dialogsRes:Lorg/telegram/tgnet/TLRPC$messages_Dialogs;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    .line 3313
    .local v15, "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    iget-object v2, v15, Lorg/telegram/tgnet/TLRPC$TL_dialog;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    if-eqz v2, :cond_174

    .line 3314
    iget-object v2, v15, Lorg/telegram/tgnet/TLRPC$TL_dialog;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    neg-int v2, v2

    int-to-long v2, v2

    iput-wide v2, v15, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    .line 3320
    :goto_bc
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_c9

    .line 3321
    const-string v2, ","

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3323
    :cond_c9
    iget-wide v2, v15, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 3324
    iget-wide v2, v15, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3311
    add-int/lit8 v11, v11, 0x1

    goto :goto_96

    .line 3275
    .end local v15    # "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    .end local v16    # "dialogHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lorg/telegram/tgnet/TLRPC$TL_dialog;>;"
    .end local v17    # "dids":Ljava/lang/StringBuilder;
    .restart local v12    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    .restart local v21    # "lastMessage":Lorg/telegram/tgnet/TLRPC$Message;
    :cond_de
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_5b

    .line 3282
    .end local v12    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_e2
    move-object/from16 v0, v21

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    if-eqz v2, :cond_12f

    .line 3283
    move-object/from16 v0, v21

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    sput v2, Lorg/telegram/messenger/UserConfig;->migrateOffsetChatId:I

    .line 3284
    const/4 v2, 0x0

    sput v2, Lorg/telegram/messenger/UserConfig;->migrateOffsetChannelId:I

    .line 3285
    const/4 v2, 0x0

    sput v2, Lorg/telegram/messenger/UserConfig;->migrateOffsetUserId:I

    .line 3286
    const/4 v11, 0x0

    :goto_f9
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$57$1;->val$dialogsRes:Lorg/telegram/tgnet/TLRPC$messages_Dialogs;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;->chats:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v11, v2, :cond_7d

    .line 3287
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$57$1;->val$dialogsRes:Lorg/telegram/tgnet/TLRPC$messages_Dialogs;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;->chats:Ljava/util/ArrayList;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 3288
    .restart local v12    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    iget v2, v12, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    sget v3, Lorg/telegram/messenger/UserConfig;->migrateOffsetChatId:I

    if-ne v2, v3, :cond_12c

    .line 3289
    iget-wide v2, v12, Lorg/telegram/tgnet/TLRPC$Chat;->access_hash:J

    sput-wide v2, Lorg/telegram/messenger/UserConfig;->migrateOffsetAccess:J
    :try_end_11b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11b} :catch_11d

    goto/16 :goto_7d

    .line 3368
    .end local v5    # "offsetId":I
    .end local v11    # "a":I
    .end local v12    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    .end local v21    # "lastMessage":Lorg/telegram/tgnet/TLRPC$Message;
    :catch_11d
    move-exception v20

    .line 3369
    .local v20, "e":Ljava/lang/Exception;
    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 3370
    new-instance v2, Lorg/telegram/messenger/MessagesController$57$1$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lorg/telegram/messenger/MessagesController$57$1$1;-><init>(Lorg/telegram/messenger/MessagesController$57$1;)V

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 3377
    .end local v20    # "e":Ljava/lang/Exception;
    :goto_12b
    return-void

    .line 3286
    .restart local v5    # "offsetId":I
    .restart local v11    # "a":I
    .restart local v12    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    .restart local v21    # "lastMessage":Lorg/telegram/tgnet/TLRPC$Message;
    :cond_12c
    add-int/lit8 v11, v11, 0x1

    goto :goto_f9

    .line 3293
    .end local v12    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_12f
    :try_start_12f
    move-object/from16 v0, v21

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    if-eqz v2, :cond_7d

    .line 3294
    move-object/from16 v0, v21

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    sput v2, Lorg/telegram/messenger/UserConfig;->migrateOffsetUserId:I

    .line 3295
    const/4 v2, 0x0

    sput v2, Lorg/telegram/messenger/UserConfig;->migrateOffsetChatId:I

    .line 3296
    const/4 v2, 0x0

    sput v2, Lorg/telegram/messenger/UserConfig;->migrateOffsetChannelId:I

    .line 3297
    const/4 v11, 0x0

    :goto_146
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$57$1;->val$dialogsRes:Lorg/telegram/tgnet/TLRPC$messages_Dialogs;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;->users:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v11, v2, :cond_7d

    .line 3298
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$57$1;->val$dialogsRes:Lorg/telegram/tgnet/TLRPC$messages_Dialogs;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;->users:Ljava/util/ArrayList;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lorg/telegram/tgnet/TLRPC$User;

    .line 3299
    .local v23, "user":Lorg/telegram/tgnet/TLRPC$User;
    move-object/from16 v0, v23

    iget v2, v0, Lorg/telegram/tgnet/TLRPC$User;->id:I

    sget v3, Lorg/telegram/messenger/UserConfig;->migrateOffsetUserId:I

    if-ne v2, v3, :cond_16e

    .line 3300
    move-object/from16 v0, v23

    iget-wide v2, v0, Lorg/telegram/tgnet/TLRPC$User;->access_hash:J

    sput-wide v2, Lorg/telegram/messenger/UserConfig;->migrateOffsetAccess:J

    goto/16 :goto_7d

    .line 3297
    :cond_16e
    add-int/lit8 v11, v11, 0x1

    goto :goto_146

    .line 3306
    .end local v5    # "offsetId":I
    .end local v11    # "a":I
    .end local v21    # "lastMessage":Lorg/telegram/tgnet/TLRPC$Message;
    .end local v23    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_171
    const/4 v5, -0x1

    .restart local v5    # "offsetId":I
    goto/16 :goto_7d

    .line 3315
    .restart local v11    # "a":I
    .restart local v15    # "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    .restart local v16    # "dialogHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lorg/telegram/tgnet/TLRPC$TL_dialog;>;"
    .restart local v17    # "dids":Ljava/lang/StringBuilder;
    :cond_174
    iget-object v2, v15, Lorg/telegram/tgnet/TLRPC$TL_dialog;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    if-eqz v2, :cond_184

    .line 3316
    iget-object v2, v15, Lorg/telegram/tgnet/TLRPC$TL_dialog;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    neg-int v2, v2

    int-to-long v2, v2

    iput-wide v2, v15, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    goto/16 :goto_bc

    .line 3318
    :cond_184
    iget-object v2, v15, Lorg/telegram/tgnet/TLRPC$TL_dialog;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    int-to-long v2, v2

    iput-wide v2, v15, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    goto/16 :goto_bc

    .line 3326
    .end local v15    # "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    :cond_18d
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "SELECT did FROM dialogs WHERE did IN (%s)"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v3, v4, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v13

    .line 3327
    .local v13, "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    :cond_1ae
    :goto_1ae
    invoke-virtual {v13}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v2

    if-eqz v2, :cond_20f

    .line 3328
    const/4 v2, 0x0

    invoke-virtual {v13, v2}, Lorg/telegram/SQLite/SQLiteCursor;->longValue(I)J

    move-result-wide v18

    .line 3329
    .local v18, "did":J
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    .line 3330
    .restart local v15    # "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    if-eqz v15, :cond_1ae

    .line 3331
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$57$1;->val$dialogsRes:Lorg/telegram/tgnet/TLRPC$messages_Dialogs;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3332
    const/4 v11, 0x0

    :goto_1d1
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$57$1;->val$dialogsRes:Lorg/telegram/tgnet/TLRPC$messages_Dialogs;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v11, v2, :cond_1ae

    .line 3333
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$57$1;->val$dialogsRes:Lorg/telegram/tgnet/TLRPC$messages_Dialogs;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lorg/telegram/tgnet/TLRPC$Message;

    .line 3334
    .restart local v22    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/MessageObject;->getDialogId(Lorg/telegram/tgnet/TLRPC$Message;)J

    move-result-wide v2

    cmp-long v2, v2, v18

    if-eqz v2, :cond_1f4

    .line 3332
    :cond_1f1
    add-int/lit8 v11, v11, 0x1

    goto :goto_1d1

    .line 3337
    :cond_1f4
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$57$1;->val$dialogsRes:Lorg/telegram/tgnet/TLRPC$messages_Dialogs;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3338
    add-int/lit8 v11, v11, -0x1

    .line 3339
    move-object/from16 v0, v22

    iget v2, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    iget v3, v15, Lorg/telegram/tgnet/TLRPC$TL_dialog;->top_message:I

    if-ne v2, v3, :cond_20a

    .line 3340
    const/4 v2, 0x0

    iput v2, v15, Lorg/telegram/tgnet/TLRPC$TL_dialog;->top_message:I

    .line 3342
    :cond_20a
    iget v2, v15, Lorg/telegram/tgnet/TLRPC$TL_dialog;->top_message:I

    if-nez v2, :cond_1f1

    goto :goto_1ae

    .line 3348
    .end local v15    # "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    .end local v18    # "did":J
    .end local v22    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    :cond_20f
    invoke-virtual {v13}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 3349
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "SELECT min(date) FROM dialogs WHERE date != 0 AND did >> 32 IN (0, -1)"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v13

    .line 3350
    invoke-virtual {v13}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v2

    if-eqz v2, :cond_27e

    .line 3351
    const v2, 0x55e4dc70

    const/4 v3, 0x0

    invoke-virtual {v13, v3}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 3352
    .local v14, "date":I
    const/4 v11, 0x0

    :goto_236
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$57$1;->val$dialogsRes:Lorg/telegram/tgnet/TLRPC$messages_Dialogs;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v11, v2, :cond_27e

    .line 3353
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$57$1;->val$dialogsRes:Lorg/telegram/tgnet/TLRPC$messages_Dialogs;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lorg/telegram/tgnet/TLRPC$Message;

    .line 3354
    .restart local v22    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    move-object/from16 v0, v22

    iget v2, v0, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    if-ge v2, v14, :cond_27b

    .line 3355
    const/4 v5, -0x1

    .line 3356
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$57$1;->val$dialogsRes:Lorg/telegram/tgnet/TLRPC$messages_Dialogs;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3357
    add-int/lit8 v11, v11, -0x1

    .line 3358
    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/MessageObject;->getDialogId(Lorg/telegram/tgnet/TLRPC$Message;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    .line 3359
    .restart local v15    # "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    if-eqz v15, :cond_27b

    .line 3360
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$57$1;->val$dialogsRes:Lorg/telegram/tgnet/TLRPC$messages_Dialogs;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3352
    .end local v15    # "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    :cond_27b
    add-int/lit8 v11, v11, 0x1

    goto :goto_236

    .line 3365
    .end local v14    # "date":I
    .end local v22    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    :cond_27e
    invoke-virtual {v13}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 3367
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$57$1;->this$1:Lorg/telegram/messenger/MessagesController$57;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController$57;->this$0:Lorg/telegram/messenger/MessagesController;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessagesController$57$1;->val$dialogsRes:Lorg/telegram/tgnet/TLRPC$messages_Dialogs;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual/range {v2 .. v10}, Lorg/telegram/messenger/MessagesController;->processLoadedDialogs(Lorg/telegram/tgnet/TLRPC$messages_Dialogs;Ljava/util/ArrayList;IIIZZZ)V
    :try_end_294
    .catch Ljava/lang/Exception; {:try_start_12f .. :try_end_294} :catch_11d

    goto/16 :goto_12b
.end method
