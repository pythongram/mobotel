.class Lorg/telegram/messenger/MessagesController$81$2;
.super Ljava/lang/Object;
.source "MessagesController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesController$81;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/MessagesController$81;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesController$81;)V
    .registers 2
    .param p1, "this$1"    # Lorg/telegram/messenger/MessagesController$81;

    .prologue
    .line 4811
    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$81$2;->this$1:Lorg/telegram/messenger/MessagesController$81;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 4814
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$81$2;->this$1:Lorg/telegram/messenger/MessagesController$81;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$81;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$81$2;->this$1:Lorg/telegram/messenger/MessagesController$81;

    iget v1, v1, Lorg/telegram/messenger/MessagesController$81;->val$chat_id:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->loadFullChat(IIZ)V

    .line 4815
    return-void
.end method
