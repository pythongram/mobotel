.class Lorg/telegram/messenger/MessagesController$58$1;
.super Ljava/lang/Object;
.source "MessagesController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesController$58;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/MessagesController$58;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesController$58;)V
    .registers 2
    .param p1, "this$1"    # Lorg/telegram/messenger/MessagesController$58;

    .prologue
    .line 3402
    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$58$1;->this$1:Lorg/telegram/messenger/MessagesController$58;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 3405
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$58$1;->this$1:Lorg/telegram/messenger/MessagesController$58;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$58;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$58$1;->this$1:Lorg/telegram/messenger/MessagesController$58;

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController$58;->val$dialogsRes:Lorg/telegram/tgnet/TLRPC$messages_Dialogs;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;->users:Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 3406
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$58$1;->this$1:Lorg/telegram/messenger/MessagesController$58;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$58;->this$0:Lorg/telegram/messenger/MessagesController;

    iput-boolean v3, v0, Lorg/telegram/messenger/MessagesController;->loadingDialogs:Z

    .line 3407
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$58$1;->this$1:Lorg/telegram/messenger/MessagesController$58;

    iget-boolean v0, v0, Lorg/telegram/messenger/MessagesController$58;->val$resetEnd:Z

    if-eqz v0, :cond_27

    .line 3408
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$58$1;->this$1:Lorg/telegram/messenger/MessagesController$58;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$58;->this$0:Lorg/telegram/messenger/MessagesController;

    iput-boolean v3, v0, Lorg/telegram/messenger/MessagesController;->dialogsEndReached:Z

    .line 3409
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$58$1;->this$1:Lorg/telegram/messenger/MessagesController$58;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$58;->this$0:Lorg/telegram/messenger/MessagesController;

    iput-boolean v3, v0, Lorg/telegram/messenger/MessagesController;->serverDialogsEndReached:Z

    .line 3411
    :cond_27
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->dialogsNeedReload:I

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 3412
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$58$1;->this$1:Lorg/telegram/messenger/MessagesController$58;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$58;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$58$1;->this$1:Lorg/telegram/messenger/MessagesController$58;

    iget v1, v1, Lorg/telegram/messenger/MessagesController$58;->val$count:I

    invoke-virtual {v0, v3, v1, v3}, Lorg/telegram/messenger/MessagesController;->loadDialogs(IIZ)V

    .line 3413
    return-void
.end method
