.class Lorg/telegram/messenger/MessagesController$23;
.super Ljava/lang/Object;
.source "MessagesController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesController;->checkDeletingTask(Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MessagesController;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesController;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/messenger/MessagesController;

    .prologue
    .line 1787
    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$23;->this$0:Lorg/telegram/messenger/MessagesController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 1790
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$23;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$23;->this$0:Lorg/telegram/messenger/MessagesController;

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->access$2900(Lorg/telegram/messenger/MessagesController;)Ljava/util/ArrayList;

    move-result-object v1

    move-object v3, v2

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/messenger/MessagesController;->deleteMessages(Ljava/util/ArrayList;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$EncryptedChat;IZ)V

    .line 1792
    sget-object v0, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesController$23$1;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/MessagesController$23$1;-><init>(Lorg/telegram/messenger/MessagesController$23;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 1800
    return-void
.end method
