.class Lorg/telegram/messenger/MessagesController$12$2;
.super Ljava/lang/Object;
.source "MessagesController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesController$12;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/MessagesController$12;

.field final synthetic val$error:Lorg/telegram/tgnet/TLRPC$TL_error;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesController$12;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .registers 3
    .param p1, "this$1"    # Lorg/telegram/messenger/MessagesController$12;

    .prologue
    .line 1344
    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$12$2;->this$1:Lorg/telegram/messenger/MessagesController$12;

    iput-object p2, p0, Lorg/telegram/messenger/MessagesController$12$2;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 1347
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$12$2;->this$1:Lorg/telegram/messenger/MessagesController$12;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$12;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$12$2;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    iget-object v2, p0, Lorg/telegram/messenger/MessagesController$12$2;->this$1:Lorg/telegram/messenger/MessagesController$12;

    iget v2, v2, Lorg/telegram/messenger/MessagesController$12;->val$chat_id:I

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->access$2100(Lorg/telegram/messenger/MessagesController;Ljava/lang/String;I)V

    .line 1348
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$12$2;->this$1:Lorg/telegram/messenger/MessagesController$12;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$12;->this$0:Lorg/telegram/messenger/MessagesController;

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->access$1900(Lorg/telegram/messenger/MessagesController;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$12$2;->this$1:Lorg/telegram/messenger/MessagesController$12;

    iget v1, v1, Lorg/telegram/messenger/MessagesController$12;->val$chat_id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1349
    return-void
.end method
