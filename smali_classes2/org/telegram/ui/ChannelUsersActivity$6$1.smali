.class Lorg/telegram/ui/ChannelUsersActivity$6$1;
.super Ljava/lang/Object;
.source "ChannelUsersActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChannelUsersActivity$6;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ChannelUsersActivity$6;

.field final synthetic val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

.field final synthetic val$response:Lorg/telegram/tgnet/TLObject;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChannelUsersActivity$6;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .registers 4
    .param p1, "this$1"    # Lorg/telegram/ui/ChannelUsersActivity$6;

    .prologue
    .line 398
    iput-object p1, p0, Lorg/telegram/ui/ChannelUsersActivity$6$1;->this$1:Lorg/telegram/ui/ChannelUsersActivity$6;

    iput-object p2, p0, Lorg/telegram/ui/ChannelUsersActivity$6$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iput-object p3, p0, Lorg/telegram/ui/ChannelUsersActivity$6$1;->val$response:Lorg/telegram/tgnet/TLObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 401
    iget-object v2, p0, Lorg/telegram/ui/ChannelUsersActivity$6$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    if-nez v2, :cond_41

    .line 402
    iget-object v1, p0, Lorg/telegram/ui/ChannelUsersActivity$6$1;->val$response:Lorg/telegram/tgnet/TLObject;

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_channels_channelParticipants;

    .line 403
    .local v1, "res":Lorg/telegram/tgnet/TLRPC$TL_channels_channelParticipants;
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_channels_channelParticipants;->users:Ljava/util/ArrayList;

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 404
    iget-object v2, p0, Lorg/telegram/ui/ChannelUsersActivity$6$1;->this$1:Lorg/telegram/ui/ChannelUsersActivity$6;

    iget-object v2, v2, Lorg/telegram/ui/ChannelUsersActivity$6;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_channels_channelParticipants;->participants:Ljava/util/ArrayList;

    # setter for: Lorg/telegram/ui/ChannelUsersActivity;->participants:Ljava/util/ArrayList;
    invoke-static {v2, v3}, Lorg/telegram/ui/ChannelUsersActivity;->access$702(Lorg/telegram/ui/ChannelUsersActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 406
    :try_start_1c
    iget-object v2, p0, Lorg/telegram/ui/ChannelUsersActivity$6$1;->this$1:Lorg/telegram/ui/ChannelUsersActivity$6;

    iget-object v2, v2, Lorg/telegram/ui/ChannelUsersActivity$6;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->type:I
    invoke-static {v2}, Lorg/telegram/ui/ChannelUsersActivity;->access$000(Lorg/telegram/ui/ChannelUsersActivity;)I

    move-result v2

    if-eqz v2, :cond_31

    iget-object v2, p0, Lorg/telegram/ui/ChannelUsersActivity$6$1;->this$1:Lorg/telegram/ui/ChannelUsersActivity$6;

    iget-object v2, v2, Lorg/telegram/ui/ChannelUsersActivity$6;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->type:I
    invoke-static {v2}, Lorg/telegram/ui/ChannelUsersActivity;->access$000(Lorg/telegram/ui/ChannelUsersActivity;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_7a

    .line 407
    :cond_31
    iget-object v2, p0, Lorg/telegram/ui/ChannelUsersActivity$6$1;->this$1:Lorg/telegram/ui/ChannelUsersActivity$6;

    iget-object v2, v2, Lorg/telegram/ui/ChannelUsersActivity$6;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->participants:Ljava/util/ArrayList;
    invoke-static {v2}, Lorg/telegram/ui/ChannelUsersActivity;->access$700(Lorg/telegram/ui/ChannelUsersActivity;)Ljava/util/ArrayList;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/ChannelUsersActivity$6$1$1;

    invoke-direct {v3, p0}, Lorg/telegram/ui/ChannelUsersActivity$6$1$1;-><init>(Lorg/telegram/ui/ChannelUsersActivity$6$1;)V

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_41} :catch_8f

    .line 469
    .end local v1    # "res":Lorg/telegram/tgnet/TLRPC$TL_channels_channelParticipants;
    :cond_41
    :goto_41
    iget-object v2, p0, Lorg/telegram/ui/ChannelUsersActivity$6$1;->this$1:Lorg/telegram/ui/ChannelUsersActivity$6;

    iget-object v2, v2, Lorg/telegram/ui/ChannelUsersActivity$6;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # setter for: Lorg/telegram/ui/ChannelUsersActivity;->loadingUsers:Z
    invoke-static {v2, v4}, Lorg/telegram/ui/ChannelUsersActivity;->access$1102(Lorg/telegram/ui/ChannelUsersActivity;Z)Z

    .line 470
    iget-object v2, p0, Lorg/telegram/ui/ChannelUsersActivity$6$1;->this$1:Lorg/telegram/ui/ChannelUsersActivity$6;

    iget-object v2, v2, Lorg/telegram/ui/ChannelUsersActivity$6;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # setter for: Lorg/telegram/ui/ChannelUsersActivity;->firstLoaded:Z
    invoke-static {v2, v5}, Lorg/telegram/ui/ChannelUsersActivity;->access$1202(Lorg/telegram/ui/ChannelUsersActivity;Z)Z

    .line 471
    iget-object v2, p0, Lorg/telegram/ui/ChannelUsersActivity$6$1;->this$1:Lorg/telegram/ui/ChannelUsersActivity$6;

    iget-object v2, v2, Lorg/telegram/ui/ChannelUsersActivity$6;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;
    invoke-static {v2}, Lorg/telegram/ui/ChannelUsersActivity;->access$1300(Lorg/telegram/ui/ChannelUsersActivity;)Lorg/telegram/ui/Components/EmptyTextProgressView;

    move-result-object v2

    if-eqz v2, :cond_64

    .line 472
    iget-object v2, p0, Lorg/telegram/ui/ChannelUsersActivity$6$1;->this$1:Lorg/telegram/ui/ChannelUsersActivity$6;

    iget-object v2, v2, Lorg/telegram/ui/ChannelUsersActivity$6;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;
    invoke-static {v2}, Lorg/telegram/ui/ChannelUsersActivity;->access$1300(Lorg/telegram/ui/ChannelUsersActivity;)Lorg/telegram/ui/Components/EmptyTextProgressView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/EmptyTextProgressView;->showTextView()V

    .line 474
    :cond_64
    iget-object v2, p0, Lorg/telegram/ui/ChannelUsersActivity$6$1;->this$1:Lorg/telegram/ui/ChannelUsersActivity$6;

    iget-object v2, v2, Lorg/telegram/ui/ChannelUsersActivity$6;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->listViewAdapter:Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;
    invoke-static {v2}, Lorg/telegram/ui/ChannelUsersActivity;->access$800(Lorg/telegram/ui/ChannelUsersActivity;)Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;

    move-result-object v2

    if-eqz v2, :cond_79

    .line 475
    iget-object v2, p0, Lorg/telegram/ui/ChannelUsersActivity$6$1;->this$1:Lorg/telegram/ui/ChannelUsersActivity$6;

    iget-object v2, v2, Lorg/telegram/ui/ChannelUsersActivity$6;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->listViewAdapter:Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;
    invoke-static {v2}, Lorg/telegram/ui/ChannelUsersActivity;->access$800(Lorg/telegram/ui/ChannelUsersActivity;)Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->notifyDataSetChanged()V

    .line 477
    :cond_79
    return-void

    .line 450
    .restart local v1    # "res":Lorg/telegram/tgnet/TLRPC$TL_channels_channelParticipants;
    :cond_7a
    :try_start_7a
    iget-object v2, p0, Lorg/telegram/ui/ChannelUsersActivity$6$1;->this$1:Lorg/telegram/ui/ChannelUsersActivity$6;

    iget-object v2, v2, Lorg/telegram/ui/ChannelUsersActivity$6;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->type:I
    invoke-static {v2}, Lorg/telegram/ui/ChannelUsersActivity;->access$000(Lorg/telegram/ui/ChannelUsersActivity;)I

    move-result v2

    if-ne v2, v5, :cond_41

    .line 451
    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_channels_channelParticipants;->participants:Ljava/util/ArrayList;

    new-instance v3, Lorg/telegram/ui/ChannelUsersActivity$6$1$2;

    invoke-direct {v3, p0}, Lorg/telegram/ui/ChannelUsersActivity$6$1$2;-><init>(Lorg/telegram/ui/ChannelUsersActivity$6$1;)V

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_8e
    .catch Ljava/lang/Exception; {:try_start_7a .. :try_end_8e} :catch_8f

    goto :goto_41

    .line 465
    :catch_8f
    move-exception v0

    .line 466
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_41
.end method
