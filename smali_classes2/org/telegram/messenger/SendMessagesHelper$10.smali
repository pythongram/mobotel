.class Lorg/telegram/messenger/SendMessagesHelper$10;
.super Ljava/lang/Object;
.source "SendMessagesHelper.java"

# interfaces
.implements Lorg/telegram/tgnet/QuickAckDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/SendMessagesHelper;->performSendMessageRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/SendMessagesHelper;

.field final synthetic val$newMsgObj:Lorg/telegram/tgnet/TLRPC$Message;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/SendMessagesHelper;Lorg/telegram/tgnet/TLRPC$Message;)V
    .registers 3
    .param p1, "this$0"    # Lorg/telegram/messenger/SendMessagesHelper;

    .prologue
    .line 3437
    iput-object p1, p0, Lorg/telegram/messenger/SendMessagesHelper$10;->this$0:Lorg/telegram/messenger/SendMessagesHelper;

    iput-object p2, p0, Lorg/telegram/messenger/SendMessagesHelper$10;->val$newMsgObj:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 3440
    iget-object v1, p0, Lorg/telegram/messenger/SendMessagesHelper$10;->val$newMsgObj:Lorg/telegram/tgnet/TLRPC$Message;

    iget v0, v1, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    .line 3441
    .local v0, "msg_id":I
    new-instance v1, Lorg/telegram/messenger/SendMessagesHelper$10$1;

    invoke-direct {v1, p0, v0}, Lorg/telegram/messenger/SendMessagesHelper$10$1;-><init>(Lorg/telegram/messenger/SendMessagesHelper$10;I)V

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 3448
    return-void
.end method
