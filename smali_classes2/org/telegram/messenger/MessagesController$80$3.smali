.class Lorg/telegram/messenger/MessagesController$80$3;
.super Ljava/lang/Object;
.source "MessagesController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesController$80;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/MessagesController$80;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesController$80;)V
    .registers 2
    .param p1, "this$1"    # Lorg/telegram/messenger/MessagesController$80;

    .prologue
    .line 4706
    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$80$3;->this$1:Lorg/telegram/messenger/MessagesController$80;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 4709
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$80$3;->this$1:Lorg/telegram/messenger/MessagesController$80;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$80;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$80$3;->this$1:Lorg/telegram/messenger/MessagesController$80;

    iget v1, v1, Lorg/telegram/messenger/MessagesController$80;->val$chat_id:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->loadFullChat(IIZ)V

    .line 4710
    return-void
.end method
