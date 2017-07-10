.class Lorg/telegram/messenger/MessagesController$76;
.super Ljava/lang/Object;
.source "MessagesController.java"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesController;->updateChannelUserName(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MessagesController;

.field final synthetic val$chat_id:I

.field final synthetic val$userName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesController;ILjava/lang/String;)V
    .registers 4
    .param p1, "this$0"    # Lorg/telegram/messenger/MessagesController;

    .prologue
    .line 4541
    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$76;->this$0:Lorg/telegram/messenger/MessagesController;

    iput p2, p0, Lorg/telegram/messenger/MessagesController$76;->val$chat_id:I

    iput-object p3, p0, Lorg/telegram/messenger/MessagesController$76;->val$userName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .registers 4
    .param p1, "response"    # Lorg/telegram/tgnet/TLObject;
    .param p2, "error"    # Lorg/telegram/tgnet/TLRPC$TL_error;

    .prologue
    .line 4544
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_boolTrue;

    if-eqz v0, :cond_c

    .line 4545
    new-instance v0, Lorg/telegram/messenger/MessagesController$76$1;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/MessagesController$76$1;-><init>(Lorg/telegram/messenger/MessagesController$76;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 4562
    :cond_c
    return-void
.end method
