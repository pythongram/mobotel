.class Lorg/telegram/messenger/MessagesController$34;
.super Ljava/lang/Object;
.source "MessagesController.java"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesController;->deleteMessages(Ljava/util/ArrayList;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$EncryptedChat;IZJLorg/telegram/tgnet/TLObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MessagesController;

.field final synthetic val$channelId:I

.field final synthetic val$newTaskId:J


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesController;IJ)V
    .registers 6
    .param p1, "this$0"    # Lorg/telegram/messenger/MessagesController;

    .prologue
    .line 2160
    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$34;->this$0:Lorg/telegram/messenger/MessagesController;

    iput p2, p0, Lorg/telegram/messenger/MessagesController$34;->val$channelId:I

    iput-wide p3, p0, Lorg/telegram/messenger/MessagesController$34;->val$newTaskId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .registers 9
    .param p1, "response"    # Lorg/telegram/tgnet/TLObject;
    .param p2, "error"    # Lorg/telegram/tgnet/TLRPC$TL_error;

    .prologue
    .line 2163
    if-nez p2, :cond_10

    move-object v0, p1

    .line 2164
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_messages_affectedMessages;

    .line 2165
    .local v0, "res":Lorg/telegram/tgnet/TLRPC$TL_messages_affectedMessages;
    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$34;->this$0:Lorg/telegram/messenger/MessagesController;

    iget v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_affectedMessages;->pts:I

    iget v3, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_affectedMessages;->pts_count:I

    iget v4, p0, Lorg/telegram/messenger/MessagesController$34;->val$channelId:I

    invoke-virtual {v1, v2, v3, v4}, Lorg/telegram/messenger/MessagesController;->processNewChannelDifferenceParams(III)V

    .line 2167
    .end local v0    # "res":Lorg/telegram/tgnet/TLRPC$TL_messages_affectedMessages;
    :cond_10
    iget-wide v2, p0, Lorg/telegram/messenger/MessagesController$34;->val$newTaskId:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_21

    .line 2168
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    iget-wide v2, p0, Lorg/telegram/messenger/MessagesController$34;->val$newTaskId:J

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MessagesStorage;->removePendingTask(J)V

    .line 2170
    :cond_21
    return-void
.end method
