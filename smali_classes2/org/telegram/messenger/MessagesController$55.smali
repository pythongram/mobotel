.class Lorg/telegram/messenger/MessagesController$55;
.super Ljava/lang/Object;
.source "MessagesController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesController;->processLoadedMessages(Lorg/telegram/tgnet/TLRPC$messages_Messages;JIIIZIIIIIIZZIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MessagesController;

.field final synthetic val$classGuid:I

.field final synthetic val$count:I

.field final synthetic val$dialog_id:J

.field final synthetic val$first_unread:I

.field final synthetic val$isCache:Z

.field final synthetic val$isChannel:Z

.field final synthetic val$isEnd:Z

.field final synthetic val$last_date:I

.field final synthetic val$last_message_id:I

.field final synthetic val$loadIndex:I

.field final synthetic val$load_type:I

.field final synthetic val$max_id:I

.field final synthetic val$messagesRes:Lorg/telegram/tgnet/TLRPC$messages_Messages;

.field final synthetic val$offset_date:I

.field final synthetic val$queryFromServer:Z

.field final synthetic val$unread_count:I


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLRPC$messages_Messages;JZIIZIIIIIZIIIZ)V
    .registers 20
    .param p1, "this$0"    # Lorg/telegram/messenger/MessagesController;

    .prologue
    .line 3020
    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$55;->this$0:Lorg/telegram/messenger/MessagesController;

    iput-object p2, p0, Lorg/telegram/messenger/MessagesController$55;->val$messagesRes:Lorg/telegram/tgnet/TLRPC$messages_Messages;

    iput-wide p3, p0, Lorg/telegram/messenger/MessagesController$55;->val$dialog_id:J

    iput-boolean p5, p0, Lorg/telegram/messenger/MessagesController$55;->val$isCache:Z

    iput p6, p0, Lorg/telegram/messenger/MessagesController$55;->val$count:I

    iput p7, p0, Lorg/telegram/messenger/MessagesController$55;->val$load_type:I

    iput-boolean p8, p0, Lorg/telegram/messenger/MessagesController$55;->val$queryFromServer:Z

    iput p9, p0, Lorg/telegram/messenger/MessagesController$55;->val$first_unread:I

    iput p10, p0, Lorg/telegram/messenger/MessagesController$55;->val$max_id:I

    iput p11, p0, Lorg/telegram/messenger/MessagesController$55;->val$offset_date:I

    iput p12, p0, Lorg/telegram/messenger/MessagesController$55;->val$classGuid:I

    iput p13, p0, Lorg/telegram/messenger/MessagesController$55;->val$last_message_id:I

    iput-boolean p14, p0, Lorg/telegram/messenger/MessagesController$55;->val$isChannel:Z

    move/from16 v0, p15

    iput v0, p0, Lorg/telegram/messenger/MessagesController$55;->val$loadIndex:I

    move/from16 v0, p16

    iput v0, p0, Lorg/telegram/messenger/MessagesController$55;->val$unread_count:I

    move/from16 v0, p17

    iput v0, p0, Lorg/telegram/messenger/MessagesController$55;->val$last_date:I

    move/from16 v0, p18

    iput-boolean v0, p0, Lorg/telegram/messenger/MessagesController$55;->val$isEnd:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 36

    .prologue
    .line 3023
    const/4 v14, 0x0

    .line 3024
    .local v14, "createDialog":Z
    const/16 v23, 0x0

    .line 3025
    .local v23, "isMegagroup":Z
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/MessagesController$55;->val$messagesRes:Lorg/telegram/tgnet/TLRPC$messages_Messages;

    instance-of v5, v5, Lorg/telegram/tgnet/TLRPC$TL_messages_channelMessages;

    if-eqz v5, :cond_9d

    .line 3026
    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/telegram/messenger/MessagesController$55;->val$dialog_id:J

    long-to-int v5, v8

    neg-int v6, v5

    .line 3027
    .local v6, "channelId":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/MessagesController$55;->this$0:Lorg/telegram/messenger/MessagesController;

    invoke-static {v5}, Lorg/telegram/messenger/MessagesController;->access$1400(Lorg/telegram/messenger/MessagesController;)Ljava/util/HashMap;

    move-result-object v5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    .line 3028
    .local v17, "channelPts":Ljava/lang/Integer;
    if-nez v17, :cond_78

    .line 3029
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v5

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/MessagesStorage;->getChannelPtsSync(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    .line 3030
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-nez v5, :cond_78

    .line 3031
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/MessagesController$55;->this$0:Lorg/telegram/messenger/MessagesController;

    invoke-static {v5}, Lorg/telegram/messenger/MessagesController;->access$1400(Lorg/telegram/messenger/MessagesController;)Ljava/util/HashMap;

    move-result-object v5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/telegram/messenger/MessagesController$55;->val$messagesRes:Lorg/telegram/tgnet/TLRPC$messages_Messages;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$messages_Messages;->pts:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3032
    const/4 v14, 0x1

    .line 3033
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/MessagesController$55;->this$0:Lorg/telegram/messenger/MessagesController;

    invoke-static {v5}, Lorg/telegram/messenger/MessagesController;->access$1600(Lorg/telegram/messenger/MessagesController;)Landroid/util/SparseIntArray;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v5

    if-ltz v5, :cond_e1

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/MessagesController$55;->this$0:Lorg/telegram/messenger/MessagesController;

    invoke-static {v5}, Lorg/telegram/messenger/MessagesController;->access$1500(Lorg/telegram/messenger/MessagesController;)Landroid/util/SparseIntArray;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v5

    if-gez v5, :cond_e1

    .line 3034
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/MessagesController$55;->this$0:Lorg/telegram/messenger/MessagesController;

    const/4 v7, 0x2

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Lorg/telegram/messenger/MessagesController;->getChannelDifference(IIJLorg/telegram/tgnet/TLRPC$InputChannel;)V

    .line 3040
    :cond_78
    :goto_78
    const/4 v4, 0x0

    .local v4, "a":I
    :goto_79
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/MessagesController$55;->val$messagesRes:Lorg/telegram/tgnet/TLRPC$messages_Messages;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$messages_Messages;->chats:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_9d

    .line 3041
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/MessagesController$55;->val$messagesRes:Lorg/telegram/tgnet/TLRPC$messages_Messages;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$messages_Messages;->chats:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 3042
    .local v18, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    move-object/from16 v0, v18

    iget v5, v0, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    if-ne v5, v6, :cond_e9

    .line 3043
    move-object/from16 v0, v18

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    move/from16 v23, v0

    .line 3048
    .end local v4    # "a":I
    .end local v6    # "channelId":I
    .end local v17    # "channelPts":Ljava/lang/Integer;
    .end local v18    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_9d
    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/telegram/messenger/MessagesController$55;->val$dialog_id:J

    long-to-int v0, v8

    move/from16 v24, v0

    .line 3049
    .local v24, "lower_id":I
    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/telegram/messenger/MessagesController$55;->val$dialog_id:J

    const/16 v5, 0x20

    shr-long/2addr v8, v5

    long-to-int v0, v8

    move/from16 v20, v0

    .line 3050
    .local v20, "high_id":I
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lorg/telegram/messenger/MessagesController$55;->val$isCache:Z

    if-nez v5, :cond_bd

    .line 3051
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/MessagesController$55;->val$messagesRes:Lorg/telegram/tgnet/TLRPC$messages_Messages;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-static {v5}, Lorg/telegram/messenger/ImageLoader;->saveMessagesThumbs(Ljava/util/ArrayList;)V

    .line 3053
    :cond_bd
    const/4 v5, 0x1

    move/from16 v0, v20

    if-eq v0, v5, :cond_ec

    if-eqz v24, :cond_ec

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lorg/telegram/messenger/MessagesController$55;->val$isCache:Z

    if-eqz v5, :cond_ec

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/MessagesController$55;->val$messagesRes:Lorg/telegram/tgnet/TLRPC$messages_Messages;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_ec

    .line 3054
    new-instance v5, Lorg/telegram/messenger/MessagesController$55$1;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lorg/telegram/messenger/MessagesController$55$1;-><init>(Lorg/telegram/messenger/MessagesController$55;)V

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 3164
    :goto_e0
    return-void

    .line 3036
    .end local v20    # "high_id":I
    .end local v24    # "lower_id":I
    .restart local v6    # "channelId":I
    .restart local v17    # "channelPts":Ljava/lang/Integer;
    :cond_e1
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/MessagesController$55;->this$0:Lorg/telegram/messenger/MessagesController;

    invoke-static {v5, v6}, Lorg/telegram/messenger/MessagesController;->access$4300(Lorg/telegram/messenger/MessagesController;I)V

    goto :goto_78

    .line 3040
    .restart local v4    # "a":I
    .restart local v18    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_e9
    add-int/lit8 v4, v4, 0x1

    goto :goto_79

    .line 3062
    .end local v4    # "a":I
    .end local v6    # "channelId":I
    .end local v17    # "channelPts":Ljava/lang/Integer;
    .end local v18    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    .restart local v20    # "high_id":I
    .restart local v24    # "lower_id":I
    :cond_ec
    new-instance v33, Ljava/util/HashMap;

    invoke-direct/range {v33 .. v33}, Ljava/util/HashMap;-><init>()V

    .line 3063
    .local v33, "usersDict":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lorg/telegram/tgnet/TLRPC$User;>;"
    new-instance v19, Ljava/util/HashMap;

    invoke-direct/range {v19 .. v19}, Ljava/util/HashMap;-><init>()V

    .line 3064
    .local v19, "chatsDict":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lorg/telegram/tgnet/TLRPC$Chat;>;"
    const/4 v4, 0x0

    .restart local v4    # "a":I
    :goto_f7
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/MessagesController$55;->val$messagesRes:Lorg/telegram/tgnet/TLRPC$messages_Messages;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$messages_Messages;->users:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_121

    .line 3065
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/MessagesController$55;->val$messagesRes:Lorg/telegram/tgnet/TLRPC$messages_Messages;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$messages_Messages;->users:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lorg/telegram/tgnet/TLRPC$User;

    .line 3066
    .local v31, "u":Lorg/telegram/tgnet/TLRPC$User;
    move-object/from16 v0, v31

    iget v5, v0, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v33

    move-object/from16 v1, v31

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3064
    add-int/lit8 v4, v4, 0x1

    goto :goto_f7

    .line 3068
    .end local v31    # "u":Lorg/telegram/tgnet/TLRPC$User;
    :cond_121
    const/4 v4, 0x0

    :goto_122
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/MessagesController$55;->val$messagesRes:Lorg/telegram/tgnet/TLRPC$messages_Messages;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$messages_Messages;->chats:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_14c

    .line 3069
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/MessagesController$55;->val$messagesRes:Lorg/telegram/tgnet/TLRPC$messages_Messages;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$messages_Messages;->chats:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 3070
    .local v16, "c":Lorg/telegram/tgnet/TLRPC$Chat;
    move-object/from16 v0, v16

    iget v5, v0, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3068
    add-int/lit8 v4, v4, 0x1

    goto :goto_122

    .line 3072
    .end local v16    # "c":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_14c
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/MessagesController$55;->val$messagesRes:Lorg/telegram/tgnet/TLRPC$messages_Messages;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v30

    .line 3073
    .local v30, "size":I
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lorg/telegram/messenger/MessagesController$55;->val$isCache:Z

    if-nez v5, :cond_281

    .line 3074
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/MessagesController$55;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v5, v5, Lorg/telegram/messenger/MessagesController;->dialogs_read_inbox_max:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/telegram/messenger/MessagesController$55;->val$dialog_id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Integer;

    .line 3075
    .local v21, "inboxValue":Ljava/lang/Integer;
    if-nez v21, :cond_196

    .line 3076
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v5

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/telegram/messenger/MessagesController$55;->val$dialog_id:J

    invoke-virtual {v5, v7, v8, v9}, Lorg/telegram/messenger/MessagesStorage;->getDialogReadMax(ZJ)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    .line 3077
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/MessagesController$55;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v5, v5, Lorg/telegram/messenger/MessagesController;->dialogs_read_inbox_max:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/telegram/messenger/MessagesController$55;->val$dialog_id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object/from16 v0, v21

    invoke-virtual {v5, v7, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3080
    :cond_196
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/MessagesController$55;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v5, v5, Lorg/telegram/messenger/MessagesController;->dialogs_read_outbox_max:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/telegram/messenger/MessagesController$55;->val$dialog_id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/Integer;

    .line 3081
    .local v29, "outboxValue":Ljava/lang/Integer;
    if-nez v29, :cond_1d0

    .line 3082
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v5

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/telegram/messenger/MessagesController$55;->val$dialog_id:J

    invoke-virtual {v5, v7, v8, v9}, Lorg/telegram/messenger/MessagesStorage;->getDialogReadMax(ZJ)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    .line 3083
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/MessagesController$55;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v5, v5, Lorg/telegram/messenger/MessagesController;->dialogs_read_outbox_max:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/telegram/messenger/MessagesController$55;->val$dialog_id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object/from16 v0, v29

    invoke-virtual {v5, v7, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3086
    :cond_1d0
    const/4 v4, 0x0

    :goto_1d1
    move/from16 v0, v30

    if-ge v4, v0, :cond_26a

    .line 3087
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/MessagesController$55;->val$messagesRes:Lorg/telegram/tgnet/TLRPC$messages_Messages;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lorg/telegram/tgnet/TLRPC$Message;

    .line 3088
    .local v25, "message":Lorg/telegram/tgnet/TLRPC$Message;
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lorg/telegram/messenger/MessagesController$55;->val$isCache:Z

    if-nez v5, :cond_1f8

    move-object/from16 v0, v25

    iget-boolean v5, v0, Lorg/telegram/tgnet/TLRPC$Message;->post:Z

    if-eqz v5, :cond_1f8

    move-object/from16 v0, v25

    iget-boolean v5, v0, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    if-nez v5, :cond_1f8

    .line 3089
    const/4 v5, 0x1

    move-object/from16 v0, v25

    iput-boolean v5, v0, Lorg/telegram/tgnet/TLRPC$Message;->media_unread:Z

    .line 3091
    :cond_1f8
    if-eqz v23, :cond_205

    .line 3092
    move-object/from16 v0, v25

    iget v5, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    const/high16 v7, -0x80000000

    or-int/2addr v5, v7

    move-object/from16 v0, v25

    iput v5, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    .line 3095
    :cond_205
    move-object/from16 v0, v25

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v5, v5, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatDeleteUser;

    if-eqz v5, :cond_230

    .line 3096
    move-object/from16 v0, v25

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$MessageAction;->user_id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v33

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lorg/telegram/tgnet/TLRPC$User;

    .line 3097
    .local v32, "user":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v32, :cond_230

    move-object/from16 v0, v32

    iget-boolean v5, v0, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-eqz v5, :cond_230

    .line 3098
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardHide;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardHide;-><init>()V

    move-object/from16 v0, v25

    iput-object v5, v0, Lorg/telegram/tgnet/TLRPC$Message;->reply_markup:Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

    .line 3101
    .end local v32    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_230
    move-object/from16 v0, v25

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v5, v5, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatMigrateTo;

    if-nez v5, :cond_240

    move-object/from16 v0, v25

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v5, v5, Lorg/telegram/tgnet/TLRPC$TL_messageActionChannelCreate;

    if-eqz v5, :cond_24d

    .line 3102
    :cond_240
    const/4 v5, 0x0

    move-object/from16 v0, v25

    iput-boolean v5, v0, Lorg/telegram/tgnet/TLRPC$Message;->unread:Z

    .line 3103
    const/4 v5, 0x0

    move-object/from16 v0, v25

    iput-boolean v5, v0, Lorg/telegram/tgnet/TLRPC$Message;->media_unread:Z

    .line 3086
    :goto_24a
    add-int/lit8 v4, v4, 0x1

    goto :goto_1d1

    .line 3105
    :cond_24d
    move-object/from16 v0, v25

    iget-boolean v5, v0, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    if-eqz v5, :cond_265

    move-object/from16 v5, v29

    :goto_255
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move-object/from16 v0, v25

    iget v7, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    if-ge v5, v7, :cond_268

    const/4 v5, 0x1

    :goto_260
    move-object/from16 v0, v25

    iput-boolean v5, v0, Lorg/telegram/tgnet/TLRPC$Message;->unread:Z

    goto :goto_24a

    :cond_265
    move-object/from16 v5, v21

    goto :goto_255

    :cond_268
    const/4 v5, 0x0

    goto :goto_260

    .line 3108
    .end local v25    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    :cond_26a
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/MessagesController$55;->val$messagesRes:Lorg/telegram/tgnet/TLRPC$messages_Messages;

    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/telegram/messenger/MessagesController$55;->val$dialog_id:J

    move-object/from16 v0, p0

    iget v12, v0, Lorg/telegram/messenger/MessagesController$55;->val$load_type:I

    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/messenger/MessagesController$55;->val$max_id:I

    invoke-virtual/range {v8 .. v14}, Lorg/telegram/messenger/MessagesStorage;->putMessages(Lorg/telegram/tgnet/TLRPC$messages_Messages;JIIZ)V

    .line 3110
    .end local v21    # "inboxValue":Ljava/lang/Integer;
    .end local v29    # "outboxValue":Ljava/lang/Integer;
    :cond_281
    new-instance v28, Ljava/util/ArrayList;

    invoke-direct/range {v28 .. v28}, Ljava/util/ArrayList;-><init>()V

    .line 3111
    .local v28, "objects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    .line 3112
    .local v27, "messagesToReload":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v34, Ljava/util/HashMap;

    invoke-direct/range {v34 .. v34}, Ljava/util/HashMap;-><init>()V

    .line 3113
    .local v34, "webpagesToReload":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;>;"
    const/16 v22, 0x0

    .line 3114
    .local v22, "inputChannel":Lorg/telegram/tgnet/TLRPC$InputChannel;
    const/4 v4, 0x0

    :goto_293
    move/from16 v0, v30

    if-ge v4, v0, :cond_36c

    .line 3115
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/MessagesController$55;->val$messagesRes:Lorg/telegram/tgnet/TLRPC$messages_Messages;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lorg/telegram/tgnet/TLRPC$Message;

    .line 3116
    .restart local v25    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/telegram/messenger/MessagesController$55;->val$dialog_id:J

    move-object/from16 v0, v25

    iput-wide v8, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    .line 3117
    new-instance v26, Lorg/telegram/messenger/MessageObject;

    const/4 v5, 0x1

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    move-object/from16 v2, v33

    move-object/from16 v3, v19

    invoke-direct {v0, v1, v2, v3, v5}, Lorg/telegram/messenger/MessageObject;-><init>(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/AbstractMap;Ljava/util/AbstractMap;Z)V

    .line 3118
    .local v26, "messageObject":Lorg/telegram/messenger/MessageObject;
    move-object/from16 v0, v28

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3119
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lorg/telegram/messenger/MessagesController$55;->val$isCache:Z

    if-eqz v5, :cond_303

    .line 3120
    move-object/from16 v0, v25

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v5, v5, Lorg/telegram/tgnet/TLRPC$TL_messageMediaUnsupported;

    if-eqz v5, :cond_306

    .line 3121
    move-object/from16 v0, v25

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$MessageMedia;->bytes:[B

    if-eqz v5, :cond_303

    move-object/from16 v0, v25

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$MessageMedia;->bytes:[B

    array-length v5, v5

    if-eqz v5, :cond_2f6

    move-object/from16 v0, v25

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$MessageMedia;->bytes:[B

    array-length v5, v5

    const/4 v7, 0x1

    if-ne v5, v7, :cond_303

    move-object/from16 v0, v25

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$MessageMedia;->bytes:[B

    const/4 v7, 0x0

    aget-byte v5, v5, v7

    const/16 v7, 0x41

    if-ge v5, v7, :cond_303

    .line 3122
    :cond_2f6
    move-object/from16 v0, v25

    iget v5, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3114
    :cond_303
    :goto_303
    add-int/lit8 v4, v4, 0x1

    goto :goto_293

    .line 3124
    :cond_306
    move-object/from16 v0, v25

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v5, v5, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;

    if-eqz v5, :cond_303

    .line 3125
    move-object/from16 v0, v25

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    instance-of v5, v5, Lorg/telegram/tgnet/TLRPC$TL_webPagePending;

    if-eqz v5, :cond_338

    move-object/from16 v0, v25

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$WebPage;->date:I

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v7

    if-gt v5, v7, :cond_338

    .line 3126
    move-object/from16 v0, v25

    iget v5, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_303

    .line 3127
    :cond_338
    move-object/from16 v0, v25

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    instance-of v5, v5, Lorg/telegram/tgnet/TLRPC$TL_webPageUrlPending;

    if-eqz v5, :cond_303

    .line 3128
    move-object/from16 v0, v25

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$WebPage;->url:Ljava/lang/String;

    move-object/from16 v0, v34

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/ArrayList;

    .line 3129
    .local v15, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    if-nez v15, :cond_366

    .line 3130
    new-instance v15, Ljava/util/ArrayList;

    .end local v15    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 3131
    .restart local v15    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    move-object/from16 v0, v25

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$WebPage;->url:Ljava/lang/String;

    move-object/from16 v0, v34

    invoke-virtual {v0, v5, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3133
    :cond_366
    move-object/from16 v0, v26

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_303

    .line 3138
    .end local v15    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .end local v25    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    .end local v26    # "messageObject":Lorg/telegram/messenger/MessageObject;
    :cond_36c
    new-instance v5, Lorg/telegram/messenger/MessagesController$55$2;

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v27

    move-object/from16 v3, v34

    invoke-direct {v5, v0, v1, v2, v3}, Lorg/telegram/messenger/MessagesController$55$2;-><init>(Lorg/telegram/messenger/MessagesController$55;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/HashMap;)V

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto/16 :goto_e0
.end method
