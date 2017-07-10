.class Lorg/telegram/messenger/MessagesController$9;
.super Ljava/lang/Object;
.source "MessagesController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesController;->setLastCreatedDialogId(JZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MessagesController;

.field final synthetic val$dialog_id:J

.field final synthetic val$set:Z


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesController;ZJ)V
    .registers 6
    .param p1, "this$0"    # Lorg/telegram/messenger/MessagesController;

    .prologue
    .line 961
    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$9;->this$0:Lorg/telegram/messenger/MessagesController;

    iput-boolean p2, p0, Lorg/telegram/messenger/MessagesController$9;->val$set:Z

    iput-wide p3, p0, Lorg/telegram/messenger/MessagesController$9;->val$dialog_id:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 964
    iget-boolean v0, p0, Lorg/telegram/messenger/MessagesController$9;->val$set:Z

    if-eqz v0, :cond_14

    .line 965
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$9;->this$0:Lorg/telegram/messenger/MessagesController;

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->access$1000(Lorg/telegram/messenger/MessagesController;)Ljava/util/ArrayList;

    move-result-object v0

    iget-wide v2, p0, Lorg/telegram/messenger/MessagesController$9;->val$dialog_id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 969
    :goto_13
    return-void

    .line 967
    :cond_14
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$9;->this$0:Lorg/telegram/messenger/MessagesController;

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->access$1000(Lorg/telegram/messenger/MessagesController;)Ljava/util/ArrayList;

    move-result-object v0

    iget-wide v2, p0, Lorg/telegram/messenger/MessagesController$9;->val$dialog_id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_13
.end method
