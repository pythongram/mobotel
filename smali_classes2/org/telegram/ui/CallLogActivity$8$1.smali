.class Lorg/telegram/ui/CallLogActivity$8$1;
.super Ljava/lang/Object;
.source "CallLogActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/CallLogActivity$8;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/CallLogActivity$8;

.field final synthetic val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

.field final synthetic val$response:Lorg/telegram/tgnet/TLObject;


# direct methods
.method constructor <init>(Lorg/telegram/ui/CallLogActivity$8;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .registers 4
    .param p1, "this$1"    # Lorg/telegram/ui/CallLogActivity$8;

    .prologue
    .line 375
    iput-object p1, p0, Lorg/telegram/ui/CallLogActivity$8$1;->this$1:Lorg/telegram/ui/CallLogActivity$8;

    iput-object p2, p0, Lorg/telegram/ui/CallLogActivity$8$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iput-object p3, p0, Lorg/telegram/ui/CallLogActivity$8$1;->val$response:Lorg/telegram/tgnet/TLObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 16

    .prologue
    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    .line 378
    iget-object v10, p0, Lorg/telegram/ui/CallLogActivity$8$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    if-nez v10, :cond_148

    .line 379
    new-instance v9, Landroid/util/SparseArray;

    invoke-direct {v9}, Landroid/util/SparseArray;-><init>()V

    .line 380
    .local v9, "users":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lorg/telegram/tgnet/TLRPC$User;>;"
    iget-object v4, p0, Lorg/telegram/ui/CallLogActivity$8$1;->val$response:Lorg/telegram/tgnet/TLObject;

    check-cast v4, Lorg/telegram/tgnet/TLRPC$messages_Messages;

    .line 381
    .local v4, "msgs":Lorg/telegram/tgnet/TLRPC$messages_Messages;
    iget-object v10, p0, Lorg/telegram/ui/CallLogActivity$8$1;->this$1:Lorg/telegram/ui/CallLogActivity$8;

    iget-object v10, v10, Lorg/telegram/ui/CallLogActivity$8;->this$0:Lorg/telegram/ui/CallLogActivity;

    iget-object v14, v4, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v14

    # setter for: Lorg/telegram/ui/CallLogActivity;->endReached:Z
    invoke-static {v10, v14}, Lorg/telegram/ui/CallLogActivity;->access$602(Lorg/telegram/ui/CallLogActivity;Z)Z

    .line 382
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1e
    iget-object v10, v4, Lorg/telegram/tgnet/TLRPC$messages_Messages;->users:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v0, v10, :cond_36

    .line 383
    iget-object v10, v4, Lorg/telegram/tgnet/TLRPC$messages_Messages;->users:Ljava/util/ArrayList;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/tgnet/TLRPC$User;

    .line 384
    .local v7, "user":Lorg/telegram/tgnet/TLRPC$User;
    iget v10, v7, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-virtual {v9, v10, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 382
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    .line 386
    .end local v7    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_36
    iget-object v10, p0, Lorg/telegram/ui/CallLogActivity$8$1;->this$1:Lorg/telegram/ui/CallLogActivity$8;

    iget-object v10, v10, Lorg/telegram/ui/CallLogActivity$8;->this$0:Lorg/telegram/ui/CallLogActivity;

    # getter for: Lorg/telegram/ui/CallLogActivity;->calls:Ljava/util/ArrayList;
    invoke-static {v10}, Lorg/telegram/ui/CallLogActivity;->access$200(Lorg/telegram/ui/CallLogActivity;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_79

    iget-object v10, p0, Lorg/telegram/ui/CallLogActivity$8$1;->this$1:Lorg/telegram/ui/CallLogActivity$8;

    iget-object v10, v10, Lorg/telegram/ui/CallLogActivity$8;->this$0:Lorg/telegram/ui/CallLogActivity;

    # getter for: Lorg/telegram/ui/CallLogActivity;->calls:Ljava/util/ArrayList;
    invoke-static {v10}, Lorg/telegram/ui/CallLogActivity;->access$200(Lorg/telegram/ui/CallLogActivity;)Ljava/util/ArrayList;

    move-result-object v10

    iget-object v14, p0, Lorg/telegram/ui/CallLogActivity$8$1;->this$1:Lorg/telegram/ui/CallLogActivity$8;

    iget-object v14, v14, Lorg/telegram/ui/CallLogActivity$8;->this$0:Lorg/telegram/ui/CallLogActivity;

    # getter for: Lorg/telegram/ui/CallLogActivity;->calls:Ljava/util/ArrayList;
    invoke-static {v14}, Lorg/telegram/ui/CallLogActivity;->access$200(Lorg/telegram/ui/CallLogActivity;)Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/ui/CallLogActivity$CallLogRow;

    move-object v2, v10

    .line 387
    .local v2, "currentRow":Lorg/telegram/ui/CallLogActivity$CallLogRow;
    :goto_61
    const/4 v0, 0x0

    :goto_62
    iget-object v10, v4, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v0, v10, :cond_ec

    .line 388
    iget-object v10, v4, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$Message;

    .line 389
    .local v3, "msg":Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v10, v3, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    if-nez v10, :cond_7b

    .line 387
    :goto_76
    add-int/lit8 v0, v0, 0x1

    goto :goto_62

    .end local v2    # "currentRow":Lorg/telegram/ui/CallLogActivity$CallLogRow;
    .end local v3    # "msg":Lorg/telegram/tgnet/TLRPC$Message;
    :cond_79
    move-object v2, v11

    .line 386
    goto :goto_61

    .line 392
    .restart local v2    # "currentRow":Lorg/telegram/ui/CallLogActivity$CallLogRow;
    .restart local v3    # "msg":Lorg/telegram/tgnet/TLRPC$Message;
    :cond_7b
    iget v10, v3, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v14

    if-ne v10, v14, :cond_e7

    move v1, v12

    .line 393
    .local v1, "callType":I
    :goto_84
    iget-object v10, v3, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v5, v10, Lorg/telegram/tgnet/TLRPC$MessageAction;->reason:Lorg/telegram/tgnet/TLRPC$PhoneCallDiscardReason;

    .line 394
    .local v5, "reason":Lorg/telegram/tgnet/TLRPC$PhoneCallDiscardReason;
    if-ne v1, v13, :cond_93

    instance-of v10, v5, Lorg/telegram/tgnet/TLRPC$TL_phoneCallDiscardReasonMissed;

    if-nez v10, :cond_92

    instance-of v10, v5, Lorg/telegram/tgnet/TLRPC$TL_phoneCallDiscardReasonBusy;

    if-eqz v10, :cond_93

    .line 395
    :cond_92
    const/4 v1, 0x2

    .line 397
    :cond_93
    iget v10, v3, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v14

    if-ne v10, v14, :cond_e9

    iget-object v10, v3, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v8, v10, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    .line 398
    .local v8, "userID":I
    :goto_9f
    if-eqz v2, :cond_ab

    iget-object v10, v2, Lorg/telegram/ui/CallLogActivity$CallLogRow;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget v10, v10, Lorg/telegram/tgnet/TLRPC$User;->id:I

    if-ne v10, v8, :cond_ab

    iget v10, v2, Lorg/telegram/ui/CallLogActivity$CallLogRow;->type:I

    if-eq v10, v1, :cond_e1

    .line 399
    :cond_ab
    if-eqz v2, :cond_c6

    iget-object v10, p0, Lorg/telegram/ui/CallLogActivity$8$1;->this$1:Lorg/telegram/ui/CallLogActivity$8;

    iget-object v10, v10, Lorg/telegram/ui/CallLogActivity$8;->this$0:Lorg/telegram/ui/CallLogActivity;

    # getter for: Lorg/telegram/ui/CallLogActivity;->calls:Ljava/util/ArrayList;
    invoke-static {v10}, Lorg/telegram/ui/CallLogActivity;->access$200(Lorg/telegram/ui/CallLogActivity;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_c6

    .line 400
    iget-object v10, p0, Lorg/telegram/ui/CallLogActivity$8$1;->this$1:Lorg/telegram/ui/CallLogActivity$8;

    iget-object v10, v10, Lorg/telegram/ui/CallLogActivity$8;->this$0:Lorg/telegram/ui/CallLogActivity;

    # getter for: Lorg/telegram/ui/CallLogActivity;->calls:Ljava/util/ArrayList;
    invoke-static {v10}, Lorg/telegram/ui/CallLogActivity;->access$200(Lorg/telegram/ui/CallLogActivity;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 402
    :cond_c6
    new-instance v6, Lorg/telegram/ui/CallLogActivity$CallLogRow;

    iget-object v10, p0, Lorg/telegram/ui/CallLogActivity$8$1;->this$1:Lorg/telegram/ui/CallLogActivity$8;

    iget-object v10, v10, Lorg/telegram/ui/CallLogActivity$8;->this$0:Lorg/telegram/ui/CallLogActivity;

    invoke-direct {v6, v10, v11}, Lorg/telegram/ui/CallLogActivity$CallLogRow;-><init>(Lorg/telegram/ui/CallLogActivity;Lorg/telegram/ui/CallLogActivity$1;)V

    .line 403
    .local v6, "row":Lorg/telegram/ui/CallLogActivity$CallLogRow;
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, v6, Lorg/telegram/ui/CallLogActivity$CallLogRow;->calls:Ljava/util/List;

    .line 404
    invoke-virtual {v9, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/tgnet/TLRPC$User;

    iput-object v10, v6, Lorg/telegram/ui/CallLogActivity$CallLogRow;->user:Lorg/telegram/tgnet/TLRPC$User;

    .line 405
    iput v1, v6, Lorg/telegram/ui/CallLogActivity$CallLogRow;->type:I

    .line 406
    move-object v2, v6

    .line 408
    .end local v6    # "row":Lorg/telegram/ui/CallLogActivity$CallLogRow;
    :cond_e1
    iget-object v10, v2, Lorg/telegram/ui/CallLogActivity$CallLogRow;->calls:Ljava/util/List;

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_76

    .end local v1    # "callType":I
    .end local v5    # "reason":Lorg/telegram/tgnet/TLRPC$PhoneCallDiscardReason;
    .end local v8    # "userID":I
    :cond_e7
    move v1, v13

    .line 392
    goto :goto_84

    .line 397
    .restart local v1    # "callType":I
    .restart local v5    # "reason":Lorg/telegram/tgnet/TLRPC$PhoneCallDiscardReason;
    :cond_e9
    iget v8, v3, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    goto :goto_9f

    .line 410
    .end local v1    # "callType":I
    .end local v3    # "msg":Lorg/telegram/tgnet/TLRPC$Message;
    .end local v5    # "reason":Lorg/telegram/tgnet/TLRPC$PhoneCallDiscardReason;
    :cond_ec
    if-eqz v2, :cond_10f

    iget-object v10, v2, Lorg/telegram/ui/CallLogActivity$CallLogRow;->calls:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_10f

    iget-object v10, p0, Lorg/telegram/ui/CallLogActivity$8$1;->this$1:Lorg/telegram/ui/CallLogActivity$8;

    iget-object v10, v10, Lorg/telegram/ui/CallLogActivity$8;->this$0:Lorg/telegram/ui/CallLogActivity;

    # getter for: Lorg/telegram/ui/CallLogActivity;->calls:Ljava/util/ArrayList;
    invoke-static {v10}, Lorg/telegram/ui/CallLogActivity;->access$200(Lorg/telegram/ui/CallLogActivity;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_10f

    .line 411
    iget-object v10, p0, Lorg/telegram/ui/CallLogActivity$8$1;->this$1:Lorg/telegram/ui/CallLogActivity$8;

    iget-object v10, v10, Lorg/telegram/ui/CallLogActivity$8;->this$0:Lorg/telegram/ui/CallLogActivity;

    # getter for: Lorg/telegram/ui/CallLogActivity;->calls:Ljava/util/ArrayList;
    invoke-static {v10}, Lorg/telegram/ui/CallLogActivity;->access$200(Lorg/telegram/ui/CallLogActivity;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 416
    .end local v0    # "a":I
    .end local v2    # "currentRow":Lorg/telegram/ui/CallLogActivity$CallLogRow;
    .end local v4    # "msgs":Lorg/telegram/tgnet/TLRPC$messages_Messages;
    .end local v9    # "users":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lorg/telegram/tgnet/TLRPC$User;>;"
    :cond_10f
    :goto_10f
    iget-object v10, p0, Lorg/telegram/ui/CallLogActivity$8$1;->this$1:Lorg/telegram/ui/CallLogActivity$8;

    iget-object v10, v10, Lorg/telegram/ui/CallLogActivity$8;->this$0:Lorg/telegram/ui/CallLogActivity;

    # setter for: Lorg/telegram/ui/CallLogActivity;->loading:Z
    invoke-static {v10, v12}, Lorg/telegram/ui/CallLogActivity;->access$702(Lorg/telegram/ui/CallLogActivity;Z)Z

    .line 417
    iget-object v10, p0, Lorg/telegram/ui/CallLogActivity$8$1;->this$1:Lorg/telegram/ui/CallLogActivity$8;

    iget-object v10, v10, Lorg/telegram/ui/CallLogActivity$8;->this$0:Lorg/telegram/ui/CallLogActivity;

    # setter for: Lorg/telegram/ui/CallLogActivity;->firstLoaded:Z
    invoke-static {v10, v13}, Lorg/telegram/ui/CallLogActivity;->access$1402(Lorg/telegram/ui/CallLogActivity;Z)Z

    .line 418
    iget-object v10, p0, Lorg/telegram/ui/CallLogActivity$8$1;->this$1:Lorg/telegram/ui/CallLogActivity$8;

    iget-object v10, v10, Lorg/telegram/ui/CallLogActivity$8;->this$0:Lorg/telegram/ui/CallLogActivity;

    # getter for: Lorg/telegram/ui/CallLogActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;
    invoke-static {v10}, Lorg/telegram/ui/CallLogActivity;->access$1500(Lorg/telegram/ui/CallLogActivity;)Lorg/telegram/ui/Components/EmptyTextProgressView;

    move-result-object v10

    if-eqz v10, :cond_132

    .line 419
    iget-object v10, p0, Lorg/telegram/ui/CallLogActivity$8$1;->this$1:Lorg/telegram/ui/CallLogActivity$8;

    iget-object v10, v10, Lorg/telegram/ui/CallLogActivity$8;->this$0:Lorg/telegram/ui/CallLogActivity;

    # getter for: Lorg/telegram/ui/CallLogActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;
    invoke-static {v10}, Lorg/telegram/ui/CallLogActivity;->access$1500(Lorg/telegram/ui/CallLogActivity;)Lorg/telegram/ui/Components/EmptyTextProgressView;

    move-result-object v10

    invoke-virtual {v10}, Lorg/telegram/ui/Components/EmptyTextProgressView;->showTextView()V

    .line 421
    :cond_132
    iget-object v10, p0, Lorg/telegram/ui/CallLogActivity$8$1;->this$1:Lorg/telegram/ui/CallLogActivity$8;

    iget-object v10, v10, Lorg/telegram/ui/CallLogActivity$8;->this$0:Lorg/telegram/ui/CallLogActivity;

    # getter for: Lorg/telegram/ui/CallLogActivity;->listViewAdapter:Lorg/telegram/ui/CallLogActivity$ListAdapter;
    invoke-static {v10}, Lorg/telegram/ui/CallLogActivity;->access$500(Lorg/telegram/ui/CallLogActivity;)Lorg/telegram/ui/CallLogActivity$ListAdapter;

    move-result-object v10

    if-eqz v10, :cond_147

    .line 422
    iget-object v10, p0, Lorg/telegram/ui/CallLogActivity$8$1;->this$1:Lorg/telegram/ui/CallLogActivity$8;

    iget-object v10, v10, Lorg/telegram/ui/CallLogActivity$8;->this$0:Lorg/telegram/ui/CallLogActivity;

    # getter for: Lorg/telegram/ui/CallLogActivity;->listViewAdapter:Lorg/telegram/ui/CallLogActivity$ListAdapter;
    invoke-static {v10}, Lorg/telegram/ui/CallLogActivity;->access$500(Lorg/telegram/ui/CallLogActivity;)Lorg/telegram/ui/CallLogActivity$ListAdapter;

    move-result-object v10

    invoke-virtual {v10}, Lorg/telegram/ui/CallLogActivity$ListAdapter;->notifyDataSetChanged()V

    .line 424
    :cond_147
    return-void

    .line 414
    :cond_148
    iget-object v10, p0, Lorg/telegram/ui/CallLogActivity$8$1;->this$1:Lorg/telegram/ui/CallLogActivity$8;

    iget-object v10, v10, Lorg/telegram/ui/CallLogActivity$8;->this$0:Lorg/telegram/ui/CallLogActivity;

    # setter for: Lorg/telegram/ui/CallLogActivity;->endReached:Z
    invoke-static {v10, v13}, Lorg/telegram/ui/CallLogActivity;->access$602(Lorg/telegram/ui/CallLogActivity;Z)Z

    goto :goto_10f
.end method
