.class Lorg/telegram/messenger/MessagesStorage$69;
.super Ljava/lang/Object;
.source "MessagesStorage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesStorage;->putMessages(Ljava/util/ArrayList;ZZZIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MessagesStorage;

.field final synthetic val$doNotUpdateDialogDate:Z

.field final synthetic val$downloadMask:I

.field final synthetic val$ifNoLastMessage:Z

.field final synthetic val$messages:Ljava/util/ArrayList;

.field final synthetic val$withTransaction:Z


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesStorage;Ljava/util/ArrayList;ZZIZ)V
    .registers 7
    .param p1, "this$0"    # Lorg/telegram/messenger/MessagesStorage;

    .prologue
    .line 4628
    iput-object p1, p0, Lorg/telegram/messenger/MessagesStorage$69;->this$0:Lorg/telegram/messenger/MessagesStorage;

    iput-object p2, p0, Lorg/telegram/messenger/MessagesStorage$69;->val$messages:Ljava/util/ArrayList;

    iput-boolean p3, p0, Lorg/telegram/messenger/MessagesStorage$69;->val$withTransaction:Z

    iput-boolean p4, p0, Lorg/telegram/messenger/MessagesStorage$69;->val$doNotUpdateDialogDate:Z

    iput p5, p0, Lorg/telegram/messenger/MessagesStorage$69;->val$downloadMask:I

    iput-boolean p6, p0, Lorg/telegram/messenger/MessagesStorage$69;->val$ifNoLastMessage:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 14

    .prologue
    const/4 v12, 0x0

    .line 4631
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage$69;->this$0:Lorg/telegram/messenger/MessagesStorage;

    iget-object v1, p0, Lorg/telegram/messenger/MessagesStorage$69;->val$messages:Ljava/util/ArrayList;

    iget-boolean v2, p0, Lorg/telegram/messenger/MessagesStorage$69;->val$withTransaction:Z

    iget-boolean v3, p0, Lorg/telegram/messenger/MessagesStorage$69;->val$doNotUpdateDialogDate:Z

    iget v4, p0, Lorg/telegram/messenger/MessagesStorage$69;->val$downloadMask:I

    iget-boolean v5, p0, Lorg/telegram/messenger/MessagesStorage$69;->val$ifNoLastMessage:Z

    # invokes: Lorg/telegram/messenger/MessagesStorage;->putMessagesInternal(Ljava/util/ArrayList;ZZIZ)V
    invoke-static/range {v0 .. v5}, Lorg/telegram/messenger/MessagesStorage;->access$1300(Lorg/telegram/messenger/MessagesStorage;Ljava/util/ArrayList;ZZIZ)V

    .line 4634
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v1, "mainconfig"

    invoke-virtual {v0, v1, v12}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v11

    .line 4635
    .local v11, "preferences":Landroid/content/SharedPreferences;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_19
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage$69;->val$messages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v9, v0, :cond_a1

    .line 4636
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage$69;->val$messages:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/tgnet/TLRPC$Message;

    .line 4637
    .local v10, "message":Lorg/telegram/tgnet/TLRPC$Message;
    iget-wide v0, v10, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_3e

    .line 4638
    iget-object v0, v10, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    if-eqz v0, :cond_7f

    .line 4639
    iget-object v0, v10, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    int-to-long v0, v0

    iput-wide v0, v10, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    .line 4646
    :cond_3e
    :goto_3e
    iget-wide v0, v10, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_7c

    .line 4647
    const-string v0, "cat_id"

    invoke-interface {v11, v0, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 4649
    .local v6, "catId":I
    const-wide/16 v0, 0x1f4

    :try_start_51
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_54
    .catch Ljava/lang/InterruptedException; {:try_start_51 .. :try_end_54} :catch_97

    .line 4653
    :goto_54
    new-instance v7, Lorg/telegram/SQLite/DBHelper;

    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-direct {v7, v0}, Lorg/telegram/SQLite/DBHelper;-><init>(Landroid/content/Context;)V

    .line 4654
    .local v7, "dbHelper":Lorg/telegram/SQLite/DBHelper;
    invoke-virtual {v7}, Lorg/telegram/SQLite/DBHelper;->open()V

    .line 4656
    :try_start_5e
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage$69;->val$messages:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Message;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    invoke-virtual {v7, v0, v6}, Lorg/telegram/SQLite/DBHelper;->addPM(II)V
    :try_end_6c
    .catchall {:try_start_5e .. :try_end_6c} :catchall_9c

    .line 4658
    invoke-virtual {v7}, Lorg/telegram/SQLite/DBHelper;->close()V

    .line 4660
    invoke-interface {v11}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "cat_id"

    invoke-interface {v0, v1, v12}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 4635
    .end local v6    # "catId":I
    .end local v7    # "dbHelper":Lorg/telegram/SQLite/DBHelper;
    :cond_7c
    add-int/lit8 v9, v9, 0x1

    goto :goto_19

    .line 4640
    :cond_7f
    iget-object v0, v10, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    if-eqz v0, :cond_8e

    .line 4641
    iget-object v0, v10, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    neg-int v0, v0

    int-to-long v0, v0

    iput-wide v0, v10, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    goto :goto_3e

    .line 4643
    :cond_8e
    iget-object v0, v10, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    neg-int v0, v0

    int-to-long v0, v0

    iput-wide v0, v10, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    goto :goto_3e

    .line 4650
    .restart local v6    # "catId":I
    :catch_97
    move-exception v8

    .line 4651
    .local v8, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v8}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_54

    .line 4658
    .end local v8    # "e":Ljava/lang/InterruptedException;
    .restart local v7    # "dbHelper":Lorg/telegram/SQLite/DBHelper;
    :catchall_9c
    move-exception v0

    invoke-virtual {v7}, Lorg/telegram/SQLite/DBHelper;->close()V

    throw v0

    .line 4663
    .end local v6    # "catId":I
    .end local v7    # "dbHelper":Lorg/telegram/SQLite/DBHelper;
    .end local v10    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    :cond_a1
    return-void
.end method
