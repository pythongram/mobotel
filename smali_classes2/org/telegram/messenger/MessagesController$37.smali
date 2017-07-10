.class Lorg/telegram/messenger/MessagesController$37;
.super Ljava/lang/Object;
.source "MessagesController.java"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesController;->deleteUserChannelHistory(Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLRPC$User;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MessagesController;

.field final synthetic val$chat:Lorg/telegram/tgnet/TLRPC$Chat;

.field final synthetic val$user:Lorg/telegram/tgnet/TLRPC$User;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLRPC$User;)V
    .registers 4
    .param p1, "this$0"    # Lorg/telegram/messenger/MessagesController;

    .prologue
    .line 2235
    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$37;->this$0:Lorg/telegram/messenger/MessagesController;

    iput-object p2, p0, Lorg/telegram/messenger/MessagesController$37;->val$chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iput-object p3, p0, Lorg/telegram/messenger/MessagesController$37;->val$user:Lorg/telegram/tgnet/TLRPC$User;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .registers 8
    .param p1, "response"    # Lorg/telegram/tgnet/TLObject;
    .param p2, "error"    # Lorg/telegram/tgnet/TLRPC$TL_error;

    .prologue
    .line 2238
    if-nez p2, :cond_21

    move-object v0, p1

    .line 2239
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_messages_affectedHistory;

    .line 2240
    .local v0, "res":Lorg/telegram/tgnet/TLRPC$TL_messages_affectedHistory;
    iget v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_affectedHistory;->offset:I

    if-lez v1, :cond_14

    .line 2241
    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$37;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v2, p0, Lorg/telegram/messenger/MessagesController$37;->val$chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v3, p0, Lorg/telegram/messenger/MessagesController$37;->val$user:Lorg/telegram/tgnet/TLRPC$User;

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_affectedHistory;->offset:I

    invoke-virtual {v1, v2, v3, v4}, Lorg/telegram/messenger/MessagesController;->deleteUserChannelHistory(Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLRPC$User;I)V

    .line 2243
    :cond_14
    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$37;->this$0:Lorg/telegram/messenger/MessagesController;

    iget v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_affectedHistory;->pts:I

    iget v3, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_affectedHistory;->pts_count:I

    iget-object v4, p0, Lorg/telegram/messenger/MessagesController$37;->val$chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    invoke-virtual {v1, v2, v3, v4}, Lorg/telegram/messenger/MessagesController;->processNewChannelDifferenceParams(III)V

    .line 2245
    .end local v0    # "res":Lorg/telegram/tgnet/TLRPC$TL_messages_affectedHistory;
    :cond_21
    return-void
.end method
