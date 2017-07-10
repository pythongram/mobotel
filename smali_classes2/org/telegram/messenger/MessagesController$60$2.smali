.class Lorg/telegram/messenger/MessagesController$60$2;
.super Ljava/lang/Object;
.source "MessagesController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesController$60;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/MessagesController$60;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesController$60;)V
    .registers 2
    .param p1, "this$1"    # Lorg/telegram/messenger/MessagesController$60;

    .prologue
    .line 3873
    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$60$2;->this$1:Lorg/telegram/messenger/MessagesController$60;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 3876
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$60$2;->this$1:Lorg/telegram/messenger/MessagesController$60;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$60;->this$0:Lorg/telegram/messenger/MessagesController;

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->access$5000(Lorg/telegram/messenger/MessagesController;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$60$2;->this$1:Lorg/telegram/messenger/MessagesController$60;

    iget v1, v1, Lorg/telegram/messenger/MessagesController$60;->val$lower_id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3877
    return-void
.end method
