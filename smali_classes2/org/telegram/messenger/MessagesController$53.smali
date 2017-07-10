.class Lorg/telegram/messenger/MessagesController$53;
.super Ljava/lang/Object;
.source "MessagesController.java"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesController;->loadMessages(JIIIZIIIIZIIIIZ)V
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

.field final synthetic val$isChannel:Z

.field final synthetic val$last_date:I

.field final synthetic val$last_message_id:I

.field final synthetic val$loadIndex:I

.field final synthetic val$load_type:I

.field final synthetic val$max_id:I

.field final synthetic val$offset_date:I

.field final synthetic val$queryFromServer:Z

.field final synthetic val$unread_count:I


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesController;IIIJIIIIIIZIZ)V
    .registers 19
    .param p1, "this$0"    # Lorg/telegram/messenger/MessagesController;

    .prologue
    .line 2937
    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$53;->this$0:Lorg/telegram/messenger/MessagesController;

    iput p2, p0, Lorg/telegram/messenger/MessagesController$53;->val$count:I

    iput p3, p0, Lorg/telegram/messenger/MessagesController$53;->val$max_id:I

    iput p4, p0, Lorg/telegram/messenger/MessagesController$53;->val$offset_date:I

    iput-wide p5, p0, Lorg/telegram/messenger/MessagesController$53;->val$dialog_id:J

    iput p7, p0, Lorg/telegram/messenger/MessagesController$53;->val$classGuid:I

    iput p8, p0, Lorg/telegram/messenger/MessagesController$53;->val$first_unread:I

    iput p9, p0, Lorg/telegram/messenger/MessagesController$53;->val$last_message_id:I

    iput p10, p0, Lorg/telegram/messenger/MessagesController$53;->val$unread_count:I

    iput p11, p0, Lorg/telegram/messenger/MessagesController$53;->val$last_date:I

    iput p12, p0, Lorg/telegram/messenger/MessagesController$53;->val$load_type:I

    move/from16 v0, p13

    iput-boolean v0, p0, Lorg/telegram/messenger/MessagesController$53;->val$isChannel:Z

    move/from16 v0, p14

    iput v0, p0, Lorg/telegram/messenger/MessagesController$53;->val$loadIndex:I

    move/from16 v0, p15

    iput-boolean v0, p0, Lorg/telegram/messenger/MessagesController$53;->val$queryFromServer:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .registers 25
    .param p1, "response"    # Lorg/telegram/tgnet/TLObject;
    .param p2, "error"    # Lorg/telegram/tgnet/TLRPC$TL_error;

    .prologue
    .line 2940
    if-eqz p1, :cond_9e

    move-object/from16 v3, p1

    .line 2941
    check-cast v3, Lorg/telegram/tgnet/TLRPC$messages_Messages;

    .line 2942
    .local v3, "res":Lorg/telegram/tgnet/TLRPC$messages_Messages;
    iget-object v2, v3, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/MessagesController$53;->val$count:I

    if-le v2, v4, :cond_18

    .line 2943
    iget-object v2, v3, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2945
    :cond_18
    move-object/from16 v0, p0

    iget v7, v0, Lorg/telegram/messenger/MessagesController$53;->val$max_id:I

    .line 2946
    .local v7, "mid":I
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/MessagesController$53;->val$offset_date:I

    if-eqz v2, :cond_5e

    iget-object v2, v3, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5e

    .line 2947
    iget-object v2, v3, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Message;

    iget v7, v2, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    .line 2948
    iget-object v2, v3, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v20, v2, -0x1

    .local v20, "a":I
    :goto_44
    if-ltz v20, :cond_5e

    .line 2949
    iget-object v2, v3, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    move/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lorg/telegram/tgnet/TLRPC$Message;

    .line 2950
    .local v21, "message":Lorg/telegram/tgnet/TLRPC$Message;
    move-object/from16 v0, v21

    iget v2, v0, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/MessagesController$53;->val$offset_date:I

    if-le v2, v4, :cond_9f

    .line 2951
    move-object/from16 v0, v21

    iget v7, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    .line 2956
    .end local v20    # "a":I
    .end local v21    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    :cond_5e
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$53;->this$0:Lorg/telegram/messenger/MessagesController;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/telegram/messenger/MessagesController$53;->val$dialog_id:J

    move-object/from16 v0, p0

    iget v6, v0, Lorg/telegram/messenger/MessagesController$53;->val$count:I

    move-object/from16 v0, p0

    iget v8, v0, Lorg/telegram/messenger/MessagesController$53;->val$offset_date:I

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget v10, v0, Lorg/telegram/messenger/MessagesController$53;->val$classGuid:I

    move-object/from16 v0, p0

    iget v11, v0, Lorg/telegram/messenger/MessagesController$53;->val$first_unread:I

    move-object/from16 v0, p0

    iget v12, v0, Lorg/telegram/messenger/MessagesController$53;->val$last_message_id:I

    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/messenger/MessagesController$53;->val$unread_count:I

    move-object/from16 v0, p0

    iget v14, v0, Lorg/telegram/messenger/MessagesController$53;->val$last_date:I

    move-object/from16 v0, p0

    iget v15, v0, Lorg/telegram/messenger/MessagesController$53;->val$load_type:I

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/messenger/MessagesController$53;->val$isChannel:Z

    move/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/MessagesController$53;->val$loadIndex:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/messenger/MessagesController$53;->val$queryFromServer:Z

    move/from16 v19, v0

    invoke-virtual/range {v2 .. v19}, Lorg/telegram/messenger/MessagesController;->processLoadedMessages(Lorg/telegram/tgnet/TLRPC$messages_Messages;JIIIZIIIIIIZZIZ)V

    .line 2958
    .end local v3    # "res":Lorg/telegram/tgnet/TLRPC$messages_Messages;
    .end local v7    # "mid":I
    :cond_9e
    return-void

    .line 2948
    .restart local v3    # "res":Lorg/telegram/tgnet/TLRPC$messages_Messages;
    .restart local v7    # "mid":I
    .restart local v20    # "a":I
    .restart local v21    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    :cond_9f
    add-int/lit8 v20, v20, -0x1

    goto :goto_44
.end method
